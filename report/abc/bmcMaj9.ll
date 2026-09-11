Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj9?download=true
inline.NumInlined: 239
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 37
begin_hunk_0_@Exa9_ManExactSynthesis:bb.a
vector.ph735:                                     ; preds = %.lr.ph.split.us.i.preheader
  %n.vec736 = and i32 %i.hx, 2147483640           ; 3 uses
  %broadcast.splatinsert737 = insertelement <4 x i32> poison, i32 %i.ig, i64 0
  %broadcast.splat738 = shufflevector <4 x i32> %broadcast.splatinsert737, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %invariant.op996 = add <4 x i32> splat (i32 4), %broadcast.splat738 ; 2 uses
  %invariant.op998 = add <4 x i32> %broadcast.splat738, splat (i32 4)
  %invariant.op1000 = add <4 x i32> %invariant.op996, splat (i32 4)
  br label %vector.body739

vector.body739:                                   ; preds = %vector.body739, %vector.ph735
  %index740 = phi i32 [ 0, %vector.ph735 ], [ %index.next747, %vector.body739 ]
  %vec.phi741 = phi <4 x i32> [ zeroinitializer, %vector.ph735 ], [ %i.jq, %vector.body739 ]
  %vec.phi742 = phi <4 x i32> [ zeroinitializer, %vector.ph735 ], [ %i.jr, %vector.body739 ]
  %vec.ind743 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph735 ], [ %vec.ind.next748, %vector.body739 ] ; 5 uses
  %i.jj = add nsw <4 x i32> %vec.ind743, %broadcast.splat738
  %.reass997 = add <4 x i32> %vec.ind743, %invariant.op996
  %i.jk = icmp slt <4 x i32> %i.jj, splat (i32 6)
  %i.jl = icmp slt <4 x i32> %.reass997, splat (i32 6)
  %.reass999 = add <4 x i32> %vec.ind743, %invariant.op998
  %.reass1001 = add <4 x i32> %vec.ind743, %invariant.op1000
  %i.jm = udiv <4 x i32> %.reass999, splat (i32 5)
  %i.jn = udiv <4 x i32> %.reass1001, splat (i32 5)
  %i.jo = shl nuw nsw <4 x i32> %i.jm, splat (i32 2)
  %i.jp = shl nuw nsw <4 x i32> %i.jn, splat (i32 2)
  %predphi745 = select <4 x i1> %i.jk, <4 x i32> zeroinitializer, <4 x i32> %i.jo
  %predphi746 = select <4 x i1> %i.jl, <4 x i32> zeroinitializer, <4 x i32> %i.jp
  %i.jq = add <4 x i32> %predphi745, %vec.phi741  ; 2 uses
  %i.jr = add <4 x i32> %predphi746, %vec.phi742  ; 2 uses
  %index.next747 = add nuw i32 %index740, 8       ; 2 uses
  %vec.ind.next748 = add nuw <4 x i32> %vec.ind743, splat (i32 8)
  %i.js = icmp eq i32 %index.next747, %n.vec736
  br i1 %i.js, label %middle.block749, label %vector.body739, !llvm.loop !59

middle.block749:                                  ; preds = %vector.body739
  %bin.rdx750 = add <4 x i32> %i.jr, %i.jq
  %i.jt = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx750) ; 2 uses
  %cmp.n751 = icmp eq i32 %i.hx, %n.vec736
  br i1 %cmp.n751, label %._crit_edge.i204, label %.lr.ph.split.us.i.preheader917

.lr.ph.split.us.i.preheader917:                   ; preds = %.lr.ph.split.us.i.preheader, %middle.block749
  %.018.us.i.ph = phi i32 [ 0, %.lr.ph.split.us.i.preheader ], [ %i.jt, %middle.block749 ]
  %.01417.us.i.ph = phi i32 [ 0, %.lr.ph.split.us.i.preheader ], [ %n.vec736, %middle.block749 ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader917, %Exa9_ManCountAuxOneHot.exit.us.i
  %.018.us.i = phi i32 [ %i.jy, %Exa9_ManCountAuxOneHot.exit.us.i ], [ %.018.us.i.ph, %.lr.ph.split.us.i.preheader917 ]
  %.01417.us.i = phi i32 [ %i.jz, %Exa9_ManCountAuxOneHot.exit.us.i ], [ %.01417.us.i.ph, %.lr.ph.split.us.i.preheader917 ] ; 2 uses
  %i.ju = add nsw i32 %.01417.us.i, %i.ig         ; 2 uses
  %or.cond.i = icmp slt i32 %i.ju, 6
  br i1 %or.cond.i, label %Exa9_ManCountAuxOneHot.exit.us.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.split.us.i
  %i.jv = add nuw nsw i32 %i.ju, 4
  %i.jw = udiv i32 %i.jv, 5
  %i.jx = shl nuw nsw i32 %i.jw, 2
  br label %Exa9_ManCountAuxOneHot.exit.us.i

Exa9_ManCountAuxOneHot.exit.us.i:                 ; preds = %bb.af, %.lr.ph.split.us.i
  %.2.i.us.i = phi i32 [ %i.jx, %bb.af ], [ 0, %.lr.ph.split.us.i ]
  %i.jy = add nuw nsw i32 %.2.i.us.i, %.018.us.i  ; 2 uses
  %i.jz = add nuw nsw i32 %.01417.us.i, 1         ; 2 uses
  %exitcond40.not.i = icmp eq i32 %i.jz, %i.hx
  br i1 %exitcond40.not.i, label %._crit_edge.i204, label %.lr.ph.split.us.i, !llvm.loop !60

.lr.ph.split.us19.i:                              ; preds = %.lr.ph.split.us19.i.preheader921, %.lr.ph.split.us19.i
  %.018.us20.i = phi i32 [ %i.kd, %.lr.ph.split.us19.i ], [ %.018.us20.i.ph, %.lr.ph.split.us19.i.preheader921 ]
  %.01417.us21.i = phi i32 [ %i.ke, %.lr.ph.split.us19.i ], [ %.01417.us21.i.ph, %.lr.ph.split.us19.i.preheader921 ] ; 2 uses
  %i.ka = add nsw i32 %.01417.us21.i, %i.ig
  %i.kb = call i32 @llvm.smax.i32(i32 %i.ka, i32 1)
  %spec.select.i207 = shl i32 %i.kb, 2
  %i.kc = add i32 %.018.us20.i, -4
  %i.kd = add i32 %i.kc, %spec.select.i207        ; 2 uses
  %i.ke = add nuw nsw i32 %.01417.us21.i, 1       ; 2 uses
  %exitcond39.not.i = icmp eq i32 %i.ke, %i.hx
  br i1 %exitcond39.not.i, label %._crit_edge.i204, label %.lr.ph.split.us19.i, !llvm.loop !61

.lr.ph.split.us26.i:                              ; preds = %.lr.ph.split.us26.i.preheader926, %Exa9_ManCountAuxOneHot.exit.us29.i
  %.018.us27.i = phi i32 [ %i.km, %Exa9_ManCountAuxOneHot.exit.us29.i ], [ %.018.us27.i.ph, %.lr.ph.split.us26.i.preheader926 ]
  %.01417.us28.i = phi i32 [ %i.kn, %Exa9_ManCountAuxOneHot.exit.us29.i ], [ %.01417.us28.i.ph, %.lr.ph.split.us26.i.preheader926 ] ; 2 uses
  %i.kf = add nsw i32 %.01417.us28.i, %i.ig       ; 2 uses
  %or.cond33.i = icmp slt i32 %i.kf, 7
  br i1 %or.cond33.i, label %Exa9_ManCountAuxOneHot.exit.us29.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.split.us26.i
  %i.kg = add nuw nsw i32 %i.kf, 5
  %i.kh = udiv i32 %i.kg, 6
  %i.ki = add nsw i32 %i.kh, -1
  %i.kj = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ki, i1 true)
  %i.kk = shl nuw nsw i32 %i.kj, 2
  %i.kl = sub nuw nsw i32 128, %i.kk
  br label %Exa9_ManCountAuxOneHot.exit.us29.i

Exa9_ManCountAuxOneHot.exit.us29.i:               ; preds = %bb.ag, %.lr.ph.split.us26.i
  %.2.i.us30.i = phi i32 [ %i.kl, %bb.ag ], [ 0, %.lr.ph.split.us26.i ]
  %i.km = add nuw nsw i32 %.2.i.us30.i, %.018.us27.i ; 2 uses
  %i.kn = add nuw nsw i32 %.01417.us28.i, 1       ; 2 uses
  %exitcond.not.i206 = icmp eq i32 %i.kn, %i.hx
  br i1 %exitcond.not.i206, label %._crit_edge.i204, label %.lr.ph.split.us26.i, !llvm.loop !62

._crit_edge.i204:                                 ; preds = %Exa9_ManCountAuxOneHot.exit.us29.i, %.lr.ph.split.us19.i, %Exa9_ManCountAuxOneHot.exit.us.i, %middle.block709, %middle.block728, %middle.block749, %.lr.ph.i205, %bb.ae
  %.0.lcssa.i = phi i32 [ 0, %bb.ae ], [ %i.kd, %.lr.ph.split.us19.i ], [ 0, %.lr.ph.i205 ], [ %i.jy, %Exa9_ManCountAuxOneHot.exit.us.i ], [ %i.jt, %middle.block749 ], [ %i.ji, %middle.block728 ], [ %i.ix, %middle.block709 ], [ %i.km, %Exa9_ManCountAuxOneHot.exit.us29.i ] ; 8 uses
  %i.ko = shl nuw nsw i32 %i.hz, 1                ; 3 uses
  %i.kp = icmp slt i32 %i.hz, 1
  br i1 %i.kp, label %Exa9_ManCountAuxTotal.exit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i204
  switch i32 %.fr.i, label %Exa9_ManCountAuxTotal.exit [
    i32 3, label %bb.ak
    i32 1, label %Exa9_ManCountAuxTotal.exit.thread589
    i32 2, label %bb.ai
  ]

Exa9_ManCountAuxTotal.exit.thread589:             ; preds = %bb.ah
  %i.kq = add nsw i32 %i.ko, -1
  %i.kr = add nsw i32 %i.kq, %.0.lcssa.i          ; 2 uses
  %i.ks = add nsw i32 %i.kr, %i.ib
  %i.kt = load i32, ptr %i.gr, align 8, !tbaa !112 ; 2 uses
  %i.ku = add nsw i32 %i.ks, %i.kt
  br label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.kv = icmp samesign ult i32 %i.hz, 4
  br i1 %i.kv, label %Exa9_ManCountAuxTotal.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kw = add nuw nsw i32 %i.ko, 4
  %i.kx = udiv i32 %i.kw, 6
  %i.ky = add nsw i32 %i.kx, -1
  %i.kz = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ky, i1 true)
  %i.la = sub nuw nsw i32 32, %i.kz
  br label %Exa9_ManCountAuxTotal.exit.thread

