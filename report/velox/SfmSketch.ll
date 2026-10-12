Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SfmSketch?download=true
inline.NumInlined: 374
inline.NumDeleted: 200
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK8facebook5velox9functions3sfm9SfmSketch28logLikelihoodFirstDerivativeEd:bb.a
  %i.as = lshr i32 %i.ar, 3
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !37
  %i.aw = zext i8 %i.av to i32
  %i.ax = and i32 %i.ar, 7
  %i.ay = shl nuw nsw i32 1, %i.ax
  %i.az = and i32 %i.ay, %i.aw
  %.not.epil = icmp eq i32 %i.az, 0
  %i.ba = select i1 %.not.epil, double %i.am, double %i.w
  %i.bb = fadd double %.120.epil.init, %i.ba
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.b
  %.1.lcssa = phi double [ %.022, %bb.b ], [ %i.ca, %._crit_edge.loopexit.unr-lcssa ], [ %i.bb, %.epil.preheader ] ; 2 uses
  %i.bc = load i32, ptr %i.a, align 8, !tbaa !27
  %i.bd = icmp slt i32 %i.f, %i.bc
  br i1 %i.bd, label %bb.b, label %._crit_edge25, !llvm.loop !122

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %.120 = phi double [ %.022, %.lr.ph.new ], [ %i.ca, %bb.c ]
  %.01519 = phi i32 [ 0, %.lr.ph.new ], [ %i.cb, %bb.c ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.be = add nuw nsw i32 %.01519, %i.ao          ; 2 uses
  %i.bf = lshr i32 %i.be, 3
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !37
  %i.bj = zext i8 %i.bi to i32
  %i.bk = and i32 %i.be, 7
  %i.bl = shl nuw nsw i32 1, %i.bk
  %i.bm = and i32 %i.bl, %i.bj
  %.not = icmp eq i32 %i.bm, 0
  %i.bn = select i1 %.not, double %i.am, double %i.w
  %i.bo = fadd double %.120, %i.bn
  %i.bp = or disjoint i32 %.01519, 1
  %i.bq = add nuw nsw i32 %i.bp, %i.ao            ; 2 uses
  %i.br = lshr i32 %i.bq, 3
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !37
  %i.bv = zext i8 %i.bu to i32
  %i.bw = and i32 %i.bq, 7
  %i.bx = shl nuw nsw i32 1, %i.bw
  %i.by = and i32 %i.bx, %i.bv
  %.not.1 = icmp eq i32 %i.by, 0
  %i.bz = select i1 %.not.1, double %i.am, double %i.w
  %i.ca = fadd double %i.bo, %i.bz                ; 3 uses
  %i.cb = add nuw nsw i32 %.01519, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !123
}

; Function Attrs: mustprogress nounwind uwtable
define noundef double @_ZNK8facebook5velox9functions3sfm9SfmSketch29logLikelihoodSecondDerivativeEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2584) %0, double noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph24, label %._crit_edge25

.lr.ph24:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

._crit_edge25:                                    ; preds = %._crit_edge, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  ret double %.0.lcssa

