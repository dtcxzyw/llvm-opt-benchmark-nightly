inline.NumInlined: 215
inline.NumDeleted: 51
begin_hunk_0_@grouping_planner:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.ea = getelementptr inbounds nuw i8, ptr %i.r, i64 192 ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %.not444 = icmp eq ptr %i.eb, null
  br i1 %.not444, label %bb.bs, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ec = load ptr, ptr %i.q, align 8             ; 3 uses
  %i.ed = tail call ptr @palloc0(i64 noundef 64) #10 ; 10 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 176 ; 3 uses
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr %i.ef, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 3 uses
  store i8 0, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 40 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 32 ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 48 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, i8 0, i64 24, i1 false)
  %i.el = load ptr, ptr %i.ee, align 8            ; 3 uses
  %.not.i494 = icmp eq ptr %i.el, null
  br i1 %.not.i494, label %.critedge.i495, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ah
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4
  %.not104159.i = icmp sgt i32 %i.en, 0
  br i1 %.not104159.i, label %.lr.ph.i499, label %.critedge.i495

.lr.ph.i499:                                      ; preds = %.preheader.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.am, %.lr.ph.i499
  %indvars.iv.i500 = phi i64 [ 0, %.lr.ph.i499 ], [ %indvars.iv.next.i501, %bb.am ] ; 2 uses
  %.093160.i = phi i32 [ 0, %.lr.ph.i499 ], [ %spec.select.i, %bb.am ]
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i500
  %i.er = load ptr, ptr %i.eq, align 8            ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load i32, ptr %i.es, align 4            ; 3 uses
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.et, i32 %.093160.i) ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 18
  %i.ev = load i8, ptr %i.eu, align 2, !range !4, !noundef !5
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.ak, label %bb.aj

.critedge.loopexit.i:                             ; preds = %bb.am
  %i.ex = add i32 %spec.select.i, 1
  %i.ey = sext i32 %i.ex to i64
  %i.ez = shl nsw i64 %i.ey, 2
  br label %.critedge.i495

bb.aj:                                            ; preds = %bb.ai
  %i.fa = load ptr, ptr %i.ei, align 8
  %i.fb = tail call ptr @bms_add_member(ptr noundef %i.fa, i32 noundef %i.et) #10
  store ptr %i.fb, ptr %i.ei, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.fd = load i32, ptr %i.fc, align 4
  %.not113.i = icmp eq i32 %i.fd, 0
  br i1 %.not113.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fe = load ptr, ptr %i.ej, align 8
  %i.ff = tail call ptr @bms_add_member(ptr noundef %i.fe, i32 noundef %i.et) #10
  store ptr %i.ff, ptr %i.ej, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %indvars.iv.next.i501 = add nuw nsw i64 %indvars.iv.i500, 1 ; 2 uses
  %i.fg = load i32, ptr %i.em, align 4
  %i.fh = sext i32 %i.fg to i64
  %.not104.i = icmp slt i64 %indvars.iv.next.i501, %i.fh
  br i1 %.not104.i, label %bb.ai, label %.critedge.loopexit.i, !llvm.loop !10

.critedge.i495:                                   ; preds = %.critedge.loopexit.i, %.preheader.i, %bb.ah
  %.2.i = phi i64 [ 4, %bb.ah ], [ 4, %.preheader.i ], [ %i.ez, %.critedge.loopexit.i ]
  %i.fi = tail call ptr @palloc(i64 noundef %.2.i) #10
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ed, i64 56 ; 3 uses
  store ptr %i.fi, ptr %i.fj, align 8
  %i.fk = load ptr, ptr %i.ej, align 8
  %i.fl = icmp eq ptr %i.fk, null
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ec, i64 192
  %i.fn = load ptr, ptr %i.fm, align 8            ; 4 uses
  %.not.i.i620 = icmp eq ptr %i.fn, null          ; 2 uses
  br i1 %i.fl, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %.critedge.i495
  br i1 %.not.i.i620, label %.critedge117.i, label %.lr.ph164.i

.lr.ph164.i:                                      ; preds = %bb.an
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fq = load i32, ptr %i.fo, align 4
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %.lr.ph171.i, label %.critedge117.i