bb.ak:                                            ; preds = %bb.ah
  %i.lb = icmp samesign ult i32 %i.hz, 3
  br i1 %i.lb, label %Exa9_ManCountAuxTotal.exit.thread587, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.lc = add nuw nsw i32 %i.ko, 4
  %i.ld = udiv i32 %i.lc, 5
  br label %Exa9_ManCountAuxTotal.exit.thread587

Exa9_ManCountAuxTotal.exit.thread:                ; preds = %bb.ai, %bb.aj
  %.2.i15.i.ph = phi i32 [ %i.la, %bb.aj ], [ 0, %bb.ai ]
  %i.le = add nsw i32 %.2.i15.i.ph, %.0.lcssa.i   ; 2 uses
  %i.lf = add nsw i32 %i.le, %i.ib
  %i.lg = load i32, ptr %i.gr, align 8, !tbaa !112 ; 2 uses
  %i.lh = add nsw i32 %i.lf, %i.lg
  br label %bb.an

Exa9_ManCountAuxTotal.exit.thread587:             ; preds = %bb.ak, %bb.al
  %.2.i15.i.ph586 = phi i32 [ %i.ld, %bb.al ], [ 0, %bb.ak ]
  %i.li = add nsw i32 %.2.i15.i.ph586, %.0.lcssa.i ; 2 uses
  %i.lj = add nsw i32 %i.li, %i.ib
  %i.lk = load i32, ptr %i.gr, align 8, !tbaa !112 ; 2 uses
  %i.ll = add nsw i32 %i.lj, %i.lk
  br label %bb.an

Exa9_ManCountAuxTotal.exit:                       ; preds = %._crit_edge.i204, %bb.ah
  %i.lm = add nsw i32 %.0.lcssa.i, %i.ib
  %i.ln = load i32, ptr %i.gr, align 8, !tbaa !112 ; 5 uses
  %i.lo = add nsw i32 %i.lm, %i.ln                ; 4 uses
  switch i32 %.fr.i, label %bb.am [
    i32 1, label %bb.an
    i32 2, label %.fold.split
    i32 3, label %switch.edge
  ]

switch.edge:                                      ; preds = %Exa9_ManCountAuxTotal.exit
  br label %bb.an

bb.am:                                            ; preds = %Exa9_ManCountAuxTotal.exit
  br label %bb.an

.fold.split:                                      ; preds = %Exa9_ManCountAuxTotal.exit
  br label %bb.an

bb.an:                                            ; preds = %Exa9_ManCountAuxTotal.exit.thread, %Exa9_ManCountAuxTotal.exit.thread587, %Exa9_ManCountAuxTotal.exit.thread589, %switch.edge, %Exa9_ManCountAuxTotal.exit, %.fold.split, %bb.am
  %i.lp = phi i32 [ %i.lo, %Exa9_ManCountAuxTotal.exit ], [ %i.lo, %bb.am ], [ %i.lo, %switch.edge ], [ %i.ku, %Exa9_ManCountAuxTotal.exit.thread589 ], [ %i.ll, %Exa9_ManCountAuxTotal.exit.thread587 ], [ %i.lh, %Exa9_ManCountAuxTotal.exit.thread ], [ %i.lo, %.fold.split ]
  %i.lq = phi i32 [ %i.ln, %Exa9_ManCountAuxTotal.exit ], [ %i.ln, %bb.am ], [ %i.ln, %switch.edge ], [ %i.kt, %Exa9_ManCountAuxTotal.exit.thread589 ], [ %i.lk, %Exa9_ManCountAuxTotal.exit.thread587 ], [ %i.lg, %Exa9_ManCountAuxTotal.exit.thread ], [ %i.ln, %.fold.split ]
  %i.lr = phi i32 [ %.0.lcssa.i, %Exa9_ManCountAuxTotal.exit ], [ %.0.lcssa.i, %bb.am ], [ %.0.lcssa.i, %switch.edge ], [ %i.kr, %Exa9_ManCountAuxTotal.exit.thread589 ], [ %i.li, %Exa9_ManCountAuxTotal.exit.thread587 ], [ %i.le, %Exa9_ManCountAuxTotal.exit.thread ], [ %.0.lcssa.i, %.fold.split ]
  %i.ls = phi ptr [ @.str.3, %Exa9_ManCountAuxTotal.exit ], [ @.str.6, %bb.am ], [ @.str.5, %switch.edge ], [ @.str.3, %Exa9_ManCountAuxTotal.exit.thread589 ], [ @.str.5, %Exa9_ManCountAuxTotal.exit.thread587 ], [ @.str.4, %Exa9_ManCountAuxTotal.exit.thread ], [ @.str.4, %.fold.split ]
  %i.lt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ib, ptr noundef nonnull %i.ls, i32 noundef %i.lr, i32 noundef %i.lq, i32 noundef %i.lp) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ad, %Exa9_ManAlloc.exit
  %i.lu = getelementptr inbounds nuw i8, ptr %i.fw, i64 52 ; 19 uses
  store i32 1, ptr %i.lu, align 4, !tbaa !42
  %i.lv = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 13 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 4 ; 4 uses
  store i32 100, ptr %i.lv, align 8, !tbaa !44
  %i.lx = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #21 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 8 ; 4 uses
  store ptr %i.lx, ptr %i.ly, align 8, !tbaa !45
  %i.lz = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 13 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4 ; 4 uses
  store i32 100, ptr %i.lz, align 8, !tbaa !44
  %i.mb = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #21 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 8 ; 8 uses
  store ptr %i.mb, ptr %i.mc, align 8, !tbaa !45
  %i.md = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 18 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 4 ; 5 uses
  store i32 0, ptr %i.me, align 4, !tbaa !46
  store i32 100, ptr %i.md, align 8, !tbaa !44
  %i.mf = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #21
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 15 uses
  store ptr %i.mf, ptr %i.mg, align 8, !tbaa !45
  %i.mh = load i32, ptr %i.gb, align 4, !tbaa !38
  %i.mi = icmp sgt i32 %i.mh, 0
  br i1 %i.mi, label %.lr.ph.i209, label %._crit_edge281.i

.lr.ph.i209:                                      ; preds = %bb.ao
  %i.mj = getelementptr inbounds nuw i8, ptr %i.fw, i64 56 ; 6 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.fw, i64 44 ; 12 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.fw, i64 40 ; 12 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.fw, i64 48 ; 12 uses
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge278.i, %.lr.ph.i209
  %.promoted267398.i = phi ptr [ %i.mb, %.lr.ph.i209 ], [ %.promoted267402.i, %._crit_edge278.i ]
  %.promoted264393.i = phi i32 [ 100, %.lr.ph.i209 ], [ %.promoted264397.i, %._crit_edge278.i ]
  %.promoted259386.i = phi ptr [ %i.lx, %.lr.ph.i209 ], [ %.promoted259390.i, %._crit_edge278.i ]
  %.promoted256381.i = phi i32 [ 100, %.lr.ph.i209 ], [ %.promoted256385.i, %._crit_edge278.i ]
  %indvars.iv347.i = phi i32 [ 2, %.lr.ph.i209 ], [ %indvars.iv.next348.i, %._crit_edge278.i ] ; 2 uses
  %.0138279.i = phi i32 [ 0, %.lr.ph.i209 ], [ %i.tc, %._crit_edge278.i ] ; 3 uses
  %i.mn = load i32, ptr %i.fy, align 8, !tbaa !37 ; 2 uses
  %i.mo = add nsw i32 %i.mn, %.0138279.i          ; 2 uses
  %i.mp = shl i32 %.0138279.i, 2                  ; 5 uses
  br label %bb.ar

bb.aq:                                            ; preds = %bb.by
  br i1 %i.mt, label %bb.ar, label %.preheader247.i, !llvm.loop !63

.preheader247.i:                                  ; preds = %bb.aq
  %.not149276.i = icmp slt i32 %i.mo, 1
  br i1 %.not149276.i, label %._crit_edge278.i, label %.preheader246.lr.ph.i

.preheader246.lr.ph.i:                            ; preds = %.preheader247.i
  %i.mq = add i32 %i.mn, %indvars.iv347.i
  %i.mr = or disjoint i32 %i.mp, 2                ; 2 uses
  %i.ms = or disjoint i32 %i.mp, 3                ; 2 uses
  %.neg473.i = xor i32 %i.mp, -1
  br label %.preheader246.i

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.promoted267399.i = phi ptr [ %.promoted267398.i, %bb.ap ], [ %.promoted267402.i, %bb.aq ] ; 2 uses
  %.promoted264394.i = phi i32 [ %.promoted264393.i, %bb.ap ], [ %.promoted264397.i, %bb.aq ]
  %.promoted259387.i = phi ptr [ %.promoted259386.i, %bb.ap ], [ %.promoted259390.i, %bb.aq ] ; 2 uses
  %.promoted256382.i = phi i32 [ %.promoted256381.i, %bb.ap ], [ %.promoted256385.i, %bb.aq ]
  %i.mt = phi i1 [ true, %bb.ap ], [ false, %bb.aq ]
  %.0132272.i = phi i32 [ 0, %bb.ap ], [ 2, %bb.aq ]
  store i32 0, ptr %i.lw, align 4, !tbaa !46
  store i32 0, ptr %i.ma, align 4, !tbaa !46
  %i.mu = load i32, ptr %i.gd, align 8, !tbaa !39 ; 2 uses
  %.not152270.i = icmp slt i32 %i.mu, 1
  br i1 %.not152270.i, label %._crit_edge.thread.i, label %.preheader245.lr.ph.i

.preheader245.lr.ph.i:                            ; preds = %bb.ar
  %i.mv = or disjoint i32 %.0132272.i, %i.mp      ; 5 uses
  %i.mw = or disjoint i32 %i.mv, 1                ; 2 uses
  %.neg.i = xor i32 %i.mv, -1
  br label %.preheader245.i

.preheader245.i:                                  ; preds = %.split254.us.i, %.preheader245.lr.ph.i
  %.val162.us.i = phi i32 [ %i.mu, %.preheader245.lr.ph.i ], [ %i.qd, %.split254.us.i ] ; 2 uses
  %.promoted267.i = phi ptr [ %.promoted267399.i, %.preheader245.lr.ph.i ], [ %.promoted267402.i, %.split254.us.i ] ; 8 uses
  %.promoted264.i = phi i32 [ %.promoted264394.i, %.preheader245.lr.ph.i ], [ %.promoted264397.i, %.split254.us.i ] ; 8 uses
  %.promoted262.i = phi i32 [ 0, %.preheader245.lr.ph.i ], [ %.promoted262392.i, %.split254.us.i ] ; 6 uses
  %i.mx = phi ptr [ %.promoted259387.i, %.preheader245.lr.ph.i ], [ %.promoted259390.i, %.split254.us.i ] ; 9 uses
  %.promoted256.i = phi i32 [ %.promoted256382.i, %.preheader245.lr.ph.i ], [ %.promoted256385.i, %.split254.us.i ] ; 8 uses
  %.promoted.i = phi i32 [ 0, %.preheader245.lr.ph.i ], [ %.promoted380.i, %.split254.us.i ] ; 6 uses
  %.0134271.i = phi i32 [ 1, %.preheader245.lr.ph.i ], [ %i.qc, %.split254.us.i ] ; 9 uses
  %.not154.not.i = icmp sgt i32 %.0134271.i, %i.mo
  br i1 %.not154.not.i, label %.preheader245.split.us.preheader.i, label %.preheader245.split.i

