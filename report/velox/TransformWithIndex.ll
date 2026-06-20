inline.NumInlined: 1960
inline.NumDeleted: 1033
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  br i1 %.not37.i.i.not.i.i.i, label %.lr.ph, label %.critedge.i.i.i.i.i, !llvm.loop !258

.lr.ph:                                           ; preds = %bb.aa, %bb.ab
  %indvars.iv.i.i.i282 = phi i64 [ %indvars.iv.next.i.i.i, %bb.ab ], [ 0, %bb.aa ] ; 2 uses
  %i.cn = lshr exact i64 %indvars.iv.i.i.i282, 3
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !135, !noalias !219
  %i.cq = icmp eq i64 %i.cp, -1
  br i1 %i.cq, label %bb.ab, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, !llvm.loop !258

.critedge.i.i.i.i.i:                              ; preds = %bb.ab, %bb.aa
  %.not38.i.i.i.i.i = icmp eq i32 %i.cg, %i.cl
  br i1 %.not38.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.critedge.i.i.i.i.i
  %i.cr = lshr i32 %i.cg, 6
  %i.cs = and i32 %i.cg, 63
  %i.ct = zext nneg i32 %i.cs to i64
  %notmask.i40.i.i.i.i.i = shl nsw i64 -1, %i.ct
  %i.cu = zext nneg i32 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !135, !noalias !219
  %.demorgan.i.i.i = or i64 %i.cw, %notmask.i40.i.i.i.i.i
  %i.cx = icmp eq i64 %.demorgan.i.i.i, -1
  %i.cy = zext i1 %i.cx to i16
  %i.cz = or disjoint i16 %i.cy, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i: ; preds = %.lr.ph, %bb.ac, %.critedge.i.i.i.i.i, %bb.z, %bb.y, %bb.x
  %.sroa.0.0.insert.ext.i.i.i = phi i16 [ 256, %bb.y ], [ 256, %bb.x ], [ 257, %bb.z ], [ 257, %.critedge.i.i.i.i.i ], [ %i.cz, %bb.ac ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i, ptr %i.by, align 4, !noalias !219
  %i.da = trunc i16 %.sroa.0.0.insert.ext.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i
  %.0.in.i.i.i = phi i8 [ %.0.in.pre.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i ], [ %i.da, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i ]
  %.0.i.i.i = trunc nuw i8 %.0.in.i.i.i to i1
  br i1 %.0.i.i.i, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !255, !noalias !219 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !246, !noalias !219 ; 2 uses
  %i.df = icmp slt i32 %i.de, %i.dc
  br i1 %i.df, label %.lr.ph.i.i, label %.loopexit159

.lr.ph.i.i:                                       ; preds = %bb.ad
  %.not.i.i16.i = icmp eq ptr %i.bx, null
  %i.dg = sext i32 %i.de to i64
  %wide.trip.count.i.i = sext i32 %i.dc to i64
  br label %bb.ae

bb.ae:                                            ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.dg, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i.i ] ; 5 uses
  br i1 %.not.i.i16.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dh = lshr i64 %indvars.iv.i.i, 6
  %i.di = and i64 %i.dh, 67108863
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !135, !noalias !219
  %i.dl = and i64 %indvars.iv.i.i, 63
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = and i64 %i.dk, %i.dm
  %.not.i.i4.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i4.i.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.do = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %indvars.iv.i.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3, !noalias !219 ; 4 uses
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %iter.check623, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i.i

iter.check623:                                    ; preds = %bb.ag
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %indvars.iv.i.i
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3, !noalias !219
  %i.dt = sext i32 %i.ds to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.dp to i64 ; 6 uses
  %invariant.gep.i.i.i = getelementptr [8 x i8], ptr %i.bq, i64 %i.dt ; 3 uses
  %min.iters.check606 = icmp ult i32 %i.dp, 4
  br i1 %min.iters.check606, label %vec.epilog.scalar.ph624.preheader, label %vector.main.loop.iter.check607

vector.main.loop.iter.check607:                   ; preds = %iter.check623
  %min.iters.check608 = icmp ult i32 %i.dp, 16
  br i1 %min.iters.check608, label %vec.epilog.ph627, label %vector.ph609

vector.ph609:                                     ; preds = %vector.main.loop.iter.check607
  %n.mod.vf610 = and i64 %wide.trip.count.i.i.i, 12
  %n.vec611 = and i64 %wide.trip.count.i.i.i, 2147483632 ; 4 uses
  br label %vector.body612

vector.body612:                                   ; preds = %vector.body612, %vector.ph609
  %index613 = phi i64 [ 0, %vector.ph609 ], [ %index.next618, %vector.body612 ] ; 2 uses
  %vec.ind614 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph609 ], [ %vec.ind.next619, %vector.body612 ] ; 5 uses
  %i.du = add nuw nsw <4 x i64> %vec.ind614, splat (i64 1)
  %i.dv = add nuw <4 x i64> %vec.ind614, splat (i64 5)
  %i.dw = add nuw <4 x i64> %vec.ind614, splat (i64 9)
  %i.dx = add nuw <4 x i64> %vec.ind614, splat (i64 13)
  %i.dy = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %index613 ; 4 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 32
  %i.ea = getelementptr i8, ptr %i.dy, i64 64
  %i.eb = getelementptr i8, ptr %i.dy, i64 96
  store <4 x i64> %i.du, ptr %i.dy, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.dv, ptr %i.dz, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.dw, ptr %i.ea, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.dx, ptr %i.eb, align 8, !tbaa !135, !noalias !219
  %index.next618 = add nuw i64 %index613, 16      ; 2 uses
  %vec.ind.next619 = add nuw <4 x i64> %vec.ind614, splat (i64 16)
  %i.ec = icmp eq i64 %index.next618, %n.vec611
  br i1 %i.ec, label %middle.block620, label %vector.body612, !llvm.loop !259

middle.block620:                                  ; preds = %vector.body612
  %cmp.n621 = icmp eq i64 %n.vec611, %wide.trip.count.i.i.i
  br i1 %cmp.n621, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i.i, label %vec.epilog.iter.check625

vec.epilog.iter.check625:                         ; preds = %middle.block620
  %min.epilog.iters.check626 = icmp eq i64 %n.mod.vf610, 0
  br i1 %min.epilog.iters.check626, label %vec.epilog.scalar.ph624.preheader, label %vec.epilog.ph627, !prof !262

vec.epilog.ph627:                                 ; preds = %vector.main.loop.iter.check607, %vec.epilog.iter.check625
  %vec.epilog.resume.val622 = phi i64 [ %n.vec611, %vec.epilog.iter.check625 ], [ 0, %vector.main.loop.iter.check607 ] ; 2 uses
  %n.vec629 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert630 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val622, i64 0
  %broadcast.splat631 = shufflevector <4 x i64> %broadcast.splatinsert630, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction632 = or disjoint <4 x i64> %broadcast.splat631, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body633

vec.epilog.vector.body633:                        ; preds = %vec.epilog.vector.body633, %vec.epilog.ph627
  %index634 = phi i64 [ %vec.epilog.resume.val622, %vec.epilog.ph627 ], [ %index.next636, %vec.epilog.vector.body633 ] ; 2 uses
  %vec.ind635 = phi <4 x i64> [ %induction632, %vec.epilog.ph627 ], [ %vec.ind.next637, %vec.epilog.vector.body633 ] ; 2 uses
  %i.ed = add nuw nsw <4 x i64> %vec.ind635, splat (i64 1)
  %i.ee = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %index634
  store <4 x i64> %i.ed, ptr %i.ee, align 8, !tbaa !135, !noalias !219
  %index.next636 = add nuw i64 %index634, 4       ; 2 uses
  %vec.ind.next637 = add nuw nsw <4 x i64> %vec.ind635, splat (i64 4)
  %i.ef = icmp eq i64 %index.next636, %n.vec629
  br i1 %i.ef, label %vec.epilog.middle.block638, label %vec.epilog.vector.body633, !llvm.loop !263

vec.epilog.middle.block638:                       ; preds = %vec.epilog.vector.body633
  %cmp.n639 = icmp eq i64 %n.vec629, %wide.trip.count.i.i.i
  br i1 %cmp.n639, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i.i, label %vec.epilog.scalar.ph624.preheader

vec.epilog.scalar.ph624.preheader:                ; preds = %iter.check623, %vec.epilog.iter.check625, %vec.epilog.middle.block638
  %indvars.iv.i5.i.i.ph = phi i64 [ 0, %iter.check623 ], [ %n.vec611, %vec.epilog.iter.check625 ], [ %n.vec629, %vec.epilog.middle.block638 ]
  br label %vec.epilog.scalar.ph624

vec.epilog.scalar.ph624:                          ; preds = %vec.epilog.scalar.ph624.preheader, %vec.epilog.scalar.ph624
  %indvars.iv.i5.i.i = phi i64 [ %indvars.iv.next.i6.i.i, %vec.epilog.scalar.ph624 ], [ %indvars.iv.i5.i.i.ph, %vec.epilog.scalar.ph624.preheader ] ; 2 uses
  %indvars.iv.next.i6.i.i = add nuw nsw i64 %indvars.iv.i5.i.i, 1 ; 3 uses
  %gep.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i5.i.i
  store i64 %indvars.iv.next.i6.i.i, ptr %gep.i.i.i, align 8, !tbaa !135, !noalias !219
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i6.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i.i, label %vec.epilog.scalar.ph624, !llvm.loop !264

_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i.i: ; preds = %vec.epilog.scalar.ph624, %middle.block620, %vec.epilog.middle.block638, %bb.ag, %bb.af
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit159, label %bb.ae, !llvm.loop !265

bb.ah:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.eg = load ptr, ptr %1, align 8, !tbaa !257, !noalias !219 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !246, !noalias !219 ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !255, !noalias !219 ; 7 uses
  %.not.i.i.i.i.i = icmp slt i32 %i.ei, %i.ek
  br i1 %.not.i.i.i.i.i, label %bb.ai, label %.loopexit159

bb.ai:                                            ; preds = %bb.ah
  %i.el = add i32 %i.ei, 63                       ; 2 uses
  %i.em = srem i32 %i.el, 64
  %i.en = sub nsw i32 %i.el, %i.em                ; 6 uses
  %i.eo = and i32 %i.ek, -64                      ; 8 uses
  %i.ep = icmp slt i32 %i.eo, %i.en
  br i1 %i.ep, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.eq = ashr i32 %i.ek, 6
  %i.er = and i32 %i.ek, 63
  %i.es = zext nneg i32 %i.er to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.es
  %i.et = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.eu = sub nsw i32 %i.en, %i.ei                ; 2 uses
  %i.ev = zext nneg i32 %i.eu to i64
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ev
  %i.ew = xor i64 %notmask.i.i.i.i.i.i.i, -1
  %i.ex = sub nsw i32 64, %i.eu
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = shl i64 %i.ew, %i.ey
  %i.fa = and i64 %i.ez, %i.et
  %i.fb = sext i32 %i.eq to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !135, !noalias !219
  %i.fe = and i64 %i.fa, %i.fd                    ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not.i.i.i.i.i.i, label %.loopexit159, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.aj
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i.i.i, label %.preheader.split.us.i.i.i.i.i.i, label %.preheader.split.i.i.i.i.i.i

.preheader.split.us.i.i.i.i.i.i:                  ; preds = %.preheader.i.i.i.i.i.i
  %26 = sext i32 %i.eo to i64
  br label %.preheader.split.us.i.i.i.i.i.i.a

.preheader.split.us.i.i.i.i.i.i.a:                ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i.i.i.i.i.i, %.preheader.split.us.i.i.i.i.i.i
  %.011.us.i.i.i.i.i.i = phi i64 [ %i.fe, %.preheader.split.us.i.i.i.i.i.i ], [ %i.fz, %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i.i.i.i.i.i ] ; 3 uses
  %i.ff = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.i.i.i.i.i.i, i1 true)
  %27 = or disjoint i64 %i.ff, %26                ; 2 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %27
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3, !noalias !219 ; 4 uses
  %i.fi = icmp sgt i32 %i.fh, 0
  br i1 %i.fi, label %iter.check588, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i.i.i.i.i.i

