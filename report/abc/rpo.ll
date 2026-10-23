Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/rpo?download=true
inline.NumInlined: 91
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@Rpo_Recursion:bb.a
select.unfold.i29.i.3:                            ; preds = %select.unfold.i29.i.2
  %indvars.iv.next.i31.i.3 = add nsw i64 %indvars.iv.i30.i.ph, -4 ; 3 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv.next.i31.i.3
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !15
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next.i31.i.3
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !15
  %i.hb = and i32 %i.ha, %i.gy
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.next.i31.i.3
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !15
  %.not437 = icmp eq i64 %indvars.iv.i30.i.ph, 4
  br i1 %.not437, label %Kit_TruthAnd.exit32.i, label %select.unfold.i29.i.4

select.unfold.i29.i.4:                            ; preds = %select.unfold.i29.i.3
  %indvars.iv.next.i31.i.4 = add nsw i64 %indvars.iv.i30.i.ph, -5 ; 3 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv.next.i31.i.4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !15
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next.i31.i.4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !15
  %i.hh = and i32 %i.hg, %i.he
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.next.i31.i.4
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !15
  %i.hj = icmp samesign ugt i64 %indvars.iv.i30.i.ph, 5
  br i1 %i.hj, label %select.unfold.i29.i.5, label %Kit_TruthAnd.exit32.i

select.unfold.i29.i.5:                            ; preds = %select.unfold.i29.i.4
  %indvars.iv.next.i31.i.5 = add nsw i64 %indvars.iv.i30.i.ph, -6 ; 3 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv.next.i31.i.5
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !15
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next.i31.i.5
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !15
  %i.ho = and i32 %i.hn, %i.hl
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.next.i31.i.5
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !15
  %i.hq = icmp eq i64 %indvars.iv.i30.i.ph, 7
  br i1 %i.hq, label %select.unfold.i29.i.6, label %Kit_TruthAnd.exit32.i

select.unfold.i29.i.6:                            ; preds = %select.unfold.i29.i.5
  %indvars.iv.next.i31.i.6 = add nsw i64 %indvars.iv.i30.i.ph, -7 ; 3 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv.next.i31.i.6
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !15
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next.i31.i.6
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !15
  %i.hv = and i32 %i.hu, %i.hs
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.next.i31.i.6
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !15
  br label %Kit_TruthAnd.exit32.i

Kit_TruthAnd.exit32.i:                            ; preds = %select.unfold.i29.i, %select.unfold.i29.i.1, %select.unfold.i29.i.2, %select.unfold.i29.i.3, %select.unfold.i29.i.4, %select.unfold.i29.i.5, %select.unfold.i29.i.6, %middle.block, %Kit_TruthIsConst0.exit.i
  %i.hx = trunc nuw i64 %.pre-phi.i to i32
  %i.hy = icmp sgt i32 %i.hx, 0
  br i1 %i.hy, label %.lr.ph299, label %Kit_TruthIsConst0.exit38.i

select.unfold.i34.i:                              ; preds = %.lr.ph299
  %i.hz = trunc nuw i64 %i.ib to i32
  %i.ia = icmp sgt i32 %i.hz, 0
  br i1 %i.ia, label %.lr.ph299, label %Kit_TruthIsConst0.exit38.i, !llvm.loop !0

.lr.ph299:                                        ; preds = %Kit_TruthAnd.exit32.i, %select.unfold.i34.i
  %indvars.iv.i35.i298 = phi i64 [ %i.ib, %select.unfold.i34.i ], [ %.pre-phi.i, %Kit_TruthAnd.exit32.i ]
  %i.ib = add nsw i64 %indvars.iv.i35.i298, -1    ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !15
  %.not.i37.i = icmp eq i32 %i.id, 0
  br i1 %.not.i37.i, label %select.unfold.i34.i, label %.Kit_TruthIsConst0.exit38.i_crit_edge, !llvm.loop !0

.Kit_TruthIsConst0.exit38.i_crit_edge:            ; preds = %.lr.ph299
  br label %Kit_TruthIsConst0.exit38.i, !llvm.loop !0

Kit_TruthIsConst0.exit38.i:                       ; preds = %select.unfold.i34.i, %.Kit_TruthIsConst0.exit38.i_crit_edge, %Kit_TruthAnd.exit32.i
  %.0.i = phi i32 [ 1, %Kit_TruthAnd.exit32.i ], [ 0, %.Kit_TruthIsConst0.exit38.i_crit_edge ], [ 1, %select.unfold.i34.i ] ; 2 uses
  %.not22.i = icmp eq ptr %i.ee, null
  br i1 %.not22.i, label %bb.q, label %Kit_TruthIsConst0.exit38.thread.i

Kit_TruthIsConst0.exit38.thread.i:                ; preds = %.lr.ph, %Kit_TruthIsConst0.exit38.i
  %.043.i = phi i32 [ %.0.i, %Kit_TruthIsConst0.exit38.i ], [ 0, %.lr.ph ]
  tail call void @free(ptr noundef nonnull %i.ee) #16
  br label %bb.q

bb.q:                                             ; preds = %Kit_TruthIsConst0.exit38.thread.i, %Kit_TruthIsConst0.exit38.i
  %.044.i = phi i32 [ %.0.i, %Kit_TruthIsConst0.exit38.i ], [ %.043.i, %Kit_TruthIsConst0.exit38.thread.i ]
  %.not23.i = icmp eq ptr %i.ef, null
  br i1 %.not23.i, label %Rpo_CheckORGroup.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.ef) #16
  br label %Rpo_CheckORGroup.exit

Rpo_CheckORGroup.exit:                            ; preds = %bb.q, %bb.r
  %.not176 = icmp eq i32 %i.eb, 0
  br i1 %.not176, label %bb.v, label %bb.s

bb.s:                                             ; preds = %Rpo_CheckORGroup.exit
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.9)
  %i.ie = load ptr, ptr %i.dx, align 8, !tbaa !30
  %i.if = getelementptr i8, ptr %i.ie, i64 16
  %.val183 = load ptr, ptr %i.if, align 8, !tbaa !28
  %i.ig = getelementptr i8, ptr %.val183, i64 8
  %.val183.val = load ptr, ptr %i.ig, align 8, !tbaa !25
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.19, ptr noundef %.val183.val)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.10)
  %i.ih = load ptr, ptr %i.dt, align 8, !tbaa !30
  %i.ii = getelementptr i8, ptr %i.ih, i64 16
  %.val182 = load ptr, ptr %i.ii, align 8, !tbaa !28
  %i.ij = getelementptr i8, ptr %.val182, i64 8
  %.val182.val = load ptr, ptr %i.ij, align 8, !tbaa !25
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.19, ptr noundef %.val182.val)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ik = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #15 ; 2 uses
  %i.il = shl i64 %indvars.iv243, 34
  %.reass = or disjoint i64 %i.il, %invariant.op
  store i64 %.reass, ptr %i.ik, align 8
  %i.im = load i32, ptr %i.dw, align 4, !tbaa !15
  %i.in = add nsw i32 %i.im, 1
  store i32 %i.in, ptr %i.dw, align 4, !tbaa !15
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv243 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !15
  %i.iq = add nsw i32 %i.ip, 1
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !15
  %i.ir = add nsw i32 %.1149218, 1
  %i.is = sext i32 %.1149218 to i64
  %i.it = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.is
  store ptr %i.ik, ptr %i.it, align 8, !tbaa !21
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %Rpo_CheckORGroup.exit
  %.2 = phi i32 [ %i.ir, %bb.u ], [ %.1149218, %Rpo_CheckORGroup.exit ] ; 3 uses
  %.not177 = icmp eq i32 %.044.i, 0
  br i1 %.not177, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.9)
  %i.iu = load ptr, ptr %i.dx, align 8, !tbaa !30
  %i.iv = getelementptr i8, ptr %i.iu, i64 16
  %.val181 = load ptr, ptr %i.iv, align 8, !tbaa !28
  %i.iw = getelementptr i8, ptr %.val181, i64 8
  %.val181.val = load ptr, ptr %i.iw, align 8, !tbaa !25
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.19, ptr noundef %.val181.val)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.11)
  %i.ix = load ptr, ptr %i.dt, align 8, !tbaa !30
  %i.iy = getelementptr i8, ptr %i.ix, i64 16
  %.val180 = load ptr, ptr %i.iy, align 8, !tbaa !28
  %i.iz = getelementptr i8, ptr %.val180, i64 8
  %.val180.val = load ptr, ptr %i.iz, align 8, !tbaa !25
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.19, ptr noundef %.val180.val)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ja = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #15 ; 2 uses
  %i.jb = shl i64 %indvars.iv243, 34
  %.reass221 = or disjoint i64 %i.jb, %invariant.op220
  store i64 %.reass221, ptr %i.ja, align 8
  %i.jc = load i32, ptr %i.dw, align 4, !tbaa !15
  %i.jd = add nsw i32 %i.jc, 1
  store i32 %i.jd, ptr %i.dw, align 4, !tbaa !15
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv243 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !15
  %i.jg = add nsw i32 %i.jf, 1
  store i32 %i.jg, ptr %i.je, align 4, !tbaa !15
  %i.jh = add nsw i32 %.2, 1
  %i.ji = sext i32 %.2 to i64
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.ji
  store ptr %i.ja, ptr %i.jj, align 8, !tbaa !21
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.y, %bb.o
  %.3 = phi i32 [ %.1149218, %bb.o ], [ %i.jh, %bb.y ], [ %.2, %bb.v ] ; 2 uses
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count247
  br i1 %exitcond.not, label %.loopexit213, label %bb.o, !llvm.loop !74

