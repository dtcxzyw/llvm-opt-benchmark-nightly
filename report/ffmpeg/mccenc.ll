Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mccenc?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@mcc_write_header:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !45
  %i.ap = add nsw i32 %i.ao, 1900
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !46
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !47
  %i.au = load i32, ptr %1, align 8, !tbaa !48
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !32
  %i.az = and i32 %i.ay, 1
  %.not38 = icmp eq i32 %i.az, 0
  %i.ba = select i1 %.not38, ptr @.str.26, ptr @.str.28
  %i.bb = call i32 (ptr, ptr, ...) @avio_printf(ptr noundef %i.af, ptr noundef nonnull @.str.25, i32 noundef %i.ai, ptr noundef nonnull %i.ak, ptr noundef nonnull @mcc_ffmpeg_uuid, ptr noundef nonnull %.028, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ac, i32 noundef %i.am, i32 noundef %i.ap, i32 noundef %i.ar, i32 noundef %i.at, i32 noundef %i.au, i32 noundef %i.aw, ptr noundef nonnull %i.ba) #10 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.j, %bb.o
  %.0 = phi i32 [ 0, %bb.o ], [ -22, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.i
  %.1 = phi i32 [ %i.p, %bb.i ], [ %.0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.d
  %.2 = phi i32 [ -22, %bb.d ], [ %.1, %bb.q ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @mcc_write_packet(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca [23 x i8], align 16               ; 5 uses
  %2 = alloca %struct.AVSmpte436mAncIterator, align 8 ; 5 uses
  %3 = alloca %struct.AVSmpte436mCodedAnc, align 4 ; 11 uses
  %4 = alloca %struct.AVSmpte291mAnc8bit, align 1 ; 9 uses
  %i.b = alloca [259 x i8], align 16              ; 8 uses
  %i.c = alloca [32 x i8], align 16               ; 9 uses
  %i.d = alloca [519 x i8], align 16              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !53   ; 2 uses
  %i.i = icmp eq i64 %i.h, -9223372036854775808
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.29) #10
  br label %bb.bh

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !36
  %i.m = srem i64 %i.h, %i.l
  %i.n = trunc i64 %i.m to i32
  %i.o = call ptr @av_timecode_make_string(ptr noundef nonnull %i.j, ptr noundef nonnull %i.a, i32 noundef %i.n) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.040 = phi ptr [ %i.a, %bb.c ], [ %i.w, %bb.g ] ; 3 uses
  %i.p = load i8, ptr %.040, align 1, !tbaa !54
  switch i8 %i.p, label %bb.g [
    i8 0, label %bb.e
    i8 59, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !56
  %i.u = call i32 @av_smpte_436m_anc_iter_init(ptr noundef nonnull %2, ptr noundef %i.r, i32 noundef %i.t) #10 ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.bg, label %bb.h

bb.f:                                             ; preds = %bb.d
  store i8 58, ptr %.040, align 1, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.040, i64 1
  br label %bb.d, !llvm.loop !49

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.x = call i32 @av_smpte_436m_anc_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #10 ; 2 uses
  %i.y = icmp sgt i32 %i.x, -1
  br i1 %i.y, label %.lr.ph89, label %._crit_edge

.lr.ph89:                                         ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 258
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph89, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.an = load i32, ptr %i.z, align 4, !tbaa !60
  %i.ao = load i16, ptr %i.aa, align 4, !tbaa !61
  %i.ap = call i32 @av_smpte_291m_anc_8bit_decode(ptr noundef nonnull %4, i32 noundef %i.an, i16 noundef zeroext %i.ao, ptr noundef nonnull %i.ab, ptr noundef %0) #10 ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %.thread65, label %bb.j

.thread65:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.bf

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.ar = load i8, ptr %4, align 1, !tbaa !63
  store i8 %i.ar, ptr %i.b, align 16, !tbaa !54
  %i.as = load i8, ptr %i.ac, align 1, !tbaa !64
  store i8 %i.as, ptr %i.ad, align 1, !tbaa !54
  %i.at = load i8, ptr %i.ae, align 1, !tbaa !65  ; 2 uses
  store i8 %i.at, ptr %i.af, align 2, !tbaa !54
  %i.au = zext i8 %i.at to i64                    ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 1 %i.ah, i64 %i.au, i1 false)
  %i.av = load i8, ptr %i.ai, align 1, !tbaa !66
  %i.aw = add nuw nsw i64 %i.au, 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.au
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  store i8 %i.av, ptr %i.ay, align 1, !tbaa !54
  %i.az = load i32, ptr %i.aj, align 4, !tbaa !67 ; 2 uses
  switch i32 %i.az, label %bb.k [
    i32 1, label %bb.l
    i32 2, label %bb.l
    i32 4, label %bb.l
    i32 3, label %.thread
  ]

bb.k:                                             ; preds = %bb.j
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.30, i32 noundef %i.az) #10
  br label %bb.be, !llvm.loop !50

bb.l:                                             ; preds = %bb.j, %bb.j, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.ba = load i16, ptr %3, align 4, !tbaa !68    ; 2 uses
  %.not52 = icmp eq i16 %i.ba, 9
  br i1 %.not52, label %bb.o, label %bb.m

.thread:                                          ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.bb = load i16, ptr %3, align 4, !tbaa !68    ; 2 uses
  %.not5256 = icmp eq i16 %i.bb, 9
  br i1 %.not5256, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  %i.bc = phi i16 [ %i.bb, %.thread ], [ %i.ba, %bb.l ]
  %.058 = phi i32 [ 1, %.thread ], [ 0, %bb.l ]   ; 2 uses
  %i.bd = zext i16 %i.bc to i32
  %i.be = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 32, ptr noundef nonnull @.str.31, i32 noundef %.058, i32 noundef %i.bd) #10 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %.thread
  %i.bf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 32, ptr noundef nonnull @.str.32, i32 noundef 1) #10 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.m
  %.059 = phi i32 [ %.058, %bb.m ], [ 1, %bb.n ], [ 0, %bb.l ]
  %i.bg = load i32, ptr %i.ak, align 4, !tbaa !30
  %cond = icmp eq i32 %i.bg, 1
  %i.bh = load i8, ptr %i.c, align 16
  %i.bi = icmp ne i8 %i.bh, 0
  %or.cond = select i1 %cond, i1 %i.bi, i1 false
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bj = load i16, ptr %3, align 4, !tbaa !68
  %i.bk = zext i16 %i.bj to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.33, i32 noundef %.059, i32 noundef %i.bk) #10
  br label %bb.bd, !llvm.loop !50

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.bl = load i32, ptr %i.al, align 8, !tbaa !69
  %i.bm = icmp ne i32 %i.bl, 0
  br label %bb.r

