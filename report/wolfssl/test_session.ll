Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/test_session?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0_@test_wolfSSL_SESSION:bb.a
  call fastcc void @tcp_connect(ptr noundef %i.a, i16 noundef zeroext %i.bf)
  %i.bg = load i32, ptr %i.a, align 4, !tbaa !23
  %i.bh = call i32 @wolfSSL_set_fd(ptr noundef nonnull %i.ai, i32 noundef %i.bg) #16 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef 1037) ; 0 uses
  %i.bk = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.bl = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.bk) ; 0 uses
  %i.bm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19) ; 0 uses
  %i.bn = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.bo = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bn) ; 0 uses
  %i.bp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.bh, i32 noundef 1) ; 0 uses
  %i.bq = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.br = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.bq) ; 0 uses
  %i.bs = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.bt = call i32 @fflush(ptr noundef %i.bs)     ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.thread509, %bb.g, %bb.h
  %.0458513 = phi ptr [ null, %.thread509 ], [ %i.ai, %bb.h ], [ %i.ai, %bb.g ] ; 12 uses
  %.7 = phi i1 [ false, %.thread509 ], [ false, %bb.h ], [ true, %bb.g ] ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.bu = call i32 @wolfSSL_connect(ptr noundef %.0458513) #16 ; 2 uses
  %.not487 = icmp eq i32 %i.bu, 1
  br i1 %.not487, label %.critedge497, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = call i32 @wolfSSL_get_error(ptr noundef %.0458513, i32 noundef 0) #16
  %i.bw = icmp eq i32 %i.bv, -108
  br i1 %i.bw, label %bb.j, label %.critedge497.thread, !llvm.loop !24

.critedge497.thread:                              ; preds = %bb.k
  br i1 %.7, label %bb.l, label %.critedge497

bb.l:                                             ; preds = %.critedge497.thread
  %i.bx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef 1041) ; 0 uses
  %i.by = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.bz = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.by) ; 0 uses
  %i.ca = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.19) ; 0 uses
  %i.cb = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.cc = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.cb) ; 0 uses
  %i.cd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.bu, i32 noundef 1) ; 0 uses
  %i.ce = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.cf = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.ce) ; 0 uses
  %i.cg = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ch = call i32 @fflush(ptr noundef %i.cg)     ; 0 uses
  br label %.critedge497

.critedge497:                                     ; preds = %bb.j, %.critedge497.thread, %bb.l
  %.9 = phi i1 [ false, %.critedge497.thread ], [ false, %bb.l ], [ %.7, %bb.j ]
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.critedge497
  %i.ci = call i32 @wolfSSL_write(ptr noundef %.0458513, ptr noundef nonnull @.str, i32 noundef 3) #16 ; 3 uses
  %i.cj = icmp slt i32 %i.ci, 1
  br i1 %i.cj, label %bb.n, label %.critedge499

bb.n:                                             ; preds = %bb.m
  %i.ck = call i32 @wolfSSL_get_error(ptr noundef %.0458513, i32 noundef 0) #16
  %i.cl = icmp eq i32 %i.ck, -108
  br i1 %i.cl, label %bb.m, label %.critedge499, !llvm.loop !26

.critedge499:                                     ; preds = %bb.m, %bb.n
  br i1 %.9, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.critedge499
  %i.cm = icmp eq i32 %i.ci, 3
  br i1 %i.cm, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef 1046) ; 0 uses
  %i.co = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.cp = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.co) ; 0 uses
  %i.cq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) ; 0 uses
  %i.cr = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.cs = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.cr) ; 0 uses
  %i.ct = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.ci, i32 noundef 3) ; 0 uses
  %i.cu = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.cv = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.cu) ; 0 uses
  %i.cw = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.cx = call i32 @fflush(ptr noundef %i.cw)     ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %.critedge499
  %.11 = phi i1 [ false, %.critedge499 ], [ false, %bb.p ], [ true, %bb.o ] ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.cy = call i32 @wolfSSL_read(ptr noundef %.0458513, ptr noundef nonnull %i.c, i32 noundef 80) #16 ; 2 uses
  %.not488 = icmp eq i32 %i.cy, 23
  br i1 %.not488, label %.critedge501, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cz = call i32 @wolfSSL_get_error(ptr noundef %.0458513, i32 noundef 0) #16
  %i.da = icmp eq i32 %i.cz, -108
  br i1 %i.da, label %bb.r, label %.critedge501.thread, !llvm.loop !27

.critedge501:                                     ; preds = %bb.r
  br i1 %.11, label %.critedge505, label %.thread520

.critedge501.thread:                              ; preds = %bb.s
  br i1 %.11, label %bb.t, label %.thread520

