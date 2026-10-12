Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/elbg?download=true
inline.NumInlined: 29
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 14
begin_hunk_0_@do_elbg:bb.a
  %indvars.iv.next.i86.i.i.i = add nuw nsw i64 %indvars.iv.i84.i.i.i, 1 ; 2 uses
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %indvars.iv.next.i86.i.i.i
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !78 ; 2 uses
  %i.to = icmp slt i32 %i.tn, 0
  %.p.i85.i.i.i.1 = select i1 %i.to, i32 %i.sr, i32 %i.sq
  %i.tp = add i32 %.p.i85.i.i.i.1, %i.tn
  %i.tq = sdiv i32 %i.tp, %.sroa.5.0.lcssa52.i.i.i
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.next.i86.i.i.i
  store i32 %i.tq, ptr %i.tr, align 4, !tbaa !78
  %indvars.iv.next.i86.i.i.i.1 = add nuw nsw i64 %indvars.iv.i84.i.i.i, 2 ; 2 uses
  %exitcond.not.i87.i.i.i.1 = icmp eq i64 %indvars.iv.next.i86.i.i.i.1, %wide.trip.count.i140
  br i1 %exitcond.not.i87.i.i.i.1, label %vect_division.exit88.i.i.i, label %scalar.ph350, !llvm.loop !63

bb.ad:                                            ; preds = %vect_division.exit.i.i.i
  br i1 %.not.i80.i.i.i, label %vect_division.exit88.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ku, ptr readonly align 4 %i.pb, i64 %i.aj, i1 false)
  br label %vect_division.exit88.i.i.i

vect_division.exit88.i.i.i:                       ; preds = %scalar.ph350.prol.loopexit, %scalar.ph350, %middle.block364, %._crit_edge26.thread.i.i.i, %bb.ae, %bb.ad, %.preheader.i81.i.i.i
  br i1 %.not76.i.i.i275289302, label %simple_lbg.exit.i.i, label %.lr.ph.i99.i.i

.lr.ph.i99.i.i:                                   ; preds = %vect_division.exit88.i.i.i, %distance_limited.exit106.i.cont.i.i
  %.sroa.0.0.i.i = phi i32 [ %.sroa.0.2.i.i, %distance_limited.exit106.i.cont.i.i ], [ 0, %vect_division.exit88.i.i.i ] ; 3 uses
  %.sroa.6.0.i.i = phi i32 [ %.sroa.6.2.i.i, %distance_limited.exit106.i.cont.i.i ], [ 0, %vect_division.exit88.i.i.i ] ; 4 uses
  %.140.i.i.i = phi ptr [ %i.uv, %distance_limited.exit106.i.cont.i.i ], [ %.075.i.i.i272291300, %vect_division.exit88.i.i.i ] ; 2 uses
  %i.ts = load i32, ptr %.140.i.i.i, align 8, !tbaa !80
  %i.tt = mul nsw i32 %i.ts, %i.t
  %i.tu = sext i32 %i.tt to i64
  %i.tv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.tu ; 2 uses
  br i1 %i.ac, label %.lr.ph.i90.i.i.i, label %distance_limited.exit106.i.thread.i.i

.lr.ph.i90.i.i.i:                                 ; preds = %.lr.ph.i99.i.i, %bb.af
  %indvars.iv.i92.i.i.i = phi i64 [ %indvars.iv.next.i95.i.i.i, %bb.af ], [ 0, %.lr.ph.i99.i.i ] ; 3 uses
  %.01723.i93.i.i.i = phi i32 [ %i.ug, %bb.af ], [ 0, %.lr.ph.i99.i.i ] ; 2 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.i92.i.i.i
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !78
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %indvars.iv.i92.i.i.i
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !78
  %i.ua = sub nsw i32 %i.tx, %i.tz
  %i.ub = sext i32 %i.ua to i64                   ; 2 uses
  %i.uc = mul nsw i64 %i.ub, %i.ub                ; 2 uses
  %i.ud = sext i32 %.01723.i93.i.i.i to i64
  %i.ue = sub nsw i64 2147483647, %i.uc
  %.not.i94.i.i.i = icmp sgt i64 %i.ue, %i.ud
  br i1 %.not.i94.i.i.i, label %bb.af, label %distance_limited.exit97.i.i.i