.loopexit213:                                     ; preds = %bb.z, %bb.n
  %.4 = phi i32 [ %.0148224, %bb.n ], [ %.3, %bb.z ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond248.not = icmp eq i64 %indvars.iv.next, %wide.trip.count247
  br i1 %exitcond248.not, label %._crit_edge227, label %bb.n, !llvm.loop !75

._crit_edge227:                                   ; preds = %.loopexit213, %bb.m
  %.0148.lcssa = phi i32 [ 0, %bb.m ], [ %.4, %.loopexit213 ] ; 3 uses
  br i1 %.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge227
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.12, i32 noundef %.0148.lcssa)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge227
  %i.jk = icmp sgt i32 %.0148.lcssa, 0            ; 2 uses
  %wide.trip.count.i = zext i32 %.0148.lcssa to i64 ; 2 uses
  %i.jl = icmp slt i32 %4, 6
  %i.jm = add nsw i32 %4, -5
  %i.jn = shl nuw i32 1, %i.jm
  %i.jo = select i1 %i.jl, i32 1, i32 %i.jn       ; 6 uses
  %i.jp = sext i32 %i.jo to i64
  %i.jq = shl nsw i64 %i.jp, 2                    ; 2 uses
  %i.jr = icmp sgt i32 %i.jo, 0                   ; 3 uses
  %i.js = zext i32 %i.jo to i64                   ; 9 uses
  %i.jt = icmp sgt i32 %4, 0
  %i.ju = zext nneg i32 %4 to i64
  %i.jv = add nsw i32 %3, -1
  br i1 %i.jk, label %.lr.ph.i.preheader, label %Rpo_computeMinEdgeCost.exit.thread.split

.lr.ph.i.preheader:                               ; preds = %bb.ab
  %min.iters.check363 = icmp ult i32 %i.jo, 8
  %n.vec365 = and i64 %i.js, 2147483640
  %min.iters.check345 = icmp ult i32 %i.jo, 8
  %n.vec347 = and i64 %i.js, 2147483640
  %min.iters.check327 = icmp ult i32 %i.jo, 8
  %n.vec329 = and i64 %i.js, 4294967288
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.backedge, %.lr.ph.i.preheader
  %indvars.iv.i190 = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.i190.be, %.lr.ph.i.backedge ] ; 3 uses
  %.02638.i = phi i32 [ -1, %.lr.ph.i.preheader ], [ %.02638.i.be, %.lr.ph.i.backedge ] ; 4 uses
  %.02737.i = phi i32 [ -1, %.lr.ph.i.preheader ], [ %.02737.i.be, %.lr.ph.i.backedge ] ; 3 uses
  %.02936.i = phi i32 [ -1, %.lr.ph.i.preheader ], [ %.02936.i.be, %.lr.ph.i.backedge ] ; 2 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.i190
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !21
  %i.jy = load i64, ptr %i.jx, align 8            ; 3 uses
  %i.jz = and i64 %i.jy, 1
  %.not.i191 = icmp eq i64 %i.jz, 0
  br i1 %.not.i191, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.lr.ph.i
  %i.ka = lshr i64 %i.jy, 4
  %i.kb = and i64 %i.ka, 1073741823               ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !15
  %i.ke = lshr i64 %i.jy, 34                      ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !15
  %i.kh = add nsw i32 %i.kg, %i.kd                ; 3 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.kb, i64 %i.ke)
  %i.ki = trunc nuw nsw i64 %..i to i32           ; 3 uses
  %i.kj = icmp ult i32 %i.kh, %.02638.i
  %i.kk = trunc nuw nsw i64 %indvars.iv.i190 to i32 ; 2 uses
  br i1 %i.kj, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kl = icmp eq i32 %i.kh, %.02638.i
  %i.km = icmp sgt i32 %.02737.i, %i.ki
  %or.cond.i = select i1 %i.kl, i1 %i.km, i1 false ; 2 uses
  %spec.select.i192 = select i1 %or.cond.i, i32 %i.kk, i32 %.02936.i
  %spec.select44.i = select i1 %or.cond.i, i32 %i.ki, i32 %.02737.i
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %.lr.ph.i
  %.130.i = phi i32 [ %.02936.i, %.lr.ph.i ], [ %spec.select.i192, %bb.ad ], [ %i.kk, %bb.ac ] ; 3 uses
  %.128.i = phi i32 [ %.02737.i, %.lr.ph.i ], [ %spec.select44.i, %bb.ad ], [ %i.ki, %bb.ac ]
  %.1.i = phi i32 [ %.02638.i, %.lr.ph.i ], [ %.02638.i, %bb.ad ], [ %i.kh, %bb.ac ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i190, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Rpo_computeMinEdgeCost.exit, label %.lr.ph.i.backedge

.lr.ph.i.backedge:                                ; preds = %bb.ae, %Lit_Free.exit
  %indvars.iv.i190.be = phi i64 [ %indvars.iv.next.i, %bb.ae ], [ 0, %Lit_Free.exit ]
  %.02638.i.be = phi i32 [ %.1.i, %bb.ae ], [ -1, %Lit_Free.exit ]
  %.02737.i.be = phi i32 [ %.128.i, %bb.ae ], [ -1, %Lit_Free.exit ]
  %.02936.i.be = phi i32 [ %.130.i, %bb.ae ], [ -1, %Lit_Free.exit ]
  br label %.lr.ph.i, !llvm.loop !76

Rpo_computeMinEdgeCost.exit:                      ; preds = %bb.ae
  %i.kn = icmp slt i32 %.130.i, 0
  br i1 %i.kn, label %Rpo_computeMinEdgeCost.exit.thread.split, label %bb.ag

Rpo_computeMinEdgeCost.exit.thread.split:         ; preds = %Rpo_computeMinEdgeCost.exit, %bb.ab
  br i1 %.not, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %Rpo_computeMinEdgeCost.exit.thread.split
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.13)
  br label %.loopexit

