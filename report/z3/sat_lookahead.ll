Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_lookahead?download=true
inline.NumInlined: 2556
inline.NumDeleted: 652
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN3sat9lookahead7l_scoreENS_7literalERK7svectorIdjEddd:bb.a
bb.f:                                             ; preds = %bb.e, %bb.d
  %.139.1 = phi double [ %i.bm, %bb.e ], [ %.139, %bb.d ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.02843, i64 8 ; 2 uses
  %.not.1 = icmp eq ptr %i.bn, %i.k
  br i1 %.not.1, label %._crit_edge, label %.lr.ph.new

bb.g:                                             ; preds = %.lr.ph50, %bb.g
  %.02549 = phi ptr [ %i.am, %.lr.ph50 ], [ %i.bz, %bb.g ] ; 3 uses
  %.02648 = phi double [ 0.000000e+00, %.lr.ph50 ], [ %i.by, %bb.g ]
  %.02747 = phi i32 [ %i.ai, %.lr.ph50 ], [ %i.bo, %bb.g ]
  %i.bo = add i32 %.02747, -1                     ; 2 uses
  %i.bp = load i32, ptr %.02549, align 4, !tbaa !111
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !280
  %i.bt = getelementptr inbounds nuw i8, ptr %.02549, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !111
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !280
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bx, double %.02648) ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.02549, i64 8 ; 2 uses
  %.not29 = icmp eq ptr %i.bz, %i.as
  %.not30 = icmp eq i32 %i.bo, 0
  %or.cond = select i1 %.not29, i1 true, i1 %.not30
  br i1 %or.cond, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.g, %._crit_edge, %_ZN6vectorIN3sat9lookahead6binaryELb0EjE3endEv.exit
  %.026.lcssa = phi double [ 0.000000e+00, %_ZN6vectorIN3sat9lookahead6binaryELb0EjE3endEv.exit ], [ 0.000000e+00, %._crit_edge ], [ %i.by, %bb.g ]
  %i.ca = tail call double @llvm.fmuladd.f64(double %5, double %.0.lcssa, double 1.000000e-01)
  %i.cb = tail call double @llvm.fmuladd.f64(double %4, double %.026.lcssa, double %i.ca) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !280 ; 2 uses
  %i.ce = fcmp olt double %i.cb, %i.cd
  %.sroa.speculated = select i1 %i.ce, double %i.cb, double %i.cd
  ret double %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat9lookahead8init_sccEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1160) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !250
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !250
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN3sat9lookahead10inc_bstampEv.exit

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 8, !tbaa !250
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !98   ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN3sat9lookahead10inc_bstampEv.exit, label %_ZN6vectorIjLb0EjE3endEv.exit.i.i

_ZN6vectorIjLb0EjE3endEv.exit.i.i:                ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !91   ; 2 uses
  %.not6.i.i = icmp eq i32 %i.i, 0
  br i1 %.not6.i.i, label %_ZN3sat9lookahead10inc_bstampEv.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN6vectorIjLb0EjE3endEv.exit.i.i
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.f, i8 0, i64 %i.k, i1 false), !tbaa !91
  br label %_ZN3sat9lookahead10inc_bstampEv.exit

_ZN3sat9lookahead10inc_bstampEv.exit:             ; preds = %bb.a, %bb.b, %_ZN6vectorIjLb0EjE3endEv.exit.i.i, %.lr.ph.i.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !266  ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.critedge19, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.lr.ph

_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.lr.ph: ; preds = %_ZN3sat9lookahead10inc_bstampEv.exit
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !91
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit15.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !269  ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !98   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN3sat9lookahead13init_dfs_infoENS_7literalE.exit13
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN3sat9lookahead13init_dfs_infoENS_7literalE.exit13 ] ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 8, !tbaa !267
  %i.w = shl i32 %i.v, 1                          ; 2 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.s, i64 %i.x ; 5 uses
  store i32 0, ptr %i.y, align 8, !tbaa !270
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 0, ptr %i.z, align 4, !tbaa !274
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 -2, ptr %i.aa, align 8, !tbaa !91
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !90 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZN3sat9lookahead13init_dfs_infoENS_7literalE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4
  store i32 0, ptr %i.ad, align 4, !tbaa !91
  br label %_ZN3sat9lookahead13init_dfs_infoENS_7literalE.exit