bb.af:                                            ; preds = %.lr.ph.i90.i.i.i
  %i.uf = trunc i64 %i.uc to i32
  %i.ug = add i32 %.01723.i93.i.i.i, %i.uf        ; 2 uses
  %indvars.iv.next.i95.i.i.i = add nuw nsw i64 %indvars.iv.i92.i.i.i, 1 ; 2 uses
  %exitcond.not.i96.i.i.i = icmp eq i64 %indvars.iv.next.i95.i.i.i, %wide.trip.count.i140
  br i1 %exitcond.not.i96.i.i.i, label %distance_limited.exit97.i.i.i, label %.lr.ph.i90.i.i.i, !llvm.loop !40

distance_limited.exit97.i.i.i:                    ; preds = %bb.af, %.lr.ph.i90.i.i.i
  %.2.i89.i.i.i = phi i32 [ 2147483647, %.lr.ph.i90.i.i.i ], [ %i.ug, %bb.af ] ; 3 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %distance_limited.exit97.i.i.i
  %indvars.iv.i101.i.i.i = phi i64 [ 0, %distance_limited.exit97.i.i.i ], [ %indvars.iv.next.i104.i.i.i, %bb.ah ] ; 3 uses
  %.01723.i102.i.i.i = phi i32 [ 0, %distance_limited.exit97.i.i.i ], [ %i.ur, %bb.ah ] ; 2 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.i101.i.i.i
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !78
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %indvars.iv.i101.i.i.i
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !78
  %i.ul = sub nsw i32 %i.ui, %i.uk
  %i.um = sext i32 %i.ul to i64                   ; 2 uses
  %i.un = mul nsw i64 %i.um, %i.um                ; 2 uses
  %i.uo = sext i32 %.01723.i102.i.i.i to i64
  %i.up = sub nsw i64 2147483647, %i.un
  %.not.i103.i.i.i = icmp sgt i64 %i.up, %i.uo
  br i1 %.not.i103.i.i.i, label %bb.ah, label %distance_limited.exit106.i.thread.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.uq = trunc i64 %i.un to i32
  %i.ur = add i32 %.01723.i102.i.i.i, %i.uq       ; 3 uses
  %indvars.iv.next.i104.i.i.i = add nuw nsw i64 %indvars.iv.i101.i.i.i, 1 ; 2 uses
  %exitcond.not.i105.i.i.i = icmp eq i64 %indvars.iv.next.i104.i.i.i, %wide.trip.count.i140
  br i1 %exitcond.not.i105.i.i.i, label %distance_limited.exit106.i.i.i, label %bb.ag, !llvm.loop !40

distance_limited.exit106.i.thread.i.i:            ; preds = %bb.ag, %.lr.ph.i99.i.i
  %.2.i8917.i.ph.i.i = phi i32 [ 0, %.lr.ph.i99.i.i ], [ %.2.i89.i.i.i, %bb.ag ] ; 2 uses
  %.2.i98.i.ph.i.i = phi i32 [ 0, %.lr.ph.i99.i.i ], [ 2147483647, %bb.ag ] ; 2 uses
  %i.us = icmp sgt i32 %.2.i8917.i.ph.i.i, %.2.i98.i.ph.i.i
  %.sroa.speculated213.i.i = select i1 %i.us, i32 %.sroa.6.0.i.i, i32 %.sroa.0.0.i.i
  %.sroa.speculated.i214.i.i = tail call i32 @llvm.smin.i32(i32 %.2.i8917.i.ph.i.i, i32 %.2.i98.i.ph.i.i)
  %storemerge.i215.i.i = tail call i32 @llvm.sadd.sat.i32(i32 %.sroa.speculated.i214.i.i, i32 %.sroa.speculated213.i.i)
  br label %distance_limited.exit106.i.cont.i.i

distance_limited.exit106.i.i.i:                   ; preds = %bb.ah
  %i.ut = icmp sgt i32 %.2.i89.i.i.i, %i.ur       ; 3 uses
  %.sroa.speculated.i.i = select i1 %i.ut, i32 %.sroa.6.0.i.i, i32 %.sroa.0.0.i.i
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smin.i32(i32 %.2.i89.i.i.i, i32 %i.ur)
  %storemerge.i.i.i = tail call i32 @llvm.sadd.sat.i32(i32 %.sroa.speculated.i.i.i, i32 %.sroa.speculated.i.i) ; 2 uses
  %spec.select.i20.i = select i1 %i.ut, i32 %.sroa.0.0.i.i, i32 %storemerge.i.i.i
  %spec.select233.i.i = select i1 %i.ut, i32 %storemerge.i.i.i, i32 %.sroa.6.0.i.i
  br label %distance_limited.exit106.i.cont.i.i

