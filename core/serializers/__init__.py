from .autor import AutorSerializer
from .categoria import CategoriaSerializer
from .compra import (
    CompraCreateUpdateSerializer,
    ItensCompraCreateUpdateSerializer,
    CompraListSerializer,
    ItensCompraListSerializer,
    CompraSerializer,
    ItensCompraSerializer,
)
from .editora import EditoraSerializer
from .livro import (
    LivroAjustarEstoqueSerializer,
    LivroAlterarPrecoSerializer,
    LivroListSerializer,
    LivroMaisVendidoSerializer,
    LivroRetrieveSerializer,
    LivroSerializer,
)
from .user import UserSerializer