bb.r:                                             ; preds = %.backedge.i, %bb.q
  %.05689.i = phi ptr [ %i.d, %bb.q ], [ %.056.be.i, %.backedge.i ] ; 24 uses
  %.05788.i = phi i64 [ %i.aw, %bb.q ], [ %.057.be.i, %.backedge.i ] ; 23 uses
  %.06087.i = phi ptr [ %i.b, %bb.q ], [ %.060.be.i, %.backedge.i ] ; 43 uses
  %i.bn = load i8, ptr %.06087.i, align 1, !tbaa !54 ; 6 uses
  switch i8 %i.bn, label %bb.bb [
    i8 -6, label %bb.s
    i8 -5, label %bb.al
    i8 -4, label %bb.al
    i8 -3, label %bb.al
    i8 -106, label %bb.ap
    i8 97, label %bb.as
    i8 -31, label %bb.av
    i8 0, label %bb.ba
  ]

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr %.05689.i, align 1, !tbaa !54
  %i.bo = icmp ugt i64 %.05788.i, 2
  %.pre.i.pre = load i8, ptr %.06087.i, align 1, !tbaa !54 ; 2 uses
  %.not67.i76 = icmp eq i8 %.pre.i.pre, -6
  %or.cond119 = select i1 %i.bo, i1 %.not67.i76, i1 false
  br i1 %or.cond119, label %.lr.ph.preheader, label %._crit_edge._crit_edge.i

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %.06087.i, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !54
  %.not68.i.peel = icmp eq i8 %i.bq, 0
  br i1 %.not68.i.peel, label %bb.t, label %._crit_edge._crit_edge.i

bb.t:                                             ; preds = %.lr.ph.preheader
  %i.br = getelementptr inbounds nuw i8, ptr %.06087.i, i64 2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !54
  %.not69.i.peel = icmp eq i8 %i.bs, 0
  br i1 %.not69.i.peel, label %bb.u, label %._crit_edge._crit_edge.i

bb.u:                                             ; preds = %bb.t
  store i8 71, ptr %.05689.i, align 1, !tbaa !54
  %i.bt = getelementptr inbounds nuw i8, ptr %.06087.i, i64 3 ; 5 uses
  %i.bu = add i64 %.05788.i, -3                   ; 5 uses
  %i.bv = icmp ult i64 %i.bu, 3
  br i1 %i.bv, label %._crit_edge.thread95.i, label %.lr.ph.i.peel, !llvm.loop !51

.lr.ph.i.peel:                                    ; preds = %bb.u
  %i.bw = load i8, ptr %i.bt, align 1, !tbaa !54
  %.not67.i.peel = icmp eq i8 %i.bw, -6
  br i1 %.not67.i.peel, label %.lr.ph, label %._crit_edge.thread95.i

.lr.ph.i:                                         ; preds = %bb.ak
  %i.bx = load i8, ptr %i.ee, align 1, !tbaa !54
  %.not67.i = icmp eq i8 %i.bx, -6
  br i1 %.not67.i, label %.lr.ph.1, label %._crit_edge.thread95.i