iter.check588:                                    ; preds = %.preheader.split.us.i.i.i.i.i.i.a
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %27
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !3, !noalias !219
  %i.fl = sext i32 %i.fk to i64
  %wide.trip.count.i.us.i.i.i.i.i.i = zext nneg i32 %i.fh to i64 ; 6 uses
  %invariant.gep.i.us.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.bq, i64 %i.fl ; 3 uses
  %min.iters.check571 = icmp ult i32 %i.fh, 4
  br i1 %min.iters.check571, label %vec.epilog.scalar.ph589.preheader, label %vector.main.loop.iter.check572

vector.main.loop.iter.check572:                   ; preds = %iter.check588
  %min.iters.check573 = icmp ult i32 %i.fh, 16
  br i1 %min.iters.check573, label %vec.epilog.ph592, label %vector.ph574

vector.ph574:                                     ; preds = %vector.main.loop.iter.check572
  %n.mod.vf575 = and i64 %wide.trip.count.i.us.i.i.i.i.i.i, 12
  %n.vec576 = and i64 %wide.trip.count.i.us.i.i.i.i.i.i, 2147483632 ; 4 uses
  br label %vector.body577

vector.body577:                                   ; preds = %vector.body577, %vector.ph574
  %index578 = phi i64 [ 0, %vector.ph574 ], [ %index.next583, %vector.body577 ] ; 2 uses
  %vec.ind579 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph574 ], [ %vec.ind.next584, %vector.body577 ] ; 5 uses
  %i.fm = add nuw nsw <4 x i64> %vec.ind579, splat (i64 1)
  %i.fn = add nuw <4 x i64> %vec.ind579, splat (i64 5)
  %i.fo = add nuw <4 x i64> %vec.ind579, splat (i64 9)
  %i.fp = add nuw <4 x i64> %vec.ind579, splat (i64 13)
  %i.fq = getelementptr [8 x i8], ptr %invariant.gep.i.us.i.i.i.i.i.i, i64 %index578 ; 4 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 32
  %i.fs = getelementptr i8, ptr %i.fq, i64 64
  %i.ft = getelementptr i8, ptr %i.fq, i64 96
  store <4 x i64> %i.fm, ptr %i.fq, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.fn, ptr %i.fr, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.fo, ptr %i.fs, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.fp, ptr %i.ft, align 8, !tbaa !135, !noalias !219
  %index.next583 = add nuw i64 %index578, 16      ; 2 uses
  %vec.ind.next584 = add nuw <4 x i64> %vec.ind579, splat (i64 16)
  %i.fu = icmp eq i64 %index.next583, %n.vec576
  br i1 %i.fu, label %middle.block585, label %vector.body577, !llvm.loop !266

middle.block585:                                  ; preds = %vector.body577
  %cmp.n586 = icmp eq i64 %n.vec576, %wide.trip.count.i.us.i.i.i.i.i.i
  br i1 %cmp.n586, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i.i.i.i.i.i, label %vec.epilog.iter.check590

vec.epilog.iter.check590:                         ; preds = %middle.block585
  %min.epilog.iters.check591 = icmp eq i64 %n.mod.vf575, 0
  br i1 %min.epilog.iters.check591, label %vec.epilog.scalar.ph589.preheader, label %vec.epilog.ph592, !prof !262

vec.epilog.ph592:                                 ; preds = %vector.main.loop.iter.check572, %vec.epilog.iter.check590
  %vec.epilog.resume.val587 = phi i64 [ %n.vec576, %vec.epilog.iter.check590 ], [ 0, %vector.main.loop.iter.check572 ] ; 2 uses
  %n.vec594 = and i64 %wide.trip.count.i.us.i.i.i.i.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert595 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val587, i64 0
  %broadcast.splat596 = shufflevector <4 x i64> %broadcast.splatinsert595, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction597 = or disjoint <4 x i64> %broadcast.splat596, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body598

vec.epilog.vector.body598:                        ; preds = %vec.epilog.vector.body598, %vec.epilog.ph592
  %index599 = phi i64 [ %vec.epilog.resume.val587, %vec.epilog.ph592 ], [ %index.next601, %vec.epilog.vector.body598 ] ; 2 uses
  %vec.ind600 = phi <4 x i64> [ %induction597, %vec.epilog.ph592 ], [ %vec.ind.next602, %vec.epilog.vector.body598 ] ; 2 uses
  %i.fv = add nuw nsw <4 x i64> %vec.ind600, splat (i64 1)
  %i.fw = getelementptr [8 x i8], ptr %invariant.gep.i.us.i.i.i.i.i.i, i64 %index599
  store <4 x i64> %i.fv, ptr %i.fw, align 8, !tbaa !135, !noalias !219
  %index.next601 = add nuw i64 %index599, 4       ; 2 uses
  %vec.ind.next602 = add nuw nsw <4 x i64> %vec.ind600, splat (i64 4)
  %i.fx = icmp eq i64 %index.next601, %n.vec594
  br i1 %i.fx, label %vec.epilog.middle.block603, label %vec.epilog.vector.body598, !llvm.loop !267

vec.epilog.middle.block603:                       ; preds = %vec.epilog.vector.body598
  %cmp.n604 = icmp eq i64 %n.vec594, %wide.trip.count.i.us.i.i.i.i.i.i
  br i1 %cmp.n604, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i.i.i.i.i.i, label %vec.epilog.scalar.ph589.preheader

vec.epilog.scalar.ph589.preheader:                ; preds = %iter.check588, %vec.epilog.iter.check590, %vec.epilog.middle.block603
  %indvars.iv.i.us.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check588 ], [ %n.vec576, %vec.epilog.iter.check590 ], [ %n.vec594, %vec.epilog.middle.block603 ]
  br label %vec.epilog.scalar.ph589

vec.epilog.scalar.ph589:                          ; preds = %vec.epilog.scalar.ph589.preheader, %vec.epilog.scalar.ph589
  %indvars.iv.i.us.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.us.i.i.i.i.i.i, %vec.epilog.scalar.ph589 ], [ %indvars.iv.i.us.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph589.preheader ] ; 2 uses
  %indvars.iv.next.i.us.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.us.i.i.i.i.i.i, 1 ; 3 uses
  %gep.i.us.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.i.i.i.i.i.i, i64 %indvars.iv.i.us.i.i.i.i.i.i
  store i64 %indvars.iv.next.i.us.i.i.i.i.i.i, ptr %gep.i.us.i.i.i.i.i.i, align 8, !tbaa !135, !noalias !219
  %exitcond.not.i.us.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.us.i.i.i.i.i.i, %wide.trip.count.i.us.i.i.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i.i.i.i.i.i, label %vec.epilog.scalar.ph589, !llvm.loop !268

_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i.i.i.i.i.i: ; preds = %vec.epilog.scalar.ph589, %middle.block585, %vec.epilog.middle.block603, %.preheader.split.us.i.i.i.i.i.i.a
  %i.fy = add nsw i64 %.011.us.i.i.i.i.i.i, -1
  %i.fz = and i64 %i.fy, %.011.us.i.i.i.i.i.i     ; 2 uses
  %.not10.us.i.i.i.i.i.i = icmp eq i64 %i.fz, 0
  br i1 %.not10.us.i.i.i.i.i.i, label %.loopexit159, label %.preheader.split.us.i.i.i.i.i.i.a, !llvm.loop !269

.preheader.split.i.i.i.i.i.i:                     ; preds = %.preheader.i.i.i.i.i.i, %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.he, %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.fe, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ga = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i.i, i1 true)
  %i.gb = trunc nuw nsw i64 %i.ga to i32
  %i.gc = or disjoint i32 %i.eo, %i.gb            ; 2 uses
  %i.gd = zext i32 %i.gc to i64                   ; 2 uses
  %i.ge = lshr i64 %i.gd, 6
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !135, !noalias !219
  %i.gh = and i64 %i.gd, 63
  %i.gi = shl nuw i64 1, %i.gh
  %i.gj = and i64 %i.gi, %i.gg
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.gj, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %.preheader.split.i.i.i.i.i.i
  %i.gk = sext i32 %i.gc to i64                   ; 2 uses
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !3, !noalias !219 ; 4 uses
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %iter.check553, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i.i.i.i.i.i

iter.check553:                                    ; preds = %bb.ak
  %i.go = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.gk
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !3, !noalias !219
  %i.gq = sext i32 %i.gp to i64
  %wide.trip.count.i.i.i.i.i.i.i = zext nneg i32 %i.gm to i64 ; 6 uses
  %invariant.gep.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.bq, i64 %i.gq ; 3 uses
  %min.iters.check536 = icmp ult i32 %i.gm, 4
  br i1 %min.iters.check536, label %vec.epilog.scalar.ph554.preheader, label %vector.main.loop.iter.check537

vector.main.loop.iter.check537:                   ; preds = %iter.check553
  %min.iters.check538 = icmp ult i32 %i.gm, 16
  br i1 %min.iters.check538, label %vec.epilog.ph557, label %vector.ph539

vector.ph539:                                     ; preds = %vector.main.loop.iter.check537
  %n.mod.vf540 = and i64 %wide.trip.count.i.i.i.i.i.i.i, 12
  %n.vec541 = and i64 %wide.trip.count.i.i.i.i.i.i.i, 2147483632 ; 4 uses
  br label %vector.body542

vector.body542:                                   ; preds = %vector.body542, %vector.ph539
  %index543 = phi i64 [ 0, %vector.ph539 ], [ %index.next548, %vector.body542 ] ; 2 uses
  %vec.ind544 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph539 ], [ %vec.ind.next549, %vector.body542 ] ; 5 uses
  %i.gr = add nuw nsw <4 x i64> %vec.ind544, splat (i64 1)
  %i.gs = add nuw <4 x i64> %vec.ind544, splat (i64 5)
  %i.gt = add nuw <4 x i64> %vec.ind544, splat (i64 9)
  %i.gu = add nuw <4 x i64> %vec.ind544, splat (i64 13)
  %i.gv = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %index543 ; 4 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 32
  %i.gx = getelementptr i8, ptr %i.gv, i64 64
  %i.gy = getelementptr i8, ptr %i.gv, i64 96
  store <4 x i64> %i.gr, ptr %i.gv, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.gs, ptr %i.gw, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.gt, ptr %i.gx, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.gu, ptr %i.gy, align 8, !tbaa !135, !noalias !219
  %index.next548 = add nuw i64 %index543, 16      ; 2 uses
  %vec.ind.next549 = add nuw <4 x i64> %vec.ind544, splat (i64 16)
  %i.gz = icmp eq i64 %index.next548, %n.vec541
  br i1 %i.gz, label %middle.block550, label %vector.body542, !llvm.loop !270

middle.block550:                                  ; preds = %vector.body542
  %cmp.n551 = icmp eq i64 %n.vec541, %wide.trip.count.i.i.i.i.i.i.i
  br i1 %cmp.n551, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i.i.i.i.i.i, label %vec.epilog.iter.check555

vec.epilog.iter.check555:                         ; preds = %middle.block550
  %min.epilog.iters.check556 = icmp eq i64 %n.mod.vf540, 0
  br i1 %min.epilog.iters.check556, label %vec.epilog.scalar.ph554.preheader, label %vec.epilog.ph557, !prof !262

vec.epilog.ph557:                                 ; preds = %vector.main.loop.iter.check537, %vec.epilog.iter.check555
  %vec.epilog.resume.val552 = phi i64 [ %n.vec541, %vec.epilog.iter.check555 ], [ 0, %vector.main.loop.iter.check537 ] ; 2 uses
  %n.vec559 = and i64 %wide.trip.count.i.i.i.i.i.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert560 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val552, i64 0
  %broadcast.splat561 = shufflevector <4 x i64> %broadcast.splatinsert560, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction562 = or disjoint <4 x i64> %broadcast.splat561, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body563

