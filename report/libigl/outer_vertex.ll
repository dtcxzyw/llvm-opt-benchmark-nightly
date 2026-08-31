Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/outer_vertex?download=true
inline.NumInlined: 916
inline.NumDeleted: 389
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0

@_ZN5EigenL4lastE = internal global %"class.Eigen::symbolic::SymbolExpr" zeroinitializer, align 1
@_ZN5EigenL6lastp1E = internal global %"class.Eigen::symbolic::AddExpr" zeroinitializer, align 1
@_ZN5EigenL3allE = internal global %"struct.Eigen::internal::all_t" zeroinitializer, align 1
@_ZN4COREL6relEpsE = internal global double 0.000000e+00, align 8
@_ZN4COREL12EXTLONG_ZEROE = internal global %"class.CORE::extLong" zeroinitializer, align 8
@_ZN4COREL11EXTLONG_ONEE = internal global %"class.CORE::extLong" zeroinitializer, align 8
@_ZN4COREL11EXTLONG_TWOE = internal global %"class.CORE::extLong" zeroinitializer, align 8
@_ZN4COREL13EXTLONG_THREEE = internal global %"class.CORE::extLong" zeroinitializer, align 8
@_ZN4COREL12EXTLONG_FOURE = internal global %"class.CORE::extLong" zeroinitializer, align 8
@_ZN4COREL12EXTLONG_FIVEE = internal global %"class.CORE::extLong" zeroinitializer, align 8
@_ZN4COREL11EXTLONG_SIXE = internal global %"class.CORE::extLong" zeroinitializer, align 8
@_ZN4COREL13EXTLONG_SEVENE = internal global %"class.CORE::extLong" zeroinitializer, align 8
@_ZN4COREL13EXTLONG_EIGHTE = internal global %"class.CORE::extLong" zeroinitializer, align 8
@_ZN4COREL11EXTLONG_BIGE = internal global %"class.CORE::extLong" zeroinitializer, align 8
@_ZN4COREL13EXTLONG_SMALLE = internal global %"class.CORE::extLong" zeroinitializer, align 8
@_ZN4COREL5log_5E = internal global double 0.000000e+00, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZN5boost4math6detail21min_shift_initializerIdE11initializerE = linkonce_odr dso_local global %"struct.boost::math::detail::min_shift_initializer<double>::init" zeroinitializer, comdat, align 1
@_ZGVN5boost4math6detail21min_shift_initializerIdE11initializerE = linkonce_odr dso_local local_unnamed_addr global i64 0, comdat($_ZN5boost4math6detail21min_shift_initializerIdE11initializerE), align 8
@.str.25 = private unnamed_addr constant [33 x i8] c"No bits were set in the operand.\00", align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"/usr/include/boost/multiprecision/cpp_int/misc.hpp\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"eval_msb\00", align 1
@.str.28 = private unnamed_addr constant [85 x i8] c"Testing individual bits in negative values is not supported - results are undefined.\00", align 1
@_ZTIN5boost10wrapexceptISt12domain_errorEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5boost10wrapexceptISt12domain_errorEE, i32 0, i32 3, ptr @_ZTIN5boost16exception_detail10clone_baseE, i64 2, ptr @_ZTISt12domain_error, i64 2050, ptr @_ZTIN5boost9exceptionE, i64 6146 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN5boost10wrapexceptISt12domain_errorEE = linkonce_odr dso_local constant [39 x i8] c"N5boost10wrapexceptISt12domain_errorEE\00", comdat, align 1
@_ZTIN5boost16exception_detail10clone_baseE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5boost16exception_detail10clone_baseE }, comdat, align 8
@_ZTSN5boost16exception_detail10clone_baseE = linkonce_odr dso_local constant [39 x i8] c"N5boost16exception_detail10clone_baseE\00", comdat, align 1
@_ZTISt12domain_error = external constant ptr
@_ZTIN5boost9exceptionE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5boost9exceptionE }, comdat, align 8
@_ZTSN5boost9exceptionE = linkonce_odr dso_local constant [19 x i8] c"N5boost9exceptionE\00", comdat, align 1
@_ZTVN5boost10wrapexceptISt12domain_errorEE = linkonce_odr dso_local constant { [6 x ptr], [5 x ptr], [4 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN5boost10wrapexceptISt12domain_errorEE, ptr @_ZNK5boost10wrapexceptISt12domain_errorE5cloneEv, ptr @_ZNK5boost10wrapexceptISt12domain_errorE7rethrowEv, ptr @_ZN5boost10wrapexceptISt12domain_errorED2Ev, ptr @_ZN5boost10wrapexceptISt12domain_errorED0Ev], [5 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN5boost10wrapexceptISt12domain_errorEE, ptr @_ZThn8_N5boost10wrapexceptISt12domain_errorED1Ev, ptr @_ZThn8_N5boost10wrapexceptISt12domain_errorED0Ev, ptr @_ZNKSt11logic_error4whatEv], [4 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr @_ZTIN5boost10wrapexceptISt12domain_errorEE, ptr @_ZThn24_N5boost10wrapexceptISt12domain_errorED1Ev, ptr @_ZThn24_N5boost10wrapexceptISt12domain_errorED0Ev] }, comdat, align 8
@_ZTVN5boost16exception_detail10clone_baseE = linkonce_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN5boost16exception_detail10clone_baseE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN5boost16exception_detail10clone_baseD2Ev, ptr @_ZN5boost16exception_detail10clone_baseD0Ev] }, comdat, align 8
@_ZTVSt12domain_error = external constant { [5 x ptr] }, align 8
@_ZTVN5boost9exceptionE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5boost9exceptionE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@__dso_handle = external hidden global i8
@.str.29 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result = linkonce_odr dso_local global %"struct.boost::multiprecision::backends::cpp_int_backend" zeroinitializer, comdat, align 16
@_ZGVZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result = linkonce_odr dso_local global i64 0, comdat, align 8
@_ZZN5boost4math6detail19get_min_shift_valueIdEET_vE3val = linkonce_odr dso_local global double 0.000000e+00, comdat, align 8
@_ZGVZN5boost4math6detail19get_min_shift_valueIdEET_vE3val = linkonce_odr dso_local global i64 0, comdat, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVN4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEiEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEiEE, ptr @_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev, ptr @_ZN4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEiED0Ev, ptr @_ZNK4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEiE12update_exactEv] }, comdat, align 8
@_ZTIN4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEiEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEiEE, ptr @_ZTIN4CGAL17Lazy_exact_nt_repIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEE }, comdat, align 8
@_ZTSN4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEiEE = linkonce_odr dso_local constant [221 x i8] c"N4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEiEE\00", comdat, align 1
@_ZTIN4CGAL17Lazy_exact_nt_repIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4CGAL17Lazy_exact_nt_repIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEE, ptr @_ZTIN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE }, comdat, align 8
@_ZTSN4CGAL17Lazy_exact_nt_repIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEE = linkonce_odr dso_local constant [223 x i8] c"N4CGAL17Lazy_exact_nt_repIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEE\00", comdat, align 1
@_ZTIN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i32 0, i32 2, ptr @_ZTIN4CGAL3RepE, i64 2, ptr @_ZTIN4CGAL10Depth_baseE, i64 2 }, comdat, align 8
@_ZTSN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE = linkonce_odr dso_local constant [262 x i8] c"N4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE\00", comdat, align 1
@_ZTIN4CGAL3RepE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4CGAL3RepE }, comdat, align 8
@_ZTSN4CGAL3RepE = linkonce_odr dso_local constant [12 x i8] c"N4CGAL3RepE\00", comdat, align 1
@_ZTIN4CGAL10Depth_baseE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4CGAL10Depth_baseE }, comdat, align 8
@_ZTSN4CGAL10Depth_baseE = linkonce_odr dso_local constant [20 x i8] c"N4CGAL10Depth_baseE\00", comdat, align 1
@_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, ptr @_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev, ptr @_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED0Ev, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZSt15__once_callable = external thread_local local_unnamed_addr global ptr, align 8
@_ZSt11__once_call = external thread_local local_unnamed_addr global ptr, align 8
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.23, ptr @_ZN5boost4math6detail21min_shift_initializerIdE11initializerE }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_outer_vertex.cpp, ptr null }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN5boost4math6detail21min_shift_initializerIdE11initializerE], section "llvm.metadata"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal12outer_vertexIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEElNS4_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERT2_RNS3_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2IiEET_NSt9enable_ifIXaaoosr3stdE15is_arithmetic_vISG_Esr3stdE9is_enum_vISG_Entsr3stdE9is_same_vISG_SD_EEPvE4typeE.exit:
  %5 = alloca %class.anon.164, align 8            ; 5 uses
  %6 = alloca %class.anon, align 8                ; 4 uses
  %7 = alloca %class.anon.164, align 8            ; 5 uses
  %8 = alloca %class.anon, align 8                ; 4 uses
  %9 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 17 uses
  %10 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 13 uses
  %i.a = alloca [1 x i64], align 8                ; 5 uses
  %11 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 9 uses
  %12 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 9 uses
  %13 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 9 uses
  %14 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 9 uses
  %i.b = alloca [1 x i64], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.e = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #30 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 1, ptr %i.f, align 4, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <2 x double> <double -0.000000e+00, double 0.000000e+00>, ptr %i.g, align 16, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.h, align 16, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i32 0, ptr %i.i, align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEiEE, i64 16), ptr %i.e, align 16, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  store i32 0, ptr %i.j, align 4, !tbaa !24
  store ptr %i.e, ptr %9, align 8, !tbaa !32
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2IiEET_NSt9enable_ifIXaaoosr3stdE15is_arithmetic_vISG_Esr3stdE9is_enum_vISG_Entsr3stdE9is_same_vISG_SD_EEPvE4typeE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 5 uses
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 5 uses
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.o = sext i32 %.3 to i64
  %i.p = ptrtoint ptr %.sroa.16.3 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2IiEET_NSt9enable_ifIXaaoosr3stdE15is_arithmetic_vISG_Esr3stdE9is_enum_vISG_Entsr3stdE9is_same_vISG_SD_EEPvE4typeE.exit
  %.sroa.0.0.lcssa = phi ptr [ null, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2IiEET_NSt9enable_ifIXaaoosr3stdE15is_arithmetic_vISG_Esr3stdE9is_enum_vISG_Entsr3stdE9is_same_vISG_SD_EEPvE4typeE.exit ], [ %.sroa.0.3, %._crit_edge.loopexit ] ; 7 uses
  %.sroa.16.0.lcssa = phi i64 [ 0, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2IiEET_NSt9enable_ifIXaaoosr3stdE15is_arithmetic_vISG_Esr3stdE9is_enum_vISG_Entsr3stdE9is_same_vISG_SD_EEPvE4typeE.exit ], [ %i.p, %._crit_edge.loopexit ]
  %.sroa.29.0.lcssa = phi ptr [ null, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2IiEET_NSt9enable_ifIXaaoosr3stdE15is_arithmetic_vISG_Esr3stdE9is_enum_vISG_Entsr3stdE9is_same_vISG_SD_EEPvE4typeE.exit ], [ %.sroa.29.3, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i64 [ 2147483647, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2IiEET_NSt9enable_ifIXaaoosr3stdE15is_arithmetic_vISG_Esr3stdE9is_enum_vISG_Entsr3stdE9is_same_vISG_SD_EEPvE4typeE.exit ], [ %i.o, %._crit_edge.loopexit ]
  store i64 %.0.lcssa, ptr %3, align 8, !tbaa !35
  %i.q = ptrtoint ptr %.sroa.0.0.lcssa to i64     ; 3 uses
  %i.r = sub i64 %.sroa.16.0.lcssa, %i.q          ; 2 uses
  %i.s = ashr exact i64 %i.r, 3                   ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36
  %.not.i.i = icmp eq i64 %i.s, %i.u
  %.pre314 = load ptr, ptr %4, align 8, !tbaa !39 ; 2 uses
  br i1 %.not.i.i, label %bb.cx, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %.pre314) #29
  %i.v = icmp sgt i64 %i.s, 0
  br i1 %i.v, label %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.i.i.i, label %.sink.split.i.i

