inline.NumInlined: 2814
inline.NumDeleted: 782
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNSt6vectorIdSaIdEEaSERKS1_:bb.a
  %i.ai = icmp sgt i64 %i.ah, 8
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !254

bb.r:                                             ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ad, ptr align 8 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit
  %i.aj = icmp eq i64 %i.ah, 8
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load double, ptr %i.af, align 8, !tbaa !128
  store double %i.ak, ptr %i.ad, align 8, !tbaa !128
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !134
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !136
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

declare void @_ZN12colvarmodule8rotation25calc_optimal_rotation_soaERKSt6vectorIdSaIdEES5_mm(ptr noundef nonnull align 8 dereferenceable(568), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN12colvarmodule10atom_group6rotateERKNS_7rmatrixE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1712) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.b = load i64, ptr %i.a, align 8, !tbaa !127  ; 10 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.idx.i = shl i64 %i.b, 4                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %min.iters.check = icmp ult i64 %i.b, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.m = shl i64 %i.b, 3
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.m ; 3 uses
  %scevgep30 = getelementptr i8, ptr %i.d, i64 %.idx.i ; 3 uses
  %i.n = mul i64 %i.b, 24
  %scevgep31 = getelementptr i8, ptr %i.d, i64 %i.n ; 2 uses
  %scevgep32 = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %bound033 = icmp ult ptr %i.d, %scevgep31
  %bound1 = icmp ult ptr %scevgep30, %scevgep
  %found.conflict = and i1 %bound033, %bound1
  %bound034 = icmp ult ptr %i.d, %scevgep32
  %bound135 = icmp ult ptr %1, %scevgep
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx = or i1 %found.conflict, %found.conflict36
  %bound038 = icmp ult ptr %scevgep, %scevgep32
  %bound139 = icmp ult ptr %1, %scevgep30
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx41 = or i1 %conflict.rdx, %found.conflict40
  %bound042 = icmp ult ptr %scevgep30, %scevgep32
  %bound143 = icmp ult ptr %1, %scevgep31
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx45 = or i1 %conflict.rdx41, %found.conflict44
  br i1 %conflict.rdx45, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, -2                       ; 3 uses
  %i.o = load <2 x double>, ptr %1, align 8
  %broadcast.splat48 = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = load <2 x double>, ptr %i.e, align 8
  %broadcast.splat = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = load <2 x double>, ptr %i.f, align 8
  %broadcast.splat51 = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = load <2 x double>, ptr %i.g, align 8
  %broadcast.splat55 = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = load <2 x double>, ptr %i.h, align 8
  %broadcast.splat53 = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = load <2 x double>, ptr %i.i, align 8
  %broadcast.splat57 = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = load <2 x double>, ptr %i.j, align 8
  %broadcast.splat61 = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = load <2 x double>, ptr %i.k, align 8
  %broadcast.splat59 = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = load double, ptr %i.l, align 8, !tbaa !708, !alias.scope !709
  %broadcast.splatinsert62 = insertelement <2 x double> poison, double %i.w, i64 0
  %broadcast.splat63 = shufflevector <2 x double> %broadcast.splatinsert62, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 4 uses
  %wide.load = load <2 x double>, ptr %i.x, align 8, !tbaa !128, !alias.scope !712, !noalias !714 ; 3 uses
  %i.y = getelementptr [8 x i8], ptr %i.x, i64 %i.b ; 2 uses
  %wide.load46 = load <2 x double>, ptr %i.y, align 8, !tbaa !128, !alias.scope !717, !noalias !718 ; 3 uses
  %i.z = fmul <2 x double> %broadcast.splat, %wide.load46
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat48, <2 x double> %wide.load, <2 x double> %i.z)
  %i.ab = getelementptr i8, ptr %i.x, i64 %.idx.i ; 2 uses
  %wide.load49 = load <2 x double>, ptr %i.ab, align 8, !tbaa !128, !alias.scope !719, !noalias !709 ; 3 uses
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat51, <2 x double> %wide.load49, <2 x double> %i.aa)
  %i.ad = fmul <2 x double> %wide.load46, %broadcast.splat53
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat55, <2 x double> %wide.load, <2 x double> %i.ad)
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat57, <2 x double> %wide.load49, <2 x double> %i.ae)
  %i.ag = fmul <2 x double> %wide.load46, %broadcast.splat59
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat61, <2 x double> %wide.load, <2 x double> %i.ag)
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat63, <2 x double> %wide.load49, <2 x double> %i.ah)
  store <2 x double> %i.ac, ptr %i.x, align 8, !tbaa !128, !alias.scope !712, !noalias !714
  store <2 x double> %i.af, ptr %i.y, align 8, !tbaa !128, !alias.scope !717, !noalias !718
  store <2 x double> %i.ai, ptr %i.ab, align 8, !tbaa !128, !alias.scope !719, !noalias !709
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !720

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.029.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.029 = phi i64 [ %i.bn, %scalar.ph ], [ %.029.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.029 ; 4 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !128 ; 2 uses
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.b ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !128 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ak, i64 %.idx.i ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !128 ; 2 uses
  %i.aq = load <4 x double>, ptr %1, align 8, !tbaa !128 ; 3 uses
  %i.ar = load <2 x double>, ptr %i.h, align 8, !tbaa !128
  %i.as = insertelement <2 x double> poison, double %i.an, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = shufflevector <2 x double> %i.ar, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.av = shufflevector <4 x double> %i.aq, <4 x double> %i.au, <2 x i32> <i32 1, i32 4>
  %i.aw = fmul <2 x double> %i.at, %i.av
  %i.ax = shufflevector <4 x double> %i.aq, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.ay = insertelement <2 x double> poison, double %i.al, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.az, <2 x double> %i.aw)
  %i.bb = shufflevector <4 x double> %i.aq, <4 x double> %i.au, <2 x i32> <i32 2, i32 5>
  %i.bc = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.bd, <2 x double> %i.ba) ; 2 uses
  %i.bf = load double, ptr %i.j, align 8, !tbaa !721
  %i.bg = load double, ptr %i.k, align 8, !tbaa !722
  %i.bh = fmul double %i.an, %i.bg
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.al, double %i.bh)
  %i.bj = load double, ptr %i.l, align 8, !tbaa !708
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.ap, double %i.bi)
  %i.bl = extractelement <2 x double> %i.be, i64 0
  store double %i.bl, ptr %i.ak, align 8, !tbaa !128
  %i.bm = extractelement <2 x double> %i.be, i64 1
  store double %i.bm, ptr %i.am, align 8, !tbaa !128
  store double %i.bk, ptr %i.ao, align 8, !tbaa !128
  %i.bn = add nuw i64 %.029, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !723
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #20

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule10atom_group15read_velocitiesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1712) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.d = load i8, ptr %i.c, align 8, !tbaa !164, !range !74, !noundef !75
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 97
  %i.i = load i8, ptr %i.h, align 1, !tbaa !71, !range !74, !noundef !75
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.n = load <2 x double>, ptr %i.k, align 8, !tbaa !128, !noalias !724 ; 8 uses
  %i.o = load <2 x double>, ptr %i.l, align 8, !tbaa !128, !noalias !724 ; 4 uses
  %i.p = load double, ptr %i.m, align 8, !tbaa !729, !noalias !724 ; 7 uses
  %i.q = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !127
  %.not41 = icmp eq i64 %i.s, 0
  br i1 %.not41, label %.loopexit, label %.lr.ph40

