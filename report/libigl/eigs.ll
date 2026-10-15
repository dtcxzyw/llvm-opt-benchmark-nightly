Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/eigs?download=true
inline.NumInlined: 14241
inline.NumDeleted: 6065
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 188
loop-unroll.NumUnrolled: 193
begin_hunk_0_@_ZNSt7__cxx119to_stringEl:bb.a
  %i.r = icmp ugt i64 %i.a, 99
  br i1 %i.r, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit
  %i.s = add i32 %.022.i, -1
  br label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.lr.ph.i13, %.lr.ph.preheader.i
  %.020.i = phi i64 [ %i.v, %.lr.ph.i13 ], [ %i.a, %.lr.ph.preheader.i ] ; 3 uses
  %.01819.i = phi i32 [ %i.af, %.lr.ph.i13 ], [ %i.s, %.lr.ph.preheader.i ] ; 3 uses
  %i.t = urem i64 %.020.i, 100
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = udiv i64 %.020.i, 100                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.u ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !131
  %i.z = zext i32 %.01819.i to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.z
  store i8 %i.y, ptr %i.aa, align 1, !tbaa !131
  %i.ab = load i8, ptr %i.w, align 2, !tbaa !131
  %i.ac = add i32 %.01819.i, -1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ad
  store i8 %i.ab, ptr %i.ae, align 1, !tbaa !131
  %i.af = add i32 %.01819.i, -2
  %i.ag = icmp ugt i64 %.020.i, 9999
  br i1 %i.ag, label %.lr.ph.i13, label %._crit_edge.i, !llvm.loop !1110

._crit_edge.i:                                    ; preds = %.lr.ph.i13, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit
  %.0.lcssa.i = phi i64 [ %i.a, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit ], [ %i.v, %.lr.ph.i13 ] ; 3 uses
  %i.ah = icmp samesign ugt i64 %.0.lcssa.i, 9
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.ai = shl nuw nsw i64 %.0.lcssa.i, 1
  %i.aj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !131
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !131
  %i.an = load i8, ptr %i.aj, align 2, !tbaa !131
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.ao = trunc nuw nsw i64 %.0.lcssa.i to i8
  %i.ap = or disjoint i8 %i.ao, 48
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit

_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit: ; preds = %bb.h, %bb.i
  %storemerge.i = phi i8 [ %i.ap, %bb.i ], [ %i.an, %bb.h ]
  store i8 %storemerge.i, ptr %i.q, align 1, !tbaa !131
  ret void
}