.preheader245.split.us.preheader.i:               ; preds = %.preheader245.i
  %i.my = mul nsw i32 %.val162.us.i, %i.mv
  %i.mz = add i32 %i.my, %.0134271.i
  %i.na = sub nsw i32 0, %i.mz
  %i.nb = load ptr, ptr %i.ho, align 8, !tbaa !40
  call void @kissat_add(ptr noundef %i.nb, i32 noundef %i.na) #19
  %i.nc = load ptr, ptr %i.ho, align 8, !tbaa !40
  call void @kissat_add(ptr noundef %i.nc, i32 noundef 0) #19
  %i.nd = load i32, ptr %i.lu, align 4, !tbaa !42
  %.not.i.i.us.i = icmp eq i32 %i.nd, 0
  br i1 %.not.i.i.us.i, label %bb.av, label %bb.as

bb.as:                                            ; preds = %.preheader245.split.us.preheader.i
  %i.ne = load i32, ptr %i.mj, align 8, !tbaa !47
  %.not12.i.i.us.i = icmp eq i32 %i.ne, 0
  br i1 %.not12.i.i.us.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.nf = load i32, ptr %i.mk, align 4, !tbaa !48
  %i.ng = add nsw i32 %i.nf, 1
  store i32 %i.ng, ptr %i.mk, align 4, !tbaa !48
  br label %Exa9_ManAddUnit.exit.us.i

bb.au:                                            ; preds = %bb.as
  %i.nh = load i32, ptr %i.ml, align 8, !tbaa !49
  %i.ni = add nsw i32 %i.nh, 1
  store i32 %i.ni, ptr %i.ml, align 8, !tbaa !49
  br label %Exa9_ManAddUnit.exit.us.i

bb.av:                                            ; preds = %.preheader245.split.us.preheader.i
  %i.nj = load i32, ptr %i.mm, align 8, !tbaa !50
  %i.nk = add nsw i32 %i.nj, 1
  store i32 %i.nk, ptr %i.mm, align 8, !tbaa !50
  br label %Exa9_ManAddUnit.exit.us.i

Exa9_ManAddUnit.exit.us.i:                        ; preds = %bb.av, %bb.au, %bb.at
  %i.nl = load ptr, ptr %i.ho, align 8, !tbaa !40
  %i.nm = call i32 @kissat_is_inconsistent(ptr noundef %i.nl) #19
  %.not13.i.i.not.us.i = icmp eq i32 %i.nm, 0
  br i1 %.not13.i.i.not.us.i, label %.preheader245.split.us.1.i, label %.split.us.i

.preheader245.split.us.1.i:                       ; preds = %Exa9_ManAddUnit.exit.us.i
  %.val162.us.1.i = load i32, ptr %i.gd, align 8, !tbaa !39
  %.neg471.i = mul i32 %.val162.us.1.i, %.neg.i
  %.neg472.i = sub i32 %.neg471.i, %.0134271.i
  %i.nn = load ptr, ptr %i.ho, align 8, !tbaa !40
  call void @kissat_add(ptr noundef %i.nn, i32 noundef %.neg472.i) #19
  %i.no = load ptr, ptr %i.ho, align 8, !tbaa !40
  call void @kissat_add(ptr noundef %i.no, i32 noundef 0) #19
  %i.np = load i32, ptr %i.lu, align 4, !tbaa !42
  %.not.i.i.us.1.i = icmp eq i32 %i.np, 0
  br i1 %.not.i.i.us.1.i, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %.preheader245.split.us.1.i
  %i.nq = load i32, ptr %i.mj, align 8, !tbaa !47
  %.not12.i.i.us.1.i = icmp eq i32 %i.nq, 0
  br i1 %.not12.i.i.us.1.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.nr = load i32, ptr %i.mk, align 4, !tbaa !48
  %i.ns = add nsw i32 %i.nr, 1
  store i32 %i.ns, ptr %i.mk, align 4, !tbaa !48
  br label %Exa9_ManAddUnit.exit.us.1.i

bb.ay:                                            ; preds = %bb.aw
  %i.nt = load i32, ptr %i.ml, align 8, !tbaa !49
  %i.nu = add nsw i32 %i.nt, 1
  store i32 %i.nu, ptr %i.ml, align 8, !tbaa !49
  br label %Exa9_ManAddUnit.exit.us.1.i

bb.az:                                            ; preds = %.preheader245.split.us.1.i
  %i.nv = load i32, ptr %i.mm, align 8, !tbaa !50
  %i.nw = add nsw i32 %i.nv, 1
  store i32 %i.nw, ptr %i.mm, align 8, !tbaa !50
  br label %Exa9_ManAddUnit.exit.us.1.i

Exa9_ManAddUnit.exit.us.1.i:                      ; preds = %bb.az, %bb.ay, %bb.ax
  %i.nx = load ptr, ptr %i.ho, align 8, !tbaa !40
  %i.ny = call i32 @kissat_is_inconsistent(ptr noundef %i.nx) #19
  %.not13.i.i.not.us.1.i = icmp eq i32 %i.ny, 0
  br i1 %.not13.i.i.not.us.1.i, label %.split254.us.i, label %.split.us.i

.preheader245.split.i:                            ; preds = %.preheader245.i
  %i.nz = sext i32 %.promoted262.i to i64         ; 2 uses
  %i.oa = sext i32 %.promoted.i to i64            ; 2 uses
  %i.ob = mul nsw i32 %.val162.us.i, %i.mv
  %i.oc = add i32 %.0134271.i, %i.ob
  %i.od = shl nsw i32 %i.oc, 1
  %i.oe = icmp eq i32 %.promoted.i, %.promoted256.i
  br i1 %i.oe, label %bb.bc, label %Vec_IntPush.exit.i

.split.us.i:                                      ; preds = %Exa9_ManAddUnit.exit.us.1.i, %Exa9_ManAddUnit.exit.us.i
  %.not.i.i = icmp eq ptr %i.mx, null
  br i1 %.not.i.i, label %Vec_IntFree.exit.i, label %bb.ba

bb.ba:                                            ; preds = %.split.us.i
  call void @free(ptr noundef nonnull %i.mx) #19
  %.pre.i215 = load ptr, ptr %i.mc, align 8, !tbaa !45
  br label %Vec_IntFree.exit.i

Vec_IntFree.exit.i:                               ; preds = %bb.ba, %.split.us.i
  %i.of = phi ptr [ %.promoted267.i, %.split.us.i ], [ %.pre.i215, %bb.ba ] ; 2 uses
  call void @free(ptr noundef nonnull %i.lv) #19
  %.not.i174.i = icmp eq ptr %i.of, null
  br i1 %.not.i174.i, label %Vec_IntFree.exit175.i, label %bb.bb

bb.bb:                                            ; preds = %Vec_IntFree.exit.i
  call void @free(ptr noundef nonnull %i.of) #19
  br label %Vec_IntFree.exit175.i

Vec_IntFree.exit175.i:                            ; preds = %bb.bb, %Vec_IntFree.exit.i
  call void @free(ptr noundef nonnull %i.lz) #19
  br label %.thread

bb.bc:                                            ; preds = %.preheader245.split.i
  %i.og = icmp slt i32 %.promoted256.i, 16
  br i1 %i.og, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %.not9.i.i.i = icmp eq ptr %i.mx, null
  br i1 %.not9.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.oh = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.mx, i64 noundef 64) #22
  br label %Vec_IntPush.exit.i

bb.bf:                                            ; preds = %bb.bd
end_hunk_0
begin_hunk_1_@Exa9_ManExactSynthesis:bb.a
Vec_IntPush.exit197.i:                            ; preds = %bb.da, %bb.cz, %bb.cx, %bb.cw, %bb.cv, %.preheader243.i
  %storemerge289.i = phi ptr [ %.promoted287.i, %.preheader243.i ], [ %.promoted287.i, %bb.cx ], [ %i.tn, %bb.cw ], [ %i.tm, %bb.cv ], [ %i.ts, %bb.cz ], [ %i.tt, %bb.da ] ; 4 uses
  %spec.select.sink.i194285.i = phi i32 [ %.promoted284.i, %.preheader243.i ], [ %.promoted290.i, %bb.cx ], [ 16, %bb.cw ], [ 16, %bb.cv ], [ %spec.select.i190.i, %bb.cz ], [ %spec.select.i190.i, %bb.da ] ; 4 uses
  %indvars.iv.next351.i = or disjoint i64 %i.tg, 1 ; 5 uses
  %i.tu = getelementptr inbounds [4 x i8], ptr %storemerge289.i, i64 %i.tg
  store i32 %i.tj, ptr %i.tu, align 4, !tbaa !51
  %i.tv = load i32, ptr %i.go, align 4, !tbaa !111
  %i.tw = load i32, ptr %i.gb, align 4, !tbaa !38
  %i.tx = load i32, ptr %i.gd, align 8, !tbaa !39
  %i.ty = shl i32 %i.tw, 2
  %reass.mul.i199.i = mul i32 %i.ty, %i.tx
  %i.tz = add i32 %i.tv, %.2136304.i
  %i.ua = add i32 %i.tz, %reass.mul.i199.i
  %i.ub = icmp eq i32 %.promoted290.i, %.promoted292.i
  br i1 %i.ub, label %bb.db, label %Vec_IntPush.exit207.i

bb.db:                                            ; preds = %Vec_IntPush.exit197.i
  %i.uc = icmp slt i32 %.promoted292.i, 16
  br i1 %i.uc, label %bb.dc, label %bb.df

bb.dc:                                            ; preds = %bb.db
  %.not9.i.i205.i = icmp eq ptr %.promoted295.i, null
  br i1 %.not9.i.i205.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ud = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.promoted295.i, i64 noundef 64) #22
  br label %Vec_IntPush.exit207.i

bb.de:                                            ; preds = %bb.dc
  %i.ue = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntPush.exit207.i

bb.df:                                            ; preds = %bb.db
  %i.uf = icmp samesign ult i32 %.promoted292.i, 1073741823
  %i.ug = shl nuw i32 %.promoted292.i, 1
  %spec.select.i200.i = select i1 %i.uf, i32 %i.ug, i32 2147483647 ; 4 uses
  %.not.i9.i201.i = icmp ult i32 %.promoted292.i, %spec.select.i200.i
  br i1 %.not.i9.i201.i, label %bb.dg, label %Vec_IntPush.exit207.i