.lr.ph.1:                                         ; preds = %.lr.ph.i
  %i.by = getelementptr inbounds nuw i8, ptr %.06087.i, i64 7
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !54
  %.not68.i.1 = icmp eq i8 %i.bz, 0
  br i1 %.not68.i.1, label %bb.v, label %._crit_edge.thread95.i

bb.v:                                             ; preds = %.lr.ph.1
  %i.ca = getelementptr inbounds nuw i8, ptr %.06087.i, i64 8
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !54
  %.not69.i.1 = icmp eq i8 %i.cb, 0
  br i1 %.not69.i.1, label %bb.w, label %._crit_edge.thread95.i

bb.w:                                             ; preds = %bb.v
  store i8 73, ptr %.05689.i, align 1, !tbaa !54
  %i.cc = getelementptr inbounds nuw i8, ptr %.06087.i, i64 9 ; 5 uses
  %i.cd = add i64 %.05788.i, -9                   ; 5 uses
  %i.ce = icmp ult i64 %i.cd, 3
  br i1 %i.ce, label %._crit_edge.thread95.i, label %.lr.ph.i.1, !llvm.loop !51

.lr.ph.i.1:                                       ; preds = %bb.w
  %i.cf = load i8, ptr %i.cc, align 1, !tbaa !54
  %.not67.i.1 = icmp eq i8 %i.cf, -6
  br i1 %.not67.i.1, label %.lr.ph.2, label %._crit_edge.thread95.i

.lr.ph.2:                                         ; preds = %.lr.ph.i.1
  %i.cg = getelementptr inbounds nuw i8, ptr %.06087.i, i64 10
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !54
  %.not68.i.2 = icmp eq i8 %i.ch, 0
  br i1 %.not68.i.2, label %bb.x, label %._crit_edge.thread95.i

bb.x:                                             ; preds = %.lr.ph.2
  %i.ci = getelementptr inbounds nuw i8, ptr %.06087.i, i64 11
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !54
  %.not69.i.2 = icmp eq i8 %i.cj, 0
  br i1 %.not69.i.2, label %bb.y, label %._crit_edge.thread95.i

bb.y:                                             ; preds = %bb.x
  store i8 74, ptr %.05689.i, align 1, !tbaa !54
  %i.ck = getelementptr inbounds nuw i8, ptr %.06087.i, i64 12 ; 5 uses
  %i.cl = add i64 %.05788.i, -12                  ; 5 uses
  %i.cm = icmp ult i64 %i.cl, 3
  br i1 %i.cm, label %._crit_edge.thread95.i, label %.lr.ph.i.2, !llvm.loop !51

.lr.ph.i.2:                                       ; preds = %bb.y
  %i.cn = load i8, ptr %i.ck, align 1, !tbaa !54
  %.not67.i.2 = icmp eq i8 %i.cn, -6
  br i1 %.not67.i.2, label %.lr.ph.3, label %._crit_edge.thread95.i

.lr.ph.3:                                         ; preds = %.lr.ph.i.2
  %i.co = getelementptr inbounds nuw i8, ptr %.06087.i, i64 13
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !54
  %.not68.i.3 = icmp eq i8 %i.cp, 0
  br i1 %.not68.i.3, label %bb.z, label %._crit_edge.thread95.i

bb.z:                                             ; preds = %.lr.ph.3
  %i.cq = getelementptr inbounds nuw i8, ptr %.06087.i, i64 14
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !54
  %.not69.i.3 = icmp eq i8 %i.cr, 0
  br i1 %.not69.i.3, label %bb.aa, label %._crit_edge.thread95.i

bb.aa:                                            ; preds = %bb.z
  store i8 75, ptr %.05689.i, align 1, !tbaa !54
  %i.cs = getelementptr inbounds nuw i8, ptr %.06087.i, i64 15 ; 5 uses
  %i.ct = add i64 %.05788.i, -15                  ; 5 uses
  %i.cu = icmp ult i64 %i.ct, 3
  br i1 %i.cu, label %._crit_edge.thread95.i, label %.lr.ph.i.3, !llvm.loop !51

.lr.ph.i.3:                                       ; preds = %bb.aa
  %i.cv = load i8, ptr %i.cs, align 1, !tbaa !54
  %.not67.i.3 = icmp eq i8 %i.cv, -6
  br i1 %.not67.i.3, label %.lr.ph.4, label %._crit_edge.thread95.i

.lr.ph.4:                                         ; preds = %.lr.ph.i.3
  %i.cw = getelementptr inbounds nuw i8, ptr %.06087.i, i64 16
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !54
  %.not68.i.4 = icmp eq i8 %i.cx, 0
  br i1 %.not68.i.4, label %bb.ab, label %._crit_edge.thread95.i

