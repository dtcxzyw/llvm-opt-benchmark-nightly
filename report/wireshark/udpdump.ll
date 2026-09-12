Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/udpdump?download=true
inline.NumInlined: 23
inline.NumDeleted: 12
begin_hunk_0_@list_config:bb.a
  store i32 2, ptr %i.a, align 4
  %i.c = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.44, i32 noundef 1) ; 0 uses
  call void @extcap_config_debug(ptr noundef nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @ws_init_sockets() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @please_report_bug() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @run_listener(ptr noundef %0, i16 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.sockaddr_in, align 4        ; 8 uses
  %4 = alloca %struct.timeval, align 8            ; 5 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 9 uses
  %5 = alloca %struct.sockaddr_in, align 8        ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  store i32 16, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.k = tail call i32 @g_strcmp0(ptr noundef %0, ptr noundef nonnull @.str.46)
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = call ptr @ws_cwstream_open_stdout(i32 noundef 0, ptr noundef nonnull %i.i) ; 2 uses
  %.not9.i = icmp eq ptr %i.l, null
  br i1 %.not9.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__errno_location() #12
  %i.n = load i32, ptr %i.m, align 4
  %i.o = call ptr @g_strerror(i32 noundef %i.n) #12
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.2, i64 noundef 160, ptr noundef nonnull @__func__.setup_dumpfile, ptr noundef nonnull @.str.47, ptr noundef %i.o)
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %i.p = call ptr @ws_cwstream_open(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %i.i) ; 5 uses
  %.not10.i = icmp eq ptr %i.p, null
  br i1 %.not10.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @__errno_location() #12
  %i.r = load i32, ptr %i.q, align 4
  %i.s = call ptr @g_strerror(i32 noundef %i.r) #12
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.2, i64 noundef 169, ptr noundef nonnull @__func__.setup_dumpfile, ptr noundef nonnull @.str.48, ptr noundef %i.s)
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.t = call zeroext i1 @libpcap_write_file_header(ptr noundef nonnull %i.p, i32 noundef 252, i32 noundef 65535, i1 noundef zeroext false, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i)
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = call zeroext i1 @ws_cwstream_flush(ptr noundef nonnull %i.p, ptr noundef nonnull %i.i) ; 0 uses
  br label %bb.i

.thread:                                          ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  br label %bb.x

bb.h:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.i, align 4
  %i.w = call ptr @g_strerror(i32 noundef %i.v) #12
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.2, i64 noundef 174, ptr noundef nonnull @__func__.setup_dumpfile, ptr noundef nonnull @.str.49, ptr noundef %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  %i.x = call zeroext i1 @ws_cwstream_close(ptr noundef nonnull %i.p, ptr noundef null) ; 0 uses
  br label %bb.x

bb.i:                                             ; preds = %bb.g, %bb.b
  %.0 = phi ptr [ %i.p, %bb.g ], [ %i.l, %bb.b ]  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) @__const.setup_listener.timeout, i64 16, i1 false)
  %i.y = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 0) #10 ; 7 uses
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call ptr @__errno_location() #12
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = call ptr @strerror(i32 noundef %i.ab) #10
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.2, i64 noundef 117, ptr noundef nonnull @__func__.setup_listener, ptr noundef nonnull @.str.50, ptr noundef %i.ac)
  br label %setup_listener.exit.thread

