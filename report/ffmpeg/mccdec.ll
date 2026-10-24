Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mccdec?download=true
inline.NumInlined: 17
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@mcc_read_header:bb.a
  br label %time_tracker_init.exit.thread

.loopexit.i:                                      ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.bo = call i32 @av_stristart(ptr noundef nonnull %i.af, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @valid_time_code_rates, i64 24), ptr noundef nonnull %i.a) #6
  %.not.1.i = icmp eq i32 %i.bo, 0
  br i1 %.not.1.i, label %.loopexit.1.i, label %.preheader.1.i

.preheader.1.i:                                   ; preds = %.loopexit.i
  %.promoted.1.i = load ptr, ptr %i.a, align 8, !tbaa !56
  br label %bb.l

bb.l:                                             ; preds = %av_isspace.exit.thread.1.i, %.preheader.1.i
  %i.bp = phi ptr [ %.promoted.1.i, %.preheader.1.i ], [ %i.br, %av_isspace.exit.thread.1.i ] ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !57
  switch i8 %i.bq, label %.loopexit.1.i [
    i8 0, label %.critedge.i
    i8 32, label %av_isspace.exit.thread.1.i
    i8 13, label %av_isspace.exit.thread.1.i
    i8 12, label %av_isspace.exit.thread.1.i
    i8 10, label %av_isspace.exit.thread.1.i
    i8 9, label %av_isspace.exit.thread.1.i
    i8 11, label %av_isspace.exit.thread.1.i
  ]

av_isspace.exit.thread.1.i:                       ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 2 uses
  store ptr %i.br, ptr %i.a, align 8, !tbaa !56
  br label %bb.l, !llvm.loop !32

.loopexit.1.i:                                    ; preds = %bb.l, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.bs = call i32 @av_stristart(ptr noundef nonnull %i.af, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @valid_time_code_rates, i64 40), ptr noundef nonnull %i.a) #6
  %.not.2.i = icmp eq i32 %i.bs, 0
  br i1 %.not.2.i, label %.loopexit.2.i, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.loopexit.1.i
  %.promoted.2.i = load ptr, ptr %i.a, align 8, !tbaa !56
  br label %bb.m

bb.m:                                             ; preds = %av_isspace.exit.thread.2.i, %.preheader.2.i
  %i.bt = phi ptr [ %.promoted.2.i, %.preheader.2.i ], [ %i.bv, %av_isspace.exit.thread.2.i ] ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !57
  switch i8 %i.bu, label %.loopexit.2.i [
    i8 0, label %.critedge.i
    i8 32, label %av_isspace.exit.thread.2.i
    i8 13, label %av_isspace.exit.thread.2.i
    i8 12, label %av_isspace.exit.thread.2.i
    i8 10, label %av_isspace.exit.thread.2.i
    i8 9, label %av_isspace.exit.thread.2.i
    i8 11, label %av_isspace.exit.thread.2.i
  ]

av_isspace.exit.thread.2.i:                       ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 1 ; 2 uses
  store ptr %i.bv, ptr %i.a, align 8, !tbaa !56
  br label %bb.m, !llvm.loop !32

.loopexit.2.i:                                    ; preds = %bb.m, %.loopexit.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.bw = call i32 @av_stristart(ptr noundef nonnull %i.af, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @valid_time_code_rates, i64 56), ptr noundef nonnull %i.a) #6
  %.not.3.i = icmp eq i32 %i.bw, 0
  br i1 %.not.3.i, label %.loopexit.3.i, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.loopexit.2.i
  %.promoted.3.i = load ptr, ptr %i.a, align 8, !tbaa !56
  br label %bb.n

bb.n:                                             ; preds = %av_isspace.exit.thread.3.i, %.preheader.3.i
  %i.bx = phi ptr [ %.promoted.3.i, %.preheader.3.i ], [ %i.bz, %av_isspace.exit.thread.3.i ] ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !57
  switch i8 %i.by, label %.loopexit.3.i [
    i8 0, label %.critedge.i
    i8 32, label %av_isspace.exit.thread.3.i
    i8 13, label %av_isspace.exit.thread.3.i
    i8 12, label %av_isspace.exit.thread.3.i
    i8 10, label %av_isspace.exit.thread.3.i
    i8 9, label %av_isspace.exit.thread.3.i
    i8 11, label %av_isspace.exit.thread.3.i
  ]

av_isspace.exit.thread.3.i:                       ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 2 uses
  store ptr %i.bz, ptr %i.a, align 8, !tbaa !56
  br label %bb.n, !llvm.loop !32

.loopexit.3.i:                                    ; preds = %bb.n, %.loopexit.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ca = call i32 @av_stristart(ptr noundef nonnull %i.af, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @valid_time_code_rates, i64 72), ptr noundef nonnull %i.a) #6
  %.not.4.i = icmp eq i32 %i.ca, 0
  br i1 %.not.4.i, label %.loopexit.4.i, label %.preheader.4.i

