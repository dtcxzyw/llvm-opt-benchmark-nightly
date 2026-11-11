Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dauCanon?download=true
inline.NumInlined: 334
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 84
loop-unroll.NumUnrolled: 105
begin_hunk_0_@Abc_TtCofactorPermNaive:bb.a
  %indvars.iv21.i67 = phi i64 [ %indvars.iv.next22.i68, %.lr.ph18.i66 ], [ %indvars.iv21.i67.ph, %.lr.ph18.i66.preheader1073 ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv21.i67
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !32
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPermNaive.pBest, i64 %indvars.iv21.i67
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !32
  %indvars.iv.next22.i68 = add nuw nsw i64 %indvars.iv21.i67, 1 ; 2 uses
  %exitcond25.not.i69 = icmp eq i64 %indvars.iv.next22.i68, %.pre
  br i1 %exitcond25.not.i69, label %Abc_TtCopy.exit70, label %.lr.ph18.i66, !llvm.loop !139

Abc_TtCopy.exit70:                                ; preds = %.lr.ph18.i66, %middle.block684
  %i.fr = icmp eq i32 %2, 1
  br i1 %i.fr, label %bb.g, label %bb.h

bb.g:                                             ; preds = %Abc_TtCopy.exit70
  %i.fs = load i64, ptr @Abc_TtCofactorPermNaive.pCopy.1, align 16, !tbaa !32 ; 2 uses
  %i.ft = shl nuw i32 1, %1
  %i.fu = zext i32 %i.ft to i64                   ; 2 uses
  %i.fv = shl i64 %i.fs, %i.fu
  %i.fw = sext i32 %1 to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.fw
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !32 ; 2 uses
  %i.fz = and i64 %i.fv, %i.fy
  %i.ga = and i64 %i.fy, %i.fs
  %i.gb = lshr i64 %i.ga, %i.fu
  %i.gc = or i64 %i.gb, %i.fz
  store i64 %i.gc, ptr @Abc_TtCofactorPermNaive.pCopy.1, align 16, !tbaa !32
  br label %Abc_TtFlip.exit

bb.h:                                             ; preds = %Abc_TtCopy.exit70
  %i.gd = icmp slt i32 %1, 6
  br i1 %i.gd, label %.lr.ph.i81, label %.preheader.lr.ph.i71

.lr.ph.i81:                                       ; preds = %bb.h
  %i.ge = shl nuw nsw i32 1, %1
  %i.gf = zext nneg i32 %i.ge to i64              ; 3 uses
  %i.gg = sext i32 %1 to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.gg
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !32 ; 3 uses
  %min.iters.check712 = icmp ult i32 %2, 4
  br i1 %min.iters.check712, label %scalar.ph711.preheader, label %vector.ph713

vector.ph713:                                     ; preds = %.lr.ph.i81
  %n.vec714 = and i64 %.pre, 2147483644           ; 3 uses
  %broadcast.splatinsert715 = insertelement <2 x i64> poison, i64 %i.gf, i64 0
  %broadcast.splat716 = shufflevector <2 x i64> %broadcast.splatinsert715, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert717 = insertelement <2 x i64> poison, i64 %i.gi, i64 0
  %broadcast.splat718 = shufflevector <2 x i64> %broadcast.splatinsert717, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body719

vector.body719:                                   ; preds = %vector.body719, %vector.ph713
  %index720 = phi i64 [ 0, %vector.ph713 ], [ %index.next723, %vector.body719 ] ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %index720 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16 ; 2 uses
  %wide.load721 = load <2 x i64>, ptr %i.gj, align 16, !tbaa !32 ; 2 uses
  %wide.load722 = load <2 x i64>, ptr %i.gk, align 16, !tbaa !32 ; 2 uses
  %i.gl = shl <2 x i64> %wide.load721, %broadcast.splat716
  %i.gm = shl <2 x i64> %wide.load722, %broadcast.splat716
  %i.gn = and <2 x i64> %i.gl, %broadcast.splat718
  %i.go = and <2 x i64> %i.gm, %broadcast.splat718
  %i.gp = and <2 x i64> %wide.load721, %broadcast.splat718
  %i.gq = and <2 x i64> %wide.load722, %broadcast.splat718
  %i.gr = lshr <2 x i64> %i.gp, %broadcast.splat716
  %i.gs = lshr <2 x i64> %i.gq, %broadcast.splat716
  %i.gt = or <2 x i64> %i.gr, %i.gn
  %i.gu = or <2 x i64> %i.gs, %i.go
  store <2 x i64> %i.gt, ptr %i.gj, align 16, !tbaa !32
  store <2 x i64> %i.gu, ptr %i.gk, align 16, !tbaa !32
  %index.next723 = add nuw i64 %index720, 4       ; 2 uses
  %i.gv = icmp eq i64 %index.next723, %n.vec714
  br i1 %i.gv, label %middle.block724, label %vector.body719, !llvm.loop !140

middle.block724:                                  ; preds = %vector.body719
  %cmp.n725 = icmp eq i64 %n.vec714, %.pre
  br i1 %cmp.n725, label %Abc_TtFlip.exit, label %scalar.ph711.preheader

scalar.ph711.preheader:                           ; preds = %.lr.ph.i81, %middle.block724
  %indvars.iv56.i.ph = phi i64 [ 0, %.lr.ph.i81 ], [ %n.vec714, %middle.block724 ]
  br label %scalar.ph711

scalar.ph711:                                     ; preds = %scalar.ph711.preheader, %scalar.ph711
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %scalar.ph711 ], [ %indvars.iv56.i.ph, %scalar.ph711.preheader ] ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %indvars.iv56.i ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !32 ; 2 uses
  %i.gy = shl i64 %i.gx, %i.gf
  %i.gz = and i64 %i.gy, %i.gi
  %i.ha = and i64 %i.gx, %i.gi
  %i.hb = lshr i64 %i.ha, %i.gf
  %i.hc = or i64 %i.hb, %i.gz
  store i64 %i.hc, ptr %i.gw, align 8, !tbaa !32
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next57.i, %.pre
  br i1 %exitcond60.not.i, label %Abc_TtFlip.exit, label %scalar.ph711, !llvm.loop !141

.preheader.lr.ph.i71:                             ; preds = %bb.h
  %.idx.i = shl nuw nsw i64 %.pre, 3
  %i.hd = getelementptr inbounds nuw i8, ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %.idx.i
  %i.he = add nsw i32 %1, -6                      ; 3 uses
  %.not.i72 = icmp eq i32 %i.he, 31
  %i.hf = shl i32 2, %i.he
  %i.hg = sext i32 %i.hf to i64                   ; 2 uses
  br i1 %.not.i72, label %Abc_TtFlip.exit, label %.preheader.us.preheader.i73

.preheader.us.preheader.i73:                      ; preds = %.preheader.lr.ph.i71
  %i.hh = shl nuw i32 1, %i.he                    ; 4 uses
  %i.hi = sext i32 %i.hh to i64                   ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.hh, i32 1) ; 2 uses
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 5 uses
  %i.hj = shl nuw nsw i64 %wide.trip.count.i, 3
  %i.hk = add nsw i64 %i.hi, %wide.trip.count.i
  %i.hl = shl nsw i64 %i.hk, 3
  %i.hm = shl nsw i64 %i.hg, 3
  %min.iters.check694 = icmp slt i32 %i.hh, 4
  %i.hn = getelementptr i8, ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %i.hj
  %i.ho = getelementptr i8, ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %i.hl
  %n.vec700 = and i64 %wide.trip.count.i, 2147483644
  %xtraiter1095 = and i64 %wide.trip.count.i, 1
  %i.hp = icmp slt i32 %i.hh, 2
  %unroll_iter1098 = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod1096.not = icmp eq i64 %xtraiter1095, 0
  %lcmp.mod1097 = trunc i32 %smax.i to i1
  br label %.preheader.us.i74

.preheader.us.i74:                                ; preds = %._crit_edge.us.i80, %.preheader.us.preheader.i73
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i80 ], [ 0, %.preheader.us.preheader.i73 ] ; 2 uses
  %.051.us.i = phi ptr [ %i.ih, %._crit_edge.us.i80 ], [ @Abc_TtCofactorPermNaive.pCopy.1, %.preheader.us.preheader.i73 ] ; 7 uses
  %invariant.gep.i75 = getelementptr [8 x i8], ptr %.051.us.i, i64 %i.hi ; 5 uses
  br i1 %min.iters.check694, label %scalar.ph693.preheader, label %vector.memcheck695

scalar.ph693.preheader:                           ; preds = %vector.memcheck695, %.preheader.us.i74
  br i1 %i.hp, label %scalar.ph693.epil.preheader, label %scalar.ph693

vector.memcheck695:                               ; preds = %.preheader.us.i74
  %i.hq = mul i64 %indvar, %i.hm                  ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hn, i64 %i.hq
  %i.hs = getelementptr i8, ptr %i.ho, i64 %i.hq
  %bound0696 = icmp ult ptr %.051.us.i, %i.hs
  %bound1697 = icmp ult ptr %invariant.gep.i75, %i.hr
  %found.conflict698 = and i1 %bound0696, %bound1697
  br i1 %found.conflict698, label %scalar.ph693.preheader, label %vector.body701

vector.body701:                                   ; preds = %vector.memcheck695, %vector.body701
  %index702 = phi i64 [ %index.next707, %vector.body701 ], [ 0, %vector.memcheck695 ] ; 3 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %index702 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 2 uses
  %wide.load703 = load <2 x i64>, ptr %i.ht, align 8, !tbaa !32, !alias.scope !194, !noalias !195
  %wide.load704 = load <2 x i64>, ptr %i.hu, align 8, !tbaa !32, !alias.scope !194, !noalias !195
  %i.hv = getelementptr [8 x i8], ptr %invariant.gep.i75, i64 %index702 ; 3 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 16     ; 2 uses
  %wide.load705 = load <2 x i64>, ptr %i.hv, align 8, !tbaa !32, !alias.scope !195
  %wide.load706 = load <2 x i64>, ptr %i.hw, align 8, !tbaa !32, !alias.scope !195
  store <2 x i64> %wide.load705, ptr %i.ht, align 8, !tbaa !32, !alias.scope !194, !noalias !195
  store <2 x i64> %wide.load706, ptr %i.hu, align 8, !tbaa !32, !alias.scope !194, !noalias !195
  store <2 x i64> %wide.load703, ptr %i.hv, align 8, !tbaa !32, !alias.scope !195
  store <2 x i64> %wide.load704, ptr %i.hw, align 8, !tbaa !32, !alias.scope !195
  %index.next707 = add nuw i64 %index702, 4       ; 2 uses
  %i.hx = icmp eq i64 %index.next707, %n.vec700
  br i1 %i.hx, label %._crit_edge.us.i80, label %vector.body701, !llvm.loop !145

scalar.ph693:                                     ; preds = %scalar.ph693.preheader, %scalar.ph693
  %indvars.iv.i76 = phi i64 [ %indvars.iv.next.i78.1, %scalar.ph693 ], [ 0, %scalar.ph693.preheader ] ; 4 uses
  %niter1099 = phi i64 [ %niter1099.next.1, %scalar.ph693 ], [ 0, %scalar.ph693.preheader ]
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %indvars.iv.i76 ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !32
  %gep.i77 = getelementptr [8 x i8], ptr %invariant.gep.i75, i64 %indvars.iv.i76 ; 2 uses
  %i.ia = load i64, ptr %gep.i77, align 8, !tbaa !32
  store i64 %i.ia, ptr %i.hy, align 8, !tbaa !32
  store i64 %i.hz, ptr %gep.i77, align 8, !tbaa !32
  %indvars.iv.next.i78 = or disjoint i64 %indvars.iv.i76, 1 ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %indvars.iv.next.i78 ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !32
  %gep.i77.1 = getelementptr [8 x i8], ptr %invariant.gep.i75, i64 %indvars.iv.next.i78 ; 2 uses
  %i.id = load i64, ptr %gep.i77.1, align 8, !tbaa !32
  store i64 %i.id, ptr %i.ib, align 8, !tbaa !32
  store i64 %i.ic, ptr %gep.i77.1, align 8, !tbaa !32
  %indvars.iv.next.i78.1 = add nuw nsw i64 %indvars.iv.i76, 2 ; 2 uses
  %niter1099.next.1 = add i64 %niter1099, 2       ; 2 uses
  %niter1099.ncmp.1 = icmp eq i64 %niter1099.next.1, %unroll_iter1098
  br i1 %niter1099.ncmp.1, label %._crit_edge.us.i80.loopexit.unr-lcssa, label %scalar.ph693, !llvm.loop !146

._crit_edge.us.i80.loopexit.unr-lcssa:            ; preds = %scalar.ph693
  br i1 %lcmp.mod1096.not, label %._crit_edge.us.i80, label %scalar.ph693.epil.preheader

scalar.ph693.epil.preheader:                      ; preds = %._crit_edge.us.i80.loopexit.unr-lcssa, %scalar.ph693.preheader
  %indvars.iv.i76.epil.init = phi i64 [ 0, %scalar.ph693.preheader ], [ %indvars.iv.next.i78.1, %._crit_edge.us.i80.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1097)
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %indvars.iv.i76.epil.init ; 2 uses
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !32
  %gep.i77.epil = getelementptr [8 x i8], ptr %invariant.gep.i75, i64 %indvars.iv.i76.epil.init ; 2 uses
  %i.ig = load i64, ptr %gep.i77.epil, align 8, !tbaa !32
  store i64 %i.ig, ptr %i.ie, align 8, !tbaa !32
  store i64 %i.if, ptr %gep.i77.epil, align 8, !tbaa !32
  br label %._crit_edge.us.i80

._crit_edge.us.i80:                               ; preds = %vector.body701, %scalar.ph693.epil.preheader, %._crit_edge.us.i80.loopexit.unr-lcssa
  %i.ih = getelementptr inbounds [8 x i8], ptr %.051.us.i, i64 %i.hg ; 2 uses
  %i.ii = icmp ult ptr %i.ih, %i.hd
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ii, label %.preheader.us.i74, label %Abc_TtFlip.exit, !llvm.loop !7

Abc_TtFlip.exit:                                  ; preds = %._crit_edge.us.i80, %scalar.ph711, %middle.block724, %bb.f, %bb.g, %.preheader.lr.ph.i71
  %.pre-phi = phi i64 [ %.pre, %middle.block724 ], [ %.pre, %bb.f ], [ %.pre, %.preheader.lr.ph.i71 ], [ 1, %bb.g ], [ %.pre, %scalar.ph711 ], [ %.pre, %._crit_edge.us.i80 ] ; 53 uses
  %i.ij = phi i1 [ false, %middle.block724 ], [ false, %bb.f ], [ false, %.preheader.lr.ph.i71 ], [ true, %bb.g ], [ false, %scalar.ph711 ], [ false, %._crit_edge.us.i80 ] ; 5 uses
  %i.ik = trunc nuw i64 %.pre-phi to i32
  %i.il = icmp sgt i32 %i.ik, 0
  br i1 %i.il, label %.lr.ph587, label %Abc_TtCopy.exit92

bb.i:                                             ; preds = %.lr.ph587
  %i.im = trunc nuw i64 %i.io to i32
  %i.in = icmp sgt i32 %i.im, 0
  br i1 %i.in, label %.lr.ph587, label %Abc_TtCopy.exit92, !llvm.loop !6

.lr.ph587:                                        ; preds = %Abc_TtFlip.exit, %bb.i
  %indvars.iv.i82586 = phi i64 [ %i.io, %bb.i ], [ %.pre-phi, %Abc_TtFlip.exit ]
  %i.io = add nsw i64 %indvars.iv.i82586, -1      ; 4 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPermNaive.pBest, i64 %i.io
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !32 ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %i.io
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !32 ; 2 uses
  %.not.i84 = icmp eq i64 %i.iq, %i.is
  br i1 %.not.i84, label %bb.i, label %bb.j, !llvm.loop !6

bb.j:                                             ; preds = %.lr.ph587
  %i.it = icmp ult i64 %i.iq, %i.is               ; 2 uses
  %brmerge378 = or i1 %i.b, %i.it
  %not. = xor i1 %i.it, true
  %.mux379 = zext i1 %not. to i32
  br i1 %brmerge378, label %Abc_TtCopy.exit92, label %.lr.ph18.i88.preheader

.lr.ph18.i88.preheader:                           ; preds = %bb.j
  %i.iu = shl nuw nsw i64 %.pre-phi, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @Abc_TtCofactorPermNaive.pBest, ptr nonnull align 16 @Abc_TtCofactorPermNaive.pCopy.1, i64 %i.iu, i1 false), !tbaa !32
  br label %Abc_TtCopy.exit92

Abc_TtCopy.exit92:                                ; preds = %bb.i, %Abc_TtFlip.exit, %.lr.ph18.i88.preheader, %bb.j
  %.0 = phi i32 [ 1, %.lr.ph18.i88.preheader ], [ %.mux379, %bb.j ], [ 0, %Abc_TtFlip.exit ], [ 0, %bb.i ] ; 3 uses
  %i.iv = add nsw i32 %1, 1                       ; 12 uses
  br i1 %i.ij, label %bb.k, label %bb.l

bb.k:                                             ; preds = %Abc_TtCopy.exit92
  %i.iw = load i64, ptr @Abc_TtCofactorPermNaive.pCopy.1, align 16, !tbaa !32 ; 2 uses
  %i.ix = shl nuw i32 1, %i.iv
  %i.iy = zext i32 %i.ix to i64                   ; 2 uses
  %i.iz = shl i64 %i.iw, %i.iy
  %i.ja = sext i32 %i.iv to i64
  %i.jb = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.ja
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !32 ; 2 uses
  %i.jd = and i64 %i.iz, %i.jc
  %i.je = and i64 %i.jc, %i.iw
  %i.jf = lshr i64 %i.je, %i.iy
  %i.jg = or i64 %i.jf, %i.jd
  store i64 %i.jg, ptr @Abc_TtCofactorPermNaive.pCopy.1, align 16, !tbaa !32
  br label %Abc_TtFlip.exit112

bb.l:                                             ; preds = %Abc_TtCopy.exit92
  %i.jh = icmp slt i32 %1, 5
  br i1 %i.jh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br i1 %i.b, label %Abc_TtFlip.exit112, label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %bb.m
  %i.ji = shl nuw nsw i32 1, %i.iv
  %i.jj = zext nneg i32 %i.ji to i64              ; 3 uses
  %i.jk = sext i32 %i.iv to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.jk
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !32 ; 3 uses
  %min.iters.check756 = icmp samesign ult i64 %.pre-phi, 4
  br i1 %min.iters.check756, label %scalar.ph755.preheader, label %vector.ph757

vector.ph757:                                     ; preds = %.lr.ph.i107
  %n.vec758 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %broadcast.splatinsert759 = insertelement <2 x i64> poison, i64 %i.jj, i64 0
  %broadcast.splat760 = shufflevector <2 x i64> %broadcast.splatinsert759, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert761 = insertelement <2 x i64> poison, i64 %i.jm, i64 0
  %broadcast.splat762 = shufflevector <2 x i64> %broadcast.splatinsert761, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body763

vector.body763:                                   ; preds = %vector.body763, %vector.ph757
  %index764 = phi i64 [ 0, %vector.ph757 ], [ %index.next767, %vector.body763 ] ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %index764 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %wide.load765 = load <2 x i64>, ptr %i.jn, align 16, !tbaa !32 ; 2 uses
  %wide.load766 = load <2 x i64>, ptr %i.jo, align 16, !tbaa !32 ; 2 uses
  %i.jp = shl <2 x i64> %wide.load765, %broadcast.splat760
  %i.jq = shl <2 x i64> %wide.load766, %broadcast.splat760
  %i.jr = and <2 x i64> %i.jp, %broadcast.splat762
  %i.js = and <2 x i64> %i.jq, %broadcast.splat762
  %i.jt = and <2 x i64> %wide.load765, %broadcast.splat762
  %i.ju = and <2 x i64> %wide.load766, %broadcast.splat762
  %i.jv = lshr <2 x i64> %i.jt, %broadcast.splat760
  %i.jw = lshr <2 x i64> %i.ju, %broadcast.splat760
  %i.jx = or <2 x i64> %i.jv, %i.jr
  %i.jy = or <2 x i64> %i.jw, %i.js
  store <2 x i64> %i.jx, ptr %i.jn, align 16, !tbaa !32
  store <2 x i64> %i.jy, ptr %i.jo, align 16, !tbaa !32
  %index.next767 = add nuw i64 %index764, 4       ; 2 uses
  %i.jz = icmp eq i64 %index.next767, %n.vec758
  br i1 %i.jz, label %middle.block768, label %vector.body763, !llvm.loop !147

middle.block768:                                  ; preds = %vector.body763
  %cmp.n769 = icmp eq i64 %.pre-phi, %n.vec758
  br i1 %cmp.n769, label %Abc_TtFlip.exit112, label %scalar.ph755.preheader

scalar.ph755.preheader:                           ; preds = %.lr.ph.i107, %middle.block768
  %indvars.iv56.i109.ph = phi i64 [ 0, %.lr.ph.i107 ], [ %n.vec758, %middle.block768 ]
  br label %scalar.ph755

scalar.ph755:                                     ; preds = %scalar.ph755.preheader, %scalar.ph755
  %indvars.iv56.i109 = phi i64 [ %indvars.iv.next57.i110, %scalar.ph755 ], [ %indvars.iv56.i109.ph, %scalar.ph755.preheader ] ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %indvars.iv56.i109 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !32 ; 2 uses
  %i.kc = shl i64 %i.kb, %i.jj
  %i.kd = and i64 %i.kc, %i.jm
  %i.ke = and i64 %i.kb, %i.jm
  %i.kf = lshr i64 %i.ke, %i.jj
  %i.kg = or i64 %i.kf, %i.kd
  store i64 %i.kg, ptr %i.ka, align 8, !tbaa !32
  %indvars.iv.next57.i110 = add nuw nsw i64 %indvars.iv56.i109, 1 ; 2 uses
  %exitcond60.not.i111 = icmp eq i64 %indvars.iv.next57.i110, %.pre-phi
  br i1 %exitcond60.not.i111, label %Abc_TtFlip.exit112, label %scalar.ph755, !llvm.loop !148

bb.n:                                             ; preds = %bb.l
  %i.kh = sext i32 %2 to i64
  %.idx.i93 = shl nsw i64 %i.kh, 3
  %i.ki = getelementptr inbounds i8, ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %.idx.i93
  %i.kj = add nsw i32 %1, -5                      ; 3 uses
  %i.kk = shl nuw i32 1, %i.kj                    ; 4 uses
  br i1 %i.b, label %Abc_TtFlip.exit112, label %.preheader.lr.ph.i94

.preheader.lr.ph.i94:                             ; preds = %bb.n
  %.not.i95 = icmp eq i32 %i.kj, 31
  %i.kl = shl i32 2, %i.kj
  %i.km = sext i32 %i.kl to i64                   ; 2 uses
  br i1 %.not.i95, label %Abc_TtFlip.exit112, label %.preheader.us.preheader.i96

.preheader.us.preheader.i96:                      ; preds = %.preheader.lr.ph.i94
  %i.kn = sext i32 %i.kk to i64                   ; 2 uses
  %smax.i97 = tail call i32 @llvm.smax.i32(i32 %i.kk, i32 1) ; 2 uses
  %wide.trip.count.i98 = zext nneg i32 %smax.i97 to i64 ; 5 uses
  %i.ko = shl nuw nsw i64 %wide.trip.count.i98, 3
  %i.kp = add nsw i64 %i.kn, %wide.trip.count.i98
  %i.kq = shl nsw i64 %i.kp, 3
  %i.kr = shl nsw i64 %i.km, 3
  %min.iters.check738 = icmp slt i32 %i.kk, 4
  %i.ks = getelementptr i8, ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %i.ko
  %i.kt = getelementptr i8, ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %i.kq
  %n.vec744 = and i64 %wide.trip.count.i98, 2147483644
  %xtraiter1100 = and i64 %wide.trip.count.i98, 1
  %i.ku = icmp slt i32 %i.kk, 2
  %unroll_iter1103 = and i64 %wide.trip.count.i98, 2147483646
  %lcmp.mod1101.not = icmp eq i64 %xtraiter1100, 0
  %lcmp.mod1102 = trunc i32 %smax.i97 to i1
  br label %.preheader.us.i99

.preheader.us.i99:                                ; preds = %._crit_edge.us.i106, %.preheader.us.preheader.i96
  %indvar735 = phi i64 [ %indvar.next736, %._crit_edge.us.i106 ], [ 0, %.preheader.us.preheader.i96 ] ; 2 uses
  %.051.us.i100 = phi ptr [ %i.lm, %._crit_edge.us.i106 ], [ @Abc_TtCofactorPermNaive.pCopy.1, %.preheader.us.preheader.i96 ] ; 7 uses
  %invariant.gep.i101 = getelementptr [8 x i8], ptr %.051.us.i100, i64 %i.kn ; 5 uses
  br i1 %min.iters.check738, label %scalar.ph737.preheader, label %vector.memcheck739