declare void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #28

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7Spectra7ArnoldiIdNS_9ArnoldiOpIdNS_21SymGEigsShiftInvertOpIZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IdLin1ELi1ELi0ELin1ELi1EEENS6_8SparseLUINS6_12SparseMatrixIdLi0EiEENS6_14COLAMDOrderingIiEEEEEEbRKNSB_IT_Li0EiEESJ_iSG_RNS6_15PlainObjectBaseIT0_EERNSK_IT1_EEE11ShiftInvertZNS5_IdS8_S9_SF_EEbSJ_SJ_iSG_SN_SQ_E13SparseMatProdEESS_EEE12expand_basisERNS6_3MapIKS8_Li0ENS6_6StrideILi0ELi0EEEEElRS9_RdRl(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(26) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Eigen::Transpose.1307", align 8 ; 5 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %7 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %8 = alloca %"class.Eigen::internal::const_blas_data_mapper.842", align 8 ; 5 uses
  %9 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %10 = alloca %"class.Eigen::internal::const_blas_data_mapper.842", align 8 ; 5 uses
  %11 = alloca %"class.Eigen::Map.1099", align 8  ; 5 uses
  %12 = alloca %"class.Eigen::Map.694", align 8   ; 5 uses
  %13 = alloca %"class.Eigen::Ref.181", align 8   ; 3 uses
  %14 = alloca %"class.Eigen::Ref.181", align 8   ; 3 uses
  %15 = alloca %"class.Eigen::Ref.181", align 8   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !161  ; 10 uses
  %i.d = icmp sgt i64 %i.c, 0                     ; 2 uses
  br i1 %i.d, label %bb.b, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i64 %i.c, 2305843009213693951
  br i1 %i.e, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i: ; preds = %bb.b
  %i.f = shl nuw i64 %i.c, 3
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #35 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.invoke.i, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i, %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !123
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i, %bb.a
  %.sroa.0209.0 = phi ptr [ null, %bb.a ], [ %i.g, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i ] ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !139  ; 20 uses
  %.not.i.i.i.i53.not = icmp eq i64 %i.k, 0       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit59

bb.c:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit
  %i.m = icmp samesign ugt i64 %i.k, 2305843009213693951
  br i1 %i.m, label %.invoke.i57, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i56

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i56: ; preds = %bb.c
  %i.n = shl nuw i64 %i.k, 3
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #35 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.invoke.i57, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit59

.invoke.i57:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i56, %bb.c
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !123
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont.i58 unwind label %bb.d

.cont.i58:                                        ; preds = %.invoke.i57
  unreachable

bb.d:                                             ; preds = %.invoke.i57
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit59: ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i56
  %.sroa.0.0 = phi ptr [ null, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit ], [ %i.o, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i56 ] ; 34 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.nonneg.i = sub i64 0, %i.c
  %i.t = and i64 %.nonneg.i, -2
  %i.u = sub i64 0, %i.t
  %i.v = and i64 %i.c, 9223372036854775806        ; 2 uses
  %.not.i60 = icmp eq i64 %i.c, 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.5203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ac = icmp sgt i64 %i.k, 1                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ah = sdiv i64 %i.k, 4
  %i.ai = shl nsw i64 %i.ah, 2                    ; 4 uses
  %i.aj = sdiv i64 %i.k, 2
  %i.ak = shl nsw i64 %i.aj, 1                    ; 10 uses
  %.off.i.i.i.i = add nsw i64 %i.k, 1
  %.not.i.i.i.i83 = icmp ult i64 %.off.i.i.i.i, 3 ; 2 uses
  %i.al = icmp sgt i64 %i.k, 3                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16 ; 2 uses
  %i.an = icmp samesign ugt i64 %i.k, 7           ; 2 uses
  %i.ao = icmp sgt i64 %i.ak, %i.ai               ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %i.ai ; 2 uses
  %i.aq = icmp slt i64 %i.ak, %i.k                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.au = add i64 %i.k, -1                        ; 6 uses
  %i.av = add i64 %i.k, -2                        ; 2 uses
  %xtraiter = and i64 %i.au, 3                    ; 3 uses
  %i.aw = icmp ult i64 %i.av, 3
  %unroll_iter = and i64 %i.au, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod458 = icmp ne i64 %xtraiter, 0
  %xtraiter461 = and i64 %i.k, 1
  %lcmp.mod462.not = icmp eq i64 %xtraiter461, 0
  %i.ax = getelementptr inbounds [8 x i8], ptr %.sroa.0.0, i64 %i.ak
  %i.ay = or disjoint i64 %i.ak, 1
  %i.az = icmp eq i64 %i.au, %i.ak
  %xtraiter464 = and i64 %i.au, 3                 ; 3 uses
  %i.ba = icmp ult i64 %i.av, 3
  %unroll_iter469 = and i64 %i.au, -4
  %lcmp.mod466.not = icmp eq i64 %xtraiter464, 0
  %lcmp.mod468 = icmp ne i64 %xtraiter464, 0
  %xtraiter483 = and i64 %i.k, 1
  %lcmp.mod484.not = icmp eq i64 %xtraiter483, 0
  %i.bb = getelementptr inbounds [8 x i8], ptr %.sroa.0.0, i64 %i.ak
  %i.bc = or disjoint i64 %i.ak, 1
  %i.bd = icmp eq i64 %i.au, %i.ak
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit59
  %.036277 = phi i64 [ 0, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit59 ], [ %i.aes, %.critedge ] ; 3 uses
  %i.be = mul nuw nsw i64 %.036277, 123
  %i.bf = add nsw i64 %i.be, %2                   ; 2 uses
  %.not.i = icmp eq i64 %i.bf, 0
  %i.bg = and i64 %i.bf, 2147483647
  %i.bh = select i1 %.not.i, i64 1, i64 %i.bg     ; 2 uses
  %i.bi = icmp eq i64 %.036277, 0
  br i1 %i.bi, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i
  br i1 %.not.i60, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.f, %bb.g
  %16 = phi i64 [ %i.u, %bb.f ], [ 0, %bb.g ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bj = icmp slt i64 %16, %i.c
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit251

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.bk = sub i64 %i.c, %16                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.bk, 2
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader428, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bk, -2                      ; 3 uses
  %i.bl = add i64 %16, %n.vec
  %i.bm = getelementptr [8 x i8], ptr %.sroa.0209.0, i64 %16
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = getelementptr [8 x i8], ptr %i.bm, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.bn, align 8, !tbaa !56
  %i.bo = fdiv <2 x double> %wide.load, splat (double f0x41DFFFFFFFC00000)
  %i.bp = fadd <2 x double> %i.bo, splat (double -5.000000e-01)
  store <2 x double> %i.bp, ptr %i.bn, align 8, !tbaa !56
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !1111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %.loopexit251, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader428

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader428:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %16, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader428, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader428 ] ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %.sroa.0209.0, i64 %.05.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !56
  %i.bt = fdiv double %i.bs, f0x41DFFFFFFFC00000
  %i.bu = fadd double %i.bt, -5.000000e-01
  store double %i.bu, ptr %i.br, align 8, !tbaa !56
  %i.bv = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bv, %i.c
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit251, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1112

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0209.0, i64 %.011.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bx = load <2 x double>, ptr %i.bw, align 16, !tbaa !131
  %i.by = fdiv <2 x double> %i.bx, splat (double f0x41DFFFFFFFC00000)
  %i.bz = fadd <2 x double> %i.by, splat (double -5.000000e-01)
  store <2 x double> %i.bz, ptr %i.bw, align 16, !tbaa !131
  %i.ca = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.cb = icmp samesign ult i64 %i.ca, %i.v
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, !llvm.loop !24

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.1.i18.i = phi i64 [ %.1.i.i, %.lr.ph.i ], [ %i.bh, %bb.f ] ; 2 uses
  %.017.i = phi i64 [ %i.ct, %.lr.ph.i ], [ 0, %bb.f ] ; 2 uses
  %i.cc = and i64 %.1.i18.i, 65535
  %i.cd = mul nuw nsw i64 %i.cc, 16807
  %i.ce = lshr i64 %.1.i18.i, 16                  ; 2 uses
  %i.cf = mul nuw nsw i64 %i.ce, 16807
  %i.cg = mul nuw nsw i64 %i.ce, 1101463552
  %i.ch = and i64 %i.cg, 2147418112
  %i.ci = add nuw nsw i64 %i.ch, %i.cd            ; 3 uses
  %i.cj = icmp samesign ugt i64 %i.ci, 2147483647
  %i.ck = and i64 %i.ci, 2147483647
  %i.cl = add nuw nsw i64 %i.ck, 1
  %.0.i.i = select i1 %i.cj, i64 %i.cl, i64 %i.ci
  %i.cm = lshr i64 %i.cf, 15
  %i.cn = add nuw nsw i64 %.0.i.i, %i.cm          ; 3 uses
  %i.co = icmp samesign ugt i64 %i.cn, 2147483647
  %i.cp = and i64 %i.cn, 2147483647
  %i.cq = add nuw nsw i64 %i.cp, 1
  %.1.i.i = select i1 %i.co, i64 %i.cq, i64 %i.cn ; 2 uses
  %i.cr = uitofp nneg i64 %.1.i.i to double
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0209.0, i64 %.017.i
  store double %i.cr, ptr %i.cs, align 8, !tbaa !56
  %i.ct = add nuw nsw i64 %.017.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ct, %i.c
  br i1 %exitcond.not.i, label %bb.g, label %.lr.ph.i, !llvm.loop !25

.loopexit251:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.cu = load ptr, ptr %3, align 8, !tbaa !119
  %i.cv = load ptr, ptr %i.w, align 8, !tbaa !257, !nonnull !97, !align !138 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !258, !nonnull !97, !align !138
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !119
  invoke void @_ZZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IdLin1ELi1ELi0ELin1ELi1EEENS2_8SparseLUINS2_12SparseMatrixIdLi0EiEENS2_14COLAMDOrderingIiEEEEEEbRKNS7_IT_Li0EiEESF_iSC_RNS2_15PlainObjectBaseIT0_EERNSG_IT1_EEENK13SparseMatProd10perform_opEPKdPd(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef %.sroa.0209.0, ptr noundef %i.cz)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %.loopexit251
  %i.da = load ptr, ptr %i.cv, align 8, !tbaa !247, !nonnull !97, !align !138 ; 2 uses
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !156, !nonnull !97, !align !138 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !147
  store ptr %i.db, ptr %11, align 8, !tbaa !260
  store i64 %i.de, ptr %i.x, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !157
  store ptr %i.cu, ptr %12, align 8, !tbaa !228
  store i64 %i.dg, ptr %i.y, align 8, !tbaa !139
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.di = invoke noundef zeroext i1 @_ZNK5Eigen8SparseLUINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEE11_solve_implINS_3MapIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS7_IS9_Li0ESC_EEEEbRKNS_10MatrixBaseIT_EERNSF_IT0_EE(ptr noundef nonnull align 8 dereferenceable(584) %i.dh, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 8 dereferenceable(19) %12)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.dj = load i64, ptr %5, align 8, !tbaa !161
  %i.dk = add nsw i64 %i.dj, 1
  store i64 %i.dk, ptr %5, align 8, !tbaa !161
  br label %.loopexit252

bb.i:                                             ; preds = %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_10MatrixBaseEEmIINS_7ProductINS_3MapIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEES2_Li0EEEEERS2_RKNS3_IT_EE.exit, %.noexc, %.loopexit251, %.loopexit250, %.loopexit252
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body144

bb.j:                                             ; preds = %bb.e
  %i.dm = load i64, ptr %i.s, align 8, !tbaa !135 ; 8 uses
  %i.dn = icmp sgt i64 %i.dm, 0
  %.pre.i62 = load ptr, ptr %3, align 8, !tbaa !119 ; 4 uses
  br i1 %i.dn, label %.lr.ph.i69, label %.thread.i63

.thread.i63:                                      ; preds = %bb.j
  %.nonneg.i64 = sub i64 0, %i.dm
  %i.do = and i64 %.nonneg.i64, -2
  %i.dp = sub i64 0, %i.do
  br label %._crit_edge.i.i.i.i.i.i.i.i.i65

bb.k:                                             ; preds = %.lr.ph.i69
  %i.dq = and i64 %i.dm, 9223372036854775806      ; 2 uses
  %.not.i76 = icmp eq i64 %i.dm, 1
  br i1 %.not.i76, label %._crit_edge.i.i.i.i.i.i.i.i.i65, label %.lr.ph.i.i.i.i.i.i.i.i.i77

._crit_edge.i.i.i.i.i.i.i.i.i65:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i77, %bb.k, %.thread.i63
  %17 = phi i64 [ %i.dp, %.thread.i63 ], [ 0, %bb.k ], [ %i.dq, %.lr.ph.i.i.i.i.i.i.i.i.i77 ] ; 5 uses
  %i.dr = icmp slt i64 %17, %i.dm
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i66.preheader, label %.loopexit252

.lr.ph.i.i.i.i.i.i.i.i.i.i66.preheader:           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i65
  %i.ds = sub i64 %i.dm, %17                      ; 3 uses
  %min.iters.check416 = icmp ult i64 %i.ds, 2
  br i1 %min.iters.check416, label %.lr.ph.i.i.i.i.i.i.i.i.i.i66.preheader429, label %vector.ph417

vector.ph417:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i66.preheader
  %n.vec418 = and i64 %i.ds, -2                   ; 3 uses
  %i.dt = add i64 %17, %n.vec418
  %i.du = getelementptr [8 x i8], ptr %.pre.i62, i64 %17
  br label %vector.body419

vector.body419:                                   ; preds = %vector.body419, %vector.ph417
  %index420 = phi i64 [ 0, %vector.ph417 ], [ %index.next422, %vector.body419 ] ; 2 uses
  %i.dv = getelementptr [8 x i8], ptr %i.du, i64 %index420 ; 2 uses
  %wide.load421 = load <2 x double>, ptr %i.dv, align 8, !tbaa !56
  %i.dw = fdiv <2 x double> %wide.load421, splat (double f0x41DFFFFFFFC00000)
  %i.dx = fadd <2 x double> %i.dw, splat (double -5.000000e-01)
  store <2 x double> %i.dx, ptr %i.dv, align 8, !tbaa !56
  %index.next422 = add nuw i64 %index420, 2       ; 2 uses
  %i.dy = icmp eq i64 %index.next422, %n.vec418
  br i1 %i.dy, label %middle.block423, label %vector.body419, !llvm.loop !1113

middle.block423:                                  ; preds = %vector.body419
  %cmp.n424 = icmp eq i64 %i.ds, %n.vec418
  br i1 %cmp.n424, label %.loopexit252, label %.lr.ph.i.i.i.i.i.i.i.i.i.i66.preheader429

.lr.ph.i.i.i.i.i.i.i.i.i.i66.preheader429:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i66.preheader, %middle.block423
  %.05.i.i.i.i.i.i.i.i.i.i67.ph = phi i64 [ %17, %.lr.ph.i.i.i.i.i.i.i.i.i.i66.preheader ], [ %i.dt, %middle.block423 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i66

.lr.ph.i.i.i.i.i.i.i.i.i.i66:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i66.preheader429, %.lr.ph.i.i.i.i.i.i.i.i.i.i66
  %.05.i.i.i.i.i.i.i.i.i.i67 = phi i64 [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.i.i.i66 ], [ %.05.i.i.i.i.i.i.i.i.i.i67.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i66.preheader429 ] ; 2 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %.pre.i62, i64 %.05.i.i.i.i.i.i.i.i.i.i67 ; 2 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !56
  %i.eb = fdiv double %i.ea, f0x41DFFFFFFFC00000
  %i.ec = fadd double %i.eb, -5.000000e-01
  store double %i.ec, ptr %i.dz, align 8, !tbaa !56
  %i.ed = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i67, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i68 = icmp eq i64 %i.ed, %i.dm
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i68, label %.loopexit252, label %.lr.ph.i.i.i.i.i.i.i.i.i.i66, !llvm.loop !1114

.lr.ph.i.i.i.i.i.i.i.i.i77:                       ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i.i.i77
  %.011.i.i.i.i.i.i.i.i.i78 = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.i.i77 ], [ 0, %bb.k ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.pre.i62, i64 %.011.i.i.i.i.i.i.i.i.i78 ; 2 uses
  %i.ef = load <2 x double>, ptr %i.ee, align 16, !tbaa !131
  %i.eg = fdiv <2 x double> %i.ef, splat (double f0x41DFFFFFFFC00000)
  %i.eh = fadd <2 x double> %i.eg, splat (double -5.000000e-01)
  store <2 x double> %i.eh, ptr %i.ee, align 16, !tbaa !131
  %i.ei = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i.i78, 2 ; 2 uses
  %i.ej = icmp samesign ult i64 %i.ei, %i.dq
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i.i.i.i.i77, label %._crit_edge.i.i.i.i.i.i.i.i.i65, !llvm.loop !24

.lr.ph.i69:                                       ; preds = %bb.j, %.lr.ph.i69
  %.1.i18.i71 = phi i64 [ %.1.i.i74, %.lr.ph.i69 ], [ %i.bh, %bb.j ] ; 2 uses
  %.017.i72 = phi i64 [ %i.fb, %.lr.ph.i69 ], [ 0, %bb.j ] ; 2 uses
  %i.ek = and i64 %.1.i18.i71, 65535
  %i.el = mul nuw nsw i64 %i.ek, 16807
  %i.em = lshr i64 %.1.i18.i71, 16                ; 2 uses
  %i.en = mul nuw nsw i64 %i.em, 16807
  %i.eo = mul nuw nsw i64 %i.em, 1101463552
  %i.ep = and i64 %i.eo, 2147418112
  %i.eq = add nuw nsw i64 %i.ep, %i.el            ; 3 uses
  %i.er = icmp samesign ugt i64 %i.eq, 2147483647
  %i.es = and i64 %i.eq, 2147483647
  %i.et = add nuw nsw i64 %i.es, 1
  %.0.i.i73 = select i1 %i.er, i64 %i.et, i64 %i.eq
  %i.eu = lshr i64 %i.en, 15
  %i.ev = add nuw nsw i64 %.0.i.i73, %i.eu        ; 3 uses
  %i.ew = icmp samesign ugt i64 %i.ev, 2147483647
  %i.ex = and i64 %i.ev, 2147483647
  %i.ey = add nuw nsw i64 %i.ex, 1
  %.1.i.i74 = select i1 %i.ew, i64 %i.ey, i64 %i.ev ; 2 uses
  %i.ez = uitofp nneg i64 %.1.i.i74 to double
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.pre.i62, i64 %.017.i72
  store double %i.ez, ptr %i.fa, align 8, !tbaa !56
  %i.fb = add nuw nsw i64 %.017.i72, 1            ; 2 uses
  %exitcond.not.i75 = icmp eq i64 %i.fb, %i.dm
  br i1 %exitcond.not.i75, label %bb.k, label %.lr.ph.i69, !llvm.loop !25

.loopexit252:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i66, %middle.block423, %bb.h, %._crit_edge.i.i.i.i.i.i.i.i.i65
  store ptr %.sroa.0.0, ptr %13, align 8, !tbaa !184
  store i64 %i.k, ptr %i.z, align 8, !tbaa !139
  invoke void @_ZNK7Spectra9ArnoldiOpIdNS_21SymGEigsShiftInvertOpIZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi1ELi0ELin1ELi1EEENS5_8SparseLUINS5_12SparseMatrixIdLi0EiEENS5_14COLAMDOrderingIiEEEEEEbRKNSA_IT_Li0EiEESI_iSF_RNS5_15PlainObjectBaseIT0_EERNSJ_IT1_EEE11ShiftInvertZNS4_IdS7_S8_SE_EEbSI_SI_iSF_SM_SP_E13SparseMatProdEESR_E13trans_productINS5_3MapIKS7_Li0ENS5_6StrideILi0ELi0EEEEES8_EEvRKSF_RKSK_NS5_3RefIS8_Li0ENS5_11InnerStrideILi1EEEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(26) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dead_on_return %13)
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %.loopexit252
  %.sroa.0202.0.copyload = load ptr, ptr %1, align 8 ; 7 uses
  %.sroa.5203.0.copyload = load i64, ptr %.sroa.5203.0..sroa_idx, align 8 ; 3 uses
  %i.fc = icmp eq i64 %.sroa.5203.0.copyload, 1
  br i1 %i.fc, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  br i1 %.not.i.i.i.i53.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fd = load double, ptr %.sroa.0202.0.copyload, align 8, !tbaa !56
  %i.fe = load double, ptr %.sroa.0.0, align 8, !tbaa !56
  %i.ff = fmul double %i.fd, %i.fe                ; 3 uses
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.n
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.01724.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 6 uses
  %.02223.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.gg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ff, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.fg = getelementptr [8 x i8], ptr %.sroa.0202.0.copyload, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !56
  %i.fi = getelementptr [8 x i8], ptr %.sroa.0.0, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !56
  %i.fk = fmul double %i.fh, %i.fj
  %i.fl = fadd double %.02223.i.i.i.i.i.i.i.i.i.i.i, %i.fk
  %i.fm = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fn = getelementptr [8 x i8], ptr %.sroa.0202.0.copyload, i64 %i.fm
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !56
  %i.fp = getelementptr [8 x i8], ptr %.sroa.0.0, i64 %i.fm
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !56
  %i.fr = fmul double %i.fo, %i.fq
  %i.fs = fadd double %i.fl, %i.fr
  %i.ft = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.fu = getelementptr [8 x i8], ptr %.sroa.0202.0.copyload, i64 %i.ft
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !56
  %i.fw = getelementptr [8 x i8], ptr %.sroa.0.0, i64 %i.ft
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !56
  %i.fy = fmul double %i.fv, %i.fx
  %i.fz = fadd double %i.fs, %i.fy
  %i.ga = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.gb = getelementptr [8 x i8], ptr %.sroa.0202.0.copyload, i64 %i.ga
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !56
  %i.gd = getelementptr [8 x i8], ptr %.sroa.0.0, i64 %i.ga
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !56
  %i.gf = fmul double %i.gc, %i.ge
  %i.gg = fadd double %i.fz, %i.gf                ; 3 uses
  %i.gh = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1115

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  br i1 %lcmp.mod.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.gh, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.ff, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.gg, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod458)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.01724.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.go, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.01724.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.gn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.02223.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.gi = getelementptr [8 x i8], ptr %.sroa.0202.0.copyload, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !56
  %i.gk = getelementptr [8 x i8], ptr %.sroa.0.0, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !56
  %i.gm = fmul double %i.gj, %i.gl
  %i.gn = fadd double %.02223.i.i.i.i.i.i.i.i.i.i.i.epil, %i.gm ; 2 uses
  %i.go = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !1116

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.m ], [ %i.ff, %bb.n ], [ %i.gg, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.gn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.gp = load ptr, ptr %3, align 8, !tbaa !119   ; 3 uses
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !56
  %i.gr = fsub double %i.gq, %.0.i.i.i.i.i.i.i.i.i
  store double %i.gr, ptr %i.gp, align 8, !tbaa !56
  br label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_10MatrixBaseEEmIINS_7ProductINS_3MapIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEES2_Li0EEEEERS2_RKNS3_IT_EE.exit

bb.o:                                             ; preds = %bb.l
  %.sroa.6204.0.copyload = load i64, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  store ptr %.sroa.0202.0.copyload, ptr %9, align 8, !tbaa !222
  store i64 %.sroa.5203.0.copyload, ptr %i.aa, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  store ptr %.sroa.0.0, ptr %10, align 8, !tbaa !225
  store i64 1, ptr %i.ab, align 8, !tbaa !226
  %i.gs = load ptr, ptr %3, align 8, !tbaa !119
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %.sroa.5203.0.copyload, i64 noundef %.sroa.6204.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.gs, i64 noundef 1, double noundef -1.000000e+00)
          to label %.noexc81 unwind label %bb.bg