.lr.ph40:                                         ; preds = %bb.c
  %i.t = extractelement <2 x double> %i.o, i64 0  ; 5 uses
  %i.u = extractelement <2 x double> %i.n, i64 0  ; 4 uses
  %i.v = extractelement <2 x double> %i.n, i64 1  ; 4 uses
  %i.w = fneg double %i.t                         ; 3 uses
  %i.x = shufflevector <2 x double> %i.o, <2 x double> %i.n, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.y = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.z = insertelement <2 x double> %i.y, double %i.w, i64 1
  %i.aa = fmul <2 x double> %i.x, %i.z
  %i.ab = shufflevector <2 x double> %i.n, <2 x double> %i.y, <2 x i32> <i32 1, i32 2>
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.ab, <2 x double> %i.aa) ; 2 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %i.ae = fmul double %i.ad, 2.000000e+00
  %i.af = fneg double %i.v                        ; 2 uses
  %i.ag = insertelement <2 x double> %i.y, double %i.af, i64 0
  %i.ah = fmul <2 x double> %i.n, %i.ag
  %i.ai = insertelement <2 x double> poison, double %i.p, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.aj, <2 x double> %i.ah) ; 2 uses
  %3 = fneg double %i.p                           ; 3 uses
  %4 = insertelement <2 x double> poison, double %3, i64 0
  %5 = insertelement <2 x double> %4, double %i.p, i64 1
  %6 = fmul <2 x double> %i.n, %5
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %8 = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %8, <2 x double> %7) ; 2 uses
  %10 = extractelement <2 x double> %9, i64 0
  %11 = fmul double %10, 2.000000e+00
  %12 = fmul double %i.v, %i.af
  %13 = fmul double %i.v, %i.v
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %17 = shufflevector <2 x double> %i.ak, <2 x double> %9, <2 x i32> <i32 1, i32 3>
  %18 = fmul <2 x double> %17, splat (double 2.000000e+00) ; 2 uses
  %i.al = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %12) ; 2 uses
  %i.am = tail call double @llvm.fmuladd.f64(double %i.w, double %i.t, double %i.al)
  %i.an = tail call double @llvm.fmuladd.f64(double %i.p, double %i.p, double %i.am)
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.t, double %i.t, double %i.al)
  %19 = tail call double @llvm.fmuladd.f64(double %3, double %i.p, double %i.ao)
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %13)
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.w, double %i.t, double %i.ap)
  %i.ar = tail call double @llvm.fmuladd.f64(double %3, double %i.p, double %i.aq)
  %i.as = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.at = insertelement <2 x double> %i.as, double %19, i64 1
  %i.au = fmul <2 x double> %i.at, zeroinitializer
  %i.av = insertelement <2 x double> poison, double %i.ar, i64 0
  %20 = shufflevector <2 x double> %i.av, <2 x double> %18, <2 x i32> <i32 0, i32 2>
  %21 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> zeroinitializer, <2 x double> %i.au) ; 2 uses
  %i.aw = extractelement <2 x double> %21, i64 0
  %i.ax = tail call double @llvm.fmuladd.f64(double %11, double 0.000000e+00, double %i.aw)
  %i.ay = fmul double %i.ae, 0.000000e+00
  %i.az = shufflevector <2 x double> %i.ak, <2 x double> %i.ac, <2 x i32> <i32 0, i32 3>
  %i.ba = fmul <2 x double> %i.az, splat (double 2.000000e+00)
  %i.bb = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bc = insertelement <2 x double> %i.bb, double %i.ay, i64 1
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> zeroinitializer, <2 x double> %i.bc) ; 2 uses
  %i.be = extractelement <2 x double> %i.bd, i64 1
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.an, double 0.000000e+00, double %i.be)
  %i.bg = extractelement <2 x double> %i.bd, i64 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph40, %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit
  %.01639 = phi i64 [ 0, %.lr.ph40 ], [ %i.bz, %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !730
  store ptr %14, ptr %2, align 8, !tbaa !17, !noalias !730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !730
  store i64 71, ptr %i.b, align 8, !tbaa !29, !noalias !730
  %i.bh = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0), !noalias !730 ; 3 uses
  store ptr %i.bh, ptr %2, align 8, !tbaa !47, !noalias !730
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !29, !noalias !730 ; 3 uses
  store i64 %i.bi, ptr %14, align 8, !tbaa !23, !noalias !730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %i.bh, ptr noundef nonnull align 1 dereferenceable(71) @.str.119, i64 71, i1 false), !noalias !730
  store i64 %i.bi, ptr %15, align 8, !tbaa !20, !noalias !730
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  store i8 0, ptr %i.bj, align 1, !tbaa !23, !noalias !730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !730
  %i.bk = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.e unwind label %bb.f, !noalias !730 ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.bl = load ptr, ptr %2, align 8, !tbaa !47, !noalias !730 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %14
  br i1 %i.bm, label %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.bn = load i64, ptr %14, align 8, !tbaa !23, !noalias !730
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #29, !noalias !730
  br label %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit

bb.f:                                             ; preds = %bb.d
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %2, align 8, !tbaa !47, !noalias !730 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %14
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.f
  %i.bs = load i64, ptr %14, align 8, !tbaa !23, !noalias !730
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #29, !noalias !730
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i
  %common.resume.op = phi { ptr, i32 } [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i18 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !730
  br label %common.resume

_ZN17colvarproxy_atoms17get_atom_velocityEi.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !730
  %i.bu = load ptr, ptr %16, align 8, !tbaa !134
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.01639 ; 3 uses
  store double %i.ax, ptr %i.bv, align 8, !tbaa !128
  %i.bw = load i64, ptr %i.r, align 8, !tbaa !127 ; 3 uses
  %i.bx = getelementptr [8 x i8], ptr %i.bv, i64 %i.bw
  store double %i.bg, ptr %i.bx, align 8, !tbaa !128
  %.idx.i = shl i64 %i.bw, 4
  %i.by = getelementptr i8, ptr %i.bv, i64 %.idx.i
  store double %i.bf, ptr %i.by, align 8, !tbaa !128
  %i.bz = add nuw i64 %.01639, 1                  ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.bw
  br i1 %i.ca, label %bb.d, label %.loopexit, !llvm.loop !733

bb.g:                                             ; preds = %bb.b
  %i.cb = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !127
  %.not = icmp eq i64 %i.cd, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1224
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit22
  %.038 = phi i64 [ 0, %.lr.ph ], [ %i.cz, %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit22 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28, !noalias !734
  store ptr %i.ce, ptr %1, align 8, !tbaa !17, !noalias !734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !734
  store i64 71, ptr %i.a, align 8, !tbaa !29, !noalias !734
  %i.ch = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0), !noalias !734 ; 3 uses
  store ptr %i.ch, ptr %1, align 8, !tbaa !47, !noalias !734
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !29, !noalias !734 ; 3 uses
  store i64 %i.ci, ptr %i.ce, align 8, !tbaa !23, !noalias !734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %i.ch, ptr noundef nonnull align 1 dereferenceable(71) @.str.119, i64 71, i1 false), !noalias !734
  store i64 %i.ci, ptr %i.cf, align 8, !tbaa !20, !noalias !734
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ci
  store i8 0, ptr %i.cj, align 1, !tbaa !23, !noalias !734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !734
  %i.ck = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.i unwind label %bb.j, !noalias !734 ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.cl = load ptr, ptr %1, align 8, !tbaa !47, !noalias !734 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ce
  br i1 %i.cm, label %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %bb.i
  %i.cn = load i64, ptr %i.ce, align 8, !tbaa !23, !noalias !734
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #29, !noalias !734
  br label %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit22