bb.dg:                                            ; preds = %bb.df
  %.not9.i10.i202.i = icmp eq ptr %.promoted295.i, null
  %i.uh = zext nneg i32 %spec.select.i200.i to i64
  %i.ui = shl nuw nsw i64 %i.uh, 2                ; 2 uses
  br i1 %.not9.i10.i202.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.uj = call ptr @realloc(ptr noundef nonnull %.promoted295.i, i64 noundef %i.ui) #22
  br label %Vec_IntPush.exit207.i

bb.di:                                            ; preds = %bb.dg
  %i.uk = call noalias ptr @malloc(i64 noundef %i.ui) #21
  br label %Vec_IntPush.exit207.i

Vec_IntPush.exit207.i:                            ; preds = %bb.di, %bb.dh, %bb.df, %bb.de, %bb.dd, %Vec_IntPush.exit197.i
  %storemerge235297.i = phi ptr [ %.promoted295.i, %Vec_IntPush.exit197.i ], [ %.promoted295.i, %bb.df ], [ %i.ue, %bb.de ], [ %i.ud, %bb.dd ], [ %i.uj, %bb.dh ], [ %i.uk, %bb.di ] ; 4 uses
  %spec.select.sink.i204293.i = phi i32 [ %.promoted292.i, %Vec_IntPush.exit197.i ], [ %.promoted292.i, %bb.df ], [ 16, %bb.de ], [ 16, %bb.dd ], [ %spec.select.i200.i, %bb.dh ], [ %spec.select.i200.i, %bb.di ] ; 4 uses
  %i.ul = getelementptr inbounds [4 x i8], ptr %storemerge235297.i, i64 %i.tg
  store i32 %i.ua, ptr %i.ul, align 4, !tbaa !51
  %.val172.1.i = load i32, ptr %i.gb, align 4, !tbaa !38
  %.val173.1.i = load i32, ptr %i.gd, align 8, !tbaa !39
  %i.um = shl i32 %.val172.1.i, 2
  %reass.add.i.1.i = or disjoint i32 %i.um, 1
  %reass.mul.i.1.i = mul i32 %reass.add.i.1.i, %.val173.1.i
  %i.un = add i32 %reass.mul.i.1.i, %.2136304.i
  %i.uo = shl nsw i32 %i.un, 1
  %i.up = trunc nsw i64 %indvars.iv.next351.i to i32 ; 2 uses
  %i.uq = icmp eq i32 %spec.select.sink.i194285.i, %i.up
  br i1 %i.uq, label %bb.dj, label %Vec_IntPush.exit197.1.i

bb.dj:                                            ; preds = %Vec_IntPush.exit207.i
  %i.ur = icmp slt i32 %.promoted290.i, 15
  br i1 %i.ur, label %Vec_IntPush.exit197.1.sink.split.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.us = icmp samesign ult i32 %.promoted290.i, 1073741822
  %i.ut = shl nuw nsw i32 %spec.select.sink.i194285.i, 1
  %spec.select.i190.1.i = select i1 %i.us, i32 %i.ut, i32 2147483647 ; 2 uses
  %i.uu = zext nneg i32 %spec.select.i190.1.i to i64 ; 2 uses
  %.not.i9.i191.1.i = icmp samesign ult i64 %indvars.iv.next351.i, %i.uu
  br i1 %.not.i9.i191.1.i, label %bb.dl, label %Vec_IntPush.exit197.1.i

bb.dl:                                            ; preds = %bb.dk
  %i.uv = shl nuw nsw i64 %i.uu, 2
  br label %Vec_IntPush.exit197.1.sink.split.i

Vec_IntPush.exit197.1.sink.split.i:               ; preds = %bb.dl, %bb.dj
  %.sink508.i = phi i64 [ %i.uv, %bb.dl ], [ 64, %bb.dj ]
  %spec.select.sink.i194285.1.ph.i = phi i32 [ %spec.select.i190.1.i, %bb.dl ], [ 16, %bb.dj ]
  %i.uw = call ptr @realloc(ptr noundef nonnull %storemerge289.i, i64 noundef %.sink508.i) #22
  br label %Vec_IntPush.exit197.1.i

Vec_IntPush.exit197.1.i:                          ; preds = %Vec_IntPush.exit197.1.sink.split.i, %bb.dk, %Vec_IntPush.exit207.i
  %storemerge289.1.i = phi ptr [ %storemerge289.i, %Vec_IntPush.exit207.i ], [ %storemerge289.i, %bb.dk ], [ %i.uw, %Vec_IntPush.exit197.1.sink.split.i ] ; 5 uses
  %spec.select.sink.i194285.1.i = phi i32 [ %spec.select.sink.i194285.i, %Vec_IntPush.exit207.i ], [ %spec.select.sink.i194285.i, %bb.dk ], [ %spec.select.sink.i194285.1.ph.i, %Vec_IntPush.exit197.1.sink.split.i ] ; 2 uses
  %indvars.iv.next353.1.i = add nuw i32 %.promoted290.i, 2 ; 3 uses
  %i.ux = getelementptr inbounds [4 x i8], ptr %storemerge289.1.i, i64 %indvars.iv.next351.i
  store i32 %i.uo, ptr %i.ux, align 4, !tbaa !51
  %i.uy = load i32, ptr %i.go, align 4, !tbaa !111
  %i.uz = load i32, ptr %i.gb, align 4, !tbaa !38
  %i.va = load i32, ptr %i.gd, align 8, !tbaa !39
  %i.vb = shl i32 %i.uz, 2
  %reass.add.i198.1.i = or disjoint i32 %i.vb, 1
  %reass.mul.i199.1.i = mul i32 %reass.add.i198.1.i, %i.va
  %i.vc = add i32 %i.uy, %.2136304.i
  %i.vd = add i32 %i.vc, %reass.mul.i199.1.i
  %i.ve = icmp eq i32 %spec.select.sink.i204293.i, %i.up
  br i1 %i.ve, label %bb.dm, label %Vec_IntPush.exit207.1.i

bb.dm:                                            ; preds = %Vec_IntPush.exit197.1.i
  %i.vf = icmp slt i32 %.promoted290.i, 15
  br i1 %i.vf, label %Vec_IntPush.exit207.1.sink.split.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.vg = icmp samesign ult i32 %.promoted290.i, 1073741822
  %i.vh = shl nuw nsw i32 %spec.select.sink.i204293.i, 1
  %spec.select.i200.1.i = select i1 %i.vg, i32 %i.vh, i32 2147483647 ; 2 uses
  %i.vi = zext nneg i32 %spec.select.i200.1.i to i64 ; 2 uses
  %.not.i9.i201.1.i = icmp samesign ult i64 %indvars.iv.next351.i, %i.vi
  br i1 %.not.i9.i201.1.i, label %bb.do, label %Vec_IntPush.exit207.1.i

bb.do:                                            ; preds = %bb.dn
  %i.vj = shl nuw nsw i64 %i.vi, 2
  br label %Vec_IntPush.exit207.1.sink.split.i

Vec_IntPush.exit207.1.sink.split.i:               ; preds = %bb.do, %bb.dm
  %.sink509.i = phi i64 [ %i.vj, %bb.do ], [ 64, %bb.dm ]
  %spec.select.sink.i204293.1.ph.i = phi i32 [ %spec.select.i200.1.i, %bb.do ], [ 16, %bb.dm ]
  %i.vk = call ptr @realloc(ptr noundef nonnull %storemerge235297.i, i64 noundef %.sink509.i) #22
  br label %Vec_IntPush.exit207.1.i

Vec_IntPush.exit207.1.i:                          ; preds = %Vec_IntPush.exit207.1.sink.split.i, %bb.dn, %Vec_IntPush.exit197.1.i
  %storemerge235297.1.i = phi ptr [ %storemerge235297.i, %Vec_IntPush.exit197.1.i ], [ %storemerge235297.i, %bb.dn ], [ %i.vk, %Vec_IntPush.exit207.1.sink.split.i ] ; 3 uses
  %spec.select.sink.i204293.1.i = phi i32 [ %spec.select.sink.i204293.i, %Vec_IntPush.exit197.1.i ], [ %spec.select.sink.i204293.i, %bb.dn ], [ %spec.select.sink.i204293.1.ph.i, %Vec_IntPush.exit207.1.sink.split.i ] ; 2 uses
  %i.vl = getelementptr inbounds [4 x i8], ptr %storemerge235297.1.i, i64 %indvars.iv.next351.i
  store i32 %i.vd, ptr %i.vl, align 4, !tbaa !51
  store i32 %indvars.iv.next353.1.i, ptr %i.lw, align 4, !tbaa !46
  store i32 %spec.select.sink.i194285.1.i, ptr %i.lv, align 8
  store ptr %storemerge289.1.i, ptr %i.ly, align 8
  store i32 %indvars.iv.next353.1.i, ptr %i.ma, align 4, !tbaa !46
  store i32 %spec.select.sink.i204293.1.i, ptr %i.lz, align 8
  store ptr %storemerge235297.1.i, ptr %i.mc, align 8
  %i.vm = add nuw nsw i32 %.2136304.i, 1
  %i.vn = load i32, ptr %i.gd, align 8, !tbaa !39 ; 2 uses
  %.not.not.i = icmp slt i32 %.2136304.i, %i.vn
  br i1 %.not.not.i, label %.preheader243.i, label %._crit_edge305.i, !llvm.loop !68

._crit_edge305.i:                                 ; preds = %Vec_IntPush.exit207.1.i
  %i.vo = call fastcc i32 @Exa9_ManAddOneHot(ptr noundef nonnull %i.fw, ptr noundef nonnull %i.lv, ptr noundef nonnull %i.lz)
  %.not145.i = icmp eq i32 %i.vo, 0
  br i1 %.not145.i, label %._crit_edge305.thread.i.thread, label %.preheader242.i

.preheader242.i:                                  ; preds = %._crit_edge305.i
  %i.vp = load i32, ptr %i.gd, align 8, !tbaa !39 ; 2 uses
  %.not146319.i = icmp slt i32 %i.vp, 1
  br i1 %.not146319.i, label %._crit_edge322.i.thread, label %.lr.ph321.i

.lr.ph321.i:                                      ; preds = %.preheader242.i
  %i.vq = getelementptr inbounds nuw i8, ptr %i.fw, i64 56
  %i.vr = getelementptr inbounds nuw i8, ptr %i.fw, i64 44 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.fw, i64 40 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.fw, i64 48 ; 2 uses
  br label %bb.dr

._crit_edge305.thread.i:                          ; preds = %._crit_edge281.i
  %.not.i293 = icmp eq ptr %.promoted287410.i, null
  br i1 %.not.i293, label %Vec_IntFree.exit294, label %._crit_edge305.thread.i.thread

