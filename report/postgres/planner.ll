inline.NumInlined: 215
inline.NumDeleted: 51
begin_hunk_0_@grouping_planner:bb.a
  %i.hb = tail call ptr @palloc0(i64 noundef %i.gy) #10 ; 6 uses
  %i.hc = shl nsw i64 %i.gq, 1
  %i.hd = tail call ptr @palloc(i64 noundef %i.hc) #10 ; 5 uses
  %i.he = ptrtoint ptr %.0169222.i to i64
  %.val.i.i620 = load ptr, ptr %i.gn, align 8
  %i.hf = ptrtoint ptr %.val.i.i620 to i64
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = shl i64 %i.hg, 29
  %i.hi = ashr i64 %i.hh, 32                      ; 2 uses
  %i.hj = load i32, ptr %i.gl, align 4
  %i.hk = sext i32 %i.hj to i64
  %i.hl = icmp slt i64 %i.hi, %i.hk
  br i1 %i.hl, label %.lr.ph, label %.critedge189.i

.lr.ph:                                           ; preds = %.lr.ph242.i, %bb.az
  %.0167239.i722 = phi i32 [ %.1168207.i, %bb.az ], [ 0, %.lr.ph242.i ] ; 9 uses
  %.0165240.i721 = phi i32 [ %.1166209.i, %bb.az ], [ 0, %.lr.ph242.i ] ; 8 uses
  %.0159241.i720 = phi i32 [ %.1160.i, %bb.az ], [ 1, %.lr.ph242.i ] ; 6 uses
  %indvars.iv285.i719 = phi i64 [ %indvars.iv.next286.i, %bb.az ], [ %i.hi, %.lr.ph242.i ] ; 2 uses
  %i.hm = load ptr, ptr %i.gn, align 8
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %indvars.iv285.i719
  %i.ho = load ptr, ptr %i.hn, align 8            ; 5 uses
  %.not185.i = icmp eq ptr %i.ho, null
  br i1 %.not185.i, label %list_length.exit197.i, label %.lr.ph226.i

.lr.ph226.i:                                      ; preds = %.lr.ph
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hr = load i32, ptr %i.hp, align 4            ; 2 uses
  %i.hs = icmp sgt i32 %i.hr, 0
  br i1 %i.hs, label %.lr.ph230.i, label %list_length.exit197.thread.i

.critedge189.i:                                   ; preds = %bb.az, %.lr.ph242.i
  %.0159241.i.lcssa = phi i32 [ 1, %.lr.ph242.i ], [ %.1160.i, %bb.az ] ; 4 uses
  %i.ht = add i32 %.0159241.i.lcssa, -1           ; 5 uses
  %i.hu = tail call ptr @BipartiteMatch(i32 noundef %i.ht, i32 noundef %i.ht, ptr noundef %i.hb) #10 ; 3 uses
  %i.hv = sext i32 %.0159241.i.lcssa to i64
  %i.hw = shl nsw i64 %i.hv, 2
  %i.hx = tail call ptr @palloc0(i64 noundef %i.hw) #10 ; 5 uses
  %.not179246.i = icmp slt i32 %i.ht, 1           ; 3 uses
  br i1 %.not179246.i, label %._crit_edge250.i, label %.lr.ph249.i

.lr.ph249.i:                                      ; preds = %.critedge189.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %smax.i = tail call i32 @llvm.smax.i32(i32 %.0159241.i.lcssa, i32 2)
  %wide.trip.count291.i = zext nneg i32 %smax.i to i64
  br label %bb.ba