distance_limited.exit106.i.cont.i.i:              ; preds = %distance_limited.exit106.i.i.i, %distance_limited.exit106.i.thread.i.i
  %.sroa.0.2.i.i = phi i32 [ %spec.select.i20.i, %distance_limited.exit106.i.i.i ], [ %storemerge.i215.i.i, %distance_limited.exit106.i.thread.i.i ] ; 2 uses
  %.sroa.6.2.i.i = phi i32 [ %spec.select233.i.i, %distance_limited.exit106.i.i.i ], [ %.sroa.6.0.i.i, %distance_limited.exit106.i.thread.i.i ] ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.140.i.i.i, i64 8
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !82 ; 2 uses
  %.not62.i.i.i = icmp eq ptr %i.uv, null
  br i1 %.not62.i.i.i, label %simple_lbg.exit.i.i, label %.lr.ph.i99.i.i, !llvm.loop !64

simple_lbg.exit.i.i:                              ; preds = %distance_limited.exit106.i.cont.i.i, %._crit_edge26.thread.i.i.i.thread, %vect_division.exit88.i.i.i
  %.sroa.0.1.i.i = phi i32 [ 0, %vect_division.exit88.i.i.i ], [ 0, %._crit_edge26.thread.i.i.i.thread ], [ %.sroa.0.2.i.i, %distance_limited.exit106.i.cont.i.i ] ; 3 uses
  %.sroa.6.1.i.i = phi i32 [ 0, %vect_division.exit88.i.i.i ], [ 0, %._crit_edge26.thread.i.i.i.thread ], [ %.sroa.6.2.i.i, %distance_limited.exit106.i.cont.i.i ] ; 2 uses
  %spec.select.i.i.i = tail call i32 @llvm.sadd.sat.i32(i32 %.sroa.6.1.i.i, i32 %.sroa.0.1.i.i)
  %i.uw = sext i32 %spec.select.i.i.i to i64      ; 2 uses
  %i.ux = sub nsw i64 2147483647, %i.oz
  %.not.i19.i = icmp sgt i64 %i.ux, %i.uw
  %i.uy = add nsw i64 %i.uw, %i.oz
  %.062.i.i = select i1 %.not.i19.i, i64 %i.uy, i64 2147483647 ; 3 uses
  %i.uz = icmp sgt i64 %i.kt, %.062.i.i
  br i1 %i.uz, label %.preheader, label %try_shift_candidate.exit.i

.preheader:                                       ; preds = %simple_lbg.exit.i.i, %.preheader
  %.033.i.i.i = phi ptr [ %i.vb, %.preheader ], [ %i.ko, %simple_lbg.exit.i.i ] ; 2 uses
  %i.va = load ptr, ptr %.033.i.i.i, align 8, !tbaa !81 ; 2 uses
  %.not.i111.i.i = icmp eq ptr %i.va, null
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  br i1 %.not.i111.i.i, label %bb.ai, label %.preheader, !llvm.loop !65

bb.ai:                                            ; preds = %.preheader
  %i.vc = load ptr, ptr %i.hu, align 8, !tbaa !81
  store ptr %i.vc, ptr %.033.i.i.i, align 8, !tbaa !81
  store ptr null, ptr %i.hu, align 8, !tbaa !81
  %i.vd = load ptr, ptr %i.oy, align 8, !tbaa !81 ; 3 uses
  store ptr null, ptr %i.oy, align 8, !tbaa !81
  %.not353.i.i.i = icmp eq ptr %i.vd, null
  br i1 %.not353.i.i.i, label %shift_codebook.exit.i.i, label %.lr.ph.i112.i.i

.lr.ph.i112.i.i:                                  ; preds = %bb.ai
  br i1 %i.ac, label %.lr.ph.i.us.i116.i.i, label %.lr.ph.split.i.i.i

