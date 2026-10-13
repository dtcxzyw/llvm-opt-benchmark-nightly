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
  %i.n = getelementptr i8, ptr %i.d, i64 %i.m     ; 3 uses
  %i.o = getelementptr i8, ptr %i.d, i64 %.idx.i  ; 3 uses
  %i.p = mul i64 %i.b, 24
  %i.q = getelementptr i8, ptr %i.d, i64 %i.p     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %bound046 = icmp ult ptr %i.d, %i.q
  %bound147 = icmp ult ptr %i.o, %i.n
  %found.conflict48 = and i1 %bound046, %bound147
  %bound049 = icmp ult ptr %i.d, %i.r
  %bound150 = icmp ult ptr %1, %i.n
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx52 = or i1 %found.conflict48, %found.conflict51
  %bound057 = icmp ult ptr %i.n, %i.r
  %bound158 = icmp ult ptr %1, %i.o
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx60 = or i1 %conflict.rdx52, %found.conflict59
  %bound061 = icmp ult ptr %i.o, %i.r
  %bound162 = icmp ult ptr %1, %i.q
  %found.conflict63 = and i1 %bound061, %bound162
  %conflict.rdx64 = or i1 %conflict.rdx60, %found.conflict63
  br i1 %conflict.rdx64, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, -2                       ; 3 uses
  %i.s = load <2 x double>, ptr %1, align 8
  %broadcast.splat67 = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = load <2 x double>, ptr %i.e, align 8
  %broadcast.splat = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = load <2 x double>, ptr %i.f, align 8
  %broadcast.splat70 = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = load <2 x double>, ptr %i.g, align 8
  %broadcast.splat74 = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = load <2 x double>, ptr %i.h, align 8
  %broadcast.splat72 = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = load <2 x double>, ptr %i.i, align 8
  %broadcast.splat76 = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = load <2 x double>, ptr %i.j, align 8
  %broadcast.splat80 = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = load <2 x double>, ptr %i.k, align 8
  %broadcast.splat78 = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = load double, ptr %i.l, align 8, !tbaa !209, !alias.scope !731
  %broadcast.splatinsert81 = insertelement <2 x double> poison, double %i.aa, i64 0
  %broadcast.splat82 = shufflevector <2 x double> %broadcast.splatinsert81, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 4 uses
  %wide.load = load <2 x double>, ptr %i.ab, align 8, !tbaa !109, !alias.scope !732, !noalias !733 ; 3 uses
  %i.ac = getelementptr [8 x i8], ptr %i.ab, i64 %i.b ; 2 uses
  %wide.load65 = load <2 x double>, ptr %i.ac, align 8, !tbaa !109, !alias.scope !734, !noalias !735 ; 3 uses
  %i.ad = fmul <2 x double> %broadcast.splat, %wide.load65
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat67, <2 x double> %wide.load, <2 x double> %i.ad)
  %i.af = getelementptr i8, ptr %i.ab, i64 %.idx.i ; 2 uses
  %wide.load68 = load <2 x double>, ptr %i.af, align 8, !tbaa !109, !alias.scope !736, !noalias !731 ; 3 uses
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat70, <2 x double> %wide.load68, <2 x double> %i.ae)
  %i.ah = fmul <2 x double> %wide.load65, %broadcast.splat72
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat74, <2 x double> %wide.load, <2 x double> %i.ah)
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat76, <2 x double> %wide.load68, <2 x double> %i.ai)
  %i.ak = fmul <2 x double> %wide.load65, %broadcast.splat78
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat80, <2 x double> %wide.load, <2 x double> %i.ak)
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat82, <2 x double> %wide.load68, <2 x double> %i.al)
  store <2 x double> %i.ag, ptr %i.ab, align 8, !tbaa !109, !alias.scope !732, !noalias !733
  store <2 x double> %i.aj, ptr %i.ac, align 8, !tbaa !109, !alias.scope !734, !noalias !735
  store <2 x double> %i.am, ptr %i.af, align 8, !tbaa !109, !alias.scope !736, !noalias !731
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !729

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.029.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.029 = phi i64 [ %i.br, %scalar.ph ], [ %.029.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.029 ; 4 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !109 ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %i.ao, i64 %i.b ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !109 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ao, i64 %.idx.i ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !109 ; 2 uses
  %i.au = load <4 x double>, ptr %1, align 8, !tbaa !109 ; 3 uses
  %i.av = load <2 x double>, ptr %i.h, align 8, !tbaa !109
  %i.aw = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = shufflevector <2 x double> %i.av, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.az = shufflevector <4 x double> %i.au, <4 x double> %i.ay, <2 x i32> <i32 1, i32 4>
  %i.ba = fmul <2 x double> %i.ax, %i.az
  %i.bb = shufflevector <4 x double> %i.au, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.bc = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.bd, <2 x double> %i.ba)
  %i.bf = shufflevector <4 x double> %i.au, <4 x double> %i.ay, <2 x i32> <i32 2, i32 5>
  %i.bg = insertelement <2 x double> poison, double %i.at, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.bh, <2 x double> %i.be) ; 2 uses
  %i.bj = load double, ptr %i.j, align 8, !tbaa !737
  %i.bk = load double, ptr %i.k, align 8, !tbaa !738
  %i.bl = fmul double %i.ar, %i.bk
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.ap, double %i.bl)
  %i.bn = load double, ptr %i.l, align 8, !tbaa !209
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.at, double %i.bm)
  %i.bp = extractelement <2 x double> %i.bi, i64 0
  store double %i.bp, ptr %i.ao, align 8, !tbaa !109
  %i.bq = extractelement <2 x double> %i.bi, i64 1
  store double %i.bq, ptr %i.aq, align 8, !tbaa !109
  store double %i.bo, ptr %i.as, align 8, !tbaa !109
  %i.br = add nuw i64 %.029, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %i.b
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
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.ab, <2 x double> %i.aa)
  %i.ad = fmul <2 x double> %i.ac, splat (double 2.000000e+00) ; 2 uses
  %i.ae = fneg double %i.v                        ; 2 uses
  %i.af = insertelement <2 x double> %i.y, double %i.ae, i64 0
  %i.ag = fmul <2 x double> %i.n, %i.af
  %i.ah = insertelement <2 x double> poison, double %i.p, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.ai, <2 x double> %i.ag) ; 2 uses
  %3 = extractelement <2 x double> %i.aj, i64 1
  %i.ak = fmul double %3, 2.000000e+00
  %4 = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fmul double %i.v, %i.ae
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.ap = fneg double %i.p                        ; 3 uses
  %i.aq = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.p, i64 1
  %i.as = fmul <2 x double> %i.n, %i.ar
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %4, <2 x double> %i.at) ; 2 uses
  %i.av = shufflevector <2 x double> %i.au, <2 x double> %i.aj, <2 x i32> <i32 0, i32 2>
  %i.aw = fmul <2 x double> %i.av, splat (double 2.000000e+00)
  %5 = shufflevector <2 x double> %i.n, <2 x double> %i.au, <2 x i32> <i32 1, i32 3>
  %i.ax = shufflevector <2 x double> %i.n, <2 x double> <double poison, double 2.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ay = fmul <2 x double> %5, %i.ax             ; 2 uses
  %i.az = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %i.al) ; 2 uses
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.w, double %i.t, double %i.az)
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.p, double %i.p, double %i.ba)
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.t, double %i.t, double %i.az)
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.p, double %i.bc)
  %6 = extractelement <2 x double> %i.ay, i64 0
  %i.be = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %6)
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.w, double %i.t, double %i.be)
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.p, double %i.bf)
  %i.bh = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bi = insertelement <2 x double> %i.bh, double %i.bd, i64 1
  %i.bj = fmul <2 x double> %i.bi, zeroinitializer
  %i.bk = insertelement <2 x double> poison, double %i.bg, i64 0
  %7 = insertelement <2 x double> %i.bk, double %i.ak, i64 1
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> zeroinitializer, <2 x double> %i.bj)
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> zeroinitializer, <2 x double> %i.bl) ; 2 uses
  %i.bn = extractelement <2 x double> %i.ad, i64 0
  %i.bo = fmul double %i.bn, 0.000000e+00
  %i.bp = extractelement <2 x double> %i.ad, i64 1
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double 0.000000e+00, double %i.bo)
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bb, double 0.000000e+00, double %i.bq)
  %i.bs = extractelement <2 x double> %i.bm, i64 0
  %i.bt = extractelement <2 x double> %i.bm, i64 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph40, %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit
  %.01639 = phi i64 [ 0, %.lr.ph40 ], [ %i.cm, %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !750
  store ptr %i.am, ptr %2, align 8, !tbaa !28, !noalias !750
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !750
  store i64 71, ptr %i.b, align 8, !tbaa !35, !noalias !750
  %i.bu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0), !noalias !750 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !42, !noalias !750
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !35, !noalias !750 ; 3 uses
  store i64 %i.bv, ptr %i.am, align 8, !tbaa !32, !noalias !750
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %i.bu, ptr noundef nonnull align 1 dereferenceable(71) @.str.119, i64 71, i1 false), !noalias !750
  store i64 %i.bv, ptr %i.an, align 8, !tbaa !31, !noalias !750
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bv
  store i8 0, ptr %i.bw, align 1, !tbaa !32, !noalias !750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !750
  %i.bx = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.e unwind label %bb.f, !noalias !750 ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.by = load ptr, ptr %2, align 8, !tbaa !42, !noalias !750 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.am
  br i1 %i.bz, label %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.ca = load i64, ptr %i.am, align 8, !tbaa !32, !noalias !750
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #29, !noalias !750
  br label %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit

bb.f:                                             ; preds = %bb.d
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load ptr, ptr %2, align 8, !tbaa !42, !noalias !750 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.am
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.f
  %i.cf = load i64, ptr %i.am, align 8, !tbaa !32, !noalias !750
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #29, !noalias !750
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ], [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i18 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !750
  br label %common.resume

_ZN17colvarproxy_atoms17get_atom_velocityEi.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !750
  %i.ch = load ptr, ptr %i.ao, align 8, !tbaa !114
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.01639 ; 3 uses
  store double %i.bs, ptr %i.ci, align 8, !tbaa !109
  %i.cj = load i64, ptr %i.r, align 8, !tbaa !108 ; 3 uses
  %i.ck = getelementptr [8 x i8], ptr %i.ci, i64 %i.cj
  store double %i.bt, ptr %i.ck, align 8, !tbaa !109
  %.idx.i = shl i64 %i.cj, 4
  %i.cl = getelementptr i8, ptr %i.ci, i64 %.idx.i
  store double %i.br, ptr %i.cl, align 8, !tbaa !109
  %i.cm = add nuw i64 %.01639, 1                  ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cj
  br i1 %i.cn, label %bb.d, label %.loopexit, !llvm.loop !745

bb.g:                                             ; preds = %bb.b
  %i.co = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !108
  %.not = icmp eq i64 %i.cq, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1224
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit22
  %.038 = phi i64 [ 0, %.lr.ph ], [ %i.dm, %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit22 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28, !noalias !751
  store ptr %i.cr, ptr %1, align 8, !tbaa !28, !noalias !751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !751
  store i64 71, ptr %i.a, align 8, !tbaa !35, !noalias !751
  %i.cu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0), !noalias !751 ; 3 uses
  store ptr %i.cu, ptr %1, align 8, !tbaa !42, !noalias !751
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !35, !noalias !751 ; 3 uses
  store i64 %i.cv, ptr %i.cr, align 8, !tbaa !32, !noalias !751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %i.cu, ptr noundef nonnull align 1 dereferenceable(71) @.str.119, i64 71, i1 false), !noalias !751
  store i64 %i.cv, ptr %i.cs, align 8, !tbaa !31, !noalias !751
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cv
  store i8 0, ptr %i.cw, align 1, !tbaa !32, !noalias !751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !751
  %i.cx = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.i unwind label %bb.j, !noalias !751 ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.cy = load ptr, ptr %1, align 8, !tbaa !42, !noalias !751 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.cr
  br i1 %i.cz, label %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %bb.i
  %i.da = load i64, ptr %i.cr, align 8, !tbaa !32, !noalias !751
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #29, !noalias !751
  br label %_ZN17colvarproxy_atoms17get_atom_velocityEi.exit22

