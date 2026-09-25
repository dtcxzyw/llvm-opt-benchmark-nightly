Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvaratoms?download=true
inline.NumInlined: 2814
inline.NumDeleted: 782
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZNSt6vectorIdSaIdEEaSERKS1_:bb.a
  %i.an = icmp sgt i64 %i.am, 8
  br i1 %i.an, label %bb.r, label %bb.s, !prof !166

bb.r:                                             ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ai, ptr align 8 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 8
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load double, ptr %i.ak, align 8, !tbaa !109
  store double %i.ap, ptr %i.ai, align 8, !tbaa !109
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !114
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !116
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

declare void @_ZN12colvarmodule8rotation25calc_optimal_rotation_soaERKSt6vectorIdSaIdEES5_mm(ptr noundef nonnull align 8 dereferenceable(568), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN12colvarmodule10atom_group6rotateERKNS_7rmatrixE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1712) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.b = load i64, ptr %i.a, align 8, !tbaa !108  ; 10 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114  ; 7 uses
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
  %i.w = load double, ptr %i.l, align 8, !tbaa !209, !alias.scope !731
  %broadcast.splatinsert62 = insertelement <2 x double> poison, double %i.w, i64 0
  %broadcast.splat63 = shufflevector <2 x double> %broadcast.splatinsert62, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 4 uses
  %wide.load = load <2 x double>, ptr %i.x, align 8, !tbaa !109, !alias.scope !732, !noalias !733 ; 3 uses
  %i.y = getelementptr [8 x i8], ptr %i.x, i64 %i.b ; 2 uses
  %wide.load46 = load <2 x double>, ptr %i.y, align 8, !tbaa !109, !alias.scope !734, !noalias !735 ; 3 uses
  %i.z = fmul <2 x double> %broadcast.splat, %wide.load46
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat48, <2 x double> %wide.load, <2 x double> %i.z)
  %i.ab = getelementptr i8, ptr %i.x, i64 %.idx.i ; 2 uses
  %wide.load49 = load <2 x double>, ptr %i.ab, align 8, !tbaa !109, !alias.scope !736, !noalias !731 ; 3 uses
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat51, <2 x double> %wide.load49, <2 x double> %i.aa)
  %i.ad = fmul <2 x double> %wide.load46, %broadcast.splat53
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat55, <2 x double> %wide.load, <2 x double> %i.ad)
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat57, <2 x double> %wide.load49, <2 x double> %i.ae)
  %i.ag = fmul <2 x double> %wide.load46, %broadcast.splat59
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat61, <2 x double> %wide.load, <2 x double> %i.ag)
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat63, <2 x double> %wide.load49, <2 x double> %i.ah)
  store <2 x double> %i.ac, ptr %i.x, align 8, !tbaa !109, !alias.scope !732, !noalias !733
  store <2 x double> %i.af, ptr %i.y, align 8, !tbaa !109, !alias.scope !734, !noalias !735
  store <2 x double> %i.ai, ptr %i.ab, align 8, !tbaa !109, !alias.scope !736, !noalias !731
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !729

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
  %i.al = load double, ptr %i.ak, align 8, !tbaa !109 ; 2 uses
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.b ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !109 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ak, i64 %.idx.i ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !109 ; 2 uses
  %i.aq = load <4 x double>, ptr %1, align 8, !tbaa !109 ; 3 uses
  %i.ar = load <2 x double>, ptr %i.h, align 8, !tbaa !109
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
  %i.bf = load double, ptr %i.j, align 8, !tbaa !737
  %i.bg = load double, ptr %i.k, align 8, !tbaa !738
  %i.bh = fmul double %i.an, %i.bg
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.al, double %i.bh)
  %i.bj = load double, ptr %i.l, align 8, !tbaa !209
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.ap, double %i.bi)
  %i.bl = extractelement <2 x double> %i.be, i64 0
  store double %i.bl, ptr %i.ak, align 8, !tbaa !109
  %i.bm = extractelement <2 x double> %i.be, i64 1
  store double %i.bm, ptr %i.am, align 8, !tbaa !109
  store double %i.bk, ptr %i.ao, align 8, !tbaa !109
  %i.bn = add nuw i64 %.029, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !730
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
  %i.d = load i8, ptr %i.c, align 8, !tbaa !130, !range !55, !noundef !56
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 97
  %i.i = load i8, ptr %i.h, align 1, !tbaa !53, !range !55, !noundef !56
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.n = load <2 x double>, ptr %i.k, align 8, !tbaa !109, !noalias !749 ; 10 uses
  %i.o = load <2 x double>, ptr %i.l, align 8, !tbaa !109, !noalias !749 ; 4 uses
  %i.p = load double, ptr %i.m, align 8, !tbaa !210, !noalias !749 ; 7 uses
  %i.q = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !108
  %.not41 = icmp eq i64 %i.s, 0
  br i1 %.not41, label %.loopexit, label %.lr.ph40