bb.k:                                             ; preds = %bb.i
  store i32 1, ptr %i.g, align 4
  %i.ad = call i32 @setsockopt(i32 noundef %i.y, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %i.g, i32 noundef 4) #10
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = tail call ptr @__errno_location() #12
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = call ptr @strerror(i32 noundef %i.ag) #10
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.2, i64 noundef 123, ptr noundef nonnull @__func__.setup_listener, ptr noundef nonnull @.str.51, ptr noundef %i.ah)
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.ai = call i32 @setsockopt(i32 noundef %i.y, i32 noundef 1, i32 noundef 20, ptr noundef nonnull %4, i32 noundef 16) #10
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ak = tail call ptr @__errno_location() #12
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = call ptr @strerror(i32 noundef %i.al) #10
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.2, i64 noundef 129, ptr noundef nonnull @__func__.setup_listener, ptr noundef nonnull @.str.52, ptr noundef %i.am)
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.an, align 4
  store i16 2, ptr %3, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.ao, align 4
  %rev.i.i = call noundef i16 @llvm.bswap.i16(i16 %1)
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %rev.i.i, ptr %i.ap, align 2
  %i.aq = call i32 @bind(i32 noundef %i.y, ptr noundef nonnull %3, i32 noundef 16) #10
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.as = tail call ptr @__errno_location() #12
  %i.at = load i32, ptr %i.as, align 4
  %i.au = call ptr @strerror(i32 noundef %i.at) #10
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.2, i64 noundef 140, ptr noundef nonnull @__func__.setup_listener, ptr noundef nonnull @.str.53, ptr noundef %i.au)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  %i.av = call i32 @close(i32 noundef %i.y)       ; 0 uses
  br label %setup_listener.exit.thread