._crit_edge305.thread.i.thread:                   ; preds = %._crit_edge305.i, %._crit_edge305.thread.i
  %i.vu = phi ptr [ %.promoted287410.i, %._crit_edge305.thread.i ], [ %storemerge289.1.i, %._crit_edge305.i ]
  call void @free(ptr noundef nonnull %i.vu) #19
  %.pre480 = load ptr, ptr %i.mc, align 8, !tbaa !45
  br label %Vec_IntFree.exit294

Vec_IntFree.exit294:                              ; preds = %._crit_edge305.thread.i, %._crit_edge305.thread.i.thread
  %i.vv = phi ptr [ %.promoted295415.i, %._crit_edge305.thread.i ], [ %.pre480, %._crit_edge305.thread.i.thread ] ; 2 uses
  call void @free(ptr noundef nonnull %i.lv) #19
  %.not.i291 = icmp eq ptr %i.vv, null
  br i1 %.not.i291, label %Vec_IntFree.exit292, label %bb.dp

bb.dp:                                            ; preds = %Vec_IntFree.exit294
  call void @free(ptr noundef nonnull %i.vv) #19
  br label %Vec_IntFree.exit292

Vec_IntFree.exit292:                              ; preds = %Vec_IntFree.exit294, %bb.dp
  call void @free(ptr noundef nonnull %i.lz) #19
  %i.vw = load ptr, ptr %i.mg, align 8, !tbaa !45 ; 2 uses
  %.not.i289 = icmp eq ptr %i.vw, null
  br i1 %.not.i289, label %Vec_IntFree.exit290, label %bb.dq

bb.dq:                                            ; preds = %Vec_IntFree.exit292
  call void @free(ptr noundef nonnull %i.vw) #19
  br label %Vec_IntFree.exit290

Vec_IntFree.exit290:                              ; preds = %Vec_IntFree.exit292, %bb.dq
  call void @free(ptr noundef nonnull %i.md) #19
  br label %.thread

bb.dr:                                            ; preds = %bb.fc, %.lr.ph321.i
  %.val171426.i = phi i32 [ %i.vp, %.lr.ph321.i ], [ %i.aas, %bb.fc ]
  %.3137320.i = phi i32 [ 1, %.lr.ph321.i ], [ %i.aar, %bb.fc ] ; 9 uses
  store i32 0, ptr %i.me, align 4, !tbaa !46
  %i.vx = load i32, ptr %i.gb, align 4, !tbaa !38 ; 3 uses
  %i.vy = icmp sgt i32 %i.vx, 0
  br i1 %i.vy, label %.lr.ph315.i, label %.preheader241.i

.preheader241.loopexit.i:                         ; preds = %bb.ej
  %.val171.pre.i = load i32, ptr %i.gd, align 8, !tbaa !39
  br label %.preheader241.i

.preheader241.i:                                  ; preds = %.preheader241.loopexit.i, %bb.dr
  %.val171.i = phi i32 [ %.val171.pre.i, %.preheader241.loopexit.i ], [ %.val171426.i, %bb.dr ]
  %.val170.i = phi i32 [ %i.yu, %.preheader241.loopexit.i ], [ %i.vx, %bb.dr ]
  %.promoted316.i = phi i32 [ %.promoted309418.i, %.preheader241.loopexit.i ], [ 0, %bb.dr ] ; 11 uses
  %i.vz = sext i32 %.promoted316.i to i64         ; 2 uses
  %i.wa = shl i32 %.val171.i, 2
  %reass.mul.i217.i = mul i32 %i.wa, %.val170.i
  %i.wb = add i32 %reass.mul.i217.i, %.3137320.i
  %i.wc = shl nsw i32 %i.wb, 1
  %i.wd = load i32, ptr %i.md, align 8, !tbaa !44
  %i.we = icmp eq i32 %.promoted316.i, %i.wd
  br i1 %i.we, label %bb.ek, label %.preheader241.Vec_IntPush.exit225_crit_edge.i

.preheader241.Vec_IntPush.exit225_crit_edge.i:    ; preds = %.preheader241.i
  %.pre427.i = load ptr, ptr %i.mg, align 8, !tbaa !45
  br label %Vec_IntPush.exit225.i

.lr.ph315.i:                                      ; preds = %bb.dr, %bb.ej
  %i.wf = phi i32 [ %i.yu, %bb.ej ], [ %i.vx, %bb.dr ]
  %.promoted309.i = phi i32 [ %.promoted309418.i, %bb.ej ], [ 0, %bb.dr ] ; 14 uses
  %.1139313.i = phi i32 [ %i.yv, %bb.ej ], [ 0, %bb.dr ] ; 3 uses
  %i.wg = load i32, ptr %i.fy, align 8, !tbaa !37
  %i.wh = add nsw i32 %i.wg, %.1139313.i
  %.not148.not.i = icmp slt i32 %i.wh, %.3137320.i
  br i1 %.not148.not.i, label %bb.ej, label %.preheader240.i

.preheader240.i:                                  ; preds = %.lr.ph315.i
  %i.wi = shl i32 %.1139313.i, 2                  ; 4 uses
  %i.wj = sext i32 %.promoted309.i to i64         ; 4 uses
  %.val.i = load i32, ptr %i.gd, align 8, !tbaa !39
  %i.wk = mul nsw i32 %.val.i, %i.wi
  %i.wl = add i32 %i.wk, %.3137320.i
  %i.wm = shl nsw i32 %i.wl, 1
  %i.wn = load i32, ptr %i.md, align 8, !tbaa !44
  %i.wo = icmp eq i32 %.promoted309.i, %i.wn
  br i1 %i.wo, label %bb.ds, label %.preheader240.Vec_IntPush.exit215_crit_edge.i

.preheader240.Vec_IntPush.exit215_crit_edge.i:    ; preds = %.preheader240.i
  %.pre420.i = load ptr, ptr %i.mg, align 8, !tbaa !45
  br label %Vec_IntPush.exit215.i

bb.ds:                                            ; preds = %.preheader240.i
  %i.wp = icmp slt i32 %.promoted309.i, 16
  br i1 %i.wp, label %bb.dt, label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  %i.wq = load ptr, ptr %i.mg, align 8, !tbaa !45 ; 2 uses
  %.not9.i.i213.i = icmp eq ptr %i.wq, null
  br i1 %.not9.i.i213.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.wr = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.wq, i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i211.i

bb.dv:                                            ; preds = %bb.dt
  %i.ws = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i211.i

bb.dw:                                            ; preds = %bb.ds
  %i.wt = icmp samesign ult i32 %.promoted309.i, 1073741823
  %i.wu = shl nuw i32 %.promoted309.i, 1
  %spec.select.i208.i = select i1 %i.wt, i32 %i.wu, i32 2147483647 ; 4 uses
  %.not.i9.i209.i = icmp ult i32 %.promoted309.i, %spec.select.i208.i
  %.pre421.i = load ptr, ptr %i.mg, align 8, !tbaa !45 ; 3 uses
  br i1 %.not.i9.i209.i, label %bb.dx, label %Vec_IntPush.exit215.i

bb.dx:                                            ; preds = %bb.dw
  %.not9.i10.i210.i = icmp eq ptr %.pre421.i, null
  %i.wv = zext nneg i32 %spec.select.i208.i to i64
  %i.ww = shl nuw nsw i64 %i.wv, 2                ; 2 uses
  br i1 %.not9.i10.i210.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.wx = call ptr @realloc(ptr noundef nonnull %.pre421.i, i64 noundef %i.ww) #22
  br label %Vec_IntGrow.exit11.sink.split.i211.i

bb.dz:                                            ; preds = %bb.dx
  %i.wy = call noalias ptr @malloc(i64 noundef %i.ww) #21
  br label %Vec_IntGrow.exit11.sink.split.i211.i

Vec_IntGrow.exit11.sink.split.i211.i:             ; preds = %bb.dz, %bb.dy, %bb.dv, %bb.du
  %storemerge237.i = phi ptr [ %i.ws, %bb.dv ], [ %i.wr, %bb.du ], [ %i.wx, %bb.dy ], [ %i.wy, %bb.dz ] ; 2 uses
  %spec.select.sink.i212.i = phi i32 [ 16, %bb.dv ], [ 16, %bb.du ], [ %spec.select.i208.i, %bb.dy ], [ %spec.select.i208.i, %bb.dz ]
  store ptr %storemerge237.i, ptr %i.mg, align 8, !tbaa !45
  store i32 %spec.select.sink.i212.i, ptr %i.md, align 8, !tbaa !44
  br label %Vec_IntPush.exit215.i

Vec_IntPush.exit215.i:                            ; preds = %Vec_IntGrow.exit11.sink.split.i211.i, %bb.dw, %.preheader240.Vec_IntPush.exit215_crit_edge.i
  %i.wz = phi ptr [ %.pre420.i, %.preheader240.Vec_IntPush.exit215_crit_edge.i ], [ %.pre421.i, %bb.dw ], [ %storemerge237.i, %Vec_IntGrow.exit11.sink.split.i211.i ] ; 4 uses
  %indvars.iv.next358.i = add nsw i64 %i.wj, 1    ; 3 uses
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.wz, i64 %i.wj
  store i32 %i.wm, ptr %i.xa, align 4, !tbaa !51
  %.val.1.i = load i32, ptr %i.gd, align 8, !tbaa !39
  %i.xb = or disjoint i32 %i.wi, 1
  %i.xc = mul nsw i32 %.val.1.i, %i.xb
  %i.xd = add i32 %i.xc, %.3137320.i
  %i.xe = shl nsw i32 %i.xd, 1
  %i.xf = load i32, ptr %i.md, align 8, !tbaa !44 ; 2 uses
  %i.xg = trunc nsw i64 %indvars.iv.next358.i to i32
  %i.xh = icmp eq i32 %i.xf, %i.xg
  br i1 %i.xh, label %bb.ea, label %Vec_IntPush.exit215.1.i

bb.ea:                                            ; preds = %Vec_IntPush.exit215.i
  %i.xi = icmp slt i32 %.promoted309.i, 15
  br i1 %i.xi, label %Vec_IntGrow.exit11.sink.split.i211.1.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.xj = icmp samesign ult i32 %.promoted309.i, 1073741822
  %i.xk = shl nuw nsw i32 %i.xf, 1
  %spec.select.i208.1.i = select i1 %i.xj, i32 %i.xk, i32 2147483647 ; 2 uses
  %i.xl = zext nneg i32 %spec.select.i208.1.i to i64 ; 2 uses
  %.not.i9.i209.1.i = icmp samesign ult i64 %indvars.iv.next358.i, %i.xl
  br i1 %.not.i9.i209.1.i, label %bb.ec, label %Vec_IntPush.exit215.1.i

bb.ec:                                            ; preds = %bb.eb
  %i.xm = shl nuw nsw i64 %i.xl, 2
  br label %Vec_IntGrow.exit11.sink.split.i211.1.i