_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.i.i.i: ; preds = %bb.a
  %i.w = call noalias ptr @malloc(i64 noundef %i.r) #31 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.b, label %.sink.split.i.i

bb.b:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.i.i.i
  %i.y = call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.y, align 8, !tbaa !22
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #32
          to label %.noexc67 unwind label %bb.dh

.noexc67:                                         ; preds = %bb.b
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.i.i.i, %bb.a
  %.sink.i.i = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.i.i.i ], [ null, %bb.a ] ; 2 uses
  store ptr %.sink.i.i, ptr %4, align 8, !tbaa !39
  br label %bb.cx

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.0278 = phi i32 [ 2147483647, %.lr.ph ], [ %.3, %bb.d ]
  %.050277 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.d ] ; 2 uses
  %.sroa.29.0276 = phi ptr [ null, %.lr.ph ], [ %.sroa.29.3, %bb.d ]
  %.sroa.16.0275 = phi ptr [ null, %.lr.ph ], [ %.sroa.16.3, %bb.d ]
  %.sroa.0.0274 = phi ptr [ null, %.lr.ph ], [ %.sroa.0.3, %bb.d ]
  %i.z = load ptr, ptr %2, align 8, !tbaa !40
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %.050277
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !41
  %i.ac = sext i32 %i.ab to i64                   ; 9 uses
  br label %bb.e

bb.d:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit108
  %i.ad = add nuw i64 %.050277, 1                 ; 2 uses
  %exitcond311.not = icmp eq i64 %i.ad, %i.d
  br i1 %exitcond311.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !42

bb.e:                                             ; preds = %bb.c, %_ZN4CGAL6HandleD2Ev.exit108
  %.1273 = phi i32 [ %.0278, %bb.c ], [ %.3, %_ZN4CGAL6HandleD2Ev.exit108 ] ; 8 uses
  %.051272 = phi i64 [ 0, %bb.c ], [ %i.kv, %_ZN4CGAL6HandleD2Ev.exit108 ] ; 2 uses
  %.sroa.29.1271 = phi ptr [ %.sroa.29.0276, %bb.c ], [ %.sroa.29.3, %_ZN4CGAL6HandleD2Ev.exit108 ] ; 13 uses
  %.sroa.16.1270 = phi ptr [ %.sroa.16.0275, %bb.c ], [ %.sroa.16.3, %_ZN4CGAL6HandleD2Ev.exit108 ] ; 18 uses
  %.sroa.0.1269 = phi ptr [ %.sroa.0.0274, %bb.c ], [ %.sroa.0.3, %_ZN4CGAL6HandleD2Ev.exit108 ] ; 25 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !44
  %i.af = load i64, ptr %i.k, align 8, !tbaa !46
  %i.ag = mul nsw i64 %i.af, %.051272
  %i.ah = getelementptr [4 x i8], ptr %i.ae, i64 %i.ac
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.ak = sext i32 %i.aj to i64                   ; 4 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !47
  %i.am = load i64, ptr %i.l, align 8, !tbaa !50
  %i.an = mul nsw i64 %i.am, %i.ak
  %i.ao = getelementptr [16 x i8], ptr %i.al, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !32 ; 7 uses
  store ptr %i.ap, ptr %10, align 8, !tbaa !32
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16 ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %i.aq, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = load atomic i32, ptr %i.ar monotonic, align 4
  %i.at = add nsw i32 %i.as, 1
  store atomic i32 %i.at, ptr %i.ar monotonic, align 4
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit

bb.g:                                             ; preds = %bb.e
  %i.au = atomicrmw add ptr %i.ar, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit: ; preds = %bb.f, %bb.g
  %i.av = icmp eq i32 %.1273, 2147483647
  br i1 %i.av, label %bb.r, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit
  %i.aw = load ptr, ptr %9, align 8, !tbaa !32    ; 6 uses
  %i.ax = icmp eq ptr %i.aw, %i.ap
  br i1 %i.ax, label %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ba = load double, ptr %i.az, align 8, !tbaa !16
  %15 = load double, ptr %i.ay, align 16, !tbaa !16
  %i.bb = fneg double %15
  %i.bc = fcmp olt double %i.ba, %i.bb
  br i1 %i.bc, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %16 = load double, ptr %i.bd, align 16, !tbaa !16
  %17 = fneg double %16
  %18 = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %19 = load double, ptr %18, align 8, !tbaa !16
  %i.be = fcmp ugt double %19, %17
  %i.bf = select i1 %i.be, i16 256, i16 0
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i:   ; preds = %bb.j, %bb.i
  %.sroa.0.0.insert.insert.i.i = phi i16 [ 257, %bb.i ], [ %i.bf, %bb.j ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i16 %.sroa.0.0.insert.insert.i.i to i8
  %.sroa.2.0.extract.shift.i.i = lshr i16 %.sroa.0.0.insert.insert.i.i, 8
  %.sroa.2.0.extract.trunc.i.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i to i8
  %i.bg = icmp eq i8 %.sroa.0.0.extract.trunc.i.i, %.sroa.2.0.extract.trunc.i.i
  br i1 %i.bg, label %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr %i.aw, ptr %8, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store ptr %8, ptr %7, align 8, !tbaa !54
  store ptr %7, ptr %i.m, align 8, !tbaa !54
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.n, align 8, !tbaa !54
  %i.bi = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bh, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %.loopexit ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.k
  %.not.i.i.i.i115 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i.i115, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bi) #32
          to label %bb.m unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  unreachable

.loopexit:                                        ; preds = %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  store ptr null, ptr %i.m, align 8, !tbaa !54
  store ptr null, ptr %i.n, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %.body

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.bk = load atomic ptr, ptr %i.bj monotonic, align 8
  %i.bl = load ptr, ptr %10, align 8, !tbaa !32   ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store ptr %i.bl, ptr %6, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %6, ptr %5, align 8, !tbaa !54
  store ptr %5, ptr %i.m, align 8, !tbaa !54
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.n, align 8, !tbaa !54
  %i.bn = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bm, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i unwind label %.loopexit165 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i:        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i
  %.not.i.i.i11.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i.i11.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i, label %bb.o

bb.o:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bn) #32
          to label %bb.p unwind label %.loopexit.split-lp166

bb.p:                                             ; preds = %bb.o
  unreachable

.loopexit165:                                     ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i
  %lpad.loopexit167 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp166:                            ; preds = %bb.o
  %lpad.loopexit.split-lp168 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp166, %.loopexit165
  %lpad.phi169 = phi { ptr, i32 } [ %lpad.loopexit167, %.loopexit165 ], [ %lpad.loopexit.split-lp168, %.loopexit.split-lp166 ]
  store ptr null, ptr %i.m, align 8, !tbaa !54
  store ptr null, ptr %i.n, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.body

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i
  store ptr null, ptr %i.m, align 8, !tbaa !54
  store ptr null, ptr %i.n, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bp = load atomic ptr, ptr %i.bo monotonic, align 8
  %i.bq = invoke noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.bk, ptr noundef nonnull align 16 dereferenceable(64) %i.bp)
          to label %.noexc116 unwind label %.loopexit170

.noexc116:                                        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %.noexc116._crit_edge, label %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit.thread

.noexc116._crit_edge:                             ; preds = %.noexc116
  %.pre = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.pre313 = load ptr, ptr %10, align 8, !tbaa !32
  br label %bb.r

_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit: ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i
  %i.bs = trunc i16 %.sroa.0.0.insert.insert.i.i to i1
  br i1 %i.bs, label %bb.r, label %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit.thread