.noexc81:                                         ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %.pre = load ptr, ptr %3, align 8, !tbaa !119
  br label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_10MatrixBaseEEmIINS_7ProductINS_3MapIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEES2_Li0EEEEERS2_RKNS3_IT_EE.exit

_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_10MatrixBaseEEmIINS_7ProductINS_3MapIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEES2_Li0EEEEERS2_RKNS3_IT_EE.exit: ; preds = %.noexc81, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i
  %i.gt = phi ptr [ %.pre, %.noexc81 ], [ %i.gp, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i ]
  %i.gu = load ptr, ptr %i.ad, align 8, !tbaa !261, !nonnull !97, !align !138
  %i.gv = load ptr, ptr %i.ae, align 8, !tbaa !119
  invoke void @_ZZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IdLin1ELi1ELi0ELin1ELi1EEENS2_8SparseLUINS2_12SparseMatrixIdLi0EiEENS2_14COLAMDOrderingIiEEEEEEbRKNS7_IT_Li0EiEESF_iSC_RNS2_15PlainObjectBaseIT0_EERNSG_IT1_EEENK13SparseMatProd10perform_opEPKdPd(ptr noundef nonnull align 8 dereferenceable(8) %i.gu, ptr noundef %i.gt, ptr noundef %i.gv)
          to label %.noexc82 unwind label %bb.i