bb.t:                                             ; preds = %.critedge501.thread
  %i.db = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef 1050) ; 0 uses
  %i.dc = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.dd = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.dc) ; 0 uses
  %i.de = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27) ; 0 uses
  %i.df = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.dg = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.df) ; 0 uses
  %i.dh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.cy, i32 noundef 23) ; 0 uses
  br label %.thread520.sink.split

.critedge505:                                     ; preds = %.critedge501
  %i.di = call ptr @wolfSSL_get1_session(ptr noundef %.0458513) #16 ; 5 uses
  %.not489.not = icmp eq ptr %i.di, null
  br i1 %.not489.not, label %bb.u, label %.critedge503

bb.u:                                             ; preds = %.critedge505
  %i.dj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef 1052) ; 0 uses
  %i.dk = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.dl = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.dk) ; 0 uses
  %i.dm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) ; 0 uses
  %i.dn = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.do = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.dn) ; 0 uses
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, ptr noundef null, ptr noundef null) ; 0 uses
  br label %.thread520.sink.split

.critedge503:                                     ; preds = %.critedge505
  %i.dq = call ptr @wolfSSL_get1_session(ptr noundef %.0458513) #16 ; 3 uses
  %.not490.not = icmp eq ptr %i.dq, null
  br i1 %.not490.not, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.critedge503
  %i.dr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef 1053) ; 0 uses
  %i.ds = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.dt = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.ds) ; 0 uses
  %i.du = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30) ; 0 uses
  %i.dv = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.dw = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.dv) ; 0 uses
  %i.dx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, ptr noundef null, ptr noundef null) ; 0 uses
  br label %.thread520.sink.split

bb.w:                                             ; preds = %.critedge503
  %i.dy = call i32 @wolfSSL_SessionIsSetup(ptr noundef nonnull %i.di) #16 ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 1
  br i1 %i.dz, label %.thread520, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ea = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef 1054) ; 0 uses
  %i.eb = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ec = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.eb) ; 0 uses
  %i.ed = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) ; 0 uses
  %i.ee = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ef = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ee) ; 0 uses
  %i.eg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.dy, i32 noundef 1) ; 0 uses
  br label %.thread520.sink.split

.thread520.sink.split:                            ; preds = %bb.x, %bb.v, %bb.t, %bb.u
  %.0463525.ph = phi ptr [ null, %bb.u ], [ null, %bb.t ], [ null, %bb.v ], [ %i.dq, %bb.x ]
  %.0461518524.ph = phi ptr [ null, %bb.u ], [ null, %bb.t ], [ %i.di, %bb.v ], [ %i.di, %bb.x ]
  %i.eh = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ei = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.eh) ; 0 uses
  %i.ej = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ek = call i32 @fflush(ptr noundef %i.ej)     ; 0 uses
  br label %.thread520

.thread520:                                       ; preds = %.thread520.sink.split, %.critedge501.thread, %.critedge501, %bb.w
  %.0463525 = phi ptr [ %i.dq, %bb.w ], [ null, %.critedge501 ], [ null, %.critedge501.thread ], [ %.0463525.ph, %.thread520.sink.split ]
  %.0461518524 = phi ptr [ %i.di, %bb.w ], [ null, %.critedge501 ], [ null, %.critedge501.thread ], [ %.0461518524.ph, %.thread520.sink.split ]
  %.19 = phi i1 [ true, %bb.w ], [ false, %.critedge501 ], [ false, %.critedge501.thread ], [ false, %.thread520.sink.split ]
  call void @wolfSSL_SESSION_free(ptr noundef %.0463525) #16
  call void @wolfSSL_SESSION_free(ptr noundef %.0461518524) #16
  %i.el = call ptr @wolfSSL_get_session(ptr noundef %.0458513) #16
  br i1 %.19, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %.thread520
  %i.em = call ptr @wolfSSL_get1_session(ptr noundef %.0458513) #16 ; 2 uses
  %.not491 = icmp eq ptr %i.em, null
  br i1 %.not491, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.en = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef 1082) ; 0 uses
  %i.eo = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ep = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.eo) ; 0 uses
  %i.eq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.35) ; 0 uses
  %i.er = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.es = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.er) ; 0 uses
  %i.et = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36) ; 0 uses
  %i.eu = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ev = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.eu) ; 0 uses
  %i.ew = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ex = call i32 @fflush(ptr noundef %i.ew)     ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.thread520, %bb.z, %bb.y
  %2 = phi i1 [ false, %bb.z ], [ false, %.thread520 ], [ true, %bb.y ]
  %.1438 = phi ptr [ null, %bb.z ], [ %i.el, %.thread520 ], [ %i.em, %bb.y ] ; 2 uses
  %i.ey = call i32 @wolfSSL_shutdown(ptr noundef %.0458513) #16 ; 0 uses
  call void @wolfSSL_free(ptr noundef %.0458513) #16
  %i.ez = load i32, ptr %i.a, align 4, !tbaa !23
  %i.fa = call i32 @close(i32 noundef %i.ez) #16  ; 0 uses
  %i.fb = load i64, ptr %i.b, align 8, !tbaa !28
  call void @join_thread(i64 noundef %i.fb) #16
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fd = call i32 @wc_FreeMutex(ptr noundef nonnull %i.fc) #16 ; 3 uses
  %.not.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fe = tail call ptr @__errno_location() #17
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !23
  %i.ff = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.fg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ff, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef 731, i32 noundef %i.fd, ptr noundef nonnull @.str.52) #18 ; 0 uses
  call fastcc void @err_sys(ptr noundef nonnull @.str.41) #19
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fi = call i32 @wolfSSL_CondFree(ptr noundef nonnull %i.fh) #16 ; 3 uses
  %.not8.i = icmp eq i32 %i.fi, 0
  br i1 %.not8.i, label %FreeTcpReady.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fj = tail call ptr @__errno_location() #17
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !23
  %i.fk = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.fl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fk, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef 733, i32 noundef %i.fi, ptr noundef nonnull @.str.53) #18 ; 0 uses
  call fastcc void @err_sys(ptr noundef nonnull @.str.41) #19
  unreachable