bb.ag:                                            ; preds = %Rpo_computeMinEdgeCost.exit
  %i.ko = zext nneg i32 %.130.i to i64
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.ko
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !21 ; 2 uses
  %i.kr = load i64, ptr %i.kq, align 8            ; 4 uses
  %i.ks = or i64 %i.kr, 1
  store i64 %i.ks, ptr %i.kq, align 8
  %i.kt = lshr i64 %i.kr, 4                       ; 2 uses
  %i.ku = trunc i64 %i.kt to i32
  %i.kv = and i32 %i.ku, 1073741823               ; 2 uses
  %i.kw = lshr i64 %i.kr, 34                      ; 3 uses
  %i.kx = trunc nuw nsw i64 %i.kw to i32          ; 2 uses
  %i.ky = icmp samesign ult i32 %i.kv, %i.kx
  %i.kz = and i64 %i.kt, 1073741823               ; 2 uses
  %i.la = select i1 %i.ky, i64 %i.kz, i64 %i.kw
  %i.lb = icmp samesign ugt i32 %i.kv, %i.kx
  %i.lc = select i1 %i.lb, i64 %i.kz, i64 %i.kw
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.la ; 3 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !30 ; 5 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.lc ; 3 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !30 ; 5 uses
  %i.lh = trunc i64 %i.kr to i32
  %i.li = lshr i32 %i.lh, 1
  %i.lj = and i32 %i.li, 3
  %i.lk = tail call noalias ptr @malloc(i64 noundef %i.jq) #15 ; 6 uses
  %i.ll = ptrtoaddr ptr %i.lk to i64              ; 4 uses
  %i.lm = tail call noalias ptr @malloc(i64 noundef %i.jq) #15 ; 4 uses
  %i.ln = ptrtoaddr ptr %i.lm to i64              ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.le, i64 16 ; 2 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !28
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !27
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lg, i64 16 ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !28
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !27
  %i.lw = add nsw i32 %i.lv, %i.lr                ; 2 uses
  %i.lx = add nsw i32 %i.lw, 3
  %i.ly = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15 ; 15 uses
  %i.lz = add nsw i32 %i.lw, 2
  %or.cond.i.i = icmp ult i32 %i.lz, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.lx ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 4 ; 11 uses
  store i32 %spec.store.select.i.i, ptr %i.ly, align 8, !tbaa !24
  %.not.i.i193 = icmp eq i32 %spec.store.select.i.i, 0 ; 2 uses
  br i1 %.not.i.i193, label %Vec_StrAlloc.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.mb = sext i32 %spec.store.select.i.i to i64
  %i.mc = tail call noalias ptr @malloc(i64 noundef %i.mb) #15
  br label %Vec_StrAlloc.exit.i

Vec_StrAlloc.exit.i:                              ; preds = %bb.ah, %bb.ag
  %i.md = phi ptr [ %i.mc, %bb.ah ], [ null, %bb.ag ] ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 22 uses
  store ptr %i.md, ptr %i.me, align 8, !tbaa !25
  switch i32 %i.lj, label %Kit_TruthAnd.exit.i201 [
    i32 1, label %bb.ai
    i32 2, label %bb.aj
  ]

bb.ai:                                            ; preds = %Vec_StrAlloc.exit.i
  %i.mf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !14 ; 3 uses
  %i.mh = ptrtoaddr ptr %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !14 ; 3 uses
  %i.mk = ptrtoaddr ptr %i.mj to i64
  br i1 %i.jr, label %select.unfold.i.i198.preheader.a, label %Kit_TruthOr.exit42.i

select.unfold.i.i198.preheader.a:                 ; preds = %bb.ai
  br i1 %min.iters.check345, label %select.unfold.i.i198.preheader423.a, label %vector.memcheck340

select.unfold.i.i198.preheader423.a:              ; preds = %vector.memcheck340, %select.unfold.i.i198.preheader.a
  br label %select.unfold.i.i198

vector.memcheck340:                               ; preds = %select.unfold.i.i198.preheader.a
  %i.ml = sub i64 %i.ll, %i.mh
  %diff.check341 = icmp ugt i64 %i.ml, -32
  %i.mm = sub i64 %i.ll, %i.mk
  %diff.check342 = icmp ugt i64 %i.mm, -32
  %conflict.rdx343 = or i1 %diff.check341, %diff.check342
  br i1 %conflict.rdx343, label %select.unfold.i.i198.preheader423.a, label %vector.body348

vector.body348:                                   ; preds = %vector.memcheck340, %vector.body348
  %index349 = phi i64 [ %index.next354, %vector.body348 ], [ 0, %vector.memcheck340 ] ; 2 uses
  %i.mn = xor i64 %index349, -1
  %i.mo = add i64 %i.mn, %i.js                    ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.mo ; 2 uses
  %i.mq = getelementptr inbounds i8, ptr %i.mp, i64 -12
  %i.mr = getelementptr inbounds i8, ptr %i.mp, i64 -28
  %wide.load350 = load <4 x i32>, ptr %i.mq, align 4, !tbaa !15
  %wide.load351 = load <4 x i32>, ptr %i.mr, align 4, !tbaa !15
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.mo ; 2 uses
  %i.mt = getelementptr inbounds i8, ptr %i.ms, i64 -12
  %i.mu = getelementptr inbounds i8, ptr %i.ms, i64 -28
  %wide.load352 = load <4 x i32>, ptr %i.mt, align 4, !tbaa !15
  %wide.load353 = load <4 x i32>, ptr %i.mu, align 4, !tbaa !15
  %i.mv = and <4 x i32> %wide.load352, %wide.load350
  %i.mw = and <4 x i32> %wide.load353, %wide.load351
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.mo ; 2 uses
  %i.my = getelementptr inbounds i8, ptr %i.mx, i64 -12
  %i.mz = getelementptr inbounds i8, ptr %i.mx, i64 -28
  store <4 x i32> %i.mv, ptr %i.my, align 4, !tbaa !15
  store <4 x i32> %i.mw, ptr %i.mz, align 4, !tbaa !15
  %index.next354 = add nuw i64 %index349, 8       ; 2 uses
  %i.na = icmp eq i64 %index.next354, %n.vec347
  br i1 %i.na, label %select.unfold.preheader.i38.i, label %vector.body348, !llvm.loop !77

select.unfold.i.i198:                             ; preds = %select.unfold.i.i198.preheader423.a, %select.unfold.i.i198
  %indvars.iv.i.i199 = phi i64 [ %indvars.iv.next.i.i200.a, %select.unfold.i.i198 ], [ %i.js, %select.unfold.i.i198.preheader423.a ] ; 2 uses
  %indvars.iv.next.i.i200.a = add nsw i64 %indvars.iv.i.i199, -1 ; 4 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %indvars.iv.next.i.i200.a
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !15
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %indvars.iv.next.i.i200.a
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !15
  %i.nf = and i32 %i.ne, %i.nc
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv.next.i.i200.a
  store i32 %i.nf, ptr %i.ng, align 4, !tbaa !15
  %8 = icmp samesign ugt i64 %indvars.iv.i.i199, 1
  br i1 %8, label %select.unfold.i.i198, label %select.unfold.preheader.i38.i, !llvm.loop !78

bb.aj:                                            ; preds = %Vec_StrAlloc.exit.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !14 ; 3 uses
  %i.nj = ptrtoaddr ptr %i.ni to i64
  %i.nk = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !14 ; 3 uses
  %i.nm = ptrtoaddr ptr %i.nl to i64
  br i1 %i.jr, label %select.unfold.i34.i194.preheader.a, label %Kit_TruthOr.exit42.i

select.unfold.i34.i194.preheader.a:               ; preds = %bb.aj
  br i1 %min.iters.check363, label %select.unfold.i34.i194.preheader425.a, label %vector.memcheck358

select.unfold.i34.i194.preheader425.a:            ; preds = %vector.memcheck358, %select.unfold.i34.i194.preheader.a
  br label %select.unfold.i34.i194

vector.memcheck358:                               ; preds = %select.unfold.i34.i194.preheader.a
  %i.nn = sub i64 %i.ll, %i.nj
  %diff.check359 = icmp ugt i64 %i.nn, -32
  %i.no = sub i64 %i.ll, %i.nm
  %diff.check360 = icmp ugt i64 %i.no, -32
  %conflict.rdx361 = or i1 %diff.check359, %diff.check360
  br i1 %conflict.rdx361, label %select.unfold.i34.i194.preheader425.a, label %vector.body366