.lr.ph230.i:                                      ; preds = %.lr.ph226.i, %.lr.ph230.i
  %indvars.iv.i630 = phi i64 [ %indvars.iv.next.i631, %.lr.ph230.i ], [ 0, %.lr.ph226.i ] ; 2 uses
  %.0164224229.i = phi ptr [ %i.id, %.lr.ph230.i ], [ null, %.lr.ph226.i ]
  %i.ia = load ptr, ptr %i.hq, align 8
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.i630
  %i.ic = load i32, ptr %i.ib, align 8
  %i.id = tail call ptr @bms_add_member(ptr noundef %.0164224229.i, i32 noundef %i.ic) #10 ; 2 uses
  %indvars.iv.next.i631 = add nuw nsw i64 %indvars.iv.i630, 1 ; 2 uses
  %i.ie = load i32, ptr %i.hp, align 4            ; 2 uses
  %i.if = sext i32 %i.ie to i64
  %i.ig = icmp slt i64 %indvars.iv.next.i631, %i.if
  br i1 %i.ig, label %.lr.ph230.i, label %list_length.exit197.thread.i

list_length.exit197.i:                            ; preds = %.lr.ph
  %i.ih = icmp eq i32 %.0167239.i722, 0
  br i1 %i.ih, label %.preheader214.i, label %list_length.exit199.i

list_length.exit197.thread.i:                     ; preds = %.lr.ph230.i, %.lr.ph226.i
  %i.ii = phi i32 [ %i.hr, %.lr.ph226.i ], [ %i.ie, %.lr.ph230.i ] ; 3 uses
  %.0164.lcssa215.i = phi ptr [ null, %.lr.ph226.i ], [ %i.id, %.lr.ph230.i ] ; 2 uses
  %i.ij = icmp eq i32 %.0167239.i722, %i.ii
  br i1 %i.ij, label %.preheader214.i, label %list_length.exit199.thread.i

.preheader214.i:                                  ; preds = %list_length.exit197.thread.i, %list_length.exit197.i
  %.0164217.i = phi ptr [ null, %list_length.exit197.i ], [ %.0164.lcssa215.i, %list_length.exit197.thread.i ] ; 5 uses
  %i.ik = icmp slt i32 %.0165240.i721, %.0159241.i720
  br i1 %i.ik, label %.lr.ph232.preheader.i, label %.thread203.i

.lr.ph232.preheader.i:                            ; preds = %.preheader214.i
  %i.il = sext i32 %.0165240.i721 to i64
  %wide.trip.count.i628 = sext i32 %.0159241.i720 to i64
  br label %.lr.ph232.i

.lr.ph232.i:                                      ; preds = %bb.as, %.lr.ph232.preheader.i
  %indvars.iv279.i = phi i64 [ %i.il, %.lr.ph232.preheader.i ], [ %indvars.iv.next280.i, %bb.as ] ; 4 uses
  %i.im = getelementptr inbounds [8 x i8], ptr %i.ha, i64 %indvars.iv279.i
  %i.in = load ptr, ptr %i.im, align 8
  %i.io = tail call zeroext i1 @bms_equal(ptr noundef %i.in, ptr noundef %.0164217.i) #10
  br i1 %i.io, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph232.i
  %indvars.iv.next280.i = add nsw i64 %indvars.iv279.i, 1 ; 2 uses
  %exitcond.not.i629 = icmp eq i64 %indvars.iv.next280.i, %wide.trip.count.i628
  br i1 %exitcond.not.i629, label %.thread203.i, label %.lr.ph232.i, !llvm.loop !11

list_length.exit199.i:                            ; preds = %list_length.exit197.i
  %spec.select212.i = tail call i32 @llvm.smax.i32(i32 %.0167239.i722, i32 0)
  br label %.thread203.i

list_length.exit199.thread.i:                     ; preds = %list_length.exit197.thread.i
  %i.ip = icmp slt i32 %.0167239.i722, %i.ii
  %spec.select.i626 = select i1 %i.ip, i32 %.0159241.i720, i32 %.0165240.i721
  %spec.select309.i = tail call i32 @llvm.smax.i32(i32 %.0167239.i722, i32 %i.ii)
  br label %.thread203.i