.noexc82:                                         ; preds = %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_10MatrixBaseEEmIINS_7ProductINS_3MapIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEES2_Li0EEEEERS2_RKNS3_IT_EE.exit
  %i.gw = load i64, ptr %i.af, align 8, !tbaa !135 ; 10 uses
  %i.gx = icmp eq i64 %i.gw, 0
  br i1 %i.gx, label %.loopexit250, label %bb.p

bb.p:                                             ; preds = %.noexc82
  %i.gy = load ptr, ptr %3, align 8, !tbaa !119   ; 11 uses
  %i.gz = load ptr, ptr %i.ae, align 8, !tbaa !119 ; 11 uses
  %i.ha = sdiv i64 %i.gw, 4
  %i.hb = shl nsw i64 %i.ha, 2                    ; 4 uses
  %i.hc = sdiv i64 %i.gw, 2
  %i.hd = shl nsw i64 %i.hc, 1                    ; 6 uses
  %.off.i.i.i.i.i.i.i = add i64 %i.gw, 1
  %.not.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.he = load <2 x double>, ptr %i.gy, align 16, !tbaa !131
  %i.hf = load <2 x double>, ptr %i.gz, align 16, !tbaa !131
  %i.hg = fmul <2 x double> %i.he, %i.hf          ; 3 uses
  %i.hh = icmp sgt i64 %i.gw, 3
  br i1 %i.hh, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hj = load <2 x double>, ptr %i.hi, align 16, !tbaa !131
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hl = load <2 x double>, ptr %i.hk, align 16, !tbaa !131
  %i.hm = fmul <2 x double> %i.hj, %i.hl          ; 2 uses
  %i.hn = icmp samesign ugt i64 %i.gw, 7
  br i1 %i.hn, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll:bb.a
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !56
  %i.dm = getelementptr i8, ptr %i.df, i64 48
  store double %i.dl, ptr %i.dm, align 8, !tbaa !56
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.dc
  %i.do = load double, ptr %i.dn, align 8, !tbaa !56
  %i.dp = getelementptr i8, ptr %i.df, i64 56
  store double %i.do, ptr %i.dp, align 8, !tbaa !56
  %i.dq = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.dr = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dr, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1346

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa79 = phi i64 [ %i.br, %middle.block ], [ %.lcssa128.unr, %scalar.ph.prol.loopexit ], [ %i.dq, %scalar.ph ] ; 2 uses
  %i.ds = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.dt = icmp slt i64 %i.ds, %i.c
  br i1 %i.dt, label %.lr.ph.us, label %.preheader, !llvm.loop !1347

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph62 ], [ %.lcssa79, %._crit_edge.us ]
  %i.du = icmp slt i64 %i.c, %4
  br i1 %i.du, label %.lr.ph68, label %._crit_edge69.split