vector.body366:                                   ; preds = %vector.memcheck358, %vector.body366
  %index367 = phi i64 [ %index.next372, %vector.body366 ], [ 0, %vector.memcheck358 ] ; 2 uses
  %i.np = xor i64 %index367, -1
  %i.nq = add i64 %i.np, %i.js                    ; 3 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.nq ; 2 uses
  %i.ns = getelementptr inbounds i8, ptr %i.nr, i64 -12
  %i.nt = getelementptr inbounds i8, ptr %i.nr, i64 -28
  %wide.load368 = load <4 x i32>, ptr %i.ns, align 4, !tbaa !15
  %wide.load369 = load <4 x i32>, ptr %i.nt, align 4, !tbaa !15
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %i.nq ; 2 uses
  %i.nv = getelementptr inbounds i8, ptr %i.nu, i64 -12
  %i.nw = getelementptr inbounds i8, ptr %i.nu, i64 -28
  %wide.load370 = load <4 x i32>, ptr %i.nv, align 4, !tbaa !15
  %wide.load371 = load <4 x i32>, ptr %i.nw, align 4, !tbaa !15
  %i.nx = or <4 x i32> %wide.load370, %wide.load368
  %i.ny = or <4 x i32> %wide.load371, %wide.load369
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.nq ; 2 uses
  %i.oa = getelementptr inbounds i8, ptr %i.nz, i64 -12
  %i.ob = getelementptr inbounds i8, ptr %i.nz, i64 -28
  store <4 x i32> %i.nx, ptr %i.oa, align 4, !tbaa !15
  store <4 x i32> %i.ny, ptr %i.ob, align 4, !tbaa !15
  %index.next372 = add nuw i64 %index367, 8       ; 2 uses
  %i.oc = icmp eq i64 %index.next372, %n.vec365
  br i1 %i.oc, label %select.unfold.preheader.i38.i, label %vector.body366, !llvm.loop !79

select.unfold.i34.i194:                           ; preds = %select.unfold.i34.i194.preheader425.a, %select.unfold.i34.i194
  %indvars.iv.i35.i195 = phi i64 [ %indvars.iv.next.i36.i.a, %select.unfold.i34.i194 ], [ %i.js, %select.unfold.i34.i194.preheader425.a ] ; 2 uses
  %indvars.iv.next.i36.i.a = add nsw i64 %indvars.iv.i35.i195, -1 ; 4 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv.next.i36.i.a
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !15
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %indvars.iv.next.i36.i.a
  %i.og = load i32, ptr %i.of, align 4, !tbaa !15
  %i.oh = or i32 %i.og, %i.oe
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv.next.i36.i.a
  store i32 %i.oh, ptr %i.oi, align 4, !tbaa !15
  %9 = icmp samesign ugt i64 %indvars.iv.i35.i195, 1
  br i1 %9, label %select.unfold.i34.i194, label %select.unfold.preheader.i38.i, !llvm.loop !80

Kit_TruthAnd.exit.i201:                           ; preds = %Vec_StrAlloc.exit.i
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.20)
  br i1 %i.jr, label %select.unfold.preheader.i38.i, label %Kit_TruthOr.exit42.i

select.unfold.preheader.i38.i:                    ; preds = %vector.body366, %select.unfold.i34.i194, %vector.body348, %select.unfold.i.i198, %Kit_TruthAnd.exit.i201
  %.089.i = phi i8 [ 43, %select.unfold.i34.i194 ], [ 37, %Kit_TruthAnd.exit.i201 ], [ 42, %vector.body348 ], [ 42, %select.unfold.i.i198 ], [ 43, %vector.body366 ] ; 2 uses
  %i.oj = load ptr, ptr %i.le, align 8, !tbaa !19 ; 3 uses
  %i.ok = load ptr, ptr %i.lg, align 8, !tbaa !19 ; 3 uses
  br i1 %min.iters.check327, label %select.unfold.i39.i.preheader, label %vector.memcheck

select.unfold.i39.i.preheader:                    ; preds = %vector.memcheck, %select.unfold.preheader.i38.i
  br label %select.unfold.i39.i

vector.memcheck:                                  ; preds = %select.unfold.preheader.i38.i
  %i.ol = ptrtoaddr ptr %i.ok to i64
  %i.om = ptrtoaddr ptr %i.oj to i64
  %i.on = sub i64 %i.ln, %i.om
  %diff.check = icmp ugt i64 %i.on, -32
  %i.oo = sub i64 %i.ln, %i.ol
  %diff.check325 = icmp ugt i64 %i.oo, -32
  %conflict.rdx = or i1 %diff.check, %diff.check325
  br i1 %conflict.rdx, label %select.unfold.i39.i.preheader, label %vector.body330

vector.body330:                                   ; preds = %vector.memcheck, %vector.body330
  %index331 = phi i64 [ %index.next336, %vector.body330 ], [ 0, %vector.memcheck ] ; 2 uses
  %i.op = xor i64 %index331, -1
  %i.oq = add i64 %i.op, %i.js                    ; 3 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.oq ; 2 uses
  %i.os = getelementptr inbounds i8, ptr %i.or, i64 -12
  %i.ot = getelementptr inbounds i8, ptr %i.or, i64 -28
  %wide.load332 = load <4 x i32>, ptr %i.os, align 4, !tbaa !15
  %wide.load333 = load <4 x i32>, ptr %i.ot, align 4, !tbaa !15
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.oq ; 2 uses
  %i.ov = getelementptr inbounds i8, ptr %i.ou, i64 -12
  %i.ow = getelementptr inbounds i8, ptr %i.ou, i64 -28
  %wide.load334 = load <4 x i32>, ptr %i.ov, align 4, !tbaa !15
  %wide.load335 = load <4 x i32>, ptr %i.ow, align 4, !tbaa !15
  %i.ox = or <4 x i32> %wide.load334, %wide.load332
  %i.oy = or <4 x i32> %wide.load335, %wide.load333
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.oq ; 2 uses
  %i.pa = getelementptr inbounds i8, ptr %i.oz, i64 -12
  %i.pb = getelementptr inbounds i8, ptr %i.oz, i64 -28
  store <4 x i32> %i.ox, ptr %i.pa, align 4, !tbaa !15
  store <4 x i32> %i.oy, ptr %i.pb, align 4, !tbaa !15
  %index.next336 = add nuw i64 %index331, 8       ; 2 uses
  %i.pc = icmp eq i64 %index.next336, %n.vec329
  br i1 %i.pc, label %Kit_TruthOr.exit42.i, label %vector.body330, !llvm.loop !81

select.unfold.i39.i:                              ; preds = %select.unfold.i39.i.preheader, %select.unfold.i39.i
  %indvars.iv.i40.i = phi i64 [ %indvars.iv.next.i41.i, %select.unfold.i39.i ], [ %i.js, %select.unfold.i39.i.preheader ] ; 2 uses
  %indvars.iv.next.i41.i = add nsw i64 %indvars.iv.i40.i, -1 ; 4 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv.next.i41.i
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !15
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %indvars.iv.next.i41.i
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !15
  %i.ph = or i32 %i.pg, %i.pe
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv.next.i41.i
  store i32 %i.ph, ptr %i.pi, align 4, !tbaa !15
  %i.pj = icmp samesign ugt i64 %indvars.iv.i40.i, 1
  br i1 %i.pj, label %select.unfold.i39.i, label %Kit_TruthOr.exit42.i, !llvm.loop !82

Kit_TruthOr.exit42.i:                             ; preds = %vector.body330, %select.unfold.i39.i, %Kit_TruthAnd.exit.i201, %bb.aj, %bb.ai
  %.088.i = phi i8 [ 37, %Kit_TruthAnd.exit.i201 ], [ 43, %bb.aj ], [ 42, %bb.ai ], [ %.089.i, %select.unfold.i39.i ], [ %.089.i, %vector.body330 ]
  br i1 %.not.i.i193, label %bb.ak, label %Vec_StrPutC.exit.i

