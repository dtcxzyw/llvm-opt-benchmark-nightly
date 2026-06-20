inline.NumInlined: 3737
inline.NumDeleted: 1486
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a

vec.epilog.ph688:                                 ; preds = %vector.main.loop.iter.check670, %vec.epilog.iter.check686
  %vec.epilog.resume.val683 = phi i64 [ %n.vec674, %vec.epilog.iter.check686 ], [ 0, %vector.main.loop.iter.check670 ]
  %i.fd = getelementptr i8, ptr %i.eu, i64 %i.dl
  %broadcast.splatinsert691 = insertelement <8 x i32> poison, i32 %i.ew, i64 0
  %broadcast.splat692 = shufflevector <8 x i32> %broadcast.splatinsert691, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body693

vec.epilog.vector.body693:                        ; preds = %vec.epilog.vector.body693, %vec.epilog.ph688
  %index694 = phi i64 [ %vec.epilog.resume.val683, %vec.epilog.ph688 ], [ %index.next696, %vec.epilog.vector.body693 ] ; 2 uses
  %i.fe = shl i64 %index694, 2
  %next.gep695 = getelementptr i8, ptr %i.eu, i64 %i.fe
  store <8 x i32> %broadcast.splat692, ptr %next.gep695, align 4, !tbaa !3, !noalias !220
  %index.next696 = add nuw i64 %index694, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next696, %n.vec690
  br i1 %i.ff, label %vec.epilog.middle.block697, label %vec.epilog.vector.body693, !llvm.loop !318

vec.epilog.middle.block697:                       ; preds = %vec.epilog.vector.body693
  br i1 %cmp.n698, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %iter.check684, %vec.epilog.iter.check686, %vec.epilog.middle.block697
  %.06.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.eu, %iter.check684 ], [ %i.ex, %vec.epilog.iter.check686 ], [ %i.fd, %vec.epilog.middle.block697 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.ew, ptr %.06.i.i.i.i.i.i.i.i, align 4, !tbaa !3, !noalias !220
  %i.fg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fg, %i.ev
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !319

_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %vec.epilog.middle.block697, %middle.block681
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, %i.aa
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E_EEvS9_SN_.exit.i, label %iter.check684, !llvm.loop !320

bb.ad:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i
  %i.fh = load ptr, ptr %1, align 8, !tbaa !307, !noalias !220 ; 4 uses
  %i.fi = load i32, ptr %i.p, align 8, !tbaa !223, !noalias !220 ; 7 uses
  %.not.i.i.i.i.i.i.i = icmp slt i32 %i.dd, %i.fi
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ae, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E_EEvS9_SN_.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.fj = add i32 %i.dd, 63                       ; 2 uses
  %i.fk = srem i32 %i.fj, 64
  %i.fl = sub nsw i32 %i.fj, %i.fk                ; 6 uses
  %i.fm = and i32 %i.fi, -64                      ; 7 uses
  %i.fn = icmp slt i32 %i.fm, %i.fl
  br i1 %i.fn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fo = ashr i32 %i.fi, 6
  %i.fp = and i32 %i.fi, 63
  %i.fq = zext nneg i32 %i.fp to i64
  %notmask.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.fq
  %i.fr = xor i64 %notmask.i.i.i.i.i.i.i.i, -1
  %i.fs = sub nsw i32 %i.fl, %i.dd                ; 2 uses
  %i.ft = zext nneg i32 %i.fs to i64
  %notmask.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ft
  %i.fu = xor i64 %notmask.i.i.i.i.i.i.i.i.i, -1
  %i.fv = sub nsw i32 64, %i.fs
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = shl i64 %i.fu, %i.fw
  %i.fy = and i64 %i.fx, %i.fr
  %i.fz = sext i32 %i.fo to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %i.fz
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !148, !noalias !220
  %i.gc = and i64 %i.fy, %i.gb                    ; 2 uses
  %.not.i.i.i.i11.i.i.i.i = icmp eq i64 %i.gc, 0
  br i1 %.not.i.i.i.i11.i.i.i.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E_EEvS9_SN_.exit.i, label %.preheader.i.i.i.i.i.i.i.preheader.i

.preheader.i.i.i.i.i.i.i.preheader.i:             ; preds = %bb.af
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aa, 2 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.z, 0
  %i.gd = add nsw i64 %.idx.i.i.i.i.i.i.i.i.i, -4 ; 3 uses
  %i.ge = lshr exact i64 %i.gd, 2
  %i.gf = add nuw nsw i64 %i.ge, 1                ; 5 uses
  %min.iters.check638 = icmp ult i64 %i.gd, 28
  %min.iters.check640 = icmp ult i64 %i.gd, 124
  %n.mod.vf642 = and i64 %i.gf, 24
  %n.vec643 = and i64 %i.gf, 9223372036854775776  ; 4 uses
  %i.gg = shl i64 %n.vec643, 2
  %cmp.n651 = icmp eq i64 %i.gf, %n.vec643
  %min.epilog.iters.check656 = icmp eq i64 %n.mod.vf642, 0
  %n.vec659 = and i64 %i.gf, 9223372036854775800  ; 3 uses
  %i.gh = shl i64 %n.vec659, 2
  %cmp.n667 = icmp eq i64 %i.gf, %n.vec659
  br label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.i
  %indvars.iv79.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.i ], [ %indvars.iv.next80.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %.017.i.i.i.i.i.i.i.i = phi i64 [ %i.gc, %.preheader.i.i.i.i.i.i.i.preheader.i ], [ %i.hc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gi = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.017.i.i.i.i.i.i.i.i, i1 true)
  %i.gj = trunc nuw nsw i64 %i.gi to i32
  %i.gk = or disjoint i32 %i.fm, %i.gj            ; 4 uses
  %i.gl = sext i32 %i.gk to i64                   ; 2 uses
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.gl
  store i32 %i.z, ptr %i.gm, align 4, !tbaa !3, !noalias !220
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.gl
  %i.go = trunc nuw nsw i64 %indvars.iv79.i to i32
  store i32 %i.go, ptr %i.gn, align 4, !tbaa !3, !noalias !220
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv79.i ; 6 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx.i.i.i.i.i.i.i.i.i
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.i.i.i.i.i, label %iter.check653

iter.check653:                                    ; preds = %.preheader.i.i.i.i.i.i.i.i
  br i1 %min.iters.check638, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check639

vector.main.loop.iter.check639:                   ; preds = %iter.check653
  br i1 %min.iters.check640, label %vec.epilog.ph657, label %vector.ph641

vector.ph641:                                     ; preds = %vector.main.loop.iter.check639
  %i.gr = getelementptr i8, ptr %i.gp, i64 %i.gg
  %broadcast.splatinsert644 = insertelement <8 x i32> poison, i32 %i.gk, i64 0
  %broadcast.splat645 = shufflevector <8 x i32> %broadcast.splatinsert644, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body646

vector.body646:                                   ; preds = %vector.body646, %vector.ph641
  %index647 = phi i64 [ 0, %vector.ph641 ], [ %index.next649, %vector.body646 ] ; 2 uses
  %i.gs = shl i64 %index647, 2
  %next.gep648 = getelementptr i8, ptr %i.gp, i64 %i.gs ; 4 uses
  %i.gt = getelementptr i8, ptr %next.gep648, i64 32
  %i.gu = getelementptr i8, ptr %next.gep648, i64 64
  %i.gv = getelementptr i8, ptr %next.gep648, i64 96
  store <8 x i32> %broadcast.splat645, ptr %next.gep648, align 4, !tbaa !3, !noalias !220
  store <8 x i32> %broadcast.splat645, ptr %i.gt, align 4, !tbaa !3, !noalias !220
  store <8 x i32> %broadcast.splat645, ptr %i.gu, align 4, !tbaa !3, !noalias !220
  store <8 x i32> %broadcast.splat645, ptr %i.gv, align 4, !tbaa !3, !noalias !220
  %index.next649 = add nuw i64 %index647, 32      ; 2 uses
  %i.gw = icmp eq i64 %index.next649, %n.vec643
  br i1 %i.gw, label %middle.block650, label %vector.body646, !llvm.loop !321

middle.block650:                                  ; preds = %vector.body646
  br i1 %cmp.n651, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.i.i.i.i.i, label %vec.epilog.iter.check655

vec.epilog.iter.check655:                         ; preds = %middle.block650
  br i1 %min.epilog.iters.check656, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph657, !prof !312

vec.epilog.ph657:                                 ; preds = %vector.main.loop.iter.check639, %vec.epilog.iter.check655
  %vec.epilog.resume.val652 = phi i64 [ %n.vec643, %vec.epilog.iter.check655 ], [ 0, %vector.main.loop.iter.check639 ]
  %i.gx = getelementptr i8, ptr %i.gp, i64 %i.gh
  %broadcast.splatinsert660 = insertelement <8 x i32> poison, i32 %i.gk, i64 0
  %broadcast.splat661 = shufflevector <8 x i32> %broadcast.splatinsert660, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body662

vec.epilog.vector.body662:                        ; preds = %vec.epilog.vector.body662, %vec.epilog.ph657
  %index663 = phi i64 [ %vec.epilog.resume.val652, %vec.epilog.ph657 ], [ %index.next665, %vec.epilog.vector.body662 ] ; 2 uses
  %i.gy = shl i64 %index663, 2
  %next.gep664 = getelementptr i8, ptr %i.gp, i64 %i.gy
  store <8 x i32> %broadcast.splat661, ptr %next.gep664, align 4, !tbaa !3, !noalias !220
  %index.next665 = add nuw i64 %index663, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next665, %n.vec659
  br i1 %i.gz, label %vec.epilog.middle.block666, label %vec.epilog.vector.body662, !llvm.loop !322

vec.epilog.middle.block666:                       ; preds = %vec.epilog.vector.body662
  br i1 %cmp.n667, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %iter.check653, %vec.epilog.iter.check655, %vec.epilog.middle.block666
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.gp, %iter.check653 ], [ %i.gr, %vec.epilog.iter.check655 ], [ %i.gx, %vec.epilog.middle.block666 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ha, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.gk, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !3, !noalias !220
  %i.ha = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ha, %i.gq
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !323

_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block650, %vec.epilog.middle.block666, %.preheader.i.i.i.i.i.i.i.i
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, %i.aa
  %i.hb = add nsw i64 %.017.i.i.i.i.i.i.i.i, -1
  %i.hc = and i64 %i.hb, %.017.i.i.i.i.i.i.i.i    ; 2 uses
  %.not10.i.i.i.i.i.i.i.i = icmp eq i64 %i.hc, 0
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E_EEvS9_SN_.exit.i, label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !324

bb.ag:                                            ; preds = %bb.ae
  %.not32.i.i.i.i.i.i.i = icmp eq i32 %i.dd, %i.fl
  br i1 %.not32.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit49.i.i.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hd = sdiv i32 %i.dd, 64                      ; 2 uses
  %i.he = sub nsw i32 %i.fl, %i.dd                ; 2 uses
  %i.hf = zext nneg i32 %i.he to i64
  %notmask.i.i35.i.i.i.i.i.i.i = shl nsw i64 -1, %i.hf
  %i.hg = xor i64 %notmask.i.i35.i.i.i.i.i.i.i, -1
  %i.hh = sub nsw i32 64, %i.he
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = shl i64 %i.hg, %i.hi
  %i.hk = sext i32 %i.hd to i64
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %i.hk
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !148, !noalias !220
  %i.hn = and i64 %i.hm, %i.hj                    ; 3 uses
  %.not.i36.i.i.i.i.i.i.i = icmp eq i64 %i.hn, 0
  br i1 %.not.i36.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit49.i.i.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i.i.i

.preheader.i37.i.i.i.i.i.i.i:                     ; preds = %bb.ah
  %i.ho = shl nsw i32 %i.hd, 6                    ; 2 uses
  %.idx.i.i39.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aa, 2 ; 2 uses
  %.not5.i.i.i.i.i40.i.i.i.i.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not5.i.i.i.i.i40.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i47.i.i.i.i.i.i.us.preheader.i, label %.lr.ph.i.i.i.i.i41.i.i.i.i.i.i.preheader.i.preheader

.lr.ph.i.i.i.i.i41.i.i.i.i.i.i.preheader.i.preheader: ; preds = %.preheader.i37.i.i.i.i.i.i.i
  %i.hp = add nsw i64 %.idx.i.i39.i.i.i.i.i.i.i, -4 ; 3 uses
  %i.hq = lshr exact i64 %i.hp, 2
  %i.hr = add nuw nsw i64 %i.hq, 1                ; 5 uses
  %min.iters.check485 = icmp ult i64 %i.hp, 28
  %min.iters.check487 = icmp ult i64 %i.hp, 124
  %n.mod.vf489 = and i64 %i.hr, 24
  %n.vec490 = and i64 %i.hr, 9223372036854775776  ; 4 uses
  %i.hs = shl i64 %n.vec490, 2
  %cmp.n498 = icmp eq i64 %i.hr, %n.vec490
  %min.epilog.iters.check503 = icmp eq i64 %n.mod.vf489, 0
  %n.vec506 = and i64 %i.hr, 9223372036854775800  ; 3 uses
  %i.ht = shl i64 %n.vec506, 2
  %cmp.n514 = icmp eq i64 %i.hr, %n.vec506
  br label %iter.check500

_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i47.i.i.i.i.i.i.us.preheader.i: ; preds = %.preheader.i37.i.i.i.i.i.i.i
  %52 = sext i32 %i.ho to i64
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i47.i.i.i.i.i.i.us.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i47.i.i.i.i.i.i.us.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i47.i.i.i.i.i.i.us.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i47.i.i.i.i.i.i.us.preheader.i
  %.017.i38.i.i.i.i.i.i.us.i = phi i64 [ %i.hy, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i47.i.i.i.i.i.i.us.i ], [ %i.hn, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i47.i.i.i.i.i.i.us.preheader.i ] ; 3 uses
  %i.hu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.017.i38.i.i.i.i.i.i.us.i, i1 true)
  %53 = or disjoint i64 %i.hu, %52                ; 2 uses
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %53
  store i32 0, ptr %i.hv, align 4, !tbaa !3, !noalias !220
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %53
  store i32 0, ptr %i.hw, align 4, !tbaa !3, !noalias !220
  %i.hx = add i64 %.017.i38.i.i.i.i.i.i.us.i, -1
  %i.hy = and i64 %i.hx, %.017.i38.i.i.i.i.i.i.us.i ; 2 uses
  %.not10.i48.i.i.i.i.i.i.us.i = icmp eq i64 %i.hy, 0
  br i1 %.not10.i48.i.i.i.i.i.i.us.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit49.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i47.i.i.i.i.i.i.us.i, !llvm.loop !324