bb.at:                                            ; preds = %.lr.ph232.i
  %i.iq = icmp sgt i64 %indvars.iv279.i, 0
  br i1 %i.iq, label %bb.au, label %.thread203.i

bb.au:                                            ; preds = %bb.at
  %i.ir = and i64 %indvars.iv279.i, 4294967295
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.ir ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = tail call ptr @lappend(ptr noundef %i.it, ptr noundef %i.ho) #10
  store ptr %i.iu, ptr %i.is, align 8
  tail call void @bms_free(ptr noundef %.0164217.i) #10
  br label %bb.az

.thread203.i:                                     ; preds = %bb.as, %bb.at, %list_length.exit199.thread.i, %list_length.exit199.i, %.preheader214.i
  %.0164216.i = phi ptr [ %.0164217.i, %bb.at ], [ null, %list_length.exit199.i ], [ %.0164217.i, %.preheader214.i ], [ %.0164.lcssa215.i, %list_length.exit199.thread.i ], [ %.0164217.i, %bb.as ] ; 2 uses
  %.1166210.i = phi i32 [ %.0165240.i721, %bb.at ], [ %.0165240.i721, %list_length.exit199.i ], [ %.0165240.i721, %.preheader214.i ], [ %spec.select.i626, %list_length.exit199.thread.i ], [ %.0165240.i721, %bb.as ] ; 2 uses
  %.1168208.i = phi i32 [ %.0167239.i722, %bb.at ], [ %spec.select212.i, %list_length.exit199.i ], [ %.0167239.i722, %.preheader214.i ], [ %spec.select309.i, %list_length.exit199.thread.i ], [ %.0167239.i722, %bb.as ]
  %i.iv = tail call ptr @list_make1_impl(i32 noundef 1, ptr %i.ho) #10
  %i.iw = sext i32 %.0159241.i720 to i64          ; 4 uses
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.iw
  store ptr %i.iv, ptr %i.ix, align 8
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.ha, i64 %i.iw
  store ptr %.0164216.i, ptr %i.iy, align 8
  %.0156233.i = add i32 %.1166210.i, -1           ; 2 uses
  %i.iz = icmp sgt i32 %.0156233.i, 0
  br i1 %i.iz, label %.lr.ph236.preheader.i, label %._crit_edge.thread.i

.lr.ph236.preheader.i:                            ; preds = %.thread203.i
  %i.ja = zext nneg i32 %.0156233.i to i64
  br label %.lr.ph236.i

.lr.ph236.i:                                      ; preds = %bb.aw, %.lr.ph236.preheader.i
  %indvars.iv282.i = phi i64 [ %i.ja, %.lr.ph236.preheader.i ], [ %indvars.iv.next283.i, %bb.aw ] ; 4 uses
  %.0154234.i = phi i32 [ 0, %.lr.ph236.preheader.i ], [ %.1155.i, %bb.aw ] ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv282.i
  %i.jc = load ptr, ptr %i.jb, align 8
  %i.jd = tail call zeroext i1 @bms_is_subset(ptr noundef %i.jc, ptr noundef %.0164216.i) #10
  br i1 %i.jd, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph236.i
  %i.je = trunc i64 %indvars.iv282.i to i16
  %i.jf = add i32 %.0154234.i, 1                  ; 2 uses
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [2 x i8], ptr %i.hd, i64 %i.jg
  store i16 %i.je, ptr %i.jh, align 2
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph236.i
  %.1155.i = phi i32 [ %i.jf, %bb.av ], [ %.0154234.i, %.lr.ph236.i ] ; 4 uses
  %indvars.iv.next283.i = add nsw i64 %indvars.iv282.i, -1
  %i.ji = icmp sgt i64 %indvars.iv282.i, 1
  br i1 %i.ji, label %.lr.ph236.i, label %._crit_edge.i627, !llvm.loop !12