.lr.ph171.i:                                      ; preds = %.lr.ph164.i, %bb.aq
  %indvars.iv201.i = phi i64 [ %indvars.iv.next202.i, %bb.aq ], [ 0, %.lr.ph164.i ] ; 2 uses
  %.090162170.i = phi ptr [ %.1.i496, %bb.aq ], [ null, %.lr.ph164.i ] ; 2 uses
  %i.fs = load ptr, ptr %i.fp, align 8
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv201.i
  %i.fu = load ptr, ptr %i.ft, align 8            ; 4 uses
  %i.fv = load ptr, ptr %i.ej, align 8
  %i.fw = tail call zeroext i1 @bms_overlap_list(ptr noundef %i.fv, ptr noundef %i.fu) #10
  br i1 %i.fw, label %bb.ao, label %bb.ap

.critedge115.i:                                   ; preds = %bb.aq
  %.not107.i = icmp eq ptr %.1.i496, null
  br i1 %.not107.i, label %.critedge117.i, label %list_head.exit.i621

bb.ao:                                            ; preds = %.lr.ph171.i
  %i.fx = tail call noundef ptr @palloc0(i64 noundef 24) #10 ; 3 uses
  store i32 324, ptr %i.fx, align 4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr %i.fu, ptr %i.fy, align 8
  %i.fz = load ptr, ptr %i.ek, align 8
  %i.ga = tail call ptr @lappend(ptr noundef %i.fz, ptr noundef nonnull %i.fx) #10
  store ptr %i.ga, ptr %i.ek, align 8
  %i.gb = load ptr, ptr %i.ei, align 8
  %i.gc = tail call zeroext i1 @bms_overlap_list(ptr noundef %i.gb, ptr noundef %i.fu) #10
  br i1 %i.gc, label %.split.i498, label %bb.aq

.split.i498:                                      ; preds = %bb.ao
  %i.gd = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.ge = tail call i32 @errcode(i32 noundef 1088) #10 ; 0 uses
  %i.gf = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.12) #10 ; 0 uses
  %i.gg = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.13) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2529, ptr noundef nonnull @__func__.preprocess_grouping_sets) #10
  unreachable

bb.ap:                                            ; preds = %.lr.ph171.i
  %i.gh = tail call ptr @lappend(ptr noundef %.090162170.i, ptr noundef %i.fu) #10
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.1.i496 = phi ptr [ %i.gh, %bb.ap ], [ %.090162170.i, %bb.ao ] ; 3 uses
  %indvars.iv.next202.i = add nuw nsw i64 %indvars.iv201.i, 1 ; 2 uses
  %i.gi = load i32, ptr %i.fo, align 4
  %i.gj = sext i32 %i.gi to i64
  %i.gk = icmp slt i64 %indvars.iv.next202.i, %i.gj
  br i1 %i.gk, label %.lr.ph171.i, label %.critedge115.i

bb.ar:                                            ; preds = %.critedge.i495
  br i1 %.not.i.i620, label %.critedge187.i, label %list_head.exit.i621

list_head.exit.i621:                              ; preds = %.critedge115.i, %bb.ar
  %.1.lcssa.sink.i655 = phi ptr [ %i.fn, %bb.ar ], [ %.1.i496, %.critedge115.i ] ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.1.lcssa.sink.i655, i64 4 ; 3 uses
  %i.gm = load i32, ptr %i.gl, align 4            ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.1.lcssa.sink.i655, i64 16 ; 3 uses
  %i.go = load ptr, ptr %i.gn, align 8            ; 3 uses
  %i.gp = add i32 %i.gm, 1
  %i.gq = sext i32 %i.gp to i64                   ; 2 uses
  %.not221.i = icmp eq ptr %i.go, null
  br i1 %.not221.i, label %.critedge187.i, label %.lr.ph.i622.preheader

.lr.ph.i622.preheader:                            ; preds = %list_head.exit.i621
  %i.gr = sext i32 %i.gm to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.go, i64 %i.gr
  br label %.lr.ph.i622

.lr.ph.i622:                                      ; preds = %.lr.ph.i622.preheader, %select.unfold.i
  %.0158223.i = phi i32 [ %i.gv, %select.unfold.i ], [ 0, %.lr.ph.i622.preheader ] ; 3 uses
  %.0161222.i = phi ptr [ %i.gw, %select.unfold.i ], [ %i.go, %.lr.ph.i622.preheader ] ; 3 uses
  %i.gt = load ptr, ptr %.0161222.i, align 8
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %select.unfold.i, label %.lr.ph242.i