Vec_IntGrow.exit11.sink.split.i211.1.i:           ; preds = %bb.ec, %bb.ea
  %.sink510.i = phi i64 [ %i.xm, %bb.ec ], [ 64, %bb.ea ]
  %spec.select.sink.i212.1.i = phi i32 [ %spec.select.i208.1.i, %bb.ec ], [ 16, %bb.ea ]
  %i.xn = call ptr @realloc(ptr noundef nonnull %i.wz, i64 noundef %.sink510.i) #22 ; 2 uses
  store ptr %i.xn, ptr %i.mg, align 8, !tbaa !45
  store i32 %spec.select.sink.i212.1.i, ptr %i.md, align 8, !tbaa !44
  br label %Vec_IntPush.exit215.1.i

Vec_IntPush.exit215.1.i:                          ; preds = %Vec_IntGrow.exit11.sink.split.i211.1.i, %bb.eb, %Vec_IntPush.exit215.i
  %i.xo = phi ptr [ %i.xn, %Vec_IntGrow.exit11.sink.split.i211.1.i ], [ %i.wz, %bb.eb ], [ %i.wz, %Vec_IntPush.exit215.i ] ; 4 uses
  %indvars.iv.next358.1.i = add nsw i64 %i.wj, 2  ; 3 uses
  %i.xp = getelementptr inbounds [4 x i8], ptr %i.xo, i64 %indvars.iv.next358.i
  store i32 %i.xe, ptr %i.xp, align 4, !tbaa !51
  %i.xq = trunc nsw i64 %indvars.iv.next358.1.i to i32 ; 2 uses
  %i.xr = or disjoint i32 %i.wi, 2
  %.val.1360.i = load i32, ptr %i.gd, align 8, !tbaa !39
  %i.xs = mul nsw i32 %.val.1360.i, %i.xr
  %i.xt = add i32 %i.xs, %.3137320.i
  %i.xu = shl nsw i32 %i.xt, 1
  %i.xv = load i32, ptr %i.md, align 8, !tbaa !44
  %i.xw = icmp eq i32 %i.xv, %i.xq
  br i1 %i.xw, label %bb.ed, label %Vec_IntPush.exit215.1369.i

bb.ed:                                            ; preds = %Vec_IntPush.exit215.1.i
  %i.xx = icmp slt i32 %.promoted309.i, 14
  br i1 %i.xx, label %Vec_IntGrow.exit11.sink.split.i211.1367.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.xy = icmp samesign ult i32 %.promoted309.i, 1073741821
  %i.xz = shl nuw nsw i32 %i.xq, 1
  %spec.select.i208.1361.i = select i1 %i.xy, i32 %i.xz, i32 2147483647 ; 2 uses
  %i.ya = zext nneg i32 %spec.select.i208.1361.i to i64 ; 2 uses
  %.not.i9.i209.1362.i = icmp samesign ult i64 %indvars.iv.next358.1.i, %i.ya
  br i1 %.not.i9.i209.1362.i, label %bb.ef, label %Vec_IntPush.exit215.1369.i

bb.ef:                                            ; preds = %bb.ee
  %i.yb = shl nuw nsw i64 %i.ya, 2
  br label %Vec_IntGrow.exit11.sink.split.i211.1367.i

Vec_IntGrow.exit11.sink.split.i211.1367.i:        ; preds = %bb.ef, %bb.ed
  %.sink511.i = phi i64 [ %i.yb, %bb.ef ], [ 64, %bb.ed ]
  %spec.select.sink.i212.1366.i = phi i32 [ %spec.select.i208.1361.i, %bb.ef ], [ 16, %bb.ed ]
  %i.yc = call ptr @realloc(ptr noundef nonnull %i.xo, i64 noundef %.sink511.i) #22 ; 2 uses
  store ptr %i.yc, ptr %i.mg, align 8, !tbaa !45
  store i32 %spec.select.sink.i212.1366.i, ptr %i.md, align 8, !tbaa !44
  br label %Vec_IntPush.exit215.1369.i

Vec_IntPush.exit215.1369.i:                       ; preds = %Vec_IntGrow.exit11.sink.split.i211.1367.i, %bb.ee, %Vec_IntPush.exit215.1.i
  %i.yd = phi ptr [ %i.yc, %Vec_IntGrow.exit11.sink.split.i211.1367.i ], [ %i.xo, %bb.ee ], [ %i.xo, %Vec_IntPush.exit215.1.i ] ; 4 uses
  %indvars.iv.next358.1368.i = add nsw i64 %i.wj, 3 ; 3 uses
  %i.ye = getelementptr inbounds [4 x i8], ptr %i.yd, i64 %indvars.iv.next358.1.i
  store i32 %i.xu, ptr %i.ye, align 4, !tbaa !51
  %.val.1.1.i = load i32, ptr %i.gd, align 8, !tbaa !39
  %i.yf = or disjoint i32 %i.wi, 3
  %i.yg = mul nsw i32 %.val.1.1.i, %i.yf
  %i.yh = add i32 %i.yg, %.3137320.i
  %i.yi = shl nsw i32 %i.yh, 1
  %i.yj = load i32, ptr %i.md, align 8, !tbaa !44 ; 2 uses
  %i.yk = trunc nsw i64 %indvars.iv.next358.1368.i to i32
  %i.yl = icmp eq i32 %i.yj, %i.yk
  br i1 %i.yl, label %bb.eg, label %Vec_IntPush.exit215.1.1.i

bb.eg:                                            ; preds = %Vec_IntPush.exit215.1369.i
  %i.ym = icmp slt i32 %.promoted309.i, 13
  br i1 %i.ym, label %Vec_IntGrow.exit11.sink.split.i211.1.1.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.yn = icmp samesign ult i32 %.promoted309.i, 1073741820
  %i.yo = shl nuw nsw i32 %i.yj, 1
  %spec.select.i208.1.1.i = select i1 %i.yn, i32 %i.yo, i32 2147483647 ; 2 uses
  %i.yp = zext nneg i32 %spec.select.i208.1.1.i to i64 ; 2 uses
  %.not.i9.i209.1.1.i = icmp samesign ult i64 %indvars.iv.next358.1368.i, %i.yp
  br i1 %.not.i9.i209.1.1.i, label %bb.ei, label %Vec_IntPush.exit215.1.1.i

bb.ei:                                            ; preds = %bb.eh
  %i.yq = shl nuw nsw i64 %i.yp, 2
  br label %Vec_IntGrow.exit11.sink.split.i211.1.1.i

Vec_IntGrow.exit11.sink.split.i211.1.1.i:         ; preds = %bb.ei, %bb.eg
  %.sink512.i = phi i64 [ %i.yq, %bb.ei ], [ 64, %bb.eg ]
  %spec.select.sink.i212.1.1.i = phi i32 [ %spec.select.i208.1.1.i, %bb.ei ], [ 16, %bb.eg ]
  %i.yr = call ptr @realloc(ptr noundef nonnull %i.yd, i64 noundef %.sink512.i) #22 ; 2 uses
  store ptr %i.yr, ptr %i.mg, align 8, !tbaa !45
  store i32 %spec.select.sink.i212.1.1.i, ptr %i.md, align 8, !tbaa !44
  br label %Vec_IntPush.exit215.1.1.i

Vec_IntPush.exit215.1.1.i:                        ; preds = %Vec_IntGrow.exit11.sink.split.i211.1.1.i, %bb.eh, %Vec_IntPush.exit215.1369.i
  %i.ys = phi ptr [ %i.yr, %Vec_IntGrow.exit11.sink.split.i211.1.1.i ], [ %i.yd, %bb.eh ], [ %i.yd, %Vec_IntPush.exit215.1369.i ]
  %indvars.iv.next358.1.1.i = add i32 %.promoted309.i, 4 ; 2 uses
  %i.yt = getelementptr inbounds [4 x i8], ptr %i.ys, i64 %indvars.iv.next358.1368.i
  store i32 %i.yi, ptr %i.yt, align 4, !tbaa !51
  store i32 %indvars.iv.next358.1.1.i, ptr %i.me, align 4, !tbaa !46
  %.pre422.i = load i32, ptr %i.gb, align 4, !tbaa !38
  br label %bb.ej

bb.ej:                                            ; preds = %Vec_IntPush.exit215.1.1.i, %.lr.ph315.i
  %i.yu = phi i32 [ %.pre422.i, %Vec_IntPush.exit215.1.1.i ], [ %i.wf, %.lr.ph315.i ] ; 3 uses
  %.promoted309418.i = phi i32 [ %indvars.iv.next358.1.1.i, %Vec_IntPush.exit215.1.1.i ], [ %.promoted309.i, %.lr.ph315.i ] ; 2 uses
  %i.yv = add nuw nsw i32 %.1139313.i, 1          ; 2 uses
  %i.yw = icmp slt i32 %i.yv, %i.yu
  br i1 %i.yw, label %.lr.ph315.i, label %.preheader241.loopexit.i, !llvm.loop !69

bb.ek:                                            ; preds = %.preheader241.i
  %i.yx = icmp slt i32 %.promoted316.i, 16
  br i1 %i.yx, label %bb.el, label %bb.eo

bb.el:                                            ; preds = %bb.ek
  %i.yy = load ptr, ptr %i.mg, align 8, !tbaa !45 ; 2 uses
  %.not9.i.i223.i = icmp eq ptr %i.yy, null
  br i1 %.not9.i.i223.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.yz = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.yy, i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i221.i

bb.en:                                            ; preds = %bb.el
  %i.za = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i221.i

bb.eo:                                            ; preds = %bb.ek
  %i.zb = icmp samesign ult i32 %.promoted316.i, 1073741823
  %i.zc = shl nuw i32 %.promoted316.i, 1
  %spec.select.i218.i = select i1 %i.zb, i32 %i.zc, i32 2147483647 ; 4 uses
  %.not.i9.i219.i = icmp ult i32 %.promoted316.i, %spec.select.i218.i
  %.pre428.i = load ptr, ptr %i.mg, align 8, !tbaa !45 ; 3 uses
  br i1 %.not.i9.i219.i, label %bb.ep, label %Vec_IntPush.exit225.i

bb.ep:                                            ; preds = %bb.eo
  %.not9.i10.i220.i = icmp eq ptr %.pre428.i, null
  %i.zd = zext nneg i32 %spec.select.i218.i to i64
  %i.ze = shl nuw nsw i64 %i.zd, 2                ; 2 uses
  br i1 %.not9.i10.i220.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.zf = call ptr @realloc(ptr noundef nonnull %.pre428.i, i64 noundef %i.ze) #22
  br label %Vec_IntGrow.exit11.sink.split.i221.i

bb.er:                                            ; preds = %bb.ep
  %i.zg = call noalias ptr @malloc(i64 noundef %i.ze) #21
  br label %Vec_IntGrow.exit11.sink.split.i221.i