bb.ak:                                            ; preds = %Kit_TruthOr.exit42.i
  %.not9.i.i.i.i = icmp eq ptr %i.md, null
  br i1 %.not9.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.pk = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.md, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.pl = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i.i

Vec_StrGrow.exit11.sink.split.i.i.i:              ; preds = %bb.am, %bb.al
  %storemerge.i = phi ptr [ %i.pl, %bb.am ], [ %i.pk, %bb.al ] ; 2 uses
  store ptr %storemerge.i, ptr %i.me, align 8, !tbaa !25
  store i32 16, ptr %i.ly, align 8, !tbaa !24
  br label %Vec_StrPutC.exit.i

Vec_StrPutC.exit.i:                               ; preds = %Vec_StrGrow.exit11.sink.split.i.i.i, %Kit_TruthOr.exit42.i
  %i.pm = phi ptr [ %storemerge.i, %Vec_StrGrow.exit11.sink.split.i.i.i ], [ %i.md, %Kit_TruthOr.exit42.i ]
  store i32 1, ptr %i.ma, align 4, !tbaa !27
  store i8 40, ptr %i.pm, align 1, !tbaa !26
  %i.pn = load ptr, ptr %i.lo, align 8, !tbaa !28
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !25 ; 2 uses
  %i.pq = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.pp) #17 ; 2 uses
  %i.pr = trunc i64 %i.pq to i32
  %i.ps = icmp sgt i32 %i.pr, 0
  br i1 %i.ps, label %.lr.ph.i.i.i, label %Vec_StrAppend.exit.i

.lr.ph.i.i.i:                                     ; preds = %Vec_StrPutC.exit.i
  %wide.trip.count.i.i.i = and i64 %i.pq, 2147483647
  br label %bb.an

bb.an:                                            ; preds = %Vec_StrPush.exit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %Vec_StrPush.exit.i.i.i ] ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pp, i64 %indvars.iv.i.i.i
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !26
  %i.pv = load i32, ptr %i.ma, align 4, !tbaa !27 ; 7 uses
  %i.pw = load i32, ptr %i.ly, align 8, !tbaa !24
  %i.px = icmp eq i32 %i.pv, %i.pw
  br i1 %i.px, label %bb.ao, label %.Vec_StrPush.exit_crit_edge.i.i.i

.Vec_StrPush.exit_crit_edge.i.i.i:                ; preds = %bb.an
  %.pre.i.i.i = load ptr, ptr %i.me, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.py = icmp slt i32 %i.pv, 16
  br i1 %i.py, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.pz = load ptr, ptr %i.me, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.pz, null
  br i1 %.not9.i.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.qa = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.pz, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.qb = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i.i.i

bb.as:                                            ; preds = %bb.ao
  %i.qc = icmp samesign ult i32 %i.pv, 1073741823
  %i.qd = shl nuw nsw i32 %i.pv, 1
  %spec.select.i.i.i.i = select i1 %i.qc, i32 %i.qd, i32 2147483647 ; 4 uses
  %.not.i9.i.i.i.i = icmp samesign ult i32 %i.pv, %spec.select.i.i.i.i
  %.pre8.i.i.i = load ptr, ptr %i.me, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i.i.i, label %bb.at, label %Vec_StrPush.exit.i.i.i

bb.at:                                            ; preds = %bb.as
  %.not9.i10.i.i.i.i = icmp eq ptr %.pre8.i.i.i, null
  %i.qe = zext nneg i32 %spec.select.i.i.i.i to i64 ; 2 uses
  br i1 %.not9.i10.i.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.qf = tail call ptr @realloc(ptr noundef nonnull %.pre8.i.i.i, i64 noundef %i.qe) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.qg = tail call noalias ptr @malloc(i64 noundef %i.qe) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i.i.i

Vec_StrGrow.exit11.sink.split.i.i.i.i:            ; preds = %bb.av, %bb.au, %bb.ar, %bb.aq
  %i.qh = phi ptr [ %i.qb, %bb.ar ], [ %i.qa, %bb.aq ], [ %i.qf, %bb.au ], [ %i.qg, %bb.av ] ; 2 uses
  %spec.select.sink.i.i.i.i = phi i32 [ 16, %bb.ar ], [ 16, %bb.aq ], [ %spec.select.i.i.i.i, %bb.au ], [ %spec.select.i.i.i.i, %bb.av ]
  store ptr %i.qh, ptr %i.me, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i.i.i, ptr %i.ly, align 8, !tbaa !24
  br label %Vec_StrPush.exit.i.i.i

Vec_StrPush.exit.i.i.i:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i.i.i, %bb.as, %.Vec_StrPush.exit_crit_edge.i.i.i
  %i.qi = phi ptr [ %.pre.i.i.i, %.Vec_StrPush.exit_crit_edge.i.i.i ], [ %.pre8.i.i.i, %bb.as ], [ %i.qh, %Vec_StrGrow.exit11.sink.split.i.i.i.i ]
  %i.qj = add nsw i32 %i.pv, 1
  store i32 %i.qj, ptr %i.ma, align 4, !tbaa !27
  %i.qk = sext i32 %i.pv to i64
  %i.ql = getelementptr inbounds i8, ptr %i.qi, i64 %i.qk
  store i8 %i.pu, ptr %i.ql, align 1, !tbaa !26
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %Vec_StrAppend.exit.i, label %bb.an, !llvm.loop !83

Vec_StrAppend.exit.i:                             ; preds = %Vec_StrPush.exit.i.i.i, %Vec_StrPutC.exit.i
  %i.qm = load i32, ptr %i.ma, align 4, !tbaa !27 ; 7 uses
  %i.qn = load i32, ptr %i.ly, align 8, !tbaa !24
  %i.qo = icmp eq i32 %i.qm, %i.qn
  br i1 %i.qo, label %bb.aw, label %Vec_StrAppend.exit.Vec_StrPutC.exit51_crit_edge.i

Vec_StrAppend.exit.Vec_StrPutC.exit51_crit_edge.i: ; preds = %Vec_StrAppend.exit.i
  %.pre.i = load ptr, ptr %i.me, align 8, !tbaa !25
  br label %Vec_StrPutC.exit51.i

bb.aw:                                            ; preds = %Vec_StrAppend.exit.i
  %i.qp = icmp slt i32 %i.qm, 16
  br i1 %i.qp, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.qq = load ptr, ptr %i.me, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i49.i = icmp eq ptr %i.qq, null
  br i1 %.not9.i.i.i49.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.qr = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.qq, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i46.i

bb.az:                                            ; preds = %bb.ax
  %i.qs = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i46.i

bb.ba:                                            ; preds = %bb.aw
  %i.qt = icmp samesign ult i32 %i.qm, 1073741823
  %i.qu = shl nuw nsw i32 %i.qm, 1
  %spec.select.i.i43.i = select i1 %i.qt, i32 %i.qu, i32 2147483647 ; 4 uses
  %.not.i9.i.i44.i = icmp samesign ult i32 %i.qm, %spec.select.i.i43.i
  %.pre99.i = load ptr, ptr %i.me, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i44.i, label %bb.bb, label %Vec_StrPutC.exit51.i

bb.bb:                                            ; preds = %bb.ba
  %.not9.i10.i.i45.i = icmp eq ptr %.pre99.i, null
  %i.qv = zext nneg i32 %spec.select.i.i43.i to i64 ; 2 uses
  br i1 %.not9.i10.i.i45.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.qw = tail call ptr @realloc(ptr noundef nonnull %.pre99.i, i64 noundef %i.qv) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i46.i

bb.bd:                                            ; preds = %bb.bb
  %i.qx = tail call noalias ptr @malloc(i64 noundef %i.qv) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i46.i

