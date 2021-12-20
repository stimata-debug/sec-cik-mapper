import pytest

from sec_cik_mapper import BaseMapper


def test_instantiation_type_error():
    # BaseMapper cannot be directly instantiated
    with pytest.raises(TypeError):
        _ = BaseMapper()