.preheader.4.i:                                   ; preds = %.loopexit.3.i
  %.promoted.4.i = load ptr, ptr %i.a, align 8, !tbaa !56
  br label %bb.o

bb.o:                                             ; preds = %av_isspace.exit.thread.4.i, %.preheader.4.i
  %i.cb = phi ptr [ %.promoted.4.i, %.preheader.4.i ], [ %i.cd, %av_isspace.exit.thread.4.i ] ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !57
  switch i8 %i.cc, label %.loopexit.4.i [
    i8 0, label %.critedge.i
    i8 32, label %av_isspace.exit.thread.4.i
    i8 13, label %av_isspace.exit.thread.4.i
    i8 12, label %av_isspace.exit.thread.4.i
    i8 10, label %av_isspace.exit.thread.4.i
    i8 9, label %av_isspace.exit.thread.4.i
    i8 11, label %av_isspace.exit.thread.4.i
  ]

av_isspace.exit.thread.4.i:                       ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 1 ; 2 uses
  store ptr %i.cd, ptr %i.a, align 8, !tbaa !56
  br label %bb.o, !llvm.loop !32

.loopexit.4.i:                                    ; preds = %bb.o, %.loopexit.3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ce = call i32 @av_stristart(ptr noundef nonnull %i.af, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @valid_time_code_rates, i64 88), ptr noundef nonnull %i.a) #6
  %.not.5.i = icmp eq i32 %i.ce, 0
  br i1 %.not.5.i, label %.loopexit.5.i, label %.preheader.5.i

.preheader.5.i:                                   ; preds = %.loopexit.4.i
  %.promoted.5.i = load ptr, ptr %i.a, align 8, !tbaa !56
  br label %bb.p

bb.p:                                             ; preds = %av_isspace.exit.thread.5.i, %.preheader.5.i
  %i.cf = phi ptr [ %.promoted.5.i, %.preheader.5.i ], [ %i.ch, %av_isspace.exit.thread.5.i ] ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !57
  switch i8 %i.cg, label %.loopexit.5.i [
    i8 0, label %.critedge.i
    i8 32, label %av_isspace.exit.thread.5.i
    i8 13, label %av_isspace.exit.thread.5.i
    i8 12, label %av_isspace.exit.thread.5.i
    i8 10, label %av_isspace.exit.thread.5.i
    i8 9, label %av_isspace.exit.thread.5.i
    i8 11, label %av_isspace.exit.thread.5.i
  ]

av_isspace.exit.thread.5.i:                       ; preds = %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 1 ; 2 uses
  store ptr %i.ch, ptr %i.a, align 8, !tbaa !56
  br label %bb.p, !llvm.loop !32

.loopexit.5.i:                                    ; preds = %bb.p, %.loopexit.4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ci = call i32 @av_stristart(ptr noundef nonnull %i.af, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @valid_time_code_rates, i64 104), ptr noundef nonnull %i.a) #6
  %.not.6.i = icmp eq i32 %i.ci, 0
  br i1 %.not.6.i, label %parse_time_code_rate.exit.thread, label %.preheader.6.i

.preheader.6.i:                                   ; preds = %.loopexit.5.i
  %.promoted.6.i = load ptr, ptr %i.a, align 8, !tbaa !56
  br label %bb.q

bb.q:                                             ; preds = %av_isspace.exit.thread.6.i, %.preheader.6.i
  %i.cj = phi ptr [ %.promoted.6.i, %.preheader.6.i ], [ %i.cl, %av_isspace.exit.thread.6.i ] ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !57
  switch i8 %i.ck, label %parse_time_code_rate.exit.thread [
    i8 0, label %.critedge.i
    i8 32, label %av_isspace.exit.thread.6.i
    i8 13, label %av_isspace.exit.thread.6.i
    i8 12, label %av_isspace.exit.thread.6.i
    i8 10, label %av_isspace.exit.thread.6.i
    i8 9, label %av_isspace.exit.thread.6.i
    i8 11, label %av_isspace.exit.thread.6.i
  ]

av_isspace.exit.thread.6.i:                       ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 1 ; 2 uses
  store ptr %i.cl, ptr %i.a, align 8, !tbaa !56
  br label %bb.q, !llvm.loop !32

parse_time_code_rate.exit.thread:                 ; preds = %.loopexit.5.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 8, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.af) #6
  br label %time_tracker_init.exit.thread

parse_time_code_rate.exit:                        ; preds = %bb.k
  %i.cm = load i32, ptr %1, align 4, !tbaa !54
  %i.cn = sext i32 %i.cm to i64
  store i64 %i.cn, ptr %i.y, align 8, !tbaa !55
  call void @avpriv_set_pts_info(ptr noundef nonnull %i.e, i32 noundef 64, i32 noundef %.sroa.4.0.extract.trunc.i.i, i32 noundef %.sroa.0.0.extract.trunc.i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.outer.backedge

bb.r:                                             ; preds = %bb.h
  %i.co = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 61) #7
  %.not103 = icmp eq ptr %i.co, null
  br i1 %.not103, label %.preheader217, label %.backedge