FreeTcpReady.exit:                                ; preds = %bb.ac
  br i1 %2, label %bb.ae, label %.thread527

bb.ae:                                            ; preds = %FreeTcpReady.exit
  %i.fm = call ptr @wolfSSL_new(ptr noundef %i.e) #16 ; 4 uses
  %.not492 = icmp eq ptr %i.fm, null
  br i1 %.not492, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef 1141) ; 0 uses
  %i.fo = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.fp = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.fo) ; 0 uses
  %i.fq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.21) ; 0 uses
  %i.fr = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.fs = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.fr) ; 0 uses
  %i.ft = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22) ; 0 uses
  br label %.thread527.sink.split

bb.ag:                                            ; preds = %bb.ae
  %i.fu = call i32 @wolfSSL_set_session(ptr noundef nonnull %i.fm, ptr noundef %.1438) #16 ; 2 uses
  %i.fv = icmp eq i32 %i.fu, 1
  br i1 %i.fv, label %.thread527, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, i32 noundef 1142) ; 0 uses
  %i.fx = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.fy = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %i.fx) ; 0 uses
  %i.fz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.19) ; 0 uses
  %i.ga = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.gb = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ga) ; 0 uses
  %i.gc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.fu, i32 noundef 1) ; 0 uses
  br label %.thread527.sink.split

.thread527.sink.split:                            ; preds = %bb.ah, %bb.af
  %.1459529.ph = phi ptr [ null, %bb.af ], [ %i.fm, %bb.ah ]
  %i.gd = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ge = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.gd) ; 0 uses
  %i.gf = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.gg = call i32 @fflush(ptr noundef %i.gf)     ; 0 uses
  br label %.thread527

.thread527:                                       ; preds = %.thread527.sink.split, %FreeTcpReady.exit, %bb.ag
  %.1459529 = phi ptr [ %i.fm, %bb.ag ], [ null, %FreeTcpReady.exit ], [ %.1459529.ph, %.thread527.sink.split ]
  %.23 = phi i32 [ 1, %bb.ag ], [ 0, %FreeTcpReady.exit ], [ 0, %.thread527.sink.split ]
  call void @wolfSSL_free(ptr noundef %.1459529) #16
  call void @wolfSSL_SESSION_free(ptr noundef %.1438) #16
  call void @wolfSSL_CTX_free(ptr noundef %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.23
}

declare ptr @wolfSSL_CTX_new(ptr noundef) local_unnamed_addr #3

declare ptr @wolfTLSv1_2_client_method() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @wolfSSL_CTX_use_certificate_file(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @wolfSSL_CTX_use_PrivateKey_file(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @wolfSSL_CTX_load_verify_locations(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @InitTcpReady(ptr noundef nonnull initializes((0, 4), (8, 16)) %0) unnamed_addr #6 {
bb.a:
  store i16 0, ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.a, align 2, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = tail call i32 @wc_InitMutex(ptr noundef nonnull %i.c) #16 ; 3 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #17
  store i32 %i.d, ptr %i.e, align 4, !tbaa !23
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef 717, i32 noundef %i.d, ptr noundef nonnull @.str.40) #18 ; 0 uses
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.41) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = tail call i32 @wolfSSL_CondInit(ptr noundef nonnull %i.h) #16 ; 3 uses
  %.not11 = icmp eq i32 %i.i, 0
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__errno_location() #17
  store i32 %i.i, ptr %i.j, align 4, !tbaa !23
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef 719, i32 noundef %i.i, ptr noundef nonnull @.str.42) #18 ; 0 uses
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.41) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  ret void
}