setup_listener.exit.thread:                       ; preds = %bb.j, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  br label %bb.x

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  %i.aw = call noalias dereferenceable_or_null(65535) ptr @g_malloc(i64 noundef 65535) #11 ; 4 uses
  %i.ax = load i8, ptr @extcap_end_application, align 1, !range !28, !noundef !29
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.az = zext i16 %1 to i32
  %rev.i.i29.i = call i32 @llvm.bswap.i32(i32 range(i32 0, 65536) %i.az)
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.w
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(65535) %i.aw, i8 noundef 0, i64 noundef 65535, i1 noundef false) #10
  %i.ba = call i64 @recvfrom(i32 noundef %i.y, ptr noundef %i.aw, i64 noundef 65535, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %i.j) ; 4 uses
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bc = tail call ptr @__errno_location() #12   ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  switch i32 %i.bd, label %bb.u [
    i32 11, label %bb.w
    i32 4, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.be = call ptr @strerror(i32 noundef %i.bd) #10
  %i.bf = load i32, ptr %i.bc, align 4
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.2, i64 noundef 327, ptr noundef nonnull @__func__.run_listener, ptr noundef nonnull @.str.45, ptr noundef %i.be, i32 noundef %i.bf)
  store i8 1, ptr @extcap_end_application, align 1
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bg = load i64, ptr %5, align 8               ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.bg, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.bi = call i64 @g_get_real_time()             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store i64 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %i.bj = call i64 @strlen(ptr noundef readonly %2) #13
  %i.bk = add i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 4294967292
  %i.bm = add nuw i64 %i.ba, 40
  %i.bn = add nuw i64 %i.bm, %i.bl                ; 8 uses
  %i.bo = call noalias ptr @g_malloc0(i64 noundef %i.bn) #11 ; 15 uses
  %i.bp = call i64 @strlen(ptr noundef readonly %2) #13 ; 2 uses
  %i.bq = trunc i64 %i.bp to i16
  %i.br = add i16 %i.bq, 3                        ; 2 uses
  %i.bs = and i16 %i.br, -4                       ; 3 uses
  store i8 0, ptr %i.bo, align 1
  %i.bt = getelementptr i8, ptr %i.bo, i64 1
  store i8 12, ptr %i.bt, align 1
  %i.bu = getelementptr i8, ptr %i.bo, i64 2
  %i.bv = lshr i16 %i.br, 8
  %i.bw = trunc nuw i16 %i.bv to i8
  store i8 %i.bw, ptr %i.bu, align 1
  %i.bx = trunc i16 %i.bs to i8
  %i.by = getelementptr i8, ptr %i.bo, i64 3
  store i8 %i.bx, ptr %i.by, align 1
  %i.bz = getelementptr i8, ptr %i.bo, i64 4
  %i.ca = add i64 %i.bn, -4
  %i.cb = call ptr @__memcpy_chk(ptr noundef %i.bz, ptr noundef readonly %2, i64 noundef %i.bp, i64 noundef %i.ca) #10, !alias.scope !30 ; 0 uses
  %i.cc = zext i16 %i.bs to i32                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %.sroa.2.0.extract.trunc.i, ptr %i.d, align 4
  %i.cd = zext i16 %i.bs to i64
  %i.ce = getelementptr i8, ptr %i.bo, i64 %i.cd  ; 4 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 4
  store <4 x i8> <i8 0, i8 20, i8 0, i8 4>, ptr %i.cf, align 1
  %i.cg = add nuw nsw i32 %i.cc, 8
  %i.ch = zext nneg i32 %i.cg to i64              ; 2 uses
  %i.ci = getelementptr i8, ptr %i.bo, i64 %i.ch
  %i.cj = call i64 @llvm.usub.sat.i64(i64 %i.bn, i64 %i.ch)
  %i.ck = call ptr @__memcpy_chk(ptr noundef %i.ci, ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef %i.cj) #10, !alias.scope !31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 16777343, ptr %i.c, align 4
  %i.cl = getelementptr i8, ptr %i.ce, i64 12
  store <4 x i8> <i8 0, i8 21, i8 0, i8 4>, ptr %i.cl, align 1
  %i.cm = add nuw nsw i32 %i.cc, 16
  %i.cn = zext nneg i32 %i.cm to i64              ; 2 uses
  %i.co = getelementptr i8, ptr %i.bo, i64 %i.cn
  %i.cp = call i64 @llvm.usub.sat.i64(i64 %i.bn, i64 %i.cn)
  %i.cq = call ptr @__memcpy_chk(ptr noundef %i.co, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef %i.cp) #10, !alias.scope !32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %6 = call i32 @llvm.bswap.i32(i32 %i.bh)
  %rev.i.i.i = shl i32 %6, 16
  store i32 %rev.i.i.i, ptr %i.b, align 4
  %i.cr = getelementptr i8, ptr %i.ce, i64 20
  store <4 x i8> <i8 0, i8 25, i8 0, i8 4>, ptr %i.cr, align 1
  %i.cs = add nuw nsw i32 %i.cc, 24
  %i.ct = zext nneg i32 %i.cs to i64              ; 2 uses
  %i.cu = getelementptr i8, ptr %i.bo, i64 %i.ct
  %i.cv = call i64 @llvm.usub.sat.i64(i64 %i.bn, i64 %i.ct)
  %i.cw = call ptr @__memcpy_chk(ptr noundef %i.cu, ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef %i.cv) #10, !alias.scope !33 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 %rev.i.i29.i, ptr %i.a, align 4
  %i.cx = getelementptr i8, ptr %i.ce, i64 28
  store <4 x i8> <i8 0, i8 26, i8 0, i8 4>, ptr %i.cx, align 1
  %i.cy = add nuw nsw i32 %i.cc, 32
  %i.cz = zext nneg i32 %i.cy to i64              ; 2 uses
  %i.da = getelementptr i8, ptr %i.bo, i64 %i.cz
  %i.db = call i64 @llvm.usub.sat.i64(i64 %i.bn, i64 %i.cz)
  %i.dc = call ptr @__memcpy_chk(ptr noundef %i.da, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef %i.db) #10, !alias.scope !34 ; 0 uses
  %i.dd = add nuw nsw i32 %i.cc, 36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.de = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.df = getelementptr i8, ptr %i.bo, i64 %i.de
  %i.dg = call i64 @llvm.usub.sat.i64(i64 %i.bn, i64 %i.de)
  %i.dh = call ptr @__memset_chk(ptr noundef %i.df, i32 noundef 0, i64 noundef 4, i64 noundef %i.dg) #10 ; 0 uses
  %i.di = add nuw nsw i32 %i.cc, 40               ; 2 uses
  %i.dj = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dk = getelementptr i8, ptr %i.bo, i64 %i.dj
  %i.dl = call i64 @llvm.usub.sat.i64(i64 %i.bn, i64 %i.dj)
  %i.dm = call ptr @__memcpy_chk(ptr noundef %i.dk, ptr noundef readonly %i.aw, i64 noundef range(i64 0, -9223372036854775808) %i.ba, i64 noundef %i.dl) #10, !alias.scope !35 ; 0 uses
  %i.dn = trunc i64 %i.ba to i32
  %i.do = add i32 %i.di, %i.dn                    ; 2 uses
  %i.dp = sdiv i64 %i.bi, 1000000
  %i.dq = and i64 %i.dp, 4294967295
  %i.dr = srem i64 %i.bi, 1000000
  %i.ds = trunc nsw i64 %i.dr to i32
  %i.dt = call zeroext i1 @libpcap_write_packet(ptr noundef nonnull %.0, i64 noundef %i.dq, i32 noundef %i.ds, i32 noundef %i.do, i32 noundef %i.do, ptr noundef %i.bo, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f)
  br i1 %i.dt, label %.critedge, label %dump_packet.exit