.lr.ph.i.us.i116.i.i:                             ; preds = %.lr.ph.i112.i.i, %distance_limited.exit44.loopexit.us.i.i.i
  %.04.us.i.i.i = phi ptr [ %i.vf, %distance_limited.exit44.loopexit.us.i.i.i ], [ %i.vd, %.lr.ph.i112.i.i ] ; 3 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %.04.us.i.i.i, i64 8 ; 2 uses
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !82 ; 2 uses
  %i.vg = load i32, ptr %.04.us.i.i.i, align 8, !tbaa !80
  %i.vh = mul nsw i32 %i.vg, %i.t
  %i.vi = sext i32 %i.vh to i64
  %i.vj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.vi ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %.lr.ph.i.us.i116.i.i
  %indvars.iv.i.us.i117.i.i = phi i64 [ 0, %.lr.ph.i.us.i116.i.i ], [ %indvars.iv.next.i.us.i121.i.i, %bb.ak ] ; 3 uses
  %.01723.i.us.i118.i.i = phi i32 [ 0, %.lr.ph.i.us.i116.i.i ], [ %i.vu, %bb.ak ] ; 2 uses
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %indvars.iv.i.us.i117.i.i
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !78
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.i.us.i117.i.i
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !78
  %i.vo = sub nsw i32 %i.vl, %i.vn
  %i.vp = sext i32 %i.vo to i64                   ; 2 uses
  %i.vq = mul nsw i64 %i.vp, %i.vp                ; 2 uses
  %i.vr = sext i32 %.01723.i.us.i118.i.i to i64
  %i.vs = sub nsw i64 2147483647, %i.vq
  %.not.i.us.i119.i.i = icmp sgt i64 %i.vs, %i.vr
  br i1 %.not.i.us.i119.i.i, label %bb.ak, label %.lr.ph.i37.us.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.vt = trunc i64 %i.vq to i32
  %i.vu = add i32 %.01723.i.us.i118.i.i, %i.vt    ; 2 uses
  %indvars.iv.next.i.us.i121.i.i = add nuw nsw i64 %indvars.iv.i.us.i117.i.i, 1 ; 2 uses
  %exitcond.not.i.us.i122.i.i = icmp eq i64 %indvars.iv.next.i.us.i121.i.i, %wide.trip.count.i140
  br i1 %exitcond.not.i.us.i122.i.i, label %.lr.ph.i37.us.i.i.i, label %bb.aj, !llvm.loop !40

.lr.ph.i37.us.i.i.i:                              ; preds = %bb.ak, %bb.aj
  %.2.i.us.i120.i.i = phi i32 [ 2147483647, %bb.aj ], [ %i.vu, %bb.ak ]
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %.lr.ph.i37.us.i.i.i
  %indvars.iv.i39.us.i.i.i = phi i64 [ 0, %.lr.ph.i37.us.i.i.i ], [ %indvars.iv.next.i42.us.i.i.i, %bb.am ] ; 3 uses
  %.01723.i40.us.i.i.i = phi i32 [ 0, %.lr.ph.i37.us.i.i.i ], [ %i.wf, %bb.am ] ; 2 uses
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %indvars.iv.i39.us.i.i.i
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !78
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.i39.us.i.i.i
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !78
  %i.vz = sub nsw i32 %i.vw, %i.vy
  %i.wa = sext i32 %i.vz to i64                   ; 2 uses
  %i.wb = mul nsw i64 %i.wa, %i.wa                ; 2 uses
  %i.wc = sext i32 %.01723.i40.us.i.i.i to i64
  %i.wd = sub nsw i64 2147483647, %i.wb
  %.not.i41.us.i.i.i = icmp sgt i64 %i.wd, %i.wc
  br i1 %.not.i41.us.i.i.i, label %bb.am, label %distance_limited.exit44.loopexit.us.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.we = trunc i64 %i.wb to i32
  %i.wf = add i32 %.01723.i40.us.i.i.i, %i.we     ; 2 uses
  %indvars.iv.next.i42.us.i.i.i = add nuw nsw i64 %indvars.iv.i39.us.i.i.i, 1 ; 2 uses
  %exitcond.not.i43.us.i.i.i = icmp eq i64 %indvars.iv.next.i42.us.i.i.i, %wide.trip.count.i140
  br i1 %exitcond.not.i43.us.i.i.i, label %distance_limited.exit44.loopexit.us.i.i.i, label %bb.al, !llvm.loop !40