select.unfold.i:                                  ; preds = %.lr.ph.i622
  %i.gv = add i32 %.0158223.i, 1
  %i.gw = getelementptr inbounds nuw i8, ptr %.0161222.i, i64 8 ; 2 uses
  %.not.i637 = icmp ult ptr %i.gw, %i.gs
  br i1 %.not.i637, label %.lr.ph.i622, label %.critedge187.i

.critedge187.i:                                   ; preds = %select.unfold.i, %list_head.exit.i621, %bb.ar
  %.1.lcssa.sink.i656 = phi ptr [ null, %bb.ar ], [ %.1.lcssa.sink.i655, %list_head.exit.i621 ], [ %.1.lcssa.sink.i655, %select.unfold.i ]
  %i.gx = tail call ptr @list_make1_impl(i32 noundef 1, ptr %.1.lcssa.sink.i656) #10
  br label %extract_rollup_sets.exit

.lr.ph242.i:                                      ; preds = %.lr.ph.i622
  %i.gy = shl nsw i64 %i.gq, 3                    ; 3 uses
  %i.gz = tail call ptr @palloc0(i64 noundef %i.gy) #10 ; 5 uses
  %i.ha = tail call ptr @palloc0(i64 noundef %i.gy) #10 ; 5 uses
  %i.hb = tail call ptr @palloc0(i64 noundef %i.gy) #10 ; 6 uses
  %i.hc = shl nsw i64 %i.gq, 1
  %i.hd = tail call ptr @palloc(i64 noundef %i.hc) #10 ; 5 uses
  %i.he = ptrtoint ptr %.0161222.i to i64
  %.val.i.i623 = load ptr, ptr %i.gn, align 8
  %i.hf = ptrtoint ptr %.val.i.i623 to i64
  %i.hg = sub i64 %i.he, %i.hf
  %10 = shl i64 %i.hg, 29
  %11 = ashr i64 %10, 32                          ; 2 uses
  %i.hh = load i32, ptr %i.gl, align 4
  %12 = sext i32 %i.hh to i64
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %.lr.ph, label %.critedge189.i

.lr.ph:                                           ; preds = %.lr.ph242.i, %bb.az
  %.0166238.i726 = phi i32 [ %.1167.i, %bb.az ], [ 1, %.lr.ph242.i ] ; 6 uses
  %.0164239.i725 = phi i32 [ %.1165207.i, %bb.az ], [ 0, %.lr.ph242.i ] ; 8 uses
  %.0162240.i724 = phi i32 [ %.1163209.i, %bb.az ], [ 0, %.lr.ph242.i ] ; 9 uses
  %indvars.iv285.i723 = phi i64 [ %indvars.iv.next286.i, %bb.az ], [ %11, %.lr.ph242.i ] ; 2 uses
  %i.hi = load ptr, ptr %i.gn, align 8
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %indvars.iv285.i723
  %i.hk = load ptr, ptr %i.hj, align 8            ; 5 uses
  %.not185.i = icmp eq ptr %i.hk, null
  br i1 %.not185.i, label %list_length.exit197.i, label %.lr.ph226.i

.lr.ph226.i:                                      ; preds = %.lr.ph
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hn = load i32, ptr %i.hl, align 4            ; 2 uses
  %i.ho = icmp sgt i32 %i.hn, 0
  br i1 %i.ho, label %.lr.ph230.i, label %list_length.exit197.thread.i

.critedge189.i:                                   ; preds = %bb.az, %.lr.ph242.i
  %.0166238.i.lcssa = phi i32 [ 1, %.lr.ph242.i ], [ %.1167.i, %bb.az ] ; 4 uses
  %i.hp = add i32 %.0166238.i.lcssa, -1           ; 5 uses
  %i.hq = tail call ptr @BipartiteMatch(i32 noundef %i.hp, i32 noundef %i.hp, ptr noundef %i.hb) #10 ; 3 uses
  %i.hr = sext i32 %.0166238.i.lcssa to i64
  %i.hs = shl nsw i64 %i.hr, 2
  %i.ht = tail call ptr @palloc0(i64 noundef %i.hs) #10 ; 5 uses
  %.not179246.i = icmp slt i32 %i.hp, 1           ; 3 uses
  br i1 %.not179246.i, label %._crit_edge250.i, label %.lr.ph249.i