iter.check500:                                    ; preds = %.lr.ph.i.i.i.i.i41.i.i.i.i.i.i.preheader.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i47.i.i.i.i.i.i.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i47.i.i.i.i.i.i.loopexit.i ], [ 0, %.lr.ph.i.i.i.i.i41.i.i.i.i.i.i.preheader.i.preheader ] ; 3 uses
  %.017.i38.i.i.i.i.i.i.i = phi i64 [ %i.it, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i47.i.i.i.i.i.i.loopexit.i ], [ %i.hn, %.lr.ph.i.i.i.i.i41.i.i.i.i.i.i.preheader.i.preheader ] ; 3 uses
  %i.hz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.017.i38.i.i.i.i.i.i.i, i1 true)
  %i.ia = trunc nuw nsw i64 %i.hz to i32
  %i.ib = or disjoint i32 %i.ho, %i.ia            ; 4 uses
  %i.ic = sext i32 %i.ib to i64                   ; 2 uses
  %i.id = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.ic
  store i32 %i.z, ptr %i.id, align 4, !tbaa !3, !noalias !220
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.ic
  %i.if = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.if, ptr %i.ie, align 4, !tbaa !3, !noalias !220
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.i ; 6 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx.i.i39.i.i.i.i.i.i.i
  br i1 %min.iters.check485, label %.lr.ph.i.i.i.i.i41.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check486

vector.main.loop.iter.check486:                   ; preds = %iter.check500
  br i1 %min.iters.check487, label %vec.epilog.ph504, label %vector.ph488

