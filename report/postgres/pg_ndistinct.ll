Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pg_ndistinct?download=true
inline.NumInlined: 22
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@pg_ndistinct_in:bb.a
  %i.al = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.35) #7 ; 0 uses
  call void @errsave_finish(ptr noundef %i.ah, ptr noundef nonnull @.str.2, i32 noundef 615, ptr noundef nonnull @__func__.build_mvndistinct) #7
  br label %build_mvndistinct.exit

bb.h:                                             ; preds = %list_length.exit.i
  %i.am = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.an = call zeroext i1 @errsave_start(ptr noundef %i.am, ptr noundef null) #7
  br i1 %i.an, label %bb.i, label %build_mvndistinct.exit

bb.i:                                             ; preds = %bb.h
  %i.ao = call i32 @errcode(i32 noundef 33685634) #7 ; 0 uses
  %i.ap = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.aq = load i32, ptr %i.d, align 8
  %i.ar = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.36, i32 noundef %i.aq) #7 ; 0 uses
  call void @errsave_finish(ptr noundef %i.am, ptr noundef nonnull @.str.2, i32 noundef 623, ptr noundef nonnull @__func__.build_mvndistinct) #7
  br label %build_mvndistinct.exit

bb.j:                                             ; preds = %bb.d
  %i.as = sext i32 %i.ac to i64
  %i.at = mul nsw i64 %i.as, 24
  %i.au = add nsw i64 %i.at, 16
  %i.av = call ptr @palloc(i64 noundef %i.au) #7  ; 8 uses
  store i32 -1554858076, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 1, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 %i.ac, ptr %i.ax, align 8
  %.not103149.i = icmp sgt i32 %i.ac, 0
  br i1 %.not103149.i, label %.lr.ph154.i, label %.critedge106.thread.i

.lr.ph154.i:                                      ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 5 uses
  %wide.trip.count177.i = zext nneg i32 %i.ac to i64 ; 3 uses
  br label %bb.k