.preheader217:                                    ; preds = %bb.r
  %i.cp = trunc i16 %lhsv to i8
  br label %bb.s

bb.s:                                             ; preds = %.preheader217, %av_isspace.exit.thread
  %i.cq = phi i8 [ %.pre, %av_isspace.exit.thread ], [ %i.cp, %.preheader217 ] ; 3 uses
  %storemerge = phi ptr [ %i.cr, %av_isspace.exit.thread ], [ %i.b, %.preheader217 ] ; 2 uses
  switch i8 %i.cq, label %bb.t [
    i8 32, label %av_isspace.exit.thread
    i8 13, label %av_isspace.exit.thread
    i8 12, label %av_isspace.exit.thread
    i8 10, label %av_isspace.exit.thread
    i8 9, label %av_isspace.exit.thread
    i8 11, label %av_isspace.exit.thread
    i8 0, label %.outer.backedge
  ]

av_isspace.exit.thread:                           ; preds = %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %storemerge, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.cr, align 1, !tbaa !57
  br label %bb.s, !llvm.loop !33

bb.t:                                             ; preds = %bb.s
  %7 = add i8 %i.cq, -58
  %i.cs = icmp ult i8 %7, -10
  br i1 %i.cs, label %.split, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %8 = zext nneg i8 %i.cq to i32
  %i.ct = add nsw i32 %8, -48
  br label %.lr.ph.i

.preheaderthread-pre-split.i.i:                   ; preds = %.lr.ph.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cz, i64 1 ; 2 uses
  %.pr.i.i = load i8, ptr %i.cu, align 1, !tbaa !57 ; 2 uses
  %i.cv = sext i8 %.pr.i.i to i32
  %i.cw = add nsw i32 %i.cv, -48                  ; 2 uses
  %i.cx = icmp ugt i32 %i.cw, 9
  br i1 %i.cx, label %.preheader.i._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheaderthread-pre-split.i.i, %.lr.ph.preheader.i
  %i.cy = phi i32 [ %i.cw, %.preheaderthread-pre-split.i.i ], [ %i.ct, %.lr.ph.preheader.i ]
  %i.cz = phi ptr [ %i.cu, %.preheaderthread-pre-split.i.i ], [ %storemerge, %.lr.ph.preheader.i ] ; 2 uses
  %i.da = phi i32 [ %i.dc, %.preheaderthread-pre-split.i.i ], [ 0, %.lr.ph.preheader.i ]
  %i.db = mul nuw nsw i32 %i.da, 10
  %i.dc = add nuw nsw i32 %i.db, %i.cy            ; 3 uses
  %.not.i.i = icmp samesign ugt i32 %i.dc, 23
  br i1 %.not.i.i, label %.split, label %.preheaderthread-pre-split.i.i

.preheader.i._crit_edge.i:                        ; preds = %.preheaderthread-pre-split.i.i
  %cond.i = icmp eq i8 %.pr.i.i, 58
  br i1 %cond.i, label %bb.u, label %.split

bb.u:                                             ; preds = %.preheader.i._crit_edge.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 2 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !57  ; 2 uses
  %9 = add i8 %i.de, -58
  %i.df = icmp ult i8 %9, -10
  br i1 %i.df, label %.split, label %.lr.ph124.preheader.i

.lr.ph124.preheader.i:                            ; preds = %bb.u
  %10 = zext nneg i8 %i.de to i32
  %i.dg = add nsw i32 %10, -48
  br label %.lr.ph124.i

.preheaderthread-pre-split.i39.i:                 ; preds = %.lr.ph124.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dm, i64 1 ; 2 uses
  %.pr.i40.i = load i8, ptr %i.dh, align 1, !tbaa !57 ; 2 uses
  %i.di = sext i8 %.pr.i40.i to i32
  %i.dj = add nsw i32 %i.di, -48                  ; 2 uses
  %i.dk = icmp ugt i32 %i.dj, 9
  br i1 %i.dk, label %.preheader.i37._crit_edge.i, label %.lr.ph124.i

.lr.ph124.i:                                      ; preds = %.preheaderthread-pre-split.i39.i, %.lr.ph124.preheader.i
  %i.dl = phi i32 [ %i.dj, %.preheaderthread-pre-split.i39.i ], [ %i.dg, %.lr.ph124.preheader.i ]
  %i.dm = phi ptr [ %i.dh, %.preheaderthread-pre-split.i39.i ], [ %i.dd, %.lr.ph124.preheader.i ] ; 2 uses
  %i.dn = phi i32 [ %i.dp, %.preheaderthread-pre-split.i39.i ], [ 0, %.lr.ph124.preheader.i ]
  %i.do = mul nuw nsw i32 %i.dn, 10
  %i.dp = add nuw nsw i32 %i.do, %i.dl            ; 3 uses
  %.not.i38.i = icmp samesign ugt i32 %i.dp, 59
  br i1 %.not.i38.i, label %.split, label %.preheaderthread-pre-split.i39.i

