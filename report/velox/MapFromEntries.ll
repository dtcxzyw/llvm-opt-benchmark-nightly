inline.NumInlined: 3631
inline.NumDeleted: 1458
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_122MapFromEntriesFunction9applyFlatERKNS0_17SelectivityVectorEPKNS0_11ArrayVectorERKSt10shared_ptrIKNS0_4TypeEERNS0_4exec7EvalCtxE:bb.a
  %.not38.i.i.i.i = icmp eq i32 %i.ha, %i.he
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.ca

bb.ca:                                            ; preds = %.critedge.i.i.i.i
  %i.hk = lshr i32 %i.ha, 6
  %i.hl = and i32 %i.ha, 63
  %i.hm = zext nneg i32 %i.hl to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.hm
  %i.hn = zext nneg i32 %i.hk to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.hn
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !123
  %.demorgan.i.i = or i64 %i.hp, %notmask.i40.i.i.i.i
  %i.hq = icmp eq i64 %.demorgan.i.i, -1
  %i.hr = zext i1 %i.hq to i16
  %i.hs = or disjoint i16 %i.hr, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph572, %bb.ca, %.critedge.i.i.i.i, %bb.bx, %bb.bw, %bb.bv
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.bw ], [ 256, %bb.bv ], [ 257, %bb.bx ], [ 257, %.critedge.i.i.i.i ], [ %i.hs, %bb.ca ], [ 256, %.lr.ph572 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.fr, align 4
  %i.ht = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.ht, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !216 ; 8 uses
  br i1 %.0.i.i, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.hw = load i32, ptr %i.gh, align 8, !tbaa !217 ; 2 uses
  %i.hx = icmp slt i32 %i.hv, %i.hw
  br i1 %i.hx, label %iter.check609, label %.loopexit393

iter.check609:                                    ; preds = %bb.cb
  %.val4.val.i = load ptr, ptr %i.a, align 8, !tbaa !282
  %i.hy = getelementptr i8, ptr %.val4.val.i, i64 120
  %.val4.val.val.i = load ptr, ptr %i.hy, align 8, !tbaa !355 ; 8 uses
  %i.hz = sext i32 %i.hv to i64                   ; 6 uses
  %wide.trip.count.i = sext i32 %i.hw to i64      ; 4 uses
  %i.ia = sub nsw i64 %wide.trip.count.i, %i.hz   ; 7 uses
  %min.iters.check593 = icmp ult i64 %i.ia, 8
  %.val4.val.val.i591 = ptrtoaddr ptr %.val4.val.val.i to i64
  %i.ib = sub i64 %i.gt, %.val4.val.val.i591
  %diff.check592 = icmp ult i64 %i.ib, 128
  %or.cond = select i1 %min.iters.check593, i1 true, i1 %diff.check592
  br i1 %or.cond, label %vec.epilog.scalar.ph610.preheader, label %vector.main.loop.iter.check594

vector.main.loop.iter.check594:                   ; preds = %iter.check609
  %min.iters.check595 = icmp ult i64 %i.ia, 32
  br i1 %min.iters.check595, label %vec.epilog.ph613, label %vector.ph596

vector.ph596:                                     ; preds = %vector.main.loop.iter.check594
  %n.mod.vf597 = and i64 %i.ia, 24
  %n.vec598 = and i64 %i.ia, -32                  ; 4 uses
  %i.ic = add nsw i64 %n.vec598, %i.hz
  br label %vector.body599

vector.body599:                                   ; preds = %vector.body599, %vector.ph596
  %index600 = phi i64 [ 0, %vector.ph596 ], [ %index.next605, %vector.body599 ] ; 2 uses
  %i.id = add i64 %index600, %i.hz                ; 2 uses
  %i.ie = getelementptr inbounds [4 x i8], ptr %.val4.val.val.i, i64 %i.id ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 96
  %wide.load601 = load <8 x i32>, ptr %i.ie, align 4, !tbaa !3
  %wide.load602 = load <8 x i32>, ptr %i.if, align 4, !tbaa !3
  %wide.load603 = load <8 x i32>, ptr %i.ig, align 4, !tbaa !3
  %wide.load604 = load <8 x i32>, ptr %i.ih, align 4, !tbaa !3
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.id ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 64
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 96
  store <8 x i32> %wide.load601, ptr %i.ii, align 4, !tbaa !3
  store <8 x i32> %wide.load602, ptr %i.ij, align 4, !tbaa !3
  store <8 x i32> %wide.load603, ptr %i.ik, align 4, !tbaa !3
  store <8 x i32> %wide.load604, ptr %i.il, align 4, !tbaa !3
  %index.next605 = add nuw i64 %index600, 32      ; 2 uses
  %i.im = icmp eq i64 %index.next605, %n.vec598
  br i1 %i.im, label %middle.block606, label %vector.body599, !llvm.loop !357

middle.block606:                                  ; preds = %vector.body599
  %cmp.n607 = icmp eq i64 %i.ia, %n.vec598
  br i1 %cmp.n607, label %.loopexit393, label %vec.epilog.iter.check611

vec.epilog.iter.check611:                         ; preds = %middle.block606
  %min.epilog.iters.check612 = icmp eq i64 %n.mod.vf597, 0
  br i1 %min.epilog.iters.check612, label %vec.epilog.scalar.ph610.preheader, label %vec.epilog.ph613, !prof !358

vec.epilog.ph613:                                 ; preds = %vector.main.loop.iter.check594, %vec.epilog.iter.check611
  %vec.epilog.resume.val608 = phi i64 [ %n.vec598, %vec.epilog.iter.check611 ], [ 0, %vector.main.loop.iter.check594 ]
  %n.vec615 = and i64 %i.ia, -8                   ; 3 uses
  %i.in = add nsw i64 %n.vec615, %i.hz
  br label %vec.epilog.vector.body616

vec.epilog.vector.body616:                        ; preds = %vec.epilog.vector.body616, %vec.epilog.ph613
  %index617 = phi i64 [ %vec.epilog.resume.val608, %vec.epilog.ph613 ], [ %index.next619, %vec.epilog.vector.body616 ] ; 2 uses
  %i.io = add i64 %index617, %i.hz                ; 2 uses
  %i.ip = getelementptr inbounds [4 x i8], ptr %.val4.val.val.i, i64 %i.io
  %wide.load618 = load <8 x i32>, ptr %i.ip, align 4, !tbaa !3
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.io
  store <8 x i32> %wide.load618, ptr %i.iq, align 4, !tbaa !3
  %index.next619 = add nuw i64 %index617, 8       ; 2 uses
  %i.ir = icmp eq i64 %index.next619, %n.vec615
  br i1 %i.ir, label %vec.epilog.middle.block620, label %vec.epilog.vector.body616, !llvm.loop !359

vec.epilog.middle.block620:                       ; preds = %vec.epilog.vector.body616
  %cmp.n621 = icmp eq i64 %i.ia, %n.vec615
  br i1 %cmp.n621, label %.loopexit393, label %vec.epilog.scalar.ph610.preheader

vec.epilog.scalar.ph610.preheader:                ; preds = %iter.check609, %vec.epilog.iter.check611, %vec.epilog.middle.block620
  %indvars.iv.i.ph = phi i64 [ %i.hz, %iter.check609 ], [ %i.ic, %vec.epilog.iter.check611 ], [ %i.in, %vec.epilog.middle.block620 ] ; 4 uses
  %i.is = sub nsw i64 %wide.trip.count.i, %indvars.iv.i.ph
  %xtraiter = and i64 %i.is, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph610.prol.loopexit, label %vec.epilog.scalar.ph610.prol

vec.epilog.scalar.ph610.prol:                     ; preds = %vec.epilog.scalar.ph610.preheader, %vec.epilog.scalar.ph610.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph610.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph610.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph610.prol ], [ 0, %vec.epilog.scalar.ph610.preheader ]
  %i.it = getelementptr inbounds [4 x i8], ptr %.val4.val.val.i, i64 %indvars.iv.i.prol
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !3
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %indvars.iv.i.prol
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !3
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph610.prol.loopexit, label %vec.epilog.scalar.ph610.prol, !llvm.loop !360