.critedge.preheader.i:                            ; preds = %.thread.i
  %i.az = sext i32 %spec.select104.i to i64
  %i.ba = getelementptr inbounds [24 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.bd = zext i32 %spec.select104.i to i64
  br label %bb.p

bb.k:                                             ; preds = %.thread.i, %.lr.ph154.i
  %indvars.iv174.i = phi i64 [ 0, %.lr.ph154.i ], [ %indvars.iv.next175.i, %.thread.i ] ; 7 uses
  %.090151.i = phi i32 [ 0, %.lr.ph154.i ], [ %spec.select104.i, %.thread.i ]
  %.094150.i = phi i32 [ 0, %.lr.ph154.i ], [ %spec.select.i, %.thread.i ] ; 2 uses
  %i.be = load ptr, ptr %i.e, align 8
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  %.val.i = load ptr, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %indvars.iv174.i
  %i.bh = load ptr, ptr %i.bg, align 8            ; 6 uses
  %.not.not144.not.i = icmp eq i64 %indvars.iv174.i, 0
  br i1 %.not.not144.not.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i32, ptr %i.bi, align 8
  %.fr162.i = freeze i32 %i.bj                    ; 4 uses
  %i.bk = icmp slt i32 %.fr162.i, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %.fr162.i to i64
  br i1 %i.bk, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %item_attributes_eq.exit.us.i
  %indvars.iv169.i = phi i64 [ %indvars.iv.next170.i, %item_attributes_eq.exit.us.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %indvars.iv169.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 8
  %.not.i107.us.i = icmp eq i32 %.fr162.i, %i.bo
  br i1 %.not.i107.us.i, label %.loopexit.i, label %item_attributes_eq.exit.us.i

item_attributes_eq.exit.us.i:                     ; preds = %.lr.ph.split.us.i
  %indvars.iv.next170.i = add nuw nsw i64 %indvars.iv169.i, 1 ; 2 uses
  %exitcond173.not.i = icmp eq i64 %indvars.iv.next170.i, %indvars.iv174.i
  br i1 %exitcond173.not.i, label %.thread.i, label %.lr.ph.split.us.i, !llvm.loop !7

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %item_attributes_eq.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %item_attributes_eq.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %indvars.iv.i ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i32, ptr %i.bq, align 8
  %.not.i107.i = icmp eq i32 %.fr162.i, %i.br
  br i1 %.not.i107.i, label %.preheader.i.i, label %item_attributes_eq.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.split.i
  %i.bs = load ptr, ptr %i.bl, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.m, !llvm.loop !8

bb.m:                                             ; preds = %bb.l, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.l ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %indvars.iv.i.i
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %indvars.iv.i.i
  %i.by = load i16, ptr %i.bx, align 2
  %.not12.i.i = icmp eq i16 %i.bw, %i.by
  br i1 %.not12.i.i, label %bb.l, label %item_attributes_eq.exit.i

.loopexit.i:                                      ; preds = %.lr.ph.split.us.i, %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @initStringInfo(ptr noundef nonnull %3) #7
  %i.ca = load ptr, ptr %i.bl, align 8
  %i.cb = load i16, ptr %i.ca, align 2
  %i.cc = sext i16 %i.cb to i32
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %3, ptr noundef nonnull @.str.39, i32 noundef %i.cc) #7
  %i.cd = load i32, ptr %i.bz, align 8
  %i.ce = icmp sgt i32 %i.cd, 1
  br i1 %i.ce, label %.lr.ph.i108.i, label %item_attnum_list.exit.i

.lr.ph.i108.i:                                    ; preds = %.loopexit.i, %.lr.ph.i108.i
  %indvars.iv.i109.i = phi i64 [ %indvars.iv.next.i110.i, %.lr.ph.i108.i ], [ 1, %.loopexit.i ] ; 2 uses
  %i.cf = load ptr, ptr %i.bl, align 8
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %indvars.iv.i109.i
  %i.ch = load i16, ptr %i.cg, align 2
  %i.ci = sext i16 %i.ch to i32
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %3, ptr noundef nonnull @.str.6, i32 noundef %i.ci) #7
  %indvars.iv.next.i110.i = add nuw nsw i64 %indvars.iv.i109.i, 1 ; 2 uses
  %i.cj = load i32, ptr %i.bz, align 8
  %i.ck = sext i32 %i.cj to i64
  %i.cl = icmp slt i64 %indvars.iv.next.i110.i, %i.ck
  br i1 %i.cl, label %.lr.ph.i108.i, label %item_attnum_list.exit.i, !llvm.loop !9

item_attnum_list.exit.i:                          ; preds = %.lr.ph.i108.i, %.loopexit.i
  %i.cm = load ptr, ptr %3, align 8               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %i.cn = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.co = call zeroext i1 @errsave_start(ptr noundef %i.cn, ptr noundef null) #7
  br i1 %i.co, label %bb.n, label %bb.o

bb.n:                                             ; preds = %item_attnum_list.exit.i
  %i.cp = call i32 @errcode(i32 noundef 33685634) #7 ; 0 uses
  %i.cq = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.cr = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.13, ptr noundef %i.cm) #7 ; 0 uses
  call void @errsave_finish(ptr noundef %i.cn, ptr noundef nonnull @.str.2, i32 noundef 652, ptr noundef nonnull @__func__.build_mvndistinct) #7
  br label %bb.o

item_attributes_eq.exit.i:                        ; preds = %bb.m, %.lr.ph.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv174.i
  br i1 %exitcond.not.i, label %.thread.i, label %.lr.ph.split.i, !llvm.loop !7

.thread.i:                                        ; preds = %item_attributes_eq.exit.i, %item_attributes_eq.exit.us.i, %bb.k
  %i.cs = load double, ptr %i.bh, align 8
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %indvars.iv174.i ; 3 uses
  store double %i.cs, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i32 %i.cv, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store ptr %i.cy, ptr %i.cz, align 8
  %i.da = load i32, ptr %i.cu, align 8            ; 2 uses
  %i.db = icmp sgt i32 %i.da, %.094150.i
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.da, i32 %.094150.i)
  %i.dc = trunc nuw nsw i64 %indvars.iv174.i to i32
  %spec.select104.i = select i1 %i.db, i32 %i.dc, i32 %.090151.i ; 3 uses
  %indvars.iv.next175.i = add nuw nsw i64 %indvars.iv174.i, 1 ; 2 uses
  %exitcond178.not.i = icmp eq i64 %indvars.iv.next175.i, %wide.trip.count177.i
  br i1 %exitcond178.not.i, label %.critedge.preheader.i, label %bb.k, !llvm.loop !10