.lr.ph40:                                         ; preds = %bb.c
  %i.t = extractelement <2 x double> %i.o, i64 0  ; 5 uses
  %i.u = extractelement <2 x double> %i.n, i64 0  ; 4 uses
  %i.v = extractelement <2 x double> %i.n, i64 1  ; 2 uses
  %i.w = fneg double %i.t                         ; 3 uses
  %i.x = shufflevector <2 x double> %i.o, <2 x double> %i.n, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.y = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.z = insertelement <2 x double> %i.y, double %i.w, i64 1
  %i.aa = fmul <2 x double> %i.x, %i.z
  %i.ab = shufflevector <2 x double> %i.n, <2 x double> %i.y, <2 x i32> <i32 1, i32 2>
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.ab, <2 x double> %i.aa) ; 2 uses
  %3 = extractelement <2 x double> %i.ac, i64 0
  %4 = fmul double %3, 2.000000e+00
  %i.ad = fneg double %i.v                        ; 2 uses
  %i.ae = insertelement <2 x double> %i.y, double %i.ad, i64 0
  %i.af = fmul <2 x double> %i.n, %i.ae
  %i.ag = insertelement <2 x double> poison, double %i.p, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.ah, <2 x double> %i.af) ; 2 uses
  %i.aj = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = fmul double %i.v, %i.ad
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %6 = shufflevector <2 x double> %i.n, <2 x double> %i.ai, <2 x i32> <i32 1, i32 3>
  %7 = shufflevector <2 x double> %i.n, <2 x double> <double poison, double 2.000000e+00>, <2 x i32> <i32 1, i32 3>
  %8 = fmul <2 x double> %6, %7                   ; 2 uses
  %i.an = fneg double %i.p                        ; 3 uses
  %i.ao = insertelement <2 x double> poison, double %i.an, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.p, i64 1
  %i.aq = fmul <2 x double> %i.n, %i.ap
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.aj, <2 x double> %i.ar)
  %i.at = fmul <2 x double> %i.as, splat (double 2.000000e+00) ; 2 uses
  %i.au = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %i.ak) ; 2 uses
  %i.av = tail call double @llvm.fmuladd.f64(double %i.w, double %i.t, double %i.au)
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.p, double %i.p, double %i.av)
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.t, double %i.t, double %i.au)
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.an, double %i.p, double %i.ax)
  %9 = extractelement <2 x double> %8, i64 0
  %i.az = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %9)
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.w, double %i.t, double %i.az)
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.an, double %i.p, double %i.ba)
  %i.bc = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bd = insertelement <2 x double> %i.bc, double %i.ay, i64 1
  %i.be = fmul <2 x double> %i.bd, zeroinitializer
  %i.bf = insertelement <2 x double> %8, double %i.bb, i64 0
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> zeroinitializer, <2 x double> %i.be) ; 2 uses
  %i.bh = extractelement <2 x double> %i.bg, i64 0
  %i.bi = extractelement <2 x double> %i.at, i64 0
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bi, double 0.000000e+00, double %i.bh)
  %i.bk = fmul double %4, 0.000000e+00
  %i.bl = shufflevector <2 x double> %i.ai, <2 x double> %i.ac, <2 x i32> <i32 0, i32 3>
  %i.bm = fmul <2 x double> %i.bl, splat (double 2.000000e+00)
  %i.bn = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bo = insertelement <2 x double> %i.bn, double %i.bk, i64 1
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> zeroinitializer, <2 x double> %i.bo) ; 2 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 1
  %i.br = tail call double @llvm.fmuladd.f64(double %i.aw, double 0.000000e+00, double %i.bq)
  %i.bs = extractelement <2 x double> %i.bp, i64 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph40, %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit
  %.01639 = phi i64 [ 0, %.lr.ph40 ], [ %i.cl, %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !750
  store ptr %5, ptr %2, align 8, !tbaa !28, !noalias !750
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !750
  store i64 71, ptr %i.b, align 8, !tbaa !35, !noalias !750
  %i.bt = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0), !noalias !750 ; 3 uses
  store ptr %i.bt, ptr %2, align 8, !tbaa !42, !noalias !750
  %i.bu = load i64, ptr %i.b, align 8, !tbaa !35, !noalias !750 ; 3 uses
  store i64 %i.bu, ptr %5, align 8, !tbaa !32, !noalias !750
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %i.bt, ptr noundef nonnull align 1 dereferenceable(71) @.str.119, i64 71, i1 false), !noalias !750
  store i64 %i.bu, ptr %i.al, align 8, !tbaa !31, !noalias !750
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bu
  store i8 0, ptr %i.bv, align 1, !tbaa !32, !noalias !750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !750
  %i.bw = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.e unwind label %bb.f, !noalias !750 ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.bx = load ptr, ptr %2, align 8, !tbaa !42, !noalias !750 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %5
  br i1 %i.by, label %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.bz = load i64, ptr %5, align 8, !tbaa !32, !noalias !750
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #29, !noalias !750
  br label %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit

bb.f:                                             ; preds = %bb.d
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load ptr, ptr %2, align 8, !tbaa !42, !noalias !750 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %5
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.f
  %i.ce = load i64, ptr %5, align 8, !tbaa !32, !noalias !750
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #29, !noalias !750
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i
  %common.resume.op = phi { ptr, i32 } [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i18 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !750
  br label %common.resume

_ZN17colvarproxy_atoms17get_atom_velocityEi.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !750
  %i.cg = load ptr, ptr %i.am, align 8, !tbaa !114
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.01639 ; 3 uses
  store double %i.bj, ptr %i.ch, align 8, !tbaa !109
  %i.ci = load i64, ptr %i.r, align 8, !tbaa !108 ; 3 uses
  %i.cj = getelementptr [8 x i8], ptr %i.ch, i64 %i.ci
  store double %i.bs, ptr %i.cj, align 8, !tbaa !109
  %.idx.i = shl i64 %i.ci, 4
  %i.ck = getelementptr i8, ptr %i.ch, i64 %.idx.i
  store double %i.br, ptr %i.ck, align 8, !tbaa !109
  %i.cl = add nuw i64 %.01639, 1                  ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.ci
  br i1 %i.cm, label %bb.d, label %.loopexit, !llvm.loop !745

bb.g:                                             ; preds = %bb.b
  %i.cn = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !108
  %.not = icmp eq i64 %i.cp, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1224
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit22
  %.038 = phi i64 [ 0, %.lr.ph ], [ %i.dl, %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit22 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28, !noalias !751
  store ptr %i.cq, ptr %1, align 8, !tbaa !28, !noalias !751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !751
  store i64 71, ptr %i.a, align 8, !tbaa !35, !noalias !751
  %i.ct = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0), !noalias !751 ; 3 uses
  store ptr %i.ct, ptr %1, align 8, !tbaa !42, !noalias !751
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !35, !noalias !751 ; 3 uses
  store i64 %i.cu, ptr %i.cq, align 8, !tbaa !32, !noalias !751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %i.ct, ptr noundef nonnull align 1 dereferenceable(71) @.str.119, i64 71, i1 false), !noalias !751
  store i64 %i.cu, ptr %i.cr, align 8, !tbaa !31, !noalias !751
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cu
  store i8 0, ptr %i.cv, align 1, !tbaa !32, !noalias !751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !751
  %i.cw = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.i unwind label %bb.j, !noalias !751 ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.cx = load ptr, ptr %1, align 8, !tbaa !42, !noalias !751 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.cq
  br i1 %i.cy, label %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %bb.i
  %i.cz = load i64, ptr %i.cq, align 8, !tbaa !32, !noalias !751
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #29, !noalias !751
  br label %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit22

bb.j:                                             ; preds = %bb.h
  %i.db = landingpad { ptr, i32 }
          cleanup
  %i.dc = load ptr, ptr %1, align 8, !tbaa !42, !noalias !751 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.cq
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i17: ; preds = %bb.j
  %i.de = load i64, ptr %i.cq, align 8, !tbaa !32, !noalias !751
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #29, !noalias !751
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i18: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28, !noalias !751
  br label %common.resume

_ZN17colvarproxy_atoms17get_atom_velocityEi.exit22: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28, !noalias !751
  %i.dg = load ptr, ptr %i.cs, align 8, !tbaa !114
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.038 ; 3 uses
  store double 0.000000e+00, ptr %i.dh, align 8, !tbaa !109
  %i.di = load i64, ptr %i.co, align 8, !tbaa !108 ; 3 uses
  %i.dj = getelementptr [8 x i8], ptr %i.dh, i64 %i.di
  store double 0.000000e+00, ptr %i.dj, align 8, !tbaa !109
  %.idx.i23 = shl i64 %i.di, 4
  %i.dk = getelementptr i8, ptr %i.dh, i64 %.idx.i23
  store double 0.000000e+00, ptr %i.dk, align 8, !tbaa !109
  %i.dl = add nuw i64 %.038, 1                    ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.di
  br i1 %i.dm, label %bb.h, label %.loopexit, !llvm.loop !748