vec.epilog.scalar.ph610.prol.loopexit:            ; preds = %vec.epilog.scalar.ph610.prol, %vec.epilog.scalar.ph610.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph610.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph610.prol ]
  %i.iw = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ix = icmp ugt i64 %i.iw, -4
  br i1 %i.ix, label %.loopexit393, label %vec.epilog.scalar.ph610

vec.epilog.scalar.ph610:                          ; preds = %vec.epilog.scalar.ph610.prol.loopexit, %vec.epilog.scalar.ph610
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph610 ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph610.prol.loopexit ] ; 6 uses
  %i.iy = getelementptr inbounds [4 x i8], ptr %.val4.val.val.i, i64 %indvars.iv.i
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !3
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %indvars.iv.i
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !3
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jb = getelementptr inbounds [4 x i8], ptr %.val4.val.val.i, i64 %indvars.iv.next.i
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !3
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %indvars.iv.next.i
  store i32 %i.jc, ptr %i.jd, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.je = getelementptr inbounds [4 x i8], ptr %.val4.val.val.i, i64 %indvars.iv.next.i.1
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !3
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %indvars.iv.next.i.1
  store i32 %i.jf, ptr %i.jg, align 4, !tbaa !3
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.jh = getelementptr inbounds [4 x i8], ptr %.val4.val.val.i, i64 %indvars.iv.next.i.2
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !3
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %indvars.iv.next.i.2
  store i32 %i.ji, ptr %i.jj, align 4, !tbaa !3
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.loopexit393, label %vec.epilog.scalar.ph610, !llvm.loop !362

