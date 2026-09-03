Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/order_facets_around_edges?download=true
inline.NumInlined: 1521
inline.NumDeleted: 792
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.Eigen::symbolic::SymbolExpr" = type { i8 }
%"class.Eigen::symbolic::AddExpr" = type { [2 x i8] }
%"struct.Eigen::internal::all_t" = type { i8 }
%"class.CORE::extLong" = type <{ i64, i32, [4 x i8] }>
%"struct.boost::math::detail::min_shift_initializer<double>::init" = type { i8 }
%"class.Eigen::Matrix.43" = type { %"class.Eigen::PlainObjectBase.44" }
%"class.Eigen::PlainObjectBase.44" = type { %"class.Eigen::DenseStorage.51" }
%"class.Eigen::DenseStorage.51" = type { ptr, i64 }
%"class.Eigen::Matrix.64" = type { %"class.Eigen::PlainObjectBase.65" }
%"class.Eigen::PlainObjectBase.65" = type { %"class.Eigen::DenseStorage.66" }
%"class.Eigen::DenseStorage.66" = type { ptr, i64, i64 }
%"class.Eigen::Matrix.74" = type { %"class.Eigen::PlainObjectBase.75" }
%"class.Eigen::PlainObjectBase.75" = type { %"class.Eigen::DenseStorage.82" }
%"class.Eigen::DenseStorage.82" = type { ptr, i64 }
%"class.std::vector.17" = type { %"struct.std::_Vector_base.18" }
%"struct.std::_Vector_base.18" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN3igl8copyleft4cgal25order_facets_around_edgesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_S6_iibEENSt9enable_ifIXntsr3std7is_sameINT_6ScalarEN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSD_8backends16rational_adaptorINSF_15cpp_int_backendILm0ELm0ELNSD_16cpp_integer_typeE1ELNSD_18cpp_int_check_typeE0ESaIyEEEEELNSD_26expression_template_optionE1EEEEEEE5valueEvE4typeERKNS3_10MatrixBaseIS8_EERKNSS_IT0_EERKNSS_IT1_EERKNSS_IT2_EERKSt6vectorIS18_IT3_SaIS19_EESaIS1B_EERS18_IS18_IT4_SaIS1G_EESaIS1I_EERS18_IS18_IT5_SaIS1M_EESaIS1O_EE = comdat any

$_ZN3igl8copyleft4cgal25order_facets_around_edgesIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi2ELi0ELin1ELi2EEEllbEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKSt6vectorIS11_IT2_SaIS12_EESaIS14_EERS11_IS11_IT3_SaIS19_EESaIS1B_EERS11_IS11_IT4_SaIS1F_EESaIS1H_EE = comdat any

$_ZN3igl8copyleft4cgal25order_facets_around_edgesIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi2ELi0ELin1ELi2EEEllbEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKSt6vectorIS11_IT2_SaIS12_EESaIS14_EERS11_IS11_IT3_SaIS19_EESaIS1B_EERS11_IS11_IT4_SaIS1F_EESaIS1H_EE = comdat any

$_ZN3igl8copyleft4cgal25order_facets_around_edgesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES6_iibEEvRKNS3_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKSt6vectorISK_IT2_SaISL_EESaISN_EERSK_ISK_IT3_SaISS_EESaISU_EERSK_ISK_IT4_SaISY_EESaIS10_EE = comdat any

$_ZN3igl8copyleft4cgal25order_facets_around_edgesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi2ELi0ELin1ELi2EEEllbEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKSt6vectorISL_IT2_SaISM_EESaISO_EERSL_ISL_IT3_SaIST_EESaISV_EERSL_ISL_IT4_SaISZ_EESaIS11_EE = comdat any

$_ZN3igl8copyleft4cgal25order_facets_around_edgesIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi2ELi0ELin1ELi2EEEllbEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKSt6vectorISL_IT2_SaISM_EESaISO_EERSL_ISL_IT3_SaIST_EESaISV_EERSL_ISL_IT4_SaISZ_EESaIS11_EE = comdat any

$_ZN5boost4math6detail21min_shift_initializerIdE11initializerE = comdat any