.lr.ph68:                                         ; preds = %.preheader
  %i.dv = load ptr, ptr %2, align 8, !tbaa !222   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !223 ; 3 uses
  %i.dy = icmp sgt i64 %3, 0
  br i1 %i.dy, label %.lr.ph.preheader, label %._crit_edge69.split

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.dz = ptrtoaddr ptr %i.dv to i64
  %i.ea = mul i64 %i.dx, %i.b
  %i.eb = shl i64 %i.ea, 5
  %i.ec = add i64 %i.eb, %i.dz
  %i.ed = sub i64 %i.a, %i.ec
  %i.ee = mul i64 %i.dx, -8
  %min.iters.check115 = icmp ult i64 %3, 4
  %n.vec117 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n124 = icmp eq i64 %3, %n.vec117
  %xtraiter129 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br label %.lr.ph

._crit_edge69.split:                              ; preds = %._crit_edge, %.lr.ph68, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.04267 = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.fa, %._crit_edge ] ; 2 uses
  %.266 = phi i64 [ %.045.lcssa, %.lr.ph.preheader ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.ef = mul nsw i64 %i.dx, %.04267
  %i.eg = getelementptr [8 x i8], ptr %i.dv, i64 %i.ef ; 6 uses
  br i1 %min.iters.check115, label %scalar.ph114.preheader, label %vector.memcheck113

vector.memcheck113:                               ; preds = %.lr.ph
  %i.eh = mul i64 %i.ee, %indvar
  %i.ei = add i64 %i.ed, %i.eh
  %i.ej = shl i64 %.266, 3
  %i.ek = add i64 %i.ei, %i.ej
  %i.el = add i64 %i.ek, -1
  %diff.check = icmp ult i64 %i.el, 31
  br i1 %diff.check, label %scalar.ph114.preheader, label %vector.ph116

vector.ph116:                                     ; preds = %vector.memcheck113
  %i.em = add i64 %.266, %n.vec117                ; 2 uses
  %i.en = getelementptr [8 x i8], ptr %1, i64 %.266
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph116
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next122, %vector.body118 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %index119 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load120 = load <2 x double>, ptr %i.eo, align 8, !tbaa !56
  %wide.load121 = load <2 x double>, ptr %i.ep, align 8, !tbaa !56
  %i.eq = getelementptr [8 x i8], ptr %i.en, i64 %index119 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <2 x double> %wide.load120, ptr %i.eq, align 8, !tbaa !56
  store <2 x double> %wide.load121, ptr %i.er, align 8, !tbaa !56
  %index.next122 = add nuw i64 %index119, 4       ; 2 uses
  %i.es = icmp eq i64 %index.next122, %n.vec117
  br i1 %i.es, label %middle.block123, label %vector.body118, !llvm.loop !1348

middle.block123:                                  ; preds = %vector.body118
  br i1 %cmp.n124, label %._crit_edge, label %scalar.ph114.preheader

scalar.ph114.preheader:                           ; preds = %vector.memcheck113, %.lr.ph, %middle.block123
  %.065.ph = phi i64 [ 0, %vector.memcheck113 ], [ 0, %.lr.ph ], [ %n.vec117, %middle.block123 ] ; 3 uses
  %.364.ph = phi i64 [ %.266, %vector.memcheck113 ], [ %.266, %.lr.ph ], [ %i.em, %middle.block123 ] ; 2 uses
  br i1 %lcmp.mod130.not, label %scalar.ph114.prol.loopexit, label %scalar.ph114.prol

scalar.ph114.prol:                                ; preds = %scalar.ph114.preheader, %scalar.ph114.prol
  %.065.prol = phi i64 [ %i.ex, %scalar.ph114.prol ], [ %.065.ph, %scalar.ph114.preheader ] ; 2 uses
  %.364.prol = phi i64 [ %i.ew, %scalar.ph114.prol ], [ %.364.ph, %scalar.ph114.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph114.prol ], [ 0, %scalar.ph114.preheader ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065.prol
  %i.eu = load double, ptr %i.et, align 8, !tbaa !56
  %i.ev = getelementptr inbounds [8 x i8], ptr %1, i64 %.364.prol
  store double %i.eu, ptr %i.ev, align 8, !tbaa !56
  %i.ew = add nsw i64 %.364.prol, 1               ; 3 uses
  %i.ex = add nuw nsw i64 %.065.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter129
  br i1 %prol.iter.cmp.not, label %scalar.ph114.prol.loopexit, label %scalar.ph114.prol, !llvm.loop !1349

scalar.ph114.prol.loopexit:                       ; preds = %scalar.ph114.prol, %scalar.ph114.preheader
  %.lcssa127.unr = phi i64 [ poison, %scalar.ph114.preheader ], [ %i.ew, %scalar.ph114.prol ]
  %.065.unr = phi i64 [ %.065.ph, %scalar.ph114.preheader ], [ %i.ex, %scalar.ph114.prol ]
  %.364.unr = phi i64 [ %.364.ph, %scalar.ph114.preheader ], [ %i.ew, %scalar.ph114.prol ]
  %i.ey = sub nsw i64 %.065.ph, %3
  %i.ez = icmp ugt i64 %i.ey, -4
  br i1 %i.ez, label %._crit_edge, label %scalar.ph114

._crit_edge:                                      ; preds = %scalar.ph114.prol.loopexit, %scalar.ph114, %middle.block123
  %.lcssa = phi i64 [ %i.em, %middle.block123 ], [ %.lcssa127.unr, %scalar.ph114.prol.loopexit ], [ %i.ft, %scalar.ph114 ]
  %i.fa = add nsw i64 %.04267, 1                  ; 2 uses
  %exitcond73.not = icmp eq i64 %i.fa, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond73.not, label %._crit_edge69.split, label %.lr.ph, !llvm.loop !1350

scalar.ph114:                                     ; preds = %scalar.ph114.prol.loopexit, %scalar.ph114
  %.065 = phi i64 [ %i.fu, %scalar.ph114 ], [ %.065.unr, %scalar.ph114.prol.loopexit ] ; 5 uses
  %.364 = phi i64 [ %i.ft, %scalar.ph114 ], [ %.364.unr, %scalar.ph114.prol.loopexit ] ; 5 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !56
  %i.fd = getelementptr inbounds [8 x i8], ptr %1, i64 %.364
  store double %i.fc, ptr %i.fd, align 8, !tbaa !56
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !56
  %i.fh = getelementptr [8 x i8], ptr %1, i64 %.364
  %i.fi = getelementptr i8, ptr %i.fh, i64 8
  store double %i.fg, ptr %i.fi, align 8, !tbaa !56
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !56
  %i.fm = getelementptr [8 x i8], ptr %1, i64 %.364
  %i.fn = getelementptr i8, ptr %i.fm, i64 16
  store double %i.fl, ptr %i.fn, align 8, !tbaa !56
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !56
  %i.fr = getelementptr [8 x i8], ptr %1, i64 %.364
  %i.fs = getelementptr i8, ptr %i.fr, i64 24
  store double %i.fq, ptr %i.fs, align 8, !tbaa !56
  %i.ft = add nsw i64 %.364, 4                    ; 2 uses
  %i.fu = add nuw nsw i64 %.065, 4                ; 2 uses
  %exitcond72.not.3 = icmp eq i64 %i.fu, %3
  br i1 %exitcond72.not.3, label %._crit_edge, label %scalar.ph114, !llvm.loop !1351
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7Spectra12SimpleRandomIdE10random_vecEl(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.38") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %.not.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %bb.c, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit

bb.c:                                             ; preds = %bb.b
  %i.b = icmp samesign ugt i64 %2, 2305843009213693951
  br i1 %i.b, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i: ; preds = %bb.c
  %i.c = shl nuw i64 %2, 3
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #35 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.invoke.i, label %.lr.ph.i

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i, %bb.c
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !123
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.g, align 8, !tbaa !135
  br label %.thread.i

.thread.i:                                        ; preds = %bb.a, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit
  %.nonneg.i = sub i64 0, %2
  %i.h = and i64 %.nonneg.i, -2
  %i.i = sub i64 0, %i.h
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

.lr.ph.i:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i
  store ptr %i.d, ptr %0, align 8, !tbaa !119
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.j, align 8, !tbaa !135
  %.promoted.i = load i64, ptr %1, align 8, !tbaa !99
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  store i64 %.1.i.i, ptr %1, align 8, !tbaa !99
  %i.k = and i64 %2, 2305843009213693950          ; 2 uses
  %.not.i = icmp eq i64 %2, 1
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.d, %.thread.i
  %.pre.i4 = phi ptr [ null, %.thread.i ], [ %i.d, %bb.d ], [ %i.d, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %3 = phi i64 [ %i.i, %.thread.i ], [ 0, %bb.d ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.l = icmp slt i64 %3, %2
  br i1 %i.l, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN7Spectra12SimpleRandomIdE10random_vecERN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.m = sub i64 %2, %3                           ; 3 uses
  %min.iters.check = icmp ult i64 %i.m, 2
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.m, -2                       ; 3 uses
  %i.n = add i64 %3, %n.vec
  %i.o = getelementptr [8 x i8], ptr %.pre.i4, i64 %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.p, align 8, !tbaa !56
  %i.q = fdiv <2 x double> %wide.load, splat (double f0x41DFFFFFFFC00000)
  %i.r = fadd <2 x double> %i.q, splat (double -5.000000e-01)
  store <2 x double> %i.r, ptr %i.p, align 8, !tbaa !56
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !1358

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZN7Spectra12SimpleRandomIdE10random_vecERN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader13:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader13 ] ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %.pre.i4, i64 %.05.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !56
  %i.v = fdiv double %i.u, f0x41DFFFFFFFC00000
  %i.w = fadd double %i.v, -5.000000e-01
  store double %i.w, ptr %i.t, align 8, !tbaa !56
  %i.x = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.x, %2
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %_ZN7Spectra12SimpleRandomIdE10random_vecERN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1359

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.011.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.z = load <2 x double>, ptr %i.y, align 16, !tbaa !131
  %i.aa = fdiv <2 x double> %i.z, splat (double f0x41DFFFFFFFC00000)
  %i.ab = fadd <2 x double> %i.aa, splat (double -5.000000e-01)
  store <2 x double> %i.ab, ptr %i.y, align 16, !tbaa !131
  %i.ac = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ad = icmp samesign ult i64 %i.ac, %i.k
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, !llvm.loop !24

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.1.i18.i = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %.1.i.i, %bb.e ] ; 2 uses
  %.017.i = phi i64 [ 0, %.lr.ph.i ], [ %i.av, %bb.e ] ; 2 uses
  %i.ae = and i64 %.1.i18.i, 65535
  %i.af = mul nuw nsw i64 %i.ae, 16807
  %i.ag = lshr i64 %.1.i18.i, 16                  ; 2 uses
  %i.ah = mul nuw nsw i64 %i.ag, 16807
  %i.ai = mul i64 %i.ag, 1101463552
  %i.aj = and i64 %i.ai, 2147418112
  %i.ak = add nuw nsw i64 %i.aj, %i.af            ; 3 uses
  %i.al = icmp samesign ugt i64 %i.ak, 2147483647
  %i.am = and i64 %i.ak, 2147483647
  %i.an = add nuw nsw i64 %i.am, 1
  %.0.i.i = select i1 %i.al, i64 %i.an, i64 %i.ak
  %i.ao = lshr i64 %i.ah, 15
  %i.ap = add nuw nsw i64 %.0.i.i, %i.ao          ; 3 uses
  %i.aq = icmp samesign ugt i64 %i.ap, 2147483647
  %i.ar = and i64 %i.ap, 2147483647
  %i.as = add nuw nsw i64 %i.ar, 1
  %.1.i.i = select i1 %i.aq, i64 %i.as, i64 %i.ap ; 3 uses
  %i.at = uitofp nneg i64 %.1.i.i to double
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.017.i
  store double %i.at, ptr %i.au, align 8, !tbaa !56
  %i.av = add nuw nsw i64 %.017.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.av, %2
  br i1 %exitcond.not.i, label %bb.d, label %bb.e, !llvm.loop !25

_ZN7Spectra12SimpleRandomIdE10random_vecERN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7Spectra11SymEigsBaseINS_21SymGEigsShiftInvertOpIZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi1ELi0ELin1ELi1EEENS5_8SparseLUINS5_12SparseMatrixIdLi0EiEENS5_14COLAMDOrderingIiEEEEEEbRKNSA_IT_Li0EiEESI_iSF_RNS5_15PlainObjectBaseIT0_EERNSJ_IT1_EEE11ShiftInvertZNS4_IdS7_S8_SE_EEbSI_SI_iSF_SM_SP_E13SparseMatProdEESR_E4initEPKd(ptr noundef nonnull align 8 dereferenceable(292) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Map.1099", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !162  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !135
  %.not.i.i = icmp eq i64 %i.c, %i.e
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !119
  tail call void @free(ptr noundef %i.f) #33
  %i.g = icmp sgt i64 %i.c, 0
  br i1 %i.g, label %bb.c, label %.sink.split.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %i.c, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !123
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.c
  %i.j = shl nuw i64 %i.c, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #35 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split.i.i

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !123
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.b
  %.sink.i.i = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.b ]
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !119
  %.pre = load i64, ptr %i.b, align 8, !tbaa !162
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %bb.a, %.sink.split.i.i
  %i.n = phi i64 [ %i.c, %bb.a ], [ %.pre, %.sink.split.i.i ] ; 4 uses
  store i64 %i.c, ptr %i.d, align 8, !tbaa !135
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !121  ; 4 uses
  %i.r = icmp eq i64 %i.n, 0
  %i.s = icmp eq i64 %i.q, 0
  %or.cond.i.i = or i1 %i.r, %i.s
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.t = sdiv i64 9223372036854775807, %i.q
  %i.u = icmp sgt i64 %i.n, %i.t
  br i1 %i.u, label %bb.g, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.g:                                             ; preds = %bb.f
  %i.v = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.v, align 8, !tbaa !123
  tail call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, %bb.f
  %i.w = mul nsw i64 %i.q, %i.n
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %i.w, i64 noundef %i.n, i64 noundef %i.q)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.y = load i64, ptr %i.b, align 8, !tbaa !162  ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !135
  %.not.i.i2 = icmp eq i64 %i.y, %i.aa
  br i1 %.not.i.i2, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit6, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !119
  tail call void @free(ptr noundef %i.ab) #33
  %i.ac = icmp sgt i64 %i.y, 0
  br i1 %i.ac, label %bb.i, label %.sink.split.i.i3

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp samesign ugt i64 %i.y, 2305843009213693951
  br i1 %i.ad, label %bb.j, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i5

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ae, align 8, !tbaa !123
  tail call void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i5: ; preds = %bb.i
  %i.af = shl nuw i64 %i.y, 3
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.af) #35 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.k, label %.sink.split.i.i3

bb.k:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i5
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ai, align 8, !tbaa !123
  tail call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

.sink.split.i.i3:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i5, %bb.h
  %.sink.i.i4 = phi ptr [ %i.ag, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i5 ], [ null, %bb.h ]
  store ptr %.sink.i.i4, ptr %i.x, align 8, !tbaa !119
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit6

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit6: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %.sink.split.i.i3
  store i64 %i.y, ptr %i.z, align 8, !tbaa !135
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.ak = load i64, ptr %i.p, align 8, !tbaa !121 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !132
  %.not.i.i7 = icmp eq i64 %i.ak, %i.am
  br i1 %.not.i.i7, label %_ZN5Eigen15PlainObjectBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit6
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !133
  tail call void @free(ptr noundef %i.an) #33
  %i.ao = icmp sgt i64 %i.ak, 0
  br i1 %i.ao, label %bb.m, label %.sink.split.i.i8

bb.m:                                             ; preds = %bb.l
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.ak) #35 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.n, label %.sink.split.i.i8

bb.n:                                             ; preds = %bb.m
  %i.ar = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ar, align 8, !tbaa !123
  tail call void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

.sink.split.i.i8:                                 ; preds = %bb.m, %bb.l
  %.sink.i.i9 = phi ptr [ %i.ap, %bb.m ], [ null, %bb.l ]
  store ptr %.sink.i.i9, ptr %i.aj, align 8, !tbaa !133
  br label %_ZN5Eigen15PlainObjectBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit6, %.sink.split.i.i8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !132
  %i.as = load i64, ptr %i.d, align 8, !tbaa !135 ; 2 uses
  %i.at = icmp slt i64 %i.as, 1
  br i1 %i.at, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %_ZN5Eigen15PlainObjectBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !119
end_hunk_1