bb.b:                                             ; preds = %.lr.ph24, %._crit_edge
  %.022 = phi double [ 0.000000e+00, %.lr.ph24 ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %.01621 = phi i32 [ 0, %.lr.ph24 ], [ %i.f, %._crit_edge ] ; 2 uses
  %i.f = add nuw nsw i32 %.01621, 1               ; 3 uses
  %i.g = uitofp nneg i32 %i.f to double
  %i.h = fneg double %i.g                         ; 2 uses
  %exp2.i.i = tail call double @exp2(double %i.h) #19
  %i.i = load i32, ptr %0, align 8, !tbaa !25
  %i.j = load double, ptr %i.d, align 8, !tbaa !28 ; 2 uses
  %i.k = fsub double 1.000000e+00, %i.j           ; 3 uses
  %i.l = sitofp i32 %i.i to double
  %i.m = fdiv double %exp2.i.i, %i.l              ; 2 uses
  %i.n = fsub double %i.k, %i.j                   ; 2 uses
  %i.o = fneg double %i.k
  %i.p = fmul double %i.n, %i.o
  %i.q = fneg double %i.m
  %i.r = tail call double @log1p(double noundef %i.q) #19
  %i.s = tail call noundef double @pow(double noundef %i.r, double noundef 2.000000e+00) #19
  %i.t = fmul double %i.s, %i.p
  %i.u = fsub double 1.000000e+00, %i.m
  %i.v = tail call double @pow(double noundef %i.u, double noundef %1) #19 ; 2 uses
  %i.w = fmul double %i.v, %i.t
  %i.x = fmul double %i.n, %i.v
  %i.y = fsub double %i.k, %i.x
  %i.z = tail call noundef double @pow(double noundef %i.y, double noundef -2.000000e+00) #19
  %i.aa = fmul double %i.z, %i.w                  ; 3 uses
  %exp2.i.i18 = tail call double @exp2(double %i.h) #19
  %i.ab = load i32, ptr %0, align 8, !tbaa !25    ; 7 uses
  %i.ac = load double, ptr %i.d, align 8, !tbaa !28 ; 3 uses
  %i.ad = fadd double %i.ac, -1.000000e+00
  %i.ae = fadd double %i.ad, 1.000000e+00         ; 2 uses
  %.pre.i = fsub double 1.000000e+00, %i.ac
  %i.af = sitofp i32 %i.ab to double
  %i.ag = fdiv double %exp2.i.i18, %i.af          ; 2 uses
  %i.ah = fsub double %.pre.i, %i.ac              ; 2 uses
  %i.ai = fmul double %i.ae, %i.ah
  %i.aj = fneg double %i.ag
  %i.ak = tail call double @log1p(double noundef %i.aj) #19
  %i.al = tail call noundef double @pow(double noundef %i.ak, double noundef 2.000000e+00) #19
  %i.am = fmul double %i.al, %i.ai
  %i.an = fsub double 1.000000e+00, %i.ag
  %i.ao = tail call double @pow(double noundef %i.an, double noundef %1) #19 ; 2 uses
  %i.ap = fmul double %i.ao, %i.am
  %i.aq = fmul double %i.ah, %i.ao
  %i.ar = fadd double %i.ae, %i.aq
  %i.as = tail call noundef double @pow(double noundef %i.ar, double noundef -2.000000e+00) #19
  %i.at = fmul double %i.as, %i.ap                ; 3 uses
  %i.au = icmp sgt i32 %i.ab, 0
  br i1 %i.au, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.av = mul nuw nsw i32 %i.ab, %.01621          ; 3 uses
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !43  ; 3 uses
  %xtraiter = and i32 %i.ab, 1
  %i.ax = icmp eq i32 %i.ab, 1
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.ab, 2147483646
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.120.epil.init = phi double [ %.022, %.lr.ph ], [ %i.ch, %._crit_edge.loopexit.unr-lcssa ]
  %.01519.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.ci, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod29 = trunc i32 %i.ab to i1
  tail call void @llvm.assume(i1 %lcmp.mod29)
  %i.ay = add nuw nsw i32 %.01519.epil.init, %i.av ; 2 uses
  %i.az = lshr i32 %i.ay, 3
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !37
  %i.bd = zext i8 %i.bc to i32
  %i.be = and i32 %i.ay, 7
  %i.bf = shl nuw nsw i32 1, %i.be
  %i.bg = and i32 %i.bf, %i.bd
  %.not.epil = icmp eq i32 %i.bg, 0
  %i.bh = select i1 %.not.epil, double %i.at, double %i.aa
  %i.bi = fadd double %.120.epil.init, %i.bh
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.b
  %.1.lcssa = phi double [ %.022, %bb.b ], [ %i.ch, %._crit_edge.loopexit.unr-lcssa ], [ %i.bi, %.epil.preheader ] ; 2 uses
  %i.bj = load i32, ptr %i.a, align 8, !tbaa !27
  %i.bk = icmp slt i32 %i.f, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge25, !llvm.loop !124

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %.120 = phi double [ %.022, %.lr.ph.new ], [ %i.ch, %bb.c ]
  %.01519 = phi i32 [ 0, %.lr.ph.new ], [ %i.ci, %bb.c ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.bl = add nuw nsw i32 %.01519, %i.av          ; 2 uses
  %i.bm = lshr i32 %i.bl, 3
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !37
  %i.bq = zext i8 %i.bp to i32
  %i.br = and i32 %i.bl, 7
  %i.bs = shl nuw nsw i32 1, %i.br
  %i.bt = and i32 %i.bs, %i.bq
  %.not = icmp eq i32 %i.bt, 0
  %i.bu = select i1 %.not, double %i.at, double %i.aa
  %i.bv = fadd double %.120, %i.bu
  %i.bw = or disjoint i32 %.01519, 1
  %i.bx = add nuw nsw i32 %i.bw, %i.av            ; 2 uses
  %i.by = lshr i32 %i.bx, 3
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !37
  %i.cc = zext i8 %i.cb to i32
  %i.cd = and i32 %i.bx, 7
  %i.ce = shl nuw nsw i32 1, %i.cd
  %i.cf = and i32 %i.ce, %i.cc
  %.not.1 = icmp eq i32 %i.cf, 0
  %i.cg = select i1 %.not.1, double %i.at, double %i.aa
  %i.ch = fadd double %i.bv, %i.cg                ; 3 uses
  %i.ci = add nuw nsw i32 %.01519, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !125
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK8facebook5velox9functions3sfm9SfmSketch14serializedSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2584) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !27
  %i.e = load i32, ptr %0, align 8, !tbaa !25
  %i.f = mul nsw i32 %i.e, %i.d                   ; 6 uses
  %.not.i.i = icmp sgt i32 %i.f, 0
  br i1 %.not.i.i, label %bb.b, label %_ZNK8facebook5velox9functions3sfm9SfmSketch14compactBitSizeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %i.f, 2147483584                 ; 3 uses
  %.not35.i.i = icmp eq i32 %i.f, %i.g
  br i1 %.not35.i.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i32 %i.f, 6
  %i.i = and i32 %i.f, 63
  %i.j = zext nneg i32 %i.i to i64
  %notmask.i38.i.i = shl nsw i64 -1, %i.j
  %i.k = xor i64 %notmask.i38.i.i, -1
  %i.l = zext nneg i32 %i.h to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !32
  %i.o = and i64 %i.n, %i.k                       ; 2 uses
  %.not.i39.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i39.i.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread.i.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.i.i

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.i.i: ; preds = %bb.c
  %i.p = or i32 %i.f, 63
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = sub nuw nsw i32 %i.p, %i.r
  br label %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.thread22.i

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread.i.i: ; preds = %bb.c, %bb.b
  %.not36.i.i7 = icmp eq i32 %i.g, 0
  br i1 %.not36.i.i7, label %_ZNK8facebook5velox9functions3sfm9SfmSketch14compactBitSizeEv.exit, label %.lr.ph

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i: ; preds = %.lr.ph
  %.not36.i.i = icmp slt i32 %.0.in.i.i8, 65
  br i1 %.not36.i.i, label %_ZNK8facebook5velox9functions3sfm9SfmSketch14compactBitSizeEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread.i.i, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i
  %.0.in.i.i8 = phi i32 [ %.0.i.i, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i ], [ %i.g, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread.i.i ] ; 3 uses
  %.0.i.i = add nsw i32 %.0.in.i.i8, -64          ; 2 uses
  %i.t = lshr exact i32 %.0.i.i, 6
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32   ; 2 uses
  %.not.i41.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i41.i.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = xor i32 %i.y, -1
  %i.aa = add nsw i32 %.0.in.i.i8, %i.z
  br label %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.thread22.i

_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.thread22.i: ; preds = %bb.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.i.i
  %.019.ph.i = phi i32 [ %i.s, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.i.i ], [ %i.aa, %bb.d ]
  %i.ab = sext i32 %.019.ph.i to i64
  %i.ac = add nsw i64 %i.ab, 8
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = add i32 %i.ae, 21
  br label %_ZNK8facebook5velox9functions3sfm9SfmSketch14compactBitSizeEv.exit

_ZNK8facebook5velox9functions3sfm9SfmSketch14compactBitSizeEv.exit: ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread.i.i, %bb.a, %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.thread22.i
  %.0.i = phi i32 [ %i.af, %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.thread22.i ], [ 21, %bb.a ], [ 21, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread.i.i ], [ 21, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 0, 536870913) i32 @_ZNK8facebook5velox9functions3sfm9SfmSketch14compactBitSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2584) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !27
  %i.e = load i32, ptr %0, align 8, !tbaa !25
  %i.f = mul nsw i32 %i.e, %i.d                   ; 6 uses
  %.not.i = icmp sgt i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %i.f, 2147483584                 ; 3 uses
  %.not35.i = icmp eq i32 %i.f, %i.g
  br i1 %.not35.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i32 %i.f, 6
  %i.i = and i32 %i.f, 63
  %i.j = zext nneg i32 %i.i to i64
  %notmask.i38.i = shl nsw i64 -1, %i.j
  %i.k = xor i64 %notmask.i38.i, -1
  %i.l = zext nneg i32 %i.h to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !32
  %i.o = and i64 %i.n, %i.k                       ; 2 uses
  %.not.i39.i = icmp eq i64 %i.o, 0
  br i1 %.not.i39.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.i

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.i: ; preds = %bb.c
  %i.p = or i32 %i.f, 63
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = sub nuw nsw i32 %i.p, %i.r
  br label %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.thread22

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread.i: ; preds = %bb.c, %bb.b
  %.not36.i32 = icmp eq i32 %i.g, 0
  br i1 %.not36.i32, label %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.thread, label %.lr.ph

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i: ; preds = %.lr.ph
  %.not36.i = icmp slt i32 %.0.in.i33, 65
  br i1 %.not36.i, label %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread.i, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i
  %.0.in.i33 = phi i32 [ %.0.i, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i ], [ %i.g, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread.i ] ; 3 uses
  %.0.i = add nsw i32 %.0.in.i33, -64             ; 2 uses
  %i.t = lshr exact i32 %.0.i, 6
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32   ; 2 uses
  %.not.i41.i = icmp eq i64 %i.w, 0
  br i1 %.not.i41.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = xor i32 %i.y, -1
  %i.aa = add nsw i32 %.0.in.i33, %i.z
  br label %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.thread22