bb.o:                                             ; preds = %bb.n, %item_attnum_list.exit.i
  call void @pfree(ptr noundef %i.cm) #7
  br label %build_mvndistinct.exit

bb.p:                                             ; preds = %item_is_attnum_subset.exit.thread.i, %.critedge.preheader.i
  %indvars.iv179.i = phi i64 [ 0, %.critedge.preheader.i ], [ %indvars.iv.next180.i, %item_is_attnum_subset.exit.thread.i ] ; 3 uses
  %i.dd = icmp eq i64 %indvars.iv179.i, %i.bd
  br i1 %i.dd, label %item_is_attnum_subset.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %indvars.iv179.i ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i32, ptr %i.df, align 8            ; 2 uses
  %i.dh = icmp slt i32 %i.dg, 1
  br i1 %i.dh, label %item_is_attnum_subset.exit.thread.i, label %.lr.ph.i111.i

.lr.ph.i111.i:                                    ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = load i32, ptr %i.bb, align 8            ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, 0
  %wide.trip.count.i.i.i = zext nneg i32 %i.dk to i64
  br i1 %i.dl, label %.lr.ph.split.us.i.i, label %item_is_attnum_subset.exit.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i111.i
  %i.dm = load ptr, ptr %i.bc, align 8
  %wide.trip.count.i112.i = zext nneg i32 %i.dg to i64
  br label %.lr.ph.i.us.i.i

.lr.ph.i.us.i.i:                                  ; preds = %item_has_attnum.exit.us.i.i, %.lr.ph.split.us.i.i
  %indvars.iv.i113.i = phi i64 [ 0, %.lr.ph.split.us.i.i ], [ %indvars.iv.next.i114.i, %item_has_attnum.exit.us.i.i ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv.i113.i
  %i.do = load i16, ptr %i.dn, align 2
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.dp = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %i.dp, label %item_is_attnum_subset.exit.i, label %bb.s, !llvm.loop !11

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.us.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.us.i.i ], [ %indvars.iv.next.i.i.i, %bb.r ] ; 2 uses
  %6 = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %indvars.iv.i.i.i
  %7 = load i16, ptr %6, align 2
  %exitcond.not.i.us.i.i = icmp eq i16 %i.do, %7
  br i1 %exitcond.not.i.us.i.i, label %item_has_attnum.exit.us.i.i, label %bb.r

item_has_attnum.exit.us.i.i:                      ; preds = %bb.s
  %indvars.iv.next.i114.i = add nuw nsw i64 %indvars.iv.i113.i, 1 ; 2 uses
  %exitcond.not.i115.i = icmp eq i64 %indvars.iv.next.i114.i, %wide.trip.count.i112.i
  br i1 %exitcond.not.i115.i, label %item_is_attnum_subset.exit.thread.i, label %.lr.ph.i.us.i.i, !llvm.loop !12

item_is_attnum_subset.exit.i:                     ; preds = %.lr.ph.i111.i, %bb.r
  %i.dq = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @initStringInfo(ptr noundef nonnull %2) #7
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = load i16, ptr %i.ds, align 2
  %i.du = sext i16 %i.dt to i32
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %2, ptr noundef nonnull @.str.39, i32 noundef %i.du) #7
  %i.dv = load i32, ptr %i.dq, align 8
  %i.dw = icmp sgt i32 %i.dv, 1
  br i1 %i.dw, label %.lr.ph.i116.i, label %item_attnum_list.exit119.i