.loopexit:                                        ; preds = %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit22, %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit, %bb.g, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule10atom_group17read_total_forcesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1712) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.b = load i8, ptr %i.a, align 8, !tbaa !130, !range !55, !noundef !56
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 97
  %i.g = load i8, ptr %i.f, align 1, !tbaa !53, !range !55, !noundef !56
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.k = load <2 x double>, ptr %i.i, align 8, !tbaa !109, !noalias !762 ; 9 uses
  %i.l = extractelement <2 x double> %i.k, i64 1  ; 4 uses
  %i.m = extractelement <2 x double> %i.k, i64 0  ; 4 uses
  %i.n = load <2 x double>, ptr %i.j, align 8, !tbaa !109, !noalias !762 ; 9 uses
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
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !108 ; 4 uses
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
  %i.ay = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !135
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !54
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 392
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !113, !noalias !763
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !114
  %.idx.i = shl i64 %i.ae, 4
  %i.bf = insertelement <2 x double> %i.ar, double %i.at, i64 1
  %i.bg = insertelement <2 x double> %i.ar, double %i.ax, i64 0
  %i.bh = extractelement <2 x double> %i.al, i64 0
  %i.bi = extractelement <2 x double> %i.al, i64 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph31, %bb.d
  %.01630 = phi i64 [ 0, %.lr.ph31 ], [ %i.ce, %bb.d ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.01630
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !122
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.bl ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.01630 ; 3 uses
  %.sroa.6.0.copyload.a = load double, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !109 ; 2 uses
  %.sroa.018.0.copyload = load double, ptr %i.bm, align 8, !tbaa !109 ; 2 uses
  %.sroa.9.0.copyload = load double, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !109 ; 2 uses
  %i.bo = insertelement <2 x double> poison, double %.sroa.6.0.copyload.a, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x double> %i.bf, %i.bp
  %i.br = insertelement <2 x double> poison, double %.sroa.018.0.copyload, i64 0
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %i.bs, <2 x double> %i.bq)
  %i.bu = insertelement <2 x double> poison, double %.sroa.9.0.copyload, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.bv, <2 x double> %i.bt) ; 2 uses
  %i.bx = extractelement <2 x double> %i.bw, i64 0
  store double %i.bx, ptr %i.bn, align 8, !tbaa !109
  %i.by = getelementptr [8 x i8], ptr %i.bn, i64 %i.ae
  %i.bz = extractelement <2 x double> %i.bw, i64 1
  store double %i.bz, ptr %i.by, align 8, !tbaa !109
  %i.ca = fmul double %i.bh, %.sroa.6.0.copyload.a
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bi, double %.sroa.018.0.copyload, double %i.ca)
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.v, double %.sroa.9.0.copyload, double %i.cb)
  %i.cd = getelementptr i8, ptr %i.bn, i64 %.idx.i
  store double %i.cc, ptr %i.cd, align 8, !tbaa !109
  %i.ce = add nuw i64 %.01630, 1                  ; 2 uses
  %exitcond34.not = icmp eq i64 %i.ce, %i.ae
  br i1 %exitcond34.not, label %.loopexit, label %bb.d, !llvm.loop !758

bb.e:                                             ; preds = %bb.b
  %i.cf = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !108 ; 9 uses
  %.not = icmp eq i64 %i.ch, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ci = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !135
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !54 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 392
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !113, !noalias !764 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !114 ; 3 uses
  %.idx.i17 = shl i64 %i.ch, 4                    ; 3 uses
  %xtraiter = and i64 %i.ch, 1
  %i.cp = icmp eq i64 %i.ch, 1
  br i1 %i.cp, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ch, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %.029 = phi i64 [ 0, %.lr.ph.new ], [ %i.df, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.029
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !122
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.cs ; 3 uses
  %.sroa.0.0.copyload = load double, ptr %i.ct, align 8, !tbaa !109
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !109
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !109
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.029 ; 3 uses
  store double %.sroa.0.0.copyload, ptr %i.cu, align 8, !tbaa !109
  %i.cv = getelementptr [8 x i8], ptr %i.cu, i64 %i.ch
  store double %.sroa.4.0.copyload, ptr %i.cv, align 8, !tbaa !109
  %i.cw = getelementptr i8, ptr %i.cu, i64 %.idx.i17
  store double %.sroa.5.0.copyload, ptr %i.cw, align 8, !tbaa !109
  %i.cx = or disjoint i64 %.029, 1                ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !122
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.da ; 3 uses
  %.sroa.0.0.copyload.1 = load double, ptr %i.db, align 8, !tbaa !109
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.sroa.4.0.copyload.1 = load double, ptr %.sroa.4.0..sroa_idx.1, align 8, !tbaa !109
  %.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %.sroa.5.0.copyload.1 = load double, ptr %.sroa.5.0..sroa_idx.1, align 8, !tbaa !109
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cx ; 3 uses
  store double %.sroa.0.0.copyload.1, ptr %i.dc, align 8, !tbaa !109
  %i.dd = getelementptr [8 x i8], ptr %i.dc, i64 %i.ch
  store double %.sroa.4.0.copyload.1, ptr %i.dd, align 8, !tbaa !109
  %i.de = getelementptr i8, ptr %i.dc, i64 %.idx.i17
  store double %.sroa.5.0.copyload.1, ptr %i.de, align 8, !tbaa !109
  %i.df = add nuw i64 %.029, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit38.unr-lcssa, label %bb.f, !llvm.loop !761

.loopexit.loopexit38.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit38.unr-lcssa, %.lr.ph
  %.029.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.df, %.loopexit.loopexit38.unr-lcssa ] ; 2 uses
  %lcmp.mod39 = trunc i64 %i.ch to i1
  tail call void @llvm.assume(i1 %lcmp.mod39)
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.029.epil.init
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !122
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.di ; 3 uses
  %.sroa.0.0.copyload.epil = load double, ptr %i.dj, align 8, !tbaa !109
  %.sroa.4.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.sroa.4.0.copyload.epil = load double, ptr %.sroa.4.0..sroa_idx.epil, align 8, !tbaa !109
  %.sroa.5.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %.sroa.5.0.copyload.epil = load double, ptr %.sroa.5.0..sroa_idx.epil, align 8, !tbaa !109
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.029.epil.init ; 3 uses
  store double %.sroa.0.0.copyload.epil, ptr %i.dk, align 8, !tbaa !109
  %i.dl = getelementptr [8 x i8], ptr %i.dk, i64 %i.ch
  store double %.sroa.4.0.copyload.epil, ptr %i.dl, align 8, !tbaa !109
  %i.dm = getelementptr i8, ptr %i.dk, i64 %.idx.i17
  store double %.sroa.5.0.copyload.epil, ptr %i.dm, align 8, !tbaa !109
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit38.unr-lcssa, %bb.d, %bb.e, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN12colvarmodule10atom_group24calc_required_propertiesEv(ptr noundef nonnull align 8 dereferenceable(1712) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !130, !range !55, !noundef !56
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 257
  %i.g = load i8, ptr %i.f, align 1, !tbaa !53, !range !55, !noundef !56
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !135
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.k = load i32, ptr %i.j, align 8, !tbaa !133
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 568
  %i.m = sext i32 %i.k to i64
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !113, !noalias !769
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1600
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !108
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.s = load i64, ptr %i.r, align 8, !tbaa !108  ; 5 uses
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !114
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !114
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %.idx.i.i = shl i64 %i.s, 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1616
  br label %bb.e

._crit_edge.i:                                    ; preds = %bb.e, %bb.d
  %i.z = phi double [ 0.000000e+00, %bb.d ], [ %i.ba, %bb.e ]
  %i.aa = phi double [ 0.000000e+00, %bb.d ], [ %i.aw, %bb.e ]
  %i.ab = phi double [ 0.000000e+00, %bb.d ], [ %i.at, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !109 ; 2 uses
  %i.ae = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.aa, i64 1
  %i.ag = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fdiv <2 x double> %i.af, %i.ah
  store <2 x double> %i.ai, ptr %i.q, align 8, !tbaa !109
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.ak = fdiv double %i.z, %i.ad
  store double %i.ak, ptr %i.aj, align 8, !tbaa !119
  br label %bb.g

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %i.al = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.ba, %bb.e ]
  %i.am = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.aw, %bb.e ]
  %.036.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bb, %bb.e ] ; 3 uses
  %i.an = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.at, %bb.e ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.036.i ; 3 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !109
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.036.i ; 3 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !109
  %i.as = getelementptr [8 x i8], ptr %i.aq, i64 %i.s
  %i.at = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.ar, double %i.an) ; 3 uses
  store double %i.at, ptr %i.q, align 8, !tbaa !211
  %i.au = load double, ptr %i.ao, align 8, !tbaa !109
  %i.av = load double, ptr %i.as, align 8, !tbaa !109
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.au, double %i.av, double %i.am) ; 3 uses
  store double %i.aw, ptr %i.x, align 8, !tbaa !212
  %i.ax = load double, ptr %i.ao, align 8, !tbaa !109
  %i.ay = getelementptr i8, ptr %i.aq, i64 %.idx.i.i
  %i.az = load double, ptr %i.ay, align 8, !tbaa !109
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.az, double %i.al) ; 3 uses
  store double %i.ba, ptr %i.y, align 8, !tbaa !213
  %i.bb = add nuw i64 %.036.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bb, %i.s
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !8

