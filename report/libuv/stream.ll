Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libuv/original/stream?download=true
inline.NumInlined: 55
inline.NumDeleted: 21
begin_hunk_0_@uv__tcp_listen
declare i32 @uv__tcp_listen(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @uv__pipe_listen(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -107, 1) i32 @uv_shutdown(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 33280
  %or.cond = icmp eq i32 %i.c, 32768
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not17 = icmp eq ptr %i.e, null
  %i.f = and i32 %i.b, 3
  %.not18 = icmp eq i32 %i.f, 0
  %or.cond20 = and i1 %.not18, %.not17
  br i1 %or.cond20, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 4, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %2, ptr %i.n, align 8
  store ptr %0, ptr %i.d, align 8
  %i.o = load i32, ptr %i.a, align 8
  %i.p = and i32 %i.o, -32769
  store i32 %i.p, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %.not = icmp eq ptr %i.q, %i.r
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.h, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @uv__io_feed(ptr noundef %i.s, ptr noundef nonnull %i.t) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  %.0 = phi i32 [ -107, %bb.a ], [ -107, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

declare void @uv__io_feed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @uv__stream_io(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.uv_buf_t, align 8           ; 14 uses
  %4 = alloca %struct.msghdr, align 8             ; 10 uses
  %5 = alloca %union.uv__cmsg, align 8            ; 3 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %struct.uv_buf_t, align 8           ; 4 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 -136 ; 12 uses
  %i.d = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 4, ptr %i.b, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i32, ptr %i.h, align 8
  %i.j = call i32 @getsockopt(i32 noundef %i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.k = load i32, ptr %i.a, align 4
  %i.l = sub nsw i32 0, %i.k
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink.i = phi i32 [ %i.l, %bb.d ], [ %i.g, %bb.c ] ; 4 uses
  store i32 %.sink.i, ptr %i.a, align 4
  %i.m = icmp eq i32 %.sink.i, -115
  br i1 %i.m, label %uv__stream_connect.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.d, align 8
  %i.n = getelementptr inbounds i8, ptr %1, i64 -128 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = add i32 %i.q, -1
  store i32 %i.r, ptr %i.p, align 8
  %i.s = icmp slt i32 %.sink.i, 0
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %.not20.i = icmp eq ptr %i.t, %i.u
  br i1 %.not20.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = load ptr, ptr %i.n, align 8
  call void @uv__io_stop(ptr noundef %i.v, ptr noundef nonnull %1, i32 noundef 4) #11
  %.pre21.pre.i = load i32, ptr %i.a, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre21.i = phi i32 [ %.pre21.pre.i, %bb.h ], [ %.sink.i, %bb.g ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not18.i = icmp eq ptr %i.x, null
  br i1 %.not18.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void %i.x(ptr noundef nonnull %i.e, i32 noundef %.pre21.i) #11, !inline_history !7
  %.pre.i = load i32, ptr %i.a, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = phi i32 [ %.pre.i, %bb.j ], [ %.pre21.i, %bb.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp ne i32 %i.aa, -1
  %i.ac = icmp slt i32 %i.y, 0
  %or.cond.i = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond.i, label %bb.l, label %uv__stream_connect.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not7.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not7.i.i, label %uv__stream_flush_write_queue.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i
  %i.ah = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.ap, %bb.m ] ; 6 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  store ptr %i.ai, ptr %i.ak, align 8
  %i.al = load ptr, ptr %i.aj, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.al, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 36
  store i32 -125, ptr %i.an, align 4
  store ptr %i.af, ptr %i.ah, align 8
  %i.ao = load ptr, ptr %i.ag, align 8            ; 2 uses
  store ptr %i.ao, ptr %i.aj, align 8
  store ptr %i.ah, ptr %i.ao, align 8
  store ptr %i.ah, ptr %i.ag, align 8
  %i.ap = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.ap
  br i1 %.not.i.i, label %uv__stream_flush_write_queue.exit.i, label %bb.m, !llvm.loop !0

uv__stream_flush_write_queue.exit.i:              ; preds = %bb.m, %bb.l
  call fastcc void @uv__write_callbacks(ptr noundef nonnull %i.c)
  br label %uv__stream_connect.exit

uv__stream_connect.exit:                          ; preds = %bb.e, %bb.k, %uv__stream_flush_write_queue.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.bi

bb.n:                                             ; preds = %bb.a
  %i.aq = and i32 %2, 9
  %.not16 = icmp eq i32 %i.aq, 0
  br i1 %.not16, label %bb.az, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.ar = getelementptr inbounds i8, ptr %1, i64 -120
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = icmp eq i32 %i.as, 7
  br i1 %i.at, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp ne i32 %i.av, 0
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ax = phi i1 [ false, %bb.o ], [ %i.aw, %bb.p ] ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %1, i64 -24 ; 7 uses
  %i.az = getelementptr inbounds i8, ptr %1, i64 -48 ; 11 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %1, i64 -32
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %not..i = xor i1 %i.ax, true
  br label %bb.r

bb.r:                                             ; preds = %uv__stream_recv_cmsg.exit.thread.i, %bb.q
  %.053.i = phi i32 [ 32, %bb.q ], [ %i.bn, %uv__stream_recv_cmsg.exit.thread.i ] ; 2 uses
  %i.bk = load ptr, ptr %i.ay, align 8
  %.not.i25 = icmp eq ptr %i.bk, null
  br i1 %.not.i25, label %uv__read.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = load i32, ptr %i.az, align 8
  %i.bm = and i32 %i.bl, 4096
  %.not58.i = icmp eq i32 %i.bm, 0
  br i1 %.not58.i, label %uv__read.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = add nsw i32 %.053.i, -1
  %.not104.i = icmp eq i32 %.053.i, 0
  br i1 %.not104.i, label %uv__read.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = call { ptr, i64 } @uv_buf_init(ptr noundef null, i32 noundef 0) #11 ; 2 uses
  %i.bp = extractvalue { ptr, i64 } %i.bo, 0
  %i.bq = extractvalue { ptr, i64 } %i.bo, 1
  store ptr %i.bp, ptr %3, align 8
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.br = load ptr, ptr %i.ba, align 8
  call void %i.br(ptr noundef nonnull %i.c, i64 noundef 65536, ptr noundef nonnull %3) #11, !inline_history !8
  %i.bs = load ptr, ptr %3, align 8
  %i.bt = icmp eq ptr %i.bs, null
  %i.bu = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.bv = icmp eq i64 %i.bu, 0
  %or.cond.i26 = select i1 %i.bt, i1 true, i1 %i.bv
  br i1 %or.cond.i26, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bw = load ptr, ptr %i.ay, align 8
  call void %i.bw(ptr noundef nonnull %i.c, i64 noundef -105, ptr noundef nonnull %3) #11, !inline_history !8
  br label %uv__read.exit

bb.w:                                             ; preds = %bb.u
  br i1 %i.ax, label %bb.y, label %.preheader.i

.preheader.i:                                     ; preds = %bb.w, %bb.x
  %i.bx = load i32, ptr %i.bb, align 8
  %i.by = load ptr, ptr %3, align 8
  %i.bz = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.ca = call i64 @read(i32 noundef %i.bx, ptr noundef %i.by, i64 noundef %i.bz) #11 ; 2 uses
  %i.cb = icmp slt i64 %i.ca, 0
  br i1 %i.cb, label %bb.x, label %.critedge4.i

bb.x:                                             ; preds = %.preheader.i
  %i.cc = tail call ptr @__errno_location() #12   ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4            ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 4
  br i1 %i.ce, label %.preheader.i, label %.loopexit.i, !llvm.loop !9

bb.y:                                             ; preds = %bb.w
  store i32 0, ptr %i.bc, align 8
  store ptr %3, ptr %i.bd, align 8
  store i64 1, ptr %i.be, align 8
  store ptr null, ptr %4, align 8
  store i32 0, ptr %i.bf, align 8
  store i64 256, ptr %i.bg, align 8
  store ptr %5, ptr %i.bh, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %bb.y
  %i.cf = load i32, ptr %i.bb, align 8
  %i.cg = call i64 @uv__recvmsg(i32 noundef %i.cf, ptr noundef nonnull %4, i32 noundef 0) #11 ; 2 uses
  %i.ch = icmp slt i64 %i.cg, 0
  br i1 %i.ch, label %bb.aa, label %.critedge4.i

bb.aa:                                            ; preds = %bb.z
  %i.ci = tail call ptr @__errno_location() #12   ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4            ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 4
  br i1 %i.ck, label %bb.z, label %.loopexit.i, !llvm.loop !10

.loopexit.i:                                      ; preds = %bb.x, %bb.aa
  %i.cl = phi i32 [ %i.cj, %bb.aa ], [ %i.cd, %bb.x ]
  %.pre-phi.i = phi ptr [ %i.ci, %bb.aa ], [ %i.cc, %bb.x ]
  %i.cm = icmp eq i32 %i.cl, 11
  %i.cn = load i32, ptr %i.az, align 8            ; 2 uses
  br i1 %i.cm, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %.loopexit.i
  %i.co = and i32 %i.cn, 4096
  %.not62.i = icmp eq i32 %i.co, 0
  br i1 %.not62.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cp = getelementptr inbounds i8, ptr %1, i64 -128
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call i32 @uv__io_start(ptr noundef %i.cq, ptr noundef nonnull %1, i32 noundef 1) #11 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cs = load ptr, ptr %i.ay, align 8
  call void %i.cs(ptr noundef nonnull %i.c, i64 noundef 0, ptr noundef nonnull %3) #11, !inline_history !8
  br label %uv__read.exit

bb.ae:                                            ; preds = %.loopexit.i
  %i.ct = and i32 %i.cn, -49153
  store i32 %i.ct, ptr %i.az, align 8
  %i.cu = load ptr, ptr %i.ay, align 8
  %i.cv = load i32, ptr %.pre-phi.i, align 4
  %i.cw = sub nsw i32 0, %i.cv
  %i.cx = sext i32 %i.cw to i64
  call void %i.cu(ptr noundef nonnull %i.c, i64 noundef %i.cx, ptr noundef nonnull %3) #11, !inline_history !8
  %i.cy = load i32, ptr %i.az, align 8            ; 2 uses
  %i.cz = and i32 %i.cy, 4096
  %.not60.i = icmp eq i32 %i.cz, 0
  br i1 %.not60.i, label %uv__read.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.da = and i32 %i.cy, -4097
  store i32 %i.da, ptr %i.az, align 8
  %i.db = getelementptr inbounds i8, ptr %1, i64 -128 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8
  call void @uv__io_stop(ptr noundef %i.dc, ptr noundef nonnull %1, i32 noundef 1) #11
  %i.dd = load i32, ptr %i.az, align 8            ; 3 uses
  %i.de = and i32 %i.dd, 4
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %uv__read.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dg = and i32 %i.dd, -5
  store i32 %i.dg, ptr %i.az, align 8
  %i.dh = and i32 %i.dd, 8
  %.not61.i = icmp eq i32 %i.dh, 0
  br i1 %.not61.i, label %uv__read.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.di = load ptr, ptr %i.db, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8
  %i.dl = add i32 %i.dk, -1
  store i32 %i.dl, ptr %i.dj, align 8
  br label %uv__read.exit

.critedge4.i:                                     ; preds = %.preheader.i, %bb.z
  %.052.i = phi i64 [ %i.cg, %bb.z ], [ %i.ca, %.preheader.i ] ; 3 uses
  %i.dm = icmp eq i64 %.052.i, 0
  br i1 %i.dm, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %.critedge4.i
  %i.dn = load i32, ptr %i.az, align 8
  %i.do = and i32 %i.dn, -6145
  %i.dp = or disjoint i32 %i.do, 2048
  store i32 %i.dp, ptr %i.az, align 8
  %i.dq = getelementptr inbounds i8, ptr %1, i64 -128 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8
  call void @uv__io_stop(ptr noundef %i.dr, ptr noundef nonnull %1, i32 noundef 1) #11
  %i.ds = load i32, ptr %i.az, align 8            ; 3 uses
  %i.dt = and i32 %i.ds, 4
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %uv__stream_eof.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dv = and i32 %i.ds, -5
  store i32 %i.dv, ptr %i.az, align 8
  %i.dw = and i32 %i.ds, 8
  %.not.i.i28 = icmp eq i32 %i.dw, 0
  br i1 %.not.i.i28, label %uv__stream_eof.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dx = load ptr, ptr %i.dq, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8
  %i.ea = add i32 %i.dz, -1
  store i32 %i.ea, ptr %i.dy, align 8
  br label %uv__stream_eof.exit.i

uv__stream_eof.exit.i:                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.eb = load ptr, ptr %i.ay, align 8
  call void %i.eb(ptr noundef nonnull %i.c, i64 noundef -4095, ptr noundef nonnull %3) #11, !inline_history !11
  br label %uv__read.exit

bb.al:                                            ; preds = %.critedge4.i
  %i.ec = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.ed = load i64, ptr %i.bg, align 8
  %i.ee = icmp ult i64 %i.ed, 16
  %or.cond86.i = select i1 %not..i, i1 true, i1 %i.ee
  %i.ef = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not36.i.i = icmp eq ptr %i.ef, null
  %or.cond87.i = select i1 %or.cond86.i, i1 true, i1 %.not36.i.i
  br i1 %or.cond87.i, label %uv__stream_recv_cmsg.exit.thread.i, label %.lr.ph39.i.i

.lr.ph39.i.i:                                     ; preds = %bb.al, %__cmsg_nxthdr.exit.i.i
  %.038.i.i = phi i32 [ %.3.i.i, %__cmsg_nxthdr.exit.i.i ], [ 0, %bb.al ] ; 3 uses
  %.02537.i.i = phi ptr [ %i.gh, %__cmsg_nxthdr.exit.i.i ], [ %i.ef, %bb.al ] ; 7 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.02537.i.i, i64 12
  %i.eh = load i32, ptr %i.eg, align 4            ; 2 uses
  %.not27.i.i = icmp eq i32 %i.eh, 1
  br i1 %.not27.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph39.i.i
  %i.ei = load ptr, ptr @stderr, align 8
  %i.ej = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ei, ptr noundef nonnull @.str.2, i32 noundef %i.eh) #13 ; 0 uses
  br label %.loopexitthread-pre-split.i.i

bb.an:                                            ; preds = %.lr.ph39.i.i
  %i.ek = load i64, ptr %.02537.i.i, align 8      ; 2 uses
  %i.el = and i64 %i.ek, -4
  %i.em = getelementptr inbounds nuw i8, ptr %.02537.i.i, i64 16 ; 2 uses
  %i.en = getelementptr i8, ptr %.02537.i.i, i64 %i.el ; 2 uses
  %i.eo = icmp ult ptr %i.em, %i.en
  br i1 %i.eo, label %.lr.ph.i.i27, label %.loopexit.i.i

.lr.ph.i.i27:                                     ; preds = %bb.an, %uv__stream_queue_fd.exit.i.i
  %.135.i.i = phi i32 [ %.233.i.i, %uv__stream_queue_fd.exit.i.i ], [ %.038.i.i, %bb.an ] ; 2 uses
  %.02434.i.i = phi ptr [ %i.ep, %uv__stream_queue_fd.exit.i.i ], [ %i.em, %bb.an ] ; 2 uses
  %.0.copyload.i.i = load i32, ptr %.02434.i.i, align 1 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.02434.i.i, i64 4 ; 2 uses
  %i.eq = icmp eq i32 %.135.i.i, 0
  br i1 %i.eq, label %bb.ao, label %bb.ax

bb.ao:                                            ; preds = %.lr.ph.i.i27
  %i.er = load i32, ptr %i.bi, align 4
  %i.es = icmp eq i32 %i.er, -1
  br i1 %i.es, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 %.0.copyload.i.i, ptr %i.bi, align 4
  br label %uv__stream_queue_fd.exit.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.et = load ptr, ptr %i.bj, align 8            ; 5 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.ev = call ptr @uv__malloc(i64 noundef 40) #11 ; 4 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 8, ptr %i.ev, align 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store i32 0, ptr %i.ex, align 4
  br label %.sink.split.i.i.i

bb.at:                                            ; preds = %bb.aq
  %i.ey = load i32, ptr %i.et, align 4            ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.fa = load i32, ptr %i.ez, align 4            ; 2 uses
  %i.fb = icmp eq i32 %i.ey, %i.fa
  br i1 %i.fb, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.fc = add i32 %i.ey, 7
  %i.fd = zext i32 %i.fc to i64
  %i.fe = shl nuw nsw i64 %i.fd, 2
  %i.ff = add nuw nsw i64 %i.fe, 12
  %i.fg = call ptr @uv__realloc(ptr noundef nonnull %i.et, i64 noundef %i.ff) #11 ; 3 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fi = add i32 %i.ey, 8
  store i32 %i.fi, ptr %i.fg, align 4
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.av, %bb.as
  %.sink.i.i.i = phi ptr [ %i.fg, %bb.av ], [ %i.ev, %bb.as ] ; 3 uses
  store ptr %.sink.i.i.i, ptr %i.bj, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 4
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split.i.i.i, %bb.at
  %i.fj = phi i32 [ %i.fa, %bb.at ], [ %.pre.i.i, %.sink.split.i.i.i ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.et, %bb.at ], [ %.sink.i.i.i, %.sink.split.i.i.i ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.fm = add i32 %i.fj, 1
  store i32 %i.fm, ptr %i.fl, align 4
  %i.fn = zext i32 %i.fj to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fn
  store i32 %.0.copyload.i.i, ptr %i.fo, align 4
  br label %uv__stream_queue_fd.exit.i.i

bb.ax:                                            ; preds = %bb.au, %bb.ar, %.lr.ph.i.i27
  %.2.ph.i.i = phi i32 [ -12, %bb.au ], [ -12, %bb.ar ], [ %.135.i.i, %.lr.ph.i.i27 ]
  %i.fp = call i32 @uv__close(i32 noundef %.0.copyload.i.i) #11 ; 0 uses
  br label %uv__stream_queue_fd.exit.i.i

uv__stream_queue_fd.exit.i.i:                     ; preds = %bb.ax, %bb.aw, %bb.ap
  %.233.i.i = phi i32 [ %.2.ph.i.i, %bb.ax ], [ 0, %bb.ap ], [ 0, %bb.aw ] ; 2 uses
  %i.fq = icmp ult ptr %i.ep, %i.en
  br i1 %i.fq, label %.lr.ph.i.i27, label %.loopexitthread-pre-split.i.i, !llvm.loop !12

.loopexitthread-pre-split.i.i:                    ; preds = %uv__stream_queue_fd.exit.i.i, %bb.am
  %.3.ph.i.i = phi i32 [ %.038.i.i, %bb.am ], [ %.233.i.i, %uv__stream_queue_fd.exit.i.i ]
  %.pr.i.i = load i64, ptr %.02537.i.i, align 8
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexitthread-pre-split.i.i, %bb.an
  %i.fr = phi i64 [ %.pr.i.i, %.loopexitthread-pre-split.i.i ], [ %i.ek, %bb.an ] ; 4 uses
  %.3.i.i = phi i32 [ %.3.ph.i.i, %.loopexitthread-pre-split.i.i ], [ %.038.i.i, %bb.an ] ; 3 uses
  %i.fs = icmp ult i64 %i.fr, 16
  br i1 %i.fs, label %uv__stream_recv_cmsg.exit.i, label %bb.ay

bb.ay:                                            ; preds = %.loopexit.i.i
  %i.ft = sub i64 0, %i.fr
  %i.fu = and i64 %i.ft, 7
  %i.fv = or disjoint i64 %i.fu, 16               ; 2 uses
  %i.fw = load ptr, ptr %i.bh, align 8
  %i.fx = load i64, ptr %i.bg, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fx
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %.02537.i.i to i64
  %i.gb = sub i64 %i.fz, %i.ga                    ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.fv
  %i.gd = sub nuw i64 %i.gb, %i.fv
  %i.ge = icmp ult i64 %i.gd, %i.fr
  %or.cond.i.i.i = select i1 %i.gc, i1 true, i1 %i.ge
  br i1 %or.cond.i.i.i, label %uv__stream_recv_cmsg.exit.i, label %__cmsg_nxthdr.exit.i.i

__cmsg_nxthdr.exit.i.i:                           ; preds = %bb.ay
  %i.gf = add nuw i64 %i.fr, 7
  %i.gg = and i64 %i.gf, -8
  %i.gh = getelementptr inbounds nuw i8, ptr %.02537.i.i, i64 %i.gg
  br label %.lr.ph39.i.i

uv__stream_recv_cmsg.exit.i:                      ; preds = %bb.ay, %.loopexit.i.i
  %.not59.i = icmp eq i32 %.3.i.i, 0
  br i1 %.not59.i, label %uv__stream_recv_cmsg.exit.thread.i, label %.critedge64.i

.critedge64.i:                                    ; preds = %uv__stream_recv_cmsg.exit.i
  %i.gi = load ptr, ptr %i.ay, align 8
  %i.gj = sext i32 %.3.i.i to i64
  call void %i.gi(ptr noundef nonnull %i.c, i64 noundef %i.gj, ptr noundef nonnull %3) #11, !inline_history !8
  br label %uv__read.exit

uv__stream_recv_cmsg.exit.thread.i:               ; preds = %uv__stream_recv_cmsg.exit.i, %bb.al
  %i.gk = load ptr, ptr %i.ay, align 8
  call void %i.gk(ptr noundef nonnull %i.c, i64 noundef %.052.i, ptr noundef nonnull %3) #11, !inline_history !8
  %.not68.i = icmp slt i64 %.052.i, %i.ec
  br i1 %.not68.i, label %uv__read.exit, label %bb.r, !llvm.loop !13

uv__read.exit:                                    ; preds = %bb.r, %bb.s, %bb.t, %uv__stream_recv_cmsg.exit.thread.i, %bb.v, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %uv__stream_eof.exit.i, %.critedge64.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.az

bb.az:                                            ; preds = %uv__read.exit, %bb.n
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 8
  %i.gn = icmp eq i32 %i.gm, -1
  br i1 %i.gn, label %bb.bi, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.go = and i32 %2, 17
  %or.cond = icmp eq i32 %i.go, 16
  br i1 %or.cond, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.gp = getelementptr inbounds i8, ptr %1, i64 -48 ; 4 uses
  %i.gq = load i32, ptr %i.gp, align 8            ; 2 uses
  %i.gr = and i32 %i.gq, 6144
  %or.cond23 = icmp eq i32 %i.gr, 4096
  br i1 %or.cond23, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.gs = and i32 %i.gq, -6145
  %i.gt = or disjoint i32 %i.gs, 2048
  store i32 %i.gt, ptr %i.gp, align 8
  %i.gu = getelementptr inbounds i8, ptr %1, i64 -128 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8
  call void @uv__io_stop(ptr noundef %i.gv, ptr noundef nonnull %1, i32 noundef 1) #11
  %i.gw = load i32, ptr %i.gp, align 8            ; 3 uses
  %i.gx = and i32 %i.gw, 4
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %uv__stream_eof.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gz = and i32 %i.gw, -5
  store i32 %i.gz, ptr %i.gp, align 8
  %i.ha = and i32 %i.gw, 8
  %.not.i29 = icmp eq i32 %i.ha, 0
  br i1 %.not.i29, label %uv__stream_eof.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hb = load ptr, ptr %i.gu, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 8
  %i.he = add i32 %i.hd, -1
  store i32 %i.he, ptr %i.hc, align 8
  br label %uv__stream_eof.exit

uv__stream_eof.exit:                              ; preds = %bb.bc, %bb.bd, %bb.be
  %i.hf = getelementptr inbounds i8, ptr %1, i64 -24
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull %i.c, i64 noundef -4095, ptr noundef nonnull %6) #11, !inline_history !14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %.pre = load i32, ptr %i.gl, align 8
  %i.hh = icmp eq i32 %.pre, -1
  br label %bb.bf

bb.bf:                                            ; preds = %uv__stream_eof.exit, %bb.bb, %bb.ba
  %i.hi = phi i1 [ %i.hh, %uv__stream_eof.exit ], [ false, %bb.bb ], [ false, %bb.ba ]
  %i.hj = and i32 %2, 28
  %.not21 = icmp eq i32 %i.hj, 0
  %or.cond24 = or i1 %.not21, %i.hi
  br i1 %or.cond24, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call fastcc void @uv__write(ptr noundef nonnull %i.c)
  call fastcc void @uv__write_callbacks(ptr noundef nonnull %i.c)
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8
  %.not30 = icmp eq ptr %i.hk, %i.hl
  br i1 %.not30, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call fastcc void @uv__drain(ptr noundef nonnull %i.c)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.az, %uv__stream_connect.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal fastcc void @uv__write(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %.outer

.outer:                                           ; preds = %uv__write_req_finish.exit, %bb.a
  %.0.ph = phi i32 [ %i.bg, %uv__write_req_finish.exit ], [ 32, %bb.a ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.m
  %i.d = load ptr, ptr %i.a, align 8              ; 21 uses
  %.not = icmp eq ptr %i.a, %i.d
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = sub i32 %i.l, %i.h
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 -16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call fastcc i32 @uv__try_write(ptr noundef nonnull %0, ptr noundef %i.j, i32 noundef %i.m, ptr noundef %i.o) ; 4 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.r = zext nneg i32 %i.p to i64                ; 2 uses
  store ptr null, ptr %i.n, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = sub i64 %i.s, %i.r
  store i64 %i.t, ptr %i.b, align 8
  %i.u = load ptr, ptr %i.e, align 8
  %i.v = load i32, ptr %i.g, align 8
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.w
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.022.i = phi i64 [ %i.r, %bb.d ], [ %i.ag, %bb.g ] ; 3 uses
  %.0.i = phi ptr [ %i.x, %bb.d ], [ %i.af, %bb.g ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8              ; 4 uses
  %.022..i = tail call i64 @llvm.umin.i64(i64 %.022.i, i64 %i.z) ; 3 uses
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %.0.i, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.022..i
  store ptr %i.ab, ptr %.0.i, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = sub i64 %i.z, %.022..i
  store i64 %i.ac, ptr %i.y, align 8
  %i.ad = icmp ule i64 %i.z, %.022.i
  %i.ae = zext i1 %i.ad to i64
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.0.i, i64 %i.ae ; 2 uses
  %i.ag = sub nuw nsw i64 %.022.i, %.022..i       ; 2 uses
  %.not25.i = icmp eq i64 %i.ag, 0
  br i1 %.not25.i, label %uv__write_req_update.exit, label %bb.e, !llvm.loop !15

uv__write_req_update.exit:                        ; preds = %bb.g
  %i.ah = load ptr, ptr %i.e, align 8
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = lshr exact i64 %i.ak, 4
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  store i32 %i.am, ptr %i.g, align 8
  %i.an = load i32, ptr %i.k, align 8
  %.not33 = icmp eq i32 %i.an, %i.am
  br i1 %.not33, label %bb.h, label %bb.m

bb.h:                                             ; preds = %uv__write_req_update.exit
  %i.ao = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ap = load ptr, ptr %i.ao, align 8            ; 4 uses
  %i.aq = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8
  store ptr %i.aq, ptr %i.as, align 8
  %i.at = load ptr, ptr %i.ar, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.at, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.i, label %uv__write_req_finish.exit

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.not.i30 = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @uv__free(ptr noundef %i.ay) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr null, ptr %i.e, align 8
  br label %uv__write_req_finish.exit

uv__write_req_finish.exit:                        ; preds = %bb.h, %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 208
  store ptr %i.ba, ptr %i.d, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 216 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  store ptr %i.bc, ptr %i.ar, align 8
  store ptr %i.d, ptr %i.bc, align 8
  store ptr %i.d, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 136
  tail call void @uv__io_feed(ptr noundef %i.be, ptr noundef nonnull %i.bf) #11
  %i.bg = add nsw i32 %.0.ph, -1
  %.not56 = icmp eq i32 %.0.ph, 0
  br i1 %.not56, label %.loopexit, label %.outer

bb.l:                                             ; preds = %bb.c
  %.not27 = icmp eq i32 %i.p, -11
  br i1 %.not27, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l, %uv__write_req_update.exit
  %i.bh = load i32, ptr %i.c, align 8
  %i.bi = and i32 %i.bh, 1048576
  %.not29 = icmp eq i32 %i.bi, 0
  br i1 %.not29, label %bb.n, label %bb.b

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bm = tail call i32 @uv__io_start(ptr noundef %i.bk, ptr noundef nonnull %i.bl, i32 noundef 4) #11 ; 0 uses
  br label %.loopexit

bb.o:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 2 uses
  store i32 %i.p, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.bp = load ptr, ptr %i.bo, align 8            ; 4 uses
  %i.bq = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8
  store ptr %i.bq, ptr %i.bs, align 8
  %i.bt = load ptr, ptr %i.br, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bt, ptr %i.bu, align 8
  %i.bv = load i32, ptr %i.bn, align 4
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.p, label %uv__write_req_finish.exit32

bb.p:                                             ; preds = %bb.o
  %i.bx = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.not.i31 = icmp eq ptr %i.bx, %i.by
  br i1 %.not.i31, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @uv__free(ptr noundef %i.bx) #11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store ptr null, ptr %i.e, align 8
  br label %uv__write_req_finish.exit32

uv__write_req_finish.exit32:                      ; preds = %bb.o, %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 208
  store ptr %i.bz, ptr %i.d, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 216 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  store ptr %i.cb, ptr %i.br, align 8
  store ptr %i.d, ptr %i.cb, align 8
  store ptr %i.d, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 136
  tail call void @uv__io_feed(ptr noundef %i.cd, ptr noundef nonnull %i.ce) #11
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @uv__io_stop(ptr noundef %i.cg, ptr noundef nonnull %i.ch, i32 noundef 4) #11
  br label %.loopexit

.loopexit:                                        ; preds = %uv__write_req_finish.exit, %bb.b, %uv__write_req_finish.exit32, %bb.n
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -32, 1) i32 @uv_write2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %3, -1048577
  %or.cond.i = icmp ult i32 %i.a, -1048576
  br i1 %or.cond.i, label %uv__check_before_write.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %uv__check_before_write.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 32768
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %uv__check_before_write.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not10.i = icmp eq ptr %4, null
  br i1 %.not10.i, label %uv__check_before_write.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8
  %.not11.i = icmp eq i32 %i.i, 7
  br i1 %.not11.i, label %bb.f, label %uv__check_before_write.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.k = load i32, ptr %i.j, align 8
  %.not12.i = icmp eq i32 %i.k, 0
  br i1 %.not12.i, label %uv__check_before_write.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = load i32, ptr %i.l, align 8
  switch i32 %i.m, label %uv__check_before_write.exit.thread [
    i32 7, label %uv__handle_fd.exit.i
    i32 12, label %uv__handle_fd.exit.i
    i32 15, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %uv__handle_fd.exit.i

uv__handle_fd.exit.i:                             ; preds = %bb.h, %bb.g, %bb.g
  %.sink3.i.i = phi i64 [ 176, %bb.h ], [ 184, %bb.g ], [ 184, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 %.sink3.i.i
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %uv__check_before_write.exit.thread, label %uv__check_before_write.exit

uv__check_before_write.exit:                      ; preds = %uv__handle_fd.exit.i, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp eq i64 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %5, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %1, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 0, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %4, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  store ptr %i.ad, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = icmp samesign ugt i32 %3, 4
  %i.ai = shl nuw nsw i32 %3, 4
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  br i1 %i.ah, label %bb.i, label %.thread

bb.i:                                             ; preds = %uv__check_before_write.exit
  %i.ak = tail call ptr @uv__malloc(i64 noundef %i.aj) #11 ; 3 uses
  store ptr %i.ak, ptr %i.ag, align 8
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %uv__check_before_write.exit.thread, label %.thread

.thread:                                          ; preds = %uv__check_before_write.exit, %bb.i
  %i.am = phi ptr [ %i.ak, %bb.i ], [ %i.af, %uv__check_before_write.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.am, ptr align 8 %2, i64 %i.aj, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %3, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.ao, align 8
  %i.ap = tail call i64 @uv__count_bufs(ptr noundef %2, i32 noundef %3) #11
  %i.aq = load i64, ptr %i.q, align 8
  %i.ar = add i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.q, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %i.as, ptr %i.ad, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  store ptr %i.au, ptr %i.ae, align 8
  store ptr %i.ad, ptr %i.au, align 8
  store ptr %i.ad, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aw = load ptr, ptr %i.av, align 8
  %.not = icmp eq ptr %i.aw, null
  br i1 %.not, label %bb.j, label %uv__check_before_write.exit.thread

bb.j:                                             ; preds = %.thread
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @uv__write(ptr noundef nonnull %1)
  br label %uv__check_before_write.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.u, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.az = tail call i32 @uv__io_start(ptr noundef %i.ax, ptr noundef nonnull %i.ay, i32 noundef 4) #11 ; 0 uses
  br label %uv__check_before_write.exit.thread

uv__check_before_write.exit.thread:               ; preds = %bb.g, %uv__handle_fd.exit.i, %bb.f, %bb.e, %bb.c, %bb.a, %bb.b, %.thread, %bb.l, %bb.k, %bb.i
  %.0 = phi i32 [ -12, %bb.i ], [ 0, %.thread ], [ 0, %bb.k ], [ 0, %bb.l ], [ -9, %bb.g ], [ -9, %uv__handle_fd.exit.i ], [ -22, %bb.f ], [ -22, %bb.e ], [ -32, %bb.c ], [ -22, %bb.a ], [ -9, %bb.b ]
  ret i32 %.0
}

declare ptr @uv__malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i64 @uv__count_bufs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -32, 1) i32 @uv_write(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @uv_write2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef null, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @uv_try_write(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %uv_try_write2.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8
  %.not11.i = icmp eq i64 %i.d, 0
  br i1 %.not11.i, label %bb.c, label %uv_try_write2.exit

bb.c:                                             ; preds = %bb.b
  %i.e = add i32 %2, -1048577
  %or.cond.i.i = icmp ult i32 %i.e, -1048576
  br i1 %or.cond.i.i, label %uv_try_write2.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %uv_try_write2.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, 32768
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %uv_try_write2.exit, label %uv__check_before_write.exit.i

uv__check_before_write.exit.i:                    ; preds = %bb.e
  %i.l = tail call fastcc i32 @uv__try_write(ptr noundef nonnull readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef null)
  br label %uv_try_write2.exit

uv_try_write2.exit:                               ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %uv__check_before_write.exit.i
  %.0.i = phi i32 [ %i.l, %uv__check_before_write.exit.i ], [ -11, %bb.a ], [ -11, %bb.b ], [ -32, %bb.e ], [ -22, %bb.c ], [ -9, %bb.d ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define i32 @uv_try_write2(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %uv__check_before_write.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8
  %.not11 = icmp eq i64 %i.d, 0
  br i1 %.not11, label %bb.c, label %uv__check_before_write.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = add i32 %2, -1048577
  %or.cond.i = icmp ult i32 %i.e, -1048576
  br i1 %or.cond.i, label %uv__check_before_write.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %uv__check_before_write.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, 32768
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %uv__check_before_write.exit.thread, label %uv__check_before_write.exit

uv__check_before_write.exit:                      ; preds = %bb.e
  %i.l = tail call fastcc i32 @uv__try_write(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %uv__check_before_write.exit.thread

uv__check_before_write.exit.thread:               ; preds = %bb.e, %bb.c, %bb.d, %bb.a, %bb.b, %uv__check_before_write.exit
  %.0 = phi i32 [ %i.l, %uv__check_before_write.exit ], [ -11, %bb.a ], [ -11, %bb.b ], [ -32, %bb.e ], [ -22, %bb.c ], [ -9, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @uv__try_write(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.msghdr, align 8             ; 11 uses
  %5 = alloca %union.uv__cmsg, align 8            ; 9 uses
  %i.a = tail call i32 @uv__getiovmax() #11
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.a) ; 3 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.c = icmp eq i32 %spec.select, 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  br i1 %i.c, label %uv__writev.exit.us, label %uv__writev.exit

uv__writev.exit.us:                               ; preds = %.preheader, %bb.b
  %i.e = load i32, ptr %i.b, align 8
  %i.f = load ptr, ptr %1, align 8
  %i.g = load i64, ptr %i.d, align 8
  %i.h = tail call i64 @write(i32 noundef %i.e, ptr noundef %i.f, i64 noundef %i.g) #11 ; 2 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %bb.b, label %.critedge2

bb.b:                                             ; preds = %uv__writev.exit.us
  %i.j = tail call ptr @__errno_location() #12
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = icmp eq i32 %i.k, 4
  br i1 %i.l, label %uv__writev.exit.us, label %.critedge2.thread, !llvm.loop !16

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 3
  %.not31 = icmp eq i32 %i.o, 0
  br i1 %.not31, label %bb.d, label %.critedge32

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i32, ptr %i.p, align 8
  switch i32 %i.q, label %uv__handle_fd.exit [
    i32 7, label %.sink.split.i
    i32 12, label %.sink.split.i
    i32 15, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d, %bb.d
  %.sink3.i = phi i64 [ 176, %bb.e ], [ 184, %bb.d ], [ 184, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 %.sink3.i
  %i.s = load i32, ptr %i.r, align 8
  br label %uv__handle_fd.exit

uv__handle_fd.exit:                               ; preds = %bb.d, %.sink.split.i
  %.0.i = phi i32 [ -1, %bb.d ], [ %i.s, %.sink.split.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.t, i8 0, i64 240, i1 false)
  store ptr null, ptr %4, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %1, ptr %i.v, align 8
  %i.w = sext i32 %spec.select to i64
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %5, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 24, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 1, ptr %i.ac, align 4
  store i64 20, ptr %5, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.0.i, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %uv__handle_fd.exit
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = call i64 @sendmsg(i32 noundef %i.af, ptr noundef nonnull %4, i32 noundef 0) #11 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ai = tail call ptr @__errno_location() #12
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.aj, 4
  br i1 %i.ak, label %bb.f, label %.critedge, !llvm.loop !17

.critedge:                                        ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.critedge2

uv__writev.exit:                                  ; preds = %.preheader, %bb.h
  %i.al = load i32, ptr %i.b, align 8
  %i.am = tail call i64 @writev(i32 noundef %i.al, ptr noundef %1, i32 noundef %spec.select) #11 ; 2 uses
  %i.an = icmp eq i64 %i.am, -1
  br i1 %i.an, label %bb.h, label %.critedge2

bb.h:                                             ; preds = %uv__writev.exit
  %i.ao = tail call ptr @__errno_location() #12
  %i.ap = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 4
  br i1 %i.aq, label %uv__writev.exit, label %.critedge2.thread, !llvm.loop !16

.critedge2:                                       ; preds = %uv__writev.exit, %uv__writev.exit.us, %.critedge
  %.1 = phi i64 [ %i.ag, %.critedge ], [ %i.h, %uv__writev.exit.us ], [ %i.am, %uv__writev.exit ] ; 2 uses
  %i.ar = icmp sgt i64 %.1, -1
  br i1 %i.ar, label %bb.i, label %.critedge2..critedge2.thread_crit_edge

.critedge2..critedge2.thread_crit_edge:           ; preds = %.critedge2
  %.pre = tail call ptr @__errno_location() #12
  %.pr = load i32, ptr %.pre, align 4
  br label %.critedge2.thread

bb.i:                                             ; preds = %.critedge2
  %i.as = trunc i64 %.1 to i32
  br label %bb.k

.critedge2.thread:                                ; preds = %bb.h, %bb.b, %.critedge2..critedge2.thread_crit_edge
  %i.at = phi i32 [ %i.k, %bb.b ], [ %.pr, %.critedge2..critedge2.thread_crit_edge ], [ %i.ap, %bb.h ] ; 2 uses
  switch i32 %i.at, label %bb.j [
    i32 11, label %bb.k
    i32 105, label %bb.k
  ]

bb.j:                                             ; preds = %.critedge2.thread
  %i.au = sub nsw i32 0, %i.at
  br label %bb.k

.critedge32:                                      ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.k

bb.k:                                             ; preds = %.critedge2.thread, %.critedge2.thread, %.critedge32, %bb.j, %bb.i
  %.124 = phi i32 [ %i.as, %bb.i ], [ -9, %.critedge32 ], [ %i.au, %bb.j ], [ -11, %.critedge2.thread ], [ -11, %.critedge2.thread ]
  ret i32 %.124
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @uv__read_start(ptr noundef initializes((104, 120)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, -6145
  %i.d = or disjoint i32 %i.c, 4096
  store i32 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = tail call i32 @uv__io_start(ptr noundef %i.h, ptr noundef nonnull %i.i, i32 noundef 1) #11 ; 0 uses
  %i.k = load i32, ptr %i.a, align 8              ; 3 uses
  %i.l = and i32 %i.k, 4
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = or disjoint i32 %i.k, 4
  store i32 %i.m, ptr %i.a, align 8
  %i.n = and i32 %i.k, 8
  %.not13 = icmp eq i32 %i.n, 0
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @uv_read_stop(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 4096
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, -4097
  store i32 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @uv__io_stop(ptr noundef %i.f, ptr noundef nonnull %i.g, i32 noundef 1) #11
  %i.h = load i32, ptr %i.a, align 8              ; 3 uses
  %i.i = and i32 %i.h, 4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %i.h, -5
  store i32 %i.k, ptr %i.a, align 8
  %i.l = and i32 %i.h, 8
  %.not11 = icmp eq i32 %i.l, 0
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr %i.n, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @uv_is_readable(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 14
  %.lobit = and i32 %i.c, 1
  ret i32 %.lobit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @uv_is_writable(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 15
  %.lobit = and i32 %i.c, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind uwtable
define hidden void @uv__stream_close(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  tail call void @uv__io_close(ptr noundef %i.b, ptr noundef nonnull %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  %i.f = and i32 %i.e, 4096
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %uv_read_stop.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %i.e, -4097
  store i32 %i.g, ptr %i.d, align 8
  %i.h = load ptr, ptr %i.a, align 8
  tail call void @uv__io_stop(ptr noundef %i.h, ptr noundef nonnull %i.c, i32 noundef 1) #11
  %i.i = load i32, ptr %i.d, align 8              ; 4 uses
  %i.j = and i32 %i.i, 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = and i32 %i.i, -5                         ; 2 uses
  store i32 %i.l, ptr %i.d, align 8
  %i.m = and i32 %i.i, 8
  %.not11.i = icmp eq i32 %i.m, 0
  br i1 %.not11.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr %i.o, align 8
  %.pre.pre = load i32, ptr %i.d, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.pre = phi i32 [ %.pre.pre, %bb.d ], [ %i.l, %bb.c ], [ %i.i, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  br label %uv_read_stop.exit

uv_read_stop.exit:                                ; preds = %bb.a, %bb.e
  %i.s = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.e ] ; 4 uses
  %i.t = and i32 %i.s, 4
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.f

bb.f:                                             ; preds = %uv_read_stop.exit
  %i.v = and i32 %i.s, -5                         ; 2 uses
  store i32 %i.v, ptr %i.d, align 8
  %i.w = and i32 %i.s, 8
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = add i32 %i.z, -1
  store i32 %i.aa, ptr %i.y, align 8
  %.pre32 = load i32, ptr %i.d, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %uv_read_stop.exit
  %i.ab = phi i32 [ %.pre32, %bb.g ], [ %i.v, %bb.f ], [ %i.s, %uv_read_stop.exit ]
  %i.ac = and i32 %i.ab, -49153
  store i32 %i.ac, ptr %i.d, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8            ; 3 uses
  %.not26 = icmp eq i32 %i.ae, -1
  br i1 %.not26, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = icmp sgt i32 %i.ae, 2
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call i32 @uv__close(i32 noundef %i.ae) #11 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 -1, ptr %i.ad, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %.not27 = icmp eq i32 %i.ai, -1
  br i1 %.not27, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i32 @uv__close(i32 noundef %i.ai) #11 ; 0 uses
  store i32 -1, ptr %i.ah, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 4 uses
  %.not28 = icmp eq ptr %i.al, null
  br i1 %.not28, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %.not30 = icmp eq i32 %i.an, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = tail call i32 @uv__close(i32 noundef %i.aq) #11 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = load i32, ptr %i.am, align 4
  %i.at = zext i32 %i.as to i64
  %i.au = icmp samesign ult i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %bb.o, label %._crit_edge.loopexit, !llvm.loop !18

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre33 = load ptr, ptr %i.ak, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.av = phi ptr [ %.pre33, %._crit_edge.loopexit ], [ %i.al, %.preheader ]
  tail call void @uv__free(ptr noundef %i.av) #11
  store ptr null, ptr %i.ak, align 8
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.n
  ret void
}

declare void @uv__io_close(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @uv_stream_set_blocking(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %1, 0
  %i.c = zext i1 %.not to i32
  %i.d = tail call i32 @uv__nonblock_ioctl(i32 noundef %i.b, i32 noundef %i.c) #11
  ret i32 %i.d
}

declare i32 @uv__nonblock_ioctl(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @shutdown(i32 noundef, i32 noundef) local_unnamed_addr #7

declare { ptr, i64 } @uv_buf_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

declare i64 @uv__recvmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare ptr @uv__realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @uv__getiovmax() local_unnamed_addr #2

declare i64 @sendmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #8

declare i64 @writev(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { cold nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{!0, !4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{null}
!8 = distinct !{null}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{null, null}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{null}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
end_hunk_0