distance_limited.exit44.loopexit.us.i.i.i:        ; preds = %bb.am, %bb.al
  %.2.i36.ph.us.i.i.i = phi i32 [ 2147483647, %bb.al ], [ %i.wf, %bb.am ]
  %i.wg = icmp sgt i32 %.2.i.us.i120.i.i, %.2.i36.ph.us.i.i.i
  %.sroa.speculated.i = select i1 %i.wg, i64 %indvars.iv.i13.i, i64 %indvars.iv.i135
  %sext.i = shl i64 %.sroa.speculated.i, 32
  %4 = ashr exact i64 %sext.i, 29
  %5 = getelementptr inbounds i8, ptr %i.m, i64 %4 ; 2 uses
  %i.wh = load ptr, ptr %5, align 8, !tbaa !81
  store ptr %i.wh, ptr %i.ve, align 8, !tbaa !82
  store ptr %.04.us.i.i.i, ptr %5, align 8, !tbaa !81
  %.not35.us.i.i.i = icmp eq ptr %i.vf, null
  br i1 %.not35.us.i.i.i, label %shift_codebook.exit.i.i, label %.lr.ph.i.us.i116.i.i, !llvm.loop !66

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i112.i.i
  %.pre.i114.i.i = load ptr, ptr %i.hu, align 8, !tbaa !81
  br label %distance_limited.exit44.i.i.i

distance_limited.exit44.i.i.i:                    ; preds = %distance_limited.exit44.i.i.i, %.lr.ph.split.i.i.i
  %i.wi = phi ptr [ %.pre.i114.i.i, %.lr.ph.split.i.i.i ], [ %.04.i.i.i, %distance_limited.exit44.i.i.i ]
  %.04.i.i.i = phi ptr [ %i.vd, %.lr.ph.split.i.i.i ], [ %i.wk, %distance_limited.exit44.i.i.i ] ; 4 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 8 ; 2 uses
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !82 ; 2 uses
  store ptr %i.wi, ptr %i.wj, align 8, !tbaa !82
  store ptr %.04.i.i.i, ptr %i.hu, align 8, !tbaa !81
  %.not35.i.i.i = icmp eq ptr %i.wk, null
  br i1 %.not35.i.i.i, label %shift_codebook.exit.i.i.thread, label %distance_limited.exit44.i.i.i, !llvm.loop !66

shift_codebook.exit.i.i.thread:                   ; preds = %distance_limited.exit44.i.i.i
  %i.wl = sub nsw i64 %.062.i.i, %i.kt
  %i.wm = trunc i64 %i.wl to i32
  %i.wn = add i32 %i.ek, %i.wm
  store i32 %.sroa.0.1.i.i, ptr %i.el, align 4, !tbaa !78
  br label %.lr.ph.i123.i.i

shift_codebook.exit.i.i:                          ; preds = %distance_limited.exit44.loopexit.us.i.i.i, %bb.ai
  %.09.i.i.i.pr = load ptr, ptr %i.hu, align 8, !tbaa !81 ; 2 uses
  %i.wo = sub nsw i64 %.062.i.i, %i.kt
  %i.wp = trunc i64 %i.wo to i32
  %i.wq = add i32 %i.ek, %i.wp                    ; 2 uses
  store i32 %.sroa.0.1.i.i, ptr %i.el, align 4, !tbaa !78
  %.not10.i.i.i = icmp eq ptr %.09.i.i.i.pr, null
  br i1 %.not10.i.i.i, label %update_utility_and_n_cb.exit.i.i, label %.lr.ph.i123.i.i