declare void @start_thread(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @test_server_nofail(ptr noundef) #3

declare void @wait_tcp_ready(ptr noundef) local_unnamed_addr #3

declare ptr @wolfSSL_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc void @tcp_connect(ptr nofree noundef nonnull captures(none) %0, i16 noundef zeroext %1) unnamed_addr #7 {
.split:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.sockaddr_in, align 4        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.c = zext i16 %1 to i32
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.23, i32 noundef %i.c) #18 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.e = tail call ptr @__ctype_b_loc() #17
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 98
  %i.h = load i16, ptr %i.g, align 2, !tbaa !34
  %i.i = and i16 %i.h, 1024
  %.not.i = icmp eq i16 %i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.a

bb.a:                                             ; preds = %.split
  %i.j = tail call ptr @gethostbyname(ptr noundef nonnull @.str.23) #16 ; 3 uses
  %.not18.i = icmp eq ptr %i.j, null
  br i1 %.not18.i, label %bb.b, label %.critedge.i

.critedge.i:                                      ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !38
  %i.q = sext i32 %i.p to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.k, ptr align 1 %i.n, i64 %i.q, i1 false)
  store i16 2, ptr %2, align 4, !tbaa !39
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %1)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %rev.i.i, ptr %i.r, align 2, !tbaa !42
  br label %build_addr.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.48) #19
  unreachable

bb.c:                                             ; preds = %.split
  store i16 2, ptr %2, align 4, !tbaa !39
  %rev.i20.i = tail call noundef i16 @llvm.bswap.i16(i16 %1)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %rev.i20.i, ptr %i.s, align 2, !tbaa !42
  %i.t = tail call i32 @inet_addr(ptr noundef nonnull @.str.23) #16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.t, ptr %i.u, align 4, !tbaa !43
  br label %build_addr.exit

build_addr.exit:                                  ; preds = %.critedge.i, %bb.c
  %i.v = tail call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #16 ; 2 uses
  store i32 %i.v, ptr %0, align 4, !tbaa !23
  %i.w = icmp slt i32 %i.v, -1
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %build_addr.exit
  tail call fastcc void @err_sys_with_errno(ptr noundef nonnull @.str.49) #19
  unreachable

bb.e:                                             ; preds = %build_addr.exit
  %i.x = tail call ptr @signal(i32 noundef 13, ptr noundef nonnull inttoptr (i64 1 to ptr)) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 1, ptr %i.a, align 4, !tbaa !23
  %i.y = load i32, ptr %0, align 4, !tbaa !23
  %i.z = call i32 @setsockopt(i32 noundef %i.y, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 4) #16
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %tcp_socket.exit

bb.f:                                             ; preds = %bb.e
  call fastcc void @err_sys_with_errno(ptr noundef nonnull @.str.50) #19
  unreachable

tcp_socket.exit:                                  ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ab = load i32, ptr %0, align 4, !tbaa !23
  %i.ac = call i32 @connect(i32 noundef %i.ab, ptr noundef nonnull %2, i32 noundef 16) #16
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %tcp_socket.exit
  call void @perror(ptr noundef nonnull @.str.45) #20
  call fastcc void @err_sys_with_errno(ptr noundef nonnull @.str.46) #19
  unreachable

bb.h:                                             ; preds = %tcp_socket.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

declare i32 @wolfSSL_set_fd(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @wolfSSL_connect(ptr noundef) local_unnamed_addr #3

declare i32 @wolfSSL_get_error(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @wolfSSL_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @wolfSSL_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @wolfSSL_get1_session(ptr noundef) local_unnamed_addr #3

declare i32 @wolfSSL_SessionIsSetup(ptr noundef) local_unnamed_addr #3

declare void @wolfSSL_SESSION_free(ptr noundef) local_unnamed_addr #3

declare ptr @wolfSSL_get_session(ptr noundef) local_unnamed_addr #3

declare i32 @wolfSSL_shutdown(ptr noundef) local_unnamed_addr #3

declare void @wolfSSL_free(ptr noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #3

declare void @join_thread(i64 noundef) local_unnamed_addr #3

declare i32 @wolfSSL_set_session(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @wolfSSL_CTX_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_wolfSSL_SESSION_expire_downgrade() local_unnamed_addr #0 {
bb.a:
end_hunk_0