.lr.ph.i116.i:                                    ; preds = %item_is_attnum_subset.exit.i, %.lr.ph.i116.i
  %indvars.iv.i117.i = phi i64 [ %indvars.iv.next.i118.i, %.lr.ph.i116.i ], [ 1, %item_is_attnum_subset.exit.i ] ; 2 uses
  %i.dx = load ptr, ptr %i.dr, align 8
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %indvars.iv.i117.i
  %i.dz = load i16, ptr %i.dy, align 2
  %i.ea = sext i16 %i.dz to i32
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %2, ptr noundef nonnull @.str.6, i32 noundef %i.ea) #7
  %indvars.iv.next.i118.i = add nuw nsw i64 %indvars.iv.i117.i, 1 ; 2 uses
  %i.eb = load i32, ptr %i.dq, align 8
  %i.ec = sext i32 %i.eb to i64
  %i.ed = icmp slt i64 %indvars.iv.next.i118.i, %i.ec
  br i1 %i.ed, label %.lr.ph.i116.i, label %item_attnum_list.exit119.i, !llvm.loop !9

item_attnum_list.exit119.i:                       ; preds = %.lr.ph.i116.i, %item_is_attnum_subset.exit.i
  %i.ee = load ptr, ptr %2, align 8               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @initStringInfo(ptr noundef nonnull %1) #7
  %i.ef = load ptr, ptr %i.bc, align 8
  %i.eg = load i16, ptr %i.ef, align 2
  %i.eh = sext i16 %i.eg to i32
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %1, ptr noundef nonnull @.str.39, i32 noundef %i.eh) #7
  %i.ei = load i32, ptr %i.bb, align 8
  %i.ej = icmp sgt i32 %i.ei, 1
  br i1 %i.ej, label %.lr.ph.i120.i, label %item_attnum_list.exit123.i

.lr.ph.i120.i:                                    ; preds = %item_attnum_list.exit119.i, %.lr.ph.i120.i
  %indvars.iv.i121.i = phi i64 [ %indvars.iv.next.i122.i, %.lr.ph.i120.i ], [ 1, %item_attnum_list.exit119.i ] ; 2 uses
  %i.ek = load ptr, ptr %i.bc, align 8
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.ek, i64 %indvars.iv.i121.i
  %i.em = load i16, ptr %i.el, align 2
  %i.en = sext i16 %i.em to i32
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %1, ptr noundef nonnull @.str.6, i32 noundef %i.en) #7
  %indvars.iv.next.i122.i = add nuw nsw i64 %indvars.iv.i121.i, 1 ; 2 uses
  %i.eo = load i32, ptr %i.bb, align 8
  %i.ep = sext i32 %i.eo to i64
  %i.eq = icmp slt i64 %indvars.iv.next.i122.i, %i.ep
  br i1 %i.eq, label %.lr.ph.i120.i, label %item_attnum_list.exit123.i, !llvm.loop !9

item_attnum_list.exit123.i:                       ; preds = %.lr.ph.i120.i, %item_attnum_list.exit119.i
  %i.er = load ptr, ptr %1, align 8               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.es = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.et = call zeroext i1 @errsave_start(ptr noundef %i.es, ptr noundef null) #7
  br i1 %i.et, label %bb.t, label %bb.u

bb.t:                                             ; preds = %item_attnum_list.exit123.i
  %i.eu = call i32 @errcode(i32 noundef 33685634) #7 ; 0 uses
  %i.ev = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.ew = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.13, ptr noundef %i.ee, ptr noundef %i.er) #7 ; 0 uses
  call void @errsave_finish(ptr noundef %i.es, ptr noundef nonnull @.str.2, i32 noundef 703, ptr noundef nonnull @__func__.build_mvndistinct) #7
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %item_attnum_list.exit123.i
  call void @pfree(ptr noundef %i.ee) #7
  call void @pfree(ptr noundef %i.er) #7
  br label %build_mvndistinct.exit

item_is_attnum_subset.exit.thread.i:              ; preds = %item_has_attnum.exit.us.i.i, %bb.q, %bb.p
  %indvars.iv.next180.i = add nuw nsw i64 %indvars.iv179.i, 1 ; 2 uses
  %exitcond182.not.i = icmp eq i64 %indvars.iv.next180.i, %wide.trip.count177.i
  br i1 %exitcond182.not.i, label %.critedge106.i, label %bb.p, !llvm.loop !13

.critedge106.thread.i:                            ; preds = %bb.j
  %i.ex = call ptr @statext_ndistinct_serialize(ptr noundef nonnull %i.av) #7
  br label %._crit_edge.i