.preheader.i37._crit_edge.i:                      ; preds = %.preheaderthread-pre-split.i39.i
  %cond93.i = icmp eq i8 %.pr.i40.i, 58
  br i1 %cond93.i, label %bb.v, label %.split

bb.v:                                             ; preds = %.preheader.i37._crit_edge.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 2 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !57  ; 2 uses
  %11 = add i8 %i.dr, -58
  %i.ds = icmp ult i8 %11, -10
  br i1 %i.ds, label %.split, label %.lr.ph127.preheader.i

.lr.ph127.preheader.i:                            ; preds = %bb.v
  %12 = zext nneg i8 %i.dr to i32
  %i.dt = add nsw i32 %12, -48
  br label %.lr.ph127.i

.preheaderthread-pre-split.i47.i:                 ; preds = %.lr.ph127.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dz, i64 1 ; 2 uses
  %.pr.i48.i = load i8, ptr %i.du, align 1, !tbaa !57 ; 4 uses
  %i.dv = sext i8 %.pr.i48.i to i32
  %i.dw = add nsw i32 %i.dv, -48                  ; 2 uses
  %i.dx = icmp ugt i32 %i.dw, 9
  br i1 %i.dx, label %.preheader.i45._crit_edge.i, label %.lr.ph127.i

.lr.ph127.i:                                      ; preds = %.preheaderthread-pre-split.i47.i, %.lr.ph127.preheader.i
  %i.dy = phi i32 [ %i.dw, %.preheaderthread-pre-split.i47.i ], [ %i.dt, %.lr.ph127.preheader.i ]
  %i.dz = phi ptr [ %i.du, %.preheaderthread-pre-split.i47.i ], [ %i.dq, %.lr.ph127.preheader.i ] ; 2 uses
  %i.ea = phi i32 [ %i.ec, %.preheaderthread-pre-split.i47.i ], [ 0, %.lr.ph127.preheader.i ]
  %i.eb = mul nuw nsw i32 %i.ea, 10
  %i.ec = add nuw nsw i32 %i.eb, %i.dy            ; 3 uses
  %.not.i46.i = icmp samesign ugt i32 %i.ec, 59
  br i1 %.not.i46.i, label %.split, label %.preheaderthread-pre-split.i47.i

.preheader.i45._crit_edge.i:                      ; preds = %.preheaderthread-pre-split.i47.i
  %.not20.i50.i = icmp eq i8 %.pr.i48.i, 0
  br i1 %.not20.i50.i, label %.split, label %bb.w

bb.w:                                             ; preds = %.preheader.i45._crit_edge.i
  %i.ed = zext nneg i8 %.pr.i48.i to i64
  %memchr.bounds.i = icmp ugt i8 %.pr.i48.i, 63
  %i.ee = shl nuw i64 1, %i.ed
  %i.ef = and i64 %i.ee, 864691128455135233
  %memchr.bits.i = icmp eq i64 %i.ef, 0
  %memchr85.not.i = select i1 %memchr.bounds.i, i1 true, i1 %memchr.bits.i
  br i1 %memchr85.not.i, label %.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 2 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !57  ; 2 uses
  %13 = add i8 %i.eh, -58
  %i.ei = icmp ult i8 %13, -10
  br i1 %i.ei, label %.split, label %.lr.ph130.preheader.i

.lr.ph130.preheader.i:                            ; preds = %bb.x
  %14 = zext nneg i8 %i.eh to i32
  %i.ej = add nsw i32 %14, -48
  br label %.lr.ph130.i

.preheaderthread-pre-split.i55.i:                 ; preds = %.lr.ph130.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ep, i64 1 ; 2 uses
  %.pr.i56.i = load i8, ptr %i.ek, align 1, !tbaa !57 ; 6 uses
  %i.el = sext i8 %.pr.i56.i to i32
  %i.em = add nsw i32 %i.el, -48                  ; 2 uses
  %i.en = icmp ugt i32 %i.em, 9
  br i1 %i.en, label %.preheader.i53._crit_edge.i, label %.lr.ph130.i

.lr.ph130.i:                                      ; preds = %.preheaderthread-pre-split.i55.i, %.lr.ph130.preheader.i
  %i.eo = phi i32 [ %i.em, %.preheaderthread-pre-split.i55.i ], [ %i.ej, %.lr.ph130.preheader.i ]
  %i.ep = phi ptr [ %i.ek, %.preheaderthread-pre-split.i55.i ], [ %i.eg, %.lr.ph130.preheader.i ] ; 2 uses
  %i.eq = phi i32 [ %i.es, %.preheaderthread-pre-split.i55.i ], [ 0, %.lr.ph130.preheader.i ]
  %i.er = mul nuw nsw i32 %i.eq, 10
  %i.es = add nuw nsw i32 %i.er, %i.eo            ; 3 uses
  %.not.i54.i = icmp samesign ugt i32 %i.es, 59
  br i1 %.not.i54.i, label %.split, label %.preheaderthread-pre-split.i55.i