bb.cc:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.jk = load ptr, ptr %2, align 8, !tbaa !209   ; 4 uses
  %i.jl = load i32, ptr %i.gh, align 8, !tbaa !217 ; 7 uses
  %.not.i.i.i.i145 = icmp slt i32 %i.hv, %i.jl
  br i1 %.not.i.i.i.i145, label %bb.cd, label %.loopexit393

bb.cd:                                            ; preds = %bb.cc
  %i.jm = add i32 %i.hv, 63                       ; 2 uses
  %i.jn = srem i32 %i.jm, 64
  %i.jo = sub nsw i32 %i.jm, %i.jn                ; 6 uses
  %i.jp = and i32 %i.jl, -64                      ; 6 uses
  %i.jq = icmp slt i32 %i.jp, %i.jo
  br i1 %i.jq, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.jr = ashr i32 %i.jl, 6
  %i.js = and i32 %i.jl, 63
  %i.jt = zext nneg i32 %i.js to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.jt
  %i.ju = xor i64 %notmask.i.i.i.i.i, -1
  %i.jv = sub nsw i32 %i.jo, %i.hv                ; 2 uses
  %i.jw = zext nneg i32 %i.jv to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.jw
  %i.jx = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.jy = sub nsw i32 64, %i.jv
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = shl i64 %i.jx, %i.jz
  %i.kb = and i64 %i.ka, %i.ju
  %i.kc = sext i32 %i.jr to i64
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %i.kc
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !123
  %i.kf = and i64 %i.kb, %i.ke                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.kf, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit393, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ce
  %.val11.val.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !282
  %i.kg = getelementptr i8, ptr %.val11.val.i.i.i.i.i, i64 120
  %.val11.val.val.i.i.i.i.i = load ptr, ptr %i.kg, align 8, !tbaa !355
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cf, %.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.kf, %.preheader.i.i.i.i.i ], [ %i.km, %bb.cf ] ; 3 uses
  %i.kh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i.i.i.i.i, i1 true)
  %55 = trunc nuw nsw i64 %i.kh to i32
  %56 = or disjoint i32 %i.jp, %55
  %57 = sext i32 %56 to i64                       ; 2 uses
  %i.ki = getelementptr inbounds [4 x i8], ptr %.val11.val.val.i.i.i.i.i, i64 %57
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !3
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %57
  store i32 %i.kj, ptr %i.kk, align 4, !tbaa !3
  %i.kl = add nsw i64 %.012.i.i.i.i.i, -1
  %i.km = and i64 %i.kl, %.012.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.km, 0
  br i1 %.not10.i.i.i.i.i, label %.loopexit393, label %bb.cf, !llvm.loop !363