$_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIS_IbSaIbEESaIS1_EE17_M_default_appendEm = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll = comdat any

$_ZNSt6vectorIiSaIiEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb = comdat any

$_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIlSaIlEE17_M_default_appendEm = comdat any

$_ZZN5boost4math6detail19get_min_shift_valueIdEET_vE3val = comdat any

$_ZGVZN5boost4math6detail19get_min_shift_valueIdEET_vE3val = comdat any

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
@_ZN5boost4math6detail21min_shift_initializerIdE11initializerE = linkonce_odr dso_local global %"struct.boost::math::detail::min_shift_initializer<double>::init" zeroinitializer, comdat, align 1
@_ZGVN5boost4math6detail21min_shift_initializerIdE11initializerE = linkonce_odr dso_local local_unnamed_addr global i64 0, comdat($_ZN5boost4math6detail21min_shift_initializerIdE11initializerE), align 8
@_ZZN5boost4math6detail19get_min_shift_valueIdEET_vE3val = linkonce_odr dso_local global double 0.000000e+00, comdat, align 8
@_ZGVZN5boost4math6detail19get_min_shift_valueIdEET_vE3val = linkonce_odr dso_local global i64 0, comdat, align 8
@.str.124 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@.str.125 = private unnamed_addr constant [29 x i8] c"vector<bool>::_M_fill_insert\00", align 1
@.str.126 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.23, ptr @_ZN5boost4math6detail21min_shift_initializerIdE11initializerE }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_order_facets_around_edges.cpp, ptr null }]
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
define weak_odr dso_local void @_ZN3igl8copyleft4cgal25order_facets_around_edgesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_S6_iibEENSt9enable_ifIXntsr3std7is_sameINT_6ScalarEN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSD_8backends16rational_adaptorINSF_15cpp_int_backendILm0ELm0ELNSD_16cpp_integer_typeE1ELNSD_18cpp_int_check_typeE0ESaIyEEEEELNSD_26expression_template_optionE1EEEEEEE5valueEvE4typeERKNS3_10MatrixBaseIS8_EERKNSS_IT0_EERKNSS_IT1_EERKNSS_IT2_EERKSt6vectorIS18_IT3_SaIS19_EESaIS1B_EERS18_IS18_IT4_SaIS1G_EESaIS1I_EERS18_IS18_IT5_SaIS1M_EESaIS1O_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Matrix.43", align 8  ; 8 uses
  %8 = alloca %"class.Eigen::Matrix.64", align 8  ; 12 uses
  %9 = alloca %"class.Eigen::Matrix.74", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 3 uses
  %i.g = load ptr, ptr %5, align 8, !tbaa !20     ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 3 uses
  %i.l = icmp ugt i64 %i.d, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = sub nuw i64 %i.d, %i.k
  tail call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.m)
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.n = icmp ult i64 %i.d, %i.k
  br i1 %i.n, label %bb.d, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.d ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, %i.o
  br i1 %.not.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i ], [ %i.o, %bb.d ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #20
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.f
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i
  store ptr %i.o, ptr %i.e, align 8, !tbaa !19
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit:    ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27   ; 3 uses
  %i.y = load ptr, ptr %6, align 8, !tbaa !28     ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 40                ; 3 uses
  %i.ad = icmp ugt i64 %i.d, %i.ac
  br i1 %i.ad, label %_ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEm.exit.thread, label %bb.f

_ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEm.exit.thread: ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit
  %i.ae = sub nuw i64 %i.d, %i.ac
  tail call void @_ZNSt6vectorIS_IbSaIbEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.ae)
  br label %.lr.ph371

bb.f:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit
  %i.af = icmp ult i64 %i.d, %i.ac
  br i1 %i.af, label %bb.g, label %_ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.y, i64 %i.d ; 3 uses
  %.not.i.i135 = icmp eq ptr %i.x, %i.ag
  br i1 %.not.i.i135, label %_ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i136