bb.r:                                             ; preds = %.noexc116._crit_edge, %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit
  %i.bt = phi ptr [ %.pre313, %.noexc116._crit_edge ], [ %i.ap, %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit ], [ %i.ap, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit ]
  %i.bu = phi i8 [ %.pre, %.noexc116._crit_edge ], [ %i.aq, %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit ], [ %i.aq, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit ]
  %.not.i.i.i.i69 = icmp eq i8 %i.bu, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i69, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i:             ; preds = %bb.r
  %i.bw = atomicrmw add ptr %i.bv, i32 1 monotonic, align 4 ; 0 uses
  %i.bx = load ptr, ptr %9, align 8, !tbaa !32    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit, label %bb.u

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i:      ; preds = %bb.r
  %i.by = load atomic i32, ptr %i.bv monotonic, align 4
  %i.bz = add nsw i32 %i.by, 1
  store atomic i32 %i.bz, ptr %i.bv monotonic, align 4
  %i.ca = load ptr, ptr %9, align 8, !tbaa !32    ; 4 uses
  %.not4.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not4.i.i.i, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = load atomic i32, ptr %i.cb monotonic, align 4 ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread.i.i.i
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !22
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(12) %i.ca) #29, !inline_history !55
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit

bb.t:                                             ; preds = %.thread.i.i.i
  %i.ch = add nsw i32 %i.cc, -1
  store atomic i32 %i.ch, ptr %i.cb monotonic, align 4
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit

bb.u:                                             ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.cj = load atomic i32, ptr %i.ci monotonic, align 4
  %i.ck = icmp eq i32 %i.cj, 1
  br i1 %i.ck, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = atomicrmw sub ptr %i.ci, i32 1 release, align 4
  %i.cm = icmp eq i32 %i.cl, 1
  br i1 %i.cm, label %bb.w, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit

bb.w:                                             ; preds = %bb.v, %bb.u
  fence acquire
  %i.cn = load ptr, ptr %9, align 8, !tbaa !32    ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !22
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(12) %i.cn) #29, !inline_history !55
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit: ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i, %bb.s, %bb.t, %bb.v, %bb.w, %bb.x
  %i.cs = load ptr, ptr %10, align 8, !tbaa !32
  store ptr %i.cs, ptr %9, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !35
  %i.ct = ptrtoint ptr %.sroa.29.1271 to i64
  %i.cu = ptrtoint ptr %.sroa.0.1269 to i64       ; 2 uses
  %i.cv = sub i64 %i.ct, %i.cu                    ; 2 uses
  %i.cw = icmp ult i64 %i.cv, 8
  br i1 %i.cw, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit
  %i.cx = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %.noexc120 unwind label %bb.ad ; 3 uses

.noexc120:                                        ; preds = %bb.y
  store i64 %i.ac, ptr %i.cx, align 8, !tbaa !35
  %.not.i.i119 = icmp eq ptr %.sroa.0.1269, null
  br i1 %.not.i.i119, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, label %bb.z

end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal12outer_vertexIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEElNS4_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERT2_RNS3_15PlainObjectBaseIT3_EE:_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2IiEET_NSt9enable_ifIXaaoosr3stdE15is_arithmetic_vISG_Esr3stdE9is_enum_vISG_Entsr3stdE9is_same_vISG_SD_EEPvE4typeE.exit
bb.cr:                                            ; preds = %bb.cq
  %i.kk = load ptr, ptr %i.kf, align 8, !tbaa !22
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(12) %i.kf) #29, !inline_history !56
  br label %_ZN4CGAL6HandleD2Ev.exit108

bb.cs:                                            ; preds = %bb.cq
  %i.kn = add nsw i32 %i.ki, -1
  store atomic i32 %i.kn, ptr %i.kh monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit108

bb.ct:                                            ; preds = %bb.cp
  br i1 %i.kj, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ko = atomicrmw sub ptr %i.kh, i32 1 release, align 4
  %i.kp = icmp eq i32 %i.ko, 1
  br i1 %i.kp, label %bb.cv, label %_ZN4CGAL6HandleD2Ev.exit108

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  fence acquire
  %i.kq = load ptr, ptr %10, align 8, !tbaa !32   ; 3 uses
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %_ZN4CGAL6HandleD2Ev.exit108, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ks = load ptr, ptr %i.kq, align 8, !tbaa !22
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8
  call void %i.ku(ptr noundef nonnull align 8 dereferenceable(12) %i.kq) #29, !inline_history !56
  br label %_ZN4CGAL6HandleD2Ev.exit108

_ZN4CGAL6HandleD2Ev.exit108:                      ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %bb.cr, %bb.cs, %bb.cu, %bb.cv, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.kv = add nuw nsw i64 %.051272, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.kv, 3
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !57

.body:                                            ; preds = %.loopexit170, %.loopexit.split-lp171, %bb.q, %bb.n, %bb.co, %bb.ad
  %.pn58 = phi { ptr, i32 } [ %i.df, %bb.ad ], [ %.pn, %bb.co ], [ %lpad.phi169, %bb.q ], [ %lpad.phi, %bb.n ], [ %lpad.loopexit172, %.loopexit170 ], [ %lpad.loopexit.split-lp173, %.loopexit.split-lp171 ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.di

bb.cx:                                            ; preds = %._crit_edge, %.sink.split.i.i
  %i.kw = phi ptr [ %.pre314, %._crit_edge ], [ %.sink.i.i, %.sink.split.i.i ] ; 4 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !36
  %i.kx = icmp sgt i64 %i.s, 0
  br i1 %i.kx, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPlET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.cx
  %i.ky = ptrtoaddr ptr %i.kw to i64
  %min.iters.check = icmp ult i64 %i.s, 8
  %i.kz = sub i64 %i.q, %i.ky
  %diff.check = icmp ugt i64 %i.kz, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader417, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.s, 9223372036854775804      ; 3 uses
  %i.la = and i64 %i.s, 3
  %i.lb = shl i64 %n.vec, 3                       ; 2 uses
  %i.lc = getelementptr i8, ptr %i.kw, i64 %i.lb
  %i.ld = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 %i.lb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.le = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.kw, i64 %i.le ; 2 uses
  %next.gep413 = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 %i.le ; 2 uses
  %i.lf = getelementptr i8, ptr %next.gep413, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep413, align 8, !tbaa !35
  %wide.load414 = load <2 x i64>, ptr %i.lf, align 8, !tbaa !35
  %i.lg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !35
  store <2 x i64> %wide.load414, ptr %i.lg, align 8, !tbaa !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lh = icmp eq i64 %index.next, %n.vec
  br i1 %i.lh, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPlET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.i.preheader417

.lr.ph.i.i.i.i.i.preheader417:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.preheader ], [ %i.la, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.kw, %.lr.ph.i.i.i.i.i.preheader ], [ %i.lc, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %.sroa.0.0.lcssa, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ld, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader417, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ll, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader417 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.lk, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader417 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.lj, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader417 ] ; 2 uses
  %i.li = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !35
  store i64 %i.li, ptr %.0811.i.i.i.i.i, align 8, !tbaa !35
  %i.lj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.lk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.ll = add nsw i64 %.012.i.i.i.i.i, -1
  %i.lm = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.lm, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPlET0_T_S9_S8_.exit, !llvm.loop !61

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPlET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %bb.cx
  %i.ln = load ptr, ptr %9, align 8, !tbaa !32    ; 4 uses
  %.not.i.i109 = icmp eq ptr %i.ln, null
  br i1 %.not.i.i109, label %_ZN4CGAL6HandleD2Ev.exit111, label %bb.cy

bb.cy:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPlET0_T_S9_S8_.exit
  %i.lo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i110 = icmp eq i8 %i.lo, 0
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 8 ; 3 uses
  %i.lq = load atomic i32, ptr %i.lp monotonic, align 4 ; 2 uses
  %i.lr = icmp eq i32 %i.lq, 1                    ; 2 uses
  br i1 %.not.i.i.i110, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  br i1 %i.lr, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.ls = load ptr, ptr %i.ln, align 8, !tbaa !22
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8
  call void %i.lu(ptr noundef nonnull align 8 dereferenceable(12) %i.ln) #29, !inline_history !56
  br label %_ZN4CGAL6HandleD2Ev.exit111

bb.db:                                            ; preds = %bb.cz
  %i.lv = add nsw i32 %i.lq, -1
  store atomic i32 %i.lv, ptr %i.lp monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit111

bb.dc:                                            ; preds = %bb.cy
  br i1 %i.lr, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.lw = atomicrmw sub ptr %i.lp, i32 1 release, align 4
  %i.lx = icmp eq i32 %i.lw, 1
  br i1 %i.lx, label %bb.de, label %_ZN4CGAL6HandleD2Ev.exit111

bb.de:                                            ; preds = %bb.dd, %bb.dc
  fence acquire
  %i.ly = load ptr, ptr %9, align 8, !tbaa !32    ; 3 uses
  %i.lz = icmp eq ptr %i.ly, null
  br i1 %i.lz, label %_ZN4CGAL6HandleD2Ev.exit111, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ma = load ptr, ptr %i.ly, align 8, !tbaa !22
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mc = load ptr, ptr %i.mb, align 8
  call void %i.mc(ptr noundef nonnull align 8 dereferenceable(12) %i.ly) #29, !inline_history !56
  br label %_ZN4CGAL6HandleD2Ev.exit111

_ZN4CGAL6HandleD2Ev.exit111:                      ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPlET0_T_S9_S8_.exit, %bb.da, %bb.db, %bb.dd, %bb.de, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %.not.i.i.i112 = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i112, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.dg

bb.dg:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit111
  %i.md = ptrtoint ptr %.sroa.29.0.lcssa to i64
  %i.me = sub i64 %i.md, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.me) #33
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZN4CGAL6HandleD2Ev.exit111, %bb.dg
  ret void