vec.epilog.vector.body563:                        ; preds = %vec.epilog.vector.body563, %vec.epilog.ph557
  %index564 = phi i64 [ %vec.epilog.resume.val552, %vec.epilog.ph557 ], [ %index.next566, %vec.epilog.vector.body563 ] ; 2 uses
  %vec.ind565 = phi <4 x i64> [ %induction562, %vec.epilog.ph557 ], [ %vec.ind.next567, %vec.epilog.vector.body563 ] ; 2 uses
  %i.ha = add nuw nsw <4 x i64> %vec.ind565, splat (i64 1)
  %i.hb = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %index564
  store <4 x i64> %i.ha, ptr %i.hb, align 8, !tbaa !135, !noalias !219
  %index.next566 = add nuw i64 %index564, 4       ; 2 uses
  %vec.ind.next567 = add nuw nsw <4 x i64> %vec.ind565, splat (i64 4)
  %i.hc = icmp eq i64 %index.next566, %n.vec559
  br i1 %i.hc, label %vec.epilog.middle.block568, label %vec.epilog.vector.body563, !llvm.loop !271

vec.epilog.middle.block568:                       ; preds = %vec.epilog.vector.body563
  %cmp.n569 = icmp eq i64 %n.vec559, %wide.trip.count.i.i.i.i.i.i.i
  br i1 %cmp.n569, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i.i.i.i.i.i, label %vec.epilog.scalar.ph554.preheader

vec.epilog.scalar.ph554.preheader:                ; preds = %iter.check553, %vec.epilog.iter.check555, %vec.epilog.middle.block568
  %indvars.iv.i.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check553 ], [ %n.vec541, %vec.epilog.iter.check555 ], [ %n.vec559, %vec.epilog.middle.block568 ]
  br label %vec.epilog.scalar.ph554

vec.epilog.scalar.ph554:                          ; preds = %vec.epilog.scalar.ph554.preheader, %vec.epilog.scalar.ph554
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i, %vec.epilog.scalar.ph554 ], [ %indvars.iv.i.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph554.preheader ] ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 1 ; 3 uses
  %gep.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i.i
  store i64 %indvars.iv.next.i.i.i.i.i.i.i, ptr %gep.i.i.i.i.i.i.i, align 8, !tbaa !135, !noalias !219
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i.i.i.i.i.i, label %vec.epilog.scalar.ph554, !llvm.loop !272

_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i.i.i.i.i.i: ; preds = %vec.epilog.scalar.ph554, %middle.block550, %vec.epilog.middle.block568, %bb.ak, %.preheader.split.i.i.i.i.i.i
  %i.hd = add nsw i64 %.011.i.i.i.i.i.i, -1
  %i.he = and i64 %i.hd, %.011.i.i.i.i.i.i        ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq i64 %i.he, 0
  br i1 %.not10.i.i.i.i.i.i, label %.loopexit159, label %.preheader.split.i.i.i.i.i.i, !llvm.loop !269

bb.al:                                            ; preds = %bb.ai
  %.not32.i.i.i.i.i = icmp eq i32 %i.ei, %i.en
  br i1 %.not32.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit62.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hf = sdiv i32 %i.ei, 64                      ; 2 uses
  %i.hg = sub nsw i32 %i.en, %i.ei                ; 2 uses
  %i.hh = zext nneg i32 %i.hg to i64
  %notmask.i.i35.i.i.i.i.i = shl nsw i64 -1, %i.hh
  %i.hi = xor i64 %notmask.i.i35.i.i.i.i.i, -1
  %i.hj = sub nsw i32 64, %i.hg
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = shl i64 %i.hi, %i.hk
  %i.hm = sext i32 %i.hf to i64
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.hm
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !135, !noalias !219
  %i.hp = and i64 %i.ho, %i.hl                    ; 3 uses
  %.not.i36.i.i.i.i.i = icmp eq i64 %i.hp, 0
  br i1 %.not.i36.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit62.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i

.preheader.i37.i.i.i.i.i:                         ; preds = %bb.am
  %i.hq = shl nsw i32 %i.hf, 6                    ; 2 uses
  %.not.i.i38.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i38.i.i.i.i.i, label %.preheader.split.us.i51.i.i.i.i.i, label %.preheader.split.i39.i.i.i.i.i

.preheader.split.us.i51.i.i.i.i.i:                ; preds = %.preheader.i37.i.i.i.i.i
  %28 = sext i32 %i.hq to i64
  br label %.preheader.split.us.i51.i.i.i.i.i.a

.preheader.split.us.i51.i.i.i.i.i.a:              ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i53.i.i.i.i.i, %.preheader.split.us.i51.i.i.i.i.i
  %.011.us.i52.i.i.i.i.i = phi i64 [ %i.hp, %.preheader.split.us.i51.i.i.i.i.i ], [ %i.il, %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i53.i.i.i.i.i ] ; 3 uses
  %i.hr = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.i52.i.i.i.i.i, i1 true)
  %29 = or disjoint i64 %i.hr, %28                ; 2 uses
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %29
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !3, !noalias !219 ; 4 uses
  %i.hu = icmp sgt i32 %i.ht, 0
  br i1 %i.hu, label %iter.check308, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i53.i.i.i.i.i

iter.check308:                                    ; preds = %.preheader.split.us.i51.i.i.i.i.i.a
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %29
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !3, !noalias !219
  %i.hx = sext i32 %i.hw to i64
  %wide.trip.count.i.us.i56.i.i.i.i.i = zext nneg i32 %i.ht to i64 ; 6 uses
  %invariant.gep.i.us.i57.i.i.i.i.i = getelementptr [8 x i8], ptr %i.bq, i64 %i.hx ; 3 uses
  %min.iters.check291 = icmp ult i32 %i.ht, 4
  br i1 %min.iters.check291, label %vec.epilog.scalar.ph309.preheader, label %vector.main.loop.iter.check292

vector.main.loop.iter.check292:                   ; preds = %iter.check308
  %min.iters.check293 = icmp ult i32 %i.ht, 16
  br i1 %min.iters.check293, label %vec.epilog.ph312, label %vector.ph294

vector.ph294:                                     ; preds = %vector.main.loop.iter.check292
  %n.mod.vf295 = and i64 %wide.trip.count.i.us.i56.i.i.i.i.i, 12
  %n.vec296 = and i64 %wide.trip.count.i.us.i56.i.i.i.i.i, 2147483632 ; 4 uses
  br label %vector.body297

vector.body297:                                   ; preds = %vector.body297, %vector.ph294
  %index298 = phi i64 [ 0, %vector.ph294 ], [ %index.next303, %vector.body297 ] ; 2 uses
  %vec.ind299 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph294 ], [ %vec.ind.next304, %vector.body297 ] ; 5 uses
  %i.hy = add nuw nsw <4 x i64> %vec.ind299, splat (i64 1)
  %i.hz = add nuw <4 x i64> %vec.ind299, splat (i64 5)
  %i.ia = add nuw <4 x i64> %vec.ind299, splat (i64 9)
  %i.ib = add nuw <4 x i64> %vec.ind299, splat (i64 13)
  %i.ic = getelementptr [8 x i8], ptr %invariant.gep.i.us.i57.i.i.i.i.i, i64 %index298 ; 4 uses
  %i.id = getelementptr i8, ptr %i.ic, i64 32
  %i.ie = getelementptr i8, ptr %i.ic, i64 64
  %i.if = getelementptr i8, ptr %i.ic, i64 96
  store <4 x i64> %i.hy, ptr %i.ic, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.hz, ptr %i.id, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.ia, ptr %i.ie, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.ib, ptr %i.if, align 8, !tbaa !135, !noalias !219
  %index.next303 = add nuw i64 %index298, 16      ; 2 uses
  %vec.ind.next304 = add nuw <4 x i64> %vec.ind299, splat (i64 16)
  %i.ig = icmp eq i64 %index.next303, %n.vec296
  br i1 %i.ig, label %middle.block305, label %vector.body297, !llvm.loop !273

middle.block305:                                  ; preds = %vector.body297
  %cmp.n306 = icmp eq i64 %n.vec296, %wide.trip.count.i.us.i56.i.i.i.i.i
  br i1 %cmp.n306, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i53.i.i.i.i.i, label %vec.epilog.iter.check310

vec.epilog.iter.check310:                         ; preds = %middle.block305
  %min.epilog.iters.check311 = icmp eq i64 %n.mod.vf295, 0
  br i1 %min.epilog.iters.check311, label %vec.epilog.scalar.ph309.preheader, label %vec.epilog.ph312, !prof !262

vec.epilog.ph312:                                 ; preds = %vector.main.loop.iter.check292, %vec.epilog.iter.check310
  %vec.epilog.resume.val307 = phi i64 [ %n.vec296, %vec.epilog.iter.check310 ], [ 0, %vector.main.loop.iter.check292 ] ; 2 uses
  %n.vec314 = and i64 %wide.trip.count.i.us.i56.i.i.i.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert315 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val307, i64 0
  %broadcast.splat316 = shufflevector <4 x i64> %broadcast.splatinsert315, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction317 = or disjoint <4 x i64> %broadcast.splat316, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body318

vec.epilog.vector.body318:                        ; preds = %vec.epilog.vector.body318, %vec.epilog.ph312
  %index319 = phi i64 [ %vec.epilog.resume.val307, %vec.epilog.ph312 ], [ %index.next321, %vec.epilog.vector.body318 ] ; 2 uses
  %vec.ind320 = phi <4 x i64> [ %induction317, %vec.epilog.ph312 ], [ %vec.ind.next322, %vec.epilog.vector.body318 ] ; 2 uses
  %i.ih = add nuw nsw <4 x i64> %vec.ind320, splat (i64 1)
  %i.ii = getelementptr [8 x i8], ptr %invariant.gep.i.us.i57.i.i.i.i.i, i64 %index319
  store <4 x i64> %i.ih, ptr %i.ii, align 8, !tbaa !135, !noalias !219
  %index.next321 = add nuw i64 %index319, 4       ; 2 uses
  %vec.ind.next322 = add nuw nsw <4 x i64> %vec.ind320, splat (i64 4)
  %i.ij = icmp eq i64 %index.next321, %n.vec314
  br i1 %i.ij, label %vec.epilog.middle.block323, label %vec.epilog.vector.body318, !llvm.loop !274

vec.epilog.middle.block323:                       ; preds = %vec.epilog.vector.body318
  %cmp.n324 = icmp eq i64 %n.vec314, %wide.trip.count.i.us.i56.i.i.i.i.i
  br i1 %cmp.n324, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i53.i.i.i.i.i, label %vec.epilog.scalar.ph309.preheader

vec.epilog.scalar.ph309.preheader:                ; preds = %iter.check308, %vec.epilog.iter.check310, %vec.epilog.middle.block323
  %indvars.iv.i.us.i58.i.i.i.i.i.ph = phi i64 [ 0, %iter.check308 ], [ %n.vec296, %vec.epilog.iter.check310 ], [ %n.vec314, %vec.epilog.middle.block323 ]
  br label %vec.epilog.scalar.ph309

vec.epilog.scalar.ph309:                          ; preds = %vec.epilog.scalar.ph309.preheader, %vec.epilog.scalar.ph309
  %indvars.iv.i.us.i58.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.us.i59.i.i.i.i.i, %vec.epilog.scalar.ph309 ], [ %indvars.iv.i.us.i58.i.i.i.i.i.ph, %vec.epilog.scalar.ph309.preheader ] ; 2 uses
  %indvars.iv.next.i.us.i59.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.us.i58.i.i.i.i.i, 1 ; 3 uses
  %gep.i.us.i60.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.i57.i.i.i.i.i, i64 %indvars.iv.i.us.i58.i.i.i.i.i
  store i64 %indvars.iv.next.i.us.i59.i.i.i.i.i, ptr %gep.i.us.i60.i.i.i.i.i, align 8, !tbaa !135, !noalias !219
  %exitcond.not.i.us.i61.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.us.i59.i.i.i.i.i, %wide.trip.count.i.us.i56.i.i.i.i.i
  br i1 %exitcond.not.i.us.i61.i.i.i.i.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i53.i.i.i.i.i, label %vec.epilog.scalar.ph309, !llvm.loop !275