.lr.ph.i.i.i.i136:                                ; preds = %bb.g, %_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i137 = phi ptr [ %i.aq, %_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i.i ], [ %i.ag, %bb.g ] ; 3 uses
  %i.ah = load ptr, ptr %.05.i.i.i.i137, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i136
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i137, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ao
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.am) #20
  br label %_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i136
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i137, i64 40 ; 2 uses
  %.not.i.i.i.i138 = icmp eq ptr %i.aq, %i.x
  br i1 %.not.i.i.i.i138, label %_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i136, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i.i
  store ptr %i.ag, ptr %i.w, align 8, !tbaa !27
  br label %_ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEm.exit:    ; preds = %bb.f, %bb.g, %_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E.exit.i.i
  %.not373 = icmp eq i64 %i.d, 0
  br i1 %.not373, label %._crit_edge372, label %.lr.ph371

.lr.ph371:                                        ; preds = %_ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEm.exit.thread, %_ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.i

._crit_edge372:                                   ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %_ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEm.exit
  ret void

bb.i:                                             ; preds = %.lr.ph371, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %.0112370 = phi i64 [ 0, %.lr.ph371 ], [ %i.ms, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 4 uses
  %i.aw = load ptr, ptr %4, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %.0112370 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !35 ; 2 uses
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !22 ; 3 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 3 uses
  %i.be = ashr exact i64 %i.bd, 2                 ; 22 uses
  %i.bf = load i32, ptr %i.ba, align 4, !tbaa !36
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = urem i64 %i.bg, %i.b                    ; 2 uses
  %i.bi = load ptr, ptr %2, align 8, !tbaa !83, !noalias !84
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bh ; 3 uses
  %i.bk = load i64, ptr %i.ar, align 8, !tbaa !85 ; 2 uses
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !39 ; 3 uses
  %.sroa.0326.0.vec.insert = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bk
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !39 ; 3 uses
  %.sroa.0326.8.vec.insert = insertelement <2 x double> %.sroa.0326.0.vec.insert, double %i.bn, i64 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.bk, 4
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !39 ; 4 uses
  %i.bq = udiv i64 %i.bg, %i.b                    ; 3 uses
  %i.br = add i64 %i.bq, 1
  %i.bs = urem i64 %i.br, 3
  %i.bt = add i64 %i.bq, 2
  %i.bu = urem i64 %i.bt, 3
  %i.bv = load ptr, ptr %1, align 8, !tbaa !40
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !16  ; 3 uses
  %i.bx = mul nsw i64 %i.bw, %i.bq
  %i.by = getelementptr [4 x i8], ptr %i.bv, i64 %i.bh ; 3 uses
  %i.bz = getelementptr [4 x i8], ptr %i.by, i64 %i.bx
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !36
  %i.cb = mul nsw i64 %i.bw, %i.bs
  %i.cc = getelementptr [4 x i8], ptr %i.by, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !36
  %i.ce = mul nsw i64 %i.bw, %i.bu
  %i.cf = getelementptr [4 x i8], ptr %i.by, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !36 ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = load ptr, ptr %0, align 8, !tbaa !83, !noalias !86 ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.ch ; 3 uses
  %i.ck = sext i32 %i.cd to i64                   ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.ck ; 3 uses
  %i.cm = load i64, ptr %i.as, align 8, !tbaa !85 ; 3 uses
  %i.cn = load double, ptr %i.cj, align 8, !tbaa !39
  %i.co = load double, ptr %i.cl, align 8, !tbaa !39
  %i.cp = fsub double %i.cn, %i.co
  %.sroa.0298.0.vec.insert = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.cm
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !39
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cm
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !39
  %i.cu = fsub double %i.cr, %i.ct
  %.sroa.0298.8.vec.insert = insertelement <2 x double> %.sroa.0298.0.vec.insert, double %i.cu, i64 1 ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i139 = shl nsw i64 %i.cm, 4 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cj, i64 %.idx.i.i.i.i.i.i.i.i.i.i139
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !39
  %i.cx = getelementptr inbounds i8, ptr %i.cl, i64 %.idx.i.i.i.i.i.i.i.i.i.i139
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !39
  %i.cz = fsub double %i.cw, %i.cy                ; 4 uses
  %i.da = fmul <2 x double> %.sroa.0298.8.vec.insert, %.sroa.0298.8.vec.insert ; 2 uses
  %shift = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.da, %shift
  %i.db = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dc = fmul double %i.cz, %i.cz
  %i.dd = fadd double %i.dc, %i.db                ; 2 uses
  %.scalar.i = call double @llvm.sqrt.f64(double %i.dd) ; 3 uses
  %i.de = fcmp olt double %.scalar.i, f0x3D719799812DEA11
  br i1 %i.de, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.df = icmp ult i64 %i.be, 3
  br i1 %i.df, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit147, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.be, i64 noundef 3)
          to label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader376 unwind label %bb.l