_ZN3sat9lookahead13init_dfs_infoENS_7literalE.exit: ; preds = %bb.c, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store <4 x i32> <i32 0, i32 -2, i32 -2, i32 -2>, ptr %i.ae, align 8, !tbaa !91
  %i.af = load i32, ptr %i.a, align 8, !tbaa !250
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.x
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !91
  %i.ah = or disjoint i32 %i.w, 1
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.s, i64 %i.ai ; 5 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !270
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.ak, align 4, !tbaa !274
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 -2, ptr %i.al, align 8, !tbaa !91
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !90 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i12, label %_ZN3sat9lookahead13init_dfs_infoENS_7literalE.exit13, label %bb.e

bb.e:                                             ; preds = %_ZN3sat9lookahead13init_dfs_infoENS_7literalE.exit
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -4
  store i32 0, ptr %i.ao, align 4, !tbaa !91
  br label %_ZN3sat9lookahead13init_dfs_infoENS_7literalE.exit13

_ZN3sat9lookahead13init_dfs_infoENS_7literalE.exit13: ; preds = %_ZN3sat9lookahead13init_dfs_infoENS_7literalE.exit, %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store <4 x i32> <i32 0, i32 -2, i32 -2, i32 -2>, ptr %i.ap, align 8, !tbaa !91
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !250
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ai
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !91
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = load i32, ptr %i.o, align 4, !tbaa !91
  %i.at = zext i32 %i.as to i64
  %i.au = icmp samesign ult i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %bb.c, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit15.preheader

_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit15.preheader: ; preds = %_ZN3sat9lookahead13init_dfs_infoENS_7literalE.exit13, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit.lr.ph
  br label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit15

_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit15: ; preds = %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit15.preheader, %.critedge
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %.critedge ], [ 0, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit15.preheader ] ; 3 uses
  %i.av = phi ptr [ %i.bf, %.critedge ], [ %i.m, %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit15.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !91
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv24, %i.ay
  br i1 %i.az, label %.critedge, label %.critedge19

.critedge19:                                      ; preds = %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit15, %.critedge, %_ZN3sat9lookahead10inc_bstampEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store <4 x i32> <i32 -2, i32 0, i32 -1, i32 -2>, ptr %i.ba, align 8, !tbaa !91
  ret void

.critedge:                                        ; preds = %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit15
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %indvars.iv24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !267
  %i.bd = shl i32 %i.bc, 1                        ; 2 uses
  tail call void @_ZN3sat9lookahead9init_arcsENS_7literalE(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 %i.bd)
  %i.be = or disjoint i32 %i.bd, 1
  tail call void @_ZN3sat9lookahead9init_arcsENS_7literalE(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 %i.be)
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %i.bf = load ptr, ptr %i.l, align 8, !tbaa !266 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.critedge19, label %_ZNK6vectorIN3sat9lookahead9candidateELb0EjE4sizeEv.exit15, !llvm.loop !311
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN3sat9lookahead7get_sccENS_7literalE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1160) %0, i32 %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269  ; 10 uses
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 -2, ptr %i.e, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !312
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %i.f, align 4, !tbaa !312
  store i32 %i.h, ptr %i.d, align 8, !tbaa !270
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 6 uses
  %.sroa.02.0.copyload.i = load i32, ptr %i.i, align 8, !tbaa !91
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %.sroa.02.0.copyload.i, ptr %i.j, align 4, !tbaa !91
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %1, ptr %i.k, align 8, !tbaa !91
  store i32 %1, ptr %i.i, align 8, !tbaa !91
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1132 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %.promoted = load i8, ptr %i.p, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN3sat9lookahead9found_sccENS_7literalE.exit, %bb.a
  %2 = phi i8 [ %.promoted, %bb.a ], [ 0, %_ZN3sat9lookahead9found_sccENS_7literalE.exit ] ; 7 uses
  %.sroa.033.0 = phi i32 [ %1, %bb.a ], [ %.sroa.033.1, %_ZN3sat9lookahead9found_sccENS_7literalE.exit ] ; 14 uses
  %i.q = zext i32 %.sroa.033.0 to i64
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.q ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.s, align 8, !tbaa !91 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !90   ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZNK3sat9lookahead7has_arcENS_7literalE.exit.thread, label %_ZNK3sat9lookahead7has_arcENS_7literalE.exit

_ZNK3sat9lookahead7has_arcENS_7literalE.exit:     ; preds = %bb.b
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !91
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !313  ; 3 uses
  %i.aa = icmp ugt i32 %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %_ZNK3sat9lookahead7has_arcENS_7literalE.exit.thread