scalar.ph737.preheader:                           ; preds = %vector.memcheck739, %.preheader.us.i99
  br i1 %i.ku, label %scalar.ph737.epil.preheader, label %scalar.ph737

vector.memcheck739:                               ; preds = %.preheader.us.i99
  %i.kv = mul i64 %indvar735, %i.kr               ; 2 uses
  %i.kw = getelementptr i8, ptr %i.ks, i64 %i.kv
  %i.kx = getelementptr i8, ptr %i.kt, i64 %i.kv
  %bound0740 = icmp ult ptr %.051.us.i100, %i.kx
  %bound1741 = icmp ult ptr %invariant.gep.i101, %i.kw
  %found.conflict742 = and i1 %bound0740, %bound1741
  br i1 %found.conflict742, label %scalar.ph737.preheader, label %vector.body745

vector.body745:                                   ; preds = %vector.memcheck739, %vector.body745
  %index746 = phi i64 [ %index.next751, %vector.body745 ], [ 0, %vector.memcheck739 ] ; 3 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i100, i64 %index746 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16 ; 2 uses
  %wide.load747 = load <2 x i64>, ptr %i.ky, align 8, !tbaa !32, !alias.scope !196, !noalias !197
  %wide.load748 = load <2 x i64>, ptr %i.kz, align 8, !tbaa !32, !alias.scope !196, !noalias !197
  %i.la = getelementptr [8 x i8], ptr %invariant.gep.i101, i64 %index746 ; 3 uses
  %i.lb = getelementptr i8, ptr %i.la, i64 16     ; 2 uses
  %wide.load749 = load <2 x i64>, ptr %i.la, align 8, !tbaa !32, !alias.scope !197
  %wide.load750 = load <2 x i64>, ptr %i.lb, align 8, !tbaa !32, !alias.scope !197
  store <2 x i64> %wide.load749, ptr %i.ky, align 8, !tbaa !32, !alias.scope !196, !noalias !197
  store <2 x i64> %wide.load750, ptr %i.kz, align 8, !tbaa !32, !alias.scope !196, !noalias !197
  store <2 x i64> %wide.load747, ptr %i.la, align 8, !tbaa !32, !alias.scope !197
  store <2 x i64> %wide.load748, ptr %i.lb, align 8, !tbaa !32, !alias.scope !197
  %index.next751 = add nuw i64 %index746, 4       ; 2 uses
  %i.lc = icmp eq i64 %index.next751, %n.vec744
  br i1 %i.lc, label %._crit_edge.us.i106, label %vector.body745, !llvm.loop !152

scalar.ph737:                                     ; preds = %scalar.ph737.preheader, %scalar.ph737
  %indvars.iv.i102 = phi i64 [ %indvars.iv.next.i104.1, %scalar.ph737 ], [ 0, %scalar.ph737.preheader ] ; 4 uses
  %niter1104 = phi i64 [ %niter1104.next.1, %scalar.ph737 ], [ 0, %scalar.ph737.preheader ]
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i100, i64 %indvars.iv.i102 ; 2 uses
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !32
  %gep.i103 = getelementptr [8 x i8], ptr %invariant.gep.i101, i64 %indvars.iv.i102 ; 2 uses
  %i.lf = load i64, ptr %gep.i103, align 8, !tbaa !32
  store i64 %i.lf, ptr %i.ld, align 8, !tbaa !32
  store i64 %i.le, ptr %gep.i103, align 8, !tbaa !32
  %indvars.iv.next.i104 = or disjoint i64 %indvars.iv.i102, 1 ; 2 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i100, i64 %indvars.iv.next.i104 ; 2 uses
end_hunk_0
begin_hunk_1_@Abc_TtCofactorPermNaive:bb.a

.preheader.us.i130:                               ; preds = %._crit_edge.us.i137, %.preheader.us.preheader.i127
  %indvar779 = phi i64 [ %indvar.next780, %._crit_edge.us.i137 ], [ 0, %.preheader.us.preheader.i127 ] ; 2 uses
  %.051.us.i131 = phi ptr [ %i.op, %._crit_edge.us.i137 ], [ @Abc_TtCofactorPermNaive.pCopy.1, %.preheader.us.preheader.i127 ] ; 7 uses
  %invariant.gep.i132 = getelementptr [8 x i8], ptr %.051.us.i131, i64 %i.nq ; 5 uses
  br i1 %min.iters.check782, label %scalar.ph781.preheader, label %vector.memcheck783

scalar.ph781.preheader:                           ; preds = %vector.memcheck783, %.preheader.us.i130
  br i1 %i.nx, label %scalar.ph781.epil.preheader, label %scalar.ph781

vector.memcheck783:                               ; preds = %.preheader.us.i130
  %i.ny = mul i64 %indvar779, %i.nu               ; 2 uses
  %i.nz = getelementptr i8, ptr %i.nv, i64 %i.ny
  %i.oa = getelementptr i8, ptr %i.nw, i64 %i.ny
  %bound0784 = icmp ult ptr %.051.us.i131, %i.oa
  %bound1785 = icmp ult ptr %invariant.gep.i132, %i.nz
  %found.conflict786 = and i1 %bound0784, %bound1785
  br i1 %found.conflict786, label %scalar.ph781.preheader, label %vector.body789

vector.body789:                                   ; preds = %vector.memcheck783, %vector.body789
  %index790 = phi i64 [ %index.next795, %vector.body789 ], [ 0, %vector.memcheck783 ] ; 3 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i131, i64 %index790 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 16 ; 2 uses
  %wide.load791 = load <2 x i64>, ptr %i.ob, align 8, !tbaa !32, !alias.scope !198, !noalias !199
  %wide.load792 = load <2 x i64>, ptr %i.oc, align 8, !tbaa !32, !alias.scope !198, !noalias !199
  %i.od = getelementptr [8 x i8], ptr %invariant.gep.i132, i64 %index790 ; 3 uses
  %i.oe = getelementptr i8, ptr %i.od, i64 16     ; 2 uses
  %wide.load793 = load <2 x i64>, ptr %i.od, align 8, !tbaa !32, !alias.scope !199
  %wide.load794 = load <2 x i64>, ptr %i.oe, align 8, !tbaa !32, !alias.scope !199
  store <2 x i64> %wide.load793, ptr %i.ob, align 8, !tbaa !32, !alias.scope !198, !noalias !199
  store <2 x i64> %wide.load794, ptr %i.oc, align 8, !tbaa !32, !alias.scope !198, !noalias !199
  store <2 x i64> %wide.load791, ptr %i.od, align 8, !tbaa !32, !alias.scope !199
  store <2 x i64> %wide.load792, ptr %i.oe, align 8, !tbaa !32, !alias.scope !199
  %index.next795 = add nuw i64 %index790, 4       ; 2 uses
  %i.of = icmp eq i64 %index.next795, %n.vec788
  br i1 %i.of, label %._crit_edge.us.i137, label %vector.body789, !llvm.loop !159

scalar.ph781:                                     ; preds = %scalar.ph781.preheader, %scalar.ph781
  %indvars.iv.i133 = phi i64 [ %indvars.iv.next.i135.1, %scalar.ph781 ], [ 0, %scalar.ph781.preheader ] ; 4 uses
  %niter1109 = phi i64 [ %niter1109.next.1, %scalar.ph781 ], [ 0, %scalar.ph781.preheader ]
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i131, i64 %indvars.iv.i133 ; 2 uses
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !32
  %gep.i134 = getelementptr [8 x i8], ptr %invariant.gep.i132, i64 %indvars.iv.i133 ; 2 uses
  %i.oi = load i64, ptr %gep.i134, align 8, !tbaa !32
  store i64 %i.oi, ptr %i.og, align 8, !tbaa !32
  store i64 %i.oh, ptr %gep.i134, align 8, !tbaa !32
  %indvars.iv.next.i135 = or disjoint i64 %indvars.iv.i133, 1 ; 2 uses
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i131, i64 %indvars.iv.next.i135 ; 2 uses
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !32
  %gep.i134.1 = getelementptr [8 x i8], ptr %invariant.gep.i132, i64 %indvars.iv.next.i135 ; 2 uses
  %i.ol = load i64, ptr %gep.i134.1, align 8, !tbaa !32
  store i64 %i.ol, ptr %i.oj, align 8, !tbaa !32
  store i64 %i.ok, ptr %gep.i134.1, align 8, !tbaa !32
  %indvars.iv.next.i135.1 = add nuw nsw i64 %indvars.iv.i133, 2 ; 2 uses
  %niter1109.next.1 = add i64 %niter1109, 2       ; 2 uses
  %niter1109.ncmp.1 = icmp eq i64 %niter1109.next.1, %unroll_iter1108
  br i1 %niter1109.ncmp.1, label %._crit_edge.us.i137.loopexit.unr-lcssa, label %scalar.ph781, !llvm.loop !160

._crit_edge.us.i137.loopexit.unr-lcssa:           ; preds = %scalar.ph781
  br i1 %lcmp.mod1106.not, label %._crit_edge.us.i137, label %scalar.ph781.epil.preheader

scalar.ph781.epil.preheader:                      ; preds = %._crit_edge.us.i137.loopexit.unr-lcssa, %scalar.ph781.preheader
  %indvars.iv.i133.epil.init = phi i64 [ 0, %scalar.ph781.preheader ], [ %indvars.iv.next.i135.1, %._crit_edge.us.i137.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1107)
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i131, i64 %indvars.iv.i133.epil.init ; 2 uses
  %i.on = load i64, ptr %i.om, align 8, !tbaa !32
  %gep.i134.epil = getelementptr [8 x i8], ptr %invariant.gep.i132, i64 %indvars.iv.i133.epil.init ; 2 uses
  %i.oo = load i64, ptr %gep.i134.epil, align 8, !tbaa !32
  store i64 %i.oo, ptr %i.om, align 8, !tbaa !32
  store i64 %i.on, ptr %gep.i134.epil, align 8, !tbaa !32
  br label %._crit_edge.us.i137

._crit_edge.us.i137:                              ; preds = %vector.body789, %scalar.ph781.epil.preheader, %._crit_edge.us.i137.loopexit.unr-lcssa
  %i.op = getelementptr inbounds [8 x i8], ptr %.051.us.i131, i64 %i.np ; 2 uses
  %i.oq = icmp ult ptr %i.op, %i.nl
  %indvar.next780 = add i64 %indvar779, 1
  br i1 %i.oq, label %.preheader.us.i130, label %Abc_TtFlip.exit143, !llvm.loop !7

Abc_TtFlip.exit143:                               ; preds = %._crit_edge.us.i137, %scalar.ph799, %middle.block812, %bb.q, %bb.s, %bb.t, %.preheader.lr.ph.i125
  %i.or = trunc nuw i64 %.pre-phi to i32
  %i.os = icmp sgt i32 %i.or, 0
  br i1 %i.os, label %.lr.ph591, label %Abc_TtCopy.exit154

bb.u:                                             ; preds = %.lr.ph591
  %i.ot = trunc nuw i64 %i.ov to i32
  %i.ou = icmp sgt i32 %i.ot, 0
  br i1 %i.ou, label %.lr.ph591, label %Abc_TtCopy.exit154, !llvm.loop !6

.lr.ph591:                                        ; preds = %Abc_TtFlip.exit143, %bb.u
  %indvars.iv.i144590 = phi i64 [ %i.ov, %bb.u ], [ %.pre-phi, %Abc_TtFlip.exit143 ]
  %i.ov = add nsw i64 %indvars.iv.i144590, -1     ; 4 uses
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPermNaive.pBest, i64 %i.ov
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !32 ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %i.ov
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !32 ; 2 uses
  %.not.i146 = icmp eq i64 %i.ox, %i.oz
  br i1 %.not.i146, label %bb.u, label %bb.v, !llvm.loop !6

bb.v:                                             ; preds = %.lr.ph591
  %i.pa = icmp ult i64 %i.ox, %i.oz
  br i1 %i.pa, label %Abc_TtCopy.exit154, label %Abc_TtCompareRev.exit147

Abc_TtCompareRev.exit147:                         ; preds = %bb.v
  br i1 %i.b, label %Abc_TtCopy.exit154.thread, label %.lr.ph18.i150.preheader

.lr.ph18.i150.preheader:                          ; preds = %Abc_TtCompareRev.exit147
  %i.pb = shl nuw nsw i64 %.pre-phi, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @Abc_TtCofactorPermNaive.pBest, ptr nonnull align 16 @Abc_TtCofactorPermNaive.pCopy.1, i64 %i.pb, i1 false), !tbaa !32
  %i.pc = icmp slt i32 %1, 5
  br i1 %i.pc, label %.lr.ph64.i170, label %.thread

Abc_TtCopy.exit154:                               ; preds = %bb.u, %Abc_TtFlip.exit143, %bb.v
  %i.pd = icmp slt i32 %1, 5
  br i1 %i.pd, label %bb.w, label %bb.x

Abc_TtCopy.exit154.thread:                        ; preds = %Abc_TtCompareRev.exit147
  %i.pe = icmp slt i32 %1, 5
  br label %Abc_TtSwapAdjacent.exit175

bb.w:                                             ; preds = %Abc_TtCopy.exit154
  br i1 %i.b, label %Abc_TtSwapAdjacent.exit175, label %.lr.ph64.i170

.lr.ph64.i170:                                    ; preds = %.lr.ph18.i150.preheader, %bb.w
  %.2326333 = phi i32 [ %.1, %bb.w ], [ 2, %.lr.ph18.i150.preheader ] ; 2 uses
  %i.pf = shl nuw nsw i32 1, %1
  %i.pg = sext i32 %1 to i64
  %i.ph = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.pg ; 3 uses
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !32 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !32 ; 2 uses
  %i.pl = zext nneg i32 %i.pf to i64              ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !32 ; 2 uses
  %min.iters.check830 = icmp samesign ult i64 %.pre-phi, 4
  br i1 %min.iters.check830, label %scalar.ph829.preheader, label %vector.ph831

vector.ph831:                                     ; preds = %.lr.ph64.i170
  %n.vec832 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %broadcast.splatinsert833 = insertelement <2 x i64> poison, i64 %i.pi, i64 0
  %broadcast.splat834 = shufflevector <2 x i64> %broadcast.splatinsert833, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert835 = insertelement <2 x i64> poison, i64 %i.pk, i64 0
  %broadcast.splat836 = shufflevector <2 x i64> %broadcast.splatinsert835, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert837 = insertelement <2 x i64> poison, i64 %i.pl, i64 0
  %broadcast.splat838 = shufflevector <2 x i64> %broadcast.splatinsert837, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert839 = insertelement <2 x i64> poison, i64 %i.pn, i64 0
  %broadcast.splat840 = shufflevector <2 x i64> %broadcast.splatinsert839, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body841

vector.body841:                                   ; preds = %vector.body841, %vector.ph831
  %index842 = phi i64 [ 0, %vector.ph831 ], [ %index.next845, %vector.body841 ] ; 2 uses
  %i.po = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %index842 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 16 ; 2 uses
  %wide.load843 = load <2 x i64>, ptr %i.po, align 16, !tbaa !32 ; 3 uses
  %wide.load844 = load <2 x i64>, ptr %i.pp, align 16, !tbaa !32 ; 3 uses
  %i.pq = and <2 x i64> %wide.load843, %broadcast.splat834
  %i.pr = and <2 x i64> %wide.load844, %broadcast.splat834
  %i.ps = and <2 x i64> %wide.load843, %broadcast.splat836
  %i.pt = and <2 x i64> %wide.load844, %broadcast.splat836
  %i.pu = shl <2 x i64> %i.ps, %broadcast.splat838
  %i.pv = shl <2 x i64> %i.pt, %broadcast.splat838
  %i.pw = or <2 x i64> %i.pu, %i.pq
  %i.px = or <2 x i64> %i.pv, %i.pr
  %i.py = and <2 x i64> %wide.load843, %broadcast.splat840
  %i.pz = and <2 x i64> %wide.load844, %broadcast.splat840
  %i.qa = lshr <2 x i64> %i.py, %broadcast.splat838
  %i.qb = lshr <2 x i64> %i.pz, %broadcast.splat838
  %i.qc = or <2 x i64> %i.pw, %i.qa
  %i.qd = or <2 x i64> %i.px, %i.qb
  store <2 x i64> %i.qc, ptr %i.po, align 16, !tbaa !32
  store <2 x i64> %i.qd, ptr %i.pp, align 16, !tbaa !32
  %index.next845 = add nuw i64 %index842, 4       ; 2 uses
  %i.qe = icmp eq i64 %index.next845, %n.vec832
  br i1 %i.qe, label %middle.block846, label %vector.body841, !llvm.loop !161

middle.block846:                                  ; preds = %vector.body841
  %cmp.n847 = icmp eq i64 %.pre-phi, %n.vec832
  br i1 %cmp.n847, label %Abc_TtSwapAdjacent.exit175, label %scalar.ph829.preheader

scalar.ph829.preheader:                           ; preds = %.lr.ph64.i170, %middle.block846
  %indvars.iv70.i172.ph = phi i64 [ 0, %.lr.ph64.i170 ], [ %n.vec832, %middle.block846 ]
  br label %scalar.ph829

scalar.ph829:                                     ; preds = %scalar.ph829.preheader, %scalar.ph829
  %indvars.iv70.i172 = phi i64 [ %indvars.iv.next71.i173, %scalar.ph829 ], [ %indvars.iv70.i172.ph, %scalar.ph829.preheader ] ; 2 uses
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %indvars.iv70.i172 ; 2 uses
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !32 ; 3 uses
  %i.qh = and i64 %i.qg, %i.pi
  %i.qi = and i64 %i.qg, %i.pk
  %i.qj = shl i64 %i.qi, %i.pl
  %i.qk = or i64 %i.qj, %i.qh
  %i.ql = and i64 %i.qg, %i.pn
  %i.qm = lshr i64 %i.ql, %i.pl
  %i.qn = or i64 %i.qk, %i.qm
  store i64 %i.qn, ptr %i.qf, align 8, !tbaa !32
  %indvars.iv.next71.i173 = add nuw nsw i64 %indvars.iv70.i172, 1 ; 2 uses
  %exitcond74.not.i174 = icmp eq i64 %indvars.iv.next71.i173, %.pre-phi
  br i1 %exitcond74.not.i174, label %Abc_TtSwapAdjacent.exit175, label %scalar.ph829, !llvm.loop !162

bb.x:                                             ; preds = %Abc_TtCopy.exit154
  %i.qo = icmp eq i32 %1, 5
  %4 = sext i32 %2 to i64
  %.idx65.i155 = shl nsw i64 %4, 3
  %5 = getelementptr inbounds i8, ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %.idx65.i155 ; 2 uses
  br i1 %i.qo, label %bb.y, label %bb.z

.thread:                                          ; preds = %.lr.ph18.i150.preheader
  %i.qp = icmp eq i32 %1, 5
  %6 = zext nneg i32 %2 to i64
  %.idx65.i155500 = shl nuw nsw i64 %6, 3
  %7 = getelementptr inbounds nuw i8, ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %.idx65.i155500 ; 3 uses
  br i1 %i.qp, label %.lr.ph.i168.preheader, label %.thread506

.thread506:                                       ; preds = %.thread
  %i.qq = icmp samesign ult i32 %1, 7
  %i.qr = add nsw i32 %1, -6
  %i.qs = shl nuw i32 1, %i.qr
  br i1 %i.qq, label %.preheader.us.preheader.i157, label %.preheader.lr.ph.i156

bb.y:                                             ; preds = %bb.x
  br i1 %i.b, label %Abc_TtSwapAdjacent.exit175, label %.lr.ph.i168.preheader

.lr.ph.i168.preheader:                            ; preds = %.thread, %bb.y
  %.2325501505 = phi i32 [ %.1, %bb.y ], [ 2, %.thread ]
  %8 = phi ptr [ %5, %bb.y ], [ %7, %.thread ]
  br label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %.lr.ph.i168.preheader, %.lr.ph.i168
  %.05462.i169 = phi ptr [ %i.qw, %.lr.ph.i168 ], [ @Abc_TtCofactorPermNaive.pCopy.1, %.lr.ph.i168.preheader ] ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.05462.i169, i64 4 ; 2 uses
  %i.qu = load <2 x i32>, ptr %i.qt, align 4, !tbaa !34
  %i.qv = shufflevector <2 x i32> %i.qu, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.qv, ptr %i.qt, align 4, !tbaa !34
  %i.qw = getelementptr inbounds nuw i8, ptr %.05462.i169, i64 16 ; 2 uses
  %i.qx = icmp ult ptr %i.qw, %8
  br i1 %i.qx, label %.lr.ph.i168, label %Abc_TtSwapAdjacent.exit175, !llvm.loop !5

bb.z:                                             ; preds = %bb.x
  %i.qy = icmp samesign ult i32 %1, 7
  %i.qz = add nsw i32 %1, -6
  %i.ra = shl nuw i32 1, %i.qz
  %i.rb = select i1 %i.qy, i32 1, i32 %i.ra
  br i1 %i.b, label %Abc_TtSwapAdjacent.exit175, label %.preheader.lr.ph.i156

.preheader.lr.ph.i156:                            ; preds = %.thread506, %bb.z
  %i.rc = phi i32 [ %i.qs, %.thread506 ], [ %i.rb, %bb.z ] ; 3 uses
  %.2325502508 = phi i32 [ 2, %.thread506 ], [ %.1, %bb.z ] ; 2 uses
  %9 = phi ptr [ %7, %.thread506 ], [ %5, %bb.z ]
  %i.rd = icmp sgt i32 %i.rc, 0
  %i.re = shl nsw i32 %i.rc, 2
  %i.rf = sext i32 %i.re to i64
  br i1 %i.rd, label %.preheader.us.preheader.i157, label %Abc_TtSwapAdjacent.exit175

.preheader.us.preheader.i157:                     ; preds = %.thread506, %.preheader.lr.ph.i156
  %i.rg = phi i64 [ %i.rf, %.preheader.lr.ph.i156 ], [ 4, %.thread506 ]
  %10 = phi ptr [ %9, %.preheader.lr.ph.i156 ], [ %7, %.thread506 ]
  %.2325502508510 = phi i32 [ %.2325502508, %.preheader.lr.ph.i156 ], [ 2, %.thread506 ]
  %i.rh = phi i32 [ %i.rc, %.preheader.lr.ph.i156 ], [ 1, %.thread506 ] ; 3 uses
  %i.ri = shl nuw nsw i32 %i.rh, 1
  %i.rj = zext nneg i32 %i.rh to i64              ; 4 uses
  %i.rk = zext nneg i32 %i.ri to i64
  %min.iters.check816 = icmp samesign ult i32 %i.rh, 4
  %n.vec818 = and i64 %i.rj, 2147483644           ; 3 uses
  %cmp.n827 = icmp eq i64 %n.vec818, %i.rj
  br label %.preheader.us.i158

.preheader.us.i158:                               ; preds = %._crit_edge.us.i167, %.preheader.us.preheader.i157
  %.061.us.i159 = phi ptr [ %i.rs, %._crit_edge.us.i167 ], [ @Abc_TtCofactorPermNaive.pCopy.1, %.preheader.us.preheader.i157 ] ; 3 uses
  %invariant.gep.i160 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i159, i64 %i.rj ; 2 uses
  %invariant.gep80.i161 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i159, i64 %i.rk ; 2 uses
  br i1 %min.iters.check816, label %scalar.ph815.preheader, label %vector.body819

vector.body819:                                   ; preds = %.preheader.us.i158, %vector.body819
  %index820 = phi i64 [ %index.next825, %vector.body819 ], [ 0, %.preheader.us.i158 ] ; 3 uses
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i160, i64 %index820 ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 16 ; 2 uses
  %wide.load821 = load <2 x i64>, ptr %i.rl, align 8, !tbaa !32
  %wide.load822 = load <2 x i64>, ptr %i.rm, align 8, !tbaa !32
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i161, i64 %index820 ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 16 ; 2 uses
  %wide.load823 = load <2 x i64>, ptr %i.rn, align 8, !tbaa !32
  %wide.load824 = load <2 x i64>, ptr %i.ro, align 8, !tbaa !32
  store <2 x i64> %wide.load823, ptr %i.rl, align 8, !tbaa !32
  store <2 x i64> %wide.load824, ptr %i.rm, align 8, !tbaa !32
  store <2 x i64> %wide.load821, ptr %i.rn, align 8, !tbaa !32
  store <2 x i64> %wide.load822, ptr %i.ro, align 8, !tbaa !32
  %index.next825 = add nuw i64 %index820, 4       ; 2 uses
  %i.rp = icmp eq i64 %index.next825, %n.vec818
  br i1 %i.rp, label %middle.block826, label %vector.body819, !llvm.loop !163