vector.ph488:                                     ; preds = %vector.main.loop.iter.check486
  %i.ii = getelementptr i8, ptr %i.ig, i64 %i.hs
  %broadcast.splatinsert491 = insertelement <8 x i32> poison, i32 %i.ib, i64 0
  %broadcast.splat492 = shufflevector <8 x i32> %broadcast.splatinsert491, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body493

vector.body493:                                   ; preds = %vector.body493, %vector.ph488
  %index494 = phi i64 [ 0, %vector.ph488 ], [ %index.next496, %vector.body493 ] ; 2 uses
  %i.ij = shl i64 %index494, 2
  %next.gep495 = getelementptr i8, ptr %i.ig, i64 %i.ij ; 4 uses
  %i.ik = getelementptr i8, ptr %next.gep495, i64 32
  %i.il = getelementptr i8, ptr %next.gep495, i64 64
  %i.im = getelementptr i8, ptr %next.gep495, i64 96
  store <8 x i32> %broadcast.splat492, ptr %next.gep495, align 4, !tbaa !3, !noalias !220
  store <8 x i32> %broadcast.splat492, ptr %i.ik, align 4, !tbaa !3, !noalias !220
  store <8 x i32> %broadcast.splat492, ptr %i.il, align 4, !tbaa !3, !noalias !220
  store <8 x i32> %broadcast.splat492, ptr %i.im, align 4, !tbaa !3, !noalias !220
  %index.next496 = add nuw i64 %index494, 32      ; 2 uses
  %i.in = icmp eq i64 %index.next496, %n.vec490
  br i1 %i.in, label %middle.block497, label %vector.body493, !llvm.loop !325

middle.block497:                                  ; preds = %vector.body493
  br i1 %cmp.n498, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i47.i.i.i.i.i.i.loopexit.i, label %vec.epilog.iter.check502

vec.epilog.iter.check502:                         ; preds = %middle.block497
  br i1 %min.epilog.iters.check503, label %.lr.ph.i.i.i.i.i41.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph504, !prof !312

vec.epilog.ph504:                                 ; preds = %vector.main.loop.iter.check486, %vec.epilog.iter.check502
  %vec.epilog.resume.val499 = phi i64 [ %n.vec490, %vec.epilog.iter.check502 ], [ 0, %vector.main.loop.iter.check486 ]
  %i.io = getelementptr i8, ptr %i.ig, i64 %i.ht
  %broadcast.splatinsert507 = insertelement <8 x i32> poison, i32 %i.ib, i64 0
  %broadcast.splat508 = shufflevector <8 x i32> %broadcast.splatinsert507, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body509

vec.epilog.vector.body509:                        ; preds = %vec.epilog.vector.body509, %vec.epilog.ph504
  %index510 = phi i64 [ %vec.epilog.resume.val499, %vec.epilog.ph504 ], [ %index.next512, %vec.epilog.vector.body509 ] ; 2 uses
  %i.ip = shl i64 %index510, 2
  %next.gep511 = getelementptr i8, ptr %i.ig, i64 %i.ip
  store <8 x i32> %broadcast.splat508, ptr %next.gep511, align 4, !tbaa !3, !noalias !220
  %index.next512 = add nuw i64 %index510, 8       ; 2 uses
  %i.iq = icmp eq i64 %index.next512, %n.vec506
  br i1 %i.iq, label %vec.epilog.middle.block513, label %vec.epilog.vector.body509, !llvm.loop !326