._crit_edge.i627:                                 ; preds = %bb.aw
  %i.jj = icmp sgt i32 %.1155.i, 0
  br i1 %i.jj, label %bb.ax, label %._crit_edge.thread.i

bb.ax:                                            ; preds = %._crit_edge.i627
  %i.jk = trunc i32 %.1155.i to i16
  store i16 %i.jk, ptr %i.hd, align 2
  %i.jl = add nuw i32 %.1155.i, 1
  %i.jm = sext i32 %i.jl to i64
  %i.jn = shl nsw i64 %i.jm, 1                    ; 2 uses
  %i.jo = tail call ptr @palloc(i64 noundef %i.jn) #10 ; 2 uses
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.iw
  store ptr %i.jo, ptr %i.jp, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.jo, ptr noundef nonnull align 2 dereferenceable(1) %i.hd, i64 %i.jn, i1 false)
  br label %bb.ay

._crit_edge.thread.i:                             ; preds = %._crit_edge.i627, %.thread203.i
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.iw
  store ptr null, ptr %i.jq, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.thread.i, %bb.ax
  %i.jr = add i32 %.0159241.i720, 1
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.au
  %.1166209.i = phi i32 [ %.0165240.i721, %bb.au ], [ %.1166210.i, %bb.ay ]
  %.1168207.i = phi i32 [ %.0167239.i722, %bb.au ], [ %.1168208.i, %bb.ay ]
  %.1160.i = phi i32 [ %.0159241.i720, %bb.au ], [ %i.jr, %bb.ay ] ; 2 uses
  %indvars.iv.next286.i = add nsw i64 %indvars.iv285.i719, 1 ; 2 uses
  %i.js = load i32, ptr %i.gl, align 4
  %i.jt = sext i32 %i.js to i64
  %i.ju = icmp slt i64 %indvars.iv.next286.i, %i.jt
  br i1 %i.ju, label %.lr.ph, label %.critedge189.i

bb.ba:                                            ; preds = %bb.bf, %.lr.ph249.i
  %indvars.iv288.i = phi i64 [ 1, %.lr.ph249.i ], [ %indvars.iv.next289.i, %bb.bf ] ; 6 uses
  %.0152248.i = phi i32 [ 0, %.lr.ph249.i ], [ %.1153.i, %bb.bf ] ; 3 uses
  %i.jv = load ptr, ptr %i.hy, align 8
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.jv, i64 %indvars.iv288.i
  %i.jx = load i16, ptr %i.jw, align 2            ; 3 uses
  %i.jy = load ptr, ptr %i.hz, align 8
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.jy, i64 %indvars.iv288.i
  %i.ka = load i16, ptr %i.jz, align 2            ; 3 uses
  %10 = zext nneg i16 %i.ka to i64
  %i.kb = icmp sgt i16 %i.jx, 0
  %i.kc = sext i16 %i.jx to i64
  %i.kd = icmp sgt i64 %indvars.iv288.i, %i.kc
  %or.cond.i621 = and i1 %i.kb, %i.kd
  br i1 %or.cond.i621, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ke = zext nneg i16 %i.jx to i64
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 4
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  %i.kh = icmp sgt i16 %i.ka, 0
  %11 = sext i16 %i.ka to i64
  %i.ki = icmp sgt i64 %indvars.iv288.i, %11
  %or.cond192.i = and i1 %i.kh, %i.ki
  br i1 %or.cond192.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %10
  %i.kk = load i32, ptr %i.kj, align 4
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.kl = add i32 %.0152248.i, 1                  ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bb
  %.sink.i622 = phi i32 [ %i.kk, %bb.bd ], [ %i.kl, %bb.be ], [ %i.kg, %bb.bb ]
  %.1153.i = phi i32 [ %.0152248.i, %bb.bd ], [ %i.kl, %bb.be ], [ %.0152248.i, %bb.bb ] ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv288.i
  store i32 %.sink.i622, ptr %i.km, align 4
  %indvars.iv.next289.i = add nuw nsw i64 %indvars.iv288.i, 1 ; 2 uses
  %exitcond292.i = icmp eq i64 %indvars.iv.next289.i, %wide.trip.count291.i
  br i1 %exitcond292.i, label %._crit_edge250.i, label %bb.ba, !llvm.loop !13