bb.dh:                                            ; preds = %bb.b
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %.body
  %.sroa.0.4 = phi ptr [ %.sroa.0.0.lcssa, %bb.dh ], [ %.sroa.0.1269, %.body ] ; 3 uses
  %.sroa.29.4 = phi ptr [ %.sroa.29.0.lcssa, %bb.dh ], [ %.sroa.29.1271, %.body ]
  %.pn58.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mf, %bb.dh ], [ %.pn58, %.body ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %.not.i.i.i113 = icmp eq ptr %.sroa.0.4, null
  br i1 %.not.i.i.i113, label %_ZNSt6vectorImSaImEED2Ev.exit114, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.mg = ptrtoint ptr %.sroa.29.4 to i64
  %i.mh = ptrtoint ptr %.sroa.0.4 to i64
  %i.mi = sub i64 %i.mg, %i.mh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4, i64 noundef %i.mi) #33
  br label %_ZNSt6vectorImSaImEED2Ev.exit114

_ZNSt6vectorImSaImEED2Ev.exit114:                 ; preds = %bb.di, %bb.dj
  resume { ptr, i32 } %.pn58.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4CGALeqIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.164, align 8            ; 5 uses
  %3 = alloca %class.anon, align 8                ; 4 uses
  %4 = alloca %class.anon.164, align 8            ; 5 uses
  %5 = alloca %class.anon, align 8                ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !32     ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %6 = load double, ptr %i.d, align 16, !tbaa !16
  %i.e = fneg double %6                           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load double, ptr %i.f, align 8, !tbaa !16 ; 2 uses
  %i.h = fcmp olt double %i.g, %i.e
  br i1 %i.h, label %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %8 = load double, ptr %7, align 8, !tbaa !16    ; 2 uses
  %9 = load double, ptr %i.i, align 16, !tbaa !16
  %i.j = fneg double %9                           ; 2 uses
  %i.k = fcmp olt double %8, %i.j
  br i1 %i.k, label %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = fcmp oeq double %i.g, %i.e
  %i.m = fcmp oeq double %8, %i.j
  %or.cond.i = and i1 %i.l, %i.m
  %i.n = zext i1 %or.cond.i to i16
  %i.o = or disjoint i16 %i.n, 256
  br label %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit

_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit:     ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.4.0.i = phi i16 [ %i.o, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i16 %.sroa.4.0.i to i8
  %.sroa.2.0.extract.shift.i = lshr i16 %.sroa.4.0.i, 8
  %.sroa.2.0.extract.trunc.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i to i8
  %i.p = icmp eq i8 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit
  %i.q = trunc i16 %.sroa.4.0.i to i1
  br label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit

bb.f:                                             ; preds = %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %i.a, ptr %5, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %5, ptr %4, align 8, !tbaa !54
  %i.s = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %4, ptr %i.s, align 8, !tbaa !54
  %i.t = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.t, align 8, !tbaa !54
  %i.u = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.i ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.u) #32
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.ab, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.s, align 8, !tbaa !54
  store ptr null, ptr %i.t, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  store ptr null, ptr %i.s, align 8, !tbaa !54
  store ptr null, ptr %i.t, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.x = load atomic ptr, ptr %i.w monotonic, align 8 ; 10 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !32     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %i.y, ptr %3, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %3, ptr %2, align 8, !tbaa !54
  store ptr %2, ptr %i.s, align 8, !tbaa !54
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.t, align 8, !tbaa !54
  %i.aa = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.z, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10 unwind label %bb.l ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10:          ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %.not.i.i.i11 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i11, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12, label %bb.j

bb.j:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.aa) #32
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.s, align 8, !tbaa !54
  store ptr null, ptr %i.t, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10
  store ptr null, ptr %i.s, align 8, !tbaa !54
  store ptr null, ptr %i.t, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = load atomic ptr, ptr %i.ac monotonic, align 8 ; 10 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !62, !range !65, !noundef !66
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !62, !range !65, !noundef !66
  %.not.i.i = icmp eq i8 %i.af, %i.ah
  br i1 %.not.i.i, label %bb.m, label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit

bb.m:                                             ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aj = load i64, ptr %i.ai, align 16, !tbaa !67 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.al = load i64, ptr %i.ak, align 16, !tbaa !67
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %bb.n, label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 25
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !68, !range !65, !noundef !66
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = select i1 %i.ap, ptr %i.x, ptr %i.ar    ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.aj, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i.i
  %.not10.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not10.i.i.i, label %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 25
  %i.av = load i8, ptr %i.au, align 1, !tbaa !68, !range !65, !noundef !66
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = select i1 %i.aw, ptr %i.ad, ptr %i.ay
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %.lr.ph.i.preheader.i.i
  %.012.i.i.i = phi ptr [ %i.bd, %bb.o ], [ %i.az, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.0811.i.i.i = phi ptr [ %i.bc, %bb.o ], [ %i.as, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.ba = load i64, ptr %.0811.i.i.i, align 8, !tbaa !69
  %i.bb = load i64, ptr %.012.i.i.i, align 8, !tbaa !69
  %.not9.i.i.i = icmp eq i64 %i.ba, %i.bb
  br i1 %.not9.i.i.i, label %bb.o, label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i13 = icmp eq ptr %i.bc, %i.at
  br i1 %.not.i.i.i13, label %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i, label %.lr.ph.i.i.i, !llvm.loop !71

_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i: ; preds = %bb.o, %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !62, !range !65, !noundef !66
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !62, !range !65, !noundef !66
  %.not13.i.i = icmp eq i8 %i.bh, %i.bj
  br i1 %.not13.i.i, label %bb.p, label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit

bb.p:                                             ; preds = %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.bl = load i64, ptr %i.bk, align 16, !tbaa !67 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.bn = load i64, ptr %i.bm, align 16, !tbaa !67
  %i.bo = icmp eq i64 %i.bl, %i.bn
  br i1 %i.bo, label %bb.q, label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 57
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !68, !range !65, !noundef !66
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = select i1 %i.br, ptr %i.be, ptr %i.bt   ; 2 uses
  %.idx14.i.i = shl nuw nsw i64 %i.bl, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx14.i.i
  %.not10.i5.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not10.i5.i.i, label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit, label %.lr.ph.i6.preheader.i.i

.lr.ph.i6.preheader.i.i:                          ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ad, i64 57
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !68, !range !65, !noundef !66
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = select i1 %i.by, ptr %i.bf, ptr %i.ca
  br label %.lr.ph.i6.i.i

.lr.ph.i6.i.i:                                    ; preds = %.lr.ph.i6.i.i, %.lr.ph.i6.preheader.i.i
  %.012.i7.i.i = phi ptr [ %i.cf, %.lr.ph.i6.i.i ], [ %i.cb, %.lr.ph.i6.preheader.i.i ] ; 2 uses
  %.0811.i8.i.i = phi ptr [ %i.ce, %.lr.ph.i6.i.i ], [ %i.bu, %.lr.ph.i6.preheader.i.i ] ; 2 uses
  %i.cc = load i64, ptr %.0811.i8.i.i, align 8, !tbaa !69
  %i.cd = load i64, ptr %.012.i7.i.i, align 8, !tbaa !69
  %.not9.i9.i.i = icmp eq i64 %i.cc, %i.cd        ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i8.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i7.i.i, i64 8
  %.not.i11.i.i = icmp ne ptr %i.ce, %i.bv
  %or.cond.not = select i1 %.not9.i9.i.i, i1 %.not.i11.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i6.i.i, label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit, !llvm.loop !71

_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i6.i.i, %bb.q, %bb.p, %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i, %bb.m, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12, %bb.e, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ %i.q, %bb.e ], [ false, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12 ], [ false, %bb.p ], [ false, %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i ], [ true, %bb.q ], [ %.not9.i9.i.i, %.lr.ph.i6.i.i ], [ false, %bb.m ], [ false, %.lr.ph.i.i.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN4CGAL6Handle5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 4 ; 2 uses
  %i.e = icmp eq i32 %i.d, 1                      ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #29, !inline_history !72
  br label %_ZN4CGAL6Handle5resetEv.exit

bb.e:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.d, -1
  store atomic i32 %i.i, ptr %i.c monotonic, align 4
  br label %_ZN4CGAL6Handle5resetEv.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = atomicrmw sub ptr %i.c, i32 1 release, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.h, label %_ZN4CGAL6Handle5resetEv.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.l = load ptr, ptr %0, align 8, !tbaa !32     ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN4CGAL6Handle5resetEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(12) %i.l) #29, !inline_history !72
  br label %_ZN4CGAL6Handle5resetEv.exit

_ZN4CGAL6Handle5resetEv.exit:                     ; preds = %bb.d, %bb.e, %bb.g, %bb.h, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal12outer_vertexIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEElNS4_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERT2_RNS3_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2IiEET_NSt9enable_ifIXaaoosr3stdE15is_arithmetic_vISG_Esr3stdE9is_enum_vISG_Entsr3stdE9is_same_vISG_SD_EEPvE4typeE.exit:
  %5 = alloca %class.anon.164, align 8            ; 5 uses
  %6 = alloca %class.anon, align 8                ; 4 uses
  %7 = alloca %class.anon.164, align 8            ; 5 uses
  %8 = alloca %class.anon, align 8                ; 4 uses
  %9 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 17 uses
  %10 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 13 uses
  %i.a = alloca [1 x i64], align 8                ; 5 uses
  %11 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 9 uses
  %12 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 10 uses
  %13 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 9 uses
  %14 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 10 uses
  %i.b = alloca [1 x i64], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.e = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #30 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 1, ptr %i.f, align 4, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <2 x double> <double -0.000000e+00, double 0.000000e+00>, ptr %i.g, align 16, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.h, align 16, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i32 0, ptr %i.i, align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEiEE, i64 16), ptr %i.e, align 16, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  store i32 0, ptr %i.j, align 4, !tbaa !24
  store ptr %i.e, ptr %9, align 8, !tbaa !32
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2IiEET_NSt9enable_ifIXaaoosr3stdE15is_arithmetic_vISG_Esr3stdE9is_enum_vISG_Entsr3stdE9is_same_vISG_SD_EEPvE4typeE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 5 uses
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 5 uses
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.o = sext i32 %.3 to i64
  %i.p = ptrtoint ptr %.sroa.16.3 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2IiEET_NSt9enable_ifIXaaoosr3stdE15is_arithmetic_vISG_Esr3stdE9is_enum_vISG_Entsr3stdE9is_same_vISG_SD_EEPvE4typeE.exit
  %.sroa.0.0.lcssa = phi ptr [ null, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2IiEET_NSt9enable_ifIXaaoosr3stdE15is_arithmetic_vISG_Esr3stdE9is_enum_vISG_Entsr3stdE9is_same_vISG_SD_EEPvE4typeE.exit ], [ %.sroa.0.3, %._crit_edge.loopexit ] ; 7 uses
  %.sroa.16.0.lcssa = phi i64 [ 0, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2IiEET_NSt9enable_ifIXaaoosr3stdE15is_arithmetic_vISG_Esr3stdE9is_enum_vISG_Entsr3stdE9is_same_vISG_SD_EEPvE4typeE.exit ], [ %i.p, %._crit_edge.loopexit ]
  %.sroa.29.0.lcssa = phi ptr [ null, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2IiEET_NSt9enable_ifIXaaoosr3stdE15is_arithmetic_vISG_Esr3stdE9is_enum_vISG_Entsr3stdE9is_same_vISG_SD_EEPvE4typeE.exit ], [ %.sroa.29.3, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i64 [ 2147483647, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2IiEET_NSt9enable_ifIXaaoosr3stdE15is_arithmetic_vISG_Esr3stdE9is_enum_vISG_Entsr3stdE9is_same_vISG_SD_EEPvE4typeE.exit ], [ %i.o, %._crit_edge.loopexit ]
  store i64 %.0.lcssa, ptr %3, align 8, !tbaa !35
  %i.q = ptrtoint ptr %.sroa.0.0.lcssa to i64     ; 3 uses
  %i.r = sub i64 %.sroa.16.0.lcssa, %i.q          ; 2 uses
  %i.s = ashr exact i64 %i.r, 3                   ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36
  %.not.i.i = icmp eq i64 %i.s, %i.u
  %.pre312 = load ptr, ptr %4, align 8, !tbaa !39 ; 2 uses
  br i1 %.not.i.i, label %bb.cx, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %.pre312) #29
  %i.v = icmp sgt i64 %i.s, 0
  br i1 %i.v, label %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.i.i.i, label %.sink.split.i.i

_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.i.i.i: ; preds = %bb.a
  %i.w = call noalias ptr @malloc(i64 noundef %i.r) #31 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.b, label %.sink.split.i.i

bb.b:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.i.i.i
  %i.y = call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.y, align 8, !tbaa !22
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #32
          to label %.noexc67 unwind label %bb.dh

.noexc67:                                         ; preds = %bb.b
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.i.i.i, %bb.a
  %.sink.i.i = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.i.i.i ], [ null, %bb.a ] ; 2 uses
  store ptr %.sink.i.i, ptr %4, align 8, !tbaa !39
  br label %bb.cx

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.0277 = phi i32 [ 2147483647, %.lr.ph ], [ %.3, %bb.d ]
  %.050276 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.d ] ; 2 uses
  %.sroa.29.0275 = phi ptr [ null, %.lr.ph ], [ %.sroa.29.3, %bb.d ]
  %.sroa.16.0274 = phi ptr [ null, %.lr.ph ], [ %.sroa.16.3, %bb.d ]
  %.sroa.0.0273 = phi ptr [ null, %.lr.ph ], [ %.sroa.0.3, %bb.d ]
  %i.z = load ptr, ptr %2, align 8, !tbaa !40
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %.050276
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !41
  %i.ac = sext i32 %i.ab to i64                   ; 9 uses
  br label %bb.e