Vec_IntGrow.exit11.sink.split.i221.i:             ; preds = %bb.er, %bb.eq, %bb.en, %bb.em
  %storemerge236.i = phi ptr [ %i.za, %bb.en ], [ %i.yz, %bb.em ], [ %i.zf, %bb.eq ], [ %i.zg, %bb.er ] ; 2 uses
  %spec.select.sink.i222.i = phi i32 [ 16, %bb.en ], [ 16, %bb.em ], [ %spec.select.i218.i, %bb.eq ], [ %spec.select.i218.i, %bb.er ]
  store ptr %storemerge236.i, ptr %i.mg, align 8, !tbaa !45
  store i32 %spec.select.sink.i222.i, ptr %i.md, align 8, !tbaa !44
  br label %Vec_IntPush.exit225.i

Vec_IntPush.exit225.i:                            ; preds = %Vec_IntGrow.exit11.sink.split.i221.i, %bb.eo, %.preheader241.Vec_IntPush.exit225_crit_edge.i
  %i.zh = phi ptr [ %.pre427.i, %.preheader241.Vec_IntPush.exit225_crit_edge.i ], [ %.pre428.i, %bb.eo ], [ %storemerge236.i, %Vec_IntGrow.exit11.sink.split.i221.i ] ; 5 uses
  %indvars.iv.next371.i = add nsw i64 %i.vz, 1    ; 4 uses
  %i.zi = getelementptr inbounds [4 x i8], ptr %i.zh, i64 %i.vz
  store i32 %i.wc, ptr %i.zi, align 4, !tbaa !51
  %.val170.1.i = load i32, ptr %i.gb, align 4, !tbaa !38
  %.val171.1.i = load i32, ptr %i.gd, align 8, !tbaa !39
  %i.zj = shl i32 %.val170.1.i, 2
  %reass.add.i216.1.i = or disjoint i32 %i.zj, 1
  %reass.mul.i217.1.i = mul i32 %reass.add.i216.1.i, %.val171.1.i
  %i.zk = add i32 %reass.mul.i217.1.i, %.3137320.i
  %i.zl = shl nsw i32 %i.zk, 1                    ; 2 uses
  %i.zm = load i32, ptr %i.md, align 8, !tbaa !44 ; 2 uses
  %i.zn = trunc nsw i64 %indvars.iv.next371.i to i32
  %i.zo = icmp eq i32 %i.zm, %i.zn
  br i1 %i.zo, label %bb.es, label %Vec_IntPush.exit225.1.i

bb.es:                                            ; preds = %Vec_IntPush.exit225.i
  %i.zp = icmp slt i32 %.promoted316.i, 15
  br i1 %i.zp, label %Vec_IntGrow.exit11.sink.split.i221.1.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.zq = icmp samesign ult i32 %.promoted316.i, 1073741822
  %i.zr = shl nuw nsw i32 %i.zm, 1
  %spec.select.i218.1.i = select i1 %i.zq, i32 %i.zr, i32 2147483647 ; 2 uses
  %i.zs = zext nneg i32 %spec.select.i218.1.i to i64 ; 2 uses
  %.not.i9.i219.1.i = icmp samesign ult i64 %indvars.iv.next371.i, %i.zs
  br i1 %.not.i9.i219.1.i, label %bb.eu, label %.thread.i208

.thread.i208:                                     ; preds = %bb.et
  %indvars.iv.next371.1483.i = add nuw i32 %.promoted316.i, 2 ; 2 uses
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %indvars.iv.next371.i
  store i32 %i.zl, ptr %i.zt, align 4, !tbaa !51
  store i32 %indvars.iv.next371.1483.i, ptr %i.me, align 4, !tbaa !46
  br label %.lr.ph.i.i

bb.eu:                                            ; preds = %bb.et
  %i.zu = shl nuw nsw i64 %i.zs, 2
  br label %Vec_IntGrow.exit11.sink.split.i221.1.i

Vec_IntGrow.exit11.sink.split.i221.1.i:           ; preds = %bb.eu, %bb.es
  %.sink513.i = phi i64 [ %i.zu, %bb.eu ], [ 64, %bb.es ]
  %spec.select.sink.i222.1.i = phi i32 [ %spec.select.i218.1.i, %bb.eu ], [ 16, %bb.es ]
  %i.zv = call ptr @realloc(ptr noundef nonnull %i.zh, i64 noundef %.sink513.i) #22 ; 2 uses
  store ptr %i.zv, ptr %i.mg, align 8, !tbaa !45
  store i32 %spec.select.sink.i222.1.i, ptr %i.md, align 8, !tbaa !44
  br label %Vec_IntPush.exit225.1.i

Vec_IntPush.exit225.1.i:                          ; preds = %Vec_IntGrow.exit11.sink.split.i221.1.i, %Vec_IntPush.exit225.i
  %.val169.i = phi ptr [ %i.zv, %Vec_IntGrow.exit11.sink.split.i221.1.i ], [ %i.zh, %Vec_IntPush.exit225.i ] ; 2 uses
  %indvars.iv.next371.1.i = add i32 %.promoted316.i, 2 ; 3 uses
  %i.zw = getelementptr inbounds [4 x i8], ptr %.val169.i, i64 %indvars.iv.next371.i
  store i32 %i.zl, ptr %i.zw, align 4, !tbaa !51
  store i32 %indvars.iv.next371.1.i, ptr %i.me, align 4, !tbaa !46
  %i.zx = icmp eq i32 %indvars.iv.next371.1.i, 0
  br i1 %i.zx, label %bb.fc, label %bb.ev

bb.ev:                                            ; preds = %Vec_IntPush.exit225.1.i
  %i.zy = icmp sgt i32 %.promoted316.i, -2
  br i1 %i.zy, label %.lr.ph.i.i, label %._crit_edge.i226.i

.lr.ph.i.i:                                       ; preds = %bb.ev, %.thread.i208
  %.val169484489.i = phi ptr [ %i.zh, %.thread.i208 ], [ %.val169.i, %bb.ev ]
  %indvars.iv.next371.1485488.i = phi i32 [ %indvars.iv.next371.1483.i, %.thread.i208 ], [ %indvars.iv.next371.1.i, %bb.ev ]
  %wide.trip.count.i.i = zext nneg i32 %indvars.iv.next371.1485488.i to i64
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ew, %.lr.ph.i.i
  %indvars.iv.i230.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i232.i, %bb.ew ] ; 2 uses
  %i.zz = load ptr, ptr %i.ho, align 8, !tbaa !40
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %.val169484489.i, i64 %indvars.iv.i230.i
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !51 ; 2 uses
  %i.aac = ashr i32 %i.aab, 1                     ; 2 uses
  %i.aad = and i32 %i.aab, 1
  %.not.i.i231.i = icmp eq i32 %i.aad, 0
  %i.aae = sub nsw i32 0, %i.aac
  %i.aaf = select i1 %.not.i.i231.i, i32 %i.aac, i32 %i.aae
  call void @kissat_add(ptr noundef %i.zz, i32 noundef %i.aaf) #19
  %indvars.iv.next.i232.i = add nuw nsw i64 %indvars.iv.i230.i, 1 ; 2 uses
  %exitcond.not.i233.i = icmp eq i64 %indvars.iv.next.i232.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i233.i, label %._crit_edge.i226.i, label %bb.ew, !llvm.loop !1

._crit_edge.i226.i:                               ; preds = %bb.ew, %bb.ev
  %i.aag = load ptr, ptr %i.ho, align 8, !tbaa !40
  call void @kissat_add(ptr noundef %i.aag, i32 noundef 0) #19
  %i.aah = load i32, ptr %i.lu, align 4, !tbaa !42
  %.not.i227.i = icmp eq i32 %i.aah, 0
  br i1 %.not.i227.i, label %bb.fa, label %bb.ex

bb.ex:                                            ; preds = %._crit_edge.i226.i
  %i.aai = load i32, ptr %i.vq, align 8, !tbaa !47
  %.not12.i228.i = icmp eq i32 %i.aai, 0
  br i1 %.not12.i228.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aaj = load i32, ptr %i.vr, align 4, !tbaa !48
  %i.aak = add nsw i32 %i.aaj, 1
  store i32 %i.aak, ptr %i.vr, align 4, !tbaa !48
  br label %Exa9_KissatAddClause.exit234.i

bb.ez:                                            ; preds = %bb.ex
  %i.aal = load i32, ptr %i.vs, align 8, !tbaa !49
  %i.aam = add nsw i32 %i.aal, 1
  store i32 %i.aam, ptr %i.vs, align 8, !tbaa !49
  br label %Exa9_KissatAddClause.exit234.i

bb.fa:                                            ; preds = %._crit_edge.i226.i
  %i.aan = load i32, ptr %i.vt, align 8, !tbaa !50
  %i.aao = add nsw i32 %i.aan, 1
  store i32 %i.aao, ptr %i.vt, align 8, !tbaa !50
  br label %Exa9_KissatAddClause.exit234.i

Exa9_KissatAddClause.exit234.i:                   ; preds = %bb.fa, %bb.ez, %bb.ey
  %i.aap = load ptr, ptr %i.ho, align 8, !tbaa !40
  %i.aaq = call i32 @kissat_is_inconsistent(ptr noundef %i.aap) #19
  %.not13.i229.not.i = icmp eq i32 %i.aaq, 0
  br i1 %.not13.i229.not.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %Exa9_KissatAddClause.exit234.i
  call fastcc void @Vec_IntFree(ptr noundef nonnull %i.lv)
  call fastcc void @Vec_IntFree(ptr noundef nonnull %i.lz)
  call fastcc void @Vec_IntFree(ptr noundef nonnull %i.md)
  br label %.thread

bb.fc:                                            ; preds = %Exa9_KissatAddClause.exit234.i, %Vec_IntPush.exit225.1.i
  %i.aar = add nuw nsw i32 %.3137320.i, 1
  %i.aas = load i32, ptr %i.gd, align 8, !tbaa !39 ; 2 uses
  %.not146.not.i = icmp slt i32 %.3137320.i, %i.aas
  br i1 %.not146.not.i, label %bb.dr, label %._crit_edge322.i, !llvm.loop !70

._crit_edge322.i:                                 ; preds = %bb.fc
  %.pre478 = load ptr, ptr %i.ly, align 8, !tbaa !45 ; 2 uses
  %.not.i287 = icmp eq ptr %.pre478, null
  br i1 %.not.i287, label %Vec_IntFree.exit288, label %._crit_edge322.i.thread

._crit_edge322.i.thread:                          ; preds = %.preheader242.i, %._crit_edge322.i
  %i.aat = phi ptr [ %.pre478, %._crit_edge322.i ], [ %storemerge289.1.i, %.preheader242.i ]
  call void @free(ptr noundef nonnull %i.aat) #19
  br label %Vec_IntFree.exit288