bb.j:                                             ; preds = %bb.h
  %i.cp = landingpad { ptr, i32 }
          cleanup
  %i.cq = load ptr, ptr %1, align 8, !tbaa !47, !noalias !734 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ce
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i17: ; preds = %bb.j
  %i.cs = load i64, ptr %i.ce, align 8, !tbaa !23, !noalias !734
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #29, !noalias !734
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i18: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28, !noalias !734
  br label %common.resume

_ZN17colvarproxy_atoms17get_atom_velocityEi.exit22: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28, !noalias !734
  %i.cu = load ptr, ptr %i.cg, align 8, !tbaa !134
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.038 ; 3 uses
  store double 0.000000e+00, ptr %i.cv, align 8, !tbaa !128
  %i.cw = load i64, ptr %i.cc, align 8, !tbaa !127 ; 3 uses
  %i.cx = getelementptr [8 x i8], ptr %i.cv, i64 %i.cw
  store double 0.000000e+00, ptr %i.cx, align 8, !tbaa !128
  %.idx.i23 = shl i64 %i.cw, 4
  %i.cy = getelementptr i8, ptr %i.cv, i64 %.idx.i23
  store double 0.000000e+00, ptr %i.cy, align 8, !tbaa !128
  %i.cz = add nuw i64 %.038, 1                    ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cw
  br i1 %i.da, label %bb.h, label %.loopexit, !llvm.loop !737