.lr.ph.i123.i.i:                                  ; preds = %shift_codebook.exit.i.i.thread, %shift_codebook.exit.i.i
  %i.wr = phi i32 [ %i.wn, %shift_codebook.exit.i.i.thread ], [ %i.wq, %shift_codebook.exit.i.i ]
  %.09.i.i.i146 = phi ptr [ %.04.i.i.i, %shift_codebook.exit.i.i.thread ], [ %.09.i.i.i.pr, %shift_codebook.exit.i.i ]
  %i.ws = load ptr, ptr %i.x, align 8, !tbaa !18
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.lr.ph.i123.i.i
  %.011.i.i.i = phi ptr [ %.09.i.i.i146, %.lr.ph.i123.i.i ], [ %.0.i124.i.i, %bb.an ] ; 2 uses
  %i.wt = load i32, ptr %.011.i.i.i, align 8, !tbaa !80
  %i.wu = sext i32 %i.wt to i64
  %i.wv = getelementptr inbounds [4 x i8], ptr %i.ws, i64 %i.wu
  store i32 %i.gq, ptr %i.wv, align 4, !tbaa !78
  %i.ww = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8
  %.0.i124.i.i = load ptr, ptr %i.ww, align 8, !tbaa !81 ; 2 uses
  %.not.i125.i.i = icmp eq ptr %.0.i124.i.i, null
  br i1 %.not.i125.i.i, label %update_utility_and_n_cb.exit.i.i, label %bb.an, !llvm.loop !67

update_utility_and_n_cb.exit.i.i:                 ; preds = %bb.an, %shift_codebook.exit.i.i
  %i.wx = phi i32 [ %i.wq, %shift_codebook.exit.i.i ], [ %i.wr, %bb.an ] ; 3 uses
  store i32 %.sroa.6.1.i.i, ptr %i.ho, align 4, !tbaa !78
  %.09.i.1.i.i = load ptr, ptr %i.oy, align 8, !tbaa !81 ; 2 uses
  %.not10.i.1.i.i = icmp eq ptr %.09.i.1.i.i, null
  br i1 %.not10.i.1.i.i, label %update_utility_and_n_cb.exit.1.i.i, label %.lr.ph.i123.1.i.i

.lr.ph.i123.1.i.i:                                ; preds = %update_utility_and_n_cb.exit.i.i
  %i.wy = load ptr, ptr %i.x, align 8, !tbaa !18
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.i123.1.i.i
  %.011.i.1.i.i = phi ptr [ %.09.i.1.i.i, %.lr.ph.i123.1.i.i ], [ %.0.i124.1.i.i, %bb.ao ] ; 2 uses
  %i.wz = load i32, ptr %.011.i.1.i.i, align 8, !tbaa !80
  %i.xa = sext i32 %i.wz to i64
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.wy, i64 %i.xa
  store i32 %i.hl, ptr %i.xb, align 4, !tbaa !78
  %i.xc = getelementptr inbounds nuw i8, ptr %.011.i.1.i.i, i64 8
  %.0.i124.1.i.i = load ptr, ptr %i.xc, align 8, !tbaa !81 ; 2 uses
  %.not.i125.1.i.i = icmp eq ptr %.0.i124.1.i.i, null
  br i1 %.not.i125.1.i.i, label %update_utility_and_n_cb.exit.1.i.i, label %bb.ao, !llvm.loop !67

update_utility_and_n_cb.exit.1.i.i:               ; preds = %bb.ao, %update_utility_and_n_cb.exit.i.i
  store i32 %.2.i83.i.i, ptr %i.hr, align 4, !tbaa !78
  %.09.i.2.i.i = load ptr, ptr %i.ko, align 8, !tbaa !81 ; 2 uses
  %.not10.i.2.i.i = icmp eq ptr %.09.i.2.i.i, null
  br i1 %.not10.i.2.i.i, label %.lr.ph.i128.i.i, label %.lr.ph.i123.2.i.i

.lr.ph.i123.2.i.i:                                ; preds = %update_utility_and_n_cb.exit.1.i.i
  %i.xd = load ptr, ptr %i.x, align 8, !tbaa !18
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.i123.2.i.i
  %.011.i.2.i.i = phi ptr [ %.09.i.2.i.i, %.lr.ph.i123.2.i.i ], [ %.0.i124.2.i.i, %bb.ap ] ; 2 uses
  %i.xe = load i32, ptr %.011.i.2.i.i, align 8, !tbaa !80
  %i.xf = sext i32 %i.xe to i64
  %i.xg = getelementptr inbounds [4 x i8], ptr %i.xd, i64 %i.xf
  store i32 %.220.i.i, ptr %i.xg, align 4, !tbaa !78
  %i.xh = getelementptr inbounds nuw i8, ptr %.011.i.2.i.i, i64 8
  %.0.i124.2.i.i = load ptr, ptr %i.xh, align 8, !tbaa !81 ; 2 uses
  %.not.i125.2.i.i = icmp eq ptr %.0.i124.2.i.i, null
  br i1 %.not.i125.2.i.i, label %.lr.ph.i128.i.i, label %bb.ap, !llvm.loop !67