bb.c:                                             ; preds = %_ZNK3sat9lookahead7has_arcENS_7literalE.exit
  %i.ab = add nuw i32 %i.z, 1
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !313
  %i.ac = zext i32 %i.z to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ac
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ad, align 4, !tbaa !91 ; 5 uses
  %i.ae = zext i32 %.sroa.0.0.copyload.i26 to i64
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.ae ; 5 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !270 ; 2 uses
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = zext i32 %.sroa.0.0.copyload.i to i64
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !270
  %i.ak = icmp ult i32 %i.ag, %i.aj
  br i1 %i.ak, label %bb.e, label %_ZN3sat9lookahead9found_sccENS_7literalE.exit

bb.e:                                             ; preds = %bb.d
  store i32 %.sroa.0.0.copyload.i26, ptr %i.s, align 8, !tbaa !91
  br label %_ZN3sat9lookahead9found_sccENS_7literalE.exit

bb.f:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 %.sroa.033.0, ptr %i.al, align 8, !tbaa !91
  %i.am = load i32, ptr %i.f, align 4, !tbaa !312
  %i.an = add i32 %i.am, 1                        ; 2 uses
  store i32 %i.an, ptr %i.f, align 4, !tbaa !312
  store i32 %i.an, ptr %i.af, align 8, !tbaa !270
  %.sroa.02.0.copyload.i27 = load i32, ptr %i.i, align 8, !tbaa !91
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  store i32 %.sroa.02.0.copyload.i27, ptr %i.ao, align 4, !tbaa !91
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i32 %.sroa.0.0.copyload.i26, ptr %i.ap, align 8, !tbaa !91
  store i32 %.sroa.0.0.copyload.i26, ptr %i.i, align 8, !tbaa !91
  br label %_ZN3sat9lookahead9found_sccENS_7literalE.exit

_ZNK3sat9lookahead7has_arcENS_7literalE.exit.thread: ; preds = %bb.b, %_ZNK3sat9lookahead7has_arcENS_7literalE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i28 = load i32, ptr %i.aq, align 8, !tbaa !91 ; 5 uses
  %i.ar = icmp eq i32 %.sroa.033.0, %.sroa.0.0.copyload.i
  br i1 %i.ar, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZNK3sat9lookahead7has_arcENS_7literalE.exit.thread
  %i.as = load i32, ptr %i.i, align 8, !tbaa !91  ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 28 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.at, align 4, !tbaa !91
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.i, align 8, !tbaa !91
  %i.au = lshr i32 %.sroa.033.0, 1
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !280
  %i.ay = load i32, ptr %i.n, align 8, !tbaa !314
  store i32 %i.ay, ptr %i.r, align 8, !tbaa !270
  %.sroa.020.0.copyload.i = load i32, ptr %i.o, align 4, !tbaa !91
  store i32 %.sroa.020.0.copyload.i, ptr %i.at, align 4, !tbaa !91
  store i32 %i.as, ptr %i.o, align 4, !tbaa !91
  %.not55.i = icmp eq i32 %i.as, %.sroa.033.0
  br i1 %.not55.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %.sroa.025.058.i = phi i32 [ %.sroa.025.1.i, %bb.i ], [ %.sroa.033.0, %bb.g ] ; 2 uses
  %.057.i = phi double [ %.1.i, %bb.i ], [ %i.ax, %bb.g ] ; 2 uses
  %.sroa.034.056.i = phi i32 [ %.sroa.0.0.copyload.i31.i, %bb.i ], [ %i.as, %bb.g ] ; 4 uses
  %i.az = xor i32 %.sroa.034.056.i, %.sroa.033.0
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  store i8 1, ptr %i.p, align 8, !tbaa !102
  br label %.loopexit.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.bb = load i32, ptr %i.n, align 8, !tbaa !314
  %i.bc = zext i32 %.sroa.034.056.i to i64
  %i.bd = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.bc ; 3 uses
  store i32 %i.bb, ptr %i.bd, align 8, !tbaa !270
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i32 %.sroa.033.0, ptr %i.be, align 8, !tbaa !91
  %i.bf = lshr i32 %.sroa.034.056.i, 1
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !280 ; 2 uses
  %i.bj = fcmp ogt double %i.bi, %.057.i          ; 2 uses
  %.1.i = select i1 %i.bj, double %i.bi, double %.057.i
  %.sroa.025.1.i = select i1 %i.bj, i32 %.sroa.034.056.i, i32 %.sroa.025.058.i ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  %.sroa.0.0.copyload.i31.i = load i32, ptr %i.bk, align 4, !tbaa !91 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload.i31.i, %.sroa.033.0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !315