.preheader.i53._crit_edge.i:                      ; preds = %.preheaderthread-pre-split.i55.i
  %.not20.i58.i = icmp eq i8 %.pr.i56.i, 0
  br i1 %.not20.i58.i, label %.split, label %bb.y

bb.y:                                             ; preds = %.preheader.i53._crit_edge.i
  %i.et = zext nneg i8 %.pr.i56.i to i64
  %memchr.bounds86.i = icmp ugt i8 %.pr.i56.i, 63
  %i.eu = shl nuw i64 1, %i.et
  %i.ev = and i64 %i.eu, 70368744178177
  %memchr.bits87.i = icmp eq i64 %i.ev, 0
  %memchr88.not.i = select i1 %memchr.bounds86.i, i1 true, i1 %memchr.bits87.i
  br i1 %memchr88.not.i, label %.split, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 2 ; 3 uses
  %i.ex = icmp eq i8 %.pr.i56.i, 46
  br i1 %i.ex, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.ey = load i8, ptr %i.ew, align 1, !tbaa !57  ; 2 uses
  %15 = add i8 %i.ey, -58
  %i.ez = icmp ult i8 %15, -10
  br i1 %i.ez, label %.split, label %.lr.ph133.preheader.i

.lr.ph133.preheader.i:                            ; preds = %bb.aa
  %16 = zext nneg i8 %i.ey to i32
  %i.fa = add nsw i32 %16, -48
  br label %.lr.ph133.i

.preheaderthread-pre-split.i63.i:                 ; preds = %.lr.ph133.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fg, i64 1 ; 2 uses
  %.pr.i64.i = load i8, ptr %i.fb, align 1, !tbaa !57 ; 6 uses
  %i.fc = sext i8 %.pr.i64.i to i32
  %i.fd = add nsw i32 %i.fc, -48                  ; 2 uses
  %i.fe = icmp ugt i32 %i.fd, 9
  br i1 %i.fe, label %.preheader.i61._crit_edge.i, label %.lr.ph133.i

.lr.ph133.i:                                      ; preds = %.preheaderthread-pre-split.i63.i, %.lr.ph133.preheader.i
  %i.ff = phi i32 [ %i.fd, %.preheaderthread-pre-split.i63.i ], [ %i.fa, %.lr.ph133.preheader.i ]
  %i.fg = phi ptr [ %i.fb, %.preheaderthread-pre-split.i63.i ], [ %i.ew, %.lr.ph133.preheader.i ] ; 2 uses
  %i.fh = phi i32 [ %i.fj, %.preheaderthread-pre-split.i63.i ], [ 0, %.lr.ph133.preheader.i ]
  %i.fi = mul nuw nsw i32 %i.fh, 10
  %i.fj = add nuw nsw i32 %i.fi, %i.ff            ; 4 uses
  %.not.i62.i = icmp samesign ugt i32 %i.fj, 1
  br i1 %.not.i62.i, label %.split, label %.preheaderthread-pre-split.i63.i

.preheader.i61._crit_edge.i:                      ; preds = %.preheaderthread-pre-split.i63.i
  %.not20.i66.i = icmp eq i8 %.pr.i64.i, 0
  br i1 %.not20.i66.i, label %.split, label %bb.ab

bb.ab:                                            ; preds = %.preheader.i61._crit_edge.i
  %i.fk = zext nneg i8 %.pr.i64.i to i64
  %memchr.bounds89.i = icmp ugt i8 %.pr.i64.i, 63
  %i.fl = shl nuw i64 1, %i.fk
  %i.fm = and i64 %i.fl, 17592186044929
  %memchr.bits90.i = icmp eq i64 %i.fm, 0
  %memchr91.not.i = select i1 %memchr.bounds89.i, i1 true, i1 %memchr.bits90.i
  br i1 %memchr91.not.i, label %.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 2 ; 3 uses
  %i.fo = icmp eq i8 %.pr.i64.i, 44
  br i1 %i.fo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fp = load i8, ptr %i.fn, align 1, !tbaa !57  ; 2 uses
  %17 = add i8 %i.fp, -58
  %i.fq = icmp ult i8 %17, -10
  br i1 %i.fq, label %.split, label %.lr.ph136.preheader.i

.lr.ph136.preheader.i:                            ; preds = %bb.ad
  %18 = zext nneg i8 %i.fp to i32
  %i.fr = add nsw i32 %18, -48
  br label %.lr.ph136.i

.preheaderthread-pre-split.i71.i:                 ; preds = %.lr.ph136.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fx, i64 1 ; 2 uses
  %.pr.i72.i = load i8, ptr %i.fs, align 1, !tbaa !57 ; 2 uses
  %i.ft = sext i8 %.pr.i72.i to i32
  %i.fu = add nsw i32 %i.ft, -48                  ; 2 uses
  %i.fv = icmp ugt i32 %i.fu, 9
  br i1 %i.fv, label %.preheader.i69._crit_edge.i, label %.lr.ph136.i