bb.ab:                                            ; preds = %.lr.ph.4
  %i.cy = getelementptr inbounds nuw i8, ptr %.06087.i, i64 17
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !54
  %.not69.i.4 = icmp eq i8 %i.cz, 0
  br i1 %.not69.i.4, label %bb.ac, label %._crit_edge.thread95.i

bb.ac:                                            ; preds = %bb.ab
  store i8 76, ptr %.05689.i, align 1, !tbaa !54
  %i.da = getelementptr inbounds nuw i8, ptr %.06087.i, i64 18 ; 5 uses
  %i.db = add i64 %.05788.i, -18                  ; 5 uses
  %i.dc = icmp ult i64 %i.db, 3
  br i1 %i.dc, label %._crit_edge.thread95.i, label %.lr.ph.i.4, !llvm.loop !51

.lr.ph.i.4:                                       ; preds = %bb.ac
  %i.dd = load i8, ptr %i.da, align 1, !tbaa !54
  %.not67.i.4 = icmp eq i8 %i.dd, -6
  br i1 %.not67.i.4, label %.lr.ph.5, label %._crit_edge.thread95.i

.lr.ph.5:                                         ; preds = %.lr.ph.i.4
  %i.de = getelementptr inbounds nuw i8, ptr %.06087.i, i64 19
  %i.df = load i8, ptr %i.de, align 1, !tbaa !54
  %.not68.i.5 = icmp eq i8 %i.df, 0
  br i1 %.not68.i.5, label %bb.ad, label %._crit_edge.thread95.i

bb.ad:                                            ; preds = %.lr.ph.5
  %i.dg = getelementptr inbounds nuw i8, ptr %.06087.i, i64 20
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !54
  %.not69.i.5 = icmp eq i8 %i.dh, 0
  br i1 %.not69.i.5, label %bb.ae, label %._crit_edge.thread95.i

bb.ae:                                            ; preds = %bb.ad
  store i8 77, ptr %.05689.i, align 1, !tbaa !54
  %i.di = getelementptr inbounds nuw i8, ptr %.06087.i, i64 21 ; 5 uses
  %i.dj = add i64 %.05788.i, -21                  ; 5 uses
  %i.dk = icmp ult i64 %i.dj, 3
  br i1 %i.dk, label %._crit_edge.thread95.i, label %.lr.ph.i.5, !llvm.loop !51

.lr.ph.i.5:                                       ; preds = %bb.ae
  %i.dl = load i8, ptr %i.di, align 1, !tbaa !54
  %.not67.i.5 = icmp eq i8 %i.dl, -6
  br i1 %.not67.i.5, label %.lr.ph.6, label %._crit_edge.thread95.i

.lr.ph.6:                                         ; preds = %.lr.ph.i.5
  %i.dm = getelementptr inbounds nuw i8, ptr %.06087.i, i64 22
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !54
  %.not68.i.6 = icmp eq i8 %i.dn, 0
  br i1 %.not68.i.6, label %bb.af, label %._crit_edge.thread95.i

bb.af:                                            ; preds = %.lr.ph.6
  %i.do = getelementptr inbounds nuw i8, ptr %.06087.i, i64 23
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !54
  %.not69.i.6 = icmp eq i8 %i.dp, 0
  br i1 %.not69.i.6, label %bb.ag, label %._crit_edge.thread95.i

bb.ag:                                            ; preds = %bb.af
  store i8 78, ptr %.05689.i, align 1, !tbaa !54
  %i.dq = getelementptr inbounds nuw i8, ptr %.06087.i, i64 24 ; 5 uses
  %i.dr = add i64 %.05788.i, -24                  ; 5 uses
  %i.ds = icmp ult i64 %i.dr, 3
  br i1 %i.ds, label %._crit_edge.thread95.i, label %.lr.ph.i.6, !llvm.loop !51

.lr.ph.i.6:                                       ; preds = %bb.ag
  %i.dt = load i8, ptr %i.dq, align 1, !tbaa !54
  %.not67.i.6 = icmp eq i8 %i.dt, -6
  br i1 %.not67.i.6, label %.lr.ph.7, label %._crit_edge.thread95.i

.lr.ph.7:                                         ; preds = %.lr.ph.i.6
  %i.du = getelementptr inbounds nuw i8, ptr %.06087.i, i64 25
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !54
  %.not68.i.7 = icmp eq i8 %i.dv, 0
  br i1 %.not68.i.7, label %bb.ah, label %._crit_edge.thread95.i

bb.ah:                                            ; preds = %.lr.ph.7
  %i.dw = getelementptr inbounds nuw i8, ptr %.06087.i, i64 26
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !54
  %.not69.i.7 = icmp eq i8 %i.dx, 0
  br i1 %.not69.i.7, label %bb.ai, label %._crit_edge.thread95.i

bb.ai:                                            ; preds = %bb.ah
  store i8 79, ptr %.05689.i, align 1, !tbaa !54
  %i.dy = getelementptr inbounds nuw i8, ptr %.06087.i, i64 27
  %i.dz = add i64 %.05788.i, -27
  br label %._crit_edge.thread95.i, !llvm.loop !51