dump_packet.exit:                                 ; preds = %bb.v
  %i.du = load i32, ptr %i.f, align 4
  %i.dv = call ptr @g_strerror(i32 noundef %i.du) #12
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.2, i64 noundef 274, ptr noundef nonnull @__func__.dump_packet, ptr noundef nonnull @.str.54, ptr noundef %i.dv)
  %i.dw = call zeroext i1 @ws_cwstream_flush(ptr noundef nonnull %.0, ptr noundef nonnull %i.f) ; 0 uses
  call void @g_free(ptr noundef %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  store i8 1, ptr @extcap_end_application, align 1
  br label %bb.w

.critedge:                                        ; preds = %bb.v
  %i.dx = call zeroext i1 @ws_cwstream_flush(ptr noundef nonnull %.0, ptr noundef nonnull %i.f) ; 0 uses
  call void @g_free(ptr noundef %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %bb.w

bb.w:                                             ; preds = %.critedge, %dump_packet.exit, %bb.u, %bb.t, %bb.t
  %i.dy = load i8, ptr @extcap_end_application, align 1, !range !28, !noundef !29
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %._crit_edge, label %bb.s, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.w, %bb.r
  %i.ea = call zeroext i1 @ws_cwstream_close(ptr noundef nonnull %.0, ptr noundef null) ; 0 uses
  %i.eb = call i32 @close(i32 noundef %i.y)       ; 0 uses
  call void @g_free(ptr noundef %i.aw)
  br label %bb.x

bb.x:                                             ; preds = %setup_listener.exit.thread, %.thread, %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @extcap_base_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @extcap_config_debug(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_cwstream_close(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i64 @recvfrom(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid
declare ptr @strerror(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @ws_cwstream_open_stdout(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare ptr @g_strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare ptr @ws_cwstream_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @libpcap_write_file_header(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_cwstream_flush(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind null_pointer_is_valid
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid
declare i32 @bind(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memset_chk(ptr noundef writeonly, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i64 @g_get_real_time() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @libpcap_write_packet(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { allocsize(0) }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !"memcpy.inline"}
!10 = distinct !{!10, !9, !"memcpy.inline: argument 1"}
!11 = distinct !{!11, !9, !"memcpy.inline: argument 0"}
!12 = distinct !{!12, !"memcpy.inline"}
!13 = distinct !{!13, !12, !"memcpy.inline: argument 1"}
!14 = distinct !{!14, !12, !"memcpy.inline: argument 0"}
!15 = distinct !{!15, !"memcpy.inline"}
!16 = distinct !{!16, !15, !"memcpy.inline: argument 1"}
!17 = distinct !{!17, !15, !"memcpy.inline: argument 0"}
!18 = distinct !{!18, !"memcpy.inline"}
!19 = distinct !{!19, !18, !"memcpy.inline: argument 1"}
!20 = distinct !{!20, !18, !"memcpy.inline: argument 0"}
!21 = distinct !{!21, !"memcpy.inline"}
end_hunk_0