_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i53.i.i.i.i.i: ; preds = %vec.epilog.scalar.ph309, %middle.block305, %vec.epilog.middle.block323, %.preheader.split.us.i51.i.i.i.i.i.a
  %i.ik = add i64 %.011.us.i52.i.i.i.i.i, -1
  %i.il = and i64 %i.ik, %.011.us.i52.i.i.i.i.i   ; 2 uses
  %.not10.us.i54.i.i.i.i.i = icmp eq i64 %i.il, 0
  br i1 %.not10.us.i54.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit62.i.i.i.i.i, label %.preheader.split.us.i51.i.i.i.i.i.a, !llvm.loop !269

.preheader.split.i39.i.i.i.i.i:                   ; preds = %.preheader.i37.i.i.i.i.i, %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i42.i.i.i.i.i
  %.011.i40.i.i.i.i.i = phi i64 [ %i.jq, %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i42.i.i.i.i.i ], [ %i.hp, %.preheader.i37.i.i.i.i.i ] ; 3 uses
  %i.im = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40.i.i.i.i.i, i1 true)
  %i.in = trunc nuw nsw i64 %i.im to i32
  %i.io = or disjoint i32 %i.hq, %i.in            ; 2 uses
  %i.ip = zext i32 %i.io to i64                   ; 2 uses
  %i.iq = lshr i64 %i.ip, 6
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.iq
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !135, !noalias !219
  %i.it = and i64 %i.ip, 63
  %i.iu = shl nuw i64 1, %i.it
  %i.iv = and i64 %i.iu, %i.is
  %.not.i.i.i41.i.i.i.i.i = icmp eq i64 %i.iv, 0
  br i1 %.not.i.i.i41.i.i.i.i.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i42.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %.preheader.split.i39.i.i.i.i.i
  %i.iw = sext i32 %i.io to i64                   ; 2 uses
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !3, !noalias !219 ; 4 uses
  %i.iz = icmp sgt i32 %i.iy, 0
  br i1 %i.iz, label %iter.check, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i42.i.i.i.i.i

iter.check:                                       ; preds = %bb.an
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.iw
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !3, !noalias !219
  %i.jc = sext i32 %i.jb to i64
  %wide.trip.count.i.i45.i.i.i.i.i = zext nneg i32 %i.iy to i64 ; 6 uses
  %invariant.gep.i.i46.i.i.i.i.i = getelementptr [8 x i8], ptr %i.bq, i64 %i.jc ; 3 uses
  %min.iters.check = icmp ult i32 %i.iy, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check283 = icmp ult i32 %i.iy, 16
  br i1 %min.iters.check283, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i.i45.i.i.i.i.i, 12
  %n.vec = and i64 %wide.trip.count.i.i45.i.i.i.i.i, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.jd = add nuw nsw <4 x i64> %vec.ind, splat (i64 1)
  %i.je = add nuw <4 x i64> %vec.ind, splat (i64 5)
  %i.jf = add nuw <4 x i64> %vec.ind, splat (i64 9)
  %i.jg = add nuw <4 x i64> %vec.ind, splat (i64 13)
  %i.jh = getelementptr [8 x i8], ptr %invariant.gep.i.i46.i.i.i.i.i, i64 %index ; 4 uses
  %i.ji = getelementptr i8, ptr %i.jh, i64 32
  %i.jj = getelementptr i8, ptr %i.jh, i64 64
  %i.jk = getelementptr i8, ptr %i.jh, i64 96
  store <4 x i64> %i.jd, ptr %i.jh, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.je, ptr %i.ji, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.jf, ptr %i.jj, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.jg, ptr %i.jk, align 8, !tbaa !135, !noalias !219
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.jl = icmp eq i64 %index.next, %n.vec
  br i1 %i.jl, label %middle.block, label %vector.body, !llvm.loop !276

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i45.i.i.i.i.i
  br i1 %cmp.n, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i42.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !262

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec285 = and i64 %wide.trip.count.i.i45.i.i.i.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index286 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next288, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind287 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next289, %vec.epilog.vector.body ] ; 2 uses
  %i.jm = add nuw nsw <4 x i64> %vec.ind287, splat (i64 1)
  %i.jn = getelementptr [8 x i8], ptr %invariant.gep.i.i46.i.i.i.i.i, i64 %index286
  store <4 x i64> %i.jm, ptr %i.jn, align 8, !tbaa !135, !noalias !219
  %index.next288 = add nuw i64 %index286, 4       ; 2 uses
  %vec.ind.next289 = add nuw nsw <4 x i64> %vec.ind287, splat (i64 4)
  %i.jo = icmp eq i64 %index.next288, %n.vec285
  br i1 %i.jo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !277

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n290 = icmp eq i64 %n.vec285, %wide.trip.count.i.i45.i.i.i.i.i
  br i1 %cmp.n290, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i42.i.i.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i47.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec285, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i.i47.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i48.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i47.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next.i.i48.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i47.i.i.i.i.i, 1 ; 3 uses
  %gep.i.i49.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i46.i.i.i.i.i, i64 %indvars.iv.i.i47.i.i.i.i.i
  store i64 %indvars.iv.next.i.i48.i.i.i.i.i, ptr %gep.i.i49.i.i.i.i.i, align 8, !tbaa !135, !noalias !219
  %exitcond.not.i.i50.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i48.i.i.i.i.i, %wide.trip.count.i.i45.i.i.i.i.i
  br i1 %exitcond.not.i.i50.i.i.i.i.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i42.i.i.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !278

_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i42.i.i.i.i.i: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.an, %.preheader.split.i39.i.i.i.i.i
  %i.jp = add i64 %.011.i40.i.i.i.i.i, -1
  %i.jq = and i64 %i.jp, %.011.i40.i.i.i.i.i      ; 2 uses
  %.not10.i43.i.i.i.i.i = icmp eq i64 %i.jq, 0
  br i1 %.not10.i43.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit62.i.i.i.i.i, label %.preheader.split.i39.i.i.i.i.i, !llvm.loop !269

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit62.i.i.i.i.i: ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i42.i.i.i.i.i, %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i53.i.i.i.i.i, %bb.am, %bb.al
  %i.jr = add nsw i32 %i.en, 64                   ; 2 uses
  %.not33117.i.i.i.i.i = icmp sgt i32 %i.jr, %i.eo
  br i1 %.not33117.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit62.i.i.i.i.i
  %.not.i.i63.i.i.i.i.i = icmp eq ptr %i.bx, null ; 2 uses
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit62.i.i.i.i.i
  %.not34.i.i.i.i.i = icmp eq i32 %i.ek, %i.eo
  br i1 %.not34.i.i.i.i.i, label %.loopexit159, label %bb.ar

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i
  %i.js = phi i32 [ %i.nz, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.jr, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.0118.i.i.i.i.i = phi i32 [ %i.js, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.en, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %i.jt = sdiv i32 %.0118.i.i.i.i.i, 64           ; 3 uses
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.ju
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !135, !noalias !219 ; 3 uses
  switch i64 %i.jw, label %.lr.ph.i.i.i.i.i.i [
    i64 -1, label %bb.ao
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.jx = shl nsw i32 %i.jt, 6                    ; 2 uses
  br i1 %.not.i.i63.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i
  %30 = sext i32 %i.jx to i64
  br label %.lr.ph.split.us.i.i.i.i.i.i.a

.lr.ph.split.us.i.i.i.i.i.i.a:                    ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit26.us.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i
  %.01529.us.i.i.i.i.i.i = phi i64 [ %i.jw, %.lr.ph.split.us.i.i.i.i.i.i ], [ %i.ks, %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit26.us.i.i.i.i.i.i ] ; 3 uses
  %i.jy = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01529.us.i.i.i.i.i.i, i1 true)
  %31 = or disjoint i64 %i.jy, %30                ; 2 uses
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %31
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !3, !noalias !219 ; 4 uses
  %i.kb = icmp sgt i32 %i.ka, 0
  br i1 %i.kb, label %iter.check343, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit26.us.i.i.i.i.i.i

iter.check343:                                    ; preds = %.lr.ph.split.us.i.i.i.i.i.i.a
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %31
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !3, !noalias !219
  %i.ke = sext i32 %i.kd to i64
  %wide.trip.count.i20.us.i.i.i.i.i.i = zext nneg i32 %i.ka to i64 ; 6 uses
  %invariant.gep.i21.us.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.bq, i64 %i.ke ; 3 uses
  %min.iters.check326 = icmp ult i32 %i.ka, 4
  br i1 %min.iters.check326, label %vec.epilog.scalar.ph344.preheader, label %vector.main.loop.iter.check327

vector.main.loop.iter.check327:                   ; preds = %iter.check343
  %min.iters.check328 = icmp ult i32 %i.ka, 16
  br i1 %min.iters.check328, label %vec.epilog.ph347, label %vector.ph329

vector.ph329:                                     ; preds = %vector.main.loop.iter.check327
  %n.mod.vf330 = and i64 %wide.trip.count.i20.us.i.i.i.i.i.i, 12
  %n.vec331 = and i64 %wide.trip.count.i20.us.i.i.i.i.i.i, 2147483632 ; 4 uses
  br label %vector.body332

vector.body332:                                   ; preds = %vector.body332, %vector.ph329
  %index333 = phi i64 [ 0, %vector.ph329 ], [ %index.next338, %vector.body332 ] ; 2 uses
  %vec.ind334 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph329 ], [ %vec.ind.next339, %vector.body332 ] ; 5 uses
  %i.kf = add nuw nsw <4 x i64> %vec.ind334, splat (i64 1)
  %i.kg = add nuw <4 x i64> %vec.ind334, splat (i64 5)
  %i.kh = add nuw <4 x i64> %vec.ind334, splat (i64 9)
  %i.ki = add nuw <4 x i64> %vec.ind334, splat (i64 13)
  %i.kj = getelementptr [8 x i8], ptr %invariant.gep.i21.us.i.i.i.i.i.i, i64 %index333 ; 4 uses
  %i.kk = getelementptr i8, ptr %i.kj, i64 32
  %i.kl = getelementptr i8, ptr %i.kj, i64 64
  %i.km = getelementptr i8, ptr %i.kj, i64 96
  store <4 x i64> %i.kf, ptr %i.kj, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.kg, ptr %i.kk, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.kh, ptr %i.kl, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.ki, ptr %i.km, align 8, !tbaa !135, !noalias !219
  %index.next338 = add nuw i64 %index333, 16      ; 2 uses
  %vec.ind.next339 = add nuw <4 x i64> %vec.ind334, splat (i64 16)
  %i.kn = icmp eq i64 %index.next338, %n.vec331
  br i1 %i.kn, label %middle.block340, label %vector.body332, !llvm.loop !279

middle.block340:                                  ; preds = %vector.body332
  %cmp.n341 = icmp eq i64 %n.vec331, %wide.trip.count.i20.us.i.i.i.i.i.i
  br i1 %cmp.n341, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit26.us.i.i.i.i.i.i, label %vec.epilog.iter.check345

vec.epilog.iter.check345:                         ; preds = %middle.block340
  %min.epilog.iters.check346 = icmp eq i64 %n.mod.vf330, 0
  br i1 %min.epilog.iters.check346, label %vec.epilog.scalar.ph344.preheader, label %vec.epilog.ph347, !prof !262

vec.epilog.ph347:                                 ; preds = %vector.main.loop.iter.check327, %vec.epilog.iter.check345
  %vec.epilog.resume.val342 = phi i64 [ %n.vec331, %vec.epilog.iter.check345 ], [ 0, %vector.main.loop.iter.check327 ] ; 2 uses
  %n.vec349 = and i64 %wide.trip.count.i20.us.i.i.i.i.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert350 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val342, i64 0
  %broadcast.splat351 = shufflevector <4 x i64> %broadcast.splatinsert350, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction352 = or disjoint <4 x i64> %broadcast.splat351, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body353

vec.epilog.vector.body353:                        ; preds = %vec.epilog.vector.body353, %vec.epilog.ph347
  %index354 = phi i64 [ %vec.epilog.resume.val342, %vec.epilog.ph347 ], [ %index.next356, %vec.epilog.vector.body353 ] ; 2 uses
  %vec.ind355 = phi <4 x i64> [ %induction352, %vec.epilog.ph347 ], [ %vec.ind.next357, %vec.epilog.vector.body353 ] ; 2 uses
  %i.ko = add nuw nsw <4 x i64> %vec.ind355, splat (i64 1)
  %i.kp = getelementptr [8 x i8], ptr %invariant.gep.i21.us.i.i.i.i.i.i, i64 %index354
  store <4 x i64> %i.ko, ptr %i.kp, align 8, !tbaa !135, !noalias !219
  %index.next356 = add nuw i64 %index354, 4       ; 2 uses
  %vec.ind.next357 = add nuw nsw <4 x i64> %vec.ind355, splat (i64 4)
  %i.kq = icmp eq i64 %index.next356, %n.vec349
  br i1 %i.kq, label %vec.epilog.middle.block358, label %vec.epilog.vector.body353, !llvm.loop !280

vec.epilog.middle.block358:                       ; preds = %vec.epilog.vector.body353
  %cmp.n359 = icmp eq i64 %n.vec349, %wide.trip.count.i20.us.i.i.i.i.i.i
  br i1 %cmp.n359, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit26.us.i.i.i.i.i.i, label %vec.epilog.scalar.ph344.preheader

vec.epilog.scalar.ph344.preheader:                ; preds = %iter.check343, %vec.epilog.iter.check345, %vec.epilog.middle.block358
  %indvars.iv.i22.us.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check343 ], [ %n.vec331, %vec.epilog.iter.check345 ], [ %n.vec349, %vec.epilog.middle.block358 ]
  br label %vec.epilog.scalar.ph344