.lr.ph136.i:                                      ; preds = %.preheaderthread-pre-split.i71.i, %.lr.ph136.preheader.i
  %i.fw = phi i32 [ %i.fu, %.preheaderthread-pre-split.i71.i ], [ %i.fr, %.lr.ph136.preheader.i ]
  %i.fx = phi ptr [ %i.fs, %.preheaderthread-pre-split.i71.i ], [ %i.fn, %.lr.ph136.preheader.i ] ; 2 uses
  %i.fy = phi i32 [ %i.ga, %.preheaderthread-pre-split.i71.i ], [ 0, %.lr.ph136.preheader.i ]
  %i.fz = mul i32 %i.fy, 10
  %i.ga = add nsw i32 %i.fz, %i.fw                ; 3 uses
  %.not.i70.i = icmp ugt i32 %i.ga, 65535
  br i1 %.not.i70.i, label %.split, label %.preheaderthread-pre-split.i71.i

.preheader.i69._crit_edge.i:                      ; preds = %.preheaderthread-pre-split.i71.i
  %cond94.i = icmp eq i8 %.pr.i72.i, 9
  br i1 %cond94.i, label %.thread.i, label %.split

.thread.i:                                        ; preds = %.preheader.i69._crit_edge.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 2
  %i.gc = trunc nuw i32 %i.ga to i16
  br label %mcc_parse_time_code.exit

bb.ae:                                            ; preds = %bb.ac, %bb.z
  %.sroa.15.0 = phi i32 [ %i.fj, %bb.ac ], [ 0, %bb.z ]
  %.4160 = phi ptr [ %i.fn, %bb.ac ], [ %i.ew, %bb.z ]
  %.0.in.i = phi i8 [ %.pr.i64.i, %bb.ac ], [ %.pr.i56.i, %bb.z ]
  %.0.in.fr.i = freeze i8 %.0.in.i
  %.not.i124 = icmp eq i8 %.0.in.fr.i, 9
  br i1 %.not.i124, label %mcc_parse_time_code.exit, label %.split

.split:                                           ; preds = %.lr.ph.i, %.lr.ph124.i, %.lr.ph127.i, %.lr.ph130.i, %.lr.ph133.i, %.lr.ph136.i, %bb.ae, %.preheader.i69._crit_edge.i, %bb.t, %.preheader.i._crit_edge.i, %bb.ad, %bb.u, %.preheader.i37._crit_edge.i, %.preheader.i45._crit_edge.i, %bb.v, %bb.w, %.preheader.i53._crit_edge.i, %bb.x, %bb.y, %.preheader.i61._crit_edge.i, %bb.aa, %bb.ab
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.12) #6
  br label %.outer.backedge

mcc_parse_time_code.exit:                         ; preds = %bb.ae, %.thread.i
  %.sroa.18.1 = phi i16 [ %i.gc, %.thread.i ], [ 9, %bb.ae ]
  %.sroa.15.2 = phi i32 [ %i.fj, %.thread.i ], [ %.sroa.15.0, %bb.ae ]
  %.6162 = phi ptr [ %i.gb, %.thread.i ], [ %.4160, %bb.ae ] ; 2 uses
  %i.gd = load i64, ptr %5, align 8, !tbaa !58
  %.sroa.0.0.copyload.i = load i32, ptr %i.p, align 8, !tbaa !59 ; 3 uses
  %.sroa.6.0.copyload.i = load i32, ptr %i.s, align 4, !tbaa !59 ; 2 uses
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !59 ; 2 uses
  %.sroa.8.0.copyload.i = load i32, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !59
  %i.ge = call i32 @av_timecode_init_from_components(ptr noundef nonnull %i.p, i64 %.sroa.7.0.copyload.i, i32 noundef %.sroa.6.0.copyload.i, i32 noundef %i.dc, i32 noundef %i.dp, i32 noundef %i.ec, i32 noundef %i.es, ptr noundef nonnull %0) #6 ; 2 uses
  %i.gf = icmp slt i32 %i.ge, 0
  br i1 %i.gf, label %time_tracker_set_time.exit, label %bb.af

bb.af:                                            ; preds = %mcc_parse_time_code.exit
  %i.gg = sext i32 %.sroa.0.0.copyload.i to i64
  %i.gh = load i64, ptr %5, align 8, !tbaa !58
  %i.gi = sub nsw i64 %i.gh, %i.gg
  %i.gj = load i32, ptr %i.p, align 8, !tbaa !60  ; 2 uses
  %i.gk = sext i32 %i.gj to i64
  %i.gl = add nsw i64 %i.gi, %i.gk                ; 3 uses
  store i64 %i.gl, ptr %5, align 8, !tbaa !58
  %i.gm = icmp slt i32 %i.gj, %.sroa.0.0.copyload.i
  br i1 %i.gm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gn = load i64, ptr %i.y, align 8, !tbaa !55
  %i.go = add nsw i64 %i.gn, %i.gl                ; 2 uses
  store i64 %i.go, ptr %5, align 8, !tbaa !58
  br label %bb.ah

