Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/norm.dispatch?download=true
inline.NumInlined: 846
inline.NumDeleted: 327
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 125
loop-unroll.NumUnrolled: 158
begin_hunk_0
@.str.19 = private unnamed_addr constant [178 x i8] c"normType == NORM_INF || normType == NORM_L1 || normType == NORM_L2 || normType == NORM_L2SQR || ((normType == NORM_HAMMING || normType == NORM_HAMMING2) && src1.type() == CV_8U)\00", align 1
@_ZZN2cv4normERKNS_11_InputArrayES2_iS2_E15__cv_check__629 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.13, ptr @.str.3, i32 629, i32 4, ptr @.str.10, ptr @.str.11, ptr @.str.12 }, align 8
@_ZZN2cv4PSNRERKNS_11_InputArrayES2_dE31__cv_trace_location_extra_fn701 = internal global ptr null, align 8
@_ZZN2cv4PSNRERKNS_11_InputArrayES2_dE25__cv_trace_location_fn701 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv4PSNRERKNS_11_InputArrayES2_dE31__cv_trace_location_extra_fn701, ptr @.str.20, ptr @.str.3, i32 701, i32 1 }, align 8
@.str.20 = private unnamed_addr constant [48 x i8] c"double cv::PSNR(InputArray, InputArray, double)\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"_src1.type() == _src2.type()\00", align 1
@__func__._ZN2cv4PSNRERKNS_11_InputArrayES2_d = private unnamed_addr constant [5 x i8] c"PSNR\00", align 1
@_ZZN2cv9normalizeERKNS_11_InputArrayERKNS_17_InputOutputArrayEddiiS2_E31__cv_trace_location_extra_fn801 = internal global ptr null, align 8
@_ZZN2cv9normalizeERKNS_11_InputArrayERKNS_17_InputOutputArrayEddiiS2_E25__cv_trace_location_fn801 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv9normalizeERKNS_11_InputArrayERKNS_17_InputOutputArrayEddiiS2_E31__cv_trace_location_extra_fn801, ptr @.str.22, ptr @.str.3, i32 801, i32 1 }, align 8
@.str.22 = private unnamed_addr constant [87 x i8] c"void cv::normalize(InputArray, InputOutputArray, double, double, int, int, InputArray)\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"Unknown/unsupported norm type\00", align 1
@__func__._ZN2cv9normalizeERKNS_11_InputArrayERKNS_17_InputOutputArrayEddiiS2_ = private unnamed_addr constant [10 x i8] c"normalize\00", align 1
@_ZZN2cv12cpu_baselineL10normInf_8uEPKhS2_PiiiE32__cv_trace_location_extra_fn1923 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL10normInf_8uEPKhS2_PiiiE26__cv_trace_location_fn1923 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL10normInf_8uEPKhS2_PiiiE32__cv_trace_location_extra_fn1923, ptr @.str.24, ptr @.str.1, i32 1923, i32 1 }, align 8
@.str.24 = private unnamed_addr constant [80 x i8] c"int cv::cpu_baseline::normInf_8u(const uchar *, const uchar *, int *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL10normInf_8sEPKaPKhPiiiE32__cv_trace_location_extra_fn1924 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL10normInf_8sEPKaPKhPiiiE26__cv_trace_location_fn1924 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL10normInf_8sEPKaPKhPiiiE32__cv_trace_location_extra_fn1924, ptr @.str.25, ptr @.str.1, i32 1924, i32 1 }, align 8
@.str.25 = private unnamed_addr constant [80 x i8] c"int cv::cpu_baseline::normInf_8s(const schar *, const uchar *, int *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL11normInf_16uEPKtPKhPiiiE32__cv_trace_location_extra_fn1925 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL11normInf_16uEPKtPKhPiiiE26__cv_trace_location_fn1925 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL11normInf_16uEPKtPKhPiiiE32__cv_trace_location_extra_fn1925, ptr @.str.26, ptr @.str.1, i32 1925, i32 1 }, align 8
@.str.26 = private unnamed_addr constant [82 x i8] c"int cv::cpu_baseline::normInf_16u(const ushort *, const uchar *, int *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL11normInf_16sEPKsPKhPiiiE32__cv_trace_location_extra_fn1926 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL11normInf_16sEPKsPKhPiiiE26__cv_trace_location_fn1926 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL11normInf_16sEPKsPKhPiiiE32__cv_trace_location_extra_fn1926, ptr @.str.27, ptr @.str.1, i32 1926, i32 1 }, align 8
@.str.27 = private unnamed_addr constant [81 x i8] c"int cv::cpu_baseline::normInf_16s(const short *, const uchar *, int *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL11normInf_32sEPKiPKhPjiiE32__cv_trace_location_extra_fn1928 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL11normInf_32sEPKiPKhPjiiE26__cv_trace_location_fn1928 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL11normInf_32sEPKiPKhPjiiE32__cv_trace_location_extra_fn1928, ptr @.str.28, ptr @.str.1, i32 1928, i32 1 }, align 8
@.str.28 = private unnamed_addr constant [88 x i8] c"int cv::cpu_baseline::normInf_32s(const int *, const uchar *, unsigned int *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL11normInf_32fEPKfPKhPfiiE32__cv_trace_location_extra_fn1929 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL11normInf_32fEPKfPKhPfiiE26__cv_trace_location_fn1929 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL11normInf_32fEPKfPKhPfiiE32__cv_trace_location_extra_fn1929, ptr @.str.29, ptr @.str.1, i32 1929, i32 1 }, align 8
@.str.29 = private unnamed_addr constant [83 x i8] c"int cv::cpu_baseline::normInf_32f(const float *, const uchar *, float *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL11normInf_64fEPKdPKhPdiiE32__cv_trace_location_extra_fn1930 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL11normInf_64fEPKdPKhPdiiE26__cv_trace_location_fn1930 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL11normInf_64fEPKdPKhPdiiE32__cv_trace_location_extra_fn1930, ptr @.str.30, ptr @.str.1, i32 1930, i32 1 }, align 8
@.str.30 = private unnamed_addr constant [85 x i8] c"int cv::cpu_baseline::normInf_64f(const double *, const uchar *, double *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL11normInf_16fEPKNS_6hfloatEPKhPfiiE32__cv_trace_location_extra_fn1933 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL11normInf_16fEPKNS_6hfloatEPKhPfiiE26__cv_trace_location_fn1933 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL11normInf_16fEPKNS_6hfloatEPKhPfiiE32__cv_trace_location_extra_fn1933, ptr @.str.31, ptr @.str.1, i32 1933, i32 1 }, align 8
@.str.31 = private unnamed_addr constant [84 x i8] c"int cv::cpu_baseline::normInf_16f(const hfloat *, const uchar *, float *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL12normInf_16bfEPKNS_6bfloatEPKhPfiiE32__cv_trace_location_extra_fn1934 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL12normInf_16bfEPKNS_6bfloatEPKhPfiiE26__cv_trace_location_fn1934 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL12normInf_16bfEPKNS_6bfloatEPKhPfiiE32__cv_trace_location_extra_fn1934, ptr @.str.32, ptr @.str.1, i32 1934, i32 1 }, align 8
@.str.32 = private unnamed_addr constant [85 x i8] c"int cv::cpu_baseline::normInf_16bf(const bfloat *, const uchar *, float *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL11normInf_64uEPKmPKhPmiiE32__cv_trace_location_extra_fn1931 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL11normInf_64uEPKmPKhPmiiE26__cv_trace_location_fn1931 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL11normInf_64uEPKmPKhPmiiE32__cv_trace_location_extra_fn1931, ptr @.str.33, ptr @.str.1, i32 1931, i32 1 }, align 8
@.str.33 = private unnamed_addr constant [85 x i8] c"int cv::cpu_baseline::normInf_64u(const uint64 *, const uchar *, uint64 *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL11normInf_64sEPKlPKhPmiiE32__cv_trace_location_extra_fn1932 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL11normInf_64sEPKlPKhPmiiE26__cv_trace_location_fn1932 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL11normInf_64sEPKlPKhPmiiE32__cv_trace_location_extra_fn1932, ptr @.str.34, ptr @.str.1, i32 1932, i32 1 }, align 8
@.str.34 = private unnamed_addr constant [84 x i8] c"int cv::cpu_baseline::normInf_64s(const int64 *, const uchar *, uint64 *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL11normInf_32uEPKjPKhPjiiE32__cv_trace_location_extra_fn1927 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL11normInf_32uEPKjPKhPjiiE26__cv_trace_location_fn1927 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL11normInf_32uEPKjPKhPjiiE32__cv_trace_location_extra_fn1927, ptr @.str.35, ptr @.str.1, i32 1927, i32 1 }, align 8
@.str.35 = private unnamed_addr constant [97 x i8] c"int cv::cpu_baseline::normInf_32u(const unsigned int *, const uchar *, unsigned int *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL9normL1_8uEPKhS2_PiiiE32__cv_trace_location_extra_fn1923 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL9normL1_8uEPKhS2_PiiiE26__cv_trace_location_fn1923 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL9normL1_8uEPKhS2_PiiiE32__cv_trace_location_extra_fn1923, ptr @.str.36, ptr @.str.1, i32 1923, i32 1 }, align 8
@.str.36 = private unnamed_addr constant [79 x i8] c"int cv::cpu_baseline::normL1_8u(const uchar *, const uchar *, int *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL9normL1_8sEPKaPKhPiiiE32__cv_trace_location_extra_fn1924 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL9normL1_8sEPKaPKhPiiiE26__cv_trace_location_fn1924 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL9normL1_8sEPKaPKhPiiiE32__cv_trace_location_extra_fn1924, ptr @.str.37, ptr @.str.1, i32 1924, i32 1 }, align 8
@.str.37 = private unnamed_addr constant [79 x i8] c"int cv::cpu_baseline::normL1_8s(const schar *, const uchar *, int *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL10normL1_16uEPKtPKhPiiiE32__cv_trace_location_extra_fn1925 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL10normL1_16uEPKtPKhPiiiE26__cv_trace_location_fn1925 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL10normL1_16uEPKtPKhPiiiE32__cv_trace_location_extra_fn1925, ptr @.str.38, ptr @.str.1, i32 1925, i32 1 }, align 8
@.str.38 = private unnamed_addr constant [81 x i8] c"int cv::cpu_baseline::normL1_16u(const ushort *, const uchar *, int *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL10normL1_16sEPKsPKhPiiiE32__cv_trace_location_extra_fn1926 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL10normL1_16sEPKsPKhPiiiE26__cv_trace_location_fn1926 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL10normL1_16sEPKsPKhPiiiE32__cv_trace_location_extra_fn1926, ptr @.str.39, ptr @.str.1, i32 1926, i32 1 }, align 8
@.str.39 = private unnamed_addr constant [80 x i8] c"int cv::cpu_baseline::normL1_16s(const short *, const uchar *, int *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL10normL1_32sEPKiPKhPdiiE32__cv_trace_location_extra_fn1928 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL10normL1_32sEPKiPKhPdiiE26__cv_trace_location_fn1928 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL10normL1_32sEPKiPKhPdiiE32__cv_trace_location_extra_fn1928, ptr @.str.40, ptr @.str.1, i32 1928, i32 1 }, align 8
@.str.40 = private unnamed_addr constant [81 x i8] c"int cv::cpu_baseline::normL1_32s(const int *, const uchar *, double *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL10normL1_32fEPKfPKhPdiiE32__cv_trace_location_extra_fn1929 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL10normL1_32fEPKfPKhPdiiE26__cv_trace_location_fn1929 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL10normL1_32fEPKfPKhPdiiE32__cv_trace_location_extra_fn1929, ptr @.str.41, ptr @.str.1, i32 1929, i32 1 }, align 8
@.str.41 = private unnamed_addr constant [83 x i8] c"int cv::cpu_baseline::normL1_32f(const float *, const uchar *, double *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL10normL1_64fEPKdPKhPdiiE32__cv_trace_location_extra_fn1930 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL10normL1_64fEPKdPKhPdiiE26__cv_trace_location_fn1930 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL10normL1_64fEPKdPKhPdiiE32__cv_trace_location_extra_fn1930, ptr @.str.42, ptr @.str.1, i32 1930, i32 1 }, align 8
@.str.42 = private unnamed_addr constant [84 x i8] c"int cv::cpu_baseline::normL1_64f(const double *, const uchar *, double *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL10normL1_16fEPKNS_6hfloatEPKhPfiiE32__cv_trace_location_extra_fn1933 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL10normL1_16fEPKNS_6hfloatEPKhPfiiE26__cv_trace_location_fn1933 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL10normL1_16fEPKNS_6hfloatEPKhPfiiE32__cv_trace_location_extra_fn1933, ptr @.str.43, ptr @.str.1, i32 1933, i32 1 }, align 8
@.str.43 = private unnamed_addr constant [83 x i8] c"int cv::cpu_baseline::normL1_16f(const hfloat *, const uchar *, float *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL11normL1_16bfEPKNS_6bfloatEPKhPfiiE32__cv_trace_location_extra_fn1934 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL11normL1_16bfEPKNS_6bfloatEPKhPfiiE26__cv_trace_location_fn1934 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL11normL1_16bfEPKNS_6bfloatEPKhPfiiE32__cv_trace_location_extra_fn1934, ptr @.str.44, ptr @.str.1, i32 1934, i32 1 }, align 8
@.str.44 = private unnamed_addr constant [84 x i8] c"int cv::cpu_baseline::normL1_16bf(const bfloat *, const uchar *, float *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL10normL1_64uEPKmPKhPdiiE32__cv_trace_location_extra_fn1931 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL10normL1_64uEPKmPKhPdiiE26__cv_trace_location_fn1931 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL10normL1_64uEPKmPKhPdiiE32__cv_trace_location_extra_fn1931, ptr @.str.45, ptr @.str.1, i32 1931, i32 1 }, align 8
@.str.45 = private unnamed_addr constant [84 x i8] c"int cv::cpu_baseline::normL1_64u(const uint64 *, const uchar *, double *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL10normL1_64sEPKlPKhPdiiE32__cv_trace_location_extra_fn1932 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL10normL1_64sEPKlPKhPdiiE26__cv_trace_location_fn1932 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL10normL1_64sEPKlPKhPdiiE32__cv_trace_location_extra_fn1932, ptr @.str.46, ptr @.str.1, i32 1932, i32 1 }, align 8
@.str.46 = private unnamed_addr constant [83 x i8] c"int cv::cpu_baseline::normL1_64s(const int64 *, const uchar *, double *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL10normL1_32uEPKjPKhPdiiE32__cv_trace_location_extra_fn1927 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL10normL1_32uEPKjPKhPdiiE26__cv_trace_location_fn1927 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL10normL1_32uEPKjPKhPdiiE32__cv_trace_location_extra_fn1927, ptr @.str.47, ptr @.str.1, i32 1927, i32 1 }, align 8
@.str.47 = private unnamed_addr constant [90 x i8] c"int cv::cpu_baseline::normL1_32u(const unsigned int *, const uchar *, double *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL9normL2_8uEPKhS2_PiiiE32__cv_trace_location_extra_fn1923 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL9normL2_8uEPKhS2_PiiiE26__cv_trace_location_fn1923 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL9normL2_8uEPKhS2_PiiiE32__cv_trace_location_extra_fn1923, ptr @.str.48, ptr @.str.1, i32 1923, i32 1 }, align 8
@.str.48 = private unnamed_addr constant [79 x i8] c"int cv::cpu_baseline::normL2_8u(const uchar *, const uchar *, int *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL9normL2_8sEPKaPKhPiiiE32__cv_trace_location_extra_fn1924 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL9normL2_8sEPKaPKhPiiiE26__cv_trace_location_fn1924 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL9normL2_8sEPKaPKhPiiiE32__cv_trace_location_extra_fn1924, ptr @.str.49, ptr @.str.1, i32 1924, i32 1 }, align 8
@.str.49 = private unnamed_addr constant [79 x i8] c"int cv::cpu_baseline::normL2_8s(const schar *, const uchar *, int *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL10normL2_16uEPKtPKhPdiiE32__cv_trace_location_extra_fn1925 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL10normL2_16uEPKtPKhPdiiE26__cv_trace_location_fn1925 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL10normL2_16uEPKtPKhPdiiE32__cv_trace_location_extra_fn1925, ptr @.str.50, ptr @.str.1, i32 1925, i32 1 }, align 8
@.str.50 = private unnamed_addr constant [84 x i8] c"int cv::cpu_baseline::normL2_16u(const ushort *, const uchar *, double *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL10normL2_16sEPKsPKhPdiiE32__cv_trace_location_extra_fn1926 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL10normL2_16sEPKsPKhPdiiE26__cv_trace_location_fn1926 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL10normL2_16sEPKsPKhPdiiE32__cv_trace_location_extra_fn1926, ptr @.str.51, ptr @.str.1, i32 1926, i32 1 }, align 8
@.str.51 = private unnamed_addr constant [83 x i8] c"int cv::cpu_baseline::normL2_16s(const short *, const uchar *, double *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL10normL2_32sEPKiPKhPdiiE32__cv_trace_location_extra_fn1928 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL10normL2_32sEPKiPKhPdiiE26__cv_trace_location_fn1928 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL10normL2_32sEPKiPKhPdiiE32__cv_trace_location_extra_fn1928, ptr @.str.52, ptr @.str.1, i32 1928, i32 1 }, align 8
@.str.52 = private unnamed_addr constant [81 x i8] c"int cv::cpu_baseline::normL2_32s(const int *, const uchar *, double *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL10normL2_32fEPKfPKhPdiiE32__cv_trace_location_extra_fn1929 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL10normL2_32fEPKfPKhPdiiE26__cv_trace_location_fn1929 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL10normL2_32fEPKfPKhPdiiE32__cv_trace_location_extra_fn1929, ptr @.str.53, ptr @.str.1, i32 1929, i32 1 }, align 8
@.str.53 = private unnamed_addr constant [83 x i8] c"int cv::cpu_baseline::normL2_32f(const float *, const uchar *, double *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL10normL2_64fEPKdPKhPdiiE32__cv_trace_location_extra_fn1930 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL10normL2_64fEPKdPKhPdiiE26__cv_trace_location_fn1930 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL10normL2_64fEPKdPKhPdiiE32__cv_trace_location_extra_fn1930, ptr @.str.54, ptr @.str.1, i32 1930, i32 1 }, align 8
@.str.54 = private unnamed_addr constant [84 x i8] c"int cv::cpu_baseline::normL2_64f(const double *, const uchar *, double *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL10normL2_16fEPKNS_6hfloatEPKhPfiiE32__cv_trace_location_extra_fn1933 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL10normL2_16fEPKNS_6hfloatEPKhPfiiE26__cv_trace_location_fn1933 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL10normL2_16fEPKNS_6hfloatEPKhPfiiE32__cv_trace_location_extra_fn1933, ptr @.str.55, ptr @.str.1, i32 1933, i32 1 }, align 8
@.str.55 = private unnamed_addr constant [83 x i8] c"int cv::cpu_baseline::normL2_16f(const hfloat *, const uchar *, float *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL11normL2_16bfEPKNS_6bfloatEPKhPfiiE32__cv_trace_location_extra_fn1934 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL11normL2_16bfEPKNS_6bfloatEPKhPfiiE26__cv_trace_location_fn1934 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL11normL2_16bfEPKNS_6bfloatEPKhPfiiE32__cv_trace_location_extra_fn1934, ptr @.str.56, ptr @.str.1, i32 1934, i32 1 }, align 8
@.str.56 = private unnamed_addr constant [84 x i8] c"int cv::cpu_baseline::normL2_16bf(const bfloat *, const uchar *, float *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL10normL2_64uEPKmPKhPdiiE32__cv_trace_location_extra_fn1931 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL10normL2_64uEPKmPKhPdiiE26__cv_trace_location_fn1931 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL10normL2_64uEPKmPKhPdiiE32__cv_trace_location_extra_fn1931, ptr @.str.57, ptr @.str.1, i32 1931, i32 1 }, align 8
@.str.57 = private unnamed_addr constant [84 x i8] c"int cv::cpu_baseline::normL2_64u(const uint64 *, const uchar *, double *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL10normL2_64sEPKlPKhPdiiE32__cv_trace_location_extra_fn1932 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL10normL2_64sEPKlPKhPdiiE26__cv_trace_location_fn1932 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL10normL2_64sEPKlPKhPdiiE32__cv_trace_location_extra_fn1932, ptr @.str.58, ptr @.str.1, i32 1932, i32 1 }, align 8
@.str.58 = private unnamed_addr constant [83 x i8] c"int cv::cpu_baseline::normL2_64s(const int64 *, const uchar *, double *, int, int)\00", align 1
@_ZZN2cv12cpu_baselineL10normL2_32uEPKjPKhPdiiE32__cv_trace_location_extra_fn1927 = internal global ptr null, align 8
@_ZZN2cv12cpu_baselineL10normL2_32uEPKjPKhPdiiE26__cv_trace_location_fn1927 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv12cpu_baselineL10normL2_32uEPKjPKhPdiiE32__cv_trace_location_extra_fn1927, ptr @.str.59, ptr @.str.1, i32 1927, i32 1 }, align 8
@.str.59 = private unnamed_addr constant [90 x i8] c"int cv::cpu_baseline::normL2_32u(const unsigned int *, const uchar *, double *, int, int)\00", align 1
@_ZZN2cvL11getNormFuncEiiE31__cv_trace_location_extra_fn278 = internal global ptr null, align 8
@_ZZN2cvL11getNormFuncEiiE25__cv_trace_location_fn278 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cvL11getNormFuncEiiE31__cv_trace_location_extra_fn278, ptr @.str.60, ptr @.str.3, i32 278, i32 1 }, align 8
@.str.60 = private unnamed_addr constant [35 x i8] c"NormFunc cv::getNormFunc(int, int)\00", align 1
@_ZZN2cvL15getNormDiffFuncEiiE31__cv_trace_location_extra_fn282 = internal global ptr null, align 8
@_ZZN2cvL15getNormDiffFuncEiiE25__cv_trace_location_fn282 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cvL15getNormDiffFuncEiiE31__cv_trace_location_extra_fn282, ptr @.str.61, ptr @.str.3, i32 282, i32 1 }, align 8
@.str.61 = private unnamed_addr constant [43 x i8] c"NormDiffFunc cv::getNormDiffFunc(int, int)\00", align 1
@.str.62 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN2cv12cpu_baseline11getNormFuncEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline11getNormFuncEiiE26__cv_trace_location_fn1938)
  %or.cond = icmp ugt i32 %0, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %0 to i64
  %i.b = getelementptr inbounds nuw [256 x i8], ptr @_ZZN2cv12cpu_baseline11getNormFuncEiiE7normTab, i64 %i.a
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !16
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #20
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN2cv12cpu_baselineL10normInf_8uEPKhS2_Piii(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.cv::cpu_baseline::MaskedNormInf_SIMD", align 1 ; 3 uses
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baselineL10normInf_8uEPKhS2_PiiiE26__cv_trace_location_fn1923)
  %i.a = load i32, ptr %2, align 4, !tbaa !17     ; 2 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = mul nsw i32 %4, %3                       ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %_ZNK2cv12cpu_baseline12NormInf_SIMDIhiEclEPKhi.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i8> [ zeroinitializer, %vector.ph ], [ %7, %vector.body ]
  %vec.phi8 = phi <4 x i8> [ zeroinitializer, %vector.ph ], [ %8, %vector.body ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %wide.load = load <4 x i8>, ptr %i.d, align 1, !tbaa !18
  %wide.load9 = load <4 x i8>, ptr %i.e, align 1, !tbaa !18
  %7 = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %vec.phi, <4 x i8> %wide.load) ; 2 uses
  %8 = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %vec.phi8, <4 x i8> %wide.load9) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %7, <4 x i8> %8)
  %9 = call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %rdx.minmax)
  %10 = zext i8 %9 to i32                         ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %_ZNK2cv12cpu_baseline12NormInf_SIMDIhiEclEPKhi.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.089.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %10, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.089.i.i = phi i32 [ %.sroa.speculated.i.i, %.lr.ph.i.i ], [ %.089.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !18
  %i.i = zext i8 %i.h to i32
  %.sroa.speculated.i.i = call i32 @llvm.umax.i32(i32 %.089.i.i, i32 %i.i) ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK2cv12cpu_baseline12NormInf_SIMDIhiEclEPKhi.exit.i, label %.lr.ph.i.i, !llvm.loop !65

_ZNK2cv12cpu_baseline12NormInf_SIMDIhiEclEPKhi.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.b
  %.08.lcssa.i.i = phi i32 [ 0, %bb.b ], [ %10, %middle.block ], [ %.sroa.speculated.i.i, %.lr.ph.i.i ]
  %.sroa.speculated12.i = call i32 @llvm.smax.i32(i32 %i.a, i32 %.08.lcssa.i.i)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.j = invoke noundef i32 @_ZNK2cv12cpu_baseline18MaskedNormInf_SIMDIhiEclEPKhS4_ii(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %0, ptr noundef nonnull %1, i32 noundef %3, i32 noundef %4)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.a, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %_ZNK2cv12cpu_baseline12NormInf_SIMDIhiEclEPKhi.exit.i
  %.0.i = phi i32 [ %.sroa.speculated12.i, %_ZNK2cv12cpu_baseline12NormInf_SIMDIhiEclEPKhi.exit.i ], [ %.sroa.speculated.i, %.noexc ]
  store i32 %.0.i, ptr %2, align 4, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !16
  %.not.i6 = icmp eq i32 %i.l, 0
  br i1 %.not.i6, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #20
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret i32 0

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN2cv12cpu_baselineL10normInf_8sEPKaPKhPiii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baselineL10normInf_8sEPKaPKhPiiiE26__cv_trace_location_fn1924)
  %i.a = load i32, ptr %2, align 4, !tbaa !17
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = mul nsw i32 %4, %3                       ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %.loopexit

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64 ; 3 uses
  %min.iters.check21 = icmp ult i32 %i.b, 8
  br i1 %min.iters.check21, label %.lr.ph.i.i.preheader, label %vector.ph22