.lr.ph249.i:                                      ; preds = %.critedge189.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %smax.i = tail call i32 @llvm.smax.i32(i32 %.0166238.i.lcssa, i32 2)
  %wide.trip.count291.i = zext nneg i32 %smax.i to i64
  br label %bb.ba

.lr.ph230.i:                                      ; preds = %.lr.ph226.i, %.lr.ph230.i
  %indvars.iv.i634 = phi i64 [ %indvars.iv.next.i635, %.lr.ph230.i ], [ 0, %.lr.ph226.i ] ; 2 uses
  %.0157224229.i = phi ptr [ %i.hz, %.lr.ph230.i ], [ null, %.lr.ph226.i ]
  %i.hw = load ptr, ptr %i.hm, align 8
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.i634
  %i.hy = load i32, ptr %i.hx, align 8
  %i.hz = tail call ptr @bms_add_member(ptr noundef %.0157224229.i, i32 noundef %i.hy) #10 ; 2 uses
  %indvars.iv.next.i635 = add nuw nsw i64 %indvars.iv.i634, 1 ; 2 uses
  %i.ia = load i32, ptr %i.hl, align 4            ; 2 uses
  %i.ib = sext i32 %i.ia to i64
  %i.ic = icmp slt i64 %indvars.iv.next.i635, %i.ib
  br i1 %i.ic, label %.lr.ph230.i, label %list_length.exit197.thread.i

list_length.exit197.i:                            ; preds = %.lr.ph
  %i.id = icmp eq i32 %.0162240.i724, 0
  br i1 %i.id, label %.preheader214.i, label %list_length.exit199.i

list_length.exit197.thread.i:                     ; preds = %.lr.ph230.i, %.lr.ph226.i
  %i.ie = phi i32 [ %i.hn, %.lr.ph226.i ], [ %i.ia, %.lr.ph230.i ] ; 3 uses
  %.0157.lcssa215.i = phi ptr [ null, %.lr.ph226.i ], [ %i.hz, %.lr.ph230.i ] ; 2 uses
  %i.if = icmp eq i32 %.0162240.i724, %i.ie
  br i1 %i.if, label %.preheader214.i, label %list_length.exit199.thread.i

.preheader214.i:                                  ; preds = %list_length.exit197.thread.i, %list_length.exit197.i
  %.0157217.i = phi ptr [ null, %list_length.exit197.i ], [ %.0157.lcssa215.i, %list_length.exit197.thread.i ] ; 5 uses
  %i.ig = icmp slt i32 %.0164239.i725, %.0166238.i726
  br i1 %i.ig, label %.lr.ph232.preheader.i, label %.thread203.i

.lr.ph232.preheader.i:                            ; preds = %.preheader214.i
  %i.ih = sext i32 %.0164239.i725 to i64
  %wide.trip.count.i632 = sext i32 %.0166238.i726 to i64
  br label %.lr.ph232.i

.lr.ph232.i:                                      ; preds = %bb.as, %.lr.ph232.preheader.i
  %indvars.iv279.i = phi i64 [ %i.ih, %.lr.ph232.preheader.i ], [ %indvars.iv.next280.i, %bb.as ] ; 4 uses
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.ha, i64 %indvars.iv279.i
  %i.ij = load ptr, ptr %i.ii, align 8
  %i.ik = tail call zeroext i1 @bms_equal(ptr noundef %i.ij, ptr noundef %.0157217.i) #10
  br i1 %i.ik, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph232.i
  %indvars.iv.next280.i = add nsw i64 %indvars.iv279.i, 1 ; 2 uses
  %exitcond.not.i633 = icmp eq i64 %indvars.iv.next280.i, %wide.trip.count.i632
  br i1 %exitcond.not.i633, label %.thread203.i, label %.lr.ph232.i, !llvm.loop !11

list_length.exit199.i:                            ; preds = %list_length.exit197.i
  %spec.select211.i = tail call i32 @llvm.smax.i32(i32 %.0162240.i724, i32 0)
  br label %.thread203.i

list_length.exit199.thread.i:                     ; preds = %list_length.exit197.thread.i
  %i.il = icmp slt i32 %.0162240.i724, %i.ie
  %spec.select.i629 = tail call i32 @llvm.smax.i32(i32 %.0162240.i724, i32 %i.ie)
  %spec.select310.i = select i1 %i.il, i32 %.0166238.i726, i32 %.0164239.i725
  br label %.thread203.i