middle.block826:                                  ; preds = %vector.body819
  br i1 %cmp.n827, label %._crit_edge.us.i167, label %scalar.ph815.preheader

scalar.ph815.preheader:                           ; preds = %.preheader.us.i158, %middle.block826
  %indvars.iv.i162.ph = phi i64 [ 0, %.preheader.us.i158 ], [ %n.vec818, %middle.block826 ]
  br label %scalar.ph815

scalar.ph815:                                     ; preds = %scalar.ph815.preheader, %scalar.ph815
  %indvars.iv.i162 = phi i64 [ %indvars.iv.next.i165, %scalar.ph815 ], [ %indvars.iv.i162.ph, %scalar.ph815.preheader ] ; 3 uses
  %gep.i163 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i160, i64 %indvars.iv.i162 ; 2 uses
  %i.rq = load i64, ptr %gep.i163, align 8, !tbaa !32
  %gep81.i164 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i161, i64 %indvars.iv.i162 ; 2 uses
  %i.rr = load i64, ptr %gep81.i164, align 8, !tbaa !32
  store i64 %i.rr, ptr %gep.i163, align 8, !tbaa !32
  store i64 %i.rq, ptr %gep81.i164, align 8, !tbaa !32
  %indvars.iv.next.i165 = add nuw nsw i64 %indvars.iv.i162, 1 ; 2 uses
  %exitcond.not.i166 = icmp eq i64 %indvars.iv.next.i165, %i.rj
  br i1 %exitcond.not.i166, label %._crit_edge.us.i167, label %scalar.ph815, !llvm.loop !164

._crit_edge.us.i167:                              ; preds = %scalar.ph815, %middle.block826
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i159, i64 %i.rg ; 2 uses
  %i.rt = icmp ult ptr %i.rs, %10
  br i1 %i.rt, label %.preheader.us.i158, label %Abc_TtSwapAdjacent.exit175, !llvm.loop !4

Abc_TtSwapAdjacent.exit175:                       ; preds = %._crit_edge.us.i167, %.lr.ph.i168, %scalar.ph829, %middle.block846, %Abc_TtCopy.exit154.thread, %bb.w, %bb.y, %bb.z, %.preheader.lr.ph.i156
  %i.ru = phi i1 [ true, %bb.w ], [ %i.pe, %Abc_TtCopy.exit154.thread ], [ false, %bb.y ], [ false, %.lr.ph.i168 ], [ false, %bb.z ], [ false, %.preheader.lr.ph.i156 ], [ true, %middle.block846 ], [ true, %scalar.ph829 ], [ false, %._crit_edge.us.i167 ] ; 2 uses
  %.2324 = phi i32 [ %.1, %bb.w ], [ 2, %Abc_TtCopy.exit154.thread ], [ %.1, %bb.y ], [ %.2325501505, %.lr.ph.i168 ], [ %.1, %bb.z ], [ %.2325502508, %.preheader.lr.ph.i156 ], [ %.2326333, %middle.block846 ], [ %.2326333, %scalar.ph829 ], [ %.2325502508510, %._crit_edge.us.i167 ] ; 3 uses
  %i.rv = trunc nuw i64 %.pre-phi to i32
  %i.rw = icmp sgt i32 %i.rv, 0
  br i1 %i.rw, label %.lr.ph593, label %Abc_TtCopy.exit186

bb.aa:                                            ; preds = %.lr.ph593
  %i.rx = trunc nuw i64 %i.rz to i32
  %i.ry = icmp sgt i32 %i.rx, 0
  br i1 %i.ry, label %.lr.ph593, label %Abc_TtCopy.exit186, !llvm.loop !6

.lr.ph593:                                        ; preds = %Abc_TtSwapAdjacent.exit175, %bb.aa
  %indvars.iv.i176592 = phi i64 [ %i.rz, %bb.aa ], [ %.pre-phi, %Abc_TtSwapAdjacent.exit175 ]
  %i.rz = add nsw i64 %indvars.iv.i176592, -1     ; 4 uses
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPermNaive.pBest, i64 %i.rz
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !32 ; 2 uses
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %i.rz
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !32 ; 2 uses
  %.not.i178 = icmp eq i64 %i.sb, %i.sd
  br i1 %.not.i178, label %bb.aa, label %bb.ab, !llvm.loop !6

bb.ab:                                            ; preds = %.lr.ph593
  %i.se = icmp ult i64 %i.sb, %i.sd               ; 2 uses
  %brmerge383 = or i1 %i.b, %i.se
  %.2324.mux = select i1 %i.se, i32 %.2324, i32 6
  br i1 %brmerge383, label %Abc_TtCopy.exit186, label %.lr.ph18.i182.preheader

.lr.ph18.i182.preheader:                          ; preds = %bb.ab
  %i.sf = shl nuw nsw i64 %.pre-phi, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @Abc_TtCofactorPermNaive.pBest, ptr nonnull align 16 @Abc_TtCofactorPermNaive.pCopy.1, i64 %i.sf, i1 false), !tbaa !32
  br label %Abc_TtCopy.exit186

Abc_TtCopy.exit186:                               ; preds = %bb.aa, %Abc_TtSwapAdjacent.exit175, %.lr.ph18.i182.preheader, %bb.ab
  %.3 = phi i32 [ 6, %.lr.ph18.i182.preheader ], [ %.2324.mux, %bb.ab ], [ %.2324, %Abc_TtSwapAdjacent.exit175 ], [ %.2324, %bb.aa ] ; 3 uses
  br i1 %i.ij, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %Abc_TtCopy.exit186
  %i.sg = load i64, ptr @Abc_TtCofactorPermNaive.pCopy.1, align 16, !tbaa !32 ; 2 uses
  %i.sh = shl nuw i32 1, %i.iv
  %i.si = zext i32 %i.sh to i64                   ; 2 uses
  %i.sj = shl i64 %i.sg, %i.si
  %i.sk = sext i32 %i.iv to i64
  %i.sl = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.sk
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !32 ; 2 uses
  %i.sn = and i64 %i.sj, %i.sm
  %i.so = and i64 %i.sm, %i.sg
  %i.sp = lshr i64 %i.so, %i.si
  %i.sq = or i64 %i.sp, %i.sn
  store i64 %i.sq, ptr @Abc_TtCofactorPermNaive.pCopy.1, align 16, !tbaa !32
  br label %Abc_TtFlip.exit206

bb.ad:                                            ; preds = %Abc_TtCopy.exit186
  %i.sr = icmp slt i32 %1, 5
  br i1 %i.sr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.b, label %Abc_TtFlip.exit206, label %.lr.ph.i201

.lr.ph.i201:                                      ; preds = %bb.ae
  %i.ss = shl nuw nsw i32 1, %i.iv
  %i.st = zext nneg i32 %i.ss to i64              ; 3 uses
  %i.su = sext i32 %i.iv to i64
  %i.sv = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.su
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !32 ; 3 uses
  %min.iters.check878 = icmp samesign ult i64 %.pre-phi, 4
  br i1 %min.iters.check878, label %scalar.ph877.preheader, label %vector.ph879

vector.ph879:                                     ; preds = %.lr.ph.i201
  %n.vec880 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %broadcast.splatinsert881 = insertelement <2 x i64> poison, i64 %i.st, i64 0
  %broadcast.splat882 = shufflevector <2 x i64> %broadcast.splatinsert881, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert883 = insertelement <2 x i64> poison, i64 %i.sw, i64 0
  %broadcast.splat884 = shufflevector <2 x i64> %broadcast.splatinsert883, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body885

vector.body885:                                   ; preds = %vector.body885, %vector.ph879
  %index886 = phi i64 [ 0, %vector.ph879 ], [ %index.next889, %vector.body885 ] ; 2 uses
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %index886 ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 16 ; 2 uses
  %wide.load887 = load <2 x i64>, ptr %i.sx, align 16, !tbaa !32 ; 2 uses
  %wide.load888 = load <2 x i64>, ptr %i.sy, align 16, !tbaa !32 ; 2 uses
  %i.sz = shl <2 x i64> %wide.load887, %broadcast.splat882
  %i.ta = shl <2 x i64> %wide.load888, %broadcast.splat882
  %i.tb = and <2 x i64> %i.sz, %broadcast.splat884
  %i.tc = and <2 x i64> %i.ta, %broadcast.splat884
  %i.td = and <2 x i64> %wide.load887, %broadcast.splat884
  %i.te = and <2 x i64> %wide.load888, %broadcast.splat884
  %i.tf = lshr <2 x i64> %i.td, %broadcast.splat882
  %i.tg = lshr <2 x i64> %i.te, %broadcast.splat882
  %i.th = or <2 x i64> %i.tf, %i.tb
  %i.ti = or <2 x i64> %i.tg, %i.tc
  store <2 x i64> %i.th, ptr %i.sx, align 16, !tbaa !32
  store <2 x i64> %i.ti, ptr %i.sy, align 16, !tbaa !32
  %index.next889 = add nuw i64 %index886, 4       ; 2 uses
  %i.tj = icmp eq i64 %index.next889, %n.vec880
  br i1 %i.tj, label %middle.block890, label %vector.body885, !llvm.loop !165

middle.block890:                                  ; preds = %vector.body885
  %cmp.n891 = icmp eq i64 %.pre-phi, %n.vec880
  br i1 %cmp.n891, label %Abc_TtFlip.exit206, label %scalar.ph877.preheader

scalar.ph877.preheader:                           ; preds = %.lr.ph.i201, %middle.block890
  %indvars.iv56.i203.ph = phi i64 [ 0, %.lr.ph.i201 ], [ %n.vec880, %middle.block890 ]
  br label %scalar.ph877

scalar.ph877:                                     ; preds = %scalar.ph877.preheader, %scalar.ph877
  %indvars.iv56.i203 = phi i64 [ %indvars.iv.next57.i204, %scalar.ph877 ], [ %indvars.iv56.i203.ph, %scalar.ph877.preheader ] ; 2 uses
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %indvars.iv56.i203 ; 2 uses
  %i.tl = load i64, ptr %i.tk, align 8, !tbaa !32 ; 2 uses
  %i.tm = shl i64 %i.tl, %i.st
  %i.tn = and i64 %i.tm, %i.sw
  %i.to = and i64 %i.tl, %i.sw
  %i.tp = lshr i64 %i.to, %i.st
  %i.tq = or i64 %i.tp, %i.tn
  store i64 %i.tq, ptr %i.tk, align 8, !tbaa !32
  %indvars.iv.next57.i204 = add nuw nsw i64 %indvars.iv56.i203, 1 ; 2 uses
  %exitcond60.not.i205 = icmp eq i64 %indvars.iv.next57.i204, %.pre-phi
  br i1 %exitcond60.not.i205, label %Abc_TtFlip.exit206, label %scalar.ph877, !llvm.loop !166

bb.af:                                            ; preds = %bb.ad
  %i.tr = sext i32 %2 to i64
  %.idx.i187 = shl nsw i64 %i.tr, 3
  %i.ts = getelementptr inbounds i8, ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %.idx.i187
  %i.tt = add nsw i32 %1, -5                      ; 3 uses
  %i.tu = shl nuw i32 1, %i.tt                    ; 4 uses
  br i1 %i.b, label %Abc_TtFlip.exit206, label %.preheader.lr.ph.i188

.preheader.lr.ph.i188:                            ; preds = %bb.af
  %.not.i189 = icmp eq i32 %i.tt, 31
  %i.tv = shl i32 2, %i.tt
  %i.tw = sext i32 %i.tv to i64                   ; 2 uses
  br i1 %.not.i189, label %Abc_TtFlip.exit206, label %.preheader.us.preheader.i190

.preheader.us.preheader.i190:                     ; preds = %.preheader.lr.ph.i188
  %i.tx = sext i32 %i.tu to i64                   ; 2 uses
  %smax.i191 = tail call i32 @llvm.smax.i32(i32 %i.tu, i32 1) ; 2 uses
  %wide.trip.count.i192 = zext nneg i32 %smax.i191 to i64 ; 5 uses
  %i.ty = shl nuw nsw i64 %wide.trip.count.i192, 3
  %i.tz = add nsw i64 %i.tx, %wide.trip.count.i192
  %i.ua = shl nsw i64 %i.tz, 3
  %i.ub = shl nsw i64 %i.tw, 3
  %min.iters.check860 = icmp slt i32 %i.tu, 4
  %i.uc = getelementptr i8, ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %i.ty
  %i.ud = getelementptr i8, ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %i.ua
  %n.vec866 = and i64 %wide.trip.count.i192, 2147483644
  %xtraiter1110 = and i64 %wide.trip.count.i192, 1
  %i.ue = icmp slt i32 %i.tu, 2
  %unroll_iter1113 = and i64 %wide.trip.count.i192, 2147483646
  %lcmp.mod1111.not = icmp eq i64 %xtraiter1110, 0
  %lcmp.mod1112 = trunc i32 %smax.i191 to i1
  br label %.preheader.us.i193

.preheader.us.i193:                               ; preds = %._crit_edge.us.i200, %.preheader.us.preheader.i190
  %indvar857 = phi i64 [ %indvar.next858, %._crit_edge.us.i200 ], [ 0, %.preheader.us.preheader.i190 ] ; 2 uses
  %.051.us.i194 = phi ptr [ %i.uw, %._crit_edge.us.i200 ], [ @Abc_TtCofactorPermNaive.pCopy.1, %.preheader.us.preheader.i190 ] ; 7 uses
  %invariant.gep.i195 = getelementptr [8 x i8], ptr %.051.us.i194, i64 %i.tx ; 5 uses
  br i1 %min.iters.check860, label %scalar.ph859.preheader, label %vector.memcheck861

scalar.ph859.preheader:                           ; preds = %vector.memcheck861, %.preheader.us.i193
  br i1 %i.ue, label %scalar.ph859.epil.preheader, label %scalar.ph859

vector.memcheck861:                               ; preds = %.preheader.us.i193
  %i.uf = mul i64 %indvar857, %i.ub               ; 2 uses
  %i.ug = getelementptr i8, ptr %i.uc, i64 %i.uf
  %i.uh = getelementptr i8, ptr %i.ud, i64 %i.uf
  %bound0862 = icmp ult ptr %.051.us.i194, %i.uh
  %bound1863 = icmp ult ptr %invariant.gep.i195, %i.ug
  %found.conflict864 = and i1 %bound0862, %bound1863
  br i1 %found.conflict864, label %scalar.ph859.preheader, label %vector.body867

vector.body867:                                   ; preds = %vector.memcheck861, %vector.body867
  %index868 = phi i64 [ %index.next873, %vector.body867 ], [ 0, %vector.memcheck861 ] ; 3 uses
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i194, i64 %index868 ; 3 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 16 ; 2 uses
  %wide.load869 = load <2 x i64>, ptr %i.ui, align 8, !tbaa !32, !alias.scope !200, !noalias !201
  %wide.load870 = load <2 x i64>, ptr %i.uj, align 8, !tbaa !32, !alias.scope !200, !noalias !201
  %i.uk = getelementptr [8 x i8], ptr %invariant.gep.i195, i64 %index868 ; 3 uses
  %i.ul = getelementptr i8, ptr %i.uk, i64 16     ; 2 uses
  %wide.load871 = load <2 x i64>, ptr %i.uk, align 8, !tbaa !32, !alias.scope !201
  %wide.load872 = load <2 x i64>, ptr %i.ul, align 8, !tbaa !32, !alias.scope !201
  store <2 x i64> %wide.load871, ptr %i.ui, align 8, !tbaa !32, !alias.scope !200, !noalias !201
  store <2 x i64> %wide.load872, ptr %i.uj, align 8, !tbaa !32, !alias.scope !200, !noalias !201
  store <2 x i64> %wide.load869, ptr %i.uk, align 8, !tbaa !32, !alias.scope !201
  store <2 x i64> %wide.load870, ptr %i.ul, align 8, !tbaa !32, !alias.scope !201
  %index.next873 = add nuw i64 %index868, 4       ; 2 uses
  %i.um = icmp eq i64 %index.next873, %n.vec866
  br i1 %i.um, label %._crit_edge.us.i200, label %vector.body867, !llvm.loop !170

scalar.ph859:                                     ; preds = %scalar.ph859.preheader, %scalar.ph859
  %indvars.iv.i196 = phi i64 [ %indvars.iv.next.i198.1, %scalar.ph859 ], [ 0, %scalar.ph859.preheader ] ; 4 uses
  %niter1114 = phi i64 [ %niter1114.next.1, %scalar.ph859 ], [ 0, %scalar.ph859.preheader ]
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i194, i64 %indvars.iv.i196 ; 2 uses
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !32
  %gep.i197 = getelementptr [8 x i8], ptr %invariant.gep.i195, i64 %indvars.iv.i196 ; 2 uses
  %i.up = load i64, ptr %gep.i197, align 8, !tbaa !32
  store i64 %i.up, ptr %i.un, align 8, !tbaa !32
  store i64 %i.uo, ptr %gep.i197, align 8, !tbaa !32
  %indvars.iv.next.i198 = or disjoint i64 %indvars.iv.i196, 1 ; 2 uses
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i194, i64 %indvars.iv.next.i198 ; 2 uses
  %i.ur = load i64, ptr %i.uq, align 8, !tbaa !32
  %gep.i197.1 = getelementptr [8 x i8], ptr %invariant.gep.i195, i64 %indvars.iv.next.i198 ; 2 uses
  %i.us = load i64, ptr %gep.i197.1, align 8, !tbaa !32
end_hunk_1
begin_hunk_2_@Abc_TtCofactorPermNaive:bb.a
  %xtraiter1120 = and i64 %wide.trip.count.i254, 1
  %i.aak = icmp slt i32 %i.aaa, 2
  %unroll_iter1123 = and i64 %wide.trip.count.i254, 2147483646
  %lcmp.mod1121.not = icmp eq i64 %xtraiter1120, 0
  %lcmp.mod1122 = trunc i32 %smax.i253 to i1
  br label %.preheader.us.i255

.preheader.us.i255:                               ; preds = %._crit_edge.us.i262, %.preheader.us.preheader.i252
  %indvar945 = phi i64 [ %indvar.next946, %._crit_edge.us.i262 ], [ 0, %.preheader.us.preheader.i252 ] ; 2 uses
  %.051.us.i256 = phi ptr [ %i.abc, %._crit_edge.us.i262 ], [ @Abc_TtCofactorPermNaive.pCopy.1, %.preheader.us.preheader.i252 ] ; 7 uses
  %invariant.gep.i257 = getelementptr [8 x i8], ptr %.051.us.i256, i64 %i.aad ; 5 uses
  br i1 %min.iters.check948, label %scalar.ph947.preheader, label %vector.memcheck949

scalar.ph947.preheader:                           ; preds = %vector.memcheck949, %.preheader.us.i255
  br i1 %i.aak, label %scalar.ph947.epil.preheader, label %scalar.ph947

vector.memcheck949:                               ; preds = %.preheader.us.i255
  %i.aal = mul i64 %indvar945, %i.aah             ; 2 uses
  %i.aam = getelementptr i8, ptr %i.aai, i64 %i.aal
  %i.aan = getelementptr i8, ptr %i.aaj, i64 %i.aal
  %bound0950 = icmp ult ptr %.051.us.i256, %i.aan
  %bound1951 = icmp ult ptr %invariant.gep.i257, %i.aam
  %found.conflict952 = and i1 %bound0950, %bound1951
  br i1 %found.conflict952, label %scalar.ph947.preheader, label %vector.body955

vector.body955:                                   ; preds = %vector.memcheck949, %vector.body955
  %index956 = phi i64 [ %index.next961, %vector.body955 ], [ 0, %vector.memcheck949 ] ; 3 uses
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i256, i64 %index956 ; 3 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 16 ; 2 uses
  %wide.load957 = load <2 x i64>, ptr %i.aao, align 8, !tbaa !32, !alias.scope !204, !noalias !205
  %wide.load958 = load <2 x i64>, ptr %i.aap, align 8, !tbaa !32, !alias.scope !204, !noalias !205
  %i.aaq = getelementptr [8 x i8], ptr %invariant.gep.i257, i64 %index956 ; 3 uses
  %i.aar = getelementptr i8, ptr %i.aaq, i64 16   ; 2 uses
  %wide.load959 = load <2 x i64>, ptr %i.aaq, align 8, !tbaa !32, !alias.scope !205
  %wide.load960 = load <2 x i64>, ptr %i.aar, align 8, !tbaa !32, !alias.scope !205
  store <2 x i64> %wide.load959, ptr %i.aao, align 8, !tbaa !32, !alias.scope !204, !noalias !205
  store <2 x i64> %wide.load960, ptr %i.aap, align 8, !tbaa !32, !alias.scope !204, !noalias !205
  store <2 x i64> %wide.load957, ptr %i.aaq, align 8, !tbaa !32, !alias.scope !205
  store <2 x i64> %wide.load958, ptr %i.aar, align 8, !tbaa !32, !alias.scope !205
  %index.next961 = add nuw i64 %index956, 4       ; 2 uses
  %i.aas = icmp eq i64 %index.next961, %n.vec954
  br i1 %i.aas, label %._crit_edge.us.i262, label %vector.body955, !llvm.loop !184

scalar.ph947:                                     ; preds = %scalar.ph947.preheader, %scalar.ph947
  %indvars.iv.i258 = phi i64 [ %indvars.iv.next.i260.1, %scalar.ph947 ], [ 0, %scalar.ph947.preheader ] ; 4 uses
  %niter1124 = phi i64 [ %niter1124.next.1, %scalar.ph947 ], [ 0, %scalar.ph947.preheader ]
  %i.aat = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i256, i64 %indvars.iv.i258 ; 2 uses
  %i.aau = load i64, ptr %i.aat, align 8, !tbaa !32
  %gep.i259 = getelementptr [8 x i8], ptr %invariant.gep.i257, i64 %indvars.iv.i258 ; 2 uses
  %i.aav = load i64, ptr %gep.i259, align 8, !tbaa !32
  store i64 %i.aav, ptr %i.aat, align 8, !tbaa !32
  store i64 %i.aau, ptr %gep.i259, align 8, !tbaa !32
  %indvars.iv.next.i260 = or disjoint i64 %indvars.iv.i258, 1 ; 2 uses
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i256, i64 %indvars.iv.next.i260 ; 2 uses
  %i.aax = load i64, ptr %i.aaw, align 8, !tbaa !32
  %gep.i259.1 = getelementptr [8 x i8], ptr %invariant.gep.i257, i64 %indvars.iv.next.i260 ; 2 uses
  %i.aay = load i64, ptr %gep.i259.1, align 8, !tbaa !32
  store i64 %i.aay, ptr %i.aaw, align 8, !tbaa !32
  store i64 %i.aax, ptr %gep.i259.1, align 8, !tbaa !32
  %indvars.iv.next.i260.1 = add nuw nsw i64 %indvars.iv.i258, 2 ; 2 uses
  %niter1124.next.1 = add i64 %niter1124, 2       ; 2 uses
  %niter1124.ncmp.1 = icmp eq i64 %niter1124.next.1, %unroll_iter1123
  br i1 %niter1124.ncmp.1, label %._crit_edge.us.i262.loopexit.unr-lcssa, label %scalar.ph947, !llvm.loop !185

._crit_edge.us.i262.loopexit.unr-lcssa:           ; preds = %scalar.ph947
  br i1 %lcmp.mod1121.not, label %._crit_edge.us.i262, label %scalar.ph947.epil.preheader

scalar.ph947.epil.preheader:                      ; preds = %._crit_edge.us.i262.loopexit.unr-lcssa, %scalar.ph947.preheader
  %indvars.iv.i258.epil.init = phi i64 [ 0, %scalar.ph947.preheader ], [ %indvars.iv.next.i260.1, %._crit_edge.us.i262.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1122)
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i256, i64 %indvars.iv.i258.epil.init ; 2 uses
  %i.aba = load i64, ptr %i.aaz, align 8, !tbaa !32
  %gep.i259.epil = getelementptr [8 x i8], ptr %invariant.gep.i257, i64 %indvars.iv.i258.epil.init ; 2 uses
  %i.abb = load i64, ptr %gep.i259.epil, align 8, !tbaa !32
  store i64 %i.abb, ptr %i.aaz, align 8, !tbaa !32
  store i64 %i.aba, ptr %gep.i259.epil, align 8, !tbaa !32
  br label %._crit_edge.us.i262

._crit_edge.us.i262:                              ; preds = %vector.body955, %scalar.ph947.epil.preheader, %._crit_edge.us.i262.loopexit.unr-lcssa
  %i.abc = getelementptr inbounds [8 x i8], ptr %.051.us.i256, i64 %i.aac ; 2 uses
  %i.abd = icmp ult ptr %i.abc, %i.zy
  %indvar.next946 = add i64 %indvar945, 1
  br i1 %i.abd, label %.preheader.us.i255, label %Abc_TtFlip.exit268, !llvm.loop !7