_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader376: ; preds = %bb.k
  %i.dg = load ptr, ptr %i.ax, align 8, !tbaa !22 ; 3 uses
  %i.dh = load ptr, ptr %2, align 8, !tbaa !83, !noalias !87 ; 3 uses
  %i.di = load ptr, ptr %7, align 8, !tbaa !42, !noalias !88 ; 3 uses
  %i.dj = load i64, ptr %i.ar, align 8, !tbaa !85 ; 4 uses
  %i.dk = load i64, ptr %i.at, align 8, !tbaa !43 ; 6 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.dk, 4 ; 5 uses
  %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.dj, 4 ; 3 uses
  %unroll_iter = and i64 %i.be, -2
  br label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit

common.resume:                                    ; preds = %.body, %bb.t, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.dl, %bb.l ], [ %i.ht, %bb.t ], [ %.pn129.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.k
  %i.dl = landingpad { ptr, i32 }
          cleanup
  %i.dm = load ptr, ptr %7, align 8, !tbaa !42
  call void @free(ptr noundef %i.dm) #21
  br label %common.resume

.lr.ph363.unr-lcssa:                              ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit
  %10 = and i64 %i.bd, 4
  %lcmp.mod.not = icmp eq i64 %10, 0
  br i1 %lcmp.mod.not, label %.lr.ph363, label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader

_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader: ; preds = %.lr.ph363.unr-lcssa
  %lcmp.mod470 = trunc i64 %i.be to i1
  call void @llvm.assume(i1 %lcmp.mod470)
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %38
  %12 = load i32, ptr %11, align 4, !tbaa !36
  %13 = sext i32 %12 to i64
  %14 = urem i64 %13, %i.b
  %15 = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %14 ; 3 uses
  %16 = getelementptr inbounds [8 x i8], ptr %i.di, i64 %38 ; 3 uses
  %17 = load double, ptr %15, align 8, !tbaa !39
  store double %17, ptr %16, align 8, !tbaa !39
  %18 = getelementptr inbounds [8 x i8], ptr %16, i64 %i.dk
  %19 = getelementptr inbounds [8 x i8], ptr %15, i64 %i.dj
  %20 = load double, ptr %19, align 8, !tbaa !39
  store double %20, ptr %18, align 8, !tbaa !39
  %21 = getelementptr inbounds i8, ptr %16, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %22 = getelementptr inbounds i8, ptr %15, i64 %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i
  %23 = load double, ptr %22, align 8, !tbaa !39
  store double %23, ptr %21, align 8, !tbaa !39
  br label %.lr.ph363

.lr.ph363:                                        ; preds = %.lr.ph363.unr-lcssa, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader
  %i.dn = load ptr, ptr %7, align 8, !tbaa !42, !noalias !89 ; 3 uses
  br label %bb.m

_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit: ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader376
  %.0110361 = phi i64 [ 0, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader376 ], [ %38, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 4 uses
  %.0110361.a = phi i64 [ 0, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader376 ], [ %i.eb, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ]
  %24 = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.0110361
  %25 = load i32, ptr %24, align 4, !tbaa !36
  %26 = sext i32 %25 to i64
  %27 = urem i64 %26, %i.b
  %28 = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %27 ; 3 uses
  %29 = getelementptr inbounds [8 x i8], ptr %i.di, i64 %.0110361 ; 3 uses
  %30 = load double, ptr %28, align 8, !tbaa !39
  store double %30, ptr %29, align 8, !tbaa !39
  %31 = getelementptr inbounds [8 x i8], ptr %29, i64 %i.dk
  %32 = getelementptr inbounds [8 x i8], ptr %28, i64 %i.dj
  %33 = load double, ptr %32, align 8, !tbaa !39
  store double %33, ptr %31, align 8, !tbaa !39
  %34 = getelementptr inbounds i8, ptr %29, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %35 = getelementptr inbounds i8, ptr %28, i64 %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i
  %36 = load double, ptr %35, align 8, !tbaa !39
  store double %36, ptr %34, align 8, !tbaa !39
  %37 = or disjoint i64 %.0110361, 1              ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %37
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !36
  %i.dq = sext i32 %i.dp to i64
  %i.dr = urem i64 %i.dq, %i.b
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dr ; 3 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.di, i64 %37 ; 3 uses
  %i.du = load double, ptr %i.ds, align 8, !tbaa !39
  store double %i.du, ptr %i.dt, align 8, !tbaa !39
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.dk
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dj
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !39
  store double %i.dx, ptr %i.dv, align 8, !tbaa !39
  %i.dy = getelementptr inbounds i8, ptr %i.dt, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dz = getelementptr inbounds i8, ptr %i.ds, i64 %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !39
  store double %i.ea, ptr %i.dy, align 8, !tbaa !39
  %38 = add nuw i64 %.0110361, 2                  ; 3 uses
  %i.eb = add nuw i64 %.0110361.a, 2              ; 2 uses
  %exitcond.not = icmp eq i64 %i.eb, %unroll_iter
  br i1 %exitcond.not, label %.lr.ph363.unr-lcssa, label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, !llvm.loop !73

.critedge:                                        ; preds = %bb.m
  %exitcond388.not = icmp eq i64 %i.ec, %i.be
  br i1 %exitcond388.not, label %.loopexit, label %bb.m, !llvm.loop !74

bb.m:                                             ; preds = %.lr.ph363, %.critedge
  %.092362 = phi i64 [ 0, %.lr.ph363 ], [ %i.ec, %.critedge ] ; 2 uses
  %i.ec = add nuw i64 %.092362, 1                 ; 4 uses
  %i.ed = icmp eq i64 %i.ec, %i.be
  %i.ee = select i1 %i.ed, i64 0, i64 %i.ec
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %.092362 ; 3 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !39 ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.dk
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !39 ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.ef, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !39 ; 2 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.ee ; 3 uses
  %i.em = load double, ptr %i.el, align 8, !tbaa !39 ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.dk
  %i.eo = load double, ptr %i.en, align 8, !tbaa !39 ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.el, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !39 ; 2 uses
  %i.er = insertelement <2 x double> poison, double %i.eo, i64 0
  %i.es = insertelement <2 x double> %i.er, double %i.eq, i64 1
  %i.et = fneg <2 x double> %i.es
  %i.eu = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.ev = insertelement <2 x double> %i.eu, double %i.eg, i64 1
  %i.ew = fmul <2 x double> %i.ev, %i.et
  %i.ex = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.ey = insertelement <2 x double> %i.ex, double %i.ek, i64 1
  %i.ez = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.fa = insertelement <2 x double> %i.ez, double %i.em, i64 1
  %i.fb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.fa, <2 x double> %i.ew) ; 5 uses
  %i.fc = fneg double %i.em
  %i.fd = fmul double %i.ei, %i.fc
  %i.fe = call double @llvm.fmuladd.f64(double %i.eg, double %i.eo, double %i.fd) ; 5 uses
  %i.ff = fmul <2 x double> %i.fb, %i.fb          ; 2 uses
  %shift452 = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop453 = fadd <2 x double> %i.ff, %shift452
  %i.fg = extractelement <2 x double> %foldExtExtBinop453, i64 0
  %i.fh = fmul double %i.fe, %i.fe
  %i.fi = fadd double %i.fh, %i.fg                ; 2 uses
  %.scalar.i142 = call double @llvm.sqrt.f64(double %i.fi) ; 3 uses
  %i.fj = fcmp ult double %.scalar.i142, f0x3D719799812DEA11
  br i1 %i.fj, label %.critedge, label %bb.n, !llvm.loop !74

bb.n:                                             ; preds = %bb.m
  %i.fk = fcmp ogt double %i.fi, 0.000000e+00
  br i1 %i.fk, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.fl = insertelement <2 x double> poison, double %.scalar.i142, i64 0
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fn = fdiv <2 x double> %i.fb, %i.fm
  %i.fo = fdiv double %i.fe, %.scalar.i142
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %bb.n, %bb.o
  %.sroa.0298.2 = phi <2 x double> [ %i.fb, %bb.n ], [ %i.fn, %bb.o ], [ %i.fb, %.critedge ] ; 5 uses
  %.sroa.20312.2 = phi double [ %i.fe, %bb.n ], [ %i.fo, %bb.o ], [ %i.fe, %.critedge ] ; 4 uses
  %i.fp = sext i32 %i.ca to i64
  %i.fq = load ptr, ptr %0, align 8, !tbaa !83, !noalias !90 ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.fp ; 3 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.ck ; 3 uses
  %i.ft = load i64, ptr %i.as, align 8, !tbaa !85 ; 3 uses
  %i.fu = load double, ptr %i.fr, align 8, !tbaa !39
  %i.fv = load double, ptr %i.fs, align 8, !tbaa !39
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.ft
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !39
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.ft
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !39
  %.idx.i.i.i.i.i.i.i.i.i.i144 = shl nsw i64 %i.ft, 4 ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %i.fr, i64 %.idx.i.i.i.i.i.i.i.i.i.i144
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !39 ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %i.fs, i64 %.idx.i.i.i.i.i.i.i.i.i.i144
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !39 ; 2 uses
  %.sroa.0298.8.vec.extract = extractelement <2 x double> %.sroa.0298.2, i64 1
  %.sroa.0298.0.vec.extract = extractelement <2 x double> %.sroa.0298.2, i64 0
  %i.ge = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.fu, i64 1
  %i.gg = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gh = insertelement <2 x double> %i.gg, double %i.fv, i64 1
  %i.gi = fsub <2 x double> %i.gf, %i.gh          ; 2 uses
  %i.gj = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.gk = insertelement <2 x double> %i.gj, double %i.gb, i64 1
  %i.gl = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.gm = insertelement <2 x double> %i.gl, double %i.gd, i64 1
  %i.gn = fsub <2 x double> %i.gk, %i.gm          ; 2 uses
  %i.go = fneg <2 x double> %i.gn
  %i.gp = shufflevector <2 x double> %.sroa.0298.2, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gq = insertelement <2 x double> %i.gp, double %.sroa.20312.2, i64 0
  %i.gr = fmul <2 x double> %i.gq, %i.go
  %i.gs = insertelement <2 x double> %i.gp, double %.sroa.20312.2, i64 1
  %i.gt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> %i.gi, <2 x double> %i.gr)
  %i.gu = extractelement <2 x double> %i.gi, i64 1
  %i.gv = fneg double %i.gu
  %i.gw = fmul double %.sroa.0298.8.vec.extract, %i.gv
  %i.gx = extractelement <2 x double> %i.gn, i64 0
  %i.gy = call double @llvm.fmuladd.f64(double %.sroa.0298.0.vec.extract, double %i.gx, double %i.gw)
  %i.gz = fmul <2 x double> %.sroa.0326.8.vec.insert, %i.gt ; 2 uses
  %shift455 = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop456 = fadd <2 x double> %i.gz, %shift455
  %i.ha = extractelement <2 x double> %foldExtExtBinop456, i64 0
  %i.hb = fmul double %i.bp, %i.gy
  %i.hc = fadd double %i.hb, %i.ha
  %i.hd = fcmp olt double %i.hc, 0.000000e+00     ; 2 uses
  %i.he = fneg <2 x double> %.sroa.0298.2
  %i.hf = fneg double %.sroa.20312.2
  %.sroa.0298.3 = select i1 %i.hd, <2 x double> %i.he, <2 x double> %.sroa.0298.2
  %.sroa.20312.3 = select i1 %i.hd, double %i.hf, double %.sroa.20312.2
  call void @free(ptr noundef nonnull %i.dn) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit147