bb.d:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit108
  %i.ad = add nuw i64 %.050276, 1                 ; 2 uses
  %exitcond310.not = icmp eq i64 %i.ad, %i.d
  br i1 %exitcond310.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !73

bb.e:                                             ; preds = %bb.c, %_ZN4CGAL6HandleD2Ev.exit108
  %.1272 = phi i32 [ %.0277, %bb.c ], [ %.3, %_ZN4CGAL6HandleD2Ev.exit108 ] ; 8 uses
  %.051271 = phi i64 [ 0, %bb.c ], [ %i.kn, %_ZN4CGAL6HandleD2Ev.exit108 ] ; 2 uses
  %.sroa.29.1270 = phi ptr [ %.sroa.29.0275, %bb.c ], [ %.sroa.29.3, %_ZN4CGAL6HandleD2Ev.exit108 ] ; 13 uses
  %.sroa.16.1269 = phi ptr [ %.sroa.16.0274, %bb.c ], [ %.sroa.16.3, %_ZN4CGAL6HandleD2Ev.exit108 ] ; 18 uses
  %.sroa.0.1268 = phi ptr [ %.sroa.0.0273, %bb.c ], [ %.sroa.0.3, %_ZN4CGAL6HandleD2Ev.exit108 ] ; 25 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !44
  %i.af = load i64, ptr %i.k, align 8, !tbaa !46
  %i.ag = mul nsw i64 %i.af, %.051271
  %i.ah = getelementptr [4 x i8], ptr %i.ae, i64 %i.ac
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.ak = sext i32 %i.aj to i64                   ; 4 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !74
  %i.am = getelementptr [16 x i8], ptr %i.al, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !32 ; 7 uses
  store ptr %i.an, ptr %10, align 8, !tbaa !32
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16 ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = load atomic i32, ptr %i.ap monotonic, align 4
  %i.ar = add nsw i32 %i.aq, 1
  store atomic i32 %i.ar, ptr %i.ap monotonic, align 4
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit

bb.g:                                             ; preds = %bb.e
  %i.as = atomicrmw add ptr %i.ap, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit: ; preds = %bb.f, %bb.g
  %i.at = icmp eq i32 %.1272, 2147483647
  br i1 %i.at, label %bb.r, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit
  %i.au = load ptr, ptr %9, align 8, !tbaa !32    ; 6 uses
  %i.av = icmp eq ptr %i.au, %i.an
  br i1 %i.av, label %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !16
  %15 = load double, ptr %i.aw, align 16, !tbaa !16
  %i.az = fneg double %15
  %i.ba = fcmp olt double %i.ay, %i.az
  br i1 %i.ba, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %16 = load double, ptr %i.bb, align 16, !tbaa !16
  %17 = fneg double %16
  %18 = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %19 = load double, ptr %18, align 8, !tbaa !16
  %i.bc = fcmp ugt double %19, %17
  %i.bd = select i1 %i.bc, i16 256, i16 0
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i:   ; preds = %bb.j, %bb.i
  %.sroa.0.0.insert.insert.i.i = phi i16 [ 257, %bb.i ], [ %i.bd, %bb.j ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i16 %.sroa.0.0.insert.insert.i.i to i8
  %.sroa.2.0.extract.shift.i.i = lshr i16 %.sroa.0.0.insert.insert.i.i, 8
  %.sroa.2.0.extract.trunc.i.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i to i8
  %i.be = icmp eq i8 %.sroa.0.0.extract.trunc.i.i, %.sroa.2.0.extract.trunc.i.i
  br i1 %i.be, label %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr %i.au, ptr %8, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store ptr %8, ptr %7, align 8, !tbaa !54
  store ptr %7, ptr %i.m, align 8, !tbaa !54
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.n, align 8, !tbaa !54
  %i.bg = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %.loopexit ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.k
  %.not.i.i.i.i115 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i.i115, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bg) #32
          to label %bb.m unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  unreachable

.loopexit:                                        ; preds = %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  store ptr null, ptr %i.m, align 8, !tbaa !54
  store ptr null, ptr %i.n, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %.body

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.bi = load atomic ptr, ptr %i.bh monotonic, align 8
  %i.bj = load ptr, ptr %10, align 8, !tbaa !32   ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store ptr %i.bj, ptr %6, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %6, ptr %5, align 8, !tbaa !54
  store ptr %5, ptr %i.m, align 8, !tbaa !54
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.n, align 8, !tbaa !54
  %i.bl = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bk, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i unwind label %.loopexit164 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i:        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i
  %.not.i.i.i11.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.i11.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i, label %bb.o

bb.o:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bl) #32
          to label %bb.p unwind label %.loopexit.split-lp165

bb.p:                                             ; preds = %bb.o
  unreachable

.loopexit164:                                     ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i
  %lpad.loopexit166 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp165:                            ; preds = %bb.o
  %lpad.loopexit.split-lp167 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp165, %.loopexit164
  %lpad.phi168 = phi { ptr, i32 } [ %lpad.loopexit166, %.loopexit164 ], [ %lpad.loopexit.split-lp167, %.loopexit.split-lp165 ]
  store ptr null, ptr %i.m, align 8, !tbaa !54
  store ptr null, ptr %i.n, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.body

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i
  store ptr null, ptr %i.m, align 8, !tbaa !54
  store ptr null, ptr %i.n, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bn = load atomic ptr, ptr %i.bm monotonic, align 8
  %i.bo = invoke noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.bi, ptr noundef nonnull align 16 dereferenceable(64) %i.bn)
          to label %.noexc116 unwind label %.loopexit169

.noexc116:                                        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %.noexc116._crit_edge, label %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit.thread

.noexc116._crit_edge:                             ; preds = %.noexc116
  %.pre = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.pre311 = load ptr, ptr %10, align 8, !tbaa !32
  br label %bb.r