bb.at:                                            ; preds = %.lr.ph232.i
  %i.im = icmp sgt i64 %indvars.iv279.i, 0
  br i1 %i.im, label %bb.au, label %.thread203.i

bb.au:                                            ; preds = %bb.at
  %i.in = and i64 %indvars.iv279.i, 4294967295
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.in ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = tail call ptr @lappend(ptr noundef %i.ip, ptr noundef %i.hk) #10
  store ptr %i.iq, ptr %i.io, align 8
  tail call void @bms_free(ptr noundef %.0157217.i) #10
  br label %bb.az

.thread203.i:                                     ; preds = %bb.as, %bb.at, %list_length.exit199.thread.i, %list_length.exit199.i, %.preheader214.i
  %.0157216.i = phi ptr [ %.0157217.i, %bb.at ], [ null, %list_length.exit199.i ], [ %.0157217.i, %.preheader214.i ], [ %.0157.lcssa215.i, %list_length.exit199.thread.i ], [ %.0157217.i, %bb.as ] ; 2 uses
  %.1163210.i = phi i32 [ %.0162240.i724, %bb.at ], [ %spec.select211.i, %list_length.exit199.i ], [ %.0162240.i724, %.preheader214.i ], [ %spec.select.i629, %list_length.exit199.thread.i ], [ %.0162240.i724, %bb.as ]
  %.1165208.i = phi i32 [ %.0164239.i725, %bb.at ], [ %.0164239.i725, %list_length.exit199.i ], [ %.0164239.i725, %.preheader214.i ], [ %spec.select310.i, %list_length.exit199.thread.i ], [ %.0164239.i725, %bb.as ] ; 2 uses
  %i.ir = tail call ptr @list_make1_impl(i32 noundef 1, ptr %i.hk) #10
  %i.is = sext i32 %.0166238.i726 to i64          ; 4 uses
  %i.it = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.is
  store ptr %i.ir, ptr %i.it, align 8
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.ha, i64 %i.is
  store ptr %.0157216.i, ptr %i.iu, align 8
  %.0152233.i = add i32 %.1165208.i, -1           ; 2 uses
  %i.iv = icmp sgt i32 %.0152233.i, 0
  br i1 %i.iv, label %.lr.ph236.preheader.i, label %._crit_edge.thread.i

.lr.ph236.preheader.i:                            ; preds = %.thread203.i
  %i.iw = zext nneg i32 %.0152233.i to i64
  br label %.lr.ph236.i

.lr.ph236.i:                                      ; preds = %bb.aw, %.lr.ph236.preheader.i
  %indvars.iv282.i = phi i64 [ %i.iw, %.lr.ph236.preheader.i ], [ %indvars.iv.next283.i, %bb.aw ] ; 4 uses
  %.0151234.i = phi i32 [ 0, %.lr.ph236.preheader.i ], [ %.1.i630, %bb.aw ] ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv282.i
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = tail call zeroext i1 @bms_is_subset(ptr noundef %i.iy, ptr noundef %.0157216.i) #10
  br i1 %i.iz, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph236.i
  %i.ja = trunc i64 %indvars.iv282.i to i16
  %i.jb = add i32 %.0151234.i, 1                  ; 2 uses
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [2 x i8], ptr %i.hd, i64 %i.jc
  store i16 %i.ja, ptr %i.jd, align 2
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph236.i
  %.1.i630 = phi i32 [ %i.jb, %bb.av ], [ %.0151234.i, %.lr.ph236.i ] ; 4 uses
  %indvars.iv.next283.i = add nsw i64 %indvars.iv282.i, -1
  %i.je = icmp sgt i64 %indvars.iv282.i, 1
  br i1 %i.je, label %.lr.ph236.i, label %._crit_edge.i631, !llvm.loop !12

._crit_edge.i631:                                 ; preds = %bb.aw
  %i.jf = icmp sgt i32 %.1.i630, 0
  br i1 %i.jf, label %bb.ax, label %._crit_edge.thread.i

bb.ax:                                            ; preds = %._crit_edge.i631
  %i.jg = trunc i32 %.1.i630 to i16
  store i16 %i.jg, ptr %i.hd, align 2
  %i.jh = add nuw i32 %.1.i630, 1
  %i.ji = sext i32 %i.jh to i64
  %i.jj = shl nsw i64 %i.ji, 1                    ; 2 uses
  %i.jk = tail call ptr @palloc(i64 noundef %i.jj) #10 ; 2 uses
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.is
  store ptr %i.jk, ptr %i.jl, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.jk, ptr noundef nonnull align 2 dereferenceable(1) %i.hd, i64 %i.jj, i1 false)
  br label %bb.ay