bb.j:                                             ; preds = %bb.h
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = load ptr, ptr %1, align 8, !tbaa !42, !noalias !751 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.cr
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i17: ; preds = %bb.j
  %i.df = load i64, ptr %i.cr, align 8, !tbaa !32, !noalias !751
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #29, !noalias !751
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i18: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28, !noalias !751
  br label %common.resume

_ZN17colvarproxy_atoms17get_atom_velocityEi.exit22: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28, !noalias !751
  %i.dh = load ptr, ptr %i.ct, align 8, !tbaa !114
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.038 ; 3 uses
  store double 0.000000e+00, ptr %i.di, align 8, !tbaa !109
  %i.dj = load i64, ptr %i.cp, align 8, !tbaa !108 ; 3 uses
  %i.dk = getelementptr [8 x i8], ptr %i.di, i64 %i.dj
  store double 0.000000e+00, ptr %i.dk, align 8, !tbaa !109
  %.idx.i23 = shl i64 %i.dj, 4
  %i.dl = getelementptr i8, ptr %i.di, i64 %.idx.i23
  store double 0.000000e+00, ptr %i.dl, align 8, !tbaa !109
  %i.dm = add nuw i64 %.038, 1                    ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dj
  br i1 %i.dn, label %bb.h, label %.loopexit, !llvm.loop !748

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
end_hunk_0