time_tracker_set_time.exit:                       ; preds = %mcc_parse_time_code.exit
  store i32 %.sroa.0.0.copyload.i, ptr %i.p, align 8, !tbaa !59
  store i32 %.sroa.6.0.copyload.i, ptr %i.s, align 4, !tbaa !59
  store i64 %.sroa.7.0.copyload.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !59
  store i32 %.sroa.8.0.copyload.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !59
  br label %.outer.backedge

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.gp = phi i64 [ %i.go, %bb.ag ], [ %i.gl, %bb.af ]
  store i16 %.sroa.18.1, ptr %3, align 4, !tbaa !63
  %.not106 = icmp eq i32 %.sroa.15.2, 0
  %i.gq = select i1 %.not106, i32 1, i32 3
  store i32 %i.gq, ptr %i.z, align 4, !tbaa !64
  %i.gr = load i8, ptr %.6162, align 1, !tbaa !57 ; 2 uses
  %.not107267 = icmp eq i8 %i.gr, 0
  br i1 %.not107267, label %bytestream2_put_byte.exit120.thread187.thread, label %.lr.ph272

.lr.ph272:                                        ; preds = %bb.ah, %bytestream2_put_byte.exit120
  %i.gs = phi i8 [ %i.hw, %bytestream2_put_byte.exit120 ], [ %i.gr, %bb.ah ] ; 3 uses
  %.sroa.0.0270 = phi ptr [ %.sroa.0.3, %bytestream2_put_byte.exit120 ], [ %i.aa, %bb.ah ] ; 9 uses
  %.sroa.32.0269 = phi i32 [ %.sroa.32.3, %bytestream2_put_byte.exit120 ], [ 0, %bb.ah ] ; 4 uses
  %.0268 = phi ptr [ %.3159, %bytestream2_put_byte.exit120 ], [ %.6162, %bb.ah ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.0268, i64 1 ; 3 uses
  %i.gu = icmp ugt i8 %i.gs, 96
  %i.gv = icmp samesign ugt i8 %i.gs, 64
  %..i126 = select i1 %i.gv, i8 -55, i8 -48
  %.sink.i = select i1 %i.gu, i8 -87, i8 %..i126
  %i.gw = add i8 %.sink.i, %i.gs                  ; 3 uses
  %i.gx = add i8 %i.gw, -16
  %or.cond = icmp ult i8 %i.gx, 20
  br i1 %or.cond, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.lr.ph272
  %i.gy = zext nneg i8 %i.gw to i64
  %i.gz = getelementptr [16 x i8], ptr @aliases, i64 %i.gy ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 -252
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !66 ; 3 uses
  %.not109 = icmp ne i32 %i.hb, 0
  %.not.i = icmp eq i32 %.sroa.32.0269, 0
  %or.cond205 = select i1 %.not109, i1 %.not.i, i1 false
  br i1 %or.cond205, label %bb.aj, label %bytestream2_put_byte.exit120

bb.aj:                                            ; preds = %bb.ai
  %i.hc = getelementptr i8, ptr %i.gz, i64 -248
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !67
  %i.he = ptrtoint ptr %.sroa.0.0270 to i64
  %i.hf = sub i64 %i.ac, %i.he
  %i.hg = zext i32 %i.hb to i64
  %i.hh = call i64 @llvm.smin.i64(i64 %i.hf, i64 %i.hg) ; 2 uses
  %i.hi = trunc i64 %i.hh to i32
  %.not18.i = icmp ne i32 %i.hb, %i.hi
  %spec.select = zext i1 %.not18.i to i32
  %i.hj = and i64 %i.hh, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0270, ptr align 1 %i.hd, i64 %i.hj, i1 false)
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.0270, i64 %i.hj
  br label %bytestream2_put_byte.exit120

bb.ak:                                            ; preds = %.lr.ph272
  %i.hl = load i8, ptr %i.gt, align 1, !tbaa !57  ; 4 uses
  %.not108.not = icmp eq i8 %i.hl, 0
  br i1 %.not108.not, label %bytestream2_put_byte.exit120.thread187, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hm = getelementptr inbounds nuw i8, ptr %.0268, i64 2 ; 2 uses
  %.not.i119 = icmp eq i32 %.sroa.32.0269, 0
  %i.hn = ptrtoint ptr %.sroa.0.0270 to i64
  %i.ho = sub i64 %i.ac, %i.hn
  %i.hp = icmp sgt i64 %i.ho, 0
  %or.cond203 = select i1 %.not.i119, i1 %i.hp, i1 false
  br i1 %or.cond203, label %bb.am, label %bytestream2_put_byte.exit120