_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit: ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i
  %i.bq = trunc i16 %.sroa.0.0.insert.insert.i.i to i1
  br i1 %i.bq, label %bb.r, label %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit.thread

bb.r:                                             ; preds = %.noexc116._crit_edge, %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit
  %i.br = phi ptr [ %.pre311, %.noexc116._crit_edge ], [ %i.an, %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit ], [ %i.an, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit ]
  %i.bs = phi i8 [ %.pre, %.noexc116._crit_edge ], [ %i.ao, %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit ], [ %i.ao, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit ]
  %.not.i.i.i.i69 = icmp eq i8 %i.bs, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i69, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i:             ; preds = %bb.r
  %i.bu = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4 ; 0 uses
  %i.bv = load ptr, ptr %9, align 8, !tbaa !32    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit, label %bb.u

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i:      ; preds = %bb.r
  %i.bw = load atomic i32, ptr %i.bt monotonic, align 4
  %i.bx = add nsw i32 %i.bw, 1
  store atomic i32 %i.bx, ptr %i.bt monotonic, align 4
  %i.by = load ptr, ptr %9, align 8, !tbaa !32    ; 4 uses
  %.not4.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not4.i.i.i, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.ca = load atomic i32, ptr %i.bz monotonic, align 4 ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread.i.i.i
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(12) %i.by) #29, !inline_history !55
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit

bb.t:                                             ; preds = %.thread.i.i.i
  %i.cf = add nsw i32 %i.ca, -1
  store atomic i32 %i.cf, ptr %i.bz monotonic, align 4
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit

bb.u:                                             ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.ch = load atomic i32, ptr %i.cg monotonic, align 4
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = atomicrmw sub ptr %i.cg, i32 1 release, align 4
  %i.ck = icmp eq i32 %i.cj, 1
  br i1 %i.ck, label %bb.w, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit

bb.w:                                             ; preds = %bb.v, %bb.u
  fence acquire
  %i.cl = load ptr, ptr %9, align 8, !tbaa !32    ; 3 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !22
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(12) %i.cl) #29, !inline_history !55
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit: ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i, %bb.s, %bb.t, %bb.v, %bb.w, %bb.x
  %i.cq = load ptr, ptr %10, align 8, !tbaa !32
  store ptr %i.cq, ptr %9, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !35
  %i.cr = ptrtoint ptr %.sroa.29.1270 to i64
  %i.cs = ptrtoint ptr %.sroa.0.1268 to i64       ; 2 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 2 uses
  %i.cu = icmp ult i64 %i.ct, 8
  br i1 %i.cu, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit
  %i.cv = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %.noexc120 unwind label %bb.ad ; 3 uses

.noexc120:                                        ; preds = %bb.y
  store i64 %i.ac, ptr %i.cv, align 8, !tbaa !35
  %.not.i.i119 = icmp eq ptr %.sroa.0.1268, null
  br i1 %.not.i.i119, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, label %bb.z

end_hunk_1
begin_hunk_2_@_ZN3igl8copyleft4cgal12outer_vertexIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEElNS4_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERT2_RNS3_15PlainObjectBaseIT3_EE:_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2IiEET_NSt9enable_ifIXaaoosr3stdE15is_arithmetic_vISG_Esr3stdE9is_enum_vISG_Entsr3stdE9is_same_vISG_SD_EEPvE4typeE.exit
bb.cy:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPlET0_T_S9_S8_.exit
  %i.lg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i110 = icmp eq i8 %i.lg, 0
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 8 ; 3 uses
  %i.li = load atomic i32, ptr %i.lh monotonic, align 4 ; 2 uses
  %i.lj = icmp eq i32 %i.li, 1                    ; 2 uses
  br i1 %.not.i.i.i110, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  br i1 %i.lj, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.lk = load ptr, ptr %i.lf, align 8, !tbaa !22
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8
  call void %i.lm(ptr noundef nonnull align 8 dereferenceable(12) %i.lf) #29, !inline_history !56
  br label %_ZN4CGAL6HandleD2Ev.exit111

bb.db:                                            ; preds = %bb.cz
  %i.ln = add nsw i32 %i.li, -1
  store atomic i32 %i.ln, ptr %i.lh monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit111

bb.dc:                                            ; preds = %bb.cy
  br i1 %i.lj, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.lo = atomicrmw sub ptr %i.lh, i32 1 release, align 4
  %i.lp = icmp eq i32 %i.lo, 1
  br i1 %i.lp, label %bb.de, label %_ZN4CGAL6HandleD2Ev.exit111

bb.de:                                            ; preds = %bb.dd, %bb.dc
  fence acquire
  %i.lq = load ptr, ptr %9, align 8, !tbaa !32    ; 3 uses
  %i.lr = icmp eq ptr %i.lq, null
  br i1 %i.lr, label %_ZN4CGAL6HandleD2Ev.exit111, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ls = load ptr, ptr %i.lq, align 8, !tbaa !22
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8
  call void %i.lu(ptr noundef nonnull align 8 dereferenceable(12) %i.lq) #29, !inline_history !56
  br label %_ZN4CGAL6HandleD2Ev.exit111

_ZN4CGAL6HandleD2Ev.exit111:                      ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPlET0_T_S9_S8_.exit, %bb.da, %bb.db, %bb.dd, %bb.de, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %.not.i.i.i112 = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i112, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.dg

bb.dg:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit111
  %i.lv = ptrtoint ptr %.sroa.29.0.lcssa to i64
  %i.lw = sub i64 %i.lv, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.lw) #33
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZN4CGAL6HandleD2Ev.exit111, %bb.dg
  ret void

bb.dh:                                            ; preds = %bb.b
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %.body
  %.sroa.0.4 = phi ptr [ %.sroa.0.0.lcssa, %bb.dh ], [ %.sroa.0.1268, %.body ] ; 3 uses
  %.sroa.29.4 = phi ptr [ %.sroa.29.0.lcssa, %bb.dh ], [ %.sroa.29.1270, %.body ]
  %.pn58.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lx, %bb.dh ], [ %.pn58, %.body ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %.not.i.i.i113 = icmp eq ptr %.sroa.0.4, null
  br i1 %.not.i.i.i113, label %_ZNSt6vectorImSaImEED2Ev.exit114, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ly = ptrtoint ptr %.sroa.29.4 to i64
  %i.lz = ptrtoint ptr %.sroa.0.4 to i64
  %i.ma = sub i64 %i.ly, %i.lz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4, i64 noundef %i.ma) #33
  br label %_ZNSt6vectorImSaImEED2Ev.exit114

_ZNSt6vectorImSaImEED2Ev.exit114:                 ; preds = %bb.di, %bb.dj
  resume { ptr, i32 } %.pn58.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal12outer_vertexIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IlLin1ELi1ELi0ELin1ELi1EEElSN_EEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERT2_RNS3_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2IiEET_NSt9enable_ifIXaaoosr3stdE15is_arithmetic_vISG_Esr3stdE9is_enum_vISG_Entsr3stdE9is_same_vISG_SD_EEPvE4typeE.exit:
  %5 = alloca %class.anon.164, align 8            ; 5 uses
  %6 = alloca %class.anon, align 8                ; 4 uses
  %7 = alloca %class.anon.164, align 8            ; 5 uses
  %8 = alloca %class.anon, align 8                ; 4 uses
  %9 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 17 uses
  %10 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 13 uses
  %i.a = alloca [1 x i64], align 8                ; 5 uses
  %11 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 9 uses
  %12 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 10 uses
  %13 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 9 uses
  %14 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 10 uses
  %i.b = alloca [1 x i64], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.e = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #30 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 1, ptr %i.f, align 4, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <2 x double> <double -0.000000e+00, double 0.000000e+00>, ptr %i.g, align 16, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.h, align 16, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i32 0, ptr %i.i, align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEiEE, i64 16), ptr %i.e, align 16, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  store i32 0, ptr %i.j, align 4, !tbaa !24
  store ptr %i.e, ptr %9, align 8, !tbaa !32
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2IiEET_NSt9enable_ifIXaaoosr3stdE15is_arithmetic_vISG_Esr3stdE9is_enum_vISG_Entsr3stdE9is_same_vISG_SD_EEPvE4typeE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 5 uses
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 5 uses
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.o = sext i32 %.3 to i64
  %i.p = ptrtoint ptr %.sroa.16.3 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2IiEET_NSt9enable_ifIXaaoosr3stdE15is_arithmetic_vISG_Esr3stdE9is_enum_vISG_Entsr3stdE9is_same_vISG_SD_EEPvE4typeE.exit
  %.sroa.0.0.lcssa = phi ptr [ null, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2IiEET_NSt9enable_ifIXaaoosr3stdE15is_arithmetic_vISG_Esr3stdE9is_enum_vISG_Entsr3stdE9is_same_vISG_SD_EEPvE4typeE.exit ], [ %.sroa.0.3, %._crit_edge.loopexit ] ; 7 uses
  %.sroa.16.0.lcssa = phi i64 [ 0, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2IiEET_NSt9enable_ifIXaaoosr3stdE15is_arithmetic_vISG_Esr3stdE9is_enum_vISG_Entsr3stdE9is_same_vISG_SD_EEPvE4typeE.exit ], [ %i.p, %._crit_edge.loopexit ]
  %.sroa.29.0.lcssa = phi ptr [ null, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2IiEET_NSt9enable_ifIXaaoosr3stdE15is_arithmetic_vISG_Esr3stdE9is_enum_vISG_Entsr3stdE9is_same_vISG_SD_EEPvE4typeE.exit ], [ %.sroa.29.3, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i64 [ 2147483647, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2IiEET_NSt9enable_ifIXaaoosr3stdE15is_arithmetic_vISG_Esr3stdE9is_enum_vISG_Entsr3stdE9is_same_vISG_SD_EEPvE4typeE.exit ], [ %i.o, %._crit_edge.loopexit ]
  store i64 %.0.lcssa, ptr %3, align 8, !tbaa !35
  %i.q = ptrtoint ptr %.sroa.0.0.lcssa to i64     ; 3 uses
  %i.r = sub i64 %.sroa.16.0.lcssa, %i.q          ; 2 uses
  %i.s = ashr exact i64 %i.r, 3                   ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36
  %.not.i.i = icmp eq i64 %i.s, %i.u
  %.pre312 = load ptr, ptr %4, align 8, !tbaa !39 ; 2 uses
  br i1 %.not.i.i, label %bb.cx, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %.pre312) #29
  %i.v = icmp sgt i64 %i.s, 0
  br i1 %i.v, label %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.i.i.i, label %.sink.split.i.i