.lr.ph.i128.i.i:                                  ; preds = %bb.ap, %update_utility_and_n_cb.exit.1.i.i
  %i.xi = sext i32 %i.wx to i64                   ; 3 uses
  br i1 %i.bf, label %.epil.preheader456, label %.lr.ph.i128.i.i.new

.lr.ph.i128.i.i.new:                              ; preds = %.lr.ph.i128.i.i, %.lr.ph.i128.i.i.new
  %indvars.iv.i129.i.i = phi i64 [ %indvars.iv.next.i131.i.i.1, %.lr.ph.i128.i.i.new ], [ 0, %.lr.ph.i128.i.i ] ; 4 uses
  %.01315.i.i.i = phi i64 [ %spec.select.i130.i.i.1, %.lr.ph.i128.i.i.new ], [ 0, %.lr.ph.i128.i.i ]
  %niter461 = phi i64 [ %niter461.next.1, %.lr.ph.i128.i.i.new ], [ 0, %.lr.ph.i128.i.i ]
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i129.i.i
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !78
  %i.xl = sext i32 %i.xk to i64                   ; 2 uses
  %i.xm = mul nsw i64 %i.xl, %i.z
  %i.xn = icmp sgt i64 %i.xm, %i.xi
  %i.xo = select i1 %i.xn, i64 %i.xl, i64 0
  %spec.select.i130.i.i = add nsw i64 %i.xo, %.01315.i.i.i ; 2 uses
  %i.xp = tail call i64 @llvm.smin.i64(i64 %spec.select.i130.i.i, i64 2147483647)
  %i.xq = trunc i64 %i.xp to i32
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.i129.i.i
  store i32 %i.xq, ptr %i.xr, align 4, !tbaa !78
  %indvars.iv.next.i131.i.i = or disjoint i64 %indvars.iv.i129.i.i, 1 ; 2 uses
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.i131.i.i
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !78
  %i.xu = sext i32 %i.xt to i64                   ; 2 uses
  %i.xv = mul nsw i64 %i.xu, %i.z
  %i.xw = icmp sgt i64 %i.xv, %i.xi
  %i.xx = select i1 %i.xw, i64 %i.xu, i64 0
  %spec.select.i130.i.i.1 = add nsw i64 %i.xx, %spec.select.i130.i.i ; 3 uses
  %i.xy = tail call i64 @llvm.smin.i64(i64 %spec.select.i130.i.i.1, i64 2147483647)
  %i.xz = trunc i64 %i.xy to i32
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next.i131.i.i
  store i32 %i.xz, ptr %i.ya, align 4, !tbaa !78
  %indvars.iv.next.i131.i.i.1 = add nuw nsw i64 %indvars.iv.i129.i.i, 2 ; 2 uses
  %niter461.next.1 = add i64 %niter461, 2         ; 2 uses
  %niter461.ncmp.1 = icmp eq i64 %niter461.next.1, %unroll_iter460
  br i1 %niter461.ncmp.1, label %try_shift_candidate.exit.i.loopexit.unr-lcssa, label %.lr.ph.i128.i.i.new, !llvm.loop !43

try_shift_candidate.exit.i.loopexit.unr-lcssa:    ; preds = %.lr.ph.i128.i.i.new
  br i1 %lcmp.mod458.not, label %try_shift_candidate.exit.i, label %.epil.preheader456