vec.epilog.scalar.ph344:                          ; preds = %vec.epilog.scalar.ph344.preheader, %vec.epilog.scalar.ph344
  %indvars.iv.i22.us.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i23.us.i.i.i.i.i.i, %vec.epilog.scalar.ph344 ], [ %indvars.iv.i22.us.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph344.preheader ] ; 2 uses
  %indvars.iv.next.i23.us.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i22.us.i.i.i.i.i.i, 1 ; 3 uses
  %gep.i24.us.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i21.us.i.i.i.i.i.i, i64 %indvars.iv.i22.us.i.i.i.i.i.i
  store i64 %indvars.iv.next.i23.us.i.i.i.i.i.i, ptr %gep.i24.us.i.i.i.i.i.i, align 8, !tbaa !135, !noalias !219
  %exitcond.not.i25.us.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i23.us.i.i.i.i.i.i, %wide.trip.count.i20.us.i.i.i.i.i.i
  br i1 %exitcond.not.i25.us.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit26.us.i.i.i.i.i.i, label %vec.epilog.scalar.ph344, !llvm.loop !281

_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit26.us.i.i.i.i.i.i: ; preds = %vec.epilog.scalar.ph344, %middle.block340, %vec.epilog.middle.block358, %.lr.ph.split.us.i.i.i.i.i.i.a
  %i.kr = add i64 %.01529.us.i.i.i.i.i.i, -1
  %i.ks = and i64 %i.kr, %.01529.us.i.i.i.i.i.i   ; 2 uses
  %.not.us.i.i.i.i.i.i = icmp eq i64 %i.ks, 0
  br i1 %.not.us.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i.i.a, !llvm.loop !282

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.kt = shl nsw i32 %i.jt, 6                    ; 2 uses
  %i.ku = add i32 %i.kt, 64
  %i.kv = sext i32 %i.ku to i64                   ; 2 uses
  %.0.off.i.i.i.i.i = add i32 %.0118.i.i.i.i.i, 127
  %.not32.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i, 64
  br i1 %.not32.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, label %.lr.ph31.i.i.i.i.i.i

.lr.ph31.i.i.i.i.i.i:                             ; preds = %bb.ao
  %i.kw = sext i32 %i.kt to i64                   ; 2 uses
  br i1 %.not.i.i63.i.i.i.i.i, label %.lr.ph31.split.us.i.i.i.i.i.i, label %.lr.ph31.split.i.i.i.i.i.i

.lr.ph31.split.us.i.i.i.i.i.i:                    ; preds = %.lr.ph31.i.i.i.i.i.i, %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i73.i.i.i.i.i
  %.030.us.i.i.i.i.i.i = phi i64 [ %i.lq, %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i73.i.i.i.i.i ], [ %i.kw, %.lr.ph31.i.i.i.i.i.i ] ; 2 uses
  %sext.us.i.i.i.i.i.i = shl i64 %.030.us.i.i.i.i.i.i, 32
  %i.kx = ashr exact i64 %sext.us.i.i.i.i.i.i, 32 ; 2 uses
  %i.ky = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.kx
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !3, !noalias !219 ; 4 uses
  %i.la = icmp sgt i32 %i.kz, 0
  br i1 %i.la, label %iter.check413, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i73.i.i.i.i.i

iter.check413:                                    ; preds = %.lr.ph31.split.us.i.i.i.i.i.i
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.kx
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !3, !noalias !219
  %i.ld = sext i32 %i.lc to i64
  %wide.trip.count.i.us.i75.i.i.i.i.i = zext nneg i32 %i.kz to i64 ; 6 uses
  %invariant.gep.i.us.i76.i.i.i.i.i = getelementptr [8 x i8], ptr %i.bq, i64 %i.ld ; 3 uses
  %min.iters.check396 = icmp ult i32 %i.kz, 4
  br i1 %min.iters.check396, label %vec.epilog.scalar.ph414.preheader, label %vector.main.loop.iter.check397

vector.main.loop.iter.check397:                   ; preds = %iter.check413
  %min.iters.check398 = icmp ult i32 %i.kz, 16
  br i1 %min.iters.check398, label %vec.epilog.ph417, label %vector.ph399

vector.ph399:                                     ; preds = %vector.main.loop.iter.check397
  %n.mod.vf400 = and i64 %wide.trip.count.i.us.i75.i.i.i.i.i, 12
  %n.vec401 = and i64 %wide.trip.count.i.us.i75.i.i.i.i.i, 2147483632 ; 4 uses
  br label %vector.body402

vector.body402:                                   ; preds = %vector.body402, %vector.ph399
  %index403 = phi i64 [ 0, %vector.ph399 ], [ %index.next408, %vector.body402 ] ; 2 uses
  %vec.ind404 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph399 ], [ %vec.ind.next409, %vector.body402 ] ; 5 uses
  %i.le = add nuw nsw <4 x i64> %vec.ind404, splat (i64 1)
  %i.lf = add nuw <4 x i64> %vec.ind404, splat (i64 5)
  %i.lg = add nuw <4 x i64> %vec.ind404, splat (i64 9)
  %i.lh = add nuw <4 x i64> %vec.ind404, splat (i64 13)
  %i.li = getelementptr [8 x i8], ptr %invariant.gep.i.us.i76.i.i.i.i.i, i64 %index403 ; 4 uses
  %i.lj = getelementptr i8, ptr %i.li, i64 32
  %i.lk = getelementptr i8, ptr %i.li, i64 64
  %i.ll = getelementptr i8, ptr %i.li, i64 96
  store <4 x i64> %i.le, ptr %i.li, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.lf, ptr %i.lj, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.lg, ptr %i.lk, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.lh, ptr %i.ll, align 8, !tbaa !135, !noalias !219
  %index.next408 = add nuw i64 %index403, 16      ; 2 uses
  %vec.ind.next409 = add nuw <4 x i64> %vec.ind404, splat (i64 16)
  %i.lm = icmp eq i64 %index.next408, %n.vec401
  br i1 %i.lm, label %middle.block410, label %vector.body402, !llvm.loop !283

middle.block410:                                  ; preds = %vector.body402
  %cmp.n411 = icmp eq i64 %n.vec401, %wide.trip.count.i.us.i75.i.i.i.i.i
  br i1 %cmp.n411, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i73.i.i.i.i.i, label %vec.epilog.iter.check415

vec.epilog.iter.check415:                         ; preds = %middle.block410
  %min.epilog.iters.check416 = icmp eq i64 %n.mod.vf400, 0
  br i1 %min.epilog.iters.check416, label %vec.epilog.scalar.ph414.preheader, label %vec.epilog.ph417, !prof !262

vec.epilog.ph417:                                 ; preds = %vector.main.loop.iter.check397, %vec.epilog.iter.check415
  %vec.epilog.resume.val412 = phi i64 [ %n.vec401, %vec.epilog.iter.check415 ], [ 0, %vector.main.loop.iter.check397 ] ; 2 uses
  %n.vec419 = and i64 %wide.trip.count.i.us.i75.i.i.i.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert420 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val412, i64 0
  %broadcast.splat421 = shufflevector <4 x i64> %broadcast.splatinsert420, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction422 = or disjoint <4 x i64> %broadcast.splat421, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body423

vec.epilog.vector.body423:                        ; preds = %vec.epilog.vector.body423, %vec.epilog.ph417
  %index424 = phi i64 [ %vec.epilog.resume.val412, %vec.epilog.ph417 ], [ %index.next426, %vec.epilog.vector.body423 ] ; 2 uses
  %vec.ind425 = phi <4 x i64> [ %induction422, %vec.epilog.ph417 ], [ %vec.ind.next427, %vec.epilog.vector.body423 ] ; 2 uses
  %i.ln = add nuw nsw <4 x i64> %vec.ind425, splat (i64 1)
  %i.lo = getelementptr [8 x i8], ptr %invariant.gep.i.us.i76.i.i.i.i.i, i64 %index424
  store <4 x i64> %i.ln, ptr %i.lo, align 8, !tbaa !135, !noalias !219
  %index.next426 = add nuw i64 %index424, 4       ; 2 uses
  %vec.ind.next427 = add nuw nsw <4 x i64> %vec.ind425, splat (i64 4)
  %i.lp = icmp eq i64 %index.next426, %n.vec419
  br i1 %i.lp, label %vec.epilog.middle.block428, label %vec.epilog.vector.body423, !llvm.loop !284

vec.epilog.middle.block428:                       ; preds = %vec.epilog.vector.body423
  %cmp.n429 = icmp eq i64 %n.vec419, %wide.trip.count.i.us.i75.i.i.i.i.i
  br i1 %cmp.n429, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i73.i.i.i.i.i, label %vec.epilog.scalar.ph414.preheader

vec.epilog.scalar.ph414.preheader:                ; preds = %iter.check413, %vec.epilog.iter.check415, %vec.epilog.middle.block428
  %indvars.iv.i.us.i77.i.i.i.i.i.ph = phi i64 [ 0, %iter.check413 ], [ %n.vec401, %vec.epilog.iter.check415 ], [ %n.vec419, %vec.epilog.middle.block428 ]
  br label %vec.epilog.scalar.ph414

vec.epilog.scalar.ph414:                          ; preds = %vec.epilog.scalar.ph414.preheader, %vec.epilog.scalar.ph414
  %indvars.iv.i.us.i77.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.us.i78.i.i.i.i.i, %vec.epilog.scalar.ph414 ], [ %indvars.iv.i.us.i77.i.i.i.i.i.ph, %vec.epilog.scalar.ph414.preheader ] ; 2 uses
  %indvars.iv.next.i.us.i78.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.us.i77.i.i.i.i.i, 1 ; 3 uses
  %gep.i.us.i79.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.i76.i.i.i.i.i, i64 %indvars.iv.i.us.i77.i.i.i.i.i
  store i64 %indvars.iv.next.i.us.i78.i.i.i.i.i, ptr %gep.i.us.i79.i.i.i.i.i, align 8, !tbaa !135, !noalias !219
  %exitcond.not.i.us.i80.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.us.i78.i.i.i.i.i, %wide.trip.count.i.us.i75.i.i.i.i.i
  br i1 %exitcond.not.i.us.i80.i.i.i.i.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i73.i.i.i.i.i, label %vec.epilog.scalar.ph414, !llvm.loop !285