Abc_TtFlip.exit268:                               ; preds = %._crit_edge.us.i262, %scalar.ph965, %middle.block978, %bb.ao, %bb.aq, %bb.ar, %.preheader.lr.ph.i250
  %i.abe = trunc nuw i64 %.pre-phi to i32
  %i.abf = icmp sgt i32 %i.abe, 0
  br i1 %i.abf, label %.lr.ph599, label %Abc_TtCopy.exit279

bb.as:                                            ; preds = %.lr.ph599
  %i.abg = trunc nuw i64 %i.abi to i32
  %i.abh = icmp sgt i32 %i.abg, 0
  br i1 %i.abh, label %.lr.ph599, label %Abc_TtCopy.exit279, !llvm.loop !6

.lr.ph599:                                        ; preds = %Abc_TtFlip.exit268, %bb.as
  %indvars.iv.i269598 = phi i64 [ %i.abi, %bb.as ], [ %.pre-phi, %Abc_TtFlip.exit268 ]
  %i.abi = add nsw i64 %indvars.iv.i269598, -1    ; 4 uses
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPermNaive.pBest, i64 %i.abi
  %i.abk = load i64, ptr %i.abj, align 8, !tbaa !32 ; 2 uses
  %i.abl = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %i.abi
  %i.abm = load i64, ptr %i.abl, align 8, !tbaa !32 ; 2 uses
  %.not.i271 = icmp eq i64 %i.abk, %i.abm
  br i1 %.not.i271, label %bb.as, label %bb.at, !llvm.loop !6

bb.at:                                            ; preds = %.lr.ph599
  %i.abn = icmp ult i64 %i.abk, %i.abm
  br i1 %i.abn, label %Abc_TtCopy.exit279, label %Abc_TtCompareRev.exit272

Abc_TtCompareRev.exit272:                         ; preds = %bb.at
  br i1 %i.b, label %Abc_TtCopy.exit56, label %.lr.ph18.i275.preheader

.lr.ph18.i275.preheader:                          ; preds = %Abc_TtCompareRev.exit272
  %i.abo = shl nuw nsw i64 %.pre-phi, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @Abc_TtCofactorPermNaive.pBest, ptr nonnull align 16 @Abc_TtCofactorPermNaive.pCopy.1, i64 %i.abo, i1 false), !tbaa !32
  br i1 %i.ru, label %.lr.ph64.i295, label %.thread511

Abc_TtCopy.exit279:                               ; preds = %bb.as, %Abc_TtFlip.exit268, %bb.at
  br i1 %i.ru, label %bb.au, label %bb.av

bb.au:                                            ; preds = %Abc_TtCopy.exit279
  br i1 %i.b, label %Abc_TtCopy.exit56, label %.lr.ph64.i295

.lr.ph64.i295:                                    ; preds = %.lr.ph18.i275.preheader, %bb.au
  %.6354361 = phi i32 [ %.5, %bb.au ], [ 4, %.lr.ph18.i275.preheader ] ; 2 uses
  %i.abp = shl nuw nsw i32 1, %1
  %i.abq = sext i32 %1 to i64
  %i.abr = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.abq ; 3 uses
  %i.abs = load i64, ptr %i.abr, align 8, !tbaa !32 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  %i.abu = load i64, ptr %i.abt, align 8, !tbaa !32 ; 2 uses
  %i.abv = zext nneg i32 %i.abp to i64            ; 3 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abr, i64 16
  %i.abx = load i64, ptr %i.abw, align 8, !tbaa !32 ; 2 uses
  %min.iters.check996 = icmp samesign ult i64 %.pre-phi, 4
  br i1 %min.iters.check996, label %scalar.ph995.preheader, label %vector.ph997

vector.ph997:                                     ; preds = %.lr.ph64.i295
  %n.vec998 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %broadcast.splatinsert999 = insertelement <2 x i64> poison, i64 %i.abs, i64 0
  %broadcast.splat1000 = shufflevector <2 x i64> %broadcast.splatinsert999, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1001 = insertelement <2 x i64> poison, i64 %i.abu, i64 0
  %broadcast.splat1002 = shufflevector <2 x i64> %broadcast.splatinsert1001, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1003 = insertelement <2 x i64> poison, i64 %i.abv, i64 0
  %broadcast.splat1004 = shufflevector <2 x i64> %broadcast.splatinsert1003, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1005 = insertelement <2 x i64> poison, i64 %i.abx, i64 0
  %broadcast.splat1006 = shufflevector <2 x i64> %broadcast.splatinsert1005, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1007

vector.body1007:                                  ; preds = %vector.body1007, %vector.ph997
  %index1008 = phi i64 [ 0, %vector.ph997 ], [ %index.next1011, %vector.body1007 ] ; 2 uses
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %index1008 ; 3 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 16 ; 2 uses
  %wide.load1009 = load <2 x i64>, ptr %i.aby, align 16, !tbaa !32 ; 3 uses
  %wide.load1010 = load <2 x i64>, ptr %i.abz, align 16, !tbaa !32 ; 3 uses
  %i.aca = and <2 x i64> %wide.load1009, %broadcast.splat1000
  %i.acb = and <2 x i64> %wide.load1010, %broadcast.splat1000
  %i.acc = and <2 x i64> %wide.load1009, %broadcast.splat1002
  %i.acd = and <2 x i64> %wide.load1010, %broadcast.splat1002
  %i.ace = shl <2 x i64> %i.acc, %broadcast.splat1004
  %i.acf = shl <2 x i64> %i.acd, %broadcast.splat1004
  %i.acg = or <2 x i64> %i.ace, %i.aca
  %i.ach = or <2 x i64> %i.acf, %i.acb
  %i.aci = and <2 x i64> %wide.load1009, %broadcast.splat1006
  %i.acj = and <2 x i64> %wide.load1010, %broadcast.splat1006
  %i.ack = lshr <2 x i64> %i.aci, %broadcast.splat1004
  %i.acl = lshr <2 x i64> %i.acj, %broadcast.splat1004
  %i.acm = or <2 x i64> %i.acg, %i.ack
  %i.acn = or <2 x i64> %i.ach, %i.acl
  store <2 x i64> %i.acm, ptr %i.aby, align 16, !tbaa !32
  store <2 x i64> %i.acn, ptr %i.abz, align 16, !tbaa !32
  %index.next1011 = add nuw i64 %index1008, 4     ; 2 uses
  %i.aco = icmp eq i64 %index.next1011, %n.vec998
  br i1 %i.aco, label %middle.block1012, label %vector.body1007, !llvm.loop !186

middle.block1012:                                 ; preds = %vector.body1007
  %cmp.n1013 = icmp eq i64 %.pre-phi, %n.vec998
  br i1 %cmp.n1013, label %Abc_TtSwapAdjacent.exit300, label %scalar.ph995.preheader

scalar.ph995.preheader:                           ; preds = %.lr.ph64.i295, %middle.block1012
  %indvars.iv70.i297.ph = phi i64 [ 0, %.lr.ph64.i295 ], [ %n.vec998, %middle.block1012 ]
  br label %scalar.ph995

scalar.ph995:                                     ; preds = %scalar.ph995.preheader, %scalar.ph995
  %indvars.iv70.i297 = phi i64 [ %indvars.iv.next71.i298, %scalar.ph995 ], [ %indvars.iv70.i297.ph, %scalar.ph995.preheader ] ; 2 uses
  %i.acp = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %indvars.iv70.i297 ; 2 uses
  %i.acq = load i64, ptr %i.acp, align 8, !tbaa !32 ; 3 uses
  %i.acr = and i64 %i.acq, %i.abs
  %i.acs = and i64 %i.acq, %i.abu
  %i.act = shl i64 %i.acs, %i.abv
  %i.acu = or i64 %i.act, %i.acr
  %i.acv = and i64 %i.acq, %i.abx
  %i.acw = lshr i64 %i.acv, %i.abv
  %i.acx = or i64 %i.acu, %i.acw
  store i64 %i.acx, ptr %i.acp, align 8, !tbaa !32
  %indvars.iv.next71.i298 = add nuw nsw i64 %indvars.iv70.i297, 1 ; 2 uses
  %exitcond74.not.i299 = icmp eq i64 %indvars.iv.next71.i298, %.pre-phi
  br i1 %exitcond74.not.i299, label %Abc_TtSwapAdjacent.exit300, label %scalar.ph995, !llvm.loop !187

bb.av:                                            ; preds = %Abc_TtCopy.exit279
  %i.acy = icmp eq i32 %1, 5
  %11 = sext i32 %2 to i64
  %.idx65.i280 = shl nsw i64 %11, 3
  %12 = getelementptr inbounds i8, ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %.idx65.i280 ; 2 uses
  br i1 %i.acy, label %bb.aw, label %bb.ax

.thread511:                                       ; preds = %.lr.ph18.i275.preheader
  %i.acz = icmp eq i32 %1, 5
  %13 = zext nneg i32 %2 to i64
  %.idx65.i280513 = shl nuw nsw i64 %13, 3
  %14 = getelementptr inbounds nuw i8, ptr @Abc_TtCofactorPermNaive.pCopy.1, i64 %.idx65.i280513 ; 3 uses
  br i1 %i.acz, label %.lr.ph.i293.preheader, label %.thread519

.thread519:                                       ; preds = %.thread511
  %i.ada = icmp samesign ult i32 %1, 7
  %i.adb = add nsw i32 %1, -6
  %i.adc = shl nuw i32 1, %i.adb
  br i1 %i.ada, label %.preheader.us.preheader.i282, label %.preheader.lr.ph.i281

bb.aw:                                            ; preds = %bb.av
  br i1 %i.b, label %Abc_TtCopy.exit56, label %.lr.ph.i293.preheader

.lr.ph.i293.preheader:                            ; preds = %.thread511, %bb.aw
  %.6353514518 = phi i32 [ %.5, %bb.aw ], [ 4, %.thread511 ]
  %15 = phi ptr [ %12, %bb.aw ], [ %14, %.thread511 ]
  br label %.lr.ph.i293

.lr.ph.i293:                                      ; preds = %.lr.ph.i293.preheader, %.lr.ph.i293
  %.05462.i294 = phi ptr [ %i.adg, %.lr.ph.i293 ], [ @Abc_TtCofactorPermNaive.pCopy.1, %.lr.ph.i293.preheader ] ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %.05462.i294, i64 4 ; 2 uses
  %i.ade = load <2 x i32>, ptr %i.add, align 4, !tbaa !34
  %i.adf = shufflevector <2 x i32> %i.ade, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.adf, ptr %i.add, align 4, !tbaa !34
  %i.adg = getelementptr inbounds nuw i8, ptr %.05462.i294, i64 16 ; 2 uses
  %i.adh = icmp ult ptr %i.adg, %15
  br i1 %i.adh, label %.lr.ph.i293, label %Abc_TtSwapAdjacent.exit300, !llvm.loop !5

bb.ax:                                            ; preds = %bb.av
  %i.adi = icmp samesign ult i32 %1, 7
  %i.adj = add nsw i32 %1, -6
  %i.adk = shl nuw i32 1, %i.adj
  %i.adl = select i1 %i.adi, i32 1, i32 %i.adk
  br i1 %i.b, label %Abc_TtCopy.exit56, label %.preheader.lr.ph.i281

.preheader.lr.ph.i281:                            ; preds = %.thread519, %bb.ax
  %i.adm = phi i32 [ %i.adc, %.thread519 ], [ %i.adl, %bb.ax ] ; 3 uses
  %.6353515521 = phi i32 [ 4, %.thread519 ], [ %.5, %bb.ax ] ; 2 uses
  %16 = phi ptr [ %14, %.thread519 ], [ %12, %bb.ax ]
  %i.adn = icmp sgt i32 %i.adm, 0
  %i.ado = shl nsw i32 %i.adm, 2
  %i.adp = sext i32 %i.ado to i64
  br i1 %i.adn, label %.preheader.us.preheader.i282, label %Abc_TtSwapAdjacent.exit300

.preheader.us.preheader.i282:                     ; preds = %.thread519, %.preheader.lr.ph.i281
  %i.adq = phi i64 [ %i.adp, %.preheader.lr.ph.i281 ], [ 4, %.thread519 ]
  %17 = phi ptr [ %16, %.preheader.lr.ph.i281 ], [ %14, %.thread519 ]
  %.6353515521524 = phi i32 [ %.6353515521, %.preheader.lr.ph.i281 ], [ 4, %.thread519 ]
  %i.adr = phi i32 [ %i.adm, %.preheader.lr.ph.i281 ], [ 1, %.thread519 ] ; 3 uses
  %i.ads = shl nuw nsw i32 %i.adr, 1
  %i.adt = zext nneg i32 %i.adr to i64            ; 4 uses
  %i.adu = zext nneg i32 %i.ads to i64
  %min.iters.check982 = icmp samesign ult i32 %i.adr, 4
  %n.vec984 = and i64 %i.adt, 2147483644          ; 3 uses
  %cmp.n993 = icmp eq i64 %n.vec984, %i.adt
  br label %.preheader.us.i283

.preheader.us.i283:                               ; preds = %._crit_edge.us.i292, %.preheader.us.preheader.i282
  %.061.us.i284 = phi ptr [ %i.aec, %._crit_edge.us.i292 ], [ @Abc_TtCofactorPermNaive.pCopy.1, %.preheader.us.preheader.i282 ] ; 3 uses
  %invariant.gep.i285 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i284, i64 %i.adt ; 2 uses
  %invariant.gep80.i286 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i284, i64 %i.adu ; 2 uses
  br i1 %min.iters.check982, label %scalar.ph981.preheader, label %vector.body985

vector.body985:                                   ; preds = %.preheader.us.i283, %vector.body985
  %index986 = phi i64 [ %index.next991, %vector.body985 ], [ 0, %.preheader.us.i283 ] ; 3 uses
  %i.adv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i285, i64 %index986 ; 3 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 16 ; 2 uses
  %wide.load987 = load <2 x i64>, ptr %i.adv, align 8, !tbaa !32
  %wide.load988 = load <2 x i64>, ptr %i.adw, align 8, !tbaa !32
  %i.adx = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i286, i64 %index986 ; 3 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 16 ; 2 uses
  %wide.load989 = load <2 x i64>, ptr %i.adx, align 8, !tbaa !32
  %wide.load990 = load <2 x i64>, ptr %i.ady, align 8, !tbaa !32
  store <2 x i64> %wide.load989, ptr %i.adv, align 8, !tbaa !32
  store <2 x i64> %wide.load990, ptr %i.adw, align 8, !tbaa !32
  store <2 x i64> %wide.load987, ptr %i.adx, align 8, !tbaa !32
  store <2 x i64> %wide.load988, ptr %i.ady, align 8, !tbaa !32
  %index.next991 = add nuw i64 %index986, 4       ; 2 uses
  %i.adz = icmp eq i64 %index.next991, %n.vec984
  br i1 %i.adz, label %middle.block992, label %vector.body985, !llvm.loop !188

middle.block992:                                  ; preds = %vector.body985
  br i1 %cmp.n993, label %._crit_edge.us.i292, label %scalar.ph981.preheader

scalar.ph981.preheader:                           ; preds = %.preheader.us.i283, %middle.block992
  %indvars.iv.i287.ph = phi i64 [ 0, %.preheader.us.i283 ], [ %n.vec984, %middle.block992 ]
  br label %scalar.ph981

scalar.ph981:                                     ; preds = %scalar.ph981.preheader, %scalar.ph981
  %indvars.iv.i287 = phi i64 [ %indvars.iv.next.i290, %scalar.ph981 ], [ %indvars.iv.i287.ph, %scalar.ph981.preheader ] ; 3 uses
  %gep.i288 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i285, i64 %indvars.iv.i287 ; 2 uses
  %i.aea = load i64, ptr %gep.i288, align 8, !tbaa !32
  %gep81.i289 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i286, i64 %indvars.iv.i287 ; 2 uses
  %i.aeb = load i64, ptr %gep81.i289, align 8, !tbaa !32
  store i64 %i.aeb, ptr %gep.i288, align 8, !tbaa !32
  store i64 %i.aea, ptr %gep81.i289, align 8, !tbaa !32
  %indvars.iv.next.i290 = add nuw nsw i64 %indvars.iv.i287, 1 ; 2 uses
  %exitcond.not.i291 = icmp eq i64 %indvars.iv.next.i290, %i.adt
  br i1 %exitcond.not.i291, label %._crit_edge.us.i292, label %scalar.ph981, !llvm.loop !189

._crit_edge.us.i292:                              ; preds = %scalar.ph981, %middle.block992
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i284, i64 %i.adq ; 2 uses
  %i.aed = icmp ult ptr %i.aec, %17
  br i1 %i.aed, label %.preheader.us.i283, label %Abc_TtSwapAdjacent.exit300, !llvm.loop !4

Abc_TtSwapAdjacent.exit300:                       ; preds = %._crit_edge.us.i292, %.lr.ph.i293, %scalar.ph995, %middle.block1012, %.preheader.lr.ph.i281
  %.6352 = phi i32 [ %.6354361, %middle.block1012 ], [ %.6353514518, %.lr.ph.i293 ], [ %.6353515521, %.preheader.lr.ph.i281 ], [ %.6354361, %scalar.ph995 ], [ %.6353515521524, %._crit_edge.us.i292 ] ; 4 uses
  %i.aee = icmp eq i32 %.6352, 0
  %brmerge389 = or i1 %i.b, %i.aee
  br i1 %brmerge389, label %Abc_TtCopy.exit56, label %.lr.ph18.i303.preheader

.lr.ph18.i303.preheader:                          ; preds = %Abc_TtSwapAdjacent.exit300
  %min.iters.check1016 = icmp samesign ult i64 %.pre-phi, 4
  br i1 %min.iters.check1016, label %.lr.ph18.i303.preheader1029, label %vector.ph1017

vector.ph1017:                                    ; preds = %.lr.ph18.i303.preheader
  %n.vec1018 = and i64 %.pre-phi, 4294967292      ; 3 uses
  br label %vector.body1019

vector.body1019:                                  ; preds = %vector.body1019, %vector.ph1017
  %index1020 = phi i64 [ 0, %vector.ph1017 ], [ %index.next1023, %vector.body1019 ] ; 3 uses
  %i.aef = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPermNaive.pBest, i64 %index1020 ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 16
  %wide.load1021 = load <2 x i64>, ptr %i.aef, align 16, !tbaa !32
  %wide.load1022 = load <2 x i64>, ptr %i.aeg, align 16, !tbaa !32
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index1020 ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 16
  store <2 x i64> %wide.load1021, ptr %i.aeh, align 8, !tbaa !32
  store <2 x i64> %wide.load1022, ptr %i.aei, align 8, !tbaa !32
  %index.next1023 = add nuw i64 %index1020, 4     ; 2 uses
  %i.aej = icmp eq i64 %index.next1023, %n.vec1018
  br i1 %i.aej, label %middle.block1024, label %vector.body1019, !llvm.loop !190

middle.block1024:                                 ; preds = %vector.body1019
  %cmp.n1025 = icmp eq i64 %.pre-phi, %n.vec1018
  br i1 %cmp.n1025, label %Abc_TtCopy.exit56, label %.lr.ph18.i303.preheader1029

.lr.ph18.i303.preheader1029:                      ; preds = %.lr.ph18.i303.preheader, %middle.block1024
  %indvars.iv21.i304.ph = phi i64 [ 0, %.lr.ph18.i303.preheader ], [ %n.vec1018, %middle.block1024 ]
  br label %.lr.ph18.i303

.lr.ph18.i303:                                    ; preds = %.lr.ph18.i303.preheader1029, %.lr.ph18.i303
  %indvars.iv21.i304 = phi i64 [ %indvars.iv.next22.i305, %.lr.ph18.i303 ], [ %indvars.iv21.i304.ph, %.lr.ph18.i303.preheader1029 ] ; 3 uses
  %i.aek = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPermNaive.pBest, i64 %indvars.iv21.i304
  %i.ael = load i64, ptr %i.aek, align 8, !tbaa !32
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv21.i304
  store i64 %i.ael, ptr %i.aem, align 8, !tbaa !32
  %indvars.iv.next22.i305 = add nuw nsw i64 %indvars.iv21.i304, 1 ; 2 uses
  %exitcond25.not.i306 = icmp eq i64 %indvars.iv.next22.i305, %.pre-phi
  br i1 %exitcond25.not.i306, label %Abc_TtCopy.exit56, label %.lr.ph18.i303, !llvm.loop !191