bb.f:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1600
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !tbaa.struct !203
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1528
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !tbaa.struct !203
  %.phi.trans.insert71 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.pre72 = load ptr, ptr %.phi.trans.insert71, align 8, !tbaa !46
  br label %_ZN12colvarmodule10atom_group23calc_center_of_geometryEv.exit

bb.g:                                             ; preds = %bb.c, %._crit_edge.i
end_hunk_0
begin_hunk_1_@_ZN19rotation_derivative18prepare_derivativeE24rotation_derivative_dldq:bb.a
  %i.avm = insertelement <2 x double> %i.avl, double %i.avi, i64 1
  %i.avn = fmul <2 x double> %i.avk, %i.avm
  %i.avo = fdiv <2 x double> %i.avn, %i.dn        ; 2 uses
  %i.avp = extractelement <2 x double> %i.avo, i64 0
  %i.avq = fmul double %i.avh, %i.avp
  %i.avr = tail call double @llvm.fmuladd.f64(double %i.ave, double %i.avf, double %i.avq)
  %i.avs = load double, ptr %i.ds, align 8, !tbaa !109
  %i.avt = extractelement <2 x double> %i.avo, i64 1
  %i.avu = tail call double @llvm.fmuladd.f64(double %i.avt, double %i.avs, double %i.avr)
  %i.avv = getelementptr inbounds nuw i8, ptr %0, i64 440
  store double %i.avu, ptr %i.avv, align 8, !tbaa !109
  %i.avw = load double, ptr %i.ez, align 8, !tbaa !109
  %i.avx = load double, ptr %i.iy, align 8, !tbaa !109 ; 3 uses
  %i.avy = load double, ptr %i.dz, align 8, !tbaa !109
  %i.avz = load double, ptr %i.fc, align 8, !tbaa !109
  %i.awa = insertelement <2 x double> poison, double %i.avw, i64 0
  %i.awb = insertelement <2 x double> %i.awa, double %i.avx, i64 1
  %i.awc = insertelement <2 x double> poison, double %i.avx, i64 0
  %i.awd = insertelement <2 x double> %i.awc, double %i.avz, i64 1
  %i.awe = fmul <2 x double> %i.awb, %i.awd
  %i.awf = fdiv <2 x double> %i.awe, %i.ck        ; 2 uses
  %i.awg = load double, ptr %i.ei, align 8, !tbaa !109
  %i.awh = extractelement <2 x double> %i.awf, i64 1
  %i.awi = fmul double %i.awg, %i.awh
  %i.awj = extractelement <2 x double> %i.awf, i64 0
  %i.awk = tail call double @llvm.fmuladd.f64(double %i.awj, double %i.avy, double %i.awi)
  %i.awl = load double, ptr %i.fo, align 8, !tbaa !109
  %i.awm = fmul double %i.avx, %i.awl
  %i.awn = fdiv double %i.awm, %i.ct
  %i.awo = load double, ptr %i.er, align 8, !tbaa !109
  %i.awp = tail call double @llvm.fmuladd.f64(double %i.awn, double %i.awo, double %i.awk)
  %i.awq = getelementptr inbounds nuw i8, ptr %0, i64 568
  store double %i.awp, ptr %i.awq, align 8, !tbaa !109
  %i.awr = load double, ptr %i.ez, align 8, !tbaa !109 ; 2 uses
  %i.aws = load double, ptr %i.iy, align 8, !tbaa !109 ; 2 uses
  %i.awt = fmul double %i.awr, %i.aws
  %i.awu = fdiv double %i.awt, %i.cl
  %i.awv = load double, ptr %i.fc, align 8, !tbaa !109 ; 2 uses
  %i.aww = load double, ptr %i.fo, align 8, !tbaa !109 ; 2 uses
  %i.awx = insertelement <2 x double> poison, double %i.aws, i64 0
  %i.awy = shufflevector <2 x double> %i.awx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.awz = insertelement <2 x double> poison, double %i.awv, i64 0
  %i.axa = insertelement <2 x double> %i.awz, double %i.aww, i64 1
  %i.axb = fmul <2 x double> %i.awy, %i.axa
  %i.axc = fdiv <2 x double> %i.axb, %i.dn        ; 2 uses
  %i.axd = extractelement <2 x double> %i.axc, i64 0
  %i.axe = fmul double %i.awv, %i.axd
  %i.axf = tail call double @llvm.fmuladd.f64(double %i.awu, double %i.awr, double %i.axe)
  %i.axg = extractelement <2 x double> %i.axc, i64 1
  %i.axh = tail call double @llvm.fmuladd.f64(double %i.axg, double %i.aww, double %i.axf)
  %i.axi = getelementptr inbounds nuw i8, ptr %0, i64 696
  store double %i.axh, ptr %i.axi, align 8, !tbaa !109
  %i.axj = load double, ptr %i.ez, align 8, !tbaa !109
  %i.axk = load double, ptr %i.mb, align 8, !tbaa !109 ; 3 uses
  %i.axl = load double, ptr %i.br, align 8, !tbaa !109
  %i.axm = load double, ptr %i.fc, align 8, !tbaa !109
  %i.axn = insertelement <2 x double> poison, double %i.axj, i64 0
  %i.axo = insertelement <2 x double> %i.axn, double %i.axk, i64 1
  %i.axp = insertelement <2 x double> poison, double %i.axk, i64 0
  %i.axq = insertelement <2 x double> %i.axp, double %i.axm, i64 1
  %i.axr = fmul <2 x double> %i.axo, %i.axq
  %i.axs = fdiv <2 x double> %i.axr, %i.ck        ; 2 uses
  %i.axt = load double, ptr %i.bs, align 8, !tbaa !109
  %i.axu = extractelement <2 x double> %i.axs, i64 1
  %i.axv = fmul double %i.axt, %i.axu
  %i.axw = extractelement <2 x double> %i.axs, i64 0
  %i.axx = tail call double @llvm.fmuladd.f64(double %i.axw, double %i.axl, double %i.axv)
  %i.axy = load double, ptr %i.fo, align 8, !tbaa !109
  %i.axz = fmul double %i.axk, %i.axy
  %i.aya = fdiv double %i.axz, %i.ct
  %i.ayb = load double, ptr %i.bt, align 8, !tbaa !109
  %i.ayc = tail call double @llvm.fmuladd.f64(double %i.aya, double %i.ayb, double %i.axx)
  %i.ayd = getelementptr inbounds nuw i8, ptr %0, i64 320
  store double %i.ayc, ptr %i.ayd, align 8, !tbaa !109
  %i.aye = load double, ptr %i.ez, align 8, !tbaa !109
  %i.ayf = load double, ptr %i.mb, align 8, !tbaa !109 ; 3 uses
  %i.ayg = fmul double %i.aye, %i.ayf
  %i.ayh = fdiv double %i.ayg, %i.cl
  %i.ayi = load double, ptr %i.db, align 8, !tbaa !109
  %i.ayj = load double, ptr %i.fc, align 8, !tbaa !109
  %i.ayk = load double, ptr %i.de, align 8, !tbaa !109
  %i.ayl = load double, ptr %i.fo, align 8, !tbaa !109
  %i.aym = insertelement <2 x double> poison, double %i.ayj, i64 0
  %i.ayn = insertelement <2 x double> %i.aym, double %i.ayf, i64 1
  %i.ayo = insertelement <2 x double> poison, double %i.ayf, i64 0
  %i.ayp = insertelement <2 x double> %i.ayo, double %i.ayl, i64 1
  %i.ayq = fmul <2 x double> %i.ayn, %i.ayp
  %i.ayr = fdiv <2 x double> %i.ayq, %i.dn        ; 2 uses
  %i.ays = extractelement <2 x double> %i.ayr, i64 0
  %i.ayt = fmul double %i.ayk, %i.ays
  %i.ayu = tail call double @llvm.fmuladd.f64(double %i.ayh, double %i.ayi, double %i.ayt)
  %i.ayv = load double, ptr %i.ds, align 8, !tbaa !109
  %i.ayw = extractelement <2 x double> %i.ayr, i64 1
  %i.ayx = tail call double @llvm.fmuladd.f64(double %i.ayw, double %i.ayv, double %i.ayu)
  %i.ayy = getelementptr inbounds nuw i8, ptr %0, i64 448
  store double %i.ayx, ptr %i.ayy, align 8, !tbaa !109
  %i.ayz = load double, ptr %i.ez, align 8, !tbaa !109
  %i.aza = load double, ptr %i.mb, align 8, !tbaa !109 ; 3 uses
  %i.azb = load double, ptr %i.dz, align 8, !tbaa !109
  %i.azc = load double, ptr %i.fc, align 8, !tbaa !109
  %i.azd = insertelement <2 x double> poison, double %i.ayz, i64 0
  %i.aze = insertelement <2 x double> %i.azd, double %i.aza, i64 1
  %i.azf = insertelement <2 x double> poison, double %i.aza, i64 0
  %i.azg = insertelement <2 x double> %i.azf, double %i.azc, i64 1
  %i.azh = fmul <2 x double> %i.aze, %i.azg
  %i.azi = fdiv <2 x double> %i.azh, %i.ck        ; 2 uses
  %i.azj = load double, ptr %i.ei, align 8, !tbaa !109
  %i.azk = extractelement <2 x double> %i.azi, i64 1
  %i.azl = fmul double %i.azj, %i.azk
  %i.azm = extractelement <2 x double> %i.azi, i64 0
  %i.azn = tail call double @llvm.fmuladd.f64(double %i.azm, double %i.azb, double %i.azl)
  %i.azo = load double, ptr %i.fo, align 8, !tbaa !109
  %i.azp = fmul double %i.aza, %i.azo
  %i.azq = fdiv double %i.azp, %i.ct
  %i.azr = load double, ptr %i.er, align 8, !tbaa !109
  %i.azs = tail call double @llvm.fmuladd.f64(double %i.azq, double %i.azr, double %i.azn)
  %i.azt = getelementptr inbounds nuw i8, ptr %0, i64 576
  store double %i.azs, ptr %i.azt, align 8, !tbaa !109
  %i.azu = load double, ptr %i.ez, align 8, !tbaa !109 ; 2 uses
  %i.azv = load double, ptr %i.mb, align 8, !tbaa !109 ; 2 uses
  %i.azw = fmul double %i.azu, %i.azv
  %i.azx = fdiv double %i.azw, %i.cl
  %i.azy = load double, ptr %i.fc, align 8, !tbaa !109 ; 2 uses
  %i.azz = load double, ptr %i.fo, align 8, !tbaa !109 ; 2 uses
  %i.baa = insertelement <2 x double> poison, double %i.azv, i64 0
  %i.bab = shufflevector <2 x double> %i.baa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bac = insertelement <2 x double> poison, double %i.azy, i64 0
  %i.bad = insertelement <2 x double> %i.bac, double %i.azz, i64 1
  %i.bae = fmul <2 x double> %i.bab, %i.bad
  %i.baf = fdiv <2 x double> %i.bae, %i.dn        ; 2 uses
  %i.bag = extractelement <2 x double> %i.baf, i64 0
  %i.bah = fmul double %i.azy, %i.bag
  %i.bai = tail call double @llvm.fmuladd.f64(double %i.azx, double %i.azu, double %i.bah)
  %i.baj = extractelement <2 x double> %i.baf, i64 1
  %i.bak = tail call double @llvm.fmuladd.f64(double %i.baj, double %i.azz, double %i.bai)
  %i.bal = getelementptr inbounds nuw i8, ptr %0, i64 704
  store double %i.bak, ptr %i.bal, align 8, !tbaa !109
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK19rotation_derivative28project_force_to_C_from_dxdqISt5arrayIdLm4EEEEN12colvarmodule7rmatrixERKT_(ptr dead_on_unwind noalias writable sret(%"class.colvarmodule::rmatrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(712) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.at = load double, ptr %i.g, align 8, !tbaa !109, !noalias !867 ; 2 uses
  %i.au = load double, ptr %i.f, align 8, !tbaa !109, !noalias !867 ; 2 uses
  %i.av = load double, ptr %i.t, align 8, !tbaa !109, !noalias !868 ; 2 uses
  %i.aw = load double, ptr %i.s, align 8, !tbaa !109, !noalias !868 ; 2 uses
  %i.ax = load double, ptr %i.ae, align 8, !tbaa !109, !noalias !869 ; 2 uses
  %i.ay = load double, ptr %i.ad, align 8, !tbaa !109, !noalias !869 ; 2 uses
  %i.az = load double, ptr %i.ap, align 8, !tbaa !109, !noalias !870 ; 2 uses
  %i.ba = load double, ptr %i.ao, align 8, !tbaa !109, !noalias !870 ; 2 uses
  %i.bb = load double, ptr %i.a, align 8, !tbaa !109, !noalias !867 ; 2 uses
  %i.bc = load double, ptr %i.n, align 8, !tbaa !109, !noalias !868 ; 2 uses
  %i.bd = load double, ptr %i.y, align 8, !tbaa !109, !noalias !869 ; 2 uses
  %i.be = load double, ptr %i.aj, align 8, !tbaa !109, !noalias !870 ; 2 uses
  %i.bf = load double, ptr %i.c, align 8, !tbaa !109, !noalias !867 ; 2 uses
  %i.bg = load double, ptr %i.b, align 8, !tbaa !109, !noalias !867 ; 2 uses
  %3 = load <2 x double>, ptr %i.e, align 8, !tbaa !109, !noalias !867 ; 2 uses
  %i.bh = fadd double %i.bb, %i.bf
  %i.bi = extractelement <2 x double> %3, i64 0   ; 2 uses
  %i.bj = fsub double %i.bh, %i.bi
  %i.bk = load <3 x double>, ptr %i.i, align 8, !tbaa !109, !noalias !867 ; 3 uses
  %i.bl = shufflevector <3 x double> %i.bk, <3 x double> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 1> ; 2 uses
  %i.bm = extractelement <3 x double> %i.bk, i64 2 ; 2 uses
  %i.bn = fsub double %i.bj, %i.bm
  %4 = load double, ptr %i.ai, align 8, !tbaa !109 ; 2 uses
  %5 = load double, ptr %i.x, align 8, !tbaa !109 ; 2 uses
  %6 = load double, ptr %i.m, align 8, !tbaa !109 ; 2 uses
  %7 = load double, ptr %2, align 8, !tbaa !109   ; 2 uses
  %i.bo = insertelement <4 x double> poison, double %7, i64 0
  %8 = shufflevector <4 x double> %i.bo, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %9 = insertelement <4 x double> poison, double %i.bn, i64 0
  %i.bp = load <2 x double>, ptr %i.j, align 8, !tbaa !109, !noalias !867 ; 3 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 0
  %i.br = fneg double %i.bq
  %i.bs = load <2 x double>, ptr %i.h, align 8, !tbaa !109, !noalias !867 ; 3 uses
  %i.bt = extractelement <2 x double> %i.bs, i64 0
  %i.bu = fadd double %i.at, %i.bt
  %i.bv = load <2 x double>, ptr %i.d, align 8, !tbaa !109, !noalias !867 ; 4 uses
  %i.bw = extractelement <2 x double> %i.bv, i64 1
  %i.bx = fadd double %i.bu, %i.bw
  %i.by = fadd double %i.bx, %i.au
  %i.bz = insertelement <4 x double> %9, double %i.by, i64 1
  %i.ca = insertelement <2 x double> %i.bp, double %i.at, i64 0
  %i.cb = fsub <2 x double> %i.bs, %i.ca
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cd = fsub <2 x double> %i.cc, %i.bv
  %i.ce = fadd <2 x double> %i.cc, %i.bv
  %i.cf = shufflevector <2 x double> %i.cd, <2 x double> %i.ce, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cg = shufflevector <3 x double> %i.bk, <3 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.ch = insertelement <2 x double> %i.cg, double %i.au, i64 1 ; 2 uses
  %i.ci = fadd <2 x double> %i.cf, %i.ch
  %i.cj = fsub <2 x double> %i.cf, %i.ch
  %i.ck = shufflevector <2 x double> %i.ci, <2 x double> %i.cj, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.cl = shufflevector <4 x double> %i.bz, <4 x double> %i.ck, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cm = fmul <4 x double> %8, %i.cl
  %10 = fsub double %i.br, %i.bg
  %i.cn = insertelement <2 x double> %i.bs, double %i.bg, i64 0
  %i.co = fadd <2 x double> %i.bp, %i.cn
  %11 = fsub double %i.bb, %i.bf                  ; 2 uses
  %i.cp = insertelement <4 x double> poison, double %11, i64 0
  %i.cq = shufflevector <2 x double> %i.co, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cr = shufflevector <4 x double> %i.cp, <4 x double> %i.cq, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cs = insertelement <4 x double> %i.cr, double %10, i64 3
  %i.ct = shufflevector <2 x double> %3, <2 x double> %i.bv, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.cu = fadd <4 x double> %i.cs, %i.ct          ; 2 uses
  %i.cv = fsub <4 x double> %i.cu, %i.bl
  %i.cw = fadd <4 x double> %i.cu, %i.bl
  %i.cx = shufflevector <4 x double> %i.cv, <4 x double> %i.cw, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.cy = fmul <4 x double> %8, %i.cx
  %i.cz = fsub double %11, %i.bi
  %i.da = fadd double %i.cz, %i.bm
  %i.db = fmul double %7, %i.da
  %i.dc = fadd <4 x double> %i.cm, zeroinitializer
  %i.dd = fadd <4 x double> %i.cy, zeroinitializer
  %i.de = fadd double %i.db, 0.000000e+00
  %i.df = load double, ptr %i.p, align 8, !tbaa !109, !noalias !868 ; 2 uses
  %i.dg = load double, ptr %i.o, align 8, !tbaa !109, !noalias !868 ; 2 uses
  %12 = load <2 x double>, ptr %i.r, align 8, !tbaa !109, !noalias !868 ; 2 uses
  %i.dh = fadd double %i.bc, %i.df
  %i.di = extractelement <2 x double> %12, i64 0  ; 2 uses
  %i.dj = fsub double %i.dh, %i.di
  %i.dk = load <3 x double>, ptr %i.v, align 8, !tbaa !109, !noalias !868 ; 3 uses
  %i.dl = shufflevector <3 x double> %i.dk, <3 x double> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 1> ; 2 uses
  %i.dm = extractelement <3 x double> %i.dk, i64 2 ; 2 uses
  %i.dn = fsub double %i.dj, %i.dm
  %i.do = insertelement <4 x double> poison, double %6, i64 0
  %i.dp = shufflevector <4 x double> %i.do, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dq = insertelement <4 x double> poison, double %i.dn, i64 0
  %i.dr = load <2 x double>, ptr %i.w, align 8, !tbaa !109, !noalias !868 ; 3 uses
  %i.ds = extractelement <2 x double> %i.dr, i64 0
  %i.dt = fneg double %i.ds
  %i.du = load <2 x double>, ptr %i.u, align 8, !tbaa !109, !noalias !868 ; 3 uses
  %i.dv = extractelement <2 x double> %i.du, i64 0
  %i.dw = fadd double %i.av, %i.dv
  %i.dx = load <2 x double>, ptr %i.q, align 8, !tbaa !109, !noalias !868 ; 4 uses
  %i.dy = extractelement <2 x double> %i.dx, i64 1
  %i.dz = fadd double %i.dw, %i.dy
  %i.ea = fadd double %i.dz, %i.aw
  %i.eb = insertelement <4 x double> %i.dq, double %i.ea, i64 1
  %i.ec = insertelement <2 x double> %i.dr, double %i.av, i64 0
  %i.ed = fsub <2 x double> %i.du, %i.ec
  %i.ee = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ef = fsub <2 x double> %i.ee, %i.dx
  %i.eg = fadd <2 x double> %i.ee, %i.dx
  %i.eh = shufflevector <2 x double> %i.ef, <2 x double> %i.eg, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ei = shufflevector <3 x double> %i.dk, <3 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.ej = insertelement <2 x double> %i.ei, double %i.aw, i64 1 ; 2 uses
  %i.ek = fadd <2 x double> %i.eh, %i.ej
  %i.el = fsub <2 x double> %i.eh, %i.ej
  %i.em = shufflevector <2 x double> %i.ek, <2 x double> %i.el, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.en = shufflevector <4 x double> %i.eb, <4 x double> %i.em, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eo = fmul <4 x double> %i.dp, %i.en
  %13 = fsub double %i.dt, %i.dg
  %i.ep = insertelement <2 x double> %i.du, double %i.dg, i64 0
  %i.eq = fadd <2 x double> %i.dr, %i.ep
  %14 = fsub double %i.bc, %i.df                  ; 2 uses
  %i.er = insertelement <4 x double> poison, double %14, i64 0
  %i.es = shufflevector <2 x double> %i.eq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.et = shufflevector <4 x double> %i.er, <4 x double> %i.es, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.eu = insertelement <4 x double> %i.et, double %13, i64 3
  %i.ev = shufflevector <2 x double> %12, <2 x double> %i.dx, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ew = fadd <4 x double> %i.eu, %i.ev          ; 2 uses
  %i.ex = fsub <4 x double> %i.ew, %i.dl
  %i.ey = fadd <4 x double> %i.ew, %i.dl
  %i.ez = shufflevector <4 x double> %i.ex, <4 x double> %i.ey, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.fa = fmul <4 x double> %i.dp, %i.ez
  %i.fb = fsub double %14, %i.di
  %i.fc = fadd double %i.fb, %i.dm
  %i.fd = fmul double %6, %i.fc
  %i.fe = fadd <4 x double> %i.dc, %i.eo
  %i.ff = fadd <4 x double> %i.dd, %i.fa
  %i.fg = fadd double %i.de, %i.fd
  %i.fh = load double, ptr %i.aa, align 8, !tbaa !109, !noalias !869 ; 2 uses
  %i.fi = load double, ptr %i.z, align 8, !tbaa !109, !noalias !869 ; 2 uses
  %15 = load <2 x double>, ptr %i.ac, align 8, !tbaa !109, !noalias !869 ; 2 uses
  %i.fj = fadd double %i.bd, %i.fh
  %i.fk = extractelement <2 x double> %15, i64 0  ; 2 uses
  %i.fl = fsub double %i.fj, %i.fk
  %i.fm = load <3 x double>, ptr %i.ag, align 8, !tbaa !109, !noalias !869 ; 3 uses
  %i.fn = shufflevector <3 x double> %i.fm, <3 x double> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 1> ; 2 uses
  %i.fo = extractelement <3 x double> %i.fm, i64 2 ; 2 uses
  %i.fp = fsub double %i.fl, %i.fo
  %i.fq = insertelement <4 x double> poison, double %5, i64 0
  %i.fr = shufflevector <4 x double> %i.fq, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fs = insertelement <4 x double> poison, double %i.fp, i64 0
  %i.ft = load <2 x double>, ptr %i.ah, align 8, !tbaa !109, !noalias !869 ; 3 uses
  %i.fu = extractelement <2 x double> %i.ft, i64 0
  %i.fv = fneg double %i.fu
  %i.fw = load <2 x double>, ptr %i.af, align 8, !tbaa !109, !noalias !869 ; 3 uses
  %i.fx = extractelement <2 x double> %i.fw, i64 0
  %i.fy = fadd double %i.ax, %i.fx
  %i.fz = load <2 x double>, ptr %i.ab, align 8, !tbaa !109, !noalias !869 ; 4 uses
  %i.ga = extractelement <2 x double> %i.fz, i64 1
  %i.gb = fadd double %i.fy, %i.ga
  %i.gc = fadd double %i.gb, %i.ay
  %i.gd = insertelement <4 x double> %i.fs, double %i.gc, i64 1
  %i.ge = insertelement <2 x double> %i.ft, double %i.ax, i64 0
  %i.gf = fsub <2 x double> %i.fw, %i.ge
  %i.gg = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gh = fsub <2 x double> %i.gg, %i.fz
  %i.gi = fadd <2 x double> %i.gg, %i.fz
  %i.gj = shufflevector <2 x double> %i.gh, <2 x double> %i.gi, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gk = shufflevector <3 x double> %i.fm, <3 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.gl = insertelement <2 x double> %i.gk, double %i.ay, i64 1 ; 2 uses
  %i.gm = fadd <2 x double> %i.gj, %i.gl
  %i.gn = fsub <2 x double> %i.gj, %i.gl
  %i.go = shufflevector <2 x double> %i.gm, <2 x double> %i.gn, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.gp = shufflevector <4 x double> %i.gd, <4 x double> %i.go, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gq = fmul <4 x double> %i.fr, %i.gp
  %16 = fsub double %i.fv, %i.fi
  %i.gr = insertelement <2 x double> %i.fw, double %i.fi, i64 0
  %i.gs = fadd <2 x double> %i.ft, %i.gr
  %17 = fsub double %i.bd, %i.fh                  ; 2 uses
  %i.gt = insertelement <4 x double> poison, double %17, i64 0
  %i.gu = shufflevector <2 x double> %i.gs, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gv = shufflevector <4 x double> %i.gt, <4 x double> %i.gu, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.gw = insertelement <4 x double> %i.gv, double %16, i64 3
  %i.gx = shufflevector <2 x double> %15, <2 x double> %i.fz, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.gy = fadd <4 x double> %i.gw, %i.gx          ; 2 uses
  %i.gz = fsub <4 x double> %i.gy, %i.fn
  %i.ha = fadd <4 x double> %i.gy, %i.fn
  %i.hb = shufflevector <4 x double> %i.gz, <4 x double> %i.ha, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.hc = fmul <4 x double> %i.fr, %i.hb
  %i.hd = fsub double %17, %i.fk
  %i.he = fadd double %i.hd, %i.fo
  %i.hf = fmul double %5, %i.he
  %i.hg = fadd <4 x double> %i.fe, %i.gq
  %i.hh = fadd <4 x double> %i.ff, %i.hc
  %i.hi = fadd double %i.fg, %i.hf
  %i.hj = load double, ptr %i.al, align 8, !tbaa !109, !noalias !870 ; 2 uses
  %i.hk = load double, ptr %i.ak, align 8, !tbaa !109, !noalias !870 ; 2 uses
  %18 = load <2 x double>, ptr %i.an, align 8, !tbaa !109, !noalias !870 ; 2 uses
  %19 = load <3 x double>, ptr %i.ar, align 8, !tbaa !109, !noalias !870 ; 3 uses
  %20 = shufflevector <3 x double> %19, <3 x double> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 1> ; 2 uses
  %21 = fadd double %i.be, %i.hj
  %22 = extractelement <2 x double> %18, i64 0    ; 2 uses
  %23 = fsub double %21, %22
  %i.hl = extractelement <3 x double> %19, i64 2  ; 2 uses
  %i.hm = fsub double %23, %i.hl
  %i.hn = insertelement <4 x double> poison, double %4, i64 0
  %i.ho = shufflevector <4 x double> %i.hn, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hp = insertelement <4 x double> poison, double %i.hm, i64 0
  %i.hq = load <2 x double>, ptr %i.as, align 8, !tbaa !109, !noalias !870 ; 3 uses
  %i.hr = extractelement <2 x double> %i.hq, i64 0
  %i.hs = fneg double %i.hr
  %i.ht = load <2 x double>, ptr %i.aq, align 8, !tbaa !109, !noalias !870 ; 3 uses
  %i.hu = extractelement <2 x double> %i.ht, i64 0
  %i.hv = fadd double %i.az, %i.hu
  %i.hw = load <2 x double>, ptr %i.am, align 8, !tbaa !109, !noalias !870 ; 4 uses
  %i.hx = extractelement <2 x double> %i.hw, i64 1
  %i.hy = fadd double %i.hv, %i.hx
  %i.hz = fadd double %i.hy, %i.ba
  %i.ia = insertelement <4 x double> %i.hp, double %i.hz, i64 1
  %i.ib = insertelement <2 x double> %i.hq, double %i.az, i64 0
  %i.ic = fsub <2 x double> %i.ht, %i.ib
  %i.id = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ie = fsub <2 x double> %i.id, %i.hw
  %i.if = fadd <2 x double> %i.id, %i.hw
  %i.ig = shufflevector <2 x double> %i.ie, <2 x double> %i.if, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ih = shufflevector <3 x double> %19, <3 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.ii = insertelement <2 x double> %i.ih, double %i.ba, i64 1 ; 2 uses
  %i.ij = fadd <2 x double> %i.ig, %i.ii
  %i.ik = fsub <2 x double> %i.ig, %i.ii
  %i.il = shufflevector <2 x double> %i.ij, <2 x double> %i.ik, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.im = shufflevector <4 x double> %i.ia, <4 x double> %i.il, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.in = fmul <4 x double> %i.ho, %i.im
  %24 = fsub double %i.hs, %i.hk
  %i.io = insertelement <2 x double> %i.ht, double %i.hk, i64 0
  %i.ip = fadd <2 x double> %i.hq, %i.io
  %25 = fsub double %i.be, %i.hj                  ; 2 uses
  %i.iq = insertelement <4 x double> poison, double %25, i64 0
  %i.ir = shufflevector <2 x double> %i.ip, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.is = shufflevector <4 x double> %i.iq, <4 x double> %i.ir, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.it = insertelement <4 x double> %i.is, double %24, i64 3
  %i.iu = shufflevector <2 x double> %18, <2 x double> %i.hw, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.iv = fadd <4 x double> %i.it, %i.iu          ; 2 uses
  %i.iw = fsub <4 x double> %i.iv, %20
  %i.ix = fadd <4 x double> %i.iv, %20
  %i.iy = shufflevector <4 x double> %i.iw, <4 x double> %i.ix, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.iz = fmul <4 x double> %i.ho, %i.iy
  %i.ja = fsub double %25, %22
  %i.jb = fadd double %i.ja, %i.hl
  %i.jc = fmul double %4, %i.jb
  %i.jd = fadd <4 x double> %i.hg, %i.in
  store <4 x double> %i.jd, ptr %0, align 8, !tbaa !109
  %i.je = fadd <4 x double> %i.hh, %i.iz
  store <4 x double> %i.je, ptr %i.k, align 8, !tbaa !109
  %i.jf = fadd double %i.hi, %i.jc
  store double %i.jf, ptr %i.l, align 8, !tbaa !209
  ret void
}

declare void @_ZN12colvarmodule8rotationC1ERKNS_10quaternionE(ptr noundef nonnull align 8 dereferenceable(568), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZNK12colvarmodule10atom_group9positionsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.34") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1712) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.d = load i8, ptr %i.c, align 8, !tbaa !130, !range !55, !noundef !56
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 60, ptr %i.b, align 8, !tbaa !35
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.g, ptr %2, align 8, !tbaa !42
  %i.h = load i64, ptr %i.b, align 8, !tbaa !35   ; 3 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.g, ptr noundef nonnull align 1 dereferenceable(60) @.str.124, i64 60, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.k = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 4)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %.noexc
  %i.l = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.f
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.f, align 8, !tbaa !32
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.e

bb.c:                                             ; preds = %.noexc.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

bb.d:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.f
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.d
  %i.t = load i64, ptr %i.f, align 8, !tbaa !32
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %i.q, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.o

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 257
  %i.y = load i8, ptr %i.x, align 1, !tbaa !53, !range !55, !noundef !56
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.noexc.i13, label %bb.i

.noexc.i13:                                       ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.aa, ptr %3, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 70, ptr %i.a, align 8, !tbaa !35
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc14 unwind label %bb.g   ; 3 uses

.noexc14:                                         ; preds = %.noexc.i13
  store ptr %i.ab, ptr %3, align 8, !tbaa !42
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !35  ; 3 uses
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(70) %i.ab, ptr noundef nonnull align 1 dereferenceable(70) @.str.125, i64 70, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.af = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 4)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %.noexc14
  %i.ag = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.aa
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.f
  %i.ai = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.i