._crit_edge250.i:                                 ; preds = %bb.bf, %.critedge189.i
  %.0152.lcssa.i = phi i32 [ 0, %.critedge189.i ], [ %.1153.i, %bb.bf ] ; 3 uses
  %i.kn = add i32 %.0152.lcssa.i, 1
  %i.ko = sext i32 %i.kn to i64
  %i.kp = shl nsw i64 %i.ko, 3
  %i.kq = tail call ptr @palloc0(i64 noundef %i.kp) #10 ; 4 uses
  br i1 %.not179246.i, label %.preheader213.i, label %.lr.ph255.i

.preheader213.i:                                  ; preds = %.lr.ph255.i, %._crit_edge250.i
  %i.kr = icmp sgt i32 %.0151223.i, 0
  br i1 %i.kr, label %.lr.ph257.i, label %.preheader.i623

.lr.ph257.i:                                      ; preds = %.preheader213.i
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 8 ; 2 uses
  %.pre.i625 = load ptr, ptr %i.ks, align 8
  br label %bb.bg

.lr.ph255.i:                                      ; preds = %._crit_edge250.i, %.lr.ph255.i
  %.3253.i = phi i32 [ %i.lc, %.lr.ph255.i ], [ 1, %._crit_edge250.i ] ; 2 uses
  %i.kt = sext i32 %.3253.i to i64                ; 2 uses
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.kt
  %i.kv = load i32, ptr %i.ku, align 4
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.kw ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.kt
  %i.la = load ptr, ptr %i.kz, align 8
  %i.lb = tail call ptr @list_concat(ptr noundef %i.ky, ptr noundef %i.la) #10
  store ptr %i.lb, ptr %i.kx, align 8
  %i.lc = add i32 %.3253.i, 1                     ; 2 uses
  %.not180.i = icmp sgt i32 %i.lc, %i.ht
  br i1 %.not180.i, label %.preheader213.i, label %.lr.ph255.i, !llvm.loop !14

.preheader.i623:                                  ; preds = %bb.bg, %.preheader213.i
  %.not181258.i = icmp slt i32 %.0152.lcssa.i, 1
  br i1 %.not181258.i, label %._crit_edge262.i, label %.lr.ph261.i

bb.bg:                                            ; preds = %bb.bg, %.lr.ph257.i
  %i.ld = phi ptr [ %.pre.i625, %.lr.ph257.i ], [ %i.lf, %bb.bg ]
  %.1256.i = phi i32 [ %.0151223.i, %.lr.ph257.i ], [ %i.le, %bb.bg ] ; 2 uses
  %i.le = add nsw i32 %.1256.i, -1
  %i.lf = tail call ptr @lcons(ptr noundef null, ptr noundef %i.ld) #10 ; 2 uses
  store ptr %i.lf, ptr %i.ks, align 8
  %i.lg = icmp samesign ugt i32 %.1256.i, 1
  br i1 %i.lg, label %bb.bg, label %.preheader.i623, !llvm.loop !15

.lr.ph261.i:                                      ; preds = %.preheader.i623, %.lr.ph261.i
  %.0158260.i = phi ptr [ %i.lk, %.lr.ph261.i ], [ null, %.preheader.i623 ]
  %.4259.i = phi i32 [ %i.ll, %.lr.ph261.i ], [ 1, %.preheader.i623 ] ; 2 uses
  %i.lh = sext i32 %.4259.i to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.lh
  %i.lj = load ptr, ptr %i.li, align 8
  %i.lk = tail call ptr @lappend(ptr noundef %.0158260.i, ptr noundef %i.lj) #10 ; 2 uses
  %i.ll = add i32 %.4259.i, 1                     ; 2 uses
  %.not181.i = icmp sgt i32 %i.ll, %.0152.lcssa.i
  br i1 %.not181.i, label %._crit_edge262.i, label %.lr.ph261.i, !llvm.loop !16