._crit_edge.thread.i:                             ; preds = %._crit_edge.i631, %.thread203.i
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.is
  store ptr null, ptr %i.jm, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.thread.i, %bb.ax
  %i.jn = add i32 %.0166238.i726, 1
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.au
  %.1163209.i = phi i32 [ %.0162240.i724, %bb.au ], [ %.1163210.i, %bb.ay ]
  %.1165207.i = phi i32 [ %.0164239.i725, %bb.au ], [ %.1165208.i, %bb.ay ]
  %.1167.i = phi i32 [ %.0166238.i726, %bb.au ], [ %i.jn, %bb.ay ] ; 2 uses
  %indvars.iv.next286.i = add nsw i64 %indvars.iv285.i723, 1 ; 2 uses
  %i.jo = load i32, ptr %i.gl, align 4
  %14 = sext i32 %i.jo to i64
  %i.jp = icmp slt i64 %indvars.iv.next286.i, %14
  br i1 %i.jp, label %.lr.ph, label %.critedge189.i

bb.ba:                                            ; preds = %bb.bf, %.lr.ph249.i
  %indvars.iv288.i = phi i64 [ 1, %.lr.ph249.i ], [ %indvars.iv.next289.i, %bb.bf ] ; 6 uses
  %.0169247.i = phi i32 [ 0, %.lr.ph249.i ], [ %.1170.i, %bb.bf ] ; 3 uses
  %i.jq = load ptr, ptr %i.hu, align 8
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %indvars.iv288.i
  %i.js = load i16, ptr %i.jr, align 2            ; 3 uses
  %i.jt = load ptr, ptr %i.hv, align 8
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.jt, i64 %indvars.iv288.i
  %i.jv = load i16, ptr %i.ju, align 2            ; 3 uses
  %i.jw = zext nneg i16 %i.jv to i64
  %i.jx = icmp sgt i16 %i.js, 0
  %i.jy = sext i16 %i.js to i64
  %i.jz = icmp sgt i64 %indvars.iv288.i, %i.jy
  %or.cond.i624 = and i1 %i.jx, %i.jz
  br i1 %or.cond.i624, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ka = zext nneg i16 %i.js to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.ka
  %i.kc = load i32, ptr %i.kb, align 4
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  %i.kd = icmp sgt i16 %i.jv, 0
  %i.ke = sext i16 %i.jv to i64
  %i.kf = icmp sgt i64 %indvars.iv288.i, %i.ke
  %or.cond192.i = and i1 %i.kd, %i.kf
  br i1 %or.cond192.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.jw
  %i.kh = load i32, ptr %i.kg, align 4
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.ki = add i32 %.0169247.i, 1                  ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bb
  %.sink.i625 = phi i32 [ %i.kh, %bb.bd ], [ %i.ki, %bb.be ], [ %i.kc, %bb.bb ]
  %.1170.i = phi i32 [ %.0169247.i, %bb.bd ], [ %i.ki, %bb.be ], [ %.0169247.i, %bb.bb ] ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv288.i
  store i32 %.sink.i625, ptr %i.kj, align 4
  %indvars.iv.next289.i = add nuw nsw i64 %indvars.iv288.i, 1 ; 2 uses
  %exitcond292.i = icmp eq i64 %indvars.iv.next289.i, %wide.trip.count291.i
  br i1 %exitcond292.i, label %._crit_edge250.i, label %bb.ba, !llvm.loop !13

._crit_edge250.i:                                 ; preds = %bb.bf, %.critedge189.i
  %.0169.lcssa.i = phi i32 [ 0, %.critedge189.i ], [ %.1170.i, %bb.bf ] ; 3 uses
  %i.kk = add i32 %.0169.lcssa.i, 1
  %i.kl = sext i32 %i.kk to i64
  %i.km = shl nsw i64 %i.kl, 3
  %i.kn = tail call ptr @palloc0(i64 noundef %i.km) #10 ; 4 uses
  br i1 %.not179246.i, label %.preheader213.i, label %.lr.ph255.i