.lr.ph:                                           ; preds = %.lr.ph.i.peel
  %i.ea = getelementptr inbounds nuw i8, ptr %.06087.i, i64 4
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !54
  %.not68.i = icmp eq i8 %i.eb, 0
  br i1 %.not68.i, label %bb.aj, label %._crit_edge.thread95.i

bb.aj:                                            ; preds = %.lr.ph
  %i.ec = getelementptr inbounds nuw i8, ptr %.06087.i, i64 5
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !54
  %.not69.i = icmp eq i8 %i.ed, 0
  br i1 %.not69.i, label %bb.ak, label %._crit_edge.thread95.i

bb.ak:                                            ; preds = %bb.aj
  store i8 72, ptr %.05689.i, align 1, !tbaa !54
  %i.ee = getelementptr inbounds nuw i8, ptr %.06087.i, i64 6 ; 5 uses
  %i.ef = add i64 %.05788.i, -6                   ; 5 uses
  %i.eg = icmp ult i64 %i.ef, 3
  br i1 %i.eg, label %._crit_edge.thread95.i, label %.lr.ph.i, !llvm.loop !51

._crit_edge._crit_edge.i:                         ; preds = %bb.s, %bb.t, %.lr.ph.preheader
  %.pre.i = phi i8 [ -6, %bb.t ], [ %.pre.i.pre, %bb.s ], [ -6, %.lr.ph.preheader ]
  %i.eh = freeze i8 %.pre.i
  br label %bb.bb