bb.am:                                            ; preds = %bb.al
  %i.hq = icmp ugt i8 %i.hl, 96
  %i.hr = icmp samesign ugt i8 %i.hl, 64
  %..i127 = select i1 %i.hr, i8 -55, i8 -48
  %.sink.i128 = select i1 %i.hq, i8 -87, i8 %..i127
  %i.hs = add i8 %.sink.i128, %i.hl
  %i.ht = shl i8 %i.gw, 4
  %i.hu = or i8 %i.hs, %i.ht
  store i8 %i.hu, ptr %.sroa.0.0270, align 1, !tbaa !57
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0.0270, i64 1
  br label %bytestream2_put_byte.exit120

bytestream2_put_byte.exit120:                     ; preds = %bb.al, %bb.am, %bb.ai, %bb.aj
  %.3159 = phi ptr [ %i.gt, %bb.aj ], [ %i.gt, %bb.ai ], [ %i.hm, %bb.al ], [ %i.hm, %bb.am ] ; 2 uses
  %.sroa.32.3 = phi i32 [ %spec.select, %bb.aj ], [ %.sroa.32.0269, %bb.ai ], [ 1, %bb.al ], [ 0, %bb.am ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %i.hk, %bb.aj ], [ %.sroa.0.0270, %bb.ai ], [ %.sroa.0.0270, %bb.al ], [ %i.hv, %bb.am ] ; 2 uses
  %i.hw = load i8, ptr %.3159, align 1, !tbaa !57 ; 2 uses
  %.not107 = icmp eq i8 %i.hw, 0
  br i1 %.not107, label %bytestream2_put_byte.exit120.thread187, label %.lr.ph272

bytestream2_put_byte.exit120.thread187:           ; preds = %bytestream2_put_byte.exit120, %bb.ak
  %.sroa.32.0.lcssa.ph = phi i32 [ %.sroa.32.3, %bytestream2_put_byte.exit120 ], [ %.sroa.32.0269, %bb.ak ]
  %.sroa.0.0.lcssa.ph = phi ptr [ %.sroa.0.3, %bytestream2_put_byte.exit120 ], [ %.sroa.0.0270, %bb.ak ]
  %i.hx = icmp eq i32 %.sroa.32.0.lcssa.ph, 0
  br i1 %i.hx, label %bytestream2_put_byte.exit120.thread187.thread, label %.outer.backedge, !llvm.loop !31

bytestream2_put_byte.exit120.thread187.thread:    ; preds = %bb.ah, %bytestream2_put_byte.exit120.thread187
  %.sroa.0.0.lcssa375 = phi ptr [ %.sroa.0.0.lcssa.ph, %bytestream2_put_byte.exit120.thread187 ], [ %i.aa, %bb.ah ] ; 2 uses
  %i.hy = ptrtoint ptr %.sroa.0.0.lcssa375 to i64 ; 2 uses
  %i.hz = sub i64 %i.ac, %i.hy                    ; 2 uses
  %i.ia = icmp sgt i64 %i.hz, -2
  %.neg.i = sub i64 %i.ad, %i.hy
  %i.ib = trunc i64 %.neg.i to i32                ; 2 uses
  %i.ic = trunc i64 %i.hz to i32
  %..i = call i32 @llvm.smin.i32(i32 %i.ic, i32 -1)
  %i.id = icmp slt i32 %i.ib, 0
  %.0.i121 = select i1 %i.id, i32 %..i, i32 %i.ib
  %i.ie = sext i32 %.0.i121 to i64
  %i.if = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa375, i64 %i.ie ; 3 uses
  %i.ig = ptrtoint ptr %i.if to i64
  %i.ih = sub i64 %i.ig, %i.ad                    ; 2 uses
  %i.ii = trunc i64 %i.ih to i16
  store i16 %i.ii, ptr %i.ae, align 4, !tbaa !68
  %i.ij = and i64 %i.ih, 65535
  %i.ik = icmp ne i64 %i.ij, 0
  %or.cond286 = select i1 %i.ik, i1 %i.ia, i1 false
  br i1 %or.cond286, label %.lr.ph280, label %.outer.backedge, !llvm.loop !31

.lr.ph280:                                        ; preds = %bytestream2_put_byte.exit120.thread187.thread
  %i.il = ptrtoint ptr %i.if to i64               ; 3 uses
  %i.im = and i64 %i.il, 3
  %.not112510 = icmp eq i64 %i.im, 0
  br i1 %.not112510, label %.lr.ph280._crit_edge, label %.lr.ph512

.lr.ph512:                                        ; preds = %.lr.ph280, %bytestream2_put_byte.exit
  %i.in = phi i64 [ %i.ir, %bytestream2_put_byte.exit ], [ %i.il, %.lr.ph280 ]
  %.sroa.0.5279511 = phi ptr [ %i.iq, %bytestream2_put_byte.exit ], [ %i.if, %.lr.ph280 ] ; 2 uses
  %i.io = sub i64 %i.ac, %i.in
  %i.ip = icmp sgt i64 %i.io, 0
end_hunk_0