vector.ph22:                                      ; preds = %.lr.ph.preheader.i.i
  %n.vec23 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body24

vector.body24:                                    ; preds = %vector.body24, %vector.ph22
  %index25 = phi i64 [ 0, %vector.ph22 ], [ %index.next30, %vector.body24 ] ; 2 uses
  %vec.phi26 = phi <4 x i8> [ zeroinitializer, %vector.ph22 ], [ %6, %vector.body24 ]
  %vec.phi27 = phi <4 x i8> [ zeroinitializer, %vector.ph22 ], [ %7, %vector.body24 ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %index25 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %wide.load28 = load <4 x i8>, ptr %i.d, align 1, !tbaa !18
  %wide.load29 = load <4 x i8>, ptr %i.e, align 1, !tbaa !18
  %i.f = call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load28, i1 false)
  %i.g = call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load29, i1 false)
  %6 = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %vec.phi26, <4 x i8> %i.f) ; 2 uses
  %7 = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %vec.phi27, <4 x i8> %i.g) ; 2 uses
  %index.next30 = add nuw i64 %index25, 8         ; 2 uses
  %i.h = icmp eq i64 %index.next30, %n.vec23
  br i1 %i.h, label %middle.block31, label %vector.body24, !llvm.loop !66

middle.block31:                                   ; preds = %vector.body24
  %rdx.minmax32 = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %6, <4 x i8> %7)
  %8 = call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %rdx.minmax32)
  %9 = zext i8 %8 to i32                          ; 2 uses
  %cmp.n33 = icmp eq i64 %n.vec23, %wide.trip.count.i.i
  br i1 %cmp.n33, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block31
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec23, %middle.block31 ]
  %.089.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %9, %middle.block31 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.089.i.i = phi i32 [ %.sroa.speculated.i.i, %.lr.ph.i.i ], [ %.089.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18
  %i.k = call i8 @llvm.abs.i8(i8 %i.j, i1 false)
  %i.l = zext i8 %i.k to i32
  %.sroa.speculated.i.i = call i32 @llvm.umax.i32(i32 %.089.i.i, i32 %i.l) ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !67

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %4, 1
  %i.n = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.m, label %.preheader.i.i, label %.preheader37.i.i

.preheader37.i.i:                                 ; preds = %bb.c
  %i.o = icmp sgt i32 %4, 0
  %or.cond.i.i = and i1 %i.n, %i.o
  br i1 %or.cond.i.i, label %.lr.ph43.split.us.preheader.i.i, label %.loopexit

.lr.ph43.split.us.preheader.i.i:                  ; preds = %.preheader37.i.i
  %i.p = zext nneg i32 %4 to i64                  ; 4 uses
  %wide.trip.count53.i.i = zext nneg i32 %3 to i64
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %i.p, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.p
  br label %.lr.ph43.split.us.i.i

.lr.ph43.split.us.i.i:                            ; preds = %..loopexit36_crit_edge.us.i.i, %.lr.ph43.split.us.preheader.i.i
  %indvars.iv50.i.i = phi i64 [ 0, %.lr.ph43.split.us.preheader.i.i ], [ %indvars.iv.next51.i.i, %..loopexit36_crit_edge.us.i.i ] ; 3 uses
  %.241.us.i.i = phi i32 [ 0, %.lr.ph43.split.us.preheader.i.i ], [ %.4.us.i.i, %..loopexit36_crit_edge.us.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv50.i.i
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18
  %.not.us.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.us.i.i, label %..loopexit36_crit_edge.us.i.i, label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %.lr.ph43.split.us.i.i
  %i.s = mul nuw nsw i64 %indvars.iv50.i.i, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.s ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.i.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.241.us.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ab, %vector.body ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %wide.load = load <4 x i8>, ptr %i.u, align 1, !tbaa !18
  %wide.load19 = load <4 x i8>, ptr %i.v, align 1, !tbaa !18
  %i.w = call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load, i1 false)
  %i.x = call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load19, i1 false)
  %i.y = zext <4 x i8> %i.w to <4 x i32>
  %i.z = zext <4 x i8> %i.x to <4 x i32>
  %i.aa = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.y) ; 2 uses
  %i.ab = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi18, <4 x i32> %i.z) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aa, <4 x i32> %i.ab)
  %i.ad = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  br i1 %cmp.n, label %..loopexit36_crit_edge.us.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.i.i, %middle.block
  %indvars.iv.i9.i.ph = phi i64 [ 0, %.lr.ph.us.i.i ], [ %n.vec, %middle.block ]
  %.339.us.i.i.ph = phi i32 [ %.241.us.i.i, %.lr.ph.us.i.i ], [ %i.ad, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i9.i = phi i64 [ %indvars.iv.next.i10.i, %scalar.ph ], [ %indvars.iv.i9.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.339.us.i.i = phi i32 [ %.sroa.speculated.us.i.i, %scalar.ph ], [ %.339.us.i.i.ph, %scalar.ph.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.i9.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !18
  %i.ag = call i8 @llvm.abs.i8(i8 %i.af, i1 false)
  %i.ah = zext i8 %i.ag to i32
  %.sroa.speculated.us.i.i = call i32 @llvm.smax.i32(i32 %.339.us.i.i, i32 %i.ah) ; 2 uses
  %indvars.iv.next.i10.i = add nuw nsw i64 %indvars.iv.i9.i, 1 ; 2 uses
  %exitcond.not.i11.i = icmp eq i64 %indvars.iv.next.i10.i, %i.p
  br i1 %exitcond.not.i11.i, label %..loopexit36_crit_edge.us.i.i, label %scalar.ph, !llvm.loop !69

..loopexit36_crit_edge.us.i.i:                    ; preds = %scalar.ph, %middle.block, %.lr.ph43.split.us.i.i
  %.4.us.i.i = phi i32 [ %.241.us.i.i, %.lr.ph43.split.us.i.i ], [ %i.ad, %middle.block ], [ %.sroa.speculated.us.i.i, %scalar.ph ] ; 2 uses
  %indvars.iv.next51.i.i = add nuw nsw i64 %indvars.iv50.i.i, 1 ; 2 uses
  %exitcond54.not.i.i = icmp eq i64 %indvars.iv.next51.i.i, %wide.trip.count53.i.i
  br i1 %exitcond54.not.i.i, label %.loopexit, label %.lr.ph43.split.us.i.i, !llvm.loop !70

.preheader.i.i:                                   ; preds = %bb.c
  br i1 %i.n, label %.lr.ph.preheader.i12.i, label %.loopexit

.lr.ph.preheader.i12.i:                           ; preds = %.preheader.i.i
  %wide.trip.count58.i.i = zext nneg i32 %3 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count58.i.i, 1
  %i.ai = icmp eq i32 %3, 1
  br i1 %i.ai, label %.lr.ph.i13.i.epil.preheader, label %.lr.ph.preheader.i12.i.new

.lr.ph.preheader.i12.i.new:                       ; preds = %.lr.ph.preheader.i12.i
  %unroll_iter = and i64 %wide.trip.count58.i.i, 2147483646
  br label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %bb.f, %.lr.ph.preheader.i12.i.new
  %indvars.iv55.i.i = phi i64 [ 0, %.lr.ph.preheader.i12.i.new ], [ %indvars.iv.next56.i.i.1, %bb.f ] ; 4 uses
  %.03545.i.i = phi i32 [ 0, %.lr.ph.preheader.i12.i.new ], [ %.1.i.i.1, %bb.f ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i12.i.new ], [ %niter.next.1, %bb.f ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv55.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !18
  %.not23.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not23.i.i, label %.lr.ph.i13.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i13.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv55.i.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !18
  %i.an = call i8 @llvm.abs.i8(i8 %i.am, i1 false)
  %i.ao = zext i8 %i.an to i32
  %.sroa.speculated27.i.i = call i32 @llvm.smax.i32(i32 %.03545.i.i, i32 %i.ao)
  br label %.lr.ph.i13.i.1

.lr.ph.i13.i.1:                                   ; preds = %bb.d, %.lr.ph.i13.i
  %.1.i.i = phi i32 [ %.03545.i.i, %.lr.ph.i13.i ], [ %.sroa.speculated27.i.i, %bb.d ] ; 2 uses
  %indvars.iv.next56.i.i = or disjoint i64 %indvars.iv55.i.i, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next56.i.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !18
  %.not23.i.i.1 = icmp eq i8 %i.aq, 0
  br i1 %.not23.i.i.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i13.i.1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next56.i.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !18
  %i.at = call i8 @llvm.abs.i8(i8 %i.as, i1 false)
  %i.au = zext i8 %i.at to i32
  %.sroa.speculated27.i.i.1 = call i32 @llvm.smax.i32(i32 %.1.i.i, i32 %i.au)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i13.i.1
  %.1.i.i.1 = phi i32 [ %.1.i.i, %.lr.ph.i13.i.1 ], [ %.sroa.speculated27.i.i.1, %bb.e ] ; 3 uses
  %indvars.iv.next56.i.i.1 = add nuw nsw i64 %indvars.iv55.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit37.unr-lcssa, label %.lr.ph.i13.i, !llvm.loop !71

.loopexit.loopexit37.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i13.i.epil.preheader

.lr.ph.i13.i.epil.preheader:                      ; preds = %.loopexit.loopexit37.unr-lcssa, %.lr.ph.preheader.i12.i
  %indvars.iv55.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i12.i ], [ %indvars.iv.next56.i.i.1, %.loopexit.loopexit37.unr-lcssa ] ; 2 uses
  %.03545.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i12.i ], [ %.1.i.i.1, %.loopexit.loopexit37.unr-lcssa ] ; 2 uses
  %lcmp.mod42 = trunc i32 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod42)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv55.i.i.epil.init
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !18
  %.not23.i.i.epil = icmp eq i8 %i.aw, 0
  br i1 %.not23.i.i.epil, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i13.i.epil.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv55.i.i.epil.init
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !18
  %i.az = call i8 @llvm.abs.i8(i8 %i.ay, i1 false)
  %i.ba = zext i8 %i.az to i32
  %.sroa.speculated27.i.i.epil = call i32 @llvm.smax.i32(i32 %.03545.i.i.epil.init, i32 %i.ba)
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit36_crit_edge.us.i.i, %.loopexit.loopexit37.unr-lcssa, %bb.g, %.lr.ph.i13.i.epil.preheader, %.lr.ph.i.i, %middle.block31, %.preheader.i.i, %.preheader37.i.i, %bb.b
  %.5.i.sink.i = phi i32 [ %.sroa.speculated.i.i, %.lr.ph.i.i ], [ 0, %bb.b ], [ %.sroa.speculated27.i.i.epil, %bb.g ], [ 0, %.preheader.i.i ], [ 0, %.preheader37.i.i ], [ %9, %middle.block31 ], [ %.1.i.i.1, %.loopexit.loopexit37.unr-lcssa ], [ %.03545.i.i.epil.init, %.lr.ph.i13.i.epil.preheader ], [ %.4.us.i.i, %..loopexit36_crit_edge.us.i.i ]
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.a, i32 %.5.i.sink.i)
  store i32 %.sroa.speculated.i, ptr %2, align 4, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !16
  %.not.i6 = icmp eq i32 %i.bc, 0
  br i1 %.not.i6, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.loopexit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #20
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %.loopexit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN2cv12cpu_baselineL11normInf_16uEPKtPKhPiii(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.cv::cpu_baseline::MaskedNormInf_SIMD.9", align 1 ; 3 uses
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baselineL11normInf_16uEPKtPKhPiiiE26__cv_trace_location_fn1925)
  %i.a = load i32, ptr %2, align 4, !tbaa !17     ; 2 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = mul nsw i32 %4, %3                       ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %_ZNK2cv12cpu_baseline12NormInf_SIMDItiEclEPKti.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i16> [ zeroinitializer, %vector.ph ], [ %7, %vector.body ]
  %vec.phi8 = phi <4 x i16> [ zeroinitializer, %vector.ph ], [ %8, %vector.body ]
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %wide.load = load <4 x i16>, ptr %i.d, align 2, !tbaa !23
  %wide.load9 = load <4 x i16>, ptr %i.e, align 2, !tbaa !23
  %7 = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi, <4 x i16> %wide.load) ; 2 uses
  %8 = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi8, <4 x i16> %wide.load9) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %7, <4 x i16> %8)
  %9 = call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %rdx.minmax)
  %10 = zext i16 %9 to i32                        ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %_ZNK2cv12cpu_baseline12NormInf_SIMDItiEclEPKti.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.089.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %10, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.089.i.i = phi i32 [ %.sroa.speculated.i.i, %.lr.ph.i.i ], [ %.089.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i.i
  %i.h = load i16, ptr %i.g, align 2, !tbaa !23
  %i.i = zext i16 %i.h to i32
  %.sroa.speculated.i.i = call i32 @llvm.umax.i32(i32 %.089.i.i, i32 %i.i) ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK2cv12cpu_baseline12NormInf_SIMDItiEclEPKti.exit.i, label %.lr.ph.i.i, !llvm.loop !73

_ZNK2cv12cpu_baseline12NormInf_SIMDItiEclEPKti.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.b
  %.08.lcssa.i.i = phi i32 [ 0, %bb.b ], [ %10, %middle.block ], [ %.sroa.speculated.i.i, %.lr.ph.i.i ]
  %.sroa.speculated12.i = call i32 @llvm.smax.i32(i32 %i.a, i32 %.08.lcssa.i.i)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.j = invoke noundef i32 @_ZNK2cv12cpu_baseline18MaskedNormInf_SIMDItiEclEPKtPKhii(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %0, ptr noundef nonnull %1, i32 noundef %3, i32 noundef %4)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.a, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %_ZNK2cv12cpu_baseline12NormInf_SIMDItiEclEPKti.exit.i
  %.0.i = phi i32 [ %.sroa.speculated12.i, %_ZNK2cv12cpu_baseline12NormInf_SIMDItiEclEPKti.exit.i ], [ %.sroa.speculated.i, %.noexc ]
  store i32 %.0.i, ptr %2, align 4, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !16
  %.not.i6 = icmp eq i32 %i.l, 0
  br i1 %.not.i6, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #20
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret i32 0

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN2cv12cpu_baselineL11normInf_16sEPKsPKhPiii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baselineL11normInf_16sEPKsPKhPiiiE26__cv_trace_location_fn1926)
  %i.a = load i32, ptr %2, align 4, !tbaa !17
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = mul nsw i32 %4, %3                       ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %.loopexit

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64 ; 3 uses
  %min.iters.check21 = icmp ult i32 %i.b, 8
  br i1 %min.iters.check21, label %.lr.ph.i.i.preheader, label %vector.ph22