_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.i.i.i: ; preds = %bb.a
  %i.w = call noalias ptr @malloc(i64 noundef %i.r) #31 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.b, label %.sink.split.i.i

bb.b:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.i.i.i
  %i.y = call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.y, align 8, !tbaa !22
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #32
          to label %.noexc67 unwind label %bb.dh

.noexc67:                                         ; preds = %bb.b
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.i.i.i, %bb.a
  %.sink.i.i = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.i.i.i ], [ null, %bb.a ] ; 2 uses
  store ptr %.sink.i.i, ptr %4, align 8, !tbaa !39
  br label %bb.cx

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.0277 = phi i32 [ 2147483647, %.lr.ph ], [ %.3, %bb.d ]
  %.050276 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %bb.d ] ; 2 uses
  %.sroa.29.0275 = phi ptr [ null, %.lr.ph ], [ %.sroa.29.3, %bb.d ]
  %.sroa.16.0274 = phi ptr [ null, %.lr.ph ], [ %.sroa.16.3, %bb.d ]
  %.sroa.0.0273 = phi ptr [ null, %.lr.ph ], [ %.sroa.0.3, %bb.d ]
  %i.z = load ptr, ptr %2, align 8, !tbaa !39
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.050276
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !35 ; 9 uses
  br label %bb.e

bb.d:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit108
  %i.ac = add nuw i64 %.050276, 1                 ; 2 uses
  %exitcond310.not = icmp eq i64 %i.ac, %i.d
  br i1 %exitcond310.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !80

bb.e:                                             ; preds = %bb.c, %_ZN4CGAL6HandleD2Ev.exit108
  %.1272 = phi i32 [ %.0277, %bb.c ], [ %.3, %_ZN4CGAL6HandleD2Ev.exit108 ] ; 8 uses
  %.051271 = phi i64 [ 0, %bb.c ], [ %i.km, %_ZN4CGAL6HandleD2Ev.exit108 ] ; 2 uses
  %.sroa.29.1270 = phi ptr [ %.sroa.29.0275, %bb.c ], [ %.sroa.29.3, %_ZN4CGAL6HandleD2Ev.exit108 ] ; 13 uses
  %.sroa.16.1269 = phi ptr [ %.sroa.16.0274, %bb.c ], [ %.sroa.16.3, %_ZN4CGAL6HandleD2Ev.exit108 ] ; 18 uses
  %.sroa.0.1268 = phi ptr [ %.sroa.0.0273, %bb.c ], [ %.sroa.0.3, %_ZN4CGAL6HandleD2Ev.exit108 ] ; 25 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !44
  %i.ae = load i64, ptr %i.k, align 8, !tbaa !46
  %i.af = mul nsw i64 %i.ae, %.051271
  %i.ag = getelementptr [4 x i8], ptr %i.ad, i64 %i.ab
  %i.ah = getelementptr [4 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.aj = sext i32 %i.ai to i64                   ; 4 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !74
  %i.al = getelementptr [16 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !32 ; 7 uses
  store ptr %i.am, ptr %10, align 8, !tbaa !32
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16 ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load atomic i32, ptr %i.ao monotonic, align 4
  %i.aq = add nsw i32 %i.ap, 1
  store atomic i32 %i.aq, ptr %i.ao monotonic, align 4
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit

bb.g:                                             ; preds = %bb.e
  %i.ar = atomicrmw add ptr %i.ao, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit: ; preds = %bb.f, %bb.g
  %i.as = icmp eq i32 %.1272, 2147483647
  br i1 %i.as, label %bb.r, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit
  %i.at = load ptr, ptr %9, align 8, !tbaa !32    ; 6 uses
  %i.au = icmp eq ptr %i.at, %i.am
  br i1 %i.au, label %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !16
  %15 = load double, ptr %i.av, align 16, !tbaa !16
  %i.ay = fneg double %15
  %i.az = fcmp olt double %i.ax, %i.ay
  br i1 %i.az, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %16 = load double, ptr %i.ba, align 16, !tbaa !16
  %17 = fneg double %16
  %18 = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %19 = load double, ptr %18, align 8, !tbaa !16
  %i.bb = fcmp ugt double %19, %17
  %i.bc = select i1 %i.bb, i16 256, i16 0
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i:   ; preds = %bb.j, %bb.i
  %.sroa.0.0.insert.insert.i.i = phi i16 [ 257, %bb.i ], [ %i.bc, %bb.j ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i16 %.sroa.0.0.insert.insert.i.i to i8
  %.sroa.2.0.extract.shift.i.i = lshr i16 %.sroa.0.0.insert.insert.i.i, 8
  %.sroa.2.0.extract.trunc.i.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i to i8
  %i.bd = icmp eq i8 %.sroa.0.0.extract.trunc.i.i, %.sroa.2.0.extract.trunc.i.i
  br i1 %i.bd, label %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr %i.at, ptr %8, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store ptr %8, ptr %7, align 8, !tbaa !54
  store ptr %7, ptr %i.m, align 8, !tbaa !54
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.n, align 8, !tbaa !54
  %i.bf = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %.loopexit ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.k
  %.not.i.i.i.i115 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i115, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bf) #32
          to label %bb.m unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  unreachable

.loopexit:                                        ; preds = %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  store ptr null, ptr %i.m, align 8, !tbaa !54
  store ptr null, ptr %i.n, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %.body

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bh = load atomic ptr, ptr %i.bg monotonic, align 8
  %i.bi = load ptr, ptr %10, align 8, !tbaa !32   ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store ptr %i.bi, ptr %6, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %6, ptr %5, align 8, !tbaa !54
  store ptr %5, ptr %i.m, align 8, !tbaa !54
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.n, align 8, !tbaa !54
  %i.bk = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bj, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i unwind label %.loopexit164 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i:        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i
  %.not.i.i.i11.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i11.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i, label %bb.o

bb.o:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bk) #32
          to label %bb.p unwind label %.loopexit.split-lp165

bb.p:                                             ; preds = %bb.o
  unreachable

.loopexit164:                                     ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i
  %lpad.loopexit166 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp165:                            ; preds = %bb.o
  %lpad.loopexit.split-lp167 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp165, %.loopexit164
  %lpad.phi168 = phi { ptr, i32 } [ %lpad.loopexit166, %.loopexit164 ], [ %lpad.loopexit.split-lp167, %.loopexit.split-lp165 ]
  store ptr null, ptr %i.m, align 8, !tbaa !54
  store ptr null, ptr %i.n, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.body

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i
  store ptr null, ptr %i.m, align 8, !tbaa !54
  store ptr null, ptr %i.n, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bm = load atomic ptr, ptr %i.bl monotonic, align 8
  %i.bn = invoke noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.bh, ptr noundef nonnull align 16 dereferenceable(64) %i.bm)
          to label %.noexc116 unwind label %.loopexit169

.noexc116:                                        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %.noexc116._crit_edge, label %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit.thread

.noexc116._crit_edge:                             ; preds = %.noexc116
  %.pre = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.pre311 = load ptr, ptr %10, align 8, !tbaa !32
  br label %bb.r

_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit: ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i
  %i.bp = trunc i16 %.sroa.0.0.insert.insert.i.i to i1
  br i1 %i.bp, label %bb.r, label %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit.thread

bb.r:                                             ; preds = %.noexc116._crit_edge, %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit
  %i.bq = phi ptr [ %.pre311, %.noexc116._crit_edge ], [ %i.am, %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit ], [ %i.am, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit ]
  %i.br = phi i8 [ %.pre, %.noexc116._crit_edge ], [ %i.an, %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit ], [ %i.an, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit ]
  %.not.i.i.i.i69 = icmp eq i8 %i.br, 0
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i69, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i:             ; preds = %bb.r
  %i.bt = atomicrmw add ptr %i.bs, i32 1 monotonic, align 4 ; 0 uses
  %i.bu = load ptr, ptr %9, align 8, !tbaa !32    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit, label %bb.u

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i:      ; preds = %bb.r
  %i.bv = load atomic i32, ptr %i.bs monotonic, align 4
  %i.bw = add nsw i32 %i.bv, 1
  store atomic i32 %i.bw, ptr %i.bs monotonic, align 4
  %i.bx = load ptr, ptr %9, align 8, !tbaa !32    ; 4 uses
  %.not4.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not4.i.i.i, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.bz = load atomic i32, ptr %i.by monotonic, align 4 ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 1
  br i1 %i.ca, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread.i.i.i
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !22
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(12) %i.bx) #29, !inline_history !55
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit

bb.t:                                             ; preds = %.thread.i.i.i
  %i.ce = add nsw i32 %i.bz, -1
  store atomic i32 %i.ce, ptr %i.by monotonic, align 4
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit

bb.u:                                             ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.cg = load atomic i32, ptr %i.cf monotonic, align 4
  %i.ch = icmp eq i32 %i.cg, 1
  br i1 %i.ch, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = atomicrmw sub ptr %i.cf, i32 1 release, align 4
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.w, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit

bb.w:                                             ; preds = %bb.v, %bb.u
  fence acquire
  %i.ck = load ptr, ptr %9, align 8, !tbaa !32    ; 3 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !22
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(12) %i.ck) #29, !inline_history !55
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit: ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i, %bb.s, %bb.t, %bb.v, %bb.w, %bb.x
  %i.cp = load ptr, ptr %10, align 8, !tbaa !32
  store ptr %i.cp, ptr %9, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !35
  %i.cq = ptrtoint ptr %.sroa.29.1270 to i64
  %i.cr = ptrtoint ptr %.sroa.0.1268 to i64       ; 2 uses
  %i.cs = sub i64 %i.cq, %i.cr                    ; 2 uses
  %i.ct = icmp ult i64 %i.cs, 8
  br i1 %i.ct, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit
  %i.cu = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %.noexc120 unwind label %bb.ad ; 3 uses

.noexc120:                                        ; preds = %bb.y
  store i64 %i.ab, ptr %i.cu, align 8, !tbaa !35
  %.not.i.i119 = icmp eq ptr %.sroa.0.1268, null
  br i1 %.not.i.i119, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, label %bb.z

end_hunk_2
begin_hunk_3_@_ZN5boost14multiprecision8backends18multiply_karatsubaILm0ELm0ELNS0_18cpp_int_check_typeE0ESaIyEEEvRNS1_15cpp_int_backendIXT_EXT0_ELNS0_16cpp_integer_typeE1EXT1_ET2_EERKS8_SB_RNS8_21scoped_shared_storageE:bb.a
  %or.cond.i41 = select i1 %i.lk, i1 true, i1 %i.lm
  br i1 %or.cond.i41, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit42, label %bb.al

bb.al:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit44
  %i.ln = load ptr, ptr %i.av, align 8
  %i.lo = load i64, ptr %6, align 16
  %i.lp = shl i64 %i.lo, 3
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lp) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit42

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit42: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit44, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.lq = load i8, ptr %i.al, align 1, !tbaa !68, !range !65, !noundef !66
  %i.lr = trunc nuw i8 %i.lq to i1
  %i.ls = load i8, ptr %i.am, align 2, !range !65
  %i.lt = trunc nuw i8 %i.ls to i1
  %or.cond.i39 = select i1 %i.lr, i1 true, i1 %i.lt
  br i1 %or.cond.i39, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit40, label %bb.am

bb.am:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit42
  %i.lu = load ptr, ptr %i.ai, align 8
  %i.lv = load i64, ptr %5, align 16
  %i.lw = shl i64 %i.lv, 3
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.lw) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit40

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit40: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit42, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.lx = load i8, ptr %i.u, align 1, !tbaa !68, !range !65, !noundef !66
  %i.ly = trunc nuw i8 %i.lx to i1
  %i.lz = load i8, ptr %i.v, align 2, !range !65
  %i.ma = trunc nuw i8 %i.lz to i1
  %or.cond.i = select i1 %i.ly, i1 true, i1 %i.ma
  br i1 %or.cond.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit40
  %i.mb = load ptr, ptr %i.r, align 8
  %i.mc = load i64, ptr %4, align 16
  %i.md = shl i64 %i.mc, 3
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.md) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit40, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev(ptr noundef nonnull align 16 dead_on_return(44) dereferenceable(44) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %0, align 16, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16 ; 10 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.d = load i8, ptr %i.c, align 1, !tbaa !68, !range !65, !noundef !66
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.g = load i8, ptr %i.f, align 2, !range !65
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond.i1.i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %or.cond.i1.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load i64, ptr %i.i, align 16
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.m) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i: ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  %i.o = load i8, ptr %i.n, align 1, !tbaa !68, !range !65, !noundef !66
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.r = load i8, ptr %i.q, align 2, !range !65
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i.i = select i1 %i.p, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i64, ptr %i.b, align 16
  %i.w = shl i64 %i.v, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.w) #33
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #33
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEiED0Ev(ptr noundef nonnull align 16 dereferenceable(48) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %0, align 16, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16 ; 10 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.d = load i8, ptr %i.c, align 1, !tbaa !68, !range !65, !noundef !66
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.g = load i8, ptr %i.f, align 2, !range !65
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond.i1.i.i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %or.cond.i1.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load i64, ptr %i.i, align 16
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.m) #33, !inline_history !162
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i: ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  %i.o = load i8, ptr %i.n, align 1, !tbaa !68, !range !65, !noundef !66
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.r = load i8, ptr %i.q, align 2, !range !65
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i.i.i = select i1 %i.p, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i64, ptr %i.b, align 16
  %i.w = shl i64 %i.v, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.w) #33, !inline_history !162
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i: ; preds = %bb.d, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #33, !inline_history !162
  br label %_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit

_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit: ; preds = %bb.a, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEiE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.d = load i32, ptr %i.c, align 4, !tbaa !41
  %i.e = sext i32 %i.d to i64
  store i64 %i.e, ptr %i.a, align 8, !tbaa !69
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2IxEERKT_PKNSt9enable_ifIXaasr3std16is_constructibleIS7_SA_EE5valuentsr3std17is_floating_pointISA_EE5valueEvE4typeE(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef null)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.b, ptr %i.f release, align 16
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #33
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED0Ev(ptr noundef nonnull align 16 dereferenceable(44) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #34
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.164, align 8            ; 5 uses
  %3 = alloca %class.anon, align 8                ; 4 uses
  %4 = alloca %class.anon.164, align 8            ; 5 uses
  %5 = alloca %class.anon, align 8                ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !32     ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !16
  %6 = load double, ptr %i.d, align 16, !tbaa !16
  %i.g = fneg double %6
  %i.h = fcmp olt double %i.f, %i.g
  br i1 %i.h, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %7 = load double, ptr %i.i, align 16, !tbaa !16
  %8 = fneg double %7
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %10 = load double, ptr %9, align 8, !tbaa !16
  %i.j = fcmp ugt double %10, %8
  %i.k = select i1 %i.j, i16 256, i16 0
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit:     ; preds = %bb.b, %bb.c
  %.sroa.0.0.insert.insert.i = phi i16 [ 257, %bb.b ], [ %i.k, %bb.c ] ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i16 %.sroa.0.0.insert.insert.i to i8
  %.sroa.2.0.extract.shift.i = lshr i16 %.sroa.0.0.insert.insert.i, 8
  %.sroa.2.0.extract.trunc.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i to i8
  %i.l = icmp eq i8 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit
  %i.m = trunc i16 %.sroa.0.0.insert.insert.i to i1
  br label %bb.l

bb.e:                                             ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %i.a, ptr %5, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %5, ptr %4, align 8, !tbaa !54
  %i.o = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %4, ptr %i.o, align 8, !tbaa !54
  %i.p = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.p, align 8, !tbaa !54
  %i.q = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.h ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.q) #32
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.x, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.o, align 8, !tbaa !54
  store ptr null, ptr %i.p, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  store ptr null, ptr %i.o, align 8, !tbaa !54
  store ptr null, ptr %i.p, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.t = load atomic ptr, ptr %i.s monotonic, align 8
  %i.u = load ptr, ptr %1, align 8, !tbaa !32     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %i.u, ptr %3, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %3, ptr %2, align 8, !tbaa !54
  store ptr %2, ptr %i.o, align 8, !tbaa !54
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.p, align 8, !tbaa !54
  %i.w = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10 unwind label %bb.k ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10:          ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %.not.i.i.i11 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i11, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12, label %bb.i

bb.i:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.w) #32
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.o, align 8, !tbaa !54
  store ptr null, ptr %i.p, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10
  store ptr null, ptr %i.o, align 8, !tbaa !54
  store ptr null, ptr %i.p, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.z = load atomic ptr, ptr %i.y monotonic, align 8
  %i.aa = call noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.t, ptr noundef nonnull align 16 dereferenceable(64) %i.z)
  %i.ab = icmp slt i32 %i.aa, 0
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.m, %bb.d ], [ %i.ab, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 32 uses
  %3 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 15 uses
  %4 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !tbaa !67  ; 6 uses
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.e = load i8, ptr %i.d, align 1, !tbaa !68, !range !65, !noundef !66
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %i.f, ptr %0, ptr %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !69
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !62, !range !65, !noundef !66
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.n, i32 -1, i32 1
  br label %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit

_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i
  %i.p = phi i32 [ %i.o, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i ], [ 0, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.r = load i64, ptr %i.q, align 16, !tbaa !67
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i52, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i51

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i52: ; preds = %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.u = load i8, ptr %i.t, align 1, !tbaa !68, !range !65, !noundef !66
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %i.v, ptr %1, ptr %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !69
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit53, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i51

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i51: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i52, %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !62, !range !65, !noundef !66
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = select i1 %i.ad, i32 -1, i32 1
  br label %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit53

_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit53: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i52, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i51
  %i.af = phi i32 [ %i.ae, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i51 ], [ 0, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i52 ] ; 2 uses
  %.not = icmp eq i32 %i.p, %i.af
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit53
  %i.ag = icmp slt i32 %i.p, %i.af
  %i.ah = select i1 %i.ag, i32 -1, i32 1
  br label %bb.at

bb.c:                                             ; preds = %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit53
  %i.ai = icmp eq i32 %i.p, 0
  br i1 %i.ai, label %bb.at, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = icmp slt i32 %i.p, 0                    ; 3 uses
  br i1 %i.aj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %0)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = tail call noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %i.al)
  %i.an = add i64 %i.am, %i.ak
  %i.ao = tail call noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %1)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = tail call noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %i.ap)
  %i.ar = add i64 %i.aq, %i.ao
  br label %bb.ab

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store i64 0, ptr %2, align 16, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.au = load i8, ptr %i.at, align 2, !tbaa !129, !range !65, !noundef !66
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %i.b, ptr %i.as, align 16, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_3