Vec_StrGrow.exit11.sink.split.i.i46.i:            ; preds = %bb.bd, %bb.bc, %bb.az, %bb.ay
  %storemerge94.i = phi ptr [ %i.qs, %bb.az ], [ %i.qr, %bb.ay ], [ %i.qw, %bb.bc ], [ %i.qx, %bb.bd ] ; 2 uses
  %spec.select.sink.i.i47.i = phi i32 [ 16, %bb.az ], [ 16, %bb.ay ], [ %spec.select.i.i43.i, %bb.bc ], [ %spec.select.i.i43.i, %bb.bd ]
  store ptr %storemerge94.i, ptr %i.me, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i47.i, ptr %i.ly, align 8, !tbaa !24
  br label %Vec_StrPutC.exit51.i

Vec_StrPutC.exit51.i:                             ; preds = %Vec_StrGrow.exit11.sink.split.i.i46.i, %bb.ba, %Vec_StrAppend.exit.Vec_StrPutC.exit51_crit_edge.i
  %i.qy = phi ptr [ %.pre.i, %Vec_StrAppend.exit.Vec_StrPutC.exit51_crit_edge.i ], [ %.pre99.i, %bb.ba ], [ %storemerge94.i, %Vec_StrGrow.exit11.sink.split.i.i46.i ]
  %i.qz = add nsw i32 %i.qm, 1
  store i32 %i.qz, ptr %i.ma, align 4, !tbaa !27
  %i.ra = sext i32 %i.qm to i64
  %i.rb = getelementptr inbounds i8, ptr %i.qy, i64 %i.ra
  store i8 %.088.i, ptr %i.rb, align 1, !tbaa !26
  %i.rc = load ptr, ptr %i.ls, align 8, !tbaa !28
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !25 ; 2 uses
  %i.rf = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.re) #17 ; 2 uses
  %i.rg = trunc i64 %i.rf to i32
  %i.rh = icmp sgt i32 %i.rg, 0
  br i1 %i.rh, label %.lr.ph.i.i52.i, label %Vec_StrAppend.exit68.i

.lr.ph.i.i52.i:                                   ; preds = %Vec_StrPutC.exit51.i
  %wide.trip.count.i.i53.i = and i64 %i.rf, 2147483647
  br label %bb.be

bb.be:                                            ; preds = %Vec_StrPush.exit.i.i57.i, %.lr.ph.i.i52.i
  %indvars.iv.i.i54.i = phi i64 [ 0, %.lr.ph.i.i52.i ], [ %indvars.iv.next.i.i58.i, %Vec_StrPush.exit.i.i57.i ] ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 %indvars.iv.i.i54.i
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !26
  %i.rk = load i32, ptr %i.ma, align 4, !tbaa !27 ; 7 uses
  %i.rl = load i32, ptr %i.ly, align 8, !tbaa !24
  %i.rm = icmp eq i32 %i.rk, %i.rl
  br i1 %i.rm, label %bb.bf, label %.Vec_StrPush.exit_crit_edge.i.i55.i

.Vec_StrPush.exit_crit_edge.i.i55.i:              ; preds = %bb.be
  %.pre.i.i56.i = load ptr, ptr %i.me, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i.i57.i

bb.bf:                                            ; preds = %bb.be
  %i.rn = icmp slt i32 %i.rk, 16
  br i1 %i.rn, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.ro = load ptr, ptr %i.me, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i.i67.i = icmp eq ptr %i.ro, null
  br i1 %.not9.i.i.i.i67.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.rp = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ro, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i.i64.i

bb.bi:                                            ; preds = %bb.bg
  %i.rq = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i.i64.i

bb.bj:                                            ; preds = %bb.bf
  %i.rr = icmp samesign ult i32 %i.rk, 1073741823
  %i.rs = shl nuw nsw i32 %i.rk, 1
  %spec.select.i.i.i60.i = select i1 %i.rr, i32 %i.rs, i32 2147483647 ; 4 uses
  %.not.i9.i.i.i61.i = icmp samesign ult i32 %i.rk, %spec.select.i.i.i60.i
  %.pre8.i.i62.i = load ptr, ptr %i.me, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i.i61.i, label %bb.bk, label %Vec_StrPush.exit.i.i57.i

bb.bk:                                            ; preds = %bb.bj
  %.not9.i10.i.i.i63.i = icmp eq ptr %.pre8.i.i62.i, null
  %i.rt = zext nneg i32 %spec.select.i.i.i60.i to i64 ; 2 uses
  br i1 %.not9.i10.i.i.i63.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ru = tail call ptr @realloc(ptr noundef nonnull %.pre8.i.i62.i, i64 noundef %i.rt) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i.i64.i

bb.bm:                                            ; preds = %bb.bk
  %i.rv = tail call noalias ptr @malloc(i64 noundef %i.rt) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i.i64.i

Vec_StrGrow.exit11.sink.split.i.i.i64.i:          ; preds = %bb.bm, %bb.bl, %bb.bi, %bb.bh
  %i.rw = phi ptr [ %i.rq, %bb.bi ], [ %i.rp, %bb.bh ], [ %i.ru, %bb.bl ], [ %i.rv, %bb.bm ] ; 2 uses
  %spec.select.sink.i.i.i65.i = phi i32 [ 16, %bb.bi ], [ 16, %bb.bh ], [ %spec.select.i.i.i60.i, %bb.bl ], [ %spec.select.i.i.i60.i, %bb.bm ]
  store ptr %i.rw, ptr %i.me, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i.i65.i, ptr %i.ly, align 8, !tbaa !24
  br label %Vec_StrPush.exit.i.i57.i

Vec_StrPush.exit.i.i57.i:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i.i64.i, %bb.bj, %.Vec_StrPush.exit_crit_edge.i.i55.i
  %i.rx = phi ptr [ %.pre.i.i56.i, %.Vec_StrPush.exit_crit_edge.i.i55.i ], [ %.pre8.i.i62.i, %bb.bj ], [ %i.rw, %Vec_StrGrow.exit11.sink.split.i.i.i64.i ]
  %i.ry = add nsw i32 %i.rk, 1
  store i32 %i.ry, ptr %i.ma, align 4, !tbaa !27
  %i.rz = sext i32 %i.rk to i64
  %i.sa = getelementptr inbounds i8, ptr %i.rx, i64 %i.rz
  store i8 %i.rj, ptr %i.sa, align 1, !tbaa !26
  %indvars.iv.next.i.i58.i = add nuw nsw i64 %indvars.iv.i.i54.i, 1 ; 2 uses
  %exitcond.not.i.i59.i = icmp eq i64 %indvars.iv.next.i.i58.i, %wide.trip.count.i.i53.i
  br i1 %exitcond.not.i.i59.i, label %Vec_StrAppend.exit68.i, label %bb.be, !llvm.loop !83

Vec_StrAppend.exit68.i:                           ; preds = %Vec_StrPush.exit.i.i57.i, %Vec_StrPutC.exit51.i
  %i.sb = load i32, ptr %i.ma, align 4, !tbaa !27 ; 7 uses
  %i.sc = load i32, ptr %i.ly, align 8, !tbaa !24
  %i.sd = icmp eq i32 %i.sb, %i.sc
  br i1 %i.sd, label %bb.bn, label %Vec_StrAppend.exit68.Vec_StrPutC.exit77_crit_edge.i

Vec_StrAppend.exit68.Vec_StrPutC.exit77_crit_edge.i: ; preds = %Vec_StrAppend.exit68.i
  %.pre100.i = load ptr, ptr %i.me, align 8, !tbaa !25
  br label %Vec_StrPutC.exit77.i

bb.bn:                                            ; preds = %Vec_StrAppend.exit68.i
  %i.se = icmp slt i32 %i.sb, 16
  br i1 %i.se, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.sf = load ptr, ptr %i.me, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i75.i = icmp eq ptr %i.sf, null
  br i1 %.not9.i.i.i75.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.sg = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.sf, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i72.i

bb.bq:                                            ; preds = %bb.bo
  %i.sh = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i72.i