Vec_IntFree.exit288:                              ; preds = %._crit_edge322.i, %._crit_edge322.i.thread
  call void @free(ptr noundef nonnull %i.lv) #19
  %i.aau = load ptr, ptr %i.mc, align 8, !tbaa !45 ; 2 uses
  %.not.i285 = icmp eq ptr %i.aau, null
  br i1 %.not.i285, label %Vec_IntFree.exit286, label %bb.fd

bb.fd:                                            ; preds = %Vec_IntFree.exit288
  call void @free(ptr noundef nonnull %i.aau) #19
  br label %Vec_IntFree.exit286

Vec_IntFree.exit286:                              ; preds = %Vec_IntFree.exit288, %bb.fd
  call void @free(ptr noundef nonnull %i.lz) #19
  %i.aav = load ptr, ptr %i.mg, align 8, !tbaa !45 ; 2 uses
  %.not.i283 = icmp eq ptr %i.aav, null
  br i1 %.not.i283, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %Vec_IntFree.exit286
  call void @free(ptr noundef nonnull %i.aav) #19
  br label %bb.ff

bb.ff:                                            ; preds = %Vec_IntFree.exit286, %bb.fe
  call void @free(ptr noundef nonnull %i.md) #19
  %i.aaw = load i32, ptr %i.n, align 4, !tbaa !100
  %.not179 = icmp eq i32 %i.aaw, 0
  br i1 %.not179, label %bb.fj, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aay = load i32, ptr %i.aax, align 8, !tbaa !23
  %.not180 = icmp eq i32 %i.aay, 0
  br i1 %.not180, label %bb.fh, label %bb.fj

bb.fh:                                            ; preds = %bb.fg
  %i.aaz = load i32, ptr %i.fy, align 8, !tbaa !37 ; 3 uses
  %i.aba = load i32, ptr %i.gb, align 4, !tbaa !38 ; 3 uses
  %i.abb = icmp sgt i32 %i.aba, 0
  br i1 %i.abb, label %.lr.ph397.preheader, label %._crit_edge

.lr.ph397.preheader:                              ; preds = %bb.fh
  %i.abc = add nsw i32 %i.aba, -1                 ; 2 uses
  %i.abd = shl i32 %i.aaz, 3
  %i.abe = add i32 %i.abd, 11
  %i.abf = mul i32 %i.abc, %i.abe
  %i.abg = mul i32 %i.aaz, 9
  %i.abh = add i32 %i.abf, %i.abg
  %i.abi = add nuw i32 %i.aba, 1073741822
  %i.abj = mul i32 %i.abc, %i.abi
  %i.abk = shl i32 %i.abj, 2
  %i.abl = and i32 %i.abk, -8
  %i.abm = add i32 %i.abh, %i.abl
  %i.abn = add i32 %i.abm, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph397.preheader, %bb.fh
  %.0153.lcssa = phi i32 [ %i.aaz, %bb.fh ], [ %i.abn, %.lr.ph397.preheader ]
  %i.abo = load i32, ptr %i.gd, align 8, !tbaa !39
  %i.abp = shl nsw i32 %i.abo, 1
  %i.abq = add nsw i32 %i.abp, %.0153.lcssa
  %i.abr = load ptr, ptr %i.fw, align 8, !tbaa !36
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 104
  %i.abt = load i32, ptr %i.abs, align 8, !tbaa !24
  %switch.tableidx873 = add i32 %i.abt, -1        ; 2 uses
  %i.abu = icmp ult i32 %switch.tableidx873, 3
  br i1 %i.abu, label %switch.lookup874, label %bb.fi

switch.lookup874:                                 ; preds = %._crit_edge
  %i.abv = zext nneg i32 %switch.tableidx873 to i64
  %switch.gep875 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Exa9_ManExactSynthesis.21, i64 %i.abv
  %switch.load876 = load ptr, ptr %switch.gep875, align 8
  br label %bb.fi

bb.fi:                                            ; preds = %._crit_edge, %switch.lookup874
  %i.abw = phi ptr [ %switch.load876, %switch.lookup874 ], [ @.str.6, %._crit_edge ]
  %i.abx = load i32, ptr %i.gk, align 8, !tbaa !110
  %i.aby = mul nsw i32 %i.abx, %i.abq             ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  %i.aca = load i32, ptr %i.abz, align 8, !tbaa !49 ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.fw, i64 44
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !48 ; 2 uses
  %i.acd = add i32 %i.aby, %i.aca
  %i.ace = add i32 %i.acd, %i.acc
  %i.acf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.aca, ptr noundef nonnull %i.abw, i32 noundef %i.acc, i32 noundef %i.aby, i32 noundef %i.ace) ; 0 uses
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fg, %bb.ff
  %i.acg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ach = load i32, ptr %i.acg, align 8, !tbaa !23
  %.not181 = icmp eq i32 %i.ach, 0
  br i1 %.not181, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.aci = load i32, ptr %i.fy, align 8, !tbaa !37
  %i.acj = load i32, ptr %i.gb, align 4, !tbaa !38
  %i.ack = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.aci, i32 noundef %i.acj) ; 0 uses
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.acl = load i32, ptr %i.gk, align 8, !tbaa !110 ; 4 uses
  %i.acm = add i32 %i.acl, -1
  %or.cond.i216 = icmp ult i32 %i.acm, 15
  %spec.store.select.i = select i1 %or.cond.i216, i32 16, i32 %i.acl ; 3 uses
  %.not.i217 = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i217, label %Vec_IntAlloc.exit, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.acn = sext i32 %spec.store.select.i to i64
  %i.aco = shl nsw i64 %i.acn, 2
  %i.acp = call noalias ptr @malloc(i64 noundef %i.aco) #21
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.fl, %bb.fm
  %.promoted406 = phi ptr [ %i.acp, %bb.fm ], [ null, %bb.fl ] ; 2 uses
  %i.acq = icmp sgt i32 %i.acl, 0
  br i1 %i.acq, label %.lr.ph400, label %._crit_edge401

.lr.ph400:                                        ; preds = %Vec_IntAlloc.exit, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit ], [ 0, %Vec_IntAlloc.exit ] ; 7 uses
  %storemerge407 = phi ptr [ %storemerge408, %Vec_IntPush.exit ], [ %.promoted406, %Vec_IntAlloc.exit ] ; 6 uses
  %spec.select.sink.i405 = phi i32 [ %spec.select.sink.i404, %Vec_IntPush.exit ], [ %spec.store.select.i, %Vec_IntAlloc.exit ] ; 3 uses
  %.0149399 = phi i32 [ %i.ade, %Vec_IntPush.exit ], [ 0, %Vec_IntAlloc.exit ] ; 2 uses
  %i.acr = trunc nsw i64 %indvars.iv to i32
  %i.acs = icmp eq i32 %spec.select.sink.i405, %i.acr
  br i1 %i.acs, label %bb.fn, label %Vec_IntPush.exit

bb.fn:                                            ; preds = %.lr.ph400
  %i.act = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.act, label %bb.fo, label %bb.fr

bb.fo:                                            ; preds = %bb.fn
  %.not9.i.i = icmp eq ptr %storemerge407, null
  br i1 %.not9.i.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.acu = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge407, i64 noundef 64) #22
  br label %Vec_IntPush.exit

bb.fq:                                            ; preds = %bb.fo
  %i.acv = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntPush.exit

bb.fr:                                            ; preds = %bb.fn
  %i.acw = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.acx = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i218 = select i1 %i.acw, i32 %i.acx, i32 2147483647 ; 4 uses
  %i.acy = sext i32 %spec.select.i218 to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.acy
  br i1 %.not.i9.i, label %bb.fs, label %Vec_IntPush.exit

bb.fs:                                            ; preds = %bb.fr
  %.not9.i10.i = icmp eq ptr %storemerge407, null
  %i.acz = zext nneg i32 %spec.select.i218 to i64
  %i.ada = shl nuw nsw i64 %i.acz, 2              ; 2 uses
  br i1 %.not9.i10.i, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.adb = call ptr @realloc(ptr noundef nonnull %storemerge407, i64 noundef %i.ada) #22
  br label %Vec_IntPush.exit

bb.fu:                                            ; preds = %bb.fs
  %i.adc = call noalias ptr @malloc(i64 noundef %i.ada) #21
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.fq, %bb.fp, %bb.fu, %bb.ft, %.lr.ph400, %bb.fr
  %storemerge408 = phi ptr [ %storemerge407, %.lr.ph400 ], [ %storemerge407, %bb.fr ], [ %i.acv, %bb.fq ], [ %i.acu, %bb.fp ], [ %i.adb, %bb.ft ], [ %i.adc, %bb.fu ] ; 3 uses
  %spec.select.sink.i404 = phi i32 [ %spec.select.sink.i405, %.lr.ph400 ], [ %spec.select.sink.i405, %bb.fr ], [ 16, %bb.fq ], [ 16, %bb.fp ], [ %spec.select.i218, %bb.ft ], [ %spec.select.i218, %bb.fu ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %storemerge408, i64 %indvars.iv
  store i32 %.0149399, ptr %i.add, align 4, !tbaa !51
  %i.ade = add nuw nsw i32 %.0149399, 1           ; 2 uses
  %i.adf = load i32, ptr %i.gk, align 8, !tbaa !110 ; 2 uses
  %i.adg = icmp slt i32 %i.ade, %i.adf
  br i1 %i.adg, label %.lr.ph400, label %._crit_edge401, !llvm.loop !71

._crit_edge401:                                   ; preds = %Vec_IntPush.exit, %Vec_IntAlloc.exit
  %i.adh = phi i32 [ %i.acl, %Vec_IntAlloc.exit ], [ %i.adf, %Vec_IntPush.exit ]
  %i.adi = phi ptr [ %.promoted406, %Vec_IntAlloc.exit ], [ %storemerge408, %Vec_IntPush.exit ] ; 5 uses
  %i.adj = load i32, ptr %i.hp, align 4, !tbaa !101 ; 2 uses
  %i.adk = icmp sgt i32 %i.adj, 0
  br i1 %i.adk, label %bb.fv, label %.loopexit

bb.fv:                                            ; preds = %._crit_edge401
  %i.adl = call i32 @Abc_Random(i32 noundef %i.adj) #19 ; 0 uses
  %i.adm = load i32, ptr %i.gk, align 8, !tbaa !110 ; 2 uses
  %i.adn = icmp sgt i32 %i.adm, 1
  br i1 %i.adn, label %.lr.ph411, label %.loopexit

.lr.ph411:                                        ; preds = %bb.fv, %.lr.ph411
  %indvars.iv468 = phi i64 [ %indvars.iv.next469, %.lr.ph411 ], [ 1, %bb.fv ] ; 2 uses
  %i.ado = call i32 @Abc_Random(i32 noundef 0) #19
  %indvars.iv.next469 = add nuw nsw i64 %indvars.iv468, 1 ; 3 uses
end_hunk_1