.preheader213.i:                                  ; preds = %.lr.ph255.i, %._crit_edge250.i
  %i.ko = icmp sgt i32 %.0158223.i, 0
  br i1 %i.ko, label %.lr.ph257.i, label %.preheader.i626

.lr.ph257.i:                                      ; preds = %.preheader213.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 8 ; 2 uses
  %.pre.i628 = load ptr, ptr %i.kp, align 8
  br label %bb.bg

.lr.ph255.i:                                      ; preds = %._crit_edge250.i, %.lr.ph255.i
  %.3253.i = phi i32 [ %i.kz, %.lr.ph255.i ], [ 1, %._crit_edge250.i ] ; 2 uses
  %i.kq = sext i32 %.3253.i to i64                ; 2 uses
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %i.kq
  %i.ks = load i32, ptr %i.kr, align 4
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.kn, i64 %i.kt ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.kq
  %i.kx = load ptr, ptr %i.kw, align 8
  %i.ky = tail call ptr @list_concat(ptr noundef %i.kv, ptr noundef %i.kx) #10
  store ptr %i.ky, ptr %i.ku, align 8
  %i.kz = add i32 %.3253.i, 1                     ; 2 uses
  %.not180.i = icmp sgt i32 %i.kz, %i.hp
  br i1 %.not180.i, label %.preheader213.i, label %.lr.ph255.i, !llvm.loop !14

.preheader.i626:                                  ; preds = %bb.bg, %.preheader213.i
  %.not181258.i = icmp slt i32 %.0169.lcssa.i, 1
  br i1 %.not181258.i, label %._crit_edge262.i, label %.lr.ph261.i

bb.bg:                                            ; preds = %bb.bg, %.lr.ph257.i
  %i.la = phi ptr [ %.pre.i628, %.lr.ph257.i ], [ %i.lc, %bb.bg ]
  %.1159256.i = phi i32 [ %.0158223.i, %.lr.ph257.i ], [ %i.lb, %bb.bg ] ; 2 uses
  %i.lb = add nsw i32 %.1159256.i, -1
  %i.lc = tail call ptr @lcons(ptr noundef null, ptr noundef %i.la) #10 ; 2 uses
  store ptr %i.lc, ptr %i.kp, align 8
  %i.ld = icmp samesign ugt i32 %.1159256.i, 1
  br i1 %i.ld, label %bb.bg, label %.preheader.i626, !llvm.loop !15

.lr.ph261.i:                                      ; preds = %.preheader.i626, %.lr.ph261.i
  %.4260.i = phi i32 [ %i.li, %.lr.ph261.i ], [ 1, %.preheader.i626 ] ; 2 uses
  %.0168259.i = phi ptr [ %i.lh, %.lr.ph261.i ], [ null, %.preheader.i626 ]
  %i.le = sext i32 %.4260.i to i64
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.kn, i64 %i.le
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = tail call ptr @lappend(ptr noundef %.0168259.i, ptr noundef %i.lg) #10 ; 2 uses
  %i.li = add i32 %.4260.i, 1                     ; 2 uses
  %.not181.i = icmp sgt i32 %i.li, %.0169.lcssa.i
  br i1 %.not181.i, label %._crit_edge262.i, label %.lr.ph261.i, !llvm.loop !16

._crit_edge262.i:                                 ; preds = %.lr.ph261.i, %.preheader.i626
  %.0168.lcssa.i = phi ptr [ null, %.preheader.i626 ], [ %i.lh, %.lr.ph261.i ]
  tail call void @BipartiteMatchFree(ptr noundef %i.hq) #10
  tail call void @pfree(ptr noundef %i.kn) #10
  tail call void @pfree(ptr noundef %i.ht) #10
  br i1 %.not179246.i, label %._crit_edge273.critedge.i, label %.lr.ph267.i

.lr.ph267.i:                                      ; preds = %._crit_edge262.i, %bb.bi
  %.5265.i = phi i32 [ %i.lm, %bb.bi ], [ 1, %._crit_edge262.i ] ; 2 uses
  %i.lj = sext i32 %.5265.i to i64
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.lj
  %i.ll = load ptr, ptr %i.lk, align 8            ; 2 uses
  %.not184.i = icmp eq ptr %i.ll, null
  br i1 %.not184.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph267.i
  tail call void @pfree(ptr noundef nonnull %i.ll) #10
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.lr.ph267.i
  %i.lm = add i32 %.5265.i, 1                     ; 2 uses
  %.not182.i = icmp sgt i32 %i.lm, %i.hp
  br i1 %.not182.i, label %._crit_edge268.i, label %.lr.ph267.i, !llvm.loop !17

