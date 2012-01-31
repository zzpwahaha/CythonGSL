from cython_gsl cimport *

cdef extern from "gsl/gsl_vector_complex_double.h":

  ctypedef struct gsl_vector_complex:
    size_t size
    size_t stride
    double *data
    gsl_block_complex *block
    int owner

  ctypedef struct gsl_vector_complex_view:
    gsl_vector_complex vector

  ctypedef struct gsl_vector_complex_const_view:
    gsl_vector_complex vector_complex


  # Allocation
  gsl_vector_complex *  gsl_vector_complex_alloc(size_t n) nogil

  gsl_vector_complex *  gsl_vector_complex_calloc(size_t n) nogil

  gsl_vector_complex_alloc_from_block(gsl_block_complex * b, size_t offset,
                              size_t n, size_t stride) nogil

  gsl_vector_complex *gsl_vector_complex_alloc_from_vector(gsl_vector_complex * v,
                         size_t offset, size_t n, size_t stride) nogil

  void  gsl_vector_complex_free(gsl_vector_complex * v) nogil

  # Views
  gsl_vector_complex_view  gsl_vector_complex_view_array(double *base, size_t n) nogil

  gsl_vector_complex_view  gsl_vector_complex_view_array_with_stride(double * base, size_t stride, size_t n) nogil

  gsl_vector_complex_const_view  gsl_vector_complex_const_view_array(double *base, size_t n) nogil

  gsl_vector_complex_const_view  gsl_vector_complex_const_view_array_with_stride(double * base, size_t stride, size_t n) nogil

  gsl_vector_complex_view  gsl_vector_complex_subvector(gsl_vector_complex *v, size_t offset, size_t n) nogil

  gsl_vector_complex_const_view  gsl_vector_complex_const_subvector(gsl_vector_complex * v, size_t offset, size_t n) nogil

  gsl_vector_complex_view  gsl_vector_complex_subvector_with_stride(gsl_vector_complex *v, size_t offset, size_t stride, size_t n) nogil

  gsl_vector_complex_const_view  gsl_vector_complex_const_subvector_with_stride(gsl_vector_complex * v, size_t offset, size_t stride, size_t n) nogil


  gsl_vector_view  gsl_vector_complex_real(gsl_vector_complex *v) nogil

  gsl_vector_view  gsl_vector_complex_imag(gsl_vector_complex *v) nogil

  gsl_vector_const_view  gsl_vector_complex_const_real(gsl_vector_complex *v) nogil

  gsl_vector_const_view  gsl_vector_complex_const_imag(gsl_vector_complex *v) nogil


  # Operations
  gsl_complex  gsl_vector_complex_get(gsl_vector_complex * v, size_t i) nogil

  void  gsl_vector_complex_set(gsl_vector_complex * v, size_t i, gsl_complex x) nogil

  gsl_complex *  gsl_vector_complex_ptr(gsl_vector_complex * v, size_t i) nogil

  gsl_complex *  gsl_vector_complex_const_ptr(gsl_vector_complex * v, size_t i) nogil

  void  gsl_vector_complex_set_zero(gsl_vector_complex * v) nogil

  void  gsl_vector_complex_set_all(gsl_vector_complex * v, gsl_complex x) nogil

  int  gsl_vector_complex_set_basis(gsl_vector_complex * v, size_t i) nogil

  # Reading and writing vector_complexs
  int  gsl_vector_complex_fread(FILE * stream, gsl_vector_complex * v) nogil

  int  gsl_vector_complex_fwrite(FILE * stream, gsl_vector_complex * v) nogil

  int  gsl_vector_complex_fscanf(FILE * stream, gsl_vector_complex * v) nogil

  int  gsl_vector_complex_fprintf(FILE * stream, gsl_vector_complex * v, char * format) nogil

  # Copying or exchanging elements
  int  gsl_vector_complex_memcpy(gsl_vector_complex * dest, gsl_vector_complex * src) nogil

  int  gsl_vector_complex_reverse(gsl_vector_complex * v) nogil

  int  gsl_vector_complex_swap(gsl_vector_complex * v, gsl_vector_complex * w) nogil

  int  gsl_vector_complex_swap_elements(gsl_vector_complex * v, size_t i, size_t j) nogil

  int  gsl_vector_complex_isnull(gsl_vector_complex * v) nogil