_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i73.i.i.i.i.i: ; preds = %vec.epilog.scalar.ph414, %middle.block410, %vec.epilog.middle.block428, %.lr.ph31.split.us.i.i.i.i.i.i
  %i.lq = add nuw i64 %.030.us.i.i.i.i.i.i, 1     ; 2 uses
  %i.lr = icmp ult i64 %i.lq, %i.kv
  br i1 %i.lr, label %.lr.ph31.split.us.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, !llvm.loop !286

.lr.ph31.split.i.i.i.i.i.i:                       ; preds = %.lr.ph31.i.i.i.i.i.i, %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i65.i.i.i.i.i
  %.030.i.i.i.i.i.i = phi i64 [ %i.ms, %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i65.i.i.i.i.i ], [ %i.kw, %.lr.ph31.i.i.i.i.i.i ] ; 4 uses
  %i.ls = lshr i64 %.030.i.i.i.i.i.i, 6
  %i.lt = and i64 %i.ls, 67108863
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.lt
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !135, !noalias !219
  %i.lw = and i64 %.030.i.i.i.i.i.i, 63
  %i.lx = shl nuw i64 1, %i.lw
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %n.vec436 = and i64 %wide.trip.count.i.i67.i.i.i.i.i, 2147483632 ; 4 uses
  br label %vector.body437

vector.body437:                                   ; preds = %vector.body437, %vector.ph434
  %index438 = phi i64 [ 0, %vector.ph434 ], [ %index.next443, %vector.body437 ] ; 2 uses
  %vec.ind439 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph434 ], [ %vec.ind.next444, %vector.body437 ] ; 5 uses
  %i.mg = add nuw nsw <4 x i64> %vec.ind439, splat (i64 1)
  %i.mh = add nuw <4 x i64> %vec.ind439, splat (i64 5)
  %i.mi = add nuw <4 x i64> %vec.ind439, splat (i64 9)
  %i.mj = add nuw <4 x i64> %vec.ind439, splat (i64 13)
  %i.mk = getelementptr [8 x i8], ptr %invariant.gep.i.i68.i.i.i.i.i, i64 %index438 ; 4 uses
  %i.ml = getelementptr i8, ptr %i.mk, i64 32
  %i.mm = getelementptr i8, ptr %i.mk, i64 64
  %i.mn = getelementptr i8, ptr %i.mk, i64 96
  store <4 x i64> %i.mg, ptr %i.mk, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.mh, ptr %i.ml, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.mi, ptr %i.mm, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.mj, ptr %i.mn, align 8, !tbaa !135, !noalias !219
  %index.next443 = add nuw i64 %index438, 16      ; 2 uses
  %vec.ind.next444 = add nuw <4 x i64> %vec.ind439, splat (i64 16)
  %i.mo = icmp eq i64 %index.next443, %n.vec436
  br i1 %i.mo, label %middle.block445, label %vector.body437, !llvm.loop !287

middle.block445:                                  ; preds = %vector.body437
  %cmp.n446 = icmp eq i64 %n.vec436, %wide.trip.count.i.i67.i.i.i.i.i
  br i1 %cmp.n446, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i65.i.i.i.i.i, label %vec.epilog.iter.check450

vec.epilog.iter.check450:                         ; preds = %middle.block445
  %min.epilog.iters.check451 = icmp eq i64 %n.mod.vf435, 0
  br i1 %min.epilog.iters.check451, label %vec.epilog.scalar.ph449.preheader, label %vec.epilog.ph452, !prof !262

vec.epilog.ph452:                                 ; preds = %vector.main.loop.iter.check432, %vec.epilog.iter.check450
  %vec.epilog.resume.val447 = phi i64 [ %n.vec436, %vec.epilog.iter.check450 ], [ 0, %vector.main.loop.iter.check432 ] ; 2 uses
  %n.vec454 = and i64 %wide.trip.count.i.i67.i.i.i.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert455 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val447, i64 0
  %broadcast.splat456 = shufflevector <4 x i64> %broadcast.splatinsert455, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction457 = or disjoint <4 x i64> %broadcast.splat456, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body458

vec.epilog.vector.body458:                        ; preds = %vec.epilog.vector.body458, %vec.epilog.ph452
  %index459 = phi i64 [ %vec.epilog.resume.val447, %vec.epilog.ph452 ], [ %index.next461, %vec.epilog.vector.body458 ] ; 2 uses
  %vec.ind460 = phi <4 x i64> [ %induction457, %vec.epilog.ph452 ], [ %vec.ind.next462, %vec.epilog.vector.body458 ] ; 2 uses
  %i.mp = add nuw nsw <4 x i64> %vec.ind460, splat (i64 1)
  %i.mq = getelementptr [8 x i8], ptr %invariant.gep.i.i68.i.i.i.i.i, i64 %index459
  store <4 x i64> %i.mp, ptr %i.mq, align 8, !tbaa !135, !noalias !219
  %index.next461 = add nuw i64 %index459, 4       ; 2 uses
  %vec.ind.next462 = add nuw nsw <4 x i64> %vec.ind460, splat (i64 4)
  %i.mr = icmp eq i64 %index.next461, %n.vec454
  br i1 %i.mr, label %vec.epilog.middle.block463, label %vec.epilog.vector.body458, !llvm.loop !288

vec.epilog.middle.block463:                       ; preds = %vec.epilog.vector.body458
  %cmp.n464 = icmp eq i64 %n.vec454, %wide.trip.count.i.i67.i.i.i.i.i
  br i1 %cmp.n464, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i65.i.i.i.i.i, label %vec.epilog.scalar.ph449.preheader

vec.epilog.scalar.ph449.preheader:                ; preds = %iter.check448, %vec.epilog.iter.check450, %vec.epilog.middle.block463
  %indvars.iv.i.i69.i.i.i.i.i.ph = phi i64 [ 0, %iter.check448 ], [ %n.vec436, %vec.epilog.iter.check450 ], [ %n.vec454, %vec.epilog.middle.block463 ]
  br label %vec.epilog.scalar.ph449

vec.epilog.scalar.ph449:                          ; preds = %vec.epilog.scalar.ph449.preheader, %vec.epilog.scalar.ph449
  %indvars.iv.i.i69.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i70.i.i.i.i.i, %vec.epilog.scalar.ph449 ], [ %indvars.iv.i.i69.i.i.i.i.i.ph, %vec.epilog.scalar.ph449.preheader ] ; 2 uses
  %indvars.iv.next.i.i70.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i69.i.i.i.i.i, 1 ; 3 uses
  %gep.i.i71.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i68.i.i.i.i.i, i64 %indvars.iv.i.i69.i.i.i.i.i
  store i64 %indvars.iv.next.i.i70.i.i.i.i.i, ptr %gep.i.i71.i.i.i.i.i, align 8, !tbaa !135, !noalias !219
  %exitcond.not.i.i72.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i70.i.i.i.i.i, %wide.trip.count.i.i67.i.i.i.i.i
  br i1 %exitcond.not.i.i72.i.i.i.i.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i65.i.i.i.i.i, label %vec.epilog.scalar.ph449, !llvm.loop !289

_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i65.i.i.i.i.i: ; preds = %vec.epilog.scalar.ph449, %middle.block445, %vec.epilog.middle.block463, %bb.ap, %.lr.ph31.split.i.i.i.i.i.i
  %i.ms = add nuw i64 %.030.i.i.i.i.i.i, 1        ; 2 uses
  %i.mt = icmp ult i64 %i.ms, %i.kv
  br i1 %i.mt, label %.lr.ph31.split.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, !llvm.loop !286

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i, %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit26.i.i.i.i.i.i
  %.01529.i.i.i.i.i.i = phi i64 [ %i.ny, %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit26.i.i.i.i.i.i ], [ %i.jw, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.mu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01529.i.i.i.i.i.i, i1 true)
  %i.mv = trunc nuw nsw i64 %i.mu to i32
  %i.mw = or disjoint i32 %i.jx, %i.mv            ; 2 uses
  %i.mx = zext i32 %i.mw to i64                   ; 2 uses
  %i.my = lshr i64 %i.mx, 6
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.my
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !135, !noalias !219
  %i.nb = and i64 %i.mx, 63
  %i.nc = shl nuw i64 1, %i.nb
  %i.nd = and i64 %i.nc, %i.na
  %.not.i.i18.i.i.i.i.i.i = icmp eq i64 %i.nd, 0
  br i1 %.not.i.i18.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit26.i.i.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ne = sext i32 %i.mw to i64                   ; 2 uses
  %i.nf = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.ne
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !3, !noalias !219 ; 4 uses
  %i.nh = icmp sgt i32 %i.ng, 0
  br i1 %i.nh, label %iter.check378, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit26.i.i.i.i.i.i

iter.check378:                                    ; preds = %bb.aq
  %i.ni = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.ne
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !3, !noalias !219
  %i.nk = sext i32 %i.nj to i64
  %wide.trip.count.i20.i.i.i.i.i.i = zext nneg i32 %i.ng to i64 ; 6 uses
  %invariant.gep.i21.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.bq, i64 %i.nk ; 3 uses
  %min.iters.check361 = icmp ult i32 %i.ng, 4
  br i1 %min.iters.check361, label %vec.epilog.scalar.ph379.preheader, label %vector.main.loop.iter.check362

vector.main.loop.iter.check362:                   ; preds = %iter.check378
  %min.iters.check363 = icmp ult i32 %i.ng, 16
  br i1 %min.iters.check363, label %vec.epilog.ph382, label %vector.ph364

vector.ph364:                                     ; preds = %vector.main.loop.iter.check362
  %n.mod.vf365 = and i64 %wide.trip.count.i20.i.i.i.i.i.i, 12
  %n.vec366 = and i64 %wide.trip.count.i20.i.i.i.i.i.i, 2147483632 ; 4 uses
  br label %vector.body367

vector.body367:                                   ; preds = %vector.body367, %vector.ph364
  %index368 = phi i64 [ 0, %vector.ph364 ], [ %index.next373, %vector.body367 ] ; 2 uses
  %vec.ind369 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph364 ], [ %vec.ind.next374, %vector.body367 ] ; 5 uses
  %i.nl = add nuw nsw <4 x i64> %vec.ind369, splat (i64 1)
  %i.nm = add nuw <4 x i64> %vec.ind369, splat (i64 5)
  %i.nn = add nuw <4 x i64> %vec.ind369, splat (i64 9)
  %i.no = add nuw <4 x i64> %vec.ind369, splat (i64 13)
  %i.np = getelementptr [8 x i8], ptr %invariant.gep.i21.i.i.i.i.i.i, i64 %index368 ; 4 uses
  %i.nq = getelementptr i8, ptr %i.np, i64 32
  %i.nr = getelementptr i8, ptr %i.np, i64 64
  %i.ns = getelementptr i8, ptr %i.np, i64 96
  store <4 x i64> %i.nl, ptr %i.np, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.nm, ptr %i.nq, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.nn, ptr %i.nr, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.no, ptr %i.ns, align 8, !tbaa !135, !noalias !219
  %index.next373 = add nuw i64 %index368, 16      ; 2 uses
  %vec.ind.next374 = add nuw <4 x i64> %vec.ind369, splat (i64 16)
  %i.nt = icmp eq i64 %index.next373, %n.vec366
  br i1 %i.nt, label %middle.block375, label %vector.body367, !llvm.loop !290

middle.block375:                                  ; preds = %vector.body367
  %cmp.n376 = icmp eq i64 %n.vec366, %wide.trip.count.i20.i.i.i.i.i.i
  br i1 %cmp.n376, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit26.i.i.i.i.i.i, label %vec.epilog.iter.check380