._crit_edge268.i:                                 ; preds = %bb.bi
  tail call void @pfree(ptr noundef nonnull %i.hb) #10
  tail call void @pfree(ptr noundef %i.hd) #10
  tail call void @pfree(ptr noundef %i.gz) #10
  %wide.trip.count = zext i32 %.0166238.i.lcssa to i64
  br label %.lr.ph272.i

.lr.ph272.i:                                      ; preds = %.lr.ph272.i, %._crit_edge268.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph272.i ], [ 1, %._crit_edge268.i ] ; 2 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv
  %i.lo = load ptr, ptr %i.ln, align 8
  tail call void @bms_free(ptr noundef %i.lo) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge273.i, label %.lr.ph272.i, !llvm.loop !18

._crit_edge273.critedge.i:                        ; preds = %._crit_edge262.i
  tail call void @pfree(ptr noundef %i.hb) #10
  tail call void @pfree(ptr noundef %i.hd) #10
  tail call void @pfree(ptr noundef %i.gz) #10
  br label %._crit_edge273.i

._crit_edge273.i:                                 ; preds = %.lr.ph272.i, %._crit_edge273.critedge.i
  tail call void @pfree(ptr noundef %i.ha) #10
  br label %extract_rollup_sets.exit

extract_rollup_sets.exit:                         ; preds = %.critedge187.i, %._crit_edge273.i
  %.0.i627 = phi ptr [ %.0168.lcssa.i, %._crit_edge273.i ], [ %i.gx, %.critedge187.i ] ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.0.i627, i64 4 ; 3 uses
  %.not108.i = icmp eq ptr %.0.i627, null
  br i1 %.not108.i, label %.critedge117.i, label %.lr.ph190.i

.lr.ph190.i:                                      ; preds = %extract_rollup_sets.exit
  %i.lq = getelementptr inbounds nuw i8, ptr %.0.i627, i64 16
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ec, i64 224
  %i.ls = load i32, ptr %i.lp, align 4
  %i.lt = icmp sgt i32 %i.ls, 0
  br i1 %i.lt, label %list_length.exit.i, label %.critedge117.i

list_length.exit.i:                               ; preds = %.lr.ph190.i, %remap_to_groupclause_idx.exit.i
  %indvars.iv204.i727 = phi i64 [ %indvars.iv.next205.i, %remap_to_groupclause_idx.exit.i ], [ 0, %.lr.ph190.i ] ; 2 uses
  %i.lu = load ptr, ptr %i.lq, align 8
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %indvars.iv204.i727
  %i.lw = load ptr, ptr %i.lv, align 8            ; 3 uses
  %i.lx = tail call noundef ptr @palloc0(i64 noundef 48) #10 ; 6 uses
  store i32 325, ptr %i.lx, align 4
  %i.ly = load i32, ptr %i.lp, align 4
  %i.lz = icmp eq i32 %i.ly, 1
  br i1 %i.lz, label %bb.bj, label %bb.bk

.critedge117.i:                                   ; preds = %remap_to_groupclause_idx.exit.i, %.lr.ph190.i, %extract_rollup_sets.exit, %.critedge115.i, %.lr.ph164.i, %bb.an
  %i.ma = load ptr, ptr %i.ek, align 8            ; 3 uses
  %.not110.i = icmp eq ptr %i.ma, null
  br i1 %.not110.i, label %preprocess_grouping_sets.exit, label %bb.br

bb.bj:                                            ; preds = %list_length.exit.i
  %i.mb = load ptr, ptr %i.lr, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %list_length.exit.i
  %i.mc = phi ptr [ %i.mb, %bb.bj ], [ null, %list_length.exit.i ]
  %i.md = getelementptr inbounds nuw i8, ptr %i.lw, i64 4 ; 2 uses
  %.not.i119.i = icmp eq ptr %i.lw, null
  br i1 %.not.i119.i, label %reorder_grouping_sets.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bk
  %i.me = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.mf = load i32, ptr %i.md, align 4
  %i.mg = icmp sgt i32 %i.mf, 0
  br i1 %i.mg, label %.lr.ph186.i, label %reorder_grouping_sets.exit.i
end_hunk_0
