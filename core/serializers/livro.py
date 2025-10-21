from rest_framework.serializers import (
    DecimalField,
    IntegerField,
    ModelSerializer,
    Serializer,
    SlugRelatedField,
    ValidationError,
)

from core.models import Livro
from uploader.models import Image
from uploader.serializers import ImageSerializer


class LivroAjustarEstoqueSerializer(Serializer):
    quantidade = IntegerField()

    def validate_quantidade(self, value):
        livro = self.context.get('livro')
        if livro:
            nova_quantidade = livro.quantidade + value
            if nova_quantidade < 0:
                raise ValidationError('A quantidade em estoque não pode ser negativa.')
        return value


class LivroAlterarPrecoSerializer(Serializer):
    preco = DecimalField(max_digits=7, decimal_places=2)

    def validate_preco(self, preco):
        '''Valida se o preço é um valor positivo.'''
        if preco <= 0:
            raise ValidationError('O preço deve ser um valor positivo.')
        return preco


class LivroListSerializer(ModelSerializer):
    class Meta:
        model = Livro
        fields = ("id", "titulo", "preco")


class LivroMaisVendidoSerializer(ModelSerializer):
    total_vendidos = IntegerField()

    class Meta:
        model = Livro
        fields = ['id', 'titulo', 'total_vendidos']


class LivroRetrieveSerializer(ModelSerializer):
    capa = ImageSerializer(required=False)

    class Meta:
        model = Livro
        fields = '__all__'
        depth = 1


class LivroSerializer(ModelSerializer):
    capa_attachment_key = SlugRelatedField(
        source='capa',
        queryset=Image.objects.all(),
        slug_field='attachment_key',
        required=False,
        write_only=True,
    )
    capa = ImageSerializer(required=False, read_only=True)

    class Meta:
        model = Livro
        fields = '__all__'