vec.epilog.iter.check380:                         ; preds = %middle.block375
  %min.epilog.iters.check381 = icmp eq i64 %n.mod.vf365, 0
  br i1 %min.epilog.iters.check381, label %vec.epilog.scalar.ph379.preheader, label %vec.epilog.ph382, !prof !262

vec.epilog.ph382:                                 ; preds = %vector.main.loop.iter.check362, %vec.epilog.iter.check380
  %vec.epilog.resume.val377 = phi i64 [ %n.vec366, %vec.epilog.iter.check380 ], [ 0, %vector.main.loop.iter.check362 ] ; 2 uses
  %n.vec384 = and i64 %wide.trip.count.i20.i.i.i.i.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert385 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val377, i64 0
  %broadcast.splat386 = shufflevector <4 x i64> %broadcast.splatinsert385, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction387 = or disjoint <4 x i64> %broadcast.splat386, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body388

vec.epilog.vector.body388:                        ; preds = %vec.epilog.vector.body388, %vec.epilog.ph382
  %index389 = phi i64 [ %vec.epilog.resume.val377, %vec.epilog.ph382 ], [ %index.next391, %vec.epilog.vector.body388 ] ; 2 uses
  %vec.ind390 = phi <4 x i64> [ %induction387, %vec.epilog.ph382 ], [ %vec.ind.next392, %vec.epilog.vector.body388 ] ; 2 uses
  %i.nu = add nuw nsw <4 x i64> %vec.ind390, splat (i64 1)
  %i.nv = getelementptr [8 x i8], ptr %invariant.gep.i21.i.i.i.i.i.i, i64 %index389
  store <4 x i64> %i.nu, ptr %i.nv, align 8, !tbaa !135, !noalias !219
  %index.next391 = add nuw i64 %index389, 4       ; 2 uses
  %vec.ind.next392 = add nuw nsw <4 x i64> %vec.ind390, splat (i64 4)
  %i.nw = icmp eq i64 %index.next391, %n.vec384
  br i1 %i.nw, label %vec.epilog.middle.block393, label %vec.epilog.vector.body388, !llvm.loop !291

vec.epilog.middle.block393:                       ; preds = %vec.epilog.vector.body388
  %cmp.n394 = icmp eq i64 %n.vec384, %wide.trip.count.i20.i.i.i.i.i.i
  br i1 %cmp.n394, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit26.i.i.i.i.i.i, label %vec.epilog.scalar.ph379.preheader

vec.epilog.scalar.ph379.preheader:                ; preds = %iter.check378, %vec.epilog.iter.check380, %vec.epilog.middle.block393
  %indvars.iv.i22.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check378 ], [ %n.vec366, %vec.epilog.iter.check380 ], [ %n.vec384, %vec.epilog.middle.block393 ]
  br label %vec.epilog.scalar.ph379

vec.epilog.scalar.ph379:                          ; preds = %vec.epilog.scalar.ph379.preheader, %vec.epilog.scalar.ph379
  %indvars.iv.i22.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i23.i.i.i.i.i.i, %vec.epilog.scalar.ph379 ], [ %indvars.iv.i22.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph379.preheader ] ; 2 uses
  %indvars.iv.next.i23.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i22.i.i.i.i.i.i, 1 ; 3 uses
  %gep.i24.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i21.i.i.i.i.i.i, i64 %indvars.iv.i22.i.i.i.i.i.i
  store i64 %indvars.iv.next.i23.i.i.i.i.i.i, ptr %gep.i24.i.i.i.i.i.i, align 8, !tbaa !135, !noalias !219
  %exitcond.not.i25.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i23.i.i.i.i.i.i, %wide.trip.count.i20.i.i.i.i.i.i
  br i1 %exitcond.not.i25.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit26.i.i.i.i.i.i, label %vec.epilog.scalar.ph379, !llvm.loop !292

_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit26.i.i.i.i.i.i: ; preds = %vec.epilog.scalar.ph379, %middle.block375, %vec.epilog.middle.block393, %bb.aq, %.lr.ph.split.i.i.i.i.i.i
  %i.nx = add i64 %.01529.i.i.i.i.i.i, -1
  %i.ny = and i64 %i.nx, %.01529.i.i.i.i.i.i      ; 2 uses
  %.not.i81.i.i.i.i.i = icmp eq i64 %i.ny, 0
  br i1 %.not.i81.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i, !llvm.loop !282

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i65.i.i.i.i.i, %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i73.i.i.i.i.i, %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit26.i.i.i.i.i.i, %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit26.us.i.i.i.i.i.i, %bb.ao, %.lr.ph.i.i.i.i.i
  %i.nz = add nsw i32 %i.js, 64                   ; 2 uses
  %.not33.i.i.i.i.i = icmp sgt i32 %i.nz, %i.eo
  br i1 %.not33.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !293

bb.ar:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.oa = ashr i32 %i.ek, 6
  %i.ob = and i32 %i.ek, 63
  %i.oc = zext nneg i32 %i.ob to i64
  %notmask.i82.i.i.i.i.i = shl nsw i64 -1, %i.oc
  %i.od = xor i64 %notmask.i82.i.i.i.i.i, -1
  %i.oe = sext i32 %i.oa to i64
  %i.of = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.oe
  %i.og = load i64, ptr %i.of, align 8, !tbaa !135, !noalias !219
  %i.oh = and i64 %i.og, %i.od                    ; 3 uses
  %.not.i83.i.i.i.i.i = icmp eq i64 %i.oh, 0
  br i1 %.not.i83.i.i.i.i.i, label %.loopexit159, label %.preheader.i84.i.i.i.i.i

.preheader.i84.i.i.i.i.i:                         ; preds = %bb.ar
  %.not.i.i85.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i85.i.i.i.i.i, label %.preheader.split.us.i98.i.i.i.i.i, label %.preheader.split.i86.i.i.i.i.i

.preheader.split.us.i98.i.i.i.i.i:                ; preds = %.preheader.i84.i.i.i.i.i
  %32 = sext i32 %i.eo to i64
  br label %.preheader.split.us.i98.i.i.i.i.i.a

.preheader.split.us.i98.i.i.i.i.i.a:              ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i100.i.i.i.i.i, %.preheader.split.us.i98.i.i.i.i.i
  %.011.us.i99.i.i.i.i.i = phi i64 [ %i.oh, %.preheader.split.us.i98.i.i.i.i.i ], [ %i.pc, %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i100.i.i.i.i.i ] ; 3 uses
  %i.oi = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.i99.i.i.i.i.i, i1 true)
  %33 = or disjoint i64 %i.oi, %32                ; 2 uses
  %i.oj = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %33
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !3, !noalias !219 ; 4 uses
  %i.ol = icmp sgt i32 %i.ok, 0
  br i1 %i.ol, label %iter.check518, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i100.i.i.i.i.i

iter.check518:                                    ; preds = %.preheader.split.us.i98.i.i.i.i.i.a
  %i.om = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %33
  %i.on = load i32, ptr %i.om, align 4, !tbaa !3, !noalias !219
  %i.oo = sext i32 %i.on to i64
  %wide.trip.count.i.us.i103.i.i.i.i.i = zext nneg i32 %i.ok to i64 ; 6 uses
  %invariant.gep.i.us.i104.i.i.i.i.i = getelementptr [8 x i8], ptr %i.bq, i64 %i.oo ; 3 uses
  %min.iters.check501 = icmp ult i32 %i.ok, 4
  br i1 %min.iters.check501, label %vec.epilog.scalar.ph519.preheader, label %vector.main.loop.iter.check502

vector.main.loop.iter.check502:                   ; preds = %iter.check518
  %min.iters.check503 = icmp ult i32 %i.ok, 16
  br i1 %min.iters.check503, label %vec.epilog.ph522, label %vector.ph504

vector.ph504:                                     ; preds = %vector.main.loop.iter.check502
  %n.mod.vf505 = and i64 %wide.trip.count.i.us.i103.i.i.i.i.i, 12
  %n.vec506 = and i64 %wide.trip.count.i.us.i103.i.i.i.i.i, 2147483632 ; 4 uses
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph504
  %index508 = phi i64 [ 0, %vector.ph504 ], [ %index.next513, %vector.body507 ] ; 2 uses
  %vec.ind509 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph504 ], [ %vec.ind.next514, %vector.body507 ] ; 5 uses
  %i.op = add nuw nsw <4 x i64> %vec.ind509, splat (i64 1)
  %i.oq = add nuw <4 x i64> %vec.ind509, splat (i64 5)
  %i.or = add nuw <4 x i64> %vec.ind509, splat (i64 9)
  %i.os = add nuw <4 x i64> %vec.ind509, splat (i64 13)
  %i.ot = getelementptr [8 x i8], ptr %invariant.gep.i.us.i104.i.i.i.i.i, i64 %index508 ; 4 uses
  %i.ou = getelementptr i8, ptr %i.ot, i64 32
  %i.ov = getelementptr i8, ptr %i.ot, i64 64
  %i.ow = getelementptr i8, ptr %i.ot, i64 96
  store <4 x i64> %i.op, ptr %i.ot, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.oq, ptr %i.ou, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.or, ptr %i.ov, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.os, ptr %i.ow, align 8, !tbaa !135, !noalias !219
  %index.next513 = add nuw i64 %index508, 16      ; 2 uses
  %vec.ind.next514 = add nuw <4 x i64> %vec.ind509, splat (i64 16)
  %i.ox = icmp eq i64 %index.next513, %n.vec506
  br i1 %i.ox, label %middle.block515, label %vector.body507, !llvm.loop !294

middle.block515:                                  ; preds = %vector.body507
  %cmp.n516 = icmp eq i64 %n.vec506, %wide.trip.count.i.us.i103.i.i.i.i.i
  br i1 %cmp.n516, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i100.i.i.i.i.i, label %vec.epilog.iter.check520

vec.epilog.iter.check520:                         ; preds = %middle.block515
  %min.epilog.iters.check521 = icmp eq i64 %n.mod.vf505, 0
  br i1 %min.epilog.iters.check521, label %vec.epilog.scalar.ph519.preheader, label %vec.epilog.ph522, !prof !262

vec.epilog.ph522:                                 ; preds = %vector.main.loop.iter.check502, %vec.epilog.iter.check520
  %vec.epilog.resume.val517 = phi i64 [ %n.vec506, %vec.epilog.iter.check520 ], [ 0, %vector.main.loop.iter.check502 ] ; 2 uses
  %n.vec524 = and i64 %wide.trip.count.i.us.i103.i.i.i.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert525 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val517, i64 0
  %broadcast.splat526 = shufflevector <4 x i64> %broadcast.splatinsert525, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction527 = or disjoint <4 x i64> %broadcast.splat526, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body528

vec.epilog.vector.body528:                        ; preds = %vec.epilog.vector.body528, %vec.epilog.ph522
  %index529 = phi i64 [ %vec.epilog.resume.val517, %vec.epilog.ph522 ], [ %index.next531, %vec.epilog.vector.body528 ] ; 2 uses
  %vec.ind530 = phi <4 x i64> [ %induction527, %vec.epilog.ph522 ], [ %vec.ind.next532, %vec.epilog.vector.body528 ] ; 2 uses
  %i.oy = add nuw nsw <4 x i64> %vec.ind530, splat (i64 1)
  %i.oz = getelementptr [8 x i8], ptr %invariant.gep.i.us.i104.i.i.i.i.i, i64 %index529
  store <4 x i64> %i.oy, ptr %i.oz, align 8, !tbaa !135, !noalias !219
  %index.next531 = add nuw i64 %index529, 4       ; 2 uses
  %vec.ind.next532 = add nuw nsw <4 x i64> %vec.ind530, splat (i64 4)
  %i.pa = icmp eq i64 %index.next531, %n.vec524
  br i1 %i.pa, label %vec.epilog.middle.block533, label %vec.epilog.vector.body528, !llvm.loop !295