vec.epilog.middle.block513:                       ; preds = %vec.epilog.vector.body509
  br i1 %cmp.n514, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i47.i.i.i.i.i.i.loopexit.i, label %.lr.ph.i.i.i.i.i41.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i41.i.i.i.i.i.i.i.preheader:       ; preds = %iter.check500, %vec.epilog.iter.check502, %vec.epilog.middle.block513
  %.06.i.i.i.i.i42.i.i.i.i.i.i.i.ph = phi ptr [ %i.ig, %iter.check500 ], [ %i.ii, %vec.epilog.iter.check502 ], [ %i.io, %vec.epilog.middle.block513 ]
  br label %.lr.ph.i.i.i.i.i41.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i41.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i41.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i41.i.i.i.i.i.i.i
  %.06.i.i.i.i.i42.i.i.i.i.i.i.i = phi ptr [ %i.ir, %.lr.ph.i.i.i.i.i41.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i42.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i41.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.ib, ptr %.06.i.i.i.i.i42.i.i.i.i.i.i.i, align 4, !tbaa !3, !noalias !220
  %i.ir = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i42.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i43.i.i.i.i.i.i.i = icmp eq ptr %i.ir, %i.ih
  br i1 %.not.i.i.i.i.i43.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i47.i.i.i.i.i.i.loopexit.i, label %.lr.ph.i.i.i.i.i41.i.i.i.i.i.i.i, !llvm.loop !327

_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i47.i.i.i.i.i.i.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i41.i.i.i.i.i.i.i, %vec.epilog.middle.block513, %middle.block497
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, %i.aa ; 2 uses
  %i.is = add i64 %.017.i38.i.i.i.i.i.i.i, -1
  %i.it = and i64 %i.is, %.017.i38.i.i.i.i.i.i.i  ; 2 uses
  %.not10.i48.i.i.i.i.i.i.i = icmp eq i64 %i.it, 0
  br i1 %.not10.i48.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit49.i.i.i.i.i.i.loopexit66.i, label %iter.check500, !llvm.loop !324

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit49.i.i.i.i.i.i.loopexit66.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i47.i.i.i.i.i.i.loopexit.i
  %i.iu = trunc nuw i64 %indvars.iv.next.i to i32
  br label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit49.i.i.i.i.i.i.i

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit49.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i47.i.i.i.i.i.i.us.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit49.i.i.i.i.i.i.loopexit66.i, %bb.ah, %bb.ag
  %.3.i = phi i32 [ 0, %bb.ag ], [ 0, %bb.ah ], [ %i.iu, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit49.i.i.i.i.i.i.loopexit66.i ], [ 0, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i47.i.i.i.i.i.i.us.i ] ; 2 uses
  %i.iv = add nsw i32 %i.fl, 64                   ; 2 uses
  %.not3377.i.i.i.i.i.i.i = icmp sgt i32 %i.iv, %i.fm
  br i1 %.not3377.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.preheader.i:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit49.i.i.i.i.i.i.i
  %.idx.i.i50.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aa, 2 ; 3 uses
  %.not5.i.i.i.i.i51.i.i.i.i.i.i.i = icmp eq i32 %i.z, 0 ; 2 uses
  %i.iw = add nsw i64 %.idx.i.i50.i.i.i.i.i.i.i, -4 ; 5 uses
  %i.ix = lshr exact i64 %i.iw, 2
  %i.iy = add nuw nsw i64 %i.ix, 1                ; 10 uses
  %i.iz = sub i64 %i.ca, %i.bt
  %min.iters.check576 = icmp ult i64 %i.iw, 28
  %min.iters.check578 = icmp ult i64 %i.iw, 124
  %n.mod.vf580 = and i64 %i.iy, 24
  %n.vec581 = and i64 %i.iy, 9223372036854775776  ; 4 uses
  %i.ja = shl i64 %n.vec581, 2
  %cmp.n589 = icmp eq i64 %i.iy, %n.vec581
  %min.epilog.iters.check594 = icmp eq i64 %n.mod.vf580, 0
  %n.vec597 = and i64 %i.iy, 9223372036854775800  ; 3 uses
  %i.jb = shl i64 %n.vec597, 2
  %cmp.n605 = icmp eq i64 %i.iy, %n.vec597
  %diff.check = icmp ult i64 %i.iz, 128
  %min.iters.check516 = icmp ult i64 %i.iw, 28
  %min.iters.check518 = icmp ult i64 %i.iw, 124
  %n.mod.vf520 = and i64 %i.iy, 24
  %n.vec521 = and i64 %i.iy, 9223372036854775776  ; 4 uses
  %i.jc = shl i64 %n.vec521, 2
  %cmp.n529 = icmp eq i64 %i.iy, %n.vec521
  %min.epilog.iters.check534 = icmp eq i64 %n.mod.vf520, 0
  %n.vec537 = and i64 %i.iy, 9223372036854775800  ; 3 uses
  %i.jd = shl i64 %n.vec537, 2
  %cmp.n545 = icmp eq i64 %i.iy, %n.vec537
  br label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit49.i.i.i.i.i.i.i
  %.4.i = phi i32 [ %.3.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit49.i.i.i.i.i.i.i ], [ %.8.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.not34.i.i.i.i.i.i.i = icmp eq i32 %i.fi, %i.fm
  br i1 %.not34.i.i.i.i.i.i.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E_EEvS9_SN_.exit.i, label %bb.aj

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.i
  %.5.i = phi i32 [ %.8.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %.3.i, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 11 uses
  %i.je = phi i32 [ %i.mf, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.iv, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 2 uses
  %.078.i.i.i.i.i.i.i = phi i32 [ %i.je, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.fl, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.jf = sdiv i32 %.078.i.i.i.i.i.i.i, 64        ; 3 uses
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %i.jg
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !148, !noalias !220 ; 3 uses
  switch i64 %i.ji, label %.lr.ph.i.i.i.i10.i.i.i.i [
    i64 -1, label %bb.ai
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.jj = shl nsw i32 %i.jf, 6                    ; 2 uses
  br i1 %.not5.i.i.i.i.i51.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i27.i.i.i.i.i.i.i.preheader.preheader.i.a, label %.lr.ph.i.i.i.i27.i.i.i.i.i.i.i.preheader.preheader.i

.lr.ph.i.i.i.i27.i.i.i.i.i.i.i.preheader.preheader.i: ; preds = %.lr.ph.i.i.i.i10.i.i.i.i
  %54 = sext i32 %.5.i to i64
  br label %iter.check531

.lr.ph.i.i.i.i27.i.i.i.i.i.i.i.preheader.preheader.i.a: ; preds = %.lr.ph.i.i.i.i10.i.i.i.i
  %i.jk = sext i32 %i.jj to i64
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i58.i.i.i.i.i.i.us.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i58.i.i.i.i.i.i.us.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i58.i.i.i.i.i.i.us.i, %.lr.ph.i.i.i.i27.i.i.i.i.i.i.i.preheader.preheader.i.a
  %.01547.i.i.i.i.i.i.i.us.i = phi i64 [ %i.jp, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i58.i.i.i.i.i.i.us.i ], [ %i.ji, %.lr.ph.i.i.i.i27.i.i.i.i.i.i.i.preheader.preheader.i.a ] ; 3 uses
  %i.jl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01547.i.i.i.i.i.i.i.us.i, i1 true)
  %55 = or disjoint i64 %i.jl, %i.jk              ; 2 uses
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %55
  store i32 0, ptr %i.jm, align 4, !tbaa !3, !noalias !220
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %55
  store i32 %.5.i, ptr %i.jn, align 4, !tbaa !3, !noalias !220
  %i.jo = add i64 %.01547.i.i.i.i.i.i.i.us.i, -1
  %i.jp = and i64 %i.jo, %.01547.i.i.i.i.i.i.i.us.i ; 2 uses
  %.not.i59.i.i.i.i.i.i.us.i = icmp eq i64 %i.jp, 0
  br i1 %.not.i59.i.i.i.i.i.i.us.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i58.i.i.i.i.i.i.us.i, !llvm.loop !328

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.jq = shl nsw i32 %i.jf, 6                    ; 2 uses
  %i.jr = add i32 %i.jq, 64
  %i.js = sext i32 %i.jr to i64                   ; 3 uses
  %.0.off.i.i.i.i.i.i.i = add i32 %.078.i.i.i.i.i.i.i, 127
  %.not50.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i, 64
  br i1 %.not50.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph49.i.i.i.i.i.i.i.i

.lr.ph49.i.i.i.i.i.i.i.i:                         ; preds = %bb.ai
  %i.jt = sext i32 %i.jq to i64                   ; 7 uses
  br i1 %.not5.i.i.i.i.i51.i.i.i.i.i.i.i, label %iter.check561, label %.lr.ph.i.i.i.i.i52.i.i.i.i.i.i.preheader.i

iter.check561:                                    ; preds = %.lr.ph49.i.i.i.i.i.i.i.i
  %i.ju = or disjoint i64 %i.jt, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.ju, i64 %i.js) ; 2 uses
  %i.jv = sub i64 %umax, %i.jt                    ; 3 uses
  %min.iters.check547 = icmp ult i64 %i.jv, 8
  %or.cond727 = select i1 %min.iters.check547, i1 true, i1 %diff.check
  br i1 %or.cond727, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.us.i.preheader, label %vector.main.loop.iter.check548

vector.main.loop.iter.check548:                   ; preds = %iter.check561
  %min.iters.check549 = icmp ult i64 %i.jv, 32
  %n.mod.vf566 = and i64 %umax, 1                 ; 3 uses
  %n.vec567 = sub nuw i64 %i.jv, %n.mod.vf566     ; 3 uses
  %i.jw = add i64 %n.vec567, %i.jt                ; 2 uses
  %broadcast.splatinsert568 = insertelement <8 x i32> poison, i32 %.5.i, i64 0
  %broadcast.splat569 = shufflevector <8 x i32> %broadcast.splatinsert568, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check549, label %vec.epilog.vector.body570, label %vector.body555

vector.body555:                                   ; preds = %vector.main.loop.iter.check548, %vector.body555
  %index556 = phi i64 [ %index.next557, %vector.body555 ], [ 0, %vector.main.loop.iter.check548 ] ; 2 uses
  %i.jx = add i64 %index556, %i.jt                ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.jx ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 32
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 64
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 96
  store <8 x i32> zeroinitializer, ptr %i.jy, align 4, !tbaa !3, !noalias !220
  store <8 x i32> zeroinitializer, ptr %i.jz, align 4, !tbaa !3, !noalias !220
  store <8 x i32> zeroinitializer, ptr %i.ka, align 4, !tbaa !3, !noalias !220
  store <8 x i32> zeroinitializer, ptr %i.kb, align 4, !tbaa !3, !noalias !220
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.jx ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 32
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 96
  store <8 x i32> %broadcast.splat569, ptr %i.kc, align 4, !tbaa !3, !noalias !220
  store <8 x i32> %broadcast.splat569, ptr %i.kd, align 4, !tbaa !3, !noalias !220
  store <8 x i32> %broadcast.splat569, ptr %i.ke, align 4, !tbaa !3, !noalias !220
  store <8 x i32> %broadcast.splat569, ptr %i.kf, align 4, !tbaa !3, !noalias !220
  %index.next557 = add nuw i64 %index556, 32      ; 2 uses
  %i.kg = icmp eq i64 %index.next557, %n.vec567
  br i1 %i.kg, label %middle.block558, label %vector.body555, !llvm.loop !329

middle.block558:                                  ; preds = %vector.body555
  %cmp.n559 = icmp eq i64 %n.mod.vf566, 0
  br i1 %cmp.n559, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.us.i.preheader

vec.epilog.vector.body570:                        ; preds = %vector.main.loop.iter.check548, %vec.epilog.vector.body570
  %index571 = phi i64 [ %index.next572, %vec.epilog.vector.body570 ], [ 0, %vector.main.loop.iter.check548 ] ; 2 uses
  %i.kh = add i64 %index571, %i.jt                ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.kh
  store <8 x i32> zeroinitializer, ptr %i.ki, align 4, !tbaa !3, !noalias !220
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.kh
  store <8 x i32> %broadcast.splat569, ptr %i.kj, align 4, !tbaa !3, !noalias !220
  %index.next572 = add nuw i64 %index571, 8       ; 2 uses
  %i.kk = icmp eq i64 %index.next572, %n.vec567
  br i1 %i.kk, label %vec.epilog.middle.block573, label %vec.epilog.vector.body570, !llvm.loop !330

vec.epilog.middle.block573:                       ; preds = %vec.epilog.vector.body570
  %cmp.n574 = icmp eq i64 %n.mod.vf566, 0
  br i1 %cmp.n574, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.us.i.preheader

_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.us.i.preheader: ; preds = %middle.block558, %iter.check561, %vec.epilog.middle.block573
  %.048.i.i.i.i.i.i.i.us.i.ph = phi i64 [ %i.jw, %middle.block558 ], [ %i.jt, %iter.check561 ], [ %i.jw, %vec.epilog.middle.block573 ]
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i52.i.i.i.i.i.i.preheader.i:       ; preds = %.lr.ph49.i.i.i.i.i.i.i.i
  %i.kl = sext i32 %.5.i to i64
  br label %iter.check591

_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.us.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.us.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.us.i
  %.048.i.i.i.i.i.i.i.us.i = phi i64 [ %i.ko, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.us.i ], [ %.048.i.i.i.i.i.i.i.us.i.ph, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.us.i.preheader ] ; 3 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.048.i.i.i.i.i.i.i.us.i
  store i32 0, ptr %i.km, align 4, !tbaa !3, !noalias !220
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.048.i.i.i.i.i.i.i.us.i
  store i32 %.5.i, ptr %i.kn, align 4, !tbaa !3, !noalias !220
  %i.ko = add nuw i64 %.048.i.i.i.i.i.i.i.us.i, 1 ; 2 uses
  %i.kp = icmp ult i64 %i.ko, %i.js
  br i1 %i.kp, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.us.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i, !llvm.loop !331

iter.check591:                                    ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.loopexit.i, %.lr.ph.i.i.i.i.i52.i.i.i.i.i.i.preheader.i
  %indvars.iv70.i = phi i64 [ %i.kl, %.lr.ph.i.i.i.i.i52.i.i.i.i.i.i.preheader.i ], [ %indvars.iv.next71.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.loopexit.i ] ; 3 uses
  %.048.i.i.i.i.i.i.i.i = phi i64 [ %i.jt, %.lr.ph.i.i.i.i.i52.i.i.i.i.i.i.preheader.i ], [ %i.lg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.loopexit.i ] ; 4 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.048.i.i.i.i.i.i.i.i
  store i32 %i.z, ptr %i.kq, align 4, !tbaa !3, !noalias !220
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.048.i.i.i.i.i.i.i.i
  %i.ks = trunc nsw i64 %indvars.iv70.i to i32
  store i32 %i.ks, ptr %i.kr, align 4, !tbaa !3, !noalias !220
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv70.i ; 6 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 %.idx.i.i50.i.i.i.i.i.i.i
  %i.kv = trunc i64 %.048.i.i.i.i.i.i.i.i to i32  ; 3 uses
  br i1 %min.iters.check576, label %vec.epilog.scalar.ph592.preheader, label %vector.main.loop.iter.check577

vector.main.loop.iter.check577:                   ; preds = %iter.check591
  br i1 %min.iters.check578, label %vec.epilog.ph595, label %vector.ph579

vector.ph579:                                     ; preds = %vector.main.loop.iter.check577
  %i.kw = getelementptr i8, ptr %i.kt, i64 %i.ja
  %broadcast.splatinsert582 = insertelement <8 x i32> poison, i32 %i.kv, i64 0
  %broadcast.splat583 = shufflevector <8 x i32> %broadcast.splatinsert582, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body584

vector.body584:                                   ; preds = %vector.body584, %vector.ph579
  %index585 = phi i64 [ 0, %vector.ph579 ], [ %index.next587, %vector.body584 ] ; 2 uses
  %i.kx = shl i64 %index585, 2
  %next.gep586 = getelementptr i8, ptr %i.kt, i64 %i.kx ; 4 uses
  %i.ky = getelementptr i8, ptr %next.gep586, i64 32
  %i.kz = getelementptr i8, ptr %next.gep586, i64 64
  %i.la = getelementptr i8, ptr %next.gep586, i64 96
  store <8 x i32> %broadcast.splat583, ptr %next.gep586, align 4, !tbaa !3, !noalias !220
  store <8 x i32> %broadcast.splat583, ptr %i.ky, align 4, !tbaa !3, !noalias !220
  store <8 x i32> %broadcast.splat583, ptr %i.kz, align 4, !tbaa !3, !noalias !220
  store <8 x i32> %broadcast.splat583, ptr %i.la, align 4, !tbaa !3, !noalias !220
  %index.next587 = add nuw i64 %index585, 32      ; 2 uses
  %i.lb = icmp eq i64 %index.next587, %n.vec581
  br i1 %i.lb, label %middle.block588, label %vector.body584, !llvm.loop !332

middle.block588:                                  ; preds = %vector.body584
  br i1 %cmp.n589, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.loopexit.i, label %vec.epilog.iter.check593

vec.epilog.iter.check593:                         ; preds = %middle.block588
  br i1 %min.epilog.iters.check594, label %vec.epilog.scalar.ph592.preheader, label %vec.epilog.ph595, !prof !312

vec.epilog.ph595:                                 ; preds = %vector.main.loop.iter.check577, %vec.epilog.iter.check593
  %vec.epilog.resume.val590 = phi i64 [ %n.vec581, %vec.epilog.iter.check593 ], [ 0, %vector.main.loop.iter.check577 ]
  %i.lc = getelementptr i8, ptr %i.kt, i64 %i.jb
  %broadcast.splatinsert598 = insertelement <8 x i32> poison, i32 %i.kv, i64 0
  %broadcast.splat599 = shufflevector <8 x i32> %broadcast.splatinsert598, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body600

vec.epilog.vector.body600:                        ; preds = %vec.epilog.vector.body600, %vec.epilog.ph595
  %index601 = phi i64 [ %vec.epilog.resume.val590, %vec.epilog.ph595 ], [ %index.next603, %vec.epilog.vector.body600 ] ; 2 uses
  %i.ld = shl i64 %index601, 2
  %next.gep602 = getelementptr i8, ptr %i.kt, i64 %i.ld
  store <8 x i32> %broadcast.splat599, ptr %next.gep602, align 4, !tbaa !3, !noalias !220
  %index.next603 = add nuw i64 %index601, 8       ; 2 uses
  %i.le = icmp eq i64 %index.next603, %n.vec597
  br i1 %i.le, label %vec.epilog.middle.block604, label %vec.epilog.vector.body600, !llvm.loop !333

vec.epilog.middle.block604:                       ; preds = %vec.epilog.vector.body600
  br i1 %cmp.n605, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.loopexit.i, label %vec.epilog.scalar.ph592.preheader

vec.epilog.scalar.ph592.preheader:                ; preds = %iter.check591, %vec.epilog.iter.check593, %vec.epilog.middle.block604
  %.06.i.i.i.i.i53.i.i.i.i.i.i.i.ph = phi ptr [ %i.kt, %iter.check591 ], [ %i.kw, %vec.epilog.iter.check593 ], [ %i.lc, %vec.epilog.middle.block604 ]
  br label %vec.epilog.scalar.ph592

vec.epilog.scalar.ph592:                          ; preds = %vec.epilog.scalar.ph592.preheader, %vec.epilog.scalar.ph592
  %.06.i.i.i.i.i53.i.i.i.i.i.i.i = phi ptr [ %i.lf, %vec.epilog.scalar.ph592 ], [ %.06.i.i.i.i.i53.i.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph592.preheader ] ; 2 uses
  store i32 %i.kv, ptr %.06.i.i.i.i.i53.i.i.i.i.i.i.i, align 4, !tbaa !3, !noalias !220
  %i.lf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i53.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i54.i.i.i.i.i.i.i = icmp eq ptr %i.lf, %i.ku
  br i1 %.not.i.i.i.i.i54.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.loopexit.i, label %vec.epilog.scalar.ph592, !llvm.loop !334

_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.loopexit.i: ; preds = %vec.epilog.scalar.ph592, %vec.epilog.middle.block604, %middle.block588
  %indvars.iv.next71.i = add nsw i64 %indvars.iv70.i, %i.aa ; 2 uses
  %i.lg = add nuw i64 %.048.i.i.i.i.i.i.i.i, 1    ; 2 uses
  %i.lh = icmp ult i64 %i.lg, %i.js
  br i1 %i.lh, label %iter.check591, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.loopexit65.i, !llvm.loop !335

iter.check531:                                    ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i58.i.i.i.i.i.i.loopexit.i, %.lr.ph.i.i.i.i27.i.i.i.i.i.i.i.preheader.preheader.i
  %indvars.iv73.i = phi i64 [ %54, %.lr.ph.i.i.i.i27.i.i.i.i.i.i.i.preheader.preheader.i ], [ %indvars.iv.next74.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i58.i.i.i.i.i.i.loopexit.i ] ; 3 uses
  %.01547.i.i.i.i.i.i.i.i = phi i64 [ %i.ji, %.lr.ph.i.i.i.i27.i.i.i.i.i.i.i.preheader.preheader.i ], [ %i.mc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i58.i.i.i.i.i.i.loopexit.i ] ; 3 uses
  %i.li = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01547.i.i.i.i.i.i.i.i, i1 true)
  %i.lj = trunc nuw nsw i64 %i.li to i32
  %i.lk = or disjoint i32 %i.jj, %i.lj            ; 4 uses
  %i.ll = sext i32 %i.lk to i64                   ; 2 uses
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.ll
  store i32 %i.z, ptr %i.lm, align 4, !tbaa !3, !noalias !220
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.ll
  %i.lo = trunc nsw i64 %indvars.iv73.i to i32
  store i32 %i.lo, ptr %i.ln, align 4, !tbaa !3, !noalias !220
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv73.i ; 6 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %.idx.i.i50.i.i.i.i.i.i.i
  br i1 %min.iters.check516, label %.lr.ph.i.i.i.i27.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check517

vector.main.loop.iter.check517:                   ; preds = %iter.check531
  br i1 %min.iters.check518, label %vec.epilog.ph535, label %vector.ph519

vector.ph519:                                     ; preds = %vector.main.loop.iter.check517
  %i.lr = getelementptr i8, ptr %i.lp, i64 %i.jc
  %broadcast.splatinsert522 = insertelement <8 x i32> poison, i32 %i.lk, i64 0
  %broadcast.splat523 = shufflevector <8 x i32> %broadcast.splatinsert522, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body524

vector.body524:                                   ; preds = %vector.body524, %vector.ph519
  %index525 = phi i64 [ 0, %vector.ph519 ], [ %index.next527, %vector.body524 ] ; 2 uses
  %i.ls = shl i64 %index525, 2
  %next.gep526 = getelementptr i8, ptr %i.lp, i64 %i.ls ; 4 uses
  %i.lt = getelementptr i8, ptr %next.gep526, i64 32
  %i.lu = getelementptr i8, ptr %next.gep526, i64 64
  %i.lv = getelementptr i8, ptr %next.gep526, i64 96
  store <8 x i32> %broadcast.splat523, ptr %next.gep526, align 4, !tbaa !3, !noalias !220
  store <8 x i32> %broadcast.splat523, ptr %i.lt, align 4, !tbaa !3, !noalias !220
  store <8 x i32> %broadcast.splat523, ptr %i.lu, align 4, !tbaa !3, !noalias !220
  store <8 x i32> %broadcast.splat523, ptr %i.lv, align 4, !tbaa !3, !noalias !220
  %index.next527 = add nuw i64 %index525, 32      ; 2 uses
  %i.lw = icmp eq i64 %index.next527, %n.vec521
  br i1 %i.lw, label %middle.block528, label %vector.body524, !llvm.loop !336

middle.block528:                                  ; preds = %vector.body524
  br i1 %cmp.n529, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i58.i.i.i.i.i.i.loopexit.i, label %vec.epilog.iter.check533

vec.epilog.iter.check533:                         ; preds = %middle.block528
  br i1 %min.epilog.iters.check534, label %.lr.ph.i.i.i.i27.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph535, !prof !312

vec.epilog.ph535:                                 ; preds = %vector.main.loop.iter.check517, %vec.epilog.iter.check533
  %vec.epilog.resume.val530 = phi i64 [ %n.vec521, %vec.epilog.iter.check533 ], [ 0, %vector.main.loop.iter.check517 ]
  %i.lx = getelementptr i8, ptr %i.lp, i64 %i.jd
  %broadcast.splatinsert538 = insertelement <8 x i32> poison, i32 %i.lk, i64 0
  %broadcast.splat539 = shufflevector <8 x i32> %broadcast.splatinsert538, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body540

vec.epilog.vector.body540:                        ; preds = %vec.epilog.vector.body540, %vec.epilog.ph535
  %index541 = phi i64 [ %vec.epilog.resume.val530, %vec.epilog.ph535 ], [ %index.next543, %vec.epilog.vector.body540 ] ; 2 uses
  %i.ly = shl i64 %index541, 2
  %next.gep542 = getelementptr i8, ptr %i.lp, i64 %i.ly
  store <8 x i32> %broadcast.splat539, ptr %next.gep542, align 4, !tbaa !3, !noalias !220
  %index.next543 = add nuw i64 %index541, 8       ; 2 uses
  %i.lz = icmp eq i64 %index.next543, %n.vec537
  br i1 %i.lz, label %vec.epilog.middle.block544, label %vec.epilog.vector.body540, !llvm.loop !337

vec.epilog.middle.block544:                       ; preds = %vec.epilog.vector.body540
  br i1 %cmp.n545, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i58.i.i.i.i.i.i.loopexit.i, label %.lr.ph.i.i.i.i27.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i27.i.i.i.i.i.i.i.i.preheader:       ; preds = %iter.check531, %vec.epilog.iter.check533, %vec.epilog.middle.block544
  %.06.i.i.i.i28.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.lp, %iter.check531 ], [ %i.lr, %vec.epilog.iter.check533 ], [ %i.lx, %vec.epilog.middle.block544 ]
  br label %.lr.ph.i.i.i.i27.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i27.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i27.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i27.i.i.i.i.i.i.i.i
  %.06.i.i.i.i28.i.i.i.i.i.i.i.i = phi ptr [ %i.ma, %.lr.ph.i.i.i.i27.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i28.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i27.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.lk, ptr %.06.i.i.i.i28.i.i.i.i.i.i.i.i, align 4, !tbaa !3, !noalias !220
  %i.ma = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i28.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i29.i.i.i.i.i.i.i.i = icmp eq ptr %i.ma, %i.lq
  br i1 %.not.i.i.i.i29.i.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i58.i.i.i.i.i.i.loopexit.i, label %.lr.ph.i.i.i.i27.i.i.i.i.i.i.i.i, !llvm.loop !338

_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i58.i.i.i.i.i.i.loopexit.i: ; preds = %.lr.ph.i.i.i.i27.i.i.i.i.i.i.i.i, %vec.epilog.middle.block544, %middle.block528
  %indvars.iv.next74.i = add nsw i64 %indvars.iv73.i, %i.aa ; 2 uses
  %i.mb = add i64 %.01547.i.i.i.i.i.i.i.i, -1
  %i.mc = and i64 %i.mb, %.01547.i.i.i.i.i.i.i.i  ; 2 uses
  %.not.i59.i.i.i.i.i.i.i = icmp eq i64 %i.mc, 0
  br i1 %.not.i59.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.loopexit63.i, label %iter.check531, !llvm.loop !328

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.loopexit63.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i58.i.i.i.i.i.i.loopexit.i
  %i.md = trunc nsw i64 %indvars.iv.next74.i to i32
  br label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.loopexit65.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.loopexit.i
  %i.me = trunc nsw i64 %indvars.iv.next71.i to i32
  br label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.us.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i58.i.i.i.i.i.i.us.i, %middle.block558, %vec.epilog.middle.block573, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.loopexit65.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.loopexit63.i, %bb.ai, %.lr.ph.i.i.i.i.i.i.i
  %.8.i = phi i32 [ %.5.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.5.i, %bb.ai ], [ %i.me, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.loopexit65.i ], [ %.5.i, %middle.block558 ], [ %i.md, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.loopexit63.i ], [ %.5.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i58.i.i.i.i.i.i.us.i ], [ %.5.i, %vec.epilog.middle.block573 ], [ %.5.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.us.i ] ; 2 uses
  %i.mf = add nsw i32 %i.je, 64                   ; 2 uses
  %.not33.i.i.i.i.i.i.i = icmp sgt i32 %i.mf, %i.fm
  br i1 %.not33.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !339

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.mg = ashr i32 %i.fi, 6
  %i.mh = and i32 %i.fi, 63
  %i.mi = zext nneg i32 %i.mh to i64
  %notmask.i60.i.i.i.i.i.i.i = shl nsw i64 -1, %i.mi
  %i.mj = xor i64 %notmask.i60.i.i.i.i.i.i.i, -1
  %i.mk = sext i32 %i.mg to i64
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %i.mk
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !148, !noalias !220
  %i.mn = and i64 %i.mm, %i.mj                    ; 3 uses
  %.not.i61.i.i.i.i.i.i.i = icmp eq i64 %i.mn, 0
  br i1 %.not.i61.i.i.i.i.i.i.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E_EEvS9_SN_.exit.i, label %.preheader.i62.i.i.i.i.i.i.preheader.i

.preheader.i62.i.i.i.i.i.i.preheader.i:           ; preds = %bb.aj
  %.idx.i.i64.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aa, 2 ; 2 uses
  %.not5.i.i.i.i.i65.i.i.i.i.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not5.i.i.i.i.i65.i.i.i.i.i.i.i, label %.preheader.i62.i.i.i.i.i.i.us.preheader.i, label %.preheader.i62.i.i.i.i.i.i.preheader61.i

.preheader.i62.i.i.i.i.i.i.preheader61.i:         ; preds = %.preheader.i62.i.i.i.i.i.i.preheader.i
  %i.mo = sext i32 %.4.i to i64
  %i.mp = add nsw i64 %.idx.i.i64.i.i.i.i.i.i.i, -4 ; 3 uses
  %i.mq = lshr exact i64 %i.mp, 2
  %i.mr = add nuw nsw i64 %i.mq, 1                ; 5 uses
  %min.iters.check607 = icmp ult i64 %i.mp, 28
  %min.iters.check609 = icmp ult i64 %i.mp, 124
  %n.mod.vf611 = and i64 %i.mr, 24
  %n.vec612 = and i64 %i.mr, 9223372036854775776  ; 4 uses
  %i.ms = shl i64 %n.vec612, 2
  %cmp.n620 = icmp eq i64 %i.mr, %n.vec612
  %min.epilog.iters.check625 = icmp eq i64 %n.mod.vf611, 0
  %n.vec628 = and i64 %i.mr, 9223372036854775800  ; 3 uses
  %i.mt = shl i64 %n.vec628, 2
  %cmp.n636 = icmp eq i64 %i.mr, %n.vec628
  br label %iter.check622

.preheader.i62.i.i.i.i.i.i.us.preheader.i:        ; preds = %.preheader.i62.i.i.i.i.i.i.preheader.i
  %56 = sext i32 %i.fm to i64
  br label %.preheader.i62.i.i.i.i.i.i.us.i

.preheader.i62.i.i.i.i.i.i.us.i:                  ; preds = %.preheader.i62.i.i.i.i.i.i.us.i, %.preheader.i62.i.i.i.i.i.i.us.preheader.i
  %.017.i63.i.i.i.i.i.i.us.i = phi i64 [ %i.my, %.preheader.i62.i.i.i.i.i.i.us.i ], [ %i.mn, %.preheader.i62.i.i.i.i.i.i.us.preheader.i ] ; 3 uses
  %i.mu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.017.i63.i.i.i.i.i.i.us.i, i1 true)
  %57 = or disjoint i64 %i.mu, %56                ; 2 uses
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %57
  store i32 0, ptr %i.mv, align 4, !tbaa !3, !noalias !220
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %57
  store i32 %.4.i, ptr %i.mw, align 4, !tbaa !3, !noalias !220
  %i.mx = add nsw i64 %.017.i63.i.i.i.i.i.i.us.i, -1
  %i.my = and i64 %i.mx, %.017.i63.i.i.i.i.i.i.us.i ; 2 uses
  %.not10.i73.i.i.i.i.i.i.us.i = icmp eq i64 %i.my, 0
  br i1 %.not10.i73.i.i.i.i.i.i.us.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E_EEvS9_SN_.exit.i, label %.preheader.i62.i.i.i.i.i.i.us.i, !llvm.loop !324

iter.check622:                                    ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i72.i.i.i.i.i.i.loopexit.i, %.preheader.i62.i.i.i.i.i.i.preheader61.i
  %indvars.iv76.i = phi i64 [ %i.mo, %.preheader.i62.i.i.i.i.i.i.preheader61.i ], [ %indvars.iv.next77.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i72.i.i.i.i.i.i.loopexit.i ] ; 3 uses
  %.017.i63.i.i.i.i.i.i.i = phi i64 [ %i.mn, %.preheader.i62.i.i.i.i.i.i.preheader61.i ], [ %i.nt, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i72.i.i.i.i.i.i.loopexit.i ] ; 3 uses
  %i.mz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.017.i63.i.i.i.i.i.i.i, i1 true)
  %i.na = trunc nuw nsw i64 %i.mz to i32
  %i.nb = or disjoint i32 %i.fm, %i.na            ; 4 uses
  %i.nc = sext i32 %i.nb to i64                   ; 2 uses
  %i.nd = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.nc
  store i32 %i.z, ptr %i.nd, align 4, !tbaa !3, !noalias !220
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.nc
  %i.nf = trunc nsw i64 %indvars.iv76.i to i32
  store i32 %i.nf, ptr %i.ne, align 4, !tbaa !3, !noalias !220
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv76.i ; 6 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 %.idx.i.i64.i.i.i.i.i.i.i
  br i1 %min.iters.check607, label %.lr.ph.i.i.i.i.i66.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check608

vector.main.loop.iter.check608:                   ; preds = %iter.check622
  br i1 %min.iters.check609, label %vec.epilog.ph626, label %vector.ph610

vector.ph610:                                     ; preds = %vector.main.loop.iter.check608
  %i.ni = getelementptr i8, ptr %i.ng, i64 %i.ms
  %broadcast.splatinsert613 = insertelement <8 x i32> poison, i32 %i.nb, i64 0
  %broadcast.splat614 = shufflevector <8 x i32> %broadcast.splatinsert613, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body615

vector.body615:                                   ; preds = %vector.body615, %vector.ph610
  %index616 = phi i64 [ 0, %vector.ph610 ], [ %index.next618, %vector.body615 ] ; 2 uses
  %i.nj = shl i64 %index616, 2
  %next.gep617 = getelementptr i8, ptr %i.ng, i64 %i.nj ; 4 uses
  %i.nk = getelementptr i8, ptr %next.gep617, i64 32
  %i.nl = getelementptr i8, ptr %next.gep617, i64 64
  %i.nm = getelementptr i8, ptr %next.gep617, i64 96
  store <8 x i32> %broadcast.splat614, ptr %next.gep617, align 4, !tbaa !3, !noalias !220
  store <8 x i32> %broadcast.splat614, ptr %i.nk, align 4, !tbaa !3, !noalias !220
  store <8 x i32> %broadcast.splat614, ptr %i.nl, align 4, !tbaa !3, !noalias !220
  store <8 x i32> %broadcast.splat614, ptr %i.nm, align 4, !tbaa !3, !noalias !220
  %index.next618 = add nuw i64 %index616, 32      ; 2 uses
  %i.nn = icmp eq i64 %index.next618, %n.vec612
  br i1 %i.nn, label %middle.block619, label %vector.body615, !llvm.loop !340

middle.block619:                                  ; preds = %vector.body615
  br i1 %cmp.n620, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i72.i.i.i.i.i.i.loopexit.i, label %vec.epilog.iter.check624

vec.epilog.iter.check624:                         ; preds = %middle.block619
  br i1 %min.epilog.iters.check625, label %.lr.ph.i.i.i.i.i66.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph626, !prof !312

vec.epilog.ph626:                                 ; preds = %vector.main.loop.iter.check608, %vec.epilog.iter.check624
  %vec.epilog.resume.val621 = phi i64 [ %n.vec612, %vec.epilog.iter.check624 ], [ 0, %vector.main.loop.iter.check608 ]
  %i.no = getelementptr i8, ptr %i.ng, i64 %i.mt
  %broadcast.splatinsert629 = insertelement <8 x i32> poison, i32 %i.nb, i64 0
  %broadcast.splat630 = shufflevector <8 x i32> %broadcast.splatinsert629, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body631

vec.epilog.vector.body631:                        ; preds = %vec.epilog.vector.body631, %vec.epilog.ph626
  %index632 = phi i64 [ %vec.epilog.resume.val621, %vec.epilog.ph626 ], [ %index.next634, %vec.epilog.vector.body631 ] ; 2 uses
  %i.np = shl i64 %index632, 2
  %next.gep633 = getelementptr i8, ptr %i.ng, i64 %i.np
  store <8 x i32> %broadcast.splat630, ptr %next.gep633, align 4, !tbaa !3, !noalias !220
  %index.next634 = add nuw i64 %index632, 8       ; 2 uses
  %i.nq = icmp eq i64 %index.next634, %n.vec628
  br i1 %i.nq, label %vec.epilog.middle.block635, label %vec.epilog.vector.body631, !llvm.loop !341

vec.epilog.middle.block635:                       ; preds = %vec.epilog.vector.body631
  br i1 %cmp.n636, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i72.i.i.i.i.i.i.loopexit.i, label %.lr.ph.i.i.i.i.i66.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i66.i.i.i.i.i.i.i.preheader:       ; preds = %iter.check622, %vec.epilog.iter.check624, %vec.epilog.middle.block635
  %.06.i.i.i.i.i67.i.i.i.i.i.i.i.ph = phi ptr [ %i.ng, %iter.check622 ], [ %i.ni, %vec.epilog.iter.check624 ], [ %i.no, %vec.epilog.middle.block635 ]
  br label %.lr.ph.i.i.i.i.i66.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i66.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i66.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i66.i.i.i.i.i.i.i
  %.06.i.i.i.i.i67.i.i.i.i.i.i.i = phi ptr [ %i.nr, %.lr.ph.i.i.i.i.i66.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i67.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i66.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.nb, ptr %.06.i.i.i.i.i67.i.i.i.i.i.i.i, align 4, !tbaa !3, !noalias !220
  %i.nr = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i67.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i68.i.i.i.i.i.i.i = icmp eq ptr %i.nr, %i.nh
  br i1 %.not.i.i.i.i.i68.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i72.i.i.i.i.i.i.loopexit.i, label %.lr.ph.i.i.i.i.i66.i.i.i.i.i.i.i, !llvm.loop !342

_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i72.i.i.i.i.i.i.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i66.i.i.i.i.i.i.i, %vec.epilog.middle.block635, %middle.block619
  %indvars.iv.next77.i = add nsw i64 %indvars.iv76.i, %i.aa
  %i.ns = add nsw i64 %.017.i63.i.i.i.i.i.i.i, -1
  %i.nt = and i64 %i.ns, %.017.i63.i.i.i.i.i.i.i  ; 2 uses
  %.not10.i73.i.i.i.i.i.i.i = icmp eq i64 %i.nt, 0
  br i1 %.not10.i73.i.i.i.i.i.i.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E_EEvS9_SN_.exit.i, label %iter.check622, !llvm.loop !324

_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E_EEvS9_SN_.exit.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i72.i.i.i.i.i.i.loopexit.i, %.preheader.i62.i.i.i.i.i.i.us.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.loopexit.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i.prol.loopexit, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i, %middle.block711, %vec.epilog.middle.block724, %bb.aj, %._crit_edge.i.i.i.i.i.i.i, %bb.af, %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27, !noalias !220
  store ptr null, ptr %i.g, align 8, !tbaa !343, !noalias !220
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #27, !noalias !220
  store ptr null, ptr %47, align 8, !tbaa !297, !noalias !220
  store ptr %i.bh, ptr %48, align 8, !tbaa !297, !noalias !220
  %.not.i48.i = icmp eq ptr %i.bh, null
  br i1 %.not.i48.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E_EEvS9_SN_.exit.i
  %i.nu = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.nv = atomicrmw add ptr %i.nu, i32 1 acq_rel, align 4, !noalias !220 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i: ; preds = %bb.ak, %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E_EEvS9_SN_.exit.i
  %i.nw = load ptr, ptr %2, align 8, !tbaa !198, !noalias !220 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !35, !noalias !220 ; 2 uses
  %i.oa = load <2 x ptr>, ptr %i.nw, align 8, !tbaa !38, !noalias !220
  store <2 x ptr> %i.oa, ptr %49, align 16, !tbaa !38, !noalias !220
  %.not.i.i.i.i = icmp eq ptr %i.nz, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 8 ; 3 uses
  %i.oc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !220
  %.not.i.i.i.i.i = icmp eq i8 %i.oc, 0
  br i1 %.not.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.od = load i32, ptr %i.ob, align 4, !tbaa !3, !noalias !220
  %i.oe = add nsw i32 %i.od, 1
  store i32 %i.oe, ptr %i.ob, align 4, !tbaa !3, !noalias !220
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i

bb.an:                                            ; preds = %bb.al
  %i.of = atomicrmw volatile add ptr %i.ob, i32 1 acq_rel, align 4, !noalias !220 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i: ; preds = %bb.an, %bb.am, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  invoke void @_ZN8facebook5velox10BaseVector16wrapInDictionaryEN5boost13intrusive_ptrINS0_6BufferEEES5_iSt10shared_ptrIS1_Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.74") align 8 %46, ptr noundef nonnull %47, ptr noundef nonnull %48, i32 noundef %i.aw, ptr noundef nonnull %49, i1 noundef zeroext false)
          to label %bb.ao unwind label %bb.bq, !noalias !220

bb.ao:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i
  %i.og = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28
          to label %.noexc49.i unwind label %bb.br, !noalias !220 ; 6 uses

.noexc49.i:                                       ; preds = %bb.ao
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  store i32 1, ptr %i.oh, align 8, !tbaa !40, !noalias !345
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 12
  store i32 1, ptr %i.oi, align 4, !tbaa !42, !noalias !345
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.og, align 8, !tbaa !43, !noalias !345
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox11ArrayVectorEJRPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEDnRKiRN5boost13intrusive_ptrINS1_6BufferEEESJ_S7_INS1_10BaseVectorEEEEvPT_DpOT0_(ptr noundef nonnull %i.oj, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull align 8 dereferenceable(16) %46)
          to label %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i.i, !noalias !345

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i.i: ; preds = %.noexc49.i
  %i.ok = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.og, i64 noundef 160) #29, !noalias !345
  br label %.body50.i

_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %.noexc49.i
  store ptr %i.oj, ptr %51, align 16, !tbaa !201, !alias.scope !220
  %i.ol = getelementptr inbounds nuw i8, ptr %51, i64 8
  store ptr %i.og, ptr %i.ol, align 8, !tbaa !35, !alias.scope !220
  %i.om = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !35, !noalias !220 ; 8 uses
  %.not.i.i54.i = icmp eq ptr %i.on, null
  br i1 %.not.i.i54.i, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8 ; 4 uses
  %i.op = load atomic i64, ptr %i.oo acquire, align 8, !noalias !220 ; 2 uses
  %i.oq = icmp eq i64 %i.op, 4294967297
  %i.or = trunc i64 %i.op to i32                  ; 2 uses
  br i1 %i.oq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.oo, align 8, !tbaa !40, !noalias !220
  %i.os = getelementptr inbounds nuw i8, ptr %i.on, i64 12
  store i32 0, ptr %i.os, align 4, !tbaa !42, !noalias !220
  %i.ot = load ptr, ptr %i.on, align 8, !tbaa !43, !noalias !220
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.ov = load ptr, ptr %i.ou, align 8, !noalias !220
  call void %i.ov(ptr noundef nonnull align 8 dereferenceable(16) %i.on) #27, !noalias !220, !inline_history !348
  %i.ow = load ptr, ptr %i.on, align 8, !tbaa !43, !noalias !220
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  %i.oy = load ptr, ptr %i.ox, align 8, !noalias !220
  call void %i.oy(ptr noundef nonnull align 8 dereferenceable(16) %i.on) #27, !noalias !220, !inline_history !348
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.oz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !220
  %.not.i.i.i55.i = icmp eq i8 %i.oz, 0
  br i1 %.not.i.i.i55.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.pa = add nsw i32 %i.or, -1
  store i32 %i.pa, ptr %i.oo, align 8, !tbaa !3, !noalias !220
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56.i

bb.at:                                            ; preds = %bb.ar
  %i.pb = atomicrmw volatile add ptr %i.oo, i32 -1 acq_rel, align 4, !noalias !220
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i56.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i57.i = phi i32 [ %i.or, %bb.as ], [ %i.pb, %bb.at ]
  %i.pc = icmp eq i32 %.0.i.i.i.i57.i, 1
end_hunk_0