bb.cg:                                            ; preds = %bb.cd
  %.not32.i.i.i.i = icmp eq i32 %i.hv, %i.jo
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_122MapFromEntriesFunction9applyFlatERKNS0_17SelectivityVectorEPKNS0_11ArrayVectorERKSt10shared_ptrIKNS0_4TypeEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kn = sdiv i32 %i.hv, 64                      ; 2 uses
  %i.ko = sub nsw i32 %i.jo, %i.hv                ; 2 uses
  %i.kp = zext nneg i32 %i.ko to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.kp
  %i.kq = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.kr = sub nsw i32 64, %i.ko
  %i.ks = zext nneg i32 %i.kr to i64
  %i.kt = shl i64 %i.kq, %i.ks
  %i.ku = sext i32 %i.kn to i64
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %i.ku
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !123
  %i.kx = and i64 %i.kw, %i.kt                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.kx, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_122MapFromEntriesFunction9applyFlatERKNS0_17SelectivityVectorEPKNS0_11ArrayVectorERKSt10shared_ptrIKNS0_4TypeEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.ch
  %i.ky = shl nsw i32 %i.kn, 6
  %.val11.val.i41.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !282
  %i.kz = getelementptr i8, ptr %.val11.val.i41.i.i.i.i, i64 120
  %.val11.val.val.i42.i.i.i.i = load ptr, ptr %i.kz, align 8, !tbaa !355
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %.preheader.i37.i.i.i.i
  %.012.i43.i.i.i.i = phi i64 [ %i.kx, %.preheader.i37.i.i.i.i ], [ %i.lf, %bb.ci ] ; 3 uses
  %i.la = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i43.i.i.i.i, i1 true)
  %58 = trunc nuw nsw i64 %i.la to i32
  %59 = or disjoint i32 %i.ky, %58
  %60 = sext i32 %59 to i64                       ; 2 uses
  %i.lb = getelementptr inbounds [4 x i8], ptr %.val11.val.val.i42.i.i.i.i, i64 %60
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !3
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %60
  store i32 %i.lc, ptr %i.ld, align 4, !tbaa !3
  %i.le = add i64 %.012.i43.i.i.i.i, -1
  %i.lf = and i64 %i.le, %.012.i43.i.i.i.i        ; 2 uses
  %.not10.i44.i.i.i.i = icmp eq i64 %i.lf, 0
  br i1 %.not10.i44.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_122MapFromEntriesFunction9applyFlatERKNS0_17SelectivityVectorEPKNS0_11ArrayVectorERKSt10shared_ptrIKNS0_4TypeEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i, label %bb.ci, !llvm.loop !363

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_122MapFromEntriesFunction9applyFlatERKNS0_17SelectivityVectorEPKNS0_11ArrayVectorERKSt10shared_ptrIKNS0_4TypeEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i: ; preds = %bb.ci, %bb.ch, %bb.cg
  %i.lg = add nsw i32 %i.jo, 64                   ; 2 uses
  %.not3362.i.i.i.i = icmp sgt i32 %i.lg, %i.jp
  br i1 %.not3362.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_122MapFromEntriesFunction9applyFlatERKNS0_17SelectivityVectorEPKNS0_11ArrayVectorERKSt10shared_ptrIKNS0_4TypeEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i
  %.val19.val.i.i.i.i.i = load ptr, ptr %i.a, align 8
  %i.lh = getelementptr i8, ptr %.val19.val.i.i.i.i.i, i64 120 ; 2 uses
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_122MapFromEntriesFunction9applyFlatERKNS0_17SelectivityVectorEPKNS0_11ArrayVectorERKSt10shared_ptrIKNS0_4TypeEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_122MapFromEntriesFunction9applyFlatERKNS0_17SelectivityVectorEPKNS0_11ArrayVectorERKSt10shared_ptrIKNS0_4TypeEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.jl, %i.jp
  br i1 %.not34.i.i.i.i, label %.loopexit393, label %bb.cl

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_122MapFromEntriesFunction9applyFlatERKNS0_17SelectivityVectorEPKNS0_11ArrayVectorERKSt10shared_ptrIKNS0_4TypeEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %i.li = phi i32 [ %i.ni, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_122MapFromEntriesFunction9applyFlatERKNS0_17SelectivityVectorEPKNS0_11ArrayVectorERKSt10shared_ptrIKNS0_4TypeEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.lg, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.063.i.i.i.i = phi i32 [ %i.li, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_122MapFromEntriesFunction9applyFlatERKNS0_17SelectivityVectorEPKNS0_11ArrayVectorERKSt10shared_ptrIKNS0_4TypeEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.jo, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.lj = sdiv i32 %.063.i.i.i.i, 64              ; 3 uses
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %i.lk
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !123 ; 2 uses
  switch i64 %i.lm, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.cj
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_122MapFromEntriesFunction9applyFlatERKNS0_17SelectivityVectorEPKNS0_11ArrayVectorERKSt10shared_ptrIKNS0_4TypeEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.ln = shl nsw i32 %i.lj, 6
  %.val17.val.val.i.i.i.i.i = load ptr, ptr %i.lh, align 8, !tbaa !355
  br label %bb.ck

bb.cj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.lo = shl nsw i32 %i.lj, 6                    ; 4 uses
  %i.lp = add i32 %i.lo, 64
  %i.lq = sext i32 %i.lp to i64                   ; 3 uses
  %.0.off.i.i.i.i = add i32 %.063.i.i.i.i, 127
  %.not25.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not25.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_122MapFromEntriesFunction9applyFlatERKNS0_17SelectivityVectorEPKNS0_11ArrayVectorERKSt10shared_ptrIKNS0_4TypeEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.cj
  %i.lr = sext i32 %i.lo to i64                   ; 9 uses
  %.val19.val.val.i.i.i.i.i = load ptr, ptr %i.lh, align 8, !tbaa !355 ; 4 uses
  %i.ls = or disjoint i64 %i.lr, 1
  %umax578 = call i64 @llvm.umax.i64(i64 %i.ls, i64 %i.lq) ; 2 uses
  %i.lt = sub i64 %umax578, %i.lr                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.lt, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %.val19.val.val.i.i.i.i.i577 = ptrtoaddr ptr %.val19.val.val.i.i.i.i.i to i64
  %i.lu = or disjoint i64 %i.lr, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.lu, i64 %i.lq)
  %i.lv = xor i64 %i.lr, -1
  %i.lw = add i64 %umax, %i.lv                    ; 2 uses
  %i.lx = trunc i64 %i.lw to i32
  %i.ly = add i32 %i.lo, %i.lx
  %i.lz = icmp slt i32 %i.ly, %i.lo
  %i.ma = icmp ugt i64 %i.lw, 4294967295
  %i.mb = or i1 %i.lz, %i.ma
  %i.mc = sub i64 %i.gt, %.val19.val.val.i.i.i.i.i577
  %diff.check = icmp ult i64 %i.mc, 128
  %or.cond660 = select i1 %i.mb, i1 true, i1 %diff.check
  br i1 %or.cond660, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check579 = icmp ult i64 %i.lt, 32
  %n.mod.vf583 = and i64 %umax578, 1              ; 3 uses
  %n.vec584 = sub i64 %i.lt, %n.mod.vf583         ; 3 uses
  %i.md = add i64 %n.vec584, %i.lr                ; 2 uses
  br i1 %min.iters.check579, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.me = add i64 %index, %i.lr
  %i.mf = shl i64 %i.me, 32
  %i.mg = ashr exact i64 %i.mf, 32                ; 2 uses
  %i.mh = getelementptr inbounds [4 x i8], ptr %.val19.val.val.i.i.i.i.i, i64 %i.mg ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 32
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 64
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 96
  %wide.load = load <8 x i32>, ptr %i.mh, align 4, !tbaa !3
  %wide.load580 = load <8 x i32>, ptr %i.mi, align 4, !tbaa !3
  %wide.load581 = load <8 x i32>, ptr %i.mj, align 4, !tbaa !3
  %wide.load582 = load <8 x i32>, ptr %i.mk, align 4, !tbaa !3
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.mg ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 32
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 96
  store <8 x i32> %wide.load, ptr %i.ml, align 4, !tbaa !3
  store <8 x i32> %wide.load580, ptr %i.mm, align 4, !tbaa !3
  store <8 x i32> %wide.load581, ptr %i.mn, align 4, !tbaa !3
  store <8 x i32> %wide.load582, ptr %i.mo, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.mp = icmp eq i64 %index.next, %n.vec584
  br i1 %i.mp, label %middle.block, label %vector.body, !llvm.loop !364

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf583, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_122MapFromEntriesFunction9applyFlatERKNS0_17SelectivityVectorEPKNS0_11ArrayVectorERKSt10shared_ptrIKNS0_4TypeEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index585 = phi i64 [ %index.next587, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.mq = add i64 %index585, %i.lr
  %i.mr = shl i64 %i.mq, 32
  %i.ms = ashr exact i64 %i.mr, 32                ; 2 uses
  %i.mt = getelementptr inbounds [4 x i8], ptr %.val19.val.val.i.i.i.i.i, i64 %i.ms
  %wide.load586 = load <8 x i32>, ptr %i.mt, align 4, !tbaa !3
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.ms
  store <8 x i32> %wide.load586, ptr %i.mu, align 4, !tbaa !3
  %index.next587 = add nuw i64 %index585, 8       ; 2 uses
  %i.mv = icmp eq i64 %index.next587, %n.vec584
  br i1 %i.mv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !365

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n588 = icmp eq i64 %n.mod.vf583, 0
  br i1 %cmp.n588, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_122MapFromEntriesFunction9applyFlatERKNS0_17SelectivityVectorEPKNS0_11ArrayVectorERKSt10shared_ptrIKNS0_4TypeEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.023.i.i.i.i.i.ph = phi i64 [ %i.md, %middle.block ], [ %i.lr, %iter.check ], [ %i.lr, %vector.scevcheck ], [ %i.md, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.023.i.i.i.i.i = phi i64 [ %i.na, %vec.epilog.scalar.ph ], [ %.023.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i.i.i.i.i = shl i64 %.023.i.i.i.i.i, 32
  %i.mw = ashr exact i64 %sext.i.i.i.i.i, 32      ; 2 uses
  %i.mx = getelementptr inbounds [4 x i8], ptr %.val19.val.val.i.i.i.i.i, i64 %i.mw
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !3
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.mw
  store i32 %i.my, ptr %i.mz, align 4, !tbaa !3
  %i.na = add nuw i64 %.023.i.i.i.i.i, 1          ; 2 uses
  %i.nb = icmp ult i64 %i.na, %i.lq
  br i1 %i.nb, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_122MapFromEntriesFunction9applyFlatERKNS0_17SelectivityVectorEPKNS0_11ArrayVectorERKSt10shared_ptrIKNS0_4TypeEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !366

bb.ck:                                            ; preds = %bb.ck, %.lr.ph.i.i.i.i.i
  %.01522.i.i.i.i.i = phi i64 [ %i.lm, %.lr.ph.i.i.i.i.i ], [ %i.nh, %bb.ck ] ; 3 uses
  %i.nc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01522.i.i.i.i.i, i1 true)
  %61 = trunc nuw nsw i64 %i.nc to i32
  %62 = or disjoint i32 %i.ln, %61
  %63 = sext i32 %62 to i64                       ; 2 uses
  %i.nd = getelementptr inbounds [4 x i8], ptr %.val17.val.val.i.i.i.i.i, i64 %63
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !3
  %i.nf = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %63
  store i32 %i.ne, ptr %i.nf, align 4, !tbaa !3
  %i.ng = add i64 %.01522.i.i.i.i.i, -1
  %i.nh = and i64 %i.ng, %.01522.i.i.i.i.i        ; 2 uses
  %.not.i48.i.i.i.i = icmp eq i64 %i.nh, 0
  br i1 %.not.i48.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_122MapFromEntriesFunction9applyFlatERKNS0_17SelectivityVectorEPKNS0_11ArrayVectorERKSt10shared_ptrIKNS0_4TypeEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %bb.ck, !llvm.loop !367

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_122MapFromEntriesFunction9applyFlatERKNS0_17SelectivityVectorEPKNS0_11ArrayVectorERKSt10shared_ptrIKNS0_4TypeEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %vec.epilog.scalar.ph, %bb.ck, %middle.block, %vec.epilog.middle.block, %bb.cj, %.lr.ph.i.i.i.i
  %i.ni = add nsw i32 %i.li, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.ni, %i.jp
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !368

bb.cl:                                            ; preds = %._crit_edge.i.i.i.i
  %i.nj = ashr i32 %i.jl, 6
  %i.nk = and i32 %i.jl, 63
  %i.nl = zext nneg i32 %i.nk to i64
  %notmask.i49.i.i.i.i = shl nsw i64 -1, %i.nl
  %i.nm = xor i64 %notmask.i49.i.i.i.i, -1
  %i.nn = sext i32 %i.nj to i64
  %i.no = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %i.nn
  %i.np = load i64, ptr %i.no, align 8, !tbaa !123
  %i.nq = and i64 %i.np, %i.nm                    ; 2 uses
  %.not.i50.i.i.i.i = icmp eq i64 %i.nq, 0
  br i1 %.not.i50.i.i.i.i, label %.loopexit393, label %.preheader.i51.i.i.i.i

.preheader.i51.i.i.i.i:                           ; preds = %bb.cl
  %.val11.val.i55.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !282
  %i.nr = getelementptr i8, ptr %.val11.val.i55.i.i.i.i, i64 120
  %.val11.val.val.i56.i.i.i.i = load ptr, ptr %i.nr, align 8, !tbaa !355
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %.preheader.i51.i.i.i.i
  %.012.i57.i.i.i.i = phi i64 [ %i.nq, %.preheader.i51.i.i.i.i ], [ %i.nx, %bb.cm ] ; 3 uses
  %i.ns = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i57.i.i.i.i, i1 true)
  %64 = trunc nuw nsw i64 %i.ns to i32
  %65 = or disjoint i32 %i.jp, %64
  %66 = sext i32 %65 to i64                       ; 2 uses
  %i.nt = getelementptr inbounds [4 x i8], ptr %.val11.val.val.i56.i.i.i.i, i64 %66
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !3
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %66
  store i32 %i.nu, ptr %i.nv, align 4, !tbaa !3
  %i.nw = add nsw i64 %.012.i57.i.i.i.i, -1
  %i.nx = and i64 %i.nw, %.012.i57.i.i.i.i        ; 2 uses
  %.not10.i58.i.i.i.i = icmp eq i64 %i.nx, 0
  br i1 %.not10.i58.i.i.i.i, label %.loopexit393, label %bb.cm, !llvm.loop !363

.loopexit393:                                     ; preds = %bb.cm, %bb.cf, %vec.epilog.scalar.ph610.prol.loopexit, %vec.epilog.scalar.ph610, %middle.block606, %vec.epilog.middle.block620, %bb.cb, %bb.cc, %bb.ce, %._crit_edge.i.i.i.i, %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  store ptr %i.d, ptr %34, align 8, !tbaa !369
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  %i.ny = load i32, ptr %i.gh, align 8, !tbaa !217
  %i.nz = load ptr, ptr %5, align 8, !tbaa !192
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !297
  %i.ob = sext i32 %i.ny to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23, !noalias !371
  store i8 -1, ptr %17, align 1, !tbaa !31, !noalias !371
  %i.oc = getelementptr inbounds nuw i8, ptr %17, i64 1
  store i8 1, ptr %i.oc, align 1, !tbaa !376, !noalias !371
  %i.od = add nsw i64 %i.ob, 7
  %i.oe = lshr i64 %i.od, 3
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %35, i64 noundef %i.oe, ptr noundef %i.oa, ptr noundef nonnull align 1 dereferenceable(2) %17, i1 noundef zeroext false)
          to label %bb.cn unwind label %bb.fs

bb.cn:                                            ; preds = %.loopexit393
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23, !noalias !371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.of = load ptr, ptr %35, align 8, !tbaa !324  ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 44
  %i.oh = load i8, ptr %i.og, align 4, !tbaa !352
  %i.oi = and i8 %i.oh, 2
  %.not.i148 = icmp eq i8 %i.oi, 0
  br i1 %.not.i148, label %bb.cp, label %bb.co, !prof !85

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc149 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc149:                                        ; preds = %bb.co
  unreachable

bb.cp:                                            ; preds = %bb.cn
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !353
  store ptr %i.ok, ptr %i.e, align 8, !tbaa !378
  %i.ol = load ptr, ptr %i.j, align 8, !tbaa !338
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 56
  %i.on = load i8, ptr %i.om, align 8, !tbaa !379, !range !72, !noundef !73
  %i.oo = trunc nuw i8 %i.on to i1
  br i1 %i.oo, label %bb.cu, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.op = load ptr, ptr %32, align 16, !tbaa !156 ; 2 uses
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !46
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.os = load ptr, ptr %i.or, align 8
  %i.ot = invoke noundef zeroext i1 %i.os(ptr noundef nonnull align 8 dereferenceable(94) %i.op)
          to label %bb.cr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cr:                                            ; preds = %bb.cq
  br i1 %i.ot, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ou = load ptr, ptr %32, align 16, !tbaa !156 ; 2 uses
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !46
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %i.ox = load ptr, ptr %i.ow, align 8
  %i.oy = invoke noundef zeroext i1 %i.ox(ptr noundef nonnull align 8 dereferenceable(94) %i.ou)
          to label %bb.ct unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ct:                                            ; preds = %bb.cs
  br i1 %i.oy, label %bb.cu, label %bb.ft

bb.cu:                                            ; preds = %bb.ct, %bb.cr, %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store ptr %i.a, ptr %16, align 8
  %.sroa.4379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store ptr %23, ptr %.sroa.4379.0..sroa_idx, align 8
  %.sroa.5380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %1, ptr %.sroa.5380.0..sroa_idx, align 8
  %.sroa.6381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  store ptr %34, ptr %.sroa.6381.0..sroa_idx, align 8
  %.sroa.7382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  store ptr %i.e, ptr %.sroa.7382.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  store ptr %32, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.oz = load i8, ptr %i.gu, align 1, !tbaa !218, !range !72, !noundef !73
  %i.pa = trunc nuw i8 %i.oz to i1
  br i1 %i.pa, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i, label %bb.cv

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i: ; preds = %bb.cu
  %.0.in.pre.i.i.i.i = load i8, ptr %i.fr, align 4, !tbaa !60, !range !72
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.pb = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !216
  %i.pd = icmp eq i32 %i.pc, 0
  br i1 %i.pd, label %bb.cw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.cw:                                            ; preds = %bb.cv
  %i.pe = load i32, ptr %i.gh, align 8, !tbaa !217 ; 6 uses
  %i.pf = load i32, ptr %i.fp, align 8, !tbaa !211
  %i.pg = icmp eq i32 %i.pe, %i.pf
  br i1 %i.pg, label %bb.cx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.cx:                                            ; preds = %bb.cw
  %i.ph = load ptr, ptr %2, align 8, !tbaa !209   ; 2 uses
  %.not.i.i.i.i.i152 = icmp sgt i32 %i.pe, 0
  br i1 %.not.i.i.i.i.i152, label %bb.cy, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.cy:                                            ; preds = %bb.cx
  %i.pi = and i32 %i.pe, 2147483584               ; 3 uses
  %i.pj = zext nneg i32 %i.pi to i64
  %.not37.i.i.not.i.i.i.i573.not = icmp eq i32 %i.pi, 0
  br i1 %.not37.i.i.not.i.i.i.i573.not, label %.critedge.i.i.i.i.i.i, label %.lr.ph576

bb.cz:                                            ; preds = %.lr.ph576
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i574, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i, %i.pj
  br i1 %.not37.i.i.not.i.i.i.i, label %.lr.ph576, label %.critedge.i.i.i.i.i.i, !llvm.loop !354

.lr.ph576:                                        ; preds = %bb.cy, %bb.cz
  %indvars.iv.i.i.i.i574 = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.cz ], [ 0, %bb.cy ] ; 2 uses
  %i.pk = lshr exact i64 %indvars.iv.i.i.i.i574, 3
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.pk
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !123
  %i.pn = icmp eq i64 %i.pm, -1
  br i1 %i.pn, label %bb.cz, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, !llvm.loop !354