.loopexit.i:                                      ; preds = %bb.i, %bb.h, %bb.g
  %3 = phi i8 [ 1, %bb.h ], [ %2, %bb.g ], [ %2, %bb.i ] ; 2 uses
  %.sroa.025.054.i = phi i32 [ %.sroa.025.058.i, %bb.h ], [ %.sroa.033.0, %bb.g ], [ %.sroa.025.1.i, %bb.i ]
  store i32 %.sroa.033.0, ptr %i.aq, align 8, !tbaa !91
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 36 ; 2 uses
  store i32 %.sroa.025.054.i, ptr %i.bl, align 4, !tbaa !91
  %i.bm = xor i32 %.sroa.033.0, 1
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !270
  %i.bq = load i32, ptr %i.n, align 8, !tbaa !314
  %.not52.i = icmp ult i32 %i.bp, %i.bq
  br i1 %.not52.i, label %_ZN3sat9lookahead9found_sccENS_7literalE.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.0.0.copyload.i32.i = load i32, ptr %i.br, align 8, !tbaa !91
  %i.bs = zext i32 %.sroa.0.0.copyload.i32.i to i64
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 36
  %.sroa.0.0.copyload.i33.i = load i32, ptr %i.bu, align 4, !tbaa !91
  %i.bv = xor i32 %.sroa.0.0.copyload.i33.i, 1
  store i32 %i.bv, ptr %i.bl, align 4, !tbaa !91
  br label %_ZN3sat9lookahead9found_sccENS_7literalE.exit

bb.k:                                             ; preds = %_ZNK3sat9lookahead7has_arcENS_7literalE.exit.thread
  %i.bw = zext i32 %.sroa.0.0.copyload.i to i64
  %i.bx = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !270
  %i.bz = zext i32 %.sroa.0.0.copyload.i28 to i64
  %i.ca = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i29 = load i32, ptr %i.cb, align 8, !tbaa !91
  %i.cc = zext i32 %.sroa.0.0.copyload.i29 to i64
  %i.cd = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !270
  %i.cf = icmp ult i32 %i.by, %i.ce
  br i1 %i.cf, label %bb.l, label %_ZN3sat9lookahead9found_sccENS_7literalE.exit

bb.l:                                             ; preds = %bb.k
  store i32 %.sroa.0.0.copyload.i, ptr %i.cb, align 8, !tbaa !91
  br label %_ZN3sat9lookahead9found_sccENS_7literalE.exit

_ZN3sat9lookahead9found_sccENS_7literalE.exit:    ; preds = %bb.l, %bb.k, %.loopexit.i, %bb.j, %bb.f, %bb.e, %bb.d
  %4 = phi i8 [ %2, %bb.f ], [ %2, %bb.e ], [ %2, %bb.d ], [ %3, %bb.j ], [ %3, %.loopexit.i ], [ %2, %bb.k ], [ %2, %bb.l ]
  %.sroa.033.1 = phi i32 [ %.sroa.0.0.copyload.i26, %bb.f ], [ %.sroa.033.0, %bb.e ], [ %.sroa.033.0, %bb.d ], [ %.sroa.0.0.copyload.i28, %bb.j ], [ %.sroa.0.0.copyload.i28, %.loopexit.i ], [ %.sroa.0.0.copyload.i28, %bb.k ], [ %.sroa.0.0.copyload.i28, %bb.l ] ; 2 uses
  %.not44 = icmp eq i32 %.sroa.033.1, -2
  %i.cg = trunc nuw i8 %4 to i1
  %or.cond = select i1 %.not44, i1 true, i1 %i.cg
  br i1 %or.cond, label %.critedge, label %bb.b, !llvm.loop !316

.critedge:                                        ; preds = %_ZN3sat9lookahead9found_sccENS_7literalE.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN3sat9lookahead13init_dfs_infoENS_7literalE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1160) %0, i32 %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269
  %i.c = zext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.c ; 5 uses
  store i32 0, ptr %i.d, align 8, !tbaa !270
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.e, align 4, !tbaa !274
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 -2, ptr %i.f, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !90   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN3sat9lookahead8dfs_info5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -4
  store i32 0, ptr %i.i, align 4, !tbaa !91
  br label %_ZN3sat9lookahead8dfs_info5resetEv.exit

_ZN3sat9lookahead8dfs_info5resetEv.exit:          ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store <4 x i32> <i32 0, i32 -2, i32 -2, i32 -2>, ptr %i.j, align 8, !tbaa !91
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.l = load i32, ptr %i.k, align 8, !tbaa !250
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !98
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.c
  store i32 %i.l, ptr %i.o, align 4, !tbaa !91
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat9lookahead9init_arcsENS_7literalE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1160) %0, i32 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.svector.1, align 8           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr null, ptr %2, align 8, !tbaa !90
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.c = zext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90   ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %._crit_edge, label %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit

_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit:      ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !91   ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  %.not105 = icmp eq i32 %i.h, 0
  br i1 %.not105, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.n = xor i32 %1, 1                            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.p = zext i32 %i.n to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN3sat9lookahead7add_arcENS_7literalES1_.exit61, %bb.a, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !317
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.c
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !318  ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %._crit_edge113, label %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit

_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit:       ; preds = %._crit_edge
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !91   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.y
  %.not45110 = icmp eq i32 %i.w, 0
  br i1 %.not45110, label %._crit_edge113, label %.lr.ph112

.lr.ph112:                                        ; preds = %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit
  %i.aa = xor i32 %1, 1                           ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.ae = zext i32 %i.aa to i64
  br label %bb.l

bb.b:                                             ; preds = %.lr.ph, %_ZN3sat9lookahead7add_arcENS_7literalES1_.exit61
  %.042106 = phi ptr [ %i.e, %.lr.ph ], [ %i.cf, %_ZN3sat9lookahead7add_arcENS_7literalES1_.exit61 ] ; 2 uses
  %i.af = load i32, ptr %.042106, align 4, !tbaa !91 ; 4 uses
  %i.ag = icmp ugt i32 %i.af, %1
  br i1 %i.ag, label %bb.c, label %_ZN3sat9lookahead7add_arcENS_7literalES1_.exit61

bb.c:                                             ; preds = %bb.b
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !98
  %i.ai = zext i32 %i.af to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !91
  %i.al = load i32, ptr %i.m, align 8, !tbaa !250
  %i.am = icmp ne i32 %i.ak, %i.al
  %.not104 = icmp eq i32 %i.n, %i.af
  %or.cond114 = or i1 %i.am, %.not104
  br i1 %or.cond114, label %_ZN3sat9lookahead7add_arcENS_7literalES1_.exit61, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = xor i32 %i.af, 1                        ; 2 uses
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !269 ; 3 uses
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.ao, i64 %i.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !90 ; 5 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.f, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i:  ; preds = %bb.d
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !91 ; 4 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.e, label %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i

_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i:    ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i
  %i.aw = add i32 %i.au, -1
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !111
  %.not.i = icmp eq i32 %i.az, %i.an
  br i1 %.not.i, label %_ZN3sat9lookahead7add_arcENS_7literalES1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i
  %i.ba = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !91
  %i.bc = icmp eq i32 %i.au, %i.bb
  br i1 %i.bc, label %bb.f, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  %.pre.i.i = load ptr, ptr %i.aq, align 8, !tbaa !90 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !91
  %.pre.pre = load ptr, ptr %i.o, align 8, !tbaa !269
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i: ; preds = %.noexc, %bb.e
  %.pre = phi ptr [ %.pre.pre, %.noexc ], [ %i.ao, %bb.e ]
  %i.bd = phi i32 [ %.pre2.i.i, %.noexc ], [ %i.au, %bb.e ] ; 2 uses
  %i.be = phi ptr [ %.pre.i.i, %.noexc ], [ %i.ar, %bb.e ] ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -4
  %i.bg = zext i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bg
  store i32 %i.an, ptr %i.bh, align 4, !tbaa !91
  %i.bi = add i32 %i.bd, 1
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !91
  br label %_ZN3sat9lookahead7add_arcENS_7literalES1_.exit

_ZN3sat9lookahead7add_arcENS_7literalES1_.exit:   ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i, %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i
  %i.bj = phi ptr [ %.pre, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i ], [ %i.ao, %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i ]
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %i.ai
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !90 ; 5 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.h, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i53

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i53: ; preds = %_ZN3sat9lookahead7add_arcENS_7literalES1_.exit
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !91 ; 4 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.g, label %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i54

_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i54:  ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i53
  %i.br = add i32 %i.bp, -1
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !111
  %.not.i55 = icmp eq i32 %i.bu, %1
  br i1 %.not.i55, label %_ZN3sat9lookahead7add_arcENS_7literalES1_.exit61, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i54, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i53
  %i.bv = getelementptr inbounds i8, ptr %i.bm, i64 -8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !91
  %i.bx = icmp eq i32 %i.bp, %i.bw
  br i1 %i.bx, label %bb.h, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i56

bb.h:                                             ; preds = %bb.g, %_ZN3sat9lookahead7add_arcENS_7literalES1_.exit
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bl)
          to label %.noexc60 unwind label %bb.i

.noexc60:                                         ; preds = %bb.h
  %.pre.i.i57 = load ptr, ptr %i.bl, align 8, !tbaa !90 ; 2 uses
end_hunk_0