._crit_edge262.i:                                 ; preds = %.lr.ph261.i, %.preheader.i623
  %.0158.lcssa.i = phi ptr [ null, %.preheader.i623 ], [ %i.lk, %.lr.ph261.i ]
  tail call void @BipartiteMatchFree(ptr noundef %i.hu) #10
  tail call void @pfree(ptr noundef %i.kq) #10
  tail call void @pfree(ptr noundef %i.hx) #10
  br i1 %.not179246.i, label %._crit_edge273.critedge.i, label %.lr.ph267.i

.lr.ph267.i:                                      ; preds = %._crit_edge262.i, %bb.bi
  %.5265.i = phi i32 [ %i.lp, %bb.bi ], [ 1, %._crit_edge262.i ] ; 2 uses
  %i.lm = sext i32 %.5265.i to i64
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.lm
  %i.lo = load ptr, ptr %i.ln, align 8            ; 2 uses
  %.not184.i = icmp eq ptr %i.lo, null
  br i1 %.not184.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph267.i
  tail call void @pfree(ptr noundef nonnull %i.lo) #10
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.lr.ph267.i
  %i.lp = add i32 %.5265.i, 1                     ; 2 uses
  %.not182.i = icmp sgt i32 %i.lp, %i.ht
  br i1 %.not182.i, label %._crit_edge268.i, label %.lr.ph267.i, !llvm.loop !17

._crit_edge268.i:                                 ; preds = %bb.bi
  tail call void @pfree(ptr noundef nonnull %i.hb) #10
  tail call void @pfree(ptr noundef %i.hd) #10
  tail call void @pfree(ptr noundef %i.gz) #10
  %wide.trip.count = zext i32 %.0159241.i.lcssa to i64
  br label %.lr.ph272.i

.lr.ph272.i:                                      ; preds = %.lr.ph272.i, %._crit_edge268.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph272.i ], [ 1, %._crit_edge268.i ] ; 2 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv
  %i.lr = load ptr, ptr %i.lq, align 8
  tail call void @bms_free(ptr noundef %i.lr) #10
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
  %.0.i624 = phi ptr [ %.0158.lcssa.i, %._crit_edge273.i ], [ %i.gx, %.critedge187.i ] ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.0.i624, i64 4 ; 3 uses
  %.not108.i = icmp eq ptr %.0.i624, null
  br i1 %.not108.i, label %.critedge117.i, label %.lr.ph190.i

.lr.ph190.i:                                      ; preds = %extract_rollup_sets.exit
  %i.lt = getelementptr inbounds nuw i8, ptr %.0.i624, i64 16
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ec, i64 224
  %i.lv = load i32, ptr %i.ls, align 4
  %i.lw = icmp sgt i32 %i.lv, 0
  br i1 %i.lw, label %list_length.exit.i, label %.critedge117.i

list_length.exit.i:                               ; preds = %.lr.ph190.i, %remap_to_groupclause_idx.exit.i
  %indvars.iv204.i723 = phi i64 [ %indvars.iv.next205.i, %remap_to_groupclause_idx.exit.i ], [ 0, %.lr.ph190.i ] ; 2 uses
  %i.lx = load ptr, ptr %i.lt, align 8
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv204.i723
  %i.lz = load ptr, ptr %i.ly, align 8            ; 3 uses
  %i.ma = tail call noundef ptr @palloc0(i64 noundef 48) #10 ; 6 uses
  store i32 325, ptr %i.ma, align 4
  %i.mb = load i32, ptr %i.ls, align 4
  %i.mc = icmp eq i32 %i.mb, 1
  br i1 %i.mc, label %bb.bj, label %bb.bk