bb.p:                                             ; preds = %bb.i
  %i.hg = fcmp ogt double %i.dd, 0.000000e+00
  br i1 %i.hg, label %bb.q, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit147

bb.q:                                             ; preds = %bb.p
  %i.hh = insertelement <2 x double> poison, double %.scalar.i, i64 0
  %i.hi = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hj = fdiv <2 x double> %.sroa.0298.8.vec.insert, %i.hi
  %i.hk = fdiv double %i.cz, %.scalar.i
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit147

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit147: ; preds = %bb.q, %bb.p, %bb.j, %.loopexit
  %.sroa.0298.4 = phi <2 x double> [ zeroinitializer, %bb.j ], [ %.sroa.0298.3, %.loopexit ], [ %i.hj, %bb.q ], [ %.sroa.0298.8.vec.insert, %bb.p ]
  %.sroa.20312.4 = phi double [ 0.000000e+00, %bb.j ], [ %.sroa.20312.3, %.loopexit ], [ %i.hk, %bb.q ], [ %i.cz, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.hl = icmp eq ptr %i.az, %i.ba                ; 2 uses
  %i.hm = mul nsw i64 %i.be, 3
  br i1 %i.hl, label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.thread, label %bb.r

_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.thread:        ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit147
  store i64 %i.be, ptr %i.au, align 8, !tbaa !85
  store i64 3, ptr %i.av, align 8, !tbaa !91
  br label %._crit_edge

bb.r:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit147
  %i.hn = icmp sgt i64 %i.be, 0
  br i1 %i.hn, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ho = icmp samesign ugt i64 %i.hm, 2305843009213693951
  br i1 %i.ho, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.s
  %i.hp = mul i64 %i.be, 24
  %i.hq = call noalias ptr @malloc(i64 noundef %i.hp) #22 ; 2 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %.invoke, label %bb.u

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.s
  %i.hs = call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.hs, align 8, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %i.hs, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.cont unwind label %bb.t

.cont:                                            ; preds = %.invoke
  unreachable

bb.t:                                             ; preds = %.invoke
  %i.ht = landingpad { ptr, i32 }
          cleanup
  %i.hu = load ptr, ptr %8, align 8, !tbaa !83
  call void @free(ptr noundef %i.hu) #21
  br label %common.resume

bb.u:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.r
  %.sink.i = phi ptr [ %i.hq, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.r ]
  store ptr %.sink.i, ptr %8, align 8, !tbaa !83
  store i64 %i.be, ptr %i.au, align 8, !tbaa !85
  store i64 3, ptr %i.av, align 8, !tbaa !91
  %i.hv = add nsw i64 %i.be, 63                   ; 2 uses
  %i.hw = lshr i64 %i.hv, 3
  %i.hx = and i64 %i.hw, 2305843009213693944
  %i.hy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hx) #24
          to label %.lr.ph366 unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i ; 4 uses

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i:         ; preds = %bb.u
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph366:                                        ; preds = %bb.u
  %i.ia = lshr i64 %i.hv, 6                       ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.ia
  %.idx.i.i = shl nuw nsw i64 %i.ia, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hy, i8 0, i64 %.idx.i.i, i1 false)
  %i.ic = load ptr, ptr %i.ax, align 8, !tbaa !22
  %i.id = load ptr, ptr %1, align 8, !tbaa !40
  %i.ie = load i64, ptr %i.a, align 8, !tbaa !16
  %i.if = load ptr, ptr %2, align 8, !tbaa !83, !noalias !92
  %i.ig = load i64, ptr %i.ar, align 8, !tbaa !85 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i149 = shl nsw i64 %i.ig, 4
  %i.ih = load ptr, ptr %8, align 8, !tbaa !83
  %i.ii = load i64, ptr %i.au, align 8, !tbaa !85 ; 2 uses
  %.idx = shl i64 %i.ii, 4
  %i.ij = insertelement <2 x double> poison, double %i.bn, i64 0
end_hunk_0