._crit_edge.thread95.i:                           ; preds = %bb.aj, %.lr.ph, %.lr.ph.i, %bb.ak, %.lr.ph.1, %bb.v, %bb.w, %.lr.ph.i.1, %.lr.ph.2, %bb.x, %bb.y, %.lr.ph.i.2, %.lr.ph.3, %bb.z, %bb.aa, %.lr.ph.i.3, %.lr.ph.4, %bb.ab, %bb.ac, %.lr.ph.i.4, %.lr.ph.5, %bb.ad, %bb.ae, %.lr.ph.i.5, %.lr.ph.6, %bb.af, %bb.ag, %.lr.ph.i.6, %.lr.ph.7, %bb.ah, %bb.ai, %.lr.ph.i.peel, %bb.u
  %.158.lcssa.ph99.i = phi i64 [ %i.bu, %.lr.ph.i.peel ], [ %i.bu, %bb.u ], [ %i.bu, %bb.aj ], [ %i.bu, %.lr.ph ], [ %i.ef, %.lr.ph.i ], [ %i.ef, %bb.ak ], [ %i.ef, %.lr.ph.1 ], [ %i.ef, %bb.v ], [ %i.cd, %bb.w ], [ %i.cd, %.lr.ph.i.1 ], [ %i.cd, %.lr.ph.2 ], [ %i.cd, %bb.x ], [ %i.cl, %bb.y ], [ %i.cl, %.lr.ph.i.2 ], [ %i.cl, %.lr.ph.3 ], [ %i.cl, %bb.z ], [ %i.ct, %bb.aa ], [ %i.ct, %.lr.ph.i.3 ], [ %i.ct, %.lr.ph.4 ], [ %i.ct, %bb.ab ], [ %i.db, %bb.ac ], [ %i.db, %.lr.ph.i.4 ], [ %i.db, %.lr.ph.5 ], [ %i.db, %bb.ad ], [ %i.dj, %bb.ae ], [ %i.dj, %.lr.ph.i.5 ], [ %i.dj, %.lr.ph.6 ], [ %i.dj, %bb.af ], [ %i.dr, %bb.ag ], [ %i.dr, %.lr.ph.i.6 ], [ %i.dr, %.lr.ph.7 ], [ %i.dr, %bb.ah ], [ %i.dz, %bb.ai ]
  %.161.lcssa.ph98.i = phi ptr [ %i.bt, %.lr.ph.i.peel ], [ %i.bt, %bb.u ], [ %i.bt, %bb.aj ], [ %i.bt, %.lr.ph ], [ %i.ee, %.lr.ph.i ], [ %i.ee, %bb.ak ], [ %i.ee, %.lr.ph.1 ], [ %i.ee, %bb.v ], [ %i.cc, %bb.w ], [ %i.cc, %.lr.ph.i.1 ], [ %i.cc, %.lr.ph.2 ], [ %i.cc, %bb.x ], [ %i.ck, %bb.y ], [ %i.ck, %.lr.ph.i.2 ], [ %i.ck, %.lr.ph.3 ], [ %i.ck, %bb.z ], [ %i.cs, %bb.aa ], [ %i.cs, %.lr.ph.i.3 ], [ %i.cs, %.lr.ph.4 ], [ %i.cs, %bb.ab ], [ %i.da, %bb.ac ], [ %i.da, %.lr.ph.i.4 ], [ %i.da, %.lr.ph.5 ], [ %i.da, %bb.ad ], [ %i.di, %bb.ae ], [ %i.di, %.lr.ph.i.5 ], [ %i.di, %.lr.ph.6 ], [ %i.di, %bb.af ], [ %i.dq, %bb.ag ], [ %i.dq, %.lr.ph.i.6 ], [ %i.dq, %.lr.ph.7 ], [ %i.dq, %bb.ah ], [ %i.dy, %bb.ai ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.05689.i, i64 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.bc, %bb.ba, %bb.az, %bb.au, %bb.ar, %bb.ao, %._crit_edge.thread95.i
  %.060.be.i = phi ptr [ %i.gh, %bb.bc ], [ %.161.lcssa.ph98.i, %._crit_edge.thread95.i ], [ %i.es, %bb.ao ], [ %i.ey, %bb.ar ], [ %i.fe, %bb.au ], [ %i.fr, %bb.az ], [ %i.fu, %bb.ba ]
  %.057.be.i = phi i64 [ %i.gi, %bb.bc ], [ %.158.lcssa.ph99.i, %._crit_edge.thread95.i ], [ %i.et, %bb.ao ], [ %i.ez, %bb.ar ], [ %i.ff, %bb.au ], [ %i.fs, %bb.az ], [ %i.fv, %bb.ba ] ; 2 uses
  %.056.be.i = phi ptr [ %.2.1.i, %bb.bc ], [ %i.ei, %._crit_edge.thread95.i ], [ %i.er, %bb.ao ], [ %i.ex, %bb.ar ], [ %i.fd, %bb.au ], [ %i.fq, %bb.az ], [ %i.ft, %bb.ba ] ; 2 uses
  %.not.i = icmp eq i64 %.057.be.i, 0
  br i1 %.not.i, label %mcc_bytes_to_hex.exit, label %bb.r, !llvm.loop !52

bb.al:                                            ; preds = %bb.r, %bb.r, %bb.r
  %i.ej = icmp ugt i64 %.05788.i, 2
  br i1 %i.ej, label %bb.am, label %.thread.i

bb.am:                                            ; preds = %bb.al
  %i.ek = getelementptr inbounds nuw i8, ptr %.06087.i, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !54
  %i.em = icmp eq i8 %i.el, -128
  br i1 %i.em, label %bb.an, label %.thread.i

bb.an:                                            ; preds = %bb.am
  %i.en = getelementptr inbounds nuw i8, ptr %.06087.i, i64 2
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !54
  %i.ep = icmp eq i8 %i.eo, -128
  br i1 %i.ep, label %bb.ao, label %.thread.i

bb.ao:                                            ; preds = %bb.an
  %i.eq = add nsw i8 %i.bn, 85
  %i.er = getelementptr inbounds nuw i8, ptr %.05689.i, i64 1
  store i8 %i.eq, ptr %.05689.i, align 1, !tbaa !54
  %i.es = getelementptr inbounds nuw i8, ptr %.06087.i, i64 3
  %i.et = add i64 %.05788.i, -3
  br label %.backedge.i

bb.ap:                                            ; preds = %bb.r
  %.not66.i = icmp eq i64 %.05788.i, 1
  br i1 %.not66.i, label %bb.bc, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eu = getelementptr inbounds nuw i8, ptr %.06087.i, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !54
  %i.ew = icmp eq i8 %i.ev, 105
  br i1 %i.ew, label %bb.ar, label %bb.bc

bb.ar:                                            ; preds = %bb.aq
  %i.ex = getelementptr inbounds nuw i8, ptr %.05689.i, i64 1
  store i8 83, ptr %.05689.i, align 1, !tbaa !54
  %i.ey = getelementptr inbounds nuw i8, ptr %.06087.i, i64 2
  %i.ez = add i64 %.05788.i, -2
  br label %.backedge.i

bb.as:                                            ; preds = %bb.r
  %.not65.i = icmp eq i64 %.05788.i, 1
  br i1 %.not65.i, label %bb.bc, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fa = getelementptr inbounds nuw i8, ptr %.06087.i, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !54
  %i.fc = icmp eq i8 %i.fb, 1
  br i1 %i.fc, label %bb.au, label %bb.bc

bb.au:                                            ; preds = %bb.at
  %i.fd = getelementptr inbounds nuw i8, ptr %.05689.i, i64 1
  store i8 84, ptr %.05689.i, align 1, !tbaa !54
  %i.fe = getelementptr inbounds nuw i8, ptr %.06087.i, i64 2
  %i.ff = add i64 %.05788.i, -2
  br label %.backedge.i

bb.av:                                            ; preds = %bb.r
  %i.fg = icmp ugt i64 %.05788.i, 3
  %or.cond.i = and i1 %i.bm, %i.fg
  br i1 %or.cond.i, label %bb.aw, label %.thread.i

bb.aw:                                            ; preds = %bb.av
  %i.fh = getelementptr inbounds nuw i8, ptr %.06087.i, i64 1
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !54
  %i.fj = icmp eq i8 %i.fi, 0
  br i1 %i.fj, label %bb.ax, label %.thread.i

bb.ax:                                            ; preds = %bb.aw
  %i.fk = getelementptr inbounds nuw i8, ptr %.06087.i, i64 2
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !54
  %i.fm = icmp eq i8 %i.fl, 0
  br i1 %i.fm, label %bb.ay, label %.thread.i

bb.ay:                                            ; preds = %bb.ax
  %i.fn = getelementptr inbounds nuw i8, ptr %.06087.i, i64 3
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !54
  %i.fp = icmp eq i8 %i.fo, 0
  br i1 %i.fp, label %bb.az, label %.thread.i

bb.az:                                            ; preds = %bb.ay
  %i.fq = getelementptr inbounds nuw i8, ptr %.05689.i, i64 1
  store i8 85, ptr %.05689.i, align 1, !tbaa !54
  %i.fr = getelementptr inbounds nuw i8, ptr %.06087.i, i64 4
  %i.fs = add i64 %.05788.i, -4
  br label %.backedge.i

bb.ba:                                            ; preds = %bb.r
  %i.ft = getelementptr inbounds nuw i8, ptr %.05689.i, i64 1
  store i8 90, ptr %.05689.i, align 1, !tbaa !54
  %i.fu = getelementptr inbounds nuw i8, ptr %.06087.i, i64 1
  %i.fv = add i64 %.05788.i, -1
  br label %.backedge.i

.thread.i:                                        ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.an, %bb.am, %bb.al
  %.ph.i = phi i8 [ -32, %bb.av ], [ -32, %bb.aw ], [ -32, %bb.ax ], [ -32, %bb.ay ], [ %i.bn, %bb.al ], [ %i.bn, %bb.am ], [ %i.bn, %bb.an ]
  %i.fw = lshr i8 %.ph.i, 4
  %i.fx = add nuw nsw i8 %i.fw, 55
  br label %bb.bc

bb.bb:                                            ; preds = %._crit_edge._crit_edge.i, %bb.r
  %.fr.i = phi i8 [ %i.bn, %bb.r ], [ %i.eh, %._crit_edge._crit_edge.i ] ; 2 uses
  %i.fy = lshr i8 %.fr.i, 4                       ; 2 uses
  %i.fz = icmp ult i8 %.fr.i, -96
  %i.ga = add nuw nsw i8 %i.fy, 55
  %i.gb = or disjoint i8 %i.fy, 48
  %spec.select.i = select i1 %i.fz, i8 %i.gb, i8 %i.ga
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ap, %bb.aq, %bb.as, %bb.at, %bb.bb, %.thread.i
  %.259104.i = phi i64 [ %.05788.i, %.thread.i ], [ %.05788.i, %bb.bb ], [ %.05788.i, %bb.at ], [ 1, %bb.as ], [ %.05788.i, %bb.aq ], [ 1, %bb.ap ]
  %5 = phi i8 [ %i.fx, %.thread.i ], [ %spec.select.i, %bb.bb ], [ 54, %bb.at ], [ 54, %bb.as ], [ 57, %bb.aq ], [ 57, %bb.ap ]
  %.2.i = getelementptr inbounds nuw i8, ptr %.05689.i, i64 1
  store i8 %5, ptr %.05689.i, align 1, !tbaa !54
  %i.gc = load i8, ptr %.06087.i, align 1, !tbaa !54
  %i.gd = and i8 %i.gc, 15                        ; 3 uses
  %i.ge = icmp samesign ult i8 %i.gd, 10
  %i.gf = add nuw nsw i8 %i.gd, 55
  %i.gg = or disjoint i8 %i.gd, 48
  %storemerge.1.i = select i1 %i.ge, i8 %i.gg, i8 %i.gf
  %.2.1.i = getelementptr inbounds nuw i8, ptr %.05689.i, i64 2
  store i8 %storemerge.1.i, ptr %.2.i, align 1, !tbaa !54
  %i.gh = getelementptr inbounds nuw i8, ptr %.06087.i, i64 1
  %i.gi = add i64 %.259104.i, -1
  br label %.backedge.i

mcc_bytes_to_hex.exit:                            ; preds = %.backedge.i
  store i8 0, ptr %.056.be.i, align 1, !tbaa !54
  %i.gj = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.gk = call i32 (ptr, ptr, ...) @avio_printf(ptr noundef %i.gj, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %bb.bd

bb.bd:                                            ; preds = %mcc_bytes_to_hex.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.be

bb.be:                                            ; preds = %bb.k, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.gl = call i32 @av_smpte_436m_anc_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #10 ; 2 uses
  %i.gm = icmp sgt i32 %i.gl, -1
  br i1 %i.gm, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.be, %bb.h
  %.lcssa73 = phi i32 [ %i.x, %bb.h ], [ %i.gl, %bb.be ] ; 2 uses
  %.not51 = icmp eq i32 %.lcssa73, -541478725
  %. = select i1 %.not51, i32 0, i32 %.lcssa73
  br label %bb.bf

bb.bf:                                            ; preds = %.thread65, %._crit_edge
  %.244 = phi i32 [ %i.ap, %.thread65 ], [ %., %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.bg

bb.bg:                                            ; preds = %bb.e, %bb.bf
  %.3 = phi i32 [ %.244, %bb.bf ], [ %i.u, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.b
  %.4 = phi i32 [ 0, %bb.b ], [ %.3, %bb.bg ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 0, 2) i32 @mcc_query_codec(i32 noundef %0, i32 %1) #1 {
bb.a:
  %switch.selectcmp.case1 = icmp eq i32 %0, 98317
  %switch.selectcmp.case2 = icmp eq i32 %0, 94218
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.a = zext i1 %switch.selectcmp to i32
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @mcc_init(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.AVRational, align 8         ; 11 uses
  %2 = alloca %struct.AVTimecode, align 4         ; 4 uses
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !70
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.35) #10
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !71
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = load i64, ptr %i.i, align 8, !tbaa !74   ; 3 uses
  store i64 %i.j, ptr %1, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75   ; 2 uses
  %.not50 = icmp eq ptr %i.l, null
  %i.m = trunc i64 %i.j to i32
  %i.n = lshr i64 %i.j, 32
  %i.o = trunc nuw i64 %i.n to i32
  br i1 %.not50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = call i32 @av_parse_video_rate(ptr noundef nonnull %1, ptr noundef nonnull %i.l) #10 ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.ab, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i32, ptr %1, align 8, !tbaa !76
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre58 = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.r = phi i32 [ %.pre58, %._crit_edge ], [ %i.o, %bb.c ] ; 10 uses
  %i.s = phi i32 [ %.pre, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  switch i32 %i.s, label %.critedge [
    i32 24, label %bb.f
    i32 25, label %bb.g
    i32 30000, label %bb.h
    i32 30, label %bb.i
    i32 50, label %bb.j
    i32 60000, label %bb.k
    i32 60, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq i32 %i.r, 1
  br i1 %i.u, label %bb.p, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.v = icmp eq i32 %i.r, 1
  br i1 %i.v, label %bb.p, label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %i.r, 1001
  br i1 %i.w, label %bb.p, label %.critedge

bb.i:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %i.r, 1
  br i1 %i.x, label %bb.p, label %.critedge

bb.j:                                             ; preds = %bb.e
  %i.y = icmp eq i32 %i.r, 1
  br i1 %i.y, label %bb.p, label %.critedge

bb.k:                                             ; preds = %bb.e
  %i.z = icmp eq i32 %i.r, 1001
  br i1 %i.z, label %bb.p, label %.critedge

bb.l:                                             ; preds = %bb.e
  %i.aa = icmp eq i32 %i.r, 1
  br i1 %i.aa, label %bb.p, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.h, %bb.g, %bb.f, %bb.i, %bb.j, %bb.k, %bb.l
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !75
  %.not54 = icmp eq ptr %i.ab, null
  br i1 %.not54, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.critedge
  %i.ac = icmp slt i32 %i.s, 1
  %i.ad = icmp slt i32 %i.r, 1
  %or.cond = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 8, ptr noundef nonnull @.str.36) #10
  br label %bb.ab

bb.o:                                             ; preds = %bb.m, %.critedge
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 8, ptr noundef nonnull @.str.37, i32 noundef %i.s, i32 noundef %i.r) #10
  br label %bb.ab

bb.p:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  call void @avpriv_set_pts_info(ptr noundef nonnull %i.h, i32 noundef 64, i32 noundef %i.r, i32 noundef %i.s) #10
  %i.ae = load i32, ptr %i.t, align 4, !tbaa !77
  %i.af = icmp eq i32 %i.ae, 1001
  br i1 %i.af, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ag = load i32, ptr %1, align 8, !tbaa !76
  %i.ah = srem i32 %i.ag, 30000
  %i.ai = icmp eq i32 %i.ah, 0
  %spec.select = zext i1 %i.ai to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.041 = phi i32 [ 0, %bb.p ], [ %spec.select, %bb.q ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ak = load i64, ptr %1, align 8
  %i.al = call i32 @av_timecode_init(ptr noundef nonnull %i.aj, i64 %i.ak, i32 noundef %.041, i32 noundef 0, ptr noundef nonnull %0) #10 ; 2 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.ab, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !30
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !31
  %i.as = icmp eq i32 %i.ar, 60
  br i1 %i.as, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !32
  %i.av = and i32 %i.au, 1
  %.not52 = icmp eq i32 %i.av, 0
  br i1 %.not52, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 8, ptr noundef nonnull @.str.38) #10
end_hunk_0