vector.ph22:                                      ; preds = %.lr.ph.preheader.i.i
  %n.vec23 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body24

vector.body24:                                    ; preds = %vector.body24, %vector.ph22
  %index25 = phi i64 [ 0, %vector.ph22 ], [ %index.next30, %vector.body24 ] ; 2 uses
  %vec.phi26 = phi <4 x i16> [ zeroinitializer, %vector.ph22 ], [ %6, %vector.body24 ]
  %vec.phi27 = phi <4 x i16> [ zeroinitializer, %vector.ph22 ], [ %7, %vector.body24 ]
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index25 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %wide.load28 = load <4 x i16>, ptr %i.d, align 2, !tbaa !23
  %wide.load29 = load <4 x i16>, ptr %i.e, align 2, !tbaa !23
  %i.f = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load28, i1 false)
  %i.g = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load29, i1 false)
  %6 = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi26, <4 x i16> %i.f) ; 2 uses
  %7 = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi27, <4 x i16> %i.g) ; 2 uses
  %index.next30 = add nuw i64 %index25, 8         ; 2 uses
  %i.h = icmp eq i64 %index.next30, %n.vec23
  br i1 %i.h, label %middle.block31, label %vector.body24, !llvm.loop !74

middle.block31:                                   ; preds = %vector.body24
  %rdx.minmax32 = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %6, <4 x i16> %7)
  %8 = call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %rdx.minmax32)
  %9 = zext i16 %8 to i32                         ; 2 uses
  %cmp.n33 = icmp eq i64 %n.vec23, %wide.trip.count.i.i
  br i1 %cmp.n33, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block31
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec23, %middle.block31 ]
  %.089.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %9, %middle.block31 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.089.i.i = phi i32 [ %.sroa.speculated.i.i, %.lr.ph.i.i ], [ %.089.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i.i
  %i.j = load i16, ptr %i.i, align 2, !tbaa !23
  %i.k = call i16 @llvm.abs.i16(i16 %i.j, i1 false)
  %i.l = zext i16 %i.k to i32
  %.sroa.speculated.i.i = call i32 @llvm.umax.i32(i32 %.089.i.i, i32 %i.l) ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !75

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %4, 1
  %i.n = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.m, label %.preheader.i.i, label %.preheader37.i.i

.preheader37.i.i:                                 ; preds = %bb.c
  %i.o = icmp sgt i32 %4, 0
  %or.cond.i.i = and i1 %i.n, %i.o
  br i1 %or.cond.i.i, label %.lr.ph43.split.us.preheader.i.i, label %.loopexit

.lr.ph43.split.us.preheader.i.i:                  ; preds = %.preheader37.i.i
  %i.p = zext nneg i32 %4 to i64                  ; 4 uses
  %wide.trip.count53.i.i = zext nneg i32 %3 to i64
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %i.p, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.p
  br label %.lr.ph43.split.us.i.i

.lr.ph43.split.us.i.i:                            ; preds = %..loopexit36_crit_edge.us.i.i, %.lr.ph43.split.us.preheader.i.i
  %indvars.iv50.i.i = phi i64 [ 0, %.lr.ph43.split.us.preheader.i.i ], [ %indvars.iv.next51.i.i, %..loopexit36_crit_edge.us.i.i ] ; 3 uses
  %.241.us.i.i = phi i32 [ 0, %.lr.ph43.split.us.preheader.i.i ], [ %.4.us.i.i, %..loopexit36_crit_edge.us.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv50.i.i
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18
  %.not.us.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.us.i.i, label %..loopexit36_crit_edge.us.i.i, label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %.lr.ph43.split.us.i.i
  %i.s = mul nuw nsw i64 %indvars.iv50.i.i, %i.p
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.s ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.i.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.241.us.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ab, %vector.body ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %wide.load = load <4 x i16>, ptr %i.u, align 2, !tbaa !23
  %wide.load19 = load <4 x i16>, ptr %i.v, align 2, !tbaa !23
  %i.w = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load, i1 false)
  %i.x = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load19, i1 false)
  %i.y = zext <4 x i16> %i.w to <4 x i32>
  %i.z = zext <4 x i16> %i.x to <4 x i32>
  %i.aa = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.y) ; 2 uses
  %i.ab = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi18, <4 x i32> %i.z) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aa, <4 x i32> %i.ab)
  %i.ad = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  br i1 %cmp.n, label %..loopexit36_crit_edge.us.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.i.i, %middle.block
  %indvars.iv.i9.i.ph = phi i64 [ 0, %.lr.ph.us.i.i ], [ %n.vec, %middle.block ]
  %.339.us.i.i.ph = phi i32 [ %.241.us.i.i, %.lr.ph.us.i.i ], [ %i.ad, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i9.i = phi i64 [ %indvars.iv.next.i10.i, %scalar.ph ], [ %indvars.iv.i9.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.339.us.i.i = phi i32 [ %.sroa.speculated.us.i.i, %scalar.ph ], [ %.339.us.i.i.ph, %scalar.ph.preheader ]
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv.i9.i
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !23
  %i.ag = call i16 @llvm.abs.i16(i16 %i.af, i1 false)
  %i.ah = zext i16 %i.ag to i32
  %.sroa.speculated.us.i.i = call i32 @llvm.smax.i32(i32 %.339.us.i.i, i32 %i.ah) ; 2 uses
  %indvars.iv.next.i10.i = add nuw nsw i64 %indvars.iv.i9.i, 1 ; 2 uses
  %exitcond.not.i11.i = icmp eq i64 %indvars.iv.next.i10.i, %i.p
  br i1 %exitcond.not.i11.i, label %..loopexit36_crit_edge.us.i.i, label %scalar.ph, !llvm.loop !77

..loopexit36_crit_edge.us.i.i:                    ; preds = %scalar.ph, %middle.block, %.lr.ph43.split.us.i.i
  %.4.us.i.i = phi i32 [ %.241.us.i.i, %.lr.ph43.split.us.i.i ], [ %i.ad, %middle.block ], [ %.sroa.speculated.us.i.i, %scalar.ph ] ; 2 uses
  %indvars.iv.next51.i.i = add nuw nsw i64 %indvars.iv50.i.i, 1 ; 2 uses
  %exitcond54.not.i.i = icmp eq i64 %indvars.iv.next51.i.i, %wide.trip.count53.i.i
  br i1 %exitcond54.not.i.i, label %.loopexit, label %.lr.ph43.split.us.i.i, !llvm.loop !78

.preheader.i.i:                                   ; preds = %bb.c
  br i1 %i.n, label %.lr.ph.preheader.i12.i, label %.loopexit

.lr.ph.preheader.i12.i:                           ; preds = %.preheader.i.i
  %wide.trip.count58.i.i = zext nneg i32 %3 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count58.i.i, 1
  %i.ai = icmp eq i32 %3, 1
  br i1 %i.ai, label %.lr.ph.i13.i.epil.preheader, label %.lr.ph.preheader.i12.i.new

.lr.ph.preheader.i12.i.new:                       ; preds = %.lr.ph.preheader.i12.i
  %unroll_iter = and i64 %wide.trip.count58.i.i, 2147483646
  br label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %bb.f, %.lr.ph.preheader.i12.i.new
  %indvars.iv55.i.i = phi i64 [ 0, %.lr.ph.preheader.i12.i.new ], [ %indvars.iv.next56.i.i.1, %bb.f ] ; 4 uses
  %.03545.i.i = phi i32 [ 0, %.lr.ph.preheader.i12.i.new ], [ %.1.i.i.1, %bb.f ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i12.i.new ], [ %niter.next.1, %bb.f ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv55.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !18
  %.not23.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not23.i.i, label %.lr.ph.i13.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i13.i
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv55.i.i
  %i.am = load i16, ptr %i.al, align 2, !tbaa !23
  %i.an = call i16 @llvm.abs.i16(i16 %i.am, i1 false)
  %i.ao = zext i16 %i.an to i32
  %.sroa.speculated27.i.i = call i32 @llvm.smax.i32(i32 %.03545.i.i, i32 %i.ao)
  br label %.lr.ph.i13.i.1

.lr.ph.i13.i.1:                                   ; preds = %bb.d, %.lr.ph.i13.i
  %.1.i.i = phi i32 [ %.03545.i.i, %.lr.ph.i13.i ], [ %.sroa.speculated27.i.i, %bb.d ] ; 2 uses
  %indvars.iv.next56.i.i = or disjoint i64 %indvars.iv55.i.i, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next56.i.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !18
  %.not23.i.i.1 = icmp eq i8 %i.aq, 0
  br i1 %.not23.i.i.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i13.i.1
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next56.i.i
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !23
  %i.at = call i16 @llvm.abs.i16(i16 %i.as, i1 false)
  %i.au = zext i16 %i.at to i32
  %.sroa.speculated27.i.i.1 = call i32 @llvm.smax.i32(i32 %.1.i.i, i32 %i.au)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i13.i.1
  %.1.i.i.1 = phi i32 [ %.1.i.i, %.lr.ph.i13.i.1 ], [ %.sroa.speculated27.i.i.1, %bb.e ] ; 3 uses
  %indvars.iv.next56.i.i.1 = add nuw nsw i64 %indvars.iv55.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit37.unr-lcssa, label %.lr.ph.i13.i, !llvm.loop !79

.loopexit.loopexit37.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i13.i.epil.preheader

.lr.ph.i13.i.epil.preheader:                      ; preds = %.loopexit.loopexit37.unr-lcssa, %.lr.ph.preheader.i12.i
  %indvars.iv55.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i12.i ], [ %indvars.iv.next56.i.i.1, %.loopexit.loopexit37.unr-lcssa ] ; 2 uses
  %.03545.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i12.i ], [ %.1.i.i.1, %.loopexit.loopexit37.unr-lcssa ] ; 2 uses
  %lcmp.mod42 = trunc i32 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod42)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv55.i.i.epil.init
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !18
  %.not23.i.i.epil = icmp eq i8 %i.aw, 0
  br i1 %.not23.i.i.epil, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i13.i.epil.preheader
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv55.i.i.epil.init
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !23
  %i.az = call i16 @llvm.abs.i16(i16 %i.ay, i1 false)
  %i.ba = zext i16 %i.az to i32
  %.sroa.speculated27.i.i.epil = call i32 @llvm.smax.i32(i32 %.03545.i.i.epil.init, i32 %i.ba)
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit36_crit_edge.us.i.i, %.loopexit.loopexit37.unr-lcssa, %bb.g, %.lr.ph.i13.i.epil.preheader, %.lr.ph.i.i, %middle.block31, %.preheader.i.i, %.preheader37.i.i, %bb.b
  %.5.i.sink.i = phi i32 [ %.sroa.speculated.i.i, %.lr.ph.i.i ], [ 0, %bb.b ], [ %.sroa.speculated27.i.i.epil, %bb.g ], [ 0, %.preheader.i.i ], [ 0, %.preheader37.i.i ], [ %9, %middle.block31 ], [ %.1.i.i.1, %.loopexit.loopexit37.unr-lcssa ], [ %.03545.i.i.epil.init, %.lr.ph.i13.i.epil.preheader ], [ %.4.us.i.i, %..loopexit36_crit_edge.us.i.i ]
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.a, i32 %.5.i.sink.i)
  store i32 %.sroa.speculated.i, ptr %2, align 4, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !16
  %.not.i6 = icmp eq i32 %i.bc, 0
  br i1 %.not.i6, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.loopexit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #20
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %.loopexit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN2cv12cpu_baselineL11normInf_32sEPKiPKhPjii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baselineL11normInf_32sEPKiPKhPjiiE26__cv_trace_location_fn1928)
  %i.a = load i32, ptr %2, align 4, !tbaa !17     ; 3 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = mul nsw i32 %4, %3                       ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %bb.h

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64 ; 3 uses
  %min.iters.check17 = icmp ult i32 %i.b, 8
  br i1 %min.iters.check17, label %.lr.ph.i.i.preheader, label %vector.ph18