.critedge117.i:                                   ; preds = %remap_to_groupclause_idx.exit.i, %.lr.ph190.i, %extract_rollup_sets.exit, %.critedge115.i, %.lr.ph164.i, %bb.an
  %i.md = load ptr, ptr %i.ek, align 8            ; 3 uses
  %.not110.i = icmp eq ptr %i.md, null
  br i1 %.not110.i, label %preprocess_grouping_sets.exit, label %bb.br

bb.bj:                                            ; preds = %list_length.exit.i
  %i.me = load ptr, ptr %i.lu, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %list_length.exit.i
  %i.mf = phi ptr [ %i.me, %bb.bj ], [ null, %list_length.exit.i ]
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lz, i64 4 ; 2 uses
  %.not.i119.i = icmp eq ptr %i.lz, null
  br i1 %.not.i119.i, label %reorder_grouping_sets.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bk
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mi = load i32, ptr %i.mg, align 4
  %i.mj = icmp sgt i32 %i.mi, 0
  br i1 %i.mj, label %.lr.ph186.i, label %reorder_grouping_sets.exit.i

.lr.ph186.i:                                      ; preds = %.lr.ph.i.i, %.thread44.i.i
  %.03652.i185.i = phi ptr [ %i.nz, %.thread44.i.i ], [ null, %.lr.ph.i.i ]
  %.02953.i184.i = phi ptr [ %i.nw, %.thread44.i.i ], [ null, %.lr.ph.i.i ] ; 4 uses
  %.054.i183.i = phi ptr [ %.us-phi50.i.i, %.thread44.i.i ], [ %i.mf, %.lr.ph.i.i ] ; 5 uses
  %indvars.iv.i182.i = phi i64 [ %indvars.iv.next.i.i, %.thread44.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.mk = load ptr, ptr %i.mh, align 8
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %indvars.iv.i182.i
  %i.mm = load ptr, ptr %i.ml, align 8
  %i.mn = tail call ptr @list_difference_int(ptr noundef %i.mm, ptr noundef %.02953.i184.i) #10 ; 3 uses
  %i.mo = tail call noundef ptr @palloc0(i64 noundef 24) #10 ; 3 uses
  store i32 324, ptr %i.mo, align 4
  %.not.i.i.i = icmp eq ptr %.054.i183.i, null
  %i.mp = getelementptr inbounds nuw i8, ptr %.054.i183.i, i64 4
  %i.mq = getelementptr i8, ptr %.054.i183.i, i64 16 ; 2 uses
  br i1 %.not.i.i.i, label %list_length.exit.us.i.preheader.i, label %list_length.exit.i.i

list_length.exit.us.i.preheader.i:                ; preds = %.lr.ph186.i
  %.not.i40.us.i173.i = icmp eq ptr %.02953.i184.i, null
  br i1 %.not.i40.us.i173.i, label %.thread44.i.i, label %list_length.exit41.thread.us.i.i

list_length.exit41.thread.us.i.i:                 ; preds = %list_length.exit.us.i.preheader.i, %list_length.exit.us.i.i
  %.130.us.i175.i = phi ptr [ %i.nc, %list_length.exit.us.i.i ], [ %.02953.i184.i, %list_length.exit.us.i.preheader.i ] ; 4 uses
  %.033.us.i174.i = phi ptr [ %i.nd, %list_length.exit.us.i.i ], [ %i.mn, %list_length.exit.us.i.preheader.i ] ; 5 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.130.us.i175.i, i64 4
  %i.ms = load i32, ptr %i.mr, align 4            ; 2 uses
  %i.mt = icmp slt i32 %i.ms, 0
  %i.mu = icmp ne ptr %.033.us.i174.i, null
end_hunk_0