.critedge106.i:                                   ; preds = %item_is_attnum_subset.exit.thread.i
  %i.ey = call ptr @statext_ndistinct_serialize(ptr noundef nonnull %i.av) #7
  br label %.lr.ph161.i

._crit_edge.i:                                    ; preds = %.lr.ph161.i, %.critedge106.thread.i
  %i.ez = phi ptr [ %i.ex, %.critedge106.thread.i ], [ %i.ey, %.lr.ph161.i ]
  call void @pfree(ptr noundef nonnull %i.av) #7
  br label %build_mvndistinct.exit

.lr.ph161.i:                                      ; preds = %.lr.ph161.i, %.critedge106.i
  %indvars.iv183.i = phi i64 [ 0, %.critedge106.i ], [ %indvars.iv.next184.i, %.lr.ph161.i ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %indvars.iv183.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8
  call void @pfree(ptr noundef %i.fc) #7
  %indvars.iv.next184.i = add nuw nsw i64 %indvars.iv183.i, 1 ; 2 uses
  %exitcond187.not.i = icmp eq i64 %indvars.iv.next184.i, %wide.trip.count177.i
  br i1 %exitcond187.not.i, label %._crit_edge.i, label %.lr.ph161.i, !llvm.loop !14

build_mvndistinct.exit:                           ; preds = %._crit_edge.i, %bb.u, %bb.o, %bb.i, %bb.h, %bb.g, %bb.f, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.f ], [ %i.ez, %._crit_edge.i ], [ null, %bb.u ], [ null, %bb.o ], [ null, %bb.g ], [ null, %bb.i ], [ null, %bb.h ] ; 2 uses
  %i.fd = load ptr, ptr %i.k, align 8
  call void @list_free(ptr noundef %i.fd) #7
  %i.fe = load ptr, ptr %i.e, align 8
  call void @list_free_deep(ptr noundef %i.fe) #7
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %build_mvndistinct.exit
  %i.ff = ptrtoint ptr %.0 to i64
  br label %bb.ac

bb.w:                                             ; preds = %build_mvndistinct.exit
  %i.fg = load ptr, ptr %i.h, align 8             ; 5 uses
  %.not17 = icmp eq ptr %i.fg, null
  br i1 %.not17, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = icmp eq i32 %i.fh, 468
  br i1 %i.fi, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fk = load i8, ptr %i.fj, align 4, !range !5, !noundef !6
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.x, %bb.y
  %i.fm = call zeroext i1 @errsave_start(ptr noundef %i.fg, ptr noundef null) #7
  br i1 %i.fm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fn = call i32 @errcode(i32 noundef 33685634) #7 ; 0 uses
  %i.fo = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.fp = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.1) #7 ; 0 uses
  call void @errsave_finish(ptr noundef %i.fg, ptr noundef nonnull @.str.2, i32 noundef 780, ptr noundef nonnull @__func__.pg_ndistinct_in) #7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.y
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.fq, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.v
  %.015 = phi i64 [ %i.ff, %bb.v ], [ 0, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i64 %.015
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 24) i32 @ndistinct_object_start(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %bb.m [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 4, label %bb.i
    i32 5, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.a, align 8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = tail call zeroext i1 @errsave_start(ptr noundef %i.d, ptr noundef null) #7
  br i1 %i.e, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @errcode(i32 noundef 33685634) #7 ; 0 uses
  %i.g = load ptr, ptr %0, align 8
  %i.h = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef %i.g) #7 ; 0 uses
  %i.i = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.10) #7 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.d, ptr noundef nonnull @.str.2, i32 noundef 76, ptr noundef nonnull @__func__.ndistinct_object_start) #7
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = tail call zeroext i1 @errsave_start(ptr noundef %i.k, ptr noundef null) #7
  br i1 %i.l, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @errcode(i32 noundef 33685634) #7 ; 0 uses
  %i.n = load ptr, ptr %0, align 8
  %i.o = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef %i.n) #7 ; 0 uses
  %i.p = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.11) #7 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.k, ptr noundef nonnull @.str.2, i32 noundef 84, ptr noundef nonnull @__func__.ndistinct_object_start) #7
  br label %bb.n

bb.g:                                             ; preds = %bb.a
end_hunk_0