Abc_TtCopy.exit56:                                ; preds = %bb.d, %.lr.ph18.i52.prol.loopexit, %.lr.ph18.i52, %.lr.ph18.i303, %Abc_TtSwapAdjacent.exit, %middle.block656, %middle.block1024, %bb.ax, %bb.aw, %bb.au, %Abc_TtCompareRev.exit272, %Abc_TtSwapAdjacent.exit300, %bb.e
  %.148 = phi i32 [ %.6352, %Abc_TtSwapAdjacent.exit300 ], [ 4, %Abc_TtCompareRev.exit272 ], [ %.6352, %middle.block1024 ], [ %.5, %bb.au ], [ %.mux, %bb.e ], [ 4, %middle.block656 ], [ %.5, %bb.ax ], [ %.5, %bb.aw ], [ 0, %Abc_TtSwapAdjacent.exit ], [ 4, %.lr.ph18.i52.prol.loopexit ], [ %.6352, %.lr.ph18.i303 ], [ 4, %.lr.ph18.i52 ], [ 0, %bb.d ]
  ret i32 %.148
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @Abc_TtFlip(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.c = shl nuw i32 1, %2
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = shl i64 %i.b, %i.d
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %i.i = and i64 %i.e, %i.h
  %i.j = and i64 %i.h, %i.b
  %i.k = lshr i64 %i.j, %i.d
  %i.l = or i64 %i.k, %i.i
  store i64 %i.l, ptr %0, align 8, !tbaa !32
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp slt i32 %2, 6
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = icmp sgt i32 %1, 0
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.o = shl nuw nsw i32 1, %2
  %i.p = zext nneg i32 %i.o to i64                ; 3 uses
  %i.q = sext i32 %2 to i64
  %i.r = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32   ; 3 uses
  %wide.trip.count59 = zext nneg i32 %1 to i64    ; 3 uses
  %min.iters.check70 = icmp ult i32 %1, 4
  br i1 %min.iters.check70, label %scalar.ph69.preheader, label %vector.ph71

vector.ph71:                                      ; preds = %.lr.ph
  %n.vec72 = and i64 %wide.trip.count59, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.p, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert73 = insertelement <2 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat74 = shufflevector <2 x i64> %broadcast.splatinsert73, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph71
  %index76 = phi i64 [ 0, %vector.ph71 ], [ %index.next79, %vector.body75 ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index76 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load77 = load <2 x i64>, ptr %i.t, align 8, !tbaa !32 ; 2 uses
  %wide.load78 = load <2 x i64>, ptr %i.u, align 8, !tbaa !32 ; 2 uses
  %i.v = shl <2 x i64> %wide.load77, %broadcast.splat
  %i.w = shl <2 x i64> %wide.load78, %broadcast.splat
  %i.x = and <2 x i64> %i.v, %broadcast.splat74
  %i.y = and <2 x i64> %i.w, %broadcast.splat74
  %i.z = and <2 x i64> %broadcast.splat74, %wide.load77
  %i.aa = and <2 x i64> %broadcast.splat74, %wide.load78
  %i.ab = lshr <2 x i64> %i.z, %broadcast.splat
  %i.ac = lshr <2 x i64> %i.aa, %broadcast.splat
  %i.ad = or <2 x i64> %i.ab, %i.x
  %i.ae = or <2 x i64> %i.ac, %i.y
  store <2 x i64> %i.ad, ptr %i.t, align 8, !tbaa !32
  store <2 x i64> %i.ae, ptr %i.u, align 8, !tbaa !32
  %index.next79 = add nuw i64 %index76, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next79, %n.vec72
  br i1 %i.af, label %middle.block80, label %vector.body75, !llvm.loop !206

middle.block80:                                   ; preds = %vector.body75
  %cmp.n81 = icmp eq i64 %n.vec72, %wide.trip.count59
  br i1 %cmp.n81, label %.loopexit, label %scalar.ph69.preheader

scalar.ph69.preheader:                            ; preds = %.lr.ph, %middle.block80
  %indvars.iv56.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec72, %middle.block80 ]
  br label %scalar.ph69

scalar.ph69:                                      ; preds = %scalar.ph69.preheader, %scalar.ph69
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %scalar.ph69 ], [ %indvars.iv56.ph, %scalar.ph69.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv56 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !32 ; 2 uses
  %i.ai = shl i64 %i.ah, %i.p
  %i.aj = and i64 %i.ai, %i.s
  %i.ak = and i64 %i.s, %i.ah
  %i.al = lshr i64 %i.ak, %i.p
  %i.am = or i64 %i.al, %i.aj
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !32
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %.loopexit, label %scalar.ph69, !llvm.loop !207

bb.e:                                             ; preds = %bb.c
  %i.an = sext i32 %1 to i64
  %.idx = shl nsw i64 %i.an, 3
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.ap = add nsw i32 %2, -6                      ; 3 uses
  %i.aq = shl nuw i32 1, %i.ap                    ; 4 uses
  %i.ar = icmp sgt i32 %1, 0
  br i1 %i.ar, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.e
  %.not = icmp eq i32 %i.ap, 31
  %i.as = shl i32 2, %i.ap
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  br i1 %.not, label %.loopexit, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.au = sext i32 %i.aq to i64                   ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 5 uses
  %i.av = shl nuw nsw i64 %wide.trip.count, 3
  %i.aw = add nsw i64 %i.au, %wide.trip.count
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = shl nsw i64 %i.at, 3
  %min.iters.check = icmp slt i32 %i.aq, 4
  %i.az = getelementptr i8, ptr %0, i64 %i.av
  %i.ba = getelementptr i8, ptr %0, i64 %i.ax
  %n.vec = and i64 %wide.trip.count, 2147483644
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bb = icmp slt i32 %i.aq, 2
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod85 = trunc i32 %smax to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.preheader.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %.051.us = phi ptr [ %0, %.preheader.us.preheader ], [ %i.bt, %._crit_edge.us ] ; 7 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.051.us, i64 %i.au ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us
  br i1 %i.bb, label %scalar.ph.epil.preheader, label %scalar.ph

vector.memcheck:                                  ; preds = %.preheader.us
  %i.bc = mul i64 %indvar, %i.ay                  ; 2 uses
  %i.bd = getelementptr i8, ptr %i.az, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.ba, i64 %i.bc
  %bound0 = icmp ult ptr %.051.us, %i.be
  %bound1 = icmp ult ptr %invariant.gep, %i.bd
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.051.us, i64 %index ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bf, align 8, !tbaa !32, !alias.scope !213, !noalias !214
  %wide.load66 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !32, !alias.scope !213, !noalias !214
  %i.bh = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 16     ; 2 uses
end_hunk_2
begin_hunk_3_@Abc_TtCofactorPermConfig:bb.a
  %i.f = shl nuw nsw i32 1, %1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr @s_CMasks6, i64 %i.h
  %i.j = shl nuw nsw i32 2, %1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = icmp sgt i32 %2, 0
  br i1 %i.l, label %.lr.ph509, label %Abc_TtSwapAdjacent.exit

.lr.ph509:                                        ; preds = %.preheader.i
  %i.m = zext nneg i32 %2 to i64
  %i.n = load i64, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.o = trunc nuw i64 %i.q to i32
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %Abc_TtSwapAdjacent.exit, !llvm.loop !8

bb.h:                                             ; preds = %.lr.ph509, %bb.g
  %indvars.iv117.i508 = phi i64 [ %i.m, %.lr.ph509 ], [ %i.q, %bb.g ]
  %i.q = add nsw i64 %indvars.iv117.i508, -1      ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32   ; 2 uses
  %i.t = lshr i64 %i.s, %i.g
  %i.u = and i64 %i.t, %i.n                       ; 2 uses
  %i.v = lshr i64 %i.s, %i.k
  %i.w = and i64 %i.v, %i.n                       ; 2 uses
  %.not95.i = icmp eq i64 %i.u, %i.w
  br i1 %.not95.i, label %bb.g, label %bb.i, !llvm.loop !8

bb.i:                                             ; preds = %bb.h
  %i.x = icmp ult i64 %i.u, %i.w
  br i1 %i.x, label %Abc_TtCompare2VarCofsRev.exit, label %Abc_TtSwapAdjacent.exit

bb.j:                                             ; preds = %bb.f
  %i.y = icmp eq i32 %1, 5
  %i.z = sext i32 %2 to i64                       ; 2 uses
  br i1 %i.y, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %i.z
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.pn94.i = phi ptr [ %i.aa, %bb.k ], [ %.077.i, %bb.m ] ; 3 uses
  %.077.i = getelementptr inbounds i8, ptr %.pn94.i, i64 -16 ; 2 uses
  %.not92.i = icmp ult ptr %.077.i, %0
  br i1 %.not92.i, label %Abc_TtSwapAdjacent.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds i8, ptr %.pn94.i, i64 -12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !34 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.pn94.i, i64 -8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !34 ; 2 uses
  %.not93.i = icmp eq i32 %i.ac, %i.ae
  br i1 %.not93.i, label %bb.l, label %bb.n, !llvm.loop !9

bb.n:                                             ; preds = %bb.m
  %i.af = icmp ult i32 %i.ac, %i.ae
  br i1 %i.af, label %Abc_TtCompare2VarCofsRev.exit, label %Abc_TtSwapAdjacent.exit

bb.o:                                             ; preds = %bb.j
  %i.ag = icmp samesign ult i32 %1, 7             ; 2 uses
  %i.ah = add nsw i32 %1, -6                      ; 2 uses
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = select i1 %i.ag, i32 1, i32 %i.ai       ; 3 uses
  %i.ak = shl nsw i32 %i.aj, 2
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = sub nsw i64 0, %i.al
  %.idx108.i = sub nsw i64 %i.z, %i.al            ; 2 uses
  %.not106.i = icmp slt i64 %.idx108.i, 0
  br i1 %.not106.i, label %Abc_TtSwapAdjacent.exit, label %.preheader97.preheader.i

.preheader97.preheader.i:                         ; preds = %bb.o
  %i.an = shl nuw nsw i64 %.idx108.i, 3
  %.076105.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.an
  %i.ao = select i1 %i.ag, i32 0, i32 %i.ah       ; 2 uses
  %i.ap = shl i32 2, %i.ao
  %i.aq = shl nuw i32 1, %i.ao
  %i.ar = sext i32 %i.aj to i64
  %i.as = sext i32 %i.aq to i64
  %i.at = sext i32 %i.ap to i64
  %i.au = icmp sgt i32 %i.aj, 0
  br label %.preheader97.i

.loopexit98.i:                                    ; preds = %bb.p, %.preheader97.i
  %.076.i = getelementptr inbounds [8 x i8], ptr %.076107.i, i64 %i.am ; 2 uses
  %.not.i = icmp ult ptr %.076.i, %0
  br i1 %.not.i, label %Abc_TtSwapAdjacent.exit, label %.preheader97.i, !llvm.loop !10

.preheader97.i:                                   ; preds = %.loopexit98.i, %.preheader97.preheader.i
  %.076107.i = phi ptr [ %.076.i, %.loopexit98.i ], [ %.076105.i, %.preheader97.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.076107.i, i64 %i.as
  %invariant.gep134.i = getelementptr [8 x i8], ptr %.076107.i, i64 %i.at
  br i1 %i.au, label %.lr.ph, label %.loopexit98.i

bb.p:                                             ; preds = %.lr.ph
  %i.av = icmp sgt i64 %indvars.iv.i507, 1
  br i1 %i.av, label %.lr.ph, label %.loopexit98.i, !llvm.loop !11

.lr.ph:                                           ; preds = %.preheader97.i, %bb.p
  %indvars.iv.i507 = phi i64 [ %indvars.iv.next.i, %bb.p ], [ %i.ar, %.preheader97.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i507, -1 ; 3 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.aw = load i64, ptr %gep.i, align 8, !tbaa !32 ; 2 uses
  %gep135.i = getelementptr [8 x i8], ptr %invariant.gep134.i, i64 %indvars.iv.next.i
  %i.ax = load i64, ptr %gep135.i, align 8, !tbaa !32 ; 2 uses
  %.not91.i = icmp eq i64 %i.aw, %i.ax
  br i1 %.not91.i, label %bb.p, label %bb.q, !llvm.loop !11

bb.q:                                             ; preds = %.lr.ph
  %i.ay = icmp ult i64 %i.aw, %i.ax
  br i1 %i.ay, label %Abc_TtCompare2VarCofsRev.exit, label %Abc_TtSwapAdjacent.exit

Abc_TtCompare2VarCofsRev.exit:                    ; preds = %bb.q, %bb.n, %bb.i
  br i1 %i.e, label %bb.r, label %bb.s

bb.r:                                             ; preds = %Abc_TtCompare2VarCofsRev.exit
  %i.az = icmp sgt i32 %2, 0
  br i1 %i.az, label %.lr.ph64.i, label %Abc_TtSwapAdjacent.exit

.lr.ph64.i:                                       ; preds = %bb.r
  %i.ba = shl nuw nsw i32 1, %1
  %i.bb = sext i32 %1 to i64
  %i.bc = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.bb ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !32 ; 2 uses
  %i.bg = zext nneg i32 %i.ba to i64              ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !32 ; 2 uses
  %wide.trip.count73.i = zext nneg i32 %2 to i64  ; 3 uses
  %min.iters.check536 = icmp ult i32 %2, 4
  br i1 %min.iters.check536, label %scalar.ph535.preheader, label %vector.ph537

vector.ph537:                                     ; preds = %.lr.ph64.i
  %n.vec538 = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bd, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert539 = insertelement <2 x i64> poison, i64 %i.bf, i64 0
  %broadcast.splat540 = shufflevector <2 x i64> %broadcast.splatinsert539, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert541 = insertelement <2 x i64> poison, i64 %i.bg, i64 0
  %broadcast.splat542 = shufflevector <2 x i64> %broadcast.splatinsert541, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert543 = insertelement <2 x i64> poison, i64 %i.bi, i64 0
  %broadcast.splat544 = shufflevector <2 x i64> %broadcast.splatinsert543, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body545

vector.body545:                                   ; preds = %vector.body545, %vector.ph537
  %index546 = phi i64 [ 0, %vector.ph537 ], [ %index.next549, %vector.body545 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index546 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %wide.load547 = load <2 x i64>, ptr %i.bj, align 8, !tbaa !32 ; 3 uses
  %wide.load548 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !32 ; 3 uses
  %i.bl = and <2 x i64> %wide.load547, %broadcast.splat
  %i.bm = and <2 x i64> %wide.load548, %broadcast.splat
  %i.bn = and <2 x i64> %wide.load547, %broadcast.splat540
  %i.bo = and <2 x i64> %wide.load548, %broadcast.splat540
  %i.bp = shl <2 x i64> %i.bn, %broadcast.splat542
  %i.bq = shl <2 x i64> %i.bo, %broadcast.splat542
  %i.br = or <2 x i64> %i.bp, %i.bl
  %i.bs = or <2 x i64> %i.bq, %i.bm
  %i.bt = and <2 x i64> %wide.load547, %broadcast.splat544
  %i.bu = and <2 x i64> %wide.load548, %broadcast.splat544
  %i.bv = lshr <2 x i64> %i.bt, %broadcast.splat542
  %i.bw = lshr <2 x i64> %i.bu, %broadcast.splat542
  %i.bx = or <2 x i64> %i.br, %i.bv
  %i.by = or <2 x i64> %i.bs, %i.bw
  store <2 x i64> %i.bx, ptr %i.bj, align 8, !tbaa !32
  store <2 x i64> %i.by, ptr %i.bk, align 8, !tbaa !32
  %index.next549 = add nuw i64 %index546, 4       ; 2 uses
  %i.bz = icmp eq i64 %index.next549, %n.vec538
  br i1 %i.bz, label %middle.block550, label %vector.body545, !llvm.loop !215

middle.block550:                                  ; preds = %vector.body545
  %cmp.n551 = icmp eq i64 %n.vec538, %wide.trip.count73.i
  br i1 %cmp.n551, label %Abc_TtSwapAdjacent.exit, label %scalar.ph535.preheader

scalar.ph535.preheader:                           ; preds = %.lr.ph64.i, %middle.block550
  %indvars.iv70.i.ph = phi i64 [ 0, %.lr.ph64.i ], [ %n.vec538, %middle.block550 ]
  br label %scalar.ph535

scalar.ph535:                                     ; preds = %scalar.ph535.preheader, %scalar.ph535
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i, %scalar.ph535 ], [ %indvars.iv70.i.ph, %scalar.ph535.preheader ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.i ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !32 ; 3 uses
  %i.cc = and i64 %i.cb, %i.bd
  %i.cd = and i64 %i.cb, %i.bf
  %i.ce = shl i64 %i.cd, %i.bg
  %i.cf = or i64 %i.ce, %i.cc
  %i.cg = and i64 %i.cb, %i.bi
  %i.ch = lshr i64 %i.cg, %i.bg
  %i.ci = or i64 %i.cf, %i.ch
  store i64 %i.ci, ptr %i.ca, align 8, !tbaa !32
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %exitcond74.not.i = icmp eq i64 %indvars.iv.next71.i, %wide.trip.count73.i
  br i1 %exitcond74.not.i, label %Abc_TtSwapAdjacent.exit, label %scalar.ph535, !llvm.loop !216

bb.s:                                             ; preds = %Abc_TtCompare2VarCofsRev.exit
  %i.cj = icmp eq i32 %1, 5
  %5 = sext i32 %2 to i64
  %.idx65.i = shl nsw i64 %5, 3                   ; 2 uses
  %6 = getelementptr inbounds i8, ptr %0, i64 %.idx65.i ; 2 uses
  br i1 %i.cj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ck = icmp sgt i32 %2, 0
  br i1 %i.ck, label %.lr.ph.i, label %Abc_TtSwapAdjacent.exit

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.i
  %.05462.i = phi ptr [ %i.co, %.lr.ph.i ], [ %0, %bb.t ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.05462.i, i64 4 ; 2 uses
  %i.cm = load <2 x i32>, ptr %i.cl, align 4, !tbaa !34
  %i.cn = shufflevector <2 x i32> %i.cm, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.cn, ptr %i.cl, align 4, !tbaa !34
  %i.co = getelementptr inbounds nuw i8, ptr %.05462.i, i64 16 ; 2 uses
  %i.cp = icmp ult ptr %i.co, %6
  br i1 %i.cp, label %.lr.ph.i, label %Abc_TtSwapAdjacent.exit, !llvm.loop !5

bb.u:                                             ; preds = %bb.s
  %i.cq = icmp samesign ult i32 %1, 7
  %i.cr = add nsw i32 %1, -6
  %i.cs = shl nuw i32 1, %i.cr
  %i.ct = select i1 %i.cq, i32 1, i32 %i.cs       ; 7 uses
  %i.cu = icmp sgt i32 %2, 0
  br i1 %i.cu, label %.preheader.lr.ph.i, label %Abc_TtSwapAdjacent.exit

.preheader.lr.ph.i:                               ; preds = %bb.u
  %i.cv = icmp sgt i32 %i.ct, 0
  %i.cw = shl i32 %i.ct, 2                        ; 2 uses
  %i.cx = sext i32 %i.cw to i64                   ; 3 uses
  br i1 %i.cv, label %.preheader.us.preheader.i, label %Abc_TtSwapAdjacent.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.cy = shl nuw nsw i32 %i.ct, 1
  %i.cz = zext nneg i32 %i.ct to i64              ; 6 uses
  %i.da = zext nneg i32 %i.cy to i64              ; 2 uses
  %i.db = shl nsw i64 %i.cx, 3                    ; 4 uses
  %i.dc = shl nuw nsw i64 %i.da, 3                ; 2 uses
  %i.dd = shl nuw nsw i64 %i.cz, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.dc
  %i.de = shl nuw nsw i64 %i.cz, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.db, i64 1)
  %i.df = add i64 %.idx65.i, %i.a
  %i.dg = add i64 %i.db, %i.a
  %umax530 = tail call i64 @llvm.umax.i64(i64 %i.df, i64 %i.dg)
  %i.dh = sub i64 %umax530, %i.a                  ; 2 uses
  %i.di = icmp ne i64 %i.dh, %i.db
  %umin = zext i1 %i.di to i64                    ; 2 uses
  %i.dj = or disjoint i64 %i.db, %umin
  %i.dk = sub i64 %i.dh, %i.dj
  %scevgep531 = getelementptr i8, ptr %0, i64 %i.dd
  %min.iters.check = icmp ult i32 %i.ct, 4
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.de
  %invariant.gep731 = getelementptr i8, ptr %0, i64 %i.dd
  %invariant.gep733 = getelementptr i8, ptr %invariant.gep731, i64 %i.dc
  %stride.check = icmp slt i32 %i.cw, 0
  %n.vec = and i64 %i.cz, 2147483644
  %xtraiter = and i64 %i.cz, 1
  %i.dl = icmp eq i32 %i.ct, 1
  %unroll_iter = and i64 %i.cz, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod676 = trunc i32 %i.ct to i1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.061.us.i = phi ptr [ %i.ec, %._crit_edge.us.i ], [ %0, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i120 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.cz ; 4 uses
  %invariant.gep80.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.da ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.i
  br i1 %i.dl, label %scalar.ph.epil.preheader, label %scalar.ph

vector.memcheck:                                  ; preds = %.preheader.us.i
  %i.dm = udiv i64 %i.dk, %umax
  %i.dn = add i64 %i.dm, %umin
  %i.do = mul i64 %i.dn, %i.cx
  %i.dp = shl i64 %i.do, 3                        ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.dp
  %gep734 = getelementptr i8, ptr %invariant.gep733, i64 %i.dp
  %bound0 = icmp ult ptr %scevgep531, %gep734
  %bound1 = icmp ult ptr %scevgep, %gep
  %found.conflict = and i1 %bound0, %bound1
  %i.dq = or i1 %found.conflict, %stride.check
  br i1 %i.dq, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i120, i64 %index ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.dr, align 8, !tbaa !32, !alias.scope !229, !noalias !230
  %wide.load532 = load <2 x i64>, ptr %i.ds, align 8, !tbaa !32, !alias.scope !229, !noalias !230
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %index ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %wide.load533 = load <2 x i64>, ptr %i.dt, align 8, !tbaa !32, !alias.scope !230
  %wide.load534 = load <2 x i64>, ptr %i.du, align 8, !tbaa !32, !alias.scope !230
  store <2 x i64> %wide.load533, ptr %i.dr, align 8, !tbaa !32, !alias.scope !229, !noalias !230
  store <2 x i64> %wide.load534, ptr %i.ds, align 8, !tbaa !32, !alias.scope !229, !noalias !230
  store <2 x i64> %wide.load, ptr %i.dt, align 8, !tbaa !32, !alias.scope !230
  store <2 x i64> %wide.load532, ptr %i.du, align 8, !tbaa !32, !alias.scope !230
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %._crit_edge.us.i, label %vector.body, !llvm.loop !220

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i121 = phi i64 [ %indvars.iv.next.i123.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %gep.i122 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i120, i64 %indvars.iv.i121 ; 2 uses
  %i.dw = load i64, ptr %gep.i122, align 8, !tbaa !32
  %gep81.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i121 ; 2 uses
  %i.dx = load i64, ptr %gep81.i, align 8, !tbaa !32
  store i64 %i.dx, ptr %gep.i122, align 8, !tbaa !32
  store i64 %i.dw, ptr %gep81.i, align 8, !tbaa !32
  %indvars.iv.next.i123 = or disjoint i64 %indvars.iv.i121, 1 ; 2 uses
  %gep.i122.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i120, i64 %indvars.iv.next.i123 ; 2 uses
  %i.dy = load i64, ptr %gep.i122.1, align 8, !tbaa !32
  %gep81.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.next.i123 ; 2 uses
  %i.dz = load i64, ptr %gep81.i.1, align 8, !tbaa !32
  store i64 %i.dz, ptr %gep.i122.1, align 8, !tbaa !32
  store i64 %i.dy, ptr %gep81.i.1, align 8, !tbaa !32
  %indvars.iv.next.i123.1 = add nuw nsw i64 %indvars.iv.i121, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !221

._crit_edge.us.i.loopexit.unr-lcssa:              ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i121.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.i123.1, %._crit_edge.us.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod676)
  %gep.i122.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i120, i64 %indvars.iv.i121.epil.init ; 2 uses
  %i.ea = load i64, ptr %gep.i122.epil, align 8, !tbaa !32
  %gep81.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i121.epil.init ; 2 uses
  %i.eb = load i64, ptr %gep81.i.epil, align 8, !tbaa !32
  store i64 %i.eb, ptr %gep.i122.epil, align 8, !tbaa !32
  store i64 %i.ea, ptr %gep81.i.epil, align 8, !tbaa !32
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.us.i.loopexit.unr-lcssa
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.cx ; 2 uses
  %i.ed = icmp ult ptr %i.ec, %6
  br i1 %i.ed, label %.preheader.us.i, label %Abc_TtSwapAdjacent.exit, !llvm.loop !4

bb.v:                                             ; preds = %bb.e
  br i1 %i.e, label %.preheader.i145, label %bb.z

.preheader.i145:                                  ; preds = %bb.v
  %i.ee = sext i32 %1 to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr @s_CMasks6, i64 %i.ee
  %i.eg = shl nuw nsw i32 1, %1
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = icmp sgt i32 %2, 0
  br i1 %i.ei, label %.lr.ph513, label %Abc_TtCompare2VarCofsRev.exit148

.lr.ph513:                                        ; preds = %.preheader.i145
  %i.ej = zext nneg i32 %2 to i64
  %i.ek = load i64, ptr %i.ef, align 8, !tbaa !32 ; 2 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.x
  %i.el = trunc nuw i64 %i.en to i32
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %bb.x, label %Abc_TtCompare2VarCofsRev.exit148, !llvm.loop !8

bb.x:                                             ; preds = %.lr.ph513, %bb.w
  %indvars.iv117.i146512 = phi i64 [ %i.ej, %.lr.ph513 ], [ %i.en, %bb.w ]
  %i.en = add nsw i64 %indvars.iv117.i146512, -1  ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !32 ; 2 uses
  %i.eq = and i64 %i.ek, %i.ep                    ; 2 uses
  %i.er = lshr i64 %i.ep, %i.eh
  %i.es = and i64 %i.er, %i.ek                    ; 2 uses
  %.not95.i147 = icmp eq i64 %i.eq, %i.es
  br i1 %.not95.i147, label %bb.w, label %bb.y, !llvm.loop !8

bb.y:                                             ; preds = %bb.x
  %i.et = icmp ult i64 %i.eq, %i.es
  %i.eu = select i1 %i.et, i32 -1, i32 1
  br label %Abc_TtCompare2VarCofsRev.exit148

bb.z:                                             ; preds = %bb.v
  %i.ev = icmp eq i32 %1, 5
  %i.ew = sext i32 %2 to i64                      ; 3 uses
  br i1 %i.ev, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.ex = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ew
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %.pn94.i141 = phi ptr [ %i.ex, %bb.aa ], [ %.077.i142, %bb.ac ] ; 2 uses
  %.077.i142 = getelementptr inbounds i8, ptr %.pn94.i141, i64 -16 ; 3 uses
  %.not92.i143 = icmp ult ptr %.077.i142, %0
  br i1 %.not92.i143, label %Abc_TtCompare2VarCofsRev.exit148, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ey = load i32, ptr %.077.i142, align 4, !tbaa !34 ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %.pn94.i141, i64 -12
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !34 ; 2 uses
  %.not93.i144 = icmp eq i32 %i.ey, %i.fa
  br i1 %.not93.i144, label %bb.ab, label %bb.ad, !llvm.loop !9

bb.ad:                                            ; preds = %bb.ac
  %i.fb = icmp ult i32 %i.ey, %i.fa
  %i.fc = select i1 %i.fb, i32 -1, i32 1
  br label %Abc_TtCompare2VarCofsRev.exit148

bb.ae:                                            ; preds = %bb.z
  %i.fd = icmp samesign ult i32 %1, 7
  %i.fe = add nsw i32 %1, -6                      ; 2 uses
  %i.ff = shl nuw i32 1, %i.fe                    ; 2 uses
  %i.fg = select i1 %i.fd, i32 1, i32 %i.ff       ; 3 uses
  %i.fh = shl nsw i32 %i.fg, 2
  %i.fi = sext i32 %i.fh to i64                   ; 2 uses
  %i.fj = sub nsw i64 0, %i.fi
  %.idx108.i124 = sub nsw i64 %i.ew, %i.fi        ; 2 uses
  %.not106.i125 = icmp slt i64 %.idx108.i124, 0
  br i1 %.not106.i125, label %.thread, label %.preheader97.preheader.i126

.preheader97.preheader.i126:                      ; preds = %bb.ae
  %i.fk = shl nuw nsw i64 %.idx108.i124, 3
  %.076105.i127 = getelementptr inbounds nuw i8, ptr %0, i64 %i.fk
  %i.fl = sext i32 %i.fg to i64                   ; 2 uses
  %i.fm = icmp sgt i32 %i.fg, 0
  br label %.preheader97.i128

.loopexit98.i133:                                 ; preds = %bb.af, %.preheader97.i128
  %.076.i134 = getelementptr inbounds [8 x i8], ptr %.076107.i129, i64 %i.fj ; 2 uses
  %.not.i135 = icmp ult ptr %.076.i134, %0
  br i1 %.not.i135, label %Abc_TtCompare2VarCofsRev.exit148, label %.preheader97.i128, !llvm.loop !10

.preheader97.i128:                                ; preds = %.loopexit98.i133, %.preheader97.preheader.i126
  %.076107.i129 = phi ptr [ %.076.i134, %.loopexit98.i133 ], [ %.076105.i127, %.preheader97.preheader.i126 ] ; 3 uses
  %invariant.gep134.i131 = getelementptr [8 x i8], ptr %.076107.i129, i64 %i.fl
  br i1 %i.fm, label %.lr.ph511, label %.loopexit98.i133

bb.af:                                            ; preds = %.lr.ph511
  %i.fn = icmp sgt i64 %indvars.iv.i132510, 1
  br i1 %i.fn, label %.lr.ph511, label %.loopexit98.i133, !llvm.loop !11

.lr.ph511:                                        ; preds = %.preheader97.i128, %bb.af
  %indvars.iv.i132510 = phi i64 [ %indvars.iv.next.i137, %bb.af ], [ %i.fl, %.preheader97.i128 ] ; 2 uses
  %indvars.iv.next.i137 = add nsw i64 %indvars.iv.i132510, -1 ; 3 uses
  %gep.i138 = getelementptr [8 x i8], ptr %.076107.i129, i64 %indvars.iv.next.i137
  %i.fo = load i64, ptr %gep.i138, align 8, !tbaa !32 ; 2 uses
  %gep135.i139 = getelementptr [8 x i8], ptr %invariant.gep134.i131, i64 %indvars.iv.next.i137
  %i.fp = load i64, ptr %gep135.i139, align 8, !tbaa !32 ; 2 uses
  %.not91.i140 = icmp eq i64 %i.fo, %i.fp
  br i1 %.not91.i140, label %bb.af, label %bb.ag, !llvm.loop !11

bb.ag:                                            ; preds = %.lr.ph511
  %i.fq = icmp ult i64 %i.fo, %i.fp
  %i.fr = select i1 %i.fq, i32 -1, i32 1
  br label %Abc_TtCompare2VarCofsRev.exit148

Abc_TtCompare2VarCofsRev.exit148:                 ; preds = %.loopexit98.i133, %bb.ab, %bb.w, %.preheader.i145, %bb.y, %bb.ad, %bb.ag
  %.4.i136 = phi i32 [ 0, %bb.ab ], [ 0, %.preheader.i145 ], [ %i.eu, %bb.y ], [ %i.fc, %bb.ad ], [ %i.fr, %bb.ag ], [ 0, %bb.w ], [ 0, %.loopexit98.i133 ] ; 8 uses
  br i1 %i.e, label %.preheader.i170, label %bb.ak

.preheader.i170:                                  ; preds = %Abc_TtCompare2VarCofsRev.exit148
  %i.fs = shl nuw nsw i32 2, %1
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = sext i32 %1 to i64
  %i.fv = getelementptr inbounds [8 x i8], ptr @s_CMasks6, i64 %i.fu
  %i.fw = shl nuw nsw i32 3, %1
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = icmp sgt i32 %2, 0
  br i1 %i.fy, label %.lr.ph517, label %.loopexit288

.lr.ph517:                                        ; preds = %.preheader.i170
  %i.fz = zext nneg i32 %2 to i64
  %i.ga = load i64, ptr %i.fv, align 8, !tbaa !32 ; 2 uses
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ai
  %i.gb = trunc nuw i64 %i.gd to i32
  %i.gc = icmp sgt i32 %i.gb, 0
  br i1 %i.gc, label %bb.ai, label %.loopexit288, !llvm.loop !8

bb.ai:                                            ; preds = %.lr.ph517, %bb.ah
  %indvars.iv117.i171516 = phi i64 [ %i.fz, %.lr.ph517 ], [ %i.gd, %bb.ah ]
  %i.gd = add nsw i64 %indvars.iv117.i171516, -1  ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.gd
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !32 ; 2 uses
  %i.gg = lshr i64 %i.gf, %i.ft
  %i.gh = and i64 %i.gg, %i.ga                    ; 2 uses
  %i.gi = lshr i64 %i.gf, %i.fx
  %i.gj = and i64 %i.gi, %i.ga                    ; 2 uses
  %.not95.i172 = icmp eq i64 %i.gh, %i.gj
  br i1 %.not95.i172, label %bb.ah, label %bb.aj, !llvm.loop !8

bb.aj:                                            ; preds = %bb.ai
  %i.gk = icmp ult i64 %i.gh, %i.gj
  br i1 %i.gk, label %Abc_TtCompare2VarCofsRev.exit173, label %.loopexit288

bb.ak:                                            ; preds = %Abc_TtCompare2VarCofsRev.exit148
  %i.gl = icmp eq i32 %1, 5
  %i.gm = sext i32 %2 to i64                      ; 2 uses
  br i1 %i.gl, label %bb.al, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ak
  %.pre376 = add nsw i32 %1, -6                   ; 2 uses
  %.pre378 = shl nuw i32 1, %.pre376
  br label %.thread

bb.al:                                            ; preds = %bb.ak
  %i.gn = getelementptr inbounds [8 x i8], ptr %0, i64 %i.gm
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %bb.al
  %.pn94.i166 = phi ptr [ %i.gn, %bb.al ], [ %.077.i167, %bb.an ] ; 3 uses
  %.077.i167 = getelementptr inbounds i8, ptr %.pn94.i166, i64 -16 ; 2 uses
  %.not92.i168 = icmp ult ptr %.077.i167, %0
  br i1 %.not92.i168, label %.loopexit288, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.go = getelementptr inbounds i8, ptr %.pn94.i166, i64 -8
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !34 ; 2 uses
  %i.gq = getelementptr inbounds i8, ptr %.pn94.i166, i64 -4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !34 ; 2 uses
  %.not93.i169 = icmp eq i32 %i.gp, %i.gr
  br i1 %.not93.i169, label %bb.am, label %bb.ao, !llvm.loop !9

bb.ao:                                            ; preds = %bb.an
  %i.gs = icmp ult i32 %i.gp, %i.gr
  br i1 %i.gs, label %Abc_TtCompare2VarCofsRev.exit173, label %.loopexit288

.thread:                                          ; preds = %bb.ae, %._crit_edge
  %.pre-phi379 = phi i32 [ %.pre378, %._crit_edge ], [ %i.ff, %bb.ae ] ; 2 uses
  %.pre-phi377 = phi i32 [ %.pre376, %._crit_edge ], [ %i.fe, %bb.ae ] ; 2 uses
  %i.gt = phi i64 [ %i.gm, %._crit_edge ], [ %i.ew, %bb.ae ]
  %.4.i136250252 = phi i32 [ %.4.i136, %._crit_edge ], [ 0, %bb.ae ] ; 4 uses
  %i.gu = icmp samesign ult i32 %1, 7             ; 2 uses
  %i.gv = select i1 %i.gu, i32 1, i32 %.pre-phi379 ; 3 uses
  %i.gw = shl nsw i32 %i.gv, 2
  %i.gx = sext i32 %i.gw to i64                   ; 2 uses
  %i.gy = sub nsw i64 0, %i.gx
  %.idx108.i149 = sub nsw i64 %i.gt, %i.gx        ; 2 uses
  %.not106.i150 = icmp slt i64 %.idx108.i149, 0
  br i1 %.not106.i150, label %.thread260, label %.preheader97.preheader.i151

end_hunk_3
begin_hunk_4_@Abc_TtCofactorPermConfig:bb.a
  %i.kd = shl nuw nsw i32 1, %1
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = sext i32 %1 to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr @s_CMasks6, i64 %i.kf
  %i.kh = shl nuw nsw i32 2, %1
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = icmp sgt i32 %2, 0
  br i1 %i.kj, label %.lr.ph525, label %Abc_TtSwapAdjacent.exit

.lr.ph525:                                        ; preds = %.preheader.i220
  %i.kk = zext nneg i32 %2 to i64
  %i.kl = load i64, ptr %i.kg, align 8, !tbaa !32 ; 2 uses
  br label %bb.br

bb.bq:                                            ; preds = %bb.br
  %i.km = trunc nuw i64 %i.ko to i32
  %i.kn = icmp sgt i32 %i.km, 0
  br i1 %i.kn, label %bb.br, label %Abc_TtSwapAdjacent.exit, !llvm.loop !8

bb.br:                                            ; preds = %.lr.ph525, %bb.bq
  %indvars.iv117.i221524 = phi i64 [ %i.kk, %.lr.ph525 ], [ %i.ko, %bb.bq ]
  %i.ko = add nsw i64 %indvars.iv117.i221524, -1  ; 3 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ko
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !32 ; 2 uses
  %i.kr = lshr i64 %i.kq, %i.ke
  %i.ks = and i64 %i.kr, %i.kl                    ; 2 uses
  %i.kt = lshr i64 %i.kq, %i.ki
  %i.ku = and i64 %i.kt, %i.kl                    ; 2 uses
  %.not95.i222 = icmp eq i64 %i.ks, %i.ku
  br i1 %.not95.i222, label %bb.bq, label %bb.bs, !llvm.loop !8

bb.bs:                                            ; preds = %bb.br
  %i.kv = icmp ult i64 %i.ks, %i.ku
  br i1 %i.kv, label %Abc_TtCompare2VarCofsRev.exit223, label %Abc_TtSwapAdjacent.exit

bb.bt:                                            ; preds = %bb.bp
  %i.kw = icmp eq i32 %1, 5
  %i.kx = sext i32 %2 to i64                      ; 2 uses
  br i1 %i.kw, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %i.ky = getelementptr inbounds [8 x i8], ptr %0, i64 %i.kx
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %bb.bu
  %.pn94.i216 = phi ptr [ %i.ky, %bb.bu ], [ %.077.i217, %bb.bw ] ; 3 uses
  %.077.i217 = getelementptr inbounds i8, ptr %.pn94.i216, i64 -16 ; 2 uses
  %.not92.i218 = icmp ult ptr %.077.i217, %0
  br i1 %.not92.i218, label %Abc_TtSwapAdjacent.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.kz = getelementptr inbounds i8, ptr %.pn94.i216, i64 -12
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !34 ; 2 uses
  %i.lb = getelementptr inbounds i8, ptr %.pn94.i216, i64 -8
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !34 ; 2 uses
  %.not93.i219 = icmp eq i32 %i.la, %i.lc
  br i1 %.not93.i219, label %bb.bv, label %bb.bx, !llvm.loop !9

bb.bx:                                            ; preds = %bb.bw
  %i.ld = icmp ult i32 %i.la, %i.lc
  br i1 %i.ld, label %Abc_TtCompare2VarCofsRev.exit223, label %Abc_TtSwapAdjacent.exit

bb.by:                                            ; preds = %bb.bt
  %i.le = icmp samesign ult i32 %1, 7             ; 2 uses
  %i.lf = add nsw i32 %1, -6                      ; 2 uses
  %i.lg = shl nuw i32 1, %i.lf
  %i.lh = select i1 %i.le, i32 1, i32 %i.lg       ; 3 uses
  %i.li = shl nsw i32 %i.lh, 2
  %i.lj = sext i32 %i.li to i64                   ; 2 uses
  %i.lk = sub nsw i64 0, %i.lj
  %.idx108.i199 = sub nsw i64 %i.kx, %i.lj        ; 2 uses
  %.not106.i200 = icmp slt i64 %.idx108.i199, 0
  br i1 %.not106.i200, label %Abc_TtSwapAdjacent.exit, label %.preheader97.preheader.i201

.preheader97.preheader.i201:                      ; preds = %bb.by
  %i.ll = shl nuw nsw i64 %.idx108.i199, 3
  %.076105.i202 = getelementptr inbounds nuw i8, ptr %0, i64 %i.ll
  %i.lm = select i1 %i.le, i32 0, i32 %i.lf       ; 2 uses
  %i.ln = shl i32 2, %i.lm
  %i.lo = shl nuw i32 1, %i.lm
  %i.lp = sext i32 %i.lh to i64
  %i.lq = sext i32 %i.lo to i64
  %i.lr = sext i32 %i.ln to i64
  %i.ls = icmp sgt i32 %i.lh, 0
  br label %.preheader97.i203

.loopexit98.i208:                                 ; preds = %bb.bz, %.preheader97.i203
  %.076.i209 = getelementptr inbounds [8 x i8], ptr %.076107.i204, i64 %i.lk ; 2 uses
  %.not.i210 = icmp ult ptr %.076.i209, %0
  br i1 %.not.i210, label %Abc_TtSwapAdjacent.exit, label %.preheader97.i203, !llvm.loop !10

.preheader97.i203:                                ; preds = %.loopexit98.i208, %.preheader97.preheader.i201
  %.076107.i204 = phi ptr [ %.076.i209, %.loopexit98.i208 ], [ %.076105.i202, %.preheader97.preheader.i201 ] ; 3 uses
  %invariant.gep.i205 = getelementptr [8 x i8], ptr %.076107.i204, i64 %i.lq
  %invariant.gep134.i206 = getelementptr [8 x i8], ptr %.076107.i204, i64 %i.lr
  br i1 %i.ls, label %.lr.ph523, label %.loopexit98.i208

bb.bz:                                            ; preds = %.lr.ph523
  %i.lt = icmp sgt i64 %indvars.iv.i207522, 1
  br i1 %i.lt, label %.lr.ph523, label %.loopexit98.i208, !llvm.loop !11

.lr.ph523:                                        ; preds = %.preheader97.i203, %bb.bz
  %indvars.iv.i207522 = phi i64 [ %indvars.iv.next.i212, %bb.bz ], [ %i.lp, %.preheader97.i203 ] ; 2 uses
  %indvars.iv.next.i212 = add nsw i64 %indvars.iv.i207522, -1 ; 3 uses
  %gep.i213 = getelementptr [8 x i8], ptr %invariant.gep.i205, i64 %indvars.iv.next.i212
  %i.lu = load i64, ptr %gep.i213, align 8, !tbaa !32 ; 2 uses
  %gep135.i214 = getelementptr [8 x i8], ptr %invariant.gep134.i206, i64 %indvars.iv.next.i212
  %i.lv = load i64, ptr %gep135.i214, align 8, !tbaa !32 ; 2 uses
  %.not91.i215 = icmp eq i64 %i.lu, %i.lv
  br i1 %.not91.i215, label %bb.bz, label %bb.ca, !llvm.loop !11

bb.ca:                                            ; preds = %.lr.ph523
  %i.lw = icmp ult i64 %i.lu, %i.lv
  br i1 %i.lw, label %Abc_TtCompare2VarCofsRev.exit223, label %Abc_TtSwapAdjacent.exit

Abc_TtCompare2VarCofsRev.exit223:                 ; preds = %bb.ca, %bb.bx, %bb.bs
  br i1 %i.e, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %Abc_TtCompare2VarCofsRev.exit223
  %i.lx = icmp sgt i32 %2, 0
  br i1 %i.lx, label %.lr.ph64.i239, label %Abc_TtSwapAdjacent.exit244

.lr.ph64.i239:                                    ; preds = %bb.cb
  %i.ly = shl nuw nsw i32 1, %1
  %i.lz = sext i32 %1 to i64
  %i.ma = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.lz ; 3 uses
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !32 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !32 ; 2 uses
  %i.me = zext nneg i32 %i.ly to i64              ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !32 ; 2 uses
  %wide.trip.count73.i240 = zext nneg i32 %2 to i64 ; 3 uses
  %min.iters.check590 = icmp ult i32 %2, 4
  br i1 %min.iters.check590, label %scalar.ph589.preheader, label %vector.ph591

vector.ph591:                                     ; preds = %.lr.ph64.i239
  %n.vec592 = and i64 %wide.trip.count73.i240, 2147483644 ; 3 uses
  %broadcast.splatinsert593 = insertelement <2 x i64> poison, i64 %i.mb, i64 0
  %broadcast.splat594 = shufflevector <2 x i64> %broadcast.splatinsert593, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert595 = insertelement <2 x i64> poison, i64 %i.md, i64 0
  %broadcast.splat596 = shufflevector <2 x i64> %broadcast.splatinsert595, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert597 = insertelement <2 x i64> poison, i64 %i.me, i64 0
  %broadcast.splat598 = shufflevector <2 x i64> %broadcast.splatinsert597, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert599 = insertelement <2 x i64> poison, i64 %i.mg, i64 0
  %broadcast.splat600 = shufflevector <2 x i64> %broadcast.splatinsert599, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body601

vector.body601:                                   ; preds = %vector.body601, %vector.ph591
  %index602 = phi i64 [ 0, %vector.ph591 ], [ %index.next605, %vector.body601 ] ; 2 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index602 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16 ; 2 uses
  %wide.load603 = load <2 x i64>, ptr %i.mh, align 8, !tbaa !32 ; 3 uses
  %wide.load604 = load <2 x i64>, ptr %i.mi, align 8, !tbaa !32 ; 3 uses
  %i.mj = and <2 x i64> %wide.load603, %broadcast.splat594
  %i.mk = and <2 x i64> %wide.load604, %broadcast.splat594
  %i.ml = and <2 x i64> %wide.load603, %broadcast.splat596
  %i.mm = and <2 x i64> %wide.load604, %broadcast.splat596
  %i.mn = shl <2 x i64> %i.ml, %broadcast.splat598
  %i.mo = shl <2 x i64> %i.mm, %broadcast.splat598
  %i.mp = or <2 x i64> %i.mn, %i.mj
  %i.mq = or <2 x i64> %i.mo, %i.mk
  %i.mr = and <2 x i64> %wide.load603, %broadcast.splat600
  %i.ms = and <2 x i64> %wide.load604, %broadcast.splat600
  %i.mt = lshr <2 x i64> %i.mr, %broadcast.splat598
  %i.mu = lshr <2 x i64> %i.ms, %broadcast.splat598
  %i.mv = or <2 x i64> %i.mp, %i.mt
  %i.mw = or <2 x i64> %i.mq, %i.mu
  store <2 x i64> %i.mv, ptr %i.mh, align 8, !tbaa !32
  store <2 x i64> %i.mw, ptr %i.mi, align 8, !tbaa !32
  %index.next605 = add nuw i64 %index602, 4       ; 2 uses
  %i.mx = icmp eq i64 %index.next605, %n.vec592
  br i1 %i.mx, label %middle.block606, label %vector.body601, !llvm.loop !222

middle.block606:                                  ; preds = %vector.body601
  %cmp.n607 = icmp eq i64 %n.vec592, %wide.trip.count73.i240
  br i1 %cmp.n607, label %Abc_TtSwapAdjacent.exit244, label %scalar.ph589.preheader

scalar.ph589.preheader:                           ; preds = %.lr.ph64.i239, %middle.block606
  %indvars.iv70.i241.ph = phi i64 [ 0, %.lr.ph64.i239 ], [ %n.vec592, %middle.block606 ]
  br label %scalar.ph589

scalar.ph589:                                     ; preds = %scalar.ph589.preheader, %scalar.ph589
  %indvars.iv70.i241 = phi i64 [ %indvars.iv.next71.i242, %scalar.ph589 ], [ %indvars.iv70.i241.ph, %scalar.ph589.preheader ] ; 2 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.i241 ; 2 uses
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !32 ; 3 uses
  %i.na = and i64 %i.mz, %i.mb
  %i.nb = and i64 %i.mz, %i.md
  %i.nc = shl i64 %i.nb, %i.me
  %i.nd = or i64 %i.nc, %i.na
  %i.ne = and i64 %i.mz, %i.mg
  %i.nf = lshr i64 %i.ne, %i.me
  %i.ng = or i64 %i.nd, %i.nf
  store i64 %i.ng, ptr %i.my, align 8, !tbaa !32
  %indvars.iv.next71.i242 = add nuw nsw i64 %indvars.iv70.i241, 1 ; 2 uses
  %exitcond74.not.i243 = icmp eq i64 %indvars.iv.next71.i242, %wide.trip.count73.i240
  br i1 %exitcond74.not.i243, label %Abc_TtSwapAdjacent.exit244, label %scalar.ph589, !llvm.loop !223

bb.cc:                                            ; preds = %Abc_TtCompare2VarCofsRev.exit223
  %i.nh = icmp eq i32 %1, 5
  %7 = sext i32 %2 to i64
  %.idx65.i224 = shl nsw i64 %7, 3                ; 2 uses
  %8 = getelementptr inbounds i8, ptr %0, i64 %.idx65.i224 ; 2 uses
  br i1 %i.nh, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ni = icmp sgt i32 %2, 0
  br i1 %i.ni, label %.lr.ph.i237, label %Abc_TtSwapAdjacent.exit244

.lr.ph.i237:                                      ; preds = %bb.cd, %.lr.ph.i237
  %.05462.i238 = phi ptr [ %i.nm, %.lr.ph.i237 ], [ %0, %bb.cd ] ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.05462.i238, i64 4 ; 2 uses
  %i.nk = load <2 x i32>, ptr %i.nj, align 4, !tbaa !34
  %i.nl = shufflevector <2 x i32> %i.nk, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.nl, ptr %i.nj, align 4, !tbaa !34
  %i.nm = getelementptr inbounds nuw i8, ptr %.05462.i238, i64 16 ; 2 uses
  %i.nn = icmp ult ptr %i.nm, %8
  br i1 %i.nn, label %.lr.ph.i237, label %Abc_TtSwapAdjacent.exit244, !llvm.loop !5

bb.ce:                                            ; preds = %bb.cc
  %i.no = icmp samesign ult i32 %1, 7
  %i.np = add nsw i32 %1, -6
  %i.nq = shl nuw i32 1, %i.np
  %i.nr = select i1 %i.no, i32 1, i32 %i.nq       ; 7 uses
  %i.ns = icmp sgt i32 %2, 0
  br i1 %i.ns, label %.preheader.lr.ph.i225, label %Abc_TtSwapAdjacent.exit244

.preheader.lr.ph.i225:                            ; preds = %bb.ce
  %i.nt = icmp sgt i32 %i.nr, 0
  %i.nu = shl i32 %i.nr, 2                        ; 2 uses
  %i.nv = sext i32 %i.nu to i64                   ; 3 uses
  br i1 %i.nt, label %.preheader.us.preheader.i226, label %Abc_TtSwapAdjacent.exit244

.preheader.us.preheader.i226:                     ; preds = %.preheader.lr.ph.i225
  %i.nw = shl nuw nsw i32 %i.nr, 1
  %i.nx = zext nneg i32 %i.nr to i64              ; 6 uses
  %i.ny = zext nneg i32 %i.nw to i64              ; 2 uses
  %i.nz = shl nsw i64 %i.nv, 3                    ; 4 uses
  %i.oa = shl nuw nsw i64 %i.ny, 3                ; 2 uses
  %i.ob = shl nuw nsw i64 %i.nx, 3                ; 2 uses
  %scevgep565 = getelementptr i8, ptr %0, i64 %i.oa
  %i.oc = shl nuw nsw i64 %i.nx, 4
  %umax566 = tail call i64 @llvm.umax.i64(i64 %i.nz, i64 1)
  %i.od = add i64 %.idx65.i224, %i.a
  %i.oe = add i64 %i.nz, %i.a
  %umax567 = tail call i64 @llvm.umax.i64(i64 %i.od, i64 %i.oe)
  %i.of = sub i64 %umax567, %i.a                  ; 2 uses
  %i.og = icmp ne i64 %i.of, %i.nz
  %umin568 = zext i1 %i.og to i64                 ; 2 uses
  %i.oh = or disjoint i64 %i.nz, %umin568
  %i.oi = sub i64 %i.of, %i.oh
  %scevgep569 = getelementptr i8, ptr %0, i64 %i.ob
  %min.iters.check571 = icmp ult i32 %i.nr, 4
  %invariant.gep735 = getelementptr i8, ptr %0, i64 %i.oc
  %invariant.gep737 = getelementptr i8, ptr %0, i64 %i.ob
  %invariant.gep739 = getelementptr i8, ptr %invariant.gep737, i64 %i.oa
  %stride.check576 = icmp slt i32 %i.nu, 0
  %n.vec578 = and i64 %i.nx, 2147483644
  %xtraiter677 = and i64 %i.nx, 1
  %i.oj = icmp eq i32 %i.nr, 1
  %unroll_iter680 = and i64 %i.nx, 2147483646
  %lcmp.mod678.not = icmp eq i64 %xtraiter677, 0
  %lcmp.mod679 = trunc i32 %i.nr to i1
  br label %.preheader.us.i227

.preheader.us.i227:                               ; preds = %._crit_edge.us.i236, %.preheader.us.preheader.i226
  %.061.us.i228 = phi ptr [ %i.pa, %._crit_edge.us.i236 ], [ %0, %.preheader.us.preheader.i226 ] ; 3 uses
  %invariant.gep.i229 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i228, i64 %i.nx ; 4 uses
  %invariant.gep80.i230 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i228, i64 %i.ny ; 4 uses
  br i1 %min.iters.check571, label %scalar.ph570.preheader, label %vector.memcheck572

scalar.ph570.preheader:                           ; preds = %vector.memcheck572, %.preheader.us.i227
  br i1 %i.oj, label %scalar.ph570.epil.preheader, label %scalar.ph570

vector.memcheck572:                               ; preds = %.preheader.us.i227
  %i.ok = udiv i64 %i.oi, %umax566
  %i.ol = add i64 %i.ok, %umin568
  %i.om = mul i64 %i.ol, %i.nv
  %i.on = shl i64 %i.om, 3                        ; 2 uses
  %gep736 = getelementptr i8, ptr %invariant.gep735, i64 %i.on
  %gep740 = getelementptr i8, ptr %invariant.gep739, i64 %i.on
  %bound0573 = icmp ult ptr %scevgep569, %gep740
  %bound1574 = icmp ult ptr %scevgep565, %gep736
  %found.conflict575 = and i1 %bound0573, %bound1574
  %i.oo = or i1 %found.conflict575, %stride.check576
  br i1 %i.oo, label %scalar.ph570.preheader, label %vector.body579

vector.body579:                                   ; preds = %vector.memcheck572, %vector.body579
  %index580 = phi i64 [ %index.next585, %vector.body579 ], [ 0, %vector.memcheck572 ] ; 3 uses
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i229, i64 %index580 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 16 ; 2 uses
  %wide.load581 = load <2 x i64>, ptr %i.op, align 8, !tbaa !32, !alias.scope !231, !noalias !232
  %wide.load582 = load <2 x i64>, ptr %i.oq, align 8, !tbaa !32, !alias.scope !231, !noalias !232
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i230, i64 %index580 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 16 ; 2 uses
  %wide.load583 = load <2 x i64>, ptr %i.or, align 8, !tbaa !32, !alias.scope !232
  %wide.load584 = load <2 x i64>, ptr %i.os, align 8, !tbaa !32, !alias.scope !232
  store <2 x i64> %wide.load583, ptr %i.op, align 8, !tbaa !32, !alias.scope !231, !noalias !232
  store <2 x i64> %wide.load584, ptr %i.oq, align 8, !tbaa !32, !alias.scope !231, !noalias !232
  store <2 x i64> %wide.load581, ptr %i.or, align 8, !tbaa !32, !alias.scope !232
  store <2 x i64> %wide.load582, ptr %i.os, align 8, !tbaa !32, !alias.scope !232
  %index.next585 = add nuw i64 %index580, 4       ; 2 uses
  %i.ot = icmp eq i64 %index.next585, %n.vec578
  br i1 %i.ot, label %._crit_edge.us.i236, label %vector.body579, !llvm.loop !227

scalar.ph570:                                     ; preds = %scalar.ph570.preheader, %scalar.ph570
  %indvars.iv.i231 = phi i64 [ %indvars.iv.next.i234.1, %scalar.ph570 ], [ 0, %scalar.ph570.preheader ] ; 4 uses
  %niter681 = phi i64 [ %niter681.next.1, %scalar.ph570 ], [ 0, %scalar.ph570.preheader ]
  %gep.i232 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i229, i64 %indvars.iv.i231 ; 2 uses
  %i.ou = load i64, ptr %gep.i232, align 8, !tbaa !32
  %gep81.i233 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i230, i64 %indvars.iv.i231 ; 2 uses
  %i.ov = load i64, ptr %gep81.i233, align 8, !tbaa !32
  store i64 %i.ov, ptr %gep.i232, align 8, !tbaa !32
  store i64 %i.ou, ptr %gep81.i233, align 8, !tbaa !32
  %indvars.iv.next.i234 = or disjoint i64 %indvars.iv.i231, 1 ; 2 uses
  %gep.i232.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i229, i64 %indvars.iv.next.i234 ; 2 uses
  %i.ow = load i64, ptr %gep.i232.1, align 8, !tbaa !32
  %gep81.i233.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i230, i64 %indvars.iv.next.i234 ; 2 uses
  %i.ox = load i64, ptr %gep81.i233.1, align 8, !tbaa !32
  store i64 %i.ox, ptr %gep.i232.1, align 8, !tbaa !32
  store i64 %i.ow, ptr %gep81.i233.1, align 8, !tbaa !32
  %indvars.iv.next.i234.1 = add nuw nsw i64 %indvars.iv.i231, 2 ; 2 uses
  %niter681.next.1 = add i64 %niter681, 2         ; 2 uses
  %niter681.ncmp.1 = icmp eq i64 %niter681.next.1, %unroll_iter680
  br i1 %niter681.ncmp.1, label %._crit_edge.us.i236.loopexit.unr-lcssa, label %scalar.ph570, !llvm.loop !228

._crit_edge.us.i236.loopexit.unr-lcssa:           ; preds = %scalar.ph570
  br i1 %lcmp.mod678.not, label %._crit_edge.us.i236, label %scalar.ph570.epil.preheader

scalar.ph570.epil.preheader:                      ; preds = %._crit_edge.us.i236.loopexit.unr-lcssa, %scalar.ph570.preheader
  %indvars.iv.i231.epil.init = phi i64 [ 0, %scalar.ph570.preheader ], [ %indvars.iv.next.i234.1, %._crit_edge.us.i236.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod679)
  %gep.i232.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i229, i64 %indvars.iv.i231.epil.init ; 2 uses
  %i.oy = load i64, ptr %gep.i232.epil, align 8, !tbaa !32
  %gep81.i233.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i230, i64 %indvars.iv.i231.epil.init ; 2 uses
  %i.oz = load i64, ptr %gep81.i233.epil, align 8, !tbaa !32
  store i64 %i.oz, ptr %gep.i232.epil, align 8, !tbaa !32
  store i64 %i.oy, ptr %gep81.i233.epil, align 8, !tbaa !32
  br label %._crit_edge.us.i236

._crit_edge.us.i236:                              ; preds = %vector.body579, %scalar.ph570.epil.preheader, %._crit_edge.us.i236.loopexit.unr-lcssa
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i228, i64 %i.nv ; 2 uses
  %i.pb = icmp ult ptr %i.pa, %8
  br i1 %i.pb, label %.preheader.us.i227, label %Abc_TtSwapAdjacent.exit244, !llvm.loop !4

Abc_TtSwapAdjacent.exit244:                       ; preds = %._crit_edge.us.i236, %.lr.ph.i237, %scalar.ph589, %middle.block606, %bb.cb, %bb.cd, %bb.ce, %.preheader.lr.ph.i225
  %i.pc = or disjoint i32 %.0, 4
  br label %Abc_TtSwapAdjacent.exit

Abc_TtSwapAdjacent.exit:                          ; preds = %.loopexit98.i, %bb.l, %bb.g, %._crit_edge.us.i, %.lr.ph.i, %scalar.ph535, %.loopexit98.i208, %bb.bv, %bb.bq, %.preheader.i, %middle.block550, %.preheader.i220, %bb.ca, %bb.bx, %bb.bs, %bb.by, %bb.q, %bb.n, %bb.i, %bb.o, %.preheader.lr.ph.i, %bb.u, %bb.t, %bb.r, %Abc_TtSwapAdjacent.exit244, %bb.d, %bb.b
  %.0112 = phi i32 [ %i.c, %bb.b ], [ %i.d, %bb.d ], [ %.0, %.preheader.i220 ], [ 4, %scalar.ph535 ], [ %i.pc, %Abc_TtSwapAdjacent.exit244 ], [ 4, %bb.r ], [ 4, %middle.block550 ], [ 4, %bb.t ], [ %.0, %.loopexit98.i208 ], [ 4, %bb.u ], [ 4, %.preheader.lr.ph.i ], [ 4, %._crit_edge.us.i ], [ 0, %bb.o ], [ 0, %bb.i ], [ 0, %bb.n ], [ 0, %bb.q ], [ 0, %.preheader.i ], [ 0, %bb.l ], [ %.0, %bb.by ], [ %.0, %bb.bs ], [ %.0, %bb.bx ], [ %.0, %bb.ca ], [ %.0, %bb.bq ], [ 0, %bb.g ], [ %.0, %bb.bv ], [ 4, %.lr.ph.i ], [ 0, %.loopexit98.i ]
  ret i32 %.0112
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 -1, 2) i32 @Abc_TtCompare2VarCofsRev(ptr nofree noundef readonly captures(address) %0, i32 noundef range(i32 2, 1) %1, i32 noundef %2, i32 noundef range(i32 0, 3) %3, i32 noundef range(i32 1, 4) %4) unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %2, 5
  br i1 %i.a, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.b = shl nuw nsw i32 %3, %2
  %i.c = zext nneg i32 %i.b to i64
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr @s_CMasks6, i64 %i.d
  %i.f = shl nuw nsw i32 %4, %2
  %i.g = zext nneg i32 %i.f to i64
  %i.h = icmp sgt i32 %1, 0
  br i1 %i.h, label %.lr.ph145, label %.loopexit

.lr.ph145:                                        ; preds = %.preheader
  %i.i = zext nneg i32 %1 to i64
  %i.j = load i64, ptr %i.e, align 8, !tbaa !32   ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.m to i32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %.loopexit, !llvm.loop !8

bb.c:                                             ; preds = %.lr.ph145, %bb.b
  %indvars.iv117144 = phi i64 [ %i.i, %.lr.ph145 ], [ %i.m, %bb.b ]
  %i.m = add nsw i64 %indvars.iv117144, -1        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32   ; 2 uses
  %i.p = lshr i64 %i.o, %i.c
  %i.q = and i64 %i.p, %i.j                       ; 2 uses
  %i.r = lshr i64 %i.o, %i.g
  %i.s = and i64 %i.r, %i.j                       ; 2 uses
  %.not95 = icmp eq i64 %i.q, %i.s
  br i1 %.not95, label %bb.b, label %bb.d, !llvm.loop !8

bb.d:                                             ; preds = %bb.c
  %i.t = icmp ult i64 %i.q, %i.s
  %i.u = select i1 %i.t, i32 -1, i32 1
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.v = icmp eq i32 %2, 5
  %i.w = sext i32 %1 to i64                       ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %i.w
  %i.y = zext nneg i32 %3 to i64
  %i.z = zext nneg i32 %4 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn94 = phi ptr [ %i.x, %bb.f ], [ %.077, %bb.h ]
  %.077 = getelementptr inbounds i8, ptr %.pn94, i64 -16 ; 4 uses
  %.not92 = icmp ult ptr %.077, %0
  br i1 %.not92, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.077, i64 %i.y
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !34 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.077, i64 %i.z
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !34 ; 2 uses
  %.not93 = icmp eq i32 %i.ab, %i.ad
  br i1 %.not93, label %bb.g, label %bb.i, !llvm.loop !9

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp ult i32 %i.ab, %i.ad
  %i.af = select i1 %i.ae, i32 -1, i32 1
  br label %.loopexit

bb.j:                                             ; preds = %bb.e
  %i.ag = icmp samesign ult i32 %2, 7             ; 2 uses
  %i.ah = add nsw i32 %2, -6                      ; 2 uses
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = select i1 %i.ag, i32 1, i32 %i.ai       ; 3 uses
  %i.ak = shl nsw i32 %i.aj, 2
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = sub nsw i64 0, %i.al
  %.idx108 = sub nsw i64 %i.w, %i.al              ; 2 uses
  %.not106 = icmp slt i64 %.idx108, 0
  br i1 %.not106, label %.loopexit, label %.preheader97.preheader

.preheader97.preheader:                           ; preds = %bb.j
  %i.an = shl nuw nsw i64 %.idx108, 3
  %.076105 = getelementptr inbounds nuw i8, ptr %0, i64 %i.an
  %i.ao = select i1 %i.ag, i32 0, i32 %i.ah       ; 2 uses
  %i.ap = shl i32 %4, %i.ao
  %i.aq = shl i32 %3, %i.ao
  %i.ar = sext i32 %i.aj to i64
  %i.as = sext i32 %i.aq to i64
  %i.at = sext i32 %i.ap to i64
  %i.au = icmp sgt i32 %i.aj, 0
  br label %.preheader97

.loopexit98:                                      ; preds = %bb.k, %.preheader97
  %.076 = getelementptr inbounds [8 x i8], ptr %.076107, i64 %i.am ; 2 uses
  %.not = icmp ult ptr %.076, %0
  br i1 %.not, label %.loopexit, label %.preheader97, !llvm.loop !10

.preheader97:                                     ; preds = %.preheader97.preheader, %.loopexit98
  %.076107 = phi ptr [ %.076, %.loopexit98 ], [ %.076105, %.preheader97.preheader ] ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.076107, i64 %i.as
  %invariant.gep134 = getelementptr [8 x i8], ptr %.076107, i64 %i.at
  br i1 %i.au, label %.lr.ph, label %.loopexit98

bb.k:                                             ; preds = %.lr.ph
  %i.av = icmp sgt i64 %indvars.iv143, 1
  br i1 %i.av, label %.lr.ph, label %.loopexit98, !llvm.loop !11

.lr.ph:                                           ; preds = %.preheader97, %bb.k
  %indvars.iv143 = phi i64 [ %indvars.iv.next, %bb.k ], [ %i.ar, %.preheader97 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv143, -1 ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.aw = load i64, ptr %gep, align 8, !tbaa !32  ; 2 uses
  %gep135 = getelementptr [8 x i8], ptr %invariant.gep134, i64 %indvars.iv.next
  %i.ax = load i64, ptr %gep135, align 8, !tbaa !32 ; 2 uses
  %.not91 = icmp eq i64 %i.aw, %i.ax
  br i1 %.not91, label %bb.k, label %bb.l, !llvm.loop !11

bb.l:                                             ; preds = %.lr.ph
  %i.ay = icmp ult i64 %i.aw, %i.ax
  %i.az = select i1 %i.ay, i32 -1, i32 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit98, %bb.g, %bb.b, %.preheader, %bb.j, %bb.l, %bb.i, %bb.d
  %.4 = phi i32 [ 0, %bb.g ], [ 0, %bb.j ], [ %i.u, %bb.d ], [ %i.af, %bb.i ], [ %i.az, %bb.l ], [ 0, %.preheader ], [ 0, %bb.b ], [ 0, %.loopexit98 ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 8) i32 @Abc_TtCofactorPerm(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @Abc_TtCofactorPermConfig(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 3 uses
  %.not64 = icmp eq i32 %i.a, 0
  br i1 %.not64, label %Abc_TtCopy.exit72, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr %5, align 4, !tbaa !34     ; 3 uses
  %i.c = lshr i32 %i.b, %1
  %i.d = add nsw i32 %1, 1                        ; 3 uses
  %i.e = lshr i32 %i.b, %i.d
  %i.f = xor i32 %i.c, %i.e
  %i.g = and i32 %i.f, 1
  %.not65 = icmp eq i32 %i.g, 0
  br i1 %.not65, label %Abc_TtCopy.exit72.sink.split, label %Abc_TtCopy.exit72.sink.split.sink.split

bb.d:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.h, label %.lr.ph18.preheader.i, label %Abc_TtCopy.exit

.lr.ph18.preheader.i:                             ; preds = %bb.d
  %wide.trip.count24.i = zext nneg i32 %2 to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph18.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph18.preheader.i
  %n.vec = and i64 %wide.trip.count24.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <2 x i64>, ptr %i.i, align 8, !tbaa !32
  %wide.load92 = load <2 x i64>, ptr %i.j, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPerm.pCopy1, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <2 x i64> %wide.load, ptr %i.k, align 16, !tbaa !32
  store <2 x i64> %wide.load92, ptr %i.l, align 16, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !233

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count24.i
  br i1 %cmp.n, label %Abc_TtCopy.exit, label %.lr.ph18.i.preheader

.lr.ph18.i.preheader:                             ; preds = %.lr.ph18.preheader.i, %middle.block
  %indvars.iv21.i.ph = phi i64 [ 0, %.lr.ph18.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph18.i

.lr.ph18.i:                                       ; preds = %.lr.ph18.i.preheader, %.lr.ph18.i
end_hunk_4
begin_hunk_5_@Abc_TgCalcScc:bb.a
  br i1 %i.em, label %.lr.ph, label %._crit_edge, !llvm.loop !571

._crit_edge:                                      ; preds = %.lr.ph, %bb.ar
  %.147.lcssa = phi i32 [ %.04653, %bb.ar ], [ %i.ek, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.en = load i32, ptr %i.dz, align 4, !tbaa !67
  %i.eo = sext i32 %i.en to i64
  %i.ep = icmp slt i64 %indvars.iv.next, %i.eo
  br i1 %i.ep, label %bb.ar, label %._crit_edge56, !llvm.loop !572

._crit_edge56:                                    ; preds = %._crit_edge, %Abc_TtSccInCofs.exit
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %._crit_edge56
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.es = load i32, ptr %i.er, align 8, !tbaa !72 ; 2 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %.lr.ph70, label %.loopexit

.lr.ph70:                                         ; preds = %bb.as, %._crit_edge67
  %i.eu = phi i32 [ %i.fq, %._crit_edge67 ], [ %i.es, %bb.as ]
  %.068 = phi ptr [ %i.fr, %._crit_edge67 ], [ %i.eq, %bb.as ] ; 3 uses
  %i.ev = load i8, ptr %.068, align 1, !tbaa !74  ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.068, i64 1
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !75  ; 2 uses
  %i.ey = icmp sgt i8 %i.ex, 1
  br i1 %i.ey, label %.lr.ph66.preheader, label %._crit_edge67

.lr.ph66.preheader:                               ; preds = %.lr.ph70
  %i.ez = sext i8 %i.ev to i64
  %i.fa = zext nneg i8 %i.ex to i64
  %i.fb = add nsw i64 %i.fa, %i.ez
  %i.fc = sext i8 %i.ev to i64
  %i.fd = add nsw i64 %i.fc, 1
  %i.fe = sext i8 %i.ev to i64                    ; 2 uses
  %i.ff = sext i8 %i.ev to i64
  br label %.lr.ph66

.lr.ph66:                                         ; preds = %.lr.ph66.preheader, %.critedge
  %indvars.iv74 = phi i64 [ %i.fd, %.lr.ph66.preheader ], [ %indvars.iv.next75, %.critedge ] ; 5 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv74
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !34 ; 2 uses
  %i.fi = icmp sgt i64 %indvars.iv74, %i.fe
  br i1 %i.fi, label %.lr.ph59, label %.critedge

.lr.ph59:                                         ; preds = %.lr.ph66, %bb.at
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %bb.at ], [ %indvars.iv74, %.lr.ph66 ] ; 3 uses
  %i.fj = getelementptr [4 x i8], ptr %1, i64 %indvars.iv76 ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 -4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !34 ; 2 uses
  %i.fm = icmp sgt i32 %i.fl, %i.fh
  br i1 %i.fm, label %bb.at, label %.critedge

bb.at:                                            ; preds = %.lr.ph59
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !34
  %indvars.iv.next77 = add nsw i64 %indvars.iv76, -1 ; 2 uses
  %i.fn = icmp sgt i64 %indvars.iv.next77, %i.fe
  br i1 %i.fn, label %.lr.ph59, label %.critedge, !llvm.loop !573

.critedge:                                        ; preds = %.lr.ph59, %bb.at, %.lr.ph66
  %.1.lcssa = phi i64 [ %indvars.iv74, %.lr.ph66 ], [ %i.ff, %bb.at ], [ %indvars.iv76, %.lr.ph59 ]
  %i.fo = getelementptr inbounds [4 x i8], ptr %1, i64 %.1.lcssa
  store i32 %i.fh, ptr %i.fo, align 4, !tbaa !34
  %indvars.iv.next75 = add nsw i64 %indvars.iv74, 1 ; 2 uses
  %i.fp = icmp slt i64 %indvars.iv.next75, %i.fb
  br i1 %i.fp, label %.lr.ph66, label %._crit_edge67.loopexit, !llvm.loop !574

._crit_edge67.loopexit:                           ; preds = %.critedge
  %.pre = load i32, ptr %i.er, align 8, !tbaa !72
  br label %._crit_edge67

._crit_edge67:                                    ; preds = %._crit_edge67.loopexit, %.lr.ph70
  %i.fq = phi i32 [ %.pre, %._crit_edge67.loopexit ], [ %i.eu, %.lr.ph70 ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.068, i64 2 ; 2 uses
  %i.fs = sext i32 %i.fq to i64
  %i.ft = getelementptr inbounds [2 x i8], ptr %i.eq, i64 %i.fs
  %i.fu = icmp ult ptr %i.fr, %i.ft
  br i1 %i.fu, label %.lr.ph70, label %.loopexit, !llvm.loop !575

.loopexit:                                        ; preds = %._crit_edge67, %bb.as, %._crit_edge56
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @Abc_TgSwapAdjacentSymGroups(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !38    ; 3 uses
  %i.f = add nsw i32 %1, 1
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !38    ; 3 uses
  store i8 %i.i, ptr %i.d, align 1, !tbaa !38
  store i8 %i.e, ptr %i.h, align 1, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 %i.c ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !38
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 %i.g ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !38
  store i8 %i.n, ptr %i.k, align 1, !tbaa !38
  store i8 %i.l, ptr %i.m, align 1, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 5 uses
  %i.p = sext i8 %i.e to i64                      ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !38
  %i.s = icmp sgt i8 %i.r, -1
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = sext i8 %i.i to i64                      ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.o, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !38
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !67   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph30.i.preheader, label %._crit_edge31.i

.lr.ph30.i.preheader:                             ; preds = %bb.c
  %i.aa = zext nneg i32 %i.y to i64
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %._crit_edge.i
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %._crit_edge.i ], [ 0, %.lr.ph30.i.preheader ] ; 2 uses
  %.02227.i = phi i32 [ %.123.lcssa.i, %._crit_edge.i ], [ 0, %.lr.ph30.i.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv40.i
  %.0.in24.i = load i8, ptr %i.ab, align 1, !tbaa !38 ; 2 uses
  %i.ac = icmp sgt i8 %.0.in24.i, -1
  br i1 %i.ac, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph30.i
  %i.ad = sext i32 %.02227.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.ad, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.0.in26.i = phi i8 [ %.0.in24.i, %.lr.ph.preheader.i ], [ %.0.in.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %.0.in26.i, ptr %i.ae, align 1, !tbaa !38
  %i.af = zext nneg i8 %.0.in26.i to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.af
  %.0.in.i = load i8, ptr %i.ag, align 1, !tbaa !38 ; 2 uses
  %i.ah = icmp sgt i8 %.0.in.i, -1
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !13

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.ai = trunc nsw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph30.i
  %.123.lcssa.i = phi i32 [ %.02227.i, %.lr.ph30.i ], [ %i.ai, %._crit_edge.loopexit.i ] ; 2 uses
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next41.i, %i.aa
  br i1 %exitcond.not, label %._crit_edge31.i.loopexit, label %.lr.ph30.i, !llvm.loop !14

._crit_edge31.i.loopexit:                         ; preds = %._crit_edge.i
  %i.aj = sext i32 %.123.lcssa.i to i64
  br label %._crit_edge31.i

._crit_edge31.i:                                  ; preds = %._crit_edge31.i.loopexit, %bb.c
  %.022.lcssa.i = phi i64 [ 0, %bb.c ], [ %i.aj, %._crit_edge31.i.loopexit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !68
  %i.am = sext i32 %i.al to i64
  %.1.in.in33.i = getelementptr inbounds i8, ptr %i.o, i64 %i.am
  %.1.in34.i = load i8, ptr %.1.in.in33.i, align 1, !tbaa !38 ; 2 uses
  %i.an = icmp sgt i8 %.1.in34.i, -1
  br i1 %i.an, label %.lr.ph38.i, label %Abc_TgExpendSymmetry.exit

.lr.ph38.i:                                       ; preds = %._crit_edge31.i, %.lr.ph38.i
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i, %.lr.ph38.i ], [ %.022.lcssa.i, %._crit_edge31.i ] ; 2 uses
  %.1.in36.i = phi i8 [ %.1.in.i, %.lr.ph38.i ], [ %.1.in34.i, %._crit_edge31.i ] ; 2 uses
  %indvars.iv.next44.i = add nsw i64 %indvars.iv43.i, 1
  %i.ao = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv43.i
  store i8 %.1.in36.i, ptr %i.ao, align 1, !tbaa !38
  %i.ap = zext nneg i8 %.1.in36.i to i64
  %.1.in.in.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ap
  %.1.in.i = load i8, ptr %.1.in.in.i, align 1, !tbaa !38 ; 2 uses
  %i.aq = icmp sgt i8 %.1.in.i, -1
  br i1 %i.aq, label %.lr.ph38.i, label %Abc_TgExpendSymmetry.exit, !llvm.loop !15

Abc_TgExpendSymmetry.exit:                        ; preds = %.lr.ph38.i, %._crit_edge31.i
  call fastcc void @Abc_TgImplementPerm(ptr noundef %0, ptr noundef nonnull %i.a)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.p ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !38  ; 7 uses
  %i.au = sext i8 %i.at to i32                    ; 5 uses
  %i.av = load ptr, ptr %0, align 8, !tbaa !69    ; 13 uses
  %i.aw = ptrtoaddr ptr %i.av to i64              ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !68 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 7
  %i.ba = add nsw i32 %i.ay, -6
  %i.bb = shl nuw i32 1, %i.ba
  %i.bc = select i1 %i.az, i32 1, i32 %i.bb       ; 8 uses
  %i.bd = icmp slt i8 %i.at, 5
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.be = icmp sgt i32 %i.bc, 0
  br i1 %i.be, label %.lr.ph64.i, label %Abc_TtSwapAdjacent.exit

.lr.ph64.i:                                       ; preds = %bb.e
  %i.bf = shl nuw nsw i32 1, %i.au
  %i.bg = sext i8 %i.at to i64
  %i.bh = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.bg ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !32 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !32 ; 4 uses
  %i.bl = zext nneg i32 %i.bf to i64              ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !32 ; 4 uses
  %min.iters.check73 = icmp ult i32 %i.bc, 4
  br i1 %min.iters.check73, label %scalar.ph72, label %vector.ph74

vector.ph74:                                      ; preds = %.lr.ph64.i
  %i.bo = and i32 %i.bc, 2147483644
  %n.vec75 = zext nneg i32 %i.bo to i64
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bi, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert76 = insertelement <2 x i64> poison, i64 %i.bk, i64 0
  %broadcast.splat77 = shufflevector <2 x i64> %broadcast.splatinsert76, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert78 = insertelement <2 x i64> poison, i64 %i.bl, i64 0
  %broadcast.splat79 = shufflevector <2 x i64> %broadcast.splatinsert78, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert80 = insertelement <2 x i64> poison, i64 %i.bn, i64 0
  %broadcast.splat81 = shufflevector <2 x i64> %broadcast.splatinsert80, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph74
  %index83 = phi i64 [ 0, %vector.ph74 ], [ %index.next86, %vector.body82 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index83 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %wide.load84 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !32 ; 3 uses
  %wide.load85 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !32 ; 3 uses
  %i.br = and <2 x i64> %wide.load84, %broadcast.splat
  %i.bs = and <2 x i64> %wide.load85, %broadcast.splat
  %i.bt = and <2 x i64> %wide.load84, %broadcast.splat77
  %i.bu = and <2 x i64> %wide.load85, %broadcast.splat77
  %i.bv = shl <2 x i64> %i.bt, %broadcast.splat79
  %i.bw = shl <2 x i64> %i.bu, %broadcast.splat79
  %i.bx = or <2 x i64> %i.bv, %i.br
  %i.by = or <2 x i64> %i.bw, %i.bs
  %i.bz = and <2 x i64> %wide.load84, %broadcast.splat81
  %i.ca = and <2 x i64> %wide.load85, %broadcast.splat81
  %i.cb = lshr <2 x i64> %i.bz, %broadcast.splat79
  %i.cc = lshr <2 x i64> %i.ca, %broadcast.splat79
  %i.cd = or <2 x i64> %i.bx, %i.cb
  %i.ce = or <2 x i64> %i.by, %i.cc
  store <2 x i64> %i.cd, ptr %i.bp, align 8, !tbaa !32
  store <2 x i64> %i.ce, ptr %i.bq, align 8, !tbaa !32
  %index.next86 = add nuw i64 %index83, 4         ; 2 uses
  %i.cf = icmp eq i64 %index.next86, %n.vec75
  br i1 %i.cf, label %Abc_TtSwapAdjacent.exit, label %vector.body82, !llvm.loop !576

scalar.ph72:                                      ; preds = %.lr.ph64.i
  %i.cg = load i64, ptr %i.av, align 8, !tbaa !32 ; 3 uses
  %i.ch = and i64 %i.cg, %i.bi
  %i.ci = and i64 %i.cg, %i.bk
  %i.cj = shl i64 %i.ci, %i.bl
  %i.ck = or i64 %i.cj, %i.ch
  %i.cl = and i64 %i.cg, %i.bn
  %i.cm = lshr i64 %i.cl, %i.bl
  %i.cn = or i64 %i.ck, %i.cm
  store i64 %i.cn, ptr %i.av, align 8, !tbaa !32
  %exitcond74.not.i = icmp eq i32 %i.bc, 1
  br i1 %exitcond74.not.i, label %Abc_TtSwapAdjacent.exit, label %scalar.ph72.1

scalar.ph72.1:                                    ; preds = %scalar.ph72
  %i.co = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !32 ; 3 uses
  %i.cq = and i64 %i.cp, %i.bi
  %i.cr = and i64 %i.cp, %i.bk
  %i.cs = shl i64 %i.cr, %i.bl
  %i.ct = or i64 %i.cs, %i.cq
  %i.cu = and i64 %i.cp, %i.bn
  %i.cv = lshr i64 %i.cu, %i.bl
  %i.cw = or i64 %i.ct, %i.cv
  store i64 %i.cw, ptr %i.co, align 8, !tbaa !32
  %exitcond74.not.i.1 = icmp eq i32 %i.bc, 2
  br i1 %exitcond74.not.i.1, label %Abc_TtSwapAdjacent.exit, label %scalar.ph72.2

scalar.ph72.2:                                    ; preds = %scalar.ph72.1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !32 ; 3 uses
  %i.cz = and i64 %i.cy, %i.bi
  %i.da = and i64 %i.cy, %i.bk
  %i.db = shl i64 %i.da, %i.bl
  %i.dc = or i64 %i.db, %i.cz
  %i.dd = and i64 %i.cy, %i.bn
  %i.de = lshr i64 %i.dd, %i.bl
  %i.df = or i64 %i.dc, %i.de
  store i64 %i.df, ptr %i.cx, align 8, !tbaa !32
  br label %Abc_TtSwapAdjacent.exit

bb.f:                                             ; preds = %bb.d
  %i.dg = icmp eq i8 %i.at, 5
  %2 = sext i32 %i.bc to i64
  %.idx65.i = shl nsw i64 %2, 3                   ; 2 uses
  %3 = getelementptr inbounds i8, ptr %i.av, i64 %.idx65.i ; 2 uses
  br i1 %i.dg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dh = icmp sgt i32 %i.bc, 0
  br i1 %i.dh, label %.lr.ph.i50, label %Abc_TtSwapAdjacent.exit

.lr.ph.i50:                                       ; preds = %bb.g, %.lr.ph.i50
  %.05462.i = phi ptr [ %i.dl, %.lr.ph.i50 ], [ %i.av, %bb.g ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.05462.i, i64 4 ; 2 uses
  %i.dj = load <2 x i32>, ptr %i.di, align 4, !tbaa !34
  %i.dk = shufflevector <2 x i32> %i.dj, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.dk, ptr %i.di, align 4, !tbaa !34
  %i.dl = getelementptr inbounds nuw i8, ptr %.05462.i, i64 16 ; 2 uses
  %i.dm = icmp ult ptr %i.dl, %3
  br i1 %i.dm, label %.lr.ph.i50, label %Abc_TtSwapAdjacent.exit, !llvm.loop !5

bb.h:                                             ; preds = %bb.f
  %i.dn = icmp samesign ult i8 %i.at, 7
  %i.do = add nsw i32 %i.au, -6
  %i.dp = shl nuw i32 1, %i.do
  %i.dq = select i1 %i.dn, i32 1, i32 %i.dp       ; 7 uses
  %i.dr = icmp sgt i32 %i.bc, 0
  br i1 %i.dr, label %.preheader.lr.ph.i, label %Abc_TtSwapAdjacent.exit

.preheader.lr.ph.i:                               ; preds = %bb.h
  %i.ds = icmp sgt i32 %i.dq, 0
  %i.dt = shl i32 %i.dq, 2                        ; 2 uses
  %i.du = sext i32 %i.dt to i64                   ; 3 uses
  br i1 %i.ds, label %.preheader.us.preheader.i, label %Abc_TtSwapAdjacent.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.dv = shl nuw nsw i32 %i.dq, 1
  %i.dw = zext nneg i32 %i.dq to i64              ; 6 uses
  %i.dx = zext nneg i32 %i.dv to i64              ; 2 uses
  %i.dy = shl nsw i64 %i.du, 3                    ; 4 uses
  %i.dz = shl nuw nsw i64 %i.dx, 3                ; 2 uses
  %i.ea = shl nuw nsw i64 %i.dw, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.dz
  %i.eb = shl nuw nsw i64 %i.dw, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dy, i64 1)
  %i.ec = add i64 %.idx65.i, %i.aw
  %i.ed = add i64 %i.dy, %i.aw
  %umax67 = tail call i64 @llvm.umax.i64(i64 %i.ec, i64 %i.ed)
  %i.ee = sub i64 %umax67, %i.aw                  ; 2 uses
  %i.ef = icmp ne i64 %i.ee, %i.dy
  %umin = zext i1 %i.ef to i64                    ; 2 uses
  %i.eg = or disjoint i64 %i.dy, %umin
  %i.eh = sub i64 %i.ee, %i.eg
  %scevgep68 = getelementptr i8, ptr %i.av, i64 %i.ea
  %min.iters.check = icmp ult i32 %i.dq, 4
  %invariant.gep = getelementptr i8, ptr %i.av, i64 %i.eb
  %invariant.gep95 = getelementptr i8, ptr %i.av, i64 %i.ea
  %invariant.gep97 = getelementptr i8, ptr %invariant.gep95, i64 %i.dz
  %stride.check = icmp slt i32 %i.dt, 0
  %n.vec = and i64 %i.dw, 2147483644
  %xtraiter = and i64 %i.dw, 1
  %i.ei = icmp eq i32 %i.dq, 1
  %unroll_iter = and i64 %i.dw, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod94 = trunc i32 %i.dq to i1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.061.us.i = phi ptr [ %i.ez, %._crit_edge.us.i ], [ %i.av, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.dw ; 4 uses
  %invariant.gep80.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.dx ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.i
  br i1 %i.ei, label %scalar.ph.epil.preheader, label %scalar.ph

vector.memcheck:                                  ; preds = %.preheader.us.i
  %i.ej = udiv i64 %i.eh, %umax
  %i.ek = add i64 %i.ej, %umin
  %i.el = mul i64 %i.ek, %i.du
  %i.em = shl i64 %i.el, 3                        ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.em
  %gep98 = getelementptr i8, ptr %invariant.gep97, i64 %i.em
  %bound0 = icmp ult ptr %scevgep68, %gep98
  %bound1 = icmp ult ptr %scevgep, %gep
  %found.conflict = and i1 %bound0, %bound1
  %i.en = or i1 %found.conflict, %stride.check
  br i1 %i.en, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.eo, align 8, !tbaa !32, !alias.scope !582, !noalias !583
  %wide.load69 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !32, !alias.scope !582, !noalias !583
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %index ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %wide.load70 = load <2 x i64>, ptr %i.eq, align 8, !tbaa !32, !alias.scope !583
  %wide.load71 = load <2 x i64>, ptr %i.er, align 8, !tbaa !32, !alias.scope !583
  store <2 x i64> %wide.load70, ptr %i.eo, align 8, !tbaa !32, !alias.scope !582, !noalias !583
  store <2 x i64> %wide.load71, ptr %i.ep, align 8, !tbaa !32, !alias.scope !582, !noalias !583
  store <2 x i64> %wide.load, ptr %i.eq, align 8, !tbaa !32, !alias.scope !583
  store <2 x i64> %wide.load69, ptr %i.er, align 8, !tbaa !32, !alias.scope !583
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %._crit_edge.us.i, label %vector.body, !llvm.loop !580

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i48 = phi i64 [ %indvars.iv.next.i49.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i48 ; 2 uses
  %i.et = load i64, ptr %gep.i, align 8, !tbaa !32
  %gep81.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i48 ; 2 uses
  %i.eu = load i64, ptr %gep81.i, align 8, !tbaa !32
  store i64 %i.eu, ptr %gep.i, align 8, !tbaa !32
  store i64 %i.et, ptr %gep81.i, align 8, !tbaa !32
  %indvars.iv.next.i49 = or disjoint i64 %indvars.iv.i48, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i49 ; 2 uses
  %i.ev = load i64, ptr %gep.i.1, align 8, !tbaa !32
  %gep81.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.next.i49 ; 2 uses
  %i.ew = load i64, ptr %gep81.i.1, align 8, !tbaa !32
  store i64 %i.ew, ptr %gep.i.1, align 8, !tbaa !32
  store i64 %i.ev, ptr %gep81.i.1, align 8, !tbaa !32
  %indvars.iv.next.i49.1 = add nuw nsw i64 %indvars.iv.i48, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !581

._crit_edge.us.i.loopexit.unr-lcssa:              ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i48.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.i49.1, %._crit_edge.us.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %gep.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i48.epil.init ; 2 uses
  %i.ex = load i64, ptr %gep.i.epil, align 8, !tbaa !32
  %gep81.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i48.epil.init ; 2 uses
  %i.ey = load i64, ptr %gep81.i.epil, align 8, !tbaa !32
  store i64 %i.ey, ptr %gep.i.epil, align 8, !tbaa !32
  store i64 %i.ex, ptr %gep81.i.epil, align 8, !tbaa !32
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.us.i.loopexit.unr-lcssa
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.du ; 2 uses
  %i.fa = icmp ult ptr %i.ez, %3
  br i1 %i.fa, label %.preheader.us.i, label %Abc_TtSwapAdjacent.exit, !llvm.loop !4

Abc_TtSwapAdjacent.exit:                          ; preds = %._crit_edge.us.i, %.lr.ph.i50, %vector.body82, %scalar.ph72, %scalar.ph72.1, %scalar.ph72.2, %bb.e, %bb.g, %bb.h, %.preheader.lr.ph.i
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.fc = sext i8 %i.at to i64
  %i.fd = getelementptr inbounds i8, ptr %i.fb, i64 %i.fc
  store i8 %i.i, ptr %i.fd, align 1, !tbaa !38
  %i.fe = add nsw i32 %i.au, 1                    ; 3 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds i8, ptr %i.fb, i64 %i.ff
  store i8 %i.e, ptr %i.fg, align 1, !tbaa !38
  %i.fh = trunc i32 %i.fe to i8
  store i8 %i.fh, ptr %i.as, align 1, !tbaa !38
  %i.fi = getelementptr inbounds i8, ptr %i.ar, i64 %i.t
  store i8 %i.at, ptr %i.fi, align 1, !tbaa !38
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !70 ; 3 uses
  %i.fl = lshr i32 %i.fk, %i.au
  %i.fm = lshr i32 %i.fk, %i.fe
  %i.fn = xor i32 %i.fl, %i.fm
  %i.fo = and i32 %i.fn, 1
  %.not = icmp eq i32 %i.fo, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %Abc_TtSwapAdjacent.exit
  %i.fp = shl i32 3, %i.au
  %i.fq = xor i32 %i.fk, %i.fp
  store i32 %i.fq, ptr %i.fj, align 4, !tbaa !70
  br label %bb.j

bb.j:                                             ; preds = %Abc_TtSwapAdjacent.exit, %bb.i, %Abc_TgExpendSymmetry.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 8) i32 @Abc_TgSymGroupPerm(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 -2147483648, 2147483646) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #7 {
bb.a:
  %3 = alloca %struct.Abc_TgMan_t_, align 8       ; 65 uses
  %.sroa.21 = alloca [180 x i8], align 4          ; 12 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !69     ; 29 uses
  %i.b = ptrtoaddr ptr %i.a to i64                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !68   ; 5 uses
  %i.e = icmp slt i32 %i.d, 7
  %i.f = add nsw i32 %i.d, -6
  %i.g = shl nuw i32 1, %i.f
  %i.h = select i1 %i.e, i32 1, i32 %i.g          ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21)
  %.not = icmp eq i32 %2, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %3, ptr noundef nonnull readonly align 8 dereferenceable(192) %0, i64 192, i1 false)
  %i.i = icmp sgt i32 %i.h, 0                     ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.i, label %.lr.ph18.preheader.i.i, label %Abc_TgManCopy.exit

.lr.ph18.preheader.i.i:                           ; preds = %bb.b
  %wide.trip.count24.i.i = zext nneg i32 %i.h to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.h, 8
  %i.j = sub i64 add (i64 ptrtoaddr (ptr @Abc_TgSymGroupPerm.pCopy to i64), i64 -1), %i.b
  %diff.check = icmp ult i64 %i.j, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph18.i.i.preheader, label %vector.ph

.lr.ph18.i.i.preheader:                           ; preds = %.lr.ph18.preheader.i.i
  %xtraiter = and i64 %wide.trip.count24.i.i, 3   ; 3 uses
  %i.k = icmp ult i32 %i.h, 4
  br i1 %i.k, label %.lr.ph18.i.i.epil.preheader, label %.lr.ph18.i.i.preheader.new

.lr.ph18.i.i.preheader.new:                       ; preds = %.lr.ph18.i.i.preheader
  %unroll_iter = and i64 %wide.trip.count24.i.i, 2147483644
  br label %.lr.ph18.i.i

vector.ph:                                        ; preds = %.lr.ph18.preheader.i.i
  %n.vec = and i64 %wide.trip.count24.i.i, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <2 x i64>, ptr %i.l, align 8, !tbaa !32
  %wide.load529 = load <2 x i64>, ptr %i.m, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @Abc_TgSymGroupPerm.pCopy, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <2 x i64> %wide.load, ptr %i.n, align 16, !tbaa !32
  store <2 x i64> %wide.load529, ptr %i.o, align 16, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %Abc_TgManCopy.exit, label %vector.body, !llvm.loop !584

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i, %.lr.ph18.i.i.preheader.new
  %indvars.iv21.i.i = phi i64 [ 0, %.lr.ph18.i.i.preheader.new ], [ %indvars.iv.next22.i.i.3, %.lr.ph18.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph18.i.i.preheader.new ], [ %niter.next.3, %.lr.ph18.i.i ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv21.i.i
  %i.r = load i64, ptr %i.q, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @Abc_TgSymGroupPerm.pCopy, i64 %indvars.iv21.i.i
  store i64 %i.r, ptr %i.s, align 16, !tbaa !32
  %indvars.iv.next22.i.i = or disjoint i64 %indvars.iv21.i.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next22.i.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @Abc_TgSymGroupPerm.pCopy, i64 %indvars.iv.next22.i.i
  store i64 %i.u, ptr %i.v, align 8, !tbaa !32
  %indvars.iv.next22.i.i.1 = or disjoint i64 %indvars.iv21.i.i, 2 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next22.i.i.1
  %i.x = load i64, ptr %i.w, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @Abc_TgSymGroupPerm.pCopy, i64 %indvars.iv.next22.i.i.1
  store i64 %i.x, ptr %i.y, align 16, !tbaa !32
  %indvars.iv.next22.i.i.2 = or disjoint i64 %indvars.iv21.i.i, 3 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next22.i.i.2
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @Abc_TgSymGroupPerm.pCopy, i64 %indvars.iv.next22.i.i.2
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !32
  %indvars.iv.next22.i.i.3 = add nuw nsw i64 %indvars.iv21.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Abc_TgManCopy.exit.loopexit.unr-lcssa, label %.lr.ph18.i.i, !llvm.loop !585

Abc_TgManCopy.exit.loopexit.unr-lcssa:            ; preds = %.lr.ph18.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Abc_TgManCopy.exit, label %.lr.ph18.i.i.epil.preheader

.lr.ph18.i.i.epil.preheader:                      ; preds = %Abc_TgManCopy.exit.loopexit.unr-lcssa, %.lr.ph18.i.i.preheader
  %indvars.iv21.i.i.epil.init = phi i64 [ 0, %.lr.ph18.i.i.preheader ], [ %indvars.iv.next22.i.i.3, %Abc_TgManCopy.exit.loopexit.unr-lcssa ]
  %lcmp.mod970 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod970)
  br label %.lr.ph18.i.i.epil

.lr.ph18.i.i.epil:                                ; preds = %.lr.ph18.i.i.epil, %.lr.ph18.i.i.epil.preheader
  %indvars.iv21.i.i.epil = phi i64 [ %indvars.iv.next22.i.i.epil, %.lr.ph18.i.i.epil ], [ %indvars.iv21.i.i.epil.init, %.lr.ph18.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph18.i.i.epil ], [ 0, %.lr.ph18.i.i.epil.preheader ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv21.i.i.epil
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @Abc_TgSymGroupPerm.pCopy, i64 %indvars.iv21.i.i.epil
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !32
  %indvars.iv.next22.i.i.epil = add nuw nsw i64 %indvars.iv21.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Abc_TgManCopy.exit, label %.lr.ph18.i.i.epil, !llvm.loop !586

Abc_TgManCopy.exit:                               ; preds = %vector.body, %Abc_TgManCopy.exit.loopexit.unr-lcssa, %.lr.ph18.i.i.epil, %bb.b
  %.pre-phi400 = phi i64 [ 2147483648, %bb.b ], [ %wide.trip.count24.i.i, %Abc_TgManCopy.exit.loopexit.unr-lcssa ], [ %wide.trip.count24.i.i, %.lr.ph18.i.i.epil ], [ %wide.trip.count24.i.i, %vector.body ] ; 2 uses
  store ptr @Abc_TgSymGroupPerm.pCopy, ptr %3, align 8, !tbaa !69
  call fastcc void @Abc_TgSwapAdjacentSymGroups(ptr noundef %3, i32 noundef %1)
  %i.af = trunc nuw i64 %.pre-phi400 to i32
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %Abc_TtCompareRev.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.ah = trunc nuw i64 %i.aj to i32
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph, label %Abc_TtCompareRev.exit.thread, !llvm.loop !6

.lr.ph:                                           ; preds = %Abc_TgManCopy.exit, %bb.c
  %indvars.iv.i514 = phi i64 [ %i.aj, %bb.c ], [ %.pre-phi400, %Abc_TgManCopy.exit ]
  %i.aj = add nsw i64 %indvars.iv.i514, -1        ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !32 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @Abc_TgSymGroupPerm.pCopy, i64 %i.aj
  %i.an = load i64, ptr %i.am, align 8, !tbaa !32 ; 2 uses
  %.not.i = icmp eq i64 %i.al, %i.an
  br i1 %.not.i, label %bb.c, label %bb.d, !llvm.loop !6

bb.d:                                             ; preds = %.lr.ph
  %i.ao = icmp ult i64 %i.al, %i.an
  br i1 %i.ao, label %Abc_TtCompareRev.exit, label %Abc_TtCompareRev.exit.thread

Abc_TtCompareRev.exit:                            ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull readonly align 8 dereferenceable(192) %3, i64 192, i1 false), !tbaa.struct !79
  %i.ap = load ptr, ptr %3, align 8, !tbaa !69    ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !68 ; 2 uses
  %i.as = icmp slt i32 %i.ar, 7
  %i.at = add nsw i32 %i.ar, -6
  %i.au = shl nuw i32 1, %i.at
  %i.av = select i1 %i.as, i32 1, i32 %i.au       ; 4 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph18.preheader.i.i32, label %Abc_TtCompareRev.exit.thread.sink.split

.lr.ph18.preheader.i.i32:                         ; preds = %Abc_TtCompareRev.exit
  %i.ax = ptrtoaddr ptr %i.ap to i64
  %wide.trip.count24.i.i33 = zext nneg i32 %i.av to i64 ; 3 uses
  %min.iters.check533 = icmp ult i32 %i.av, 8
  %i.ay = sub i64 %i.ax, %i.b
  %diff.check535 = icmp ugt i64 %i.ay, -32
  %or.cond896 = select i1 %min.iters.check533, i1 true, i1 %diff.check535
  br i1 %or.cond896, label %.lr.ph18.i.i34.preheader, label %vector.ph536

.lr.ph18.i.i34.preheader:                         ; preds = %.lr.ph18.preheader.i.i32
  %xtraiter971 = and i64 %wide.trip.count24.i.i33, 3 ; 3 uses
  %i.az = icmp ult i32 %i.av, 4
  br i1 %i.az, label %.lr.ph18.i.i34.epil.preheader, label %.lr.ph18.i.i34.preheader.new

.lr.ph18.i.i34.preheader.new:                     ; preds = %.lr.ph18.i.i34.preheader
  %unroll_iter975 = and i64 %wide.trip.count24.i.i33, 2147483644
  br label %.lr.ph18.i.i34

vector.ph536:                                     ; preds = %.lr.ph18.preheader.i.i32
end_hunk_5