.critedge.i.i.i.i.i.i:                            ; preds = %bb.cz, %bb.cy
  %.not38.i.i.i.i.i.i = icmp eq i32 %i.pe, %i.pi
  br i1 %.not38.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, label %bb.da

bb.da:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.po = lshr i32 %i.pe, 6
  %i.pp = and i32 %i.pe, 63
  %i.pq = zext nneg i32 %i.pp to i64
  %notmask.i40.i.i.i.i.i.i = shl nsw i64 -1, %i.pq
  %i.pr = zext nneg i32 %i.po to i64
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %i.pr
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !123
  %.demorgan.i.i.i.i = or i64 %i.pt, %notmask.i40.i.i.i.i.i.i
  %i.pu = icmp eq i64 %.demorgan.i.i.i.i, -1
  %i.pv = zext i1 %i.pu to i16
  %i.pw = or disjoint i16 %i.pv, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i: ; preds = %.lr.ph576, %bb.da, %.critedge.i.i.i.i.i.i, %bb.cx, %bb.cw, %bb.cv
  %.sroa.0.0.insert.ext.i.i.i.i = phi i16 [ 256, %bb.cw ], [ 256, %bb.cv ], [ 257, %bb.cx ], [ 257, %.critedge.i.i.i.i.i.i ], [ %i.pw, %bb.da ], [ 256, %.lr.ph576 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i, ptr %i.fr, align 4
  %i.px = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i
  %.0.in.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i ], [ %i.px, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i ]
  %.0.i.i.i.i150 = trunc nuw i8 %.0.in.i.i.i.i to i1
  %i.py = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !216 ; 8 uses
  br i1 %.0.i.i.i.i150, label %bb.db, label %bb.ds