_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.thread22: ; preds = %bb.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.i
  %.019.ph = phi i32 [ %i.s, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.i ], [ %i.aa, %bb.d ]
  %i.ab = sext i32 %.019.ph to i64
  %i.ac = add nsw i64 %i.ab, 8
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  br label %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.thread

_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.thread: ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread.i, %bb.a, %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.thread22
  %.0 = phi i32 [ %i.ae, %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.thread22 ], [ 0, %bb.a ], [ 0, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread.i ], [ 0, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK8facebook5velox9functions3sfm9SfmSketch9serializeEPc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2584) %0, ptr nofree noundef writeonly captures(none) initializes((0, 17)) %1) local_unnamed_addr #8 align 2 {
bb.a:
  store i8 7, ptr %1, align 1, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i32 %i.b, ptr %i.c, align 4, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i32 %i.e, ptr %i.f, align 4, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 9
  store double %i.h, ptr %i.i, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44   ; 2 uses
  %i.l = load i32, ptr %0, align 8, !tbaa !25
  %i.m = mul nsw i32 %i.l, %i.e                   ; 6 uses
  %.not.i.i = icmp sgt i32 %i.m, 0
  br i1 %.not.i.i, label %bb.b, label %_ZNK8facebook5velox9functions3sfm9SfmSketch14compactBitSizeEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.n = and i32 %i.m, 2147483584                 ; 3 uses
  %.not35.i.i = icmp eq i32 %i.m, %i.n
  br i1 %.not35.i.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = lshr i32 %i.m, 6
  %i.p = and i32 %i.m, 63
  %i.q = zext nneg i32 %i.p to i64
  %notmask.i38.i.i = shl nsw i64 -1, %i.q
  %i.r = xor i64 %notmask.i38.i.i, -1
  %i.s = zext nneg i32 %i.o to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !32
  %i.v = and i64 %i.u, %i.r                       ; 2 uses
  %.not.i39.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i39.i.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread.i.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.i.i

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.i.i: ; preds = %bb.c
  %i.w = or i32 %i.m, 63
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = sub nuw nsw i32 %i.w, %i.y
  br label %_ZNK8facebook5velox9functions3sfm9SfmSketch14compactBitSizeEv.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread.i.i: ; preds = %bb.c, %bb.b
  %.not36.i.i27 = icmp eq i32 %i.n, 0
  br i1 %.not36.i.i27, label %_ZNK8facebook5velox9functions3sfm9SfmSketch14compactBitSizeEv.exit.thread, label %.lr.ph

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i: ; preds = %.lr.ph
  %.not36.i.i = icmp slt i32 %.0.in.i.i28, 65
  br i1 %.not36.i.i, label %_ZNK8facebook5velox9functions3sfm9SfmSketch14compactBitSizeEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread.i.i, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i
  %.0.in.i.i28 = phi i32 [ %.0.i.i, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i ], [ %i.n, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread.i.i ] ; 3 uses
  %.0.i.i = add nsw i32 %.0.in.i.i28, -64         ; 2 uses
  %i.aa = lshr exact i32 %.0.i.i, 6
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32 ; 2 uses
  %.not.i41.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i41.i.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ae = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true)
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = xor i32 %i.af, -1
  %i.ah = add nsw i32 %.0.in.i.i28, %i.ag
  br label %_ZNK8facebook5velox9functions3sfm9SfmSketch14compactBitSizeEv.exit