bb.br:                                            ; preds = %bb.bn
  %i.si = icmp samesign ult i32 %i.sb, 1073741823
  %i.sj = shl nuw nsw i32 %i.sb, 1
  %spec.select.i.i69.i = select i1 %i.si, i32 %i.sj, i32 2147483647 ; 4 uses
  %.not.i9.i.i70.i = icmp samesign ult i32 %i.sb, %spec.select.i.i69.i
  %.pre101.i = load ptr, ptr %i.me, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i70.i, label %bb.bs, label %Vec_StrPutC.exit77.i

bb.bs:                                            ; preds = %bb.br
  %.not9.i10.i.i71.i = icmp eq ptr %.pre101.i, null
  %i.sk = zext nneg i32 %spec.select.i.i69.i to i64 ; 2 uses
  br i1 %.not9.i10.i.i71.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.sl = tail call ptr @realloc(ptr noundef nonnull %.pre101.i, i64 noundef %i.sk) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i72.i

bb.bu:                                            ; preds = %bb.bs
  %i.sm = tail call noalias ptr @malloc(i64 noundef %i.sk) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i72.i

Vec_StrGrow.exit11.sink.split.i.i72.i:            ; preds = %bb.bu, %bb.bt, %bb.bq, %bb.bp
  %storemerge95.i = phi ptr [ %i.sh, %bb.bq ], [ %i.sg, %bb.bp ], [ %i.sl, %bb.bt ], [ %i.sm, %bb.bu ] ; 2 uses
  %spec.select.sink.i.i73.i = phi i32 [ 16, %bb.bq ], [ 16, %bb.bp ], [ %spec.select.i.i69.i, %bb.bt ], [ %spec.select.i.i69.i, %bb.bu ]
  store ptr %storemerge95.i, ptr %i.me, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i73.i, ptr %i.ly, align 8, !tbaa !24
  br label %Vec_StrPutC.exit77.i

Vec_StrPutC.exit77.i:                             ; preds = %Vec_StrGrow.exit11.sink.split.i.i72.i, %bb.br, %Vec_StrAppend.exit68.Vec_StrPutC.exit77_crit_edge.i
  %i.sn = phi ptr [ %.pre100.i, %Vec_StrAppend.exit68.Vec_StrPutC.exit77_crit_edge.i ], [ %.pre101.i, %bb.br ], [ %storemerge95.i, %Vec_StrGrow.exit11.sink.split.i.i72.i ]
  %i.so = add nsw i32 %i.sb, 1
  store i32 %i.so, ptr %i.ma, align 4, !tbaa !27
  %i.sp = sext i32 %i.sb to i64
  %i.sq = getelementptr inbounds i8, ptr %i.sn, i64 %i.sp
  store i8 41, ptr %i.sq, align 1, !tbaa !26
  %i.sr = load i32, ptr %i.ma, align 4, !tbaa !27 ; 7 uses
  %i.ss = load i32, ptr %i.ly, align 8, !tbaa !24
  %i.st = icmp eq i32 %i.sr, %i.ss
  br i1 %i.st, label %bb.bv, label %Vec_StrPutC.exit77.Vec_StrPutC.exit86_crit_edge.i

Vec_StrPutC.exit77.Vec_StrPutC.exit86_crit_edge.i: ; preds = %Vec_StrPutC.exit77.i
  %.pre102.i = load ptr, ptr %i.me, align 8, !tbaa !25
  br label %Lit_GroupLiterals.exit

bb.bv:                                            ; preds = %Vec_StrPutC.exit77.i
  %i.su = icmp slt i32 %i.sr, 16
  br i1 %i.su, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.sv = load ptr, ptr %i.me, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i84.i = icmp eq ptr %i.sv, null
  br i1 %.not9.i.i.i84.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.sw = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.sv, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i81.i

bb.by:                                            ; preds = %bb.bw
  %i.sx = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i81.i

bb.bz:                                            ; preds = %bb.bv
  %i.sy = icmp samesign ult i32 %i.sr, 1073741823
  %i.sz = shl nuw nsw i32 %i.sr, 1
  %spec.select.i.i78.i = select i1 %i.sy, i32 %i.sz, i32 2147483647 ; 4 uses
  %.not.i9.i.i79.i = icmp samesign ult i32 %i.sr, %spec.select.i.i78.i
  %.pre103.i = load ptr, ptr %i.me, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i79.i, label %bb.ca, label %Lit_GroupLiterals.exit

bb.ca:                                            ; preds = %bb.bz
  %.not9.i10.i.i80.i = icmp eq ptr %.pre103.i, null
  %i.ta = zext nneg i32 %spec.select.i.i78.i to i64 ; 2 uses
  br i1 %.not9.i10.i.i80.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.tb = tail call ptr @realloc(ptr noundef nonnull %.pre103.i, i64 noundef %i.ta) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i81.i

bb.cc:                                            ; preds = %bb.ca
  %i.tc = tail call noalias ptr @malloc(i64 noundef %i.ta) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i81.i

Vec_StrGrow.exit11.sink.split.i.i81.i:            ; preds = %bb.cc, %bb.cb, %bb.by, %bb.bx
  %storemerge96.i = phi ptr [ %i.sx, %bb.by ], [ %i.sw, %bb.bx ], [ %i.tb, %bb.cb ], [ %i.tc, %bb.cc ] ; 2 uses
  %spec.select.sink.i.i82.i = phi i32 [ 16, %bb.by ], [ 16, %bb.bx ], [ %spec.select.i.i78.i, %bb.cb ], [ %spec.select.i.i78.i, %bb.cc ]
  store ptr %storemerge96.i, ptr %i.me, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i82.i, ptr %i.ly, align 8, !tbaa !24
  br label %Lit_GroupLiterals.exit

Lit_GroupLiterals.exit:                           ; preds = %Vec_StrPutC.exit77.Vec_StrPutC.exit86_crit_edge.i, %bb.bz, %Vec_StrGrow.exit11.sink.split.i.i81.i
  %i.td = phi ptr [ %.pre102.i, %Vec_StrPutC.exit77.Vec_StrPutC.exit86_crit_edge.i ], [ %.pre103.i, %bb.bz ], [ %storemerge96.i, %Vec_StrGrow.exit11.sink.split.i.i81.i ]
  %i.te = add nsw i32 %i.sr, 1
  store i32 %i.te, ptr %i.ma, align 4, !tbaa !27
  %i.tf = sext i32 %i.sr to i64
  %i.tg = getelementptr inbounds i8, ptr %i.td, i64 %i.tf
  store i8 0, ptr %i.tg, align 1, !tbaa !26
  %i.th = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #15 ; 7 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 8 ; 4 uses
  store ptr %i.lk, ptr %i.ti, align 8, !tbaa !14
  store ptr %i.lm, ptr %i.th, align 8, !tbaa !19
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 16 ; 3 uses
  store ptr %i.ly, ptr %i.tj, align 8, !tbaa !28
  store ptr %i.th, ptr %i.ld, align 8, !tbaa !30
  store ptr null, ptr %i.lf, align 8, !tbaa !30
  br i1 %.not, label %.split, label %.split157

.split157:                                        ; preds = %Lit_GroupLiterals.exit
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.14)
  %.val = load ptr, ptr %i.tj, align 8, !tbaa !28
  %i.tk = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.tk, align 8, !tbaa !25
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.19, ptr noundef %.val.val)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.15)
  %i.tl = load ptr, ptr %i.ti, align 8, !tbaa !14
  br i1 %i.jt, label %.lr.ph.i203, label %Lit_PrintTT.exit

.lr.ph.i203:                                      ; preds = %.split157, %.lr.ph.i203
  %indvars.iv.i204 = phi i64 [ %indvars.iv.next.i205, %.lr.ph.i203 ], [ %i.ju, %.split157 ] ; 2 uses
  %indvars.iv.next.i205 = add nsw i64 %indvars.iv.i204, -1 ; 2 uses
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %indvars.iv.next.i205
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !15
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.18, i32 noundef %i.tn)
  %i.to = icmp samesign ugt i64 %indvars.iv.i204, 1
  br i1 %i.to, label %.lr.ph.i203, label %Lit_PrintTT.exit, !llvm.loop !1