bb.g:                                             ; preds = %.noexc.i13
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.h:                                             ; preds = %.noexc14
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.aa
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.h
  %i.ao = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.g
  %.pn6 = phi { ptr, i32 } [ %i.ak, %bb.g ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.al, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.o

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1176 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 1184 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !116 ; 2 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !114 ; 3 uses
  %i.au = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = icmp ugt i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %.noexc.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !165

.noexc.i.i:                                       ; preds = %bb.j
  call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.j
  %i.ay = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #30
  %.pre = load ptr, ptr %i.aq, align 8, !tbaa !138 ; 2 uses
  %.pre23 = load ptr, ptr %i.ar, align 8, !tbaa !138
  %.pre24 = ptrtoint ptr %.pre23 to i64
  %.pre25 = ptrtoint ptr %.pre to i64
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %bb.i
  %.pre-phi26 = phi i64 [ %.pre25, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ], [ %i.av, %bb.i ]
  %.pre-phi = phi i64 [ %.pre24, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ], [ %i.au, %bb.i ]
  %i.az = phi ptr [ %.pre, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ], [ %i.at, %bb.i ] ; 2 uses
  %i.ba = phi ptr [ %i.ay, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.i ] ; 5 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !114
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.aw
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !115
  %i.bd = sub i64 %.pre-phi, %.pre-phi26          ; 4 uses
  %i.be = icmp sgt i64 %i.bd, 8
  br i1 %i.be, label %bb.l, label %bb.m, !prof !166

bb.l:                                             ; preds = %bb.k
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ba, ptr align 8 %i.az, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

bb.m:                                             ; preds = %bb.k
  %i.bf = icmp eq i64 %i.bd, 8
  br i1 %i.bf, label %bb.n, label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

bb.n:                                             ; preds = %bb.m
end_hunk_1