_ZNK8facebook5velox9functions3sfm9SfmSketch14compactBitSizeEv.exit.thread: ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread.i.i, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i32 0, ptr %i.ai, align 4, !tbaa !52
  br label %bb.f

_ZNK8facebook5velox9functions3sfm9SfmSketch14compactBitSizeEv.exit: ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.i.i, %bb.d
  %.019.ph.i = phi i32 [ %i.z, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.i.i ], [ %i.ah, %bb.d ]
  %i.aj = sext i32 %.019.ph.i to i64
  %i.ak = add nsw i64 %i.aj, 8
  %i.al = lshr i64 %i.ak, 3                       ; 3 uses
  %i.am = trunc nuw nsw i64 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i32 %i.am, ptr %i.an, align 4, !tbaa !52
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox9functions3sfm9SfmSketch14compactBitSizeEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr align 1 %i.ap, i64 %i.al, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK8facebook5velox9functions3sfm9SfmSketch14compactBitSizeEv.exit.thread, %bb.e, %_ZNK8facebook5velox9functions3sfm9SfmSketch14compactBitSizeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9functions3sfm9SfmSketch11deserializeEPKcPNS0_19HashStringAllocatorE(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::functions::sfm::SfmSketch") align 8 %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.48", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load i8, ptr %1, align 1, !tbaa !37      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i32, ptr %i.b, align 4, !tbaa !52   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.e = load i32, ptr %i.d, align 4, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.g = load double, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.i = load i32, ptr %i.h, align 4, !tbaa !52
  %.not = icmp eq i8 %i.a, 7
  br i1 %.not, label %bb.e, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
end_hunk_0