Lit_PrintTT.exit:                                 ; preds = %.lr.ph.i203, %.split157
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2)
  br label %.split

.split:                                           ; preds = %Lit_GroupLiterals.exit, %Lit_PrintTT.exit
  %.sink = phi i32 [ %7, %Lit_PrintTT.exit ], [ 0, %Lit_GroupLiterals.exit ]
  %i.tp = tail call ptr @Rpo_Recursion(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %i.jv, i32 noundef %4, ptr noundef nonnull %5, i32 noundef %6, i32 noundef %.sink) ; 2 uses
  %i.tq = load ptr, ptr %i.ti, align 8, !tbaa !14 ; 2 uses
  %.not.i206 = icmp eq ptr %i.tq, null
  br i1 %.not.i206, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.split
  tail call void @free(ptr noundef nonnull %i.tq) #16
  store ptr null, ptr %i.ti, align 8, !tbaa !14
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.split
  %i.tr = load ptr, ptr %i.th, align 8, !tbaa !19 ; 2 uses
  %.not12.i = icmp eq ptr %i.tr, null
  br i1 %.not12.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @free(ptr noundef nonnull %i.tr) #16
  store ptr null, ptr %i.th, align 8, !tbaa !19
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.ts = load ptr, ptr %i.tj, align 8, !tbaa !28 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !25 ; 2 uses
  %.not.i.i207 = icmp eq ptr %i.tu, null
  br i1 %.not.i.i207, label %Lit_Free.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @free(ptr noundef nonnull %i.tu) #16
  br label %Lit_Free.exit

Lit_Free.exit:                                    ; preds = %bb.cg, %bb.ch
  tail call void @free(ptr noundef nonnull %i.ts) #16
  tail call void @free(ptr noundef nonnull %i.th) #16
  store ptr %i.le, ptr %i.ld, align 8, !tbaa !30
  store ptr %i.lg, ptr %i.lf, align 8, !tbaa !30
  %i.tv = load i32, ptr %5, align 4, !tbaa !15
  %i.tw = icmp ne i32 %i.tv, %6
  %i.tx = icmp eq ptr %i.tp, null
  %or.cond = select i1 %i.tw, i1 %i.tx, i1 false
  br i1 %or.cond, label %.lr.ph.i.backedge, label %.loopexit

.loopexit:                                        ; preds = %Lit_Free.exit, %Rpo_computeMinEdgeCost.exit.thread.split, %bb.af
  %.1 = phi ptr [ null, %bb.af ], [ null, %Rpo_computeMinEdgeCost.exit.thread.split ], [ %i.tp, %Lit_Free.exit ] ; 2 uses
  %.not173 = icmp eq ptr %i.db, null
  br i1 %.not173, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %i.db) #16
  br label %bb.cj

bb.cj:                                            ; preds = %.loopexit, %bb.ci
  br i1 %i.jk, label %.lr.ph232, label %._crit_edge233

.lr.ph232:                                        ; preds = %bb.cj, %bb.cl
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %bb.cl ], [ 0, %bb.cj ] ; 2 uses
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv249 ; 2 uses
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !21 ; 2 uses
  %.not175 = icmp eq ptr %i.tz, null
  br i1 %.not175, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph232
  tail call void @free(ptr noundef nonnull %i.tz) #16
  store ptr null, ptr %i.ty, align 8, !tbaa !21
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.lr.ph232
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count.i
  br i1 %exitcond253.not, label %._crit_edge233.thread, label %.lr.ph232, !llvm.loop !84

._crit_edge233:                                   ; preds = %bb.cj
  %.not174 = icmp eq ptr %i.dk, null
  br i1 %.not174, label %bb.cm, label %._crit_edge233.thread

._crit_edge233.thread:                            ; preds = %bb.cl, %._crit_edge233
  tail call void @free(ptr noundef nonnull %i.dk) #16
  br label %bb.cm

bb.cm:                                            ; preds = %._crit_edge233.thread, %._crit_edge233, %._crit_edge237, %bb.j, %Lit_Copy.exit, %bb.i, %bb.a
  %.0155 = phi ptr [ null, %._crit_edge237 ], [ null, %bb.a ], [ %i.w, %Lit_Copy.exit ], [ %i.w, %bb.i ], [ null, %bb.j ], [ %.1, %._crit_edge233 ], [ %.1, %._crit_edge233.thread ]
  ret ptr %.0155
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #8

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #9

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #12

declare void @Kit_TruthCofactor0New(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

declare void @Kit_TruthCofactor1New(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

attributes #0 = { nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind allocsize(1) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !16}
!1 = distinct !{!1, !16}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 int", !10, i64 0}
!12 = !{!"p1 _ZTS10Vec_Str_t_", !10, i64 0}
!13 = !{!"Literal_t_", !11, i64 0, !11, i64 8, !12, i64 16}
!14 = !{!13, !11, i64 8}
!15 = !{!7, !7, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!13, !11, i64 0}
!20 = !{!"p1 _ZTS15Rpo_LCI_Edge_t_", !10, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"p1 omnipotent char", !10, i64 0}
!23 = !{!"Vec_Str_t_", !7, i64 0, !7, i64 4, !22, i64 8}
!24 = !{!23, !7, i64 0}
!25 = !{!23, !22, i64 8}
!26 = !{!6, !6, i64 0}
!27 = !{!23, !7, i64 4}
!28 = !{!13, !12, i64 16}
!29 = !{!"p1 _ZTS10Literal_t_", !10, i64 0}
!30 = !{!29, !29, i64 0}
!31 = distinct !{!31, !16, !17, !18}
!32 = distinct !{!32, !16, !18, !17}
!33 = distinct !{!33, !16, !17, !18}
!34 = distinct !{!34, !16, !18, !17}
!35 = distinct !{!35, !16, !17, !18}
!36 = distinct !{!36, !16, !18, !17}
!37 = distinct !{!37, !16, !17, !18}
!38 = distinct !{!38, !16, !17, !18}
!39 = distinct !{!39, !16, !18, !17}
!40 = distinct !{!40, !16, !17, !18}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, i1 true, !"vprintf"}
!43 = distinct !{!43, !42, !"vprintf: argument 0"}
!44 = distinct !{null}
!45 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!43}
!48 = distinct !{!48, !16}
!49 = distinct !{!49, !16}
!50 = distinct !{!50, !16}
!51 = distinct !{!51, !16, !17, !18}
!52 = distinct !{!52, !16, !18, !17}
!53 = distinct !{!53, !16, !17, !18}
!54 = distinct !{!54, !16, !18, !17}
!55 = distinct !{!55, !16, !17, !18}
!56 = distinct !{!56, !16, !18, !17}
!57 = distinct !{!57, !16, !17, !18}
!58 = distinct !{!58, !16, !18, !17}
!59 = distinct !{!59, !16, !17, !18}
!60 = distinct !{!60, !16, !17, !18}
!61 = distinct !{!61, !16, !17, !18}
!62 = distinct !{!62, !16, !18, !17}
!63 = distinct !{!63, !16}
!64 = distinct !{!64, !85}
!65 = distinct !{!65, !16, !17, !18}
!66 = distinct !{!66, !16, !17}
!67 = distinct !{!67, !85}
!68 = distinct !{!68, !16, !17, !18}
!69 = distinct !{!69, !16, !17}
!70 = distinct !{!70, !16}
!71 = distinct !{!71, !16, !17, !18}
!72 = distinct !{!72, !16, !18, !17}
!73 = distinct !{!73, !16, !17, !18}
!74 = distinct !{!74, !16}
!75 = distinct !{!75, !16}
!76 = distinct !{!76, !16}
!77 = distinct !{!77, !16, !17, !18}
!78 = distinct !{!78, !16, !17}
!79 = distinct !{!79, !16, !17, !18}
!80 = distinct !{!80, !16, !17}
!81 = distinct !{!81, !16, !17, !18}
!82 = distinct !{!82, !16, !17}
!83 = distinct !{!83, !16}
!84 = distinct !{!84, !16}
!85 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