bb.db:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i
  %i.qa = load i32, ptr %i.gh, align 8, !tbaa !217 ; 2 uses
  %i.qb = icmp slt i32 %i.pz, %i.qa
  br i1 %i.qb, label %.lr.ph.i.i.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_122MapFromEntriesFunction9applyFlatERKNS0_17SelectivityVectorEPKNS0_11ArrayVectorERKSt10shared_ptrIKNS0_4TypeEERS2_EUliE1_EEvS9_T_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.db, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_122MapFromEntriesFunction9applyFlatERKNS0_17SelectivityVectorEPKNS0_11ArrayVectorERKSt10shared_ptrIKNS0_4TypeEERS2_EUliE1_ZNS2_22applyToSelectedNoThrowISK_EEvS9_T_EUlSM_E_EEvS9_SM_T0_ENKUlSM_E_clIiEEDaSM_.exit.i.i.i
  %.027.i.i.i = phi i32 [ %i.ri, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_122MapFromEntriesFunction9applyFlatERKNS0_17SelectivityVectorEPKNS0_11ArrayVectorERKSt10shared_ptrIKNS0_4TypeEERS2_EUliE1_ZNS2_22applyToSelectedNoThrowISK_EEvS9_T_EUlSM_E_EEvS9_SM_T0_ENKUlSM_E_clIiEEDaSM_.exit.i.i.i ], [ %i.pz, %bb.db ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_122MapFromEntriesFunction9applyFlatERKNS0_17SelectivityVectorEPKNS0_11ArrayVectorERKSt10shared_ptrIKNS0_4TypeEERNS0_4exec7EvalCtxEENKUliE1_clEi(ptr noundef nonnull align 8 dereferenceable(48) %16, i32 noundef %.027.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_122MapFromEntriesFunction9applyFlatERKNS0_17SelectivityVectorEPKNS0_11ArrayVectorERKSt10shared_ptrIKNS0_4TypeEERS2_EUliE1_ZNS2_22applyToSelectedNoThrowISK_EEvS9_T_EUlSM_E_EEvS9_SM_T0_ENKUlSM_E_clIiEEDaSM_.exit.i.i.i unwind label %bb.dc

bb.dc:                                            ; preds = %.lr.ph.i.i.i
  %i.qc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.qd = extractvalue { ptr, i32 } %i.qc, 0      ; 2 uses
  %i.qe = extractvalue { ptr, i32 } %i.qc, 1      ; 2 uses
  %i.qf = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #23
  %i.qg = icmp eq i32 %i.qe, %i.qf
  br i1 %i.qg, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.qh = call ptr @__cxa_begin_catch(ptr %i.qd) #23
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !380 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 144
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !27 ; 4 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 152
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !32
  %i.qo = icmp eq i64 %i.qn, 4
  br i1 %i.qo, label %.lr.ph.i.i.i.preheader.i.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.preheader.i.preheader.i.i.i:         ; preds = %bb.dd
  %i.qp = load i8, ptr %i.ql, align 1, !tbaa !31
  %or.cond.not.i.i.i.i.i.i = icmp eq i8 %i.qp, 85
  br i1 %or.cond.not.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i, label %.loopexit.i.i.i

tailrecurse.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.preheader.i.preheader.i.i.i
  %i.qq = getelementptr inbounds nuw i8, ptr %i.ql, i64 1
end_hunk_0