vec.epilog.middle.block533:                       ; preds = %vec.epilog.vector.body528
  %cmp.n534 = icmp eq i64 %n.vec524, %wide.trip.count.i.us.i103.i.i.i.i.i
  br i1 %cmp.n534, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i100.i.i.i.i.i, label %vec.epilog.scalar.ph519.preheader

vec.epilog.scalar.ph519.preheader:                ; preds = %iter.check518, %vec.epilog.iter.check520, %vec.epilog.middle.block533
  %indvars.iv.i.us.i105.i.i.i.i.i.ph = phi i64 [ 0, %iter.check518 ], [ %n.vec506, %vec.epilog.iter.check520 ], [ %n.vec524, %vec.epilog.middle.block533 ]
  br label %vec.epilog.scalar.ph519

vec.epilog.scalar.ph519:                          ; preds = %vec.epilog.scalar.ph519.preheader, %vec.epilog.scalar.ph519
  %indvars.iv.i.us.i105.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.us.i106.i.i.i.i.i, %vec.epilog.scalar.ph519 ], [ %indvars.iv.i.us.i105.i.i.i.i.i.ph, %vec.epilog.scalar.ph519.preheader ] ; 2 uses
  %indvars.iv.next.i.us.i106.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.us.i105.i.i.i.i.i, 1 ; 3 uses
  %gep.i.us.i107.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.i104.i.i.i.i.i, i64 %indvars.iv.i.us.i105.i.i.i.i.i
  store i64 %indvars.iv.next.i.us.i106.i.i.i.i.i, ptr %gep.i.us.i107.i.i.i.i.i, align 8, !tbaa !135, !noalias !219
  %exitcond.not.i.us.i108.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.us.i106.i.i.i.i.i, %wide.trip.count.i.us.i103.i.i.i.i.i
  br i1 %exitcond.not.i.us.i108.i.i.i.i.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i100.i.i.i.i.i, label %vec.epilog.scalar.ph519, !llvm.loop !296

_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.us.i100.i.i.i.i.i: ; preds = %vec.epilog.scalar.ph519, %middle.block515, %vec.epilog.middle.block533, %.preheader.split.us.i98.i.i.i.i.i.a
  %i.pb = add nsw i64 %.011.us.i99.i.i.i.i.i, -1
  %i.pc = and i64 %i.pb, %.011.us.i99.i.i.i.i.i   ; 2 uses
  %.not10.us.i101.i.i.i.i.i = icmp eq i64 %i.pc, 0
  br i1 %.not10.us.i101.i.i.i.i.i, label %.loopexit159, label %.preheader.split.us.i98.i.i.i.i.i.a, !llvm.loop !269

.preheader.split.i86.i.i.i.i.i:                   ; preds = %.preheader.i84.i.i.i.i.i, %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i89.i.i.i.i.i
  %.011.i87.i.i.i.i.i = phi i64 [ %i.qh, %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i89.i.i.i.i.i ], [ %i.oh, %.preheader.i84.i.i.i.i.i ] ; 3 uses
  %i.pd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i87.i.i.i.i.i, i1 true)
  %i.pe = trunc nuw nsw i64 %i.pd to i32
  %i.pf = or disjoint i32 %i.eo, %i.pe            ; 2 uses
  %i.pg = zext i32 %i.pf to i64                   ; 2 uses
  %i.ph = lshr i64 %i.pg, 6
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ph
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !135, !noalias !219
  %i.pk = and i64 %i.pg, 63
  %i.pl = shl nuw i64 1, %i.pk
  %i.pm = and i64 %i.pl, %i.pj
  %.not.i.i.i88.i.i.i.i.i = icmp eq i64 %i.pm, 0
  br i1 %.not.i.i.i88.i.i.i.i.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i89.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %.preheader.split.i86.i.i.i.i.i
  %i.pn = sext i32 %i.pf to i64                   ; 2 uses
  %i.po = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.pn
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !3, !noalias !219 ; 4 uses
  %i.pq = icmp sgt i32 %i.pp, 0
  br i1 %i.pq, label %iter.check483, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i89.i.i.i.i.i

iter.check483:                                    ; preds = %bb.as
  %i.pr = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.pn
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !3, !noalias !219
  %i.pt = sext i32 %i.ps to i64
  %wide.trip.count.i.i92.i.i.i.i.i = zext nneg i32 %i.pp to i64 ; 6 uses
  %invariant.gep.i.i93.i.i.i.i.i = getelementptr [8 x i8], ptr %i.bq, i64 %i.pt ; 3 uses
  %min.iters.check466 = icmp ult i32 %i.pp, 4
  br i1 %min.iters.check466, label %vec.epilog.scalar.ph484.preheader, label %vector.main.loop.iter.check467

vector.main.loop.iter.check467:                   ; preds = %iter.check483
  %min.iters.check468 = icmp ult i32 %i.pp, 16
  br i1 %min.iters.check468, label %vec.epilog.ph487, label %vector.ph469

vector.ph469:                                     ; preds = %vector.main.loop.iter.check467
  %n.mod.vf470 = and i64 %wide.trip.count.i.i92.i.i.i.i.i, 12
  %n.vec471 = and i64 %wide.trip.count.i.i92.i.i.i.i.i, 2147483632 ; 4 uses
  br label %vector.body472

vector.body472:                                   ; preds = %vector.body472, %vector.ph469
  %index473 = phi i64 [ 0, %vector.ph469 ], [ %index.next478, %vector.body472 ] ; 2 uses
  %vec.ind474 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph469 ], [ %vec.ind.next479, %vector.body472 ] ; 5 uses
  %i.pu = add nuw nsw <4 x i64> %vec.ind474, splat (i64 1)
  %i.pv = add nuw <4 x i64> %vec.ind474, splat (i64 5)
  %i.pw = add nuw <4 x i64> %vec.ind474, splat (i64 9)
  %i.px = add nuw <4 x i64> %vec.ind474, splat (i64 13)
  %i.py = getelementptr [8 x i8], ptr %invariant.gep.i.i93.i.i.i.i.i, i64 %index473 ; 4 uses
  %i.pz = getelementptr i8, ptr %i.py, i64 32
  %i.qa = getelementptr i8, ptr %i.py, i64 64
  %i.qb = getelementptr i8, ptr %i.py, i64 96
  store <4 x i64> %i.pu, ptr %i.py, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.pv, ptr %i.pz, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.pw, ptr %i.qa, align 8, !tbaa !135, !noalias !219
  store <4 x i64> %i.px, ptr %i.qb, align 8, !tbaa !135, !noalias !219
  %index.next478 = add nuw i64 %index473, 16      ; 2 uses
  %vec.ind.next479 = add nuw <4 x i64> %vec.ind474, splat (i64 16)
  %i.qc = icmp eq i64 %index.next478, %n.vec471
  br i1 %i.qc, label %middle.block480, label %vector.body472, !llvm.loop !297

middle.block480:                                  ; preds = %vector.body472
  %cmp.n481 = icmp eq i64 %n.vec471, %wide.trip.count.i.i92.i.i.i.i.i
  br i1 %cmp.n481, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i89.i.i.i.i.i, label %vec.epilog.iter.check485

vec.epilog.iter.check485:                         ; preds = %middle.block480
  %min.epilog.iters.check486 = icmp eq i64 %n.mod.vf470, 0
  br i1 %min.epilog.iters.check486, label %vec.epilog.scalar.ph484.preheader, label %vec.epilog.ph487, !prof !262

vec.epilog.ph487:                                 ; preds = %vector.main.loop.iter.check467, %vec.epilog.iter.check485
  %vec.epilog.resume.val482 = phi i64 [ %n.vec471, %vec.epilog.iter.check485 ], [ 0, %vector.main.loop.iter.check467 ] ; 2 uses
  %n.vec489 = and i64 %wide.trip.count.i.i92.i.i.i.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert490 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val482, i64 0
  %broadcast.splat491 = shufflevector <4 x i64> %broadcast.splatinsert490, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction492 = or disjoint <4 x i64> %broadcast.splat491, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body493

vec.epilog.vector.body493:                        ; preds = %vec.epilog.vector.body493, %vec.epilog.ph487
  %index494 = phi i64 [ %vec.epilog.resume.val482, %vec.epilog.ph487 ], [ %index.next496, %vec.epilog.vector.body493 ] ; 2 uses
  %vec.ind495 = phi <4 x i64> [ %induction492, %vec.epilog.ph487 ], [ %vec.ind.next497, %vec.epilog.vector.body493 ] ; 2 uses
  %i.qd = add nuw nsw <4 x i64> %vec.ind495, splat (i64 1)
  %i.qe = getelementptr [8 x i8], ptr %invariant.gep.i.i93.i.i.i.i.i, i64 %index494
  store <4 x i64> %i.qd, ptr %i.qe, align 8, !tbaa !135, !noalias !219
  %index.next496 = add nuw i64 %index494, 4       ; 2 uses
  %vec.ind.next497 = add nuw nsw <4 x i64> %vec.ind495, splat (i64 4)
  %i.qf = icmp eq i64 %index.next496, %n.vec489
  br i1 %i.qf, label %vec.epilog.middle.block498, label %vec.epilog.vector.body493, !llvm.loop !298

vec.epilog.middle.block498:                       ; preds = %vec.epilog.vector.body493
  %cmp.n499 = icmp eq i64 %n.vec489, %wide.trip.count.i.i92.i.i.i.i.i
  br i1 %cmp.n499, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i89.i.i.i.i.i, label %vec.epilog.scalar.ph484.preheader

vec.epilog.scalar.ph484.preheader:                ; preds = %iter.check483, %vec.epilog.iter.check485, %vec.epilog.middle.block498
  %indvars.iv.i.i94.i.i.i.i.i.ph = phi i64 [ 0, %iter.check483 ], [ %n.vec471, %vec.epilog.iter.check485 ], [ %n.vec489, %vec.epilog.middle.block498 ]
  br label %vec.epilog.scalar.ph484

vec.epilog.scalar.ph484:                          ; preds = %vec.epilog.scalar.ph484.preheader, %vec.epilog.scalar.ph484
  %indvars.iv.i.i94.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i95.i.i.i.i.i, %vec.epilog.scalar.ph484 ], [ %indvars.iv.i.i94.i.i.i.i.i.ph, %vec.epilog.scalar.ph484.preheader ] ; 2 uses
  %indvars.iv.next.i.i95.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i94.i.i.i.i.i, 1 ; 3 uses
  %gep.i.i96.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i93.i.i.i.i.i, i64 %indvars.iv.i.i94.i.i.i.i.i
  store i64 %indvars.iv.next.i.i95.i.i.i.i.i, ptr %gep.i.i96.i.i.i.i.i, align 8, !tbaa !135, !noalias !219
  %exitcond.not.i.i97.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i95.i.i.i.i.i, %wide.trip.count.i.i92.i.i.i.i.i
  br i1 %exitcond.not.i.i97.i.i.i.i.i, label %_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i89.i.i.i.i.i, label %vec.epilog.scalar.ph484, !llvm.loop !299

_ZZN8facebook5velox9functions12_GLOBAL__N_126TransformWithIndexFunction19createIndicesVectorERKSt10shared_ptrINS0_11ArrayVectorEERKNS0_17SelectivityVectorEPNS0_6memory10MemoryPoolEENKUliE_clEi.exit.i89.i.i.i.i.i: ; preds = %vec.epilog.scalar.ph484, %middle.block480, %vec.epilog.middle.block498, %bb.as, %.preheader.split.i86.i.i.i.i.i
  %i.qg = add nsw i64 %.011.i87.i.i.i.i.i, -1
  %i.qh = and i64 %i.qg, %.011.i87.i.i.i.i.i      ; 2 uses
  %.not10.i90.i.i.i.i.i = icmp eq i64 %i.qh, 0
  br i1 %.not10.i90.i.i.i.i.i, label %.loopexit159, label %.preheader.split.i86.i.i.i.i.i, !llvm.loop !269

bb.at:                                            ; preds = %.noexc
  %i.qi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #20, !noalias !219
  call void @_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #20, !noalias !219
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !219
end_hunk_1