.loopexit:                                        ; preds = %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit22, %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit, %bb.g, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule10atom_group17read_total_forcesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1712) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.b = load i8, ptr %i.a, align 8, !tbaa !164, !range !74, !noundef !75
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 97
  %i.g = load i8, ptr %i.f, align 1, !tbaa !71, !range !74, !noundef !75
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.k = load <2 x double>, ptr %i.i, align 8, !tbaa !128, !noalias !738 ; 9 uses
  %i.l = extractelement <2 x double> %i.k, i64 1  ; 4 uses
  %i.m = extractelement <2 x double> %i.k, i64 0  ; 4 uses
  %i.n = load <2 x double>, ptr %i.j, align 8, !tbaa !128, !noalias !738 ; 9 uses
  %i.o = extractelement <2 x double> %i.n, i64 0  ; 5 uses
  %i.p = fneg double %i.o                         ; 3 uses
  %i.q = extractelement <2 x double> %i.n, i64 1  ; 5 uses
  %i.r = fneg double %i.l                         ; 2 uses
  %i.s = fmul double %i.l, %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double %i.s) ; 2 uses
  %i.u = tail call double @llvm.fmuladd.f64(double %i.p, double %i.o, double %i.t)
  %i.v = tail call double @llvm.fmuladd.f64(double %i.q, double %i.q, double %i.u)
  %i.w = insertelement <2 x double> %i.n, double %i.r, i64 0
  %i.x = fmul <2 x double> %i.k, %i.w
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.z = shufflevector <2 x double> %i.k, <2 x double> %i.n, <2 x i32> <i32 0, i32 2>
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.n, <2 x double> %i.y)
  %i.ab = fmul <2 x double> %i.aa, splat (double 2.000000e+00)
  %i.ac = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !127 ; 4 uses
  %.not32 = icmp eq i64 %i.ae, 0
  br i1 %.not32, label %.loopexit, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.c
  %i.af = shufflevector <2 x double> %i.k, <2 x double> %i.n, <2 x i32> <i32 1, i32 3>
  %i.ag = shufflevector <2 x double> %i.n, <2 x double> %i.k, <2 x i32> <i32 0, i32 2>
  %i.ah = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ai = insertelement <2 x double> %i.ah, double %i.p, i64 1
  %i.aj = fmul <2 x double> %i.ag, %i.ai
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.af, <2 x double> %i.aj)
  %i.al = fmul <2 x double> %i.ak, splat (double 2.000000e+00) ; 2 uses
  %i.am = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.an = fneg double %i.q                        ; 3 uses
  %i.ao = insertelement <2 x double> %i.ah, double %i.an, i64 0
  %i.ap = fmul <2 x double> %i.k, %i.ao
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.n, <2 x double> %i.ap)
  %i.ar = fmul <2 x double> %i.aq, splat (double 2.000000e+00) ; 2 uses
  %i.as = tail call double @llvm.fmuladd.f64(double %i.o, double %i.o, double %i.t)
  %i.at = tail call double @llvm.fmuladd.f64(double %i.an, double %i.q, double %i.as)
  %i.au = fmul double %i.l, %i.l
  %i.av = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double %i.au)
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.p, double %i.o, double %i.av)
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.an, double %i.q, double %i.aw)
  %i.ay = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !174
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !72
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 392
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !133, !noalias !743
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !134
  %.idx.i = shl i64 %i.ae, 4
  %i.bf = insertelement <2 x double> %i.ar, double %i.at, i64 1
  %i.bg = insertelement <2 x double> %i.ar, double %i.ax, i64 0
  %i.bh = extractelement <2 x double> %i.al, i64 0
  %i.bi = extractelement <2 x double> %i.al, i64 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph31, %bb.d
  %.01630 = phi i64 [ 0, %.lr.ph31 ], [ %i.ce, %bb.d ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.01630
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !155
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.bl ; 3 uses
  %.sroa.018.0.copyload = load double, ptr %i.bm, align 8, !tbaa !128 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !128 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.9.0.copyload = load double, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !128 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.01630 ; 3 uses
  %i.bo = insertelement <2 x double> poison, double %.sroa.6.0.copyload, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x double> %i.bf, %i.bp
  %i.br = insertelement <2 x double> poison, double %.sroa.018.0.copyload, i64 0
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %i.bs, <2 x double> %i.bq)
  %i.bu = insertelement <2 x double> poison, double %.sroa.9.0.copyload, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.bv, <2 x double> %i.bt) ; 2 uses
  %i.bx = extractelement <2 x double> %i.bw, i64 0
  store double %i.bx, ptr %i.bn, align 8, !tbaa !128
  %i.by = getelementptr [8 x i8], ptr %i.bn, i64 %i.ae
  %i.bz = extractelement <2 x double> %i.bw, i64 1
  store double %i.bz, ptr %i.by, align 8, !tbaa !128
  %i.ca = fmul double %i.bh, %.sroa.6.0.copyload
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bi, double %.sroa.018.0.copyload, double %i.ca)
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.v, double %.sroa.9.0.copyload, double %i.cb)
  %i.cd = getelementptr i8, ptr %i.bn, i64 %.idx.i
  store double %i.cc, ptr %i.cd, align 8, !tbaa !128
  %i.ce = add nuw i64 %.01630, 1                  ; 2 uses
  %exitcond34.not = icmp eq i64 %i.ce, %i.ae
end_hunk_0