vector.ph18:                                      ; preds = %.lr.ph.preheader.i.i
  %n.vec19 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph18
  %index21 = phi i64 [ 0, %vector.ph18 ], [ %index.next26, %vector.body20 ] ; 2 uses
  %vec.phi22 = phi <4 x i32> [ zeroinitializer, %vector.ph18 ], [ %i.h, %vector.body20 ]
  %vec.phi23 = phi <4 x i32> [ zeroinitializer, %vector.ph18 ], [ %i.i, %vector.body20 ]
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index21 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load24 = load <4 x i32>, ptr %i.d, align 4, !tbaa !17
  %wide.load25 = load <4 x i32>, ptr %i.e, align 4, !tbaa !17
  %i.f = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load24, i1 true)
  %i.g = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load25, i1 true)
  %i.h = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi22, <4 x i32> %i.f) ; 2 uses
  %i.i = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi23, <4 x i32> %i.g) ; 2 uses
  %index.next26 = add nuw i64 %index21, 8         ; 2 uses
  %i.j = icmp eq i64 %index.next26, %n.vec19
  br i1 %i.j, label %middle.block27, label %vector.body20, !llvm.loop !80

middle.block27:                                   ; preds = %vector.body20
  %rdx.minmax28 = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.h, <4 x i32> %i.i)
  %i.k = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax28) ; 2 uses
  %cmp.n29 = icmp eq i64 %n.vec19, %wide.trip.count.i.i
  br i1 %cmp.n29, label %_ZNK2cv12cpu_baseline12NormInf_SIMDIijEclEPKii.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block27
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec19, %middle.block27 ]
  %.089.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.k, %middle.block27 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.089.i.i = phi i32 [ %.sroa.speculated.i.i, %.lr.ph.i.i ], [ %.089.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !17
  %i.n = call noundef i32 @llvm.abs.i32(i32 %i.m, i1 true)
  %.sroa.speculated.i.i = call i32 @llvm.umax.i32(i32 %.089.i.i, i32 %i.n) ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK2cv12cpu_baseline12NormInf_SIMDIijEclEPKii.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !81

_ZNK2cv12cpu_baseline12NormInf_SIMDIijEclEPKii.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block27
  %.sroa.speculated.i.i.lcssa = phi i32 [ %i.k, %middle.block27 ], [ %.sroa.speculated.i.i, %.lr.ph.i.i ]
  %i.o = call i32 @llvm.umax.i32(i32 %i.a, i32 %.sroa.speculated.i.i.lcssa)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.p = icmp eq i32 %4, 1
  %i.q = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.p, label %.preheader.i.i, label %.preheader37.i.i

.preheader37.i.i:                                 ; preds = %bb.c
  %i.r = icmp sgt i32 %4, 0
  %or.cond.i.i = and i1 %i.q, %i.r
  br i1 %or.cond.i.i, label %.lr.ph43.split.us.preheader.i.i, label %_ZNK2cv12cpu_baseline18MaskedNormInf_SIMDIijEclEPKiPKhii.exit.i

.lr.ph43.split.us.preheader.i.i:                  ; preds = %.preheader37.i.i
  %i.s = zext nneg i32 %4 to i64                  ; 4 uses
  %wide.trip.count53.i.i = zext nneg i32 %3 to i64
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %i.s, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.s
  br label %.lr.ph43.split.us.i.i

.lr.ph43.split.us.i.i:                            ; preds = %..loopexit36_crit_edge.us.i.i, %.lr.ph43.split.us.preheader.i.i
  %indvars.iv50.i.i = phi i64 [ 0, %.lr.ph43.split.us.preheader.i.i ], [ %indvars.iv.next51.i.i, %..loopexit36_crit_edge.us.i.i ] ; 3 uses
  %.241.us.i.i = phi i32 [ 0, %.lr.ph43.split.us.preheader.i.i ], [ %.4.us.i.i, %..loopexit36_crit_edge.us.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv50.i.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !18
  %.not.us.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.us.i.i, label %..loopexit36_crit_edge.us.i.i, label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %.lr.ph43.split.us.i.i
  %i.v = mul nuw nsw i64 %indvars.iv50.i.i, %i.s
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.i.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.241.us.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ab, %vector.body ]
  %vec.phi14 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ac, %vector.body ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <4 x i32>, ptr %i.x, align 4, !tbaa !17
  %wide.load15 = load <4 x i32>, ptr %i.y, align 4, !tbaa !17
  %i.z = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load, i1 true)
  %i.aa = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load15, i1 true)
  %i.ab = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.z) ; 2 uses
  %i.ac = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi14, <4 x i32> %i.aa) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ab, <4 x i32> %i.ac)
  %i.ae = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  br i1 %cmp.n, label %..loopexit36_crit_edge.us.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.i.i, %middle.block
  %indvars.iv.i9.i.ph = phi i64 [ 0, %.lr.ph.us.i.i ], [ %n.vec, %middle.block ]
  %.339.us.i.i.ph = phi i32 [ %.241.us.i.i, %.lr.ph.us.i.i ], [ %i.ae, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i9.i = phi i64 [ %indvars.iv.next.i10.i, %scalar.ph ], [ %indvars.iv.i9.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.339.us.i.i = phi i32 [ %.sroa.speculated.us.i.i, %scalar.ph ], [ %.339.us.i.i.ph, %scalar.ph.preheader ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i9.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !17
  %i.ah = call noundef i32 @llvm.abs.i32(i32 %i.ag, i1 true)
  %.sroa.speculated.us.i.i = call i32 @llvm.umax.i32(i32 %.339.us.i.i, i32 %i.ah) ; 2 uses
  %indvars.iv.next.i10.i = add nuw nsw i64 %indvars.iv.i9.i, 1 ; 2 uses
  %exitcond.not.i11.i = icmp eq i64 %indvars.iv.next.i10.i, %i.s
  br i1 %exitcond.not.i11.i, label %..loopexit36_crit_edge.us.i.i, label %scalar.ph, !llvm.loop !83

..loopexit36_crit_edge.us.i.i:                    ; preds = %scalar.ph, %middle.block, %.lr.ph43.split.us.i.i
  %.4.us.i.i = phi i32 [ %.241.us.i.i, %.lr.ph43.split.us.i.i ], [ %i.ae, %middle.block ], [ %.sroa.speculated.us.i.i, %scalar.ph ] ; 2 uses
  %indvars.iv.next51.i.i = add nuw nsw i64 %indvars.iv50.i.i, 1 ; 2 uses
  %exitcond54.not.i.i = icmp eq i64 %indvars.iv.next51.i.i, %wide.trip.count53.i.i
  br i1 %exitcond54.not.i.i, label %_ZNK2cv12cpu_baseline18MaskedNormInf_SIMDIijEclEPKiPKhii.exit.i, label %.lr.ph43.split.us.i.i, !llvm.loop !84

.preheader.i.i:                                   ; preds = %bb.c
  br i1 %i.q, label %.lr.ph.preheader.i12.i, label %_ZNK2cv12cpu_baseline18MaskedNormInf_SIMDIijEclEPKiPKhii.exit.i

.lr.ph.preheader.i12.i:                           ; preds = %.preheader.i.i
  %wide.trip.count58.i.i = zext nneg i32 %3 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count58.i.i, 1
  %i.ai = icmp eq i32 %3, 1
  br i1 %i.ai, label %.lr.ph.i13.i.epil.preheader, label %.lr.ph.preheader.i12.i.new

.lr.ph.preheader.i12.i.new:                       ; preds = %.lr.ph.preheader.i12.i
  %unroll_iter = and i64 %wide.trip.count58.i.i, 2147483646
  br label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %bb.f, %.lr.ph.preheader.i12.i.new
  %indvars.iv55.i.i = phi i64 [ 0, %.lr.ph.preheader.i12.i.new ], [ %indvars.iv.next56.i.i.1, %bb.f ] ; 4 uses
  %.03545.i.i = phi i32 [ 0, %.lr.ph.preheader.i12.i.new ], [ %.1.i.i.1, %bb.f ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i12.i.new ], [ %niter.next.1, %bb.f ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv55.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !18
  %.not23.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not23.i.i, label %.lr.ph.i13.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i13.i
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv55.i.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !17
  %i.an = call noundef i32 @llvm.abs.i32(i32 %i.am, i1 true)
  %.sroa.speculated27.i.i = call i32 @llvm.umax.i32(i32 %.03545.i.i, i32 %i.an)
  br label %.lr.ph.i13.i.1

.lr.ph.i13.i.1:                                   ; preds = %bb.d, %.lr.ph.i13.i
  %.1.i.i = phi i32 [ %.03545.i.i, %.lr.ph.i13.i ], [ %.sroa.speculated27.i.i, %bb.d ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baseline11normDiffL2_INS_6hfloatEfEEiPKT_S5_PKhPT0_ii:bb.a
  %i.n = add nuw nsw i32 %i.k, 947912704
  %i.o = bitcast i32 %i.n to float
  %i.p = fadd float %i.o, f0xB8800000
  %i.q = bitcast float %i.p to i32
  br label %_ZNK2cv6hfloatcvfEv.exit.us

bb.c:                                             ; preds = %.preheader.us
  %i.r = or i32 %i.j, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit.us

_ZNK2cv6hfloatcvfEv.exit.us:                      ; preds = %bb.c, %bb.b, %.preheader.us
  %i.s = phi i32 [ %i.r, %bb.c ], [ %i.q, %bb.b ], [ %i.l, %.preheader.us ]
  %.signext.i.us = sext i16 %i.h to i32
  %i.t = and i32 %.signext.i.us, -2147483648
  %i.u = or i32 %i.s, %i.t
  %i.v = bitcast i32 %i.u to float
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.03039.us, i64 %indvars.iv
  %i.x = load i16, ptr %i.w, align 2, !tbaa !63   ; 2 uses
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  %i.z = shl nuw nsw i32 %i.y, 13                 ; 2 uses
  %i.aa = and i32 %i.z, 268427264                 ; 2 uses
  %i.ab = add nuw nsw i32 %i.aa, 939524096
  %i.ac = and i32 %i.y, 31744
  switch i32 %i.ac, label %_ZNK2cv6hfloatcvfEv.exit34.us [
    i32 31744, label %bb.e
    i32 0, label %bb.d
  ]

bb.d:                                             ; preds = %_ZNK2cv6hfloatcvfEv.exit.us
  %i.ad = add nuw nsw i32 %i.aa, 947912704
  %i.ae = bitcast i32 %i.ad to float
  %i.af = fadd float %i.ae, f0xB8800000
  %i.ag = bitcast float %i.af to i32
  br label %_ZNK2cv6hfloatcvfEv.exit34.us

bb.e:                                             ; preds = %_ZNK2cv6hfloatcvfEv.exit.us
  %i.ah = or i32 %i.z, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit34.us

_ZNK2cv6hfloatcvfEv.exit34.us:                    ; preds = %bb.e, %bb.d, %_ZNK2cv6hfloatcvfEv.exit.us
  %i.ai = phi i32 [ %i.ah, %bb.e ], [ %i.ag, %bb.d ], [ %i.ab, %_ZNK2cv6hfloatcvfEv.exit.us ]
  %.signext.i33.us = sext i16 %i.x to i32
  %i.aj = and i32 %.signext.i33.us, -2147483648
  %i.ak = or i32 %i.ai, %i.aj
  %i.al = bitcast i32 %i.ak to float
  %i.am = fsub float %i.v, %i.al                  ; 2 uses
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float %i.am, float %.137.us) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %.preheader.us, !llvm.loop !558

..loopexit_crit_edge.us:                          ; preds = %_ZNK2cv6hfloatcvfEv.exit34.us, %.lr.ph43.split.us
  %.2.us = phi float [ %.02940.us, %.lr.ph43.split.us ], [ %i.an, %_ZNK2cv6hfloatcvfEv.exit34.us ] ; 2 uses
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.042.us, i64 %i.d
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.03039.us, i64 %i.d
  %exitcond52.not = icmp eq i64 %indvars.iv.next49, %wide.trip.count51
  br i1 %exitcond52.not, label %.loopexit36, label %.lr.ph43.split.us, !llvm.loop !559

bb.f:                                             ; preds = %bb.a
  %i.aq = mul nsw i32 %5, %4                      ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.preheader.i, label %_ZNK2cv12cpu_baseline15NormDiffL2_SIMDINS_6hfloatEfEclEPKS2_S5_i.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %wide.trip.count.i = zext nneg i32 %i.aq to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK2cv6hfloatcvfEv.exit12.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZNK2cv6hfloatcvfEv.exit12.i ] ; 3 uses
  %.014.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.bz, %_ZNK2cv6hfloatcvfEv.exit12.i ]
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  %i.at = load i16, ptr %i.as, align 2, !tbaa !63 ; 2 uses
  %i.au = zext i16 %i.at to i32                   ; 2 uses
  %i.av = shl nuw nsw i32 %i.au, 13               ; 2 uses
  %i.aw = and i32 %i.av, 268427264                ; 2 uses
  %i.ax = add nuw nsw i32 %i.aw, 939524096
  %i.ay = and i32 %i.au, 31744
  switch i32 %i.ay, label %_ZNK2cv6hfloatcvfEv.exit.i [
    i32 31744, label %bb.g
    i32 0, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph.i
  %i.az = or i32 %i.av, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = add nuw nsw i32 %i.aw, 947912704
  %i.bb = bitcast i32 %i.ba to float
  %i.bc = fadd float %i.bb, f0xB8800000
  %i.bd = bitcast float %i.bc to i32
  br label %_ZNK2cv6hfloatcvfEv.exit.i

_ZNK2cv6hfloatcvfEv.exit.i:                       ; preds = %bb.h, %bb.g, %.lr.ph.i
  %i.be = phi i32 [ %i.az, %bb.g ], [ %i.bd, %bb.h ], [ %i.ax, %.lr.ph.i ]
  %.signext.i.i = sext i16 %i.at to i32
  %i.bf = and i32 %.signext.i.i, -2147483648
  %i.bg = or i32 %i.be, %i.bf
  %i.bh = bitcast i32 %i.bg to float
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !63 ; 2 uses
  %i.bk = zext i16 %i.bj to i32                   ; 2 uses
  %i.bl = shl nuw nsw i32 %i.bk, 13               ; 2 uses
  %i.bm = and i32 %i.bl, 268427264                ; 2 uses
  %i.bn = add nuw nsw i32 %i.bm, 939524096
  %i.bo = and i32 %i.bk, 31744
  switch i32 %i.bo, label %_ZNK2cv6hfloatcvfEv.exit12.i [
    i32 31744, label %bb.i
    i32 0, label %bb.j
  ]

bb.i:                                             ; preds = %_ZNK2cv6hfloatcvfEv.exit.i
  %i.bp = or i32 %i.bl, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit12.i

bb.j:                                             ; preds = %_ZNK2cv6hfloatcvfEv.exit.i
  %i.bq = add nuw nsw i32 %i.bm, 947912704
  %i.br = bitcast i32 %i.bq to float
  %i.bs = fadd float %i.br, f0xB8800000
  %i.bt = bitcast float %i.bs to i32
  br label %_ZNK2cv6hfloatcvfEv.exit12.i

_ZNK2cv6hfloatcvfEv.exit12.i:                     ; preds = %bb.j, %bb.i, %_ZNK2cv6hfloatcvfEv.exit.i
  %i.bu = phi i32 [ %i.bp, %bb.i ], [ %i.bt, %bb.j ], [ %i.bn, %_ZNK2cv6hfloatcvfEv.exit.i ]
  %.signext.i11.i = sext i16 %i.bj to i32
  %i.bv = and i32 %.signext.i11.i, -2147483648
  %i.bw = or i32 %i.bu, %i.bv
  %i.bx = bitcast i32 %i.bw to float
  %i.by = fsub float %i.bh, %i.bx                 ; 2 uses
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %.014.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK2cv12cpu_baseline15NormDiffL2_SIMDINS_6hfloatEfEclEPKS2_S5_i.exit, label %.lr.ph.i, !llvm.loop !560

_ZNK2cv12cpu_baseline15NormDiffL2_SIMDINS_6hfloatEfEclEPKS2_S5_i.exit: ; preds = %_ZNK2cv6hfloatcvfEv.exit12.i, %bb.f
  %.0.lcssa.i = phi float [ 0.000000e+00, %bb.f ], [ %i.bz, %_ZNK2cv6hfloatcvfEv.exit12.i ]
  %i.ca = fadd float %i.a, %.0.lcssa.i
  br label %.loopexit36

.loopexit36:                                      ; preds = %..loopexit_crit_edge.us, %.lr.ph43, %.preheader35, %_ZNK2cv12cpu_baseline15NormDiffL2_SIMDINS_6hfloatEfEclEPKS2_S5_i.exit
  %.3 = phi float [ %i.ca, %_ZNK2cv12cpu_baseline15NormDiffL2_SIMDINS_6hfloatEfEclEPKS2_S5_i.exit ], [ %i.a, %.preheader35 ], [ %i.a, %.lr.ph43 ], [ %.2.us, %..loopexit_crit_edge.us ]
  store float %.3, ptr %3, align 4, !tbaa !25
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umax.v4i8(<4 x i8>, <4 x i8>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umax.v4i8(<4 x i8>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.abs.v4i8(<4 x i8>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umax.v4i16(<4 x i16>, <4 x i16>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v4i16(<4 x i16>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.abs.v4i16(<4 x i16>, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umax.v2i64(<2 x i64>, <2 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.umax.v2i64(<2 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.abs.v2i64(<2 x i64>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smin.v4i16(<4 x i16>, <4 x i16>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.vector.partial.reduce.add.v2i32.v4i32(<2 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umax.v16i8(<16 x i8>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v8i16(<8 x i16>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !19}
!1 = distinct !{!1, !19}
!2 = distinct !{!2, !19}
!3 = distinct !{!3, !19}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !12, i64 0}
!15 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !14, i64 0, !9, i64 8}
!16 = !{!15, !9, i64 8}
!17 = !{!9, !9, i64 0}
!18 = !{!8, !8, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"short", !8, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"float", !8, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"double", !8, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"llvm.loop.peeled.count", i32 1}
!29 = !{!"long", !8, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = !{!"_ZTSN2cv6bfloatE", !22, i64 0}
!33 = !{!32, !22, i64 0}
!34 = !{!"p1 omnipotent char", !12, i64 0}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !34, i64 0}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0, !29, i64 8, !8, i64 16}
!37 = !{!36, !34, i64 0}
!38 = !{!"_ZTSN2cv5Size_IiEE", !9, i64 0, !9, i64 4}
!39 = !{!"_ZTSN2cv11_InputArrayE", !9, i64 0, !12, i64 8, !38, i64 16}
!40 = !{!39, !12, i64 8}
!41 = !{!"p1 _ZTSN2cv12MatAllocatorE", !12, i64 0}
!42 = !{!"p1 _ZTSN2cv8UMatDataE", !12, i64 0}
!43 = !{!"_ZTSN2cv10DataLayoutE", !8, i64 0}
!44 = !{!"_ZTSN2cv8MatShapeE", !9, i64 0, !43, i64 4, !9, i64 8, !8, i64 12}
!45 = !{!"_ZTSN2cv7MatStepE", !8, i64 0}
!46 = !{!"_ZTSN2cv3MatE", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !34, i64 48, !41, i64 56, !42, i64 64, !44, i64 72, !45, i64 128}
!47 = !{!46, !9, i64 0}
!48 = !{!46, !9, i64 4}
!49 = !{!46, !34, i64 24}
!50 = !{!38, !9, i64 0}
!51 = !{!38, !9, i64 4}
!52 = !{!39, !9, i64 0}
!53 = !{!"p1 _ZTSN2cv3MatE", !12, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"any p2 pointer", !12, i64 0}
!56 = !{!"p2 _ZTSN2cv3MatE", !55, i64 0}
!57 = !{!"p2 omnipotent char", !55, i64 0}
!58 = !{!"_ZTSN2cv15NAryMatIteratorE", !56, i64 0, !53, i64 8, !57, i64 16, !9, i64 24, !29, i64 32, !29, i64 40, !9, i64 48, !29, i64 56}
!59 = !{!58, !29, i64 40}
!60 = !{!58, !29, i64 32}
!61 = !{!34, !34, i64 0}
!62 = !{!"_ZTSN2cv6hfloatE", !22, i64 0}
!63 = !{!62, !22, i64 0}
!64 = distinct !{!64, !19, !20, !21}
!65 = distinct !{!65, !19, !21, !20}
!66 = distinct !{!66, !19, !20, !21}
!67 = distinct !{!67, !19, !21, !20}
!68 = distinct !{!68, !19, !20, !21}
!69 = distinct !{!69, !19, !21, !20}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, !19, !20, !21}
!73 = distinct !{!73, !19, !21, !20}
!74 = distinct !{!74, !19, !20, !21}
!75 = distinct !{!75, !19, !21, !20}
!76 = distinct !{!76, !19, !20, !21}
!77 = distinct !{!77, !19, !21, !20}
!78 = distinct !{!78, !19}
!79 = distinct !{!79, !19}
!80 = distinct !{!80, !19, !20, !21}
!81 = distinct !{!81, !19, !21, !20}
!82 = distinct !{!82, !19, !20, !21}
!83 = distinct !{!83, !19, !21, !20}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !19}
!86 = distinct !{!86, !19}
!87 = distinct !{!87, !19}
!88 = distinct !{!88, !19}
!89 = distinct !{!89, !19}
!90 = distinct !{!90, !19}
!91 = distinct !{!91, !19}
!92 = distinct !{!92, !19}
!93 = distinct !{!93, !19}
!94 = distinct !{!94, !19}
!95 = distinct !{!95, !19, !20, !21}
!96 = distinct !{!96, !19, !21, !20}
!97 = distinct !{!97, !19}
!98 = distinct !{!98, !19, !28}
!99 = distinct !{!99, !19, !20, !21}
!100 = distinct !{!100, !19, !21, !20}
!101 = distinct !{!101, !19, !20, !21}
!102 = distinct !{!102, !19, !21, !20}
!103 = distinct !{!103, !19}
!104 = distinct !{!104, !19}
!105 = distinct !{!105, !19}
!106 = distinct !{!106, !19}
!107 = distinct !{!107, !19}
!108 = distinct !{!108, !19}
!109 = distinct !{!109, !19, !20, !21}
!110 = distinct !{!110, !19, !21, !20}
!111 = distinct !{!111, !19, !20, !21}
!112 = distinct !{!112, !19, !21, !20}
!113 = distinct !{!113, !19}
!114 = distinct !{!114, !19}
!115 = distinct !{!115, !19, !20, !21}
!116 = distinct !{!116, !19, !21, !20}
!117 = distinct !{!117, !19, !20, !21}
!118 = distinct !{!118, !19, !21, !20}
!119 = distinct !{!119, !19, !20, !21}
!120 = distinct !{!120, !19, !21, !20}
!121 = distinct !{!121, !19}
!122 = distinct !{!122, !19}
!123 = distinct !{!123, !19, !20, !21}
!124 = distinct !{!124, !19, !21, !20}
!125 = distinct !{!125, !19, !20, !21}
!126 = distinct !{!126, !19, !21, !20}
!127 = distinct !{!127, !19, !20, !21}
end_hunk_1