.epil.preheader456:                               ; preds = %try_shift_candidate.exit.i.loopexit.unr-lcssa, %.lr.ph.i128.i.i
  %indvars.iv.i129.i.i.epil.init = phi i64 [ 0, %.lr.ph.i128.i.i ], [ %indvars.iv.next.i131.i.i.1, %try_shift_candidate.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %.01315.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i128.i.i ], [ %spec.select.i130.i.i.1, %try_shift_candidate.exit.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod459)
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i129.i.i.epil.init
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !78
  %i.yd = sext i32 %i.yc to i64                   ; 2 uses
  %i.ye = mul nsw i64 %i.yd, %i.z
  %i.yf = icmp sgt i64 %i.ye, %i.xi
  %i.yg = select i1 %i.yf, i64 %i.yd, i64 0
  %spec.select.i130.i.i.epil = add nsw i64 %i.yg, %.01315.i.i.i.epil.init
  %i.yh = tail call i64 @llvm.smin.i64(i64 %spec.select.i130.i.i.epil, i64 2147483647)
  %i.yi = trunc i64 %i.yh to i32
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.i129.i.i.epil.init
  store i32 %i.yi, ptr %i.yj, align 4, !tbaa !78
  br label %try_shift_candidate.exit.i

try_shift_candidate.exit.i:                       ; preds = %.epil.preheader456, %try_shift_candidate.exit.i.loopexit.unr-lcssa, %simple_lbg.exit.i.i, %get_closest_codebook.exit.i, %bb.g
  %i.yk = phi i32 [ %i.ek, %bb.g ], [ %i.ek, %simple_lbg.exit.i.i ], [ %i.ek, %get_closest_codebook.exit.i ], [ %i.wx, %try_shift_candidate.exit.i.loopexit.unr-lcssa ], [ %i.wx, %.epil.preheader456 ] ; 2 uses
  %indvars.iv.next.i136 = add nuw nsw i64 %indvars.iv.i135, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next.i136, %i.z
  br i1 %exitcond210.not, label %do_shiftings.exit, label %bb.g, !llvm.loop !68

do_shiftings.exit:                                ; preds = %bb.h, %try_shift_candidate.exit.i, %._crit_edge166
  %.promoted169181 = phi i32 [ %.promoted169180, %._crit_edge166 ], [ %i.yk, %try_shift_candidate.exit.i ], [ %i.ek, %bb.h ] ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.k, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %i.w, i1 false)
  br i1 %i.o, label %.lr.ph175, label %.preheader149

.lr.ph175:                                        ; preds = %do_shiftings.exit
  %i.yl = load ptr, ptr %i.x, align 8, !tbaa !18  ; 6 uses
  br i1 %i.ac, label %.lr.ph172.us, label %.lr.ph175.split.preheader

.lr.ph175.split.preheader:                        ; preds = %.lr.ph175
  br i1 %i.bh, label %.lr.ph175.split.epil.preheader, label %.lr.ph175.split

.lr.ph172.us:                                     ; preds = %.lr.ph175, %._crit_edge173.us
  %indvars.iv221 = phi i64 [ %indvars.iv.next222, %._crit_edge173.us ], [ 0, %.lr.ph175 ] ; 3 uses
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %indvars.iv221 ; 4 uses
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !78
  %i.yo = sext i32 %i.yn to i64
  %i.yp = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.yo ; 2 uses
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !78
  %i.yr = add nsw i32 %i.yq, 1
  store i32 %i.yr, ptr %i.yp, align 4, !tbaa !78
  %i.ys = mul nuw nsw i64 %indvars.iv221, %wide.trip.count.i140
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ys ; 3 uses
  br i1 %i.bi, label %.epil.preheader467, label %.lr.ph172.us.new

.lr.ph172.us.new:                                 ; preds = %.lr.ph172.us, %.lr.ph172.us.new
  %indvars.iv216 = phi i64 [ %indvars.iv.next217.1, %.lr.ph172.us.new ], [ 0, %.lr.ph172.us ] ; 4 uses
  %niter473 = phi i64 [ %niter473.next.1, %.lr.ph172.us.new ], [ 0, %.lr.ph172.us ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv216
  %i.yt = load i32, ptr %gep, align 4, !tbaa !78
  %i.yu = load i32, ptr %i.ym, align 4, !tbaa !78
  %i.yv = mul nsw i32 %i.yu, %i.t
  %i.yw = trunc nuw nsw i64 %indvars.iv216 to i32
  %i.yx = add nsw i32 %i.yv, %i.yw
  %i.yy = sext i32 %i.yx to i64
  %i.yz = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.yy ; 2 uses
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !78
  %i.zb = add nsw i32 %i.za, %i.yt
  store i32 %i.zb, ptr %i.yz, align 4, !tbaa !78
  %indvars.iv.next217 = or disjoint i64 %indvars.iv216, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next217
end_hunk_0
