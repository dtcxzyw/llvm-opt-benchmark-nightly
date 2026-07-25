inline.NumInlined: 1
begin_hunk_0_@report_server_accept:bb.a
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = select i1 %i.x, i32 %.2, i32 0
  %i.z = call i64 @BIO_ctrl(ptr noundef %0, i32 noundef 11, i64 noundef 0, ptr noundef null) #9 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.013 = phi i32 [ %i.y, %bb.k ], [ 0, %bb.a ]
  ret i32 %.013
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #5

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @do_server(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 16 uses
  %i.b = alloca [64 x i8], align 16               ; 7 uses
  %11 = alloca %struct.timeval, align 8           ; 9 uses
  %12 = alloca %struct.fd_set, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !9
  %i.c = tail call i32 @BIO_sock_init() #9
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @BIO_lookup_ex(ptr noundef %1, ptr noundef %2, i32 noundef 1, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.a) #9
  %.not130 = icmp eq i32 %i.d, 0
  br i1 %.not130, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @bio_err, align 8, !tbaa !12
  call void @ERR_print_errors(ptr noundef %i.e) #9
  br label %bb.af

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.h = call i32 @BIO_ADDRINFO_family(ptr noundef %i.g) #9
  %i.i = icmp eq i32 %3, %i.h
  br i1 %i.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = icmp eq i32 %4, 0
  br i1 %i.j, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.l = call i32 @BIO_ADDRINFO_socktype(ptr noundef %i.k) #9
  %i.m = icmp eq i32 %4, %i.l
  br i1 %i.m, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = icmp eq i32 %5, 0
  br i1 %i.n, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.p = call i32 @BIO_ADDRINFO_protocol(ptr noundef %i.o) #9
  %i.q = icmp eq i32 %5, %i.p
  br i1 %i.q, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @OPENSSL_die(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 328) #10
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.i
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.s = call i32 @BIO_ADDRINFO_family(ptr noundef %i.r) #9 ; 6 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.u = call i32 @BIO_ADDRINFO_socktype(ptr noundef %i.t) #9 ; 4 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.w = call i32 @BIO_ADDRINFO_protocol(ptr noundef %i.v) #9 ; 3 uses
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.y = call ptr @BIO_ADDRINFO_address(ptr noundef %i.x) #9
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.aa = call ptr @BIO_ADDRINFO_next(ptr noundef %i.z) #9 ; 6 uses
  %i.ab = icmp ne i32 %10, 0
  %i.ac = icmp eq i32 %i.u, 1
  %or.cond = select i1 %i.ab, i1 %i.ac, i1 false
  %spec.select = select i1 %or.cond, i32 33, i32 1 ; 4 uses
  %i.ad = icmp eq i32 %i.s, 10                    ; 2 uses
  %i.ae = or disjoint i32 %spec.select, 2         ; 2 uses
  %.1103 = select i1 %i.ad, i32 %i.ae, i32 %spec.select ; 6 uses
  %.not131 = icmp eq ptr %i.aa, null
  br i1 %.not131, label %.thread144, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = call i32 @BIO_ADDRINFO_socktype(ptr noundef nonnull %i.aa) #9
  %i.ag = icmp eq i32 %i.af, %i.u
  br i1 %i.ag, label %bb.m, label %.thread144

bb.m:                                             ; preds = %bb.l
  %i.ah = call i32 @BIO_ADDRINFO_protocol(ptr noundef nonnull %i.aa) #9
  %i.ai = icmp eq i32 %i.ah, %i.w
  br i1 %i.ai, label %bb.n, label %.thread144

bb.n:                                             ; preds = %bb.m
  %i.aj = icmp eq i32 %i.s, 2
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ak = call i32 @BIO_ADDRINFO_family(ptr noundef nonnull %i.aa) #9
  %i.al = icmp eq i32 %i.ak, 10
  br i1 %i.al, label %bb.r, label %.thread144

bb.p:                                             ; preds = %bb.n
  br i1 %i.ad, label %bb.q, label %.thread144

bb.q:                                             ; preds = %bb.p
  %i.am = call i32 @BIO_ADDRINFO_family(ptr noundef nonnull %i.aa) #9
  %i.an = icmp eq i32 %i.am, 2
  %spec.select139 = select i1 %i.an, i32 %spec.select, i32 %i.ae
  br label %.thread144

bb.r:                                             ; preds = %bb.o
  %i.ao = call ptr @BIO_ADDRINFO_address(ptr noundef nonnull %i.aa) #9
  %i.ap = call i32 @BIO_socket(i32 noundef 10, i32 noundef %i.u, i32 noundef %i.w, i32 noundef 0) #9 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %.thread144, label %.thread

.thread144:                                       ; preds = %bb.r, %bb.o, %bb.l, %bb.m, %bb.p, %bb.q, %bb.k
  %.0116.ph.sink = phi i32 [ 2, %bb.o ], [ %i.s, %bb.k ], [ %i.s, %bb.l ], [ %i.s, %bb.m ], [ %i.s, %bb.p ], [ 10, %bb.q ], [ 2, %bb.r ]
  %.2104151 = phi i32 [ %.1103, %bb.o ], [ %.1103, %bb.k ], [ %.1103, %bb.l ], [ %.1103, %bb.m ], [ %spec.select, %bb.p ], [ %spec.select139, %bb.q ], [ %.1103, %bb.r ]
  %i.ar = call i32 @BIO_socket(i32 noundef %.0116.ph.sink, i32 noundef %i.u, i32 noundef %i.w, i32 noundef 0) #9 ; 2 uses
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %.critedge159, label %.thread

.thread:                                          ; preds = %bb.r, %.thread144
  %.1108193 = phi ptr [ %i.y, %.thread144 ], [ %i.ao, %bb.r ] ; 2 uses
  %.0112192 = phi i32 [ %i.ar, %.thread144 ], [ %i.ap, %bb.r ] ; 11 uses
  %.2104151191 = phi i32 [ %.2104151, %.thread144 ], [ %.1103, %bb.r ]
  %i.at = call i32 @BIO_listen(i32 noundef %.0112192, ptr noundef %.1108193, i32 noundef %.2104151191) #9
  %.not132 = icmp eq i32 %i.at, 0
  br i1 %.not132, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !9
  call void @BIO_ADDRINFO_free(ptr noundef %i.au) #9
  %i.av = load ptr, ptr @bio_err, align 8, !tbaa !12
  call void @ERR_print_errors(ptr noundef %i.av) #9
  %i.aw = call i32 @BIO_closesocket(i32 noundef %.0112192) #9 ; 0 uses
  br label %bb.ac

bb.t:                                             ; preds = %.thread
  %i.ax = call zeroext i16 @BIO_ADDR_rawport(ptr noundef %.1108193) #9
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !9
  call void @BIO_ADDRINFO_free(ptr noundef %i.ay) #9
  store ptr null, ptr %i.a, align 8, !tbaa !9
  %i.az = icmp eq i16 %i.ax, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = call i32 @report_server_accept(ptr noundef %9, i32 noundef %.0112192, i32 noundef %i.ba, i32 noundef 0)
  %.not133 = icmp eq i32 %i.bb, 0
  br i1 %.not133, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bc = call i32 @BIO_closesocket(i32 noundef %.0112192) #9 ; 0 uses
  %i.bd = load ptr, ptr @bio_err, align 8, !tbaa !12
  call void @ERR_print_errors(ptr noundef %i.bd) #9
  br label %bb.ac

bb.v:                                             ; preds = %bb.t
  %.not134 = icmp eq ptr %0, null
  br i1 %.not134, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %.0112192, ptr %0, align 4, !tbaa !5
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.be = icmp eq i32 %4, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  br i1 %i.be, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.x
  %i.bg = load ptr, ptr @ourpeer, align 8, !tbaa !16
  call void @BIO_ADDR_free(ptr noundef %i.bg) #9
  %i.bh = call ptr @BIO_ADDR_new() #9             ; 2 uses
  store ptr %i.bh, ptr @ourpeer, align 8, !tbaa !16
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.split163.us, label %.preheader.us

bb.y:                                             ; preds = %.preheader.us, %13
  %i.bj = load ptr, ptr @ourpeer, align 8, !tbaa !16
  %i.bk = call i32 @BIO_accept_ex(i32 noundef %.0112192, ptr noundef %i.bj, i32 noundef 0) #9 ; 10 uses
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %13, label %.critedge140.us

.critedge140.us:                                  ; preds = %bb.y
  %.not137.us = icmp eq i32 %.0109.us170, -1
  %i.bm = add nsw i32 %.0109.us170, -1
  %spec.select141.us = select i1 %.not137.us, i32 -1, i32 %i.bm ; 2 uses
  %i.bn = call i32 @BIO_set_tcp_ndelay(i32 noundef %i.bk, i32 noundef 1) #9 ; 0 uses
  %i.bo = call i32 %6(i32 noundef %i.bk, i32 noundef 1, i32 noundef %5, ptr noundef %7) #9 ; 2 uses
  %i.bp = call i32 @shutdown(i32 noundef %i.bk, i32 noundef 1) #9 ; 0 uses
  store i64 0, ptr %11, align 8, !tbaa !22
  store i64 500000, ptr %i.bf, align 8, !tbaa !25
  %i.bq = and i32 %i.bk, 63
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl nuw i64 1, %i.br
  %i.bt = lshr i32 %i.bk, 6
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.bu ; 2 uses
  %i.bw = add nuw nsw i32 %i.bk, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %.critedge140.us
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %12, i8 0, i64 128, i1 false), !tbaa !26
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !26
  %i.by = or i64 %i.bx, %i.bs
  store i64 %i.by, ptr %i.bv, align 8, !tbaa !26
  %i.bz = call i32 @select(i32 noundef %i.bw, ptr noundef nonnull %12, ptr noundef null, ptr noundef null, ptr noundef nonnull %11) #9
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %bb.aa, label %.critedge5.us

bb.aa:                                            ; preds = %bb.z
  %i.cb = call i64 @read(i32 noundef %i.bk, ptr noundef nonnull %i.b, i64 noundef 64) #9
  %i.cc = icmp sgt i64 %i.cb, 0
  br i1 %i.cc, label %bb.z, label %.critedge5.us, !llvm.loop !27

.critedge5.us:                                    ; preds = %bb.aa, %bb.z
  %i.cd = call i32 @BIO_closesocket(i32 noundef %i.bk) #9 ; 0 uses
  %i.ce = icmp slt i32 %i.bo, 0
  %i.cf = icmp eq i32 %spec.select141.us, 0
  %or.cond7.us = select i1 %i.ce, i1 true, i1 %i.cf
  br i1 %or.cond7.us, label %.split165.us, label %bb.ab

bb.ab:                                            ; preds = %.critedge5.us
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.cg = load ptr, ptr @ourpeer, align 8, !tbaa !16
  call void @BIO_ADDR_free(ptr noundef %i.cg) #9
  %i.ch = call ptr @BIO_ADDR_new() #9             ; 2 uses
  store ptr %i.ch, ptr @ourpeer, align 8, !tbaa !16
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %.split163.us, label %.preheader.us

13:                                               ; preds = %bb.y
  %14 = call i32 @BIO_sock_should_retry(i32 noundef %i.bk) #9
  %.not136.us = icmp eq i32 %14, 0
  br i1 %.not136.us, label %.critedge, label %bb.y, !llvm.loop !28

.preheader.us:                                    ; preds = %.split.us, %bb.ab
  %.0109.us170 = phi i32 [ %spec.select141.us, %bb.ab ], [ %8, %.split.us ] ; 2 uses
  br label %bb.y

.split:                                           ; preds = %bb.x
  %.not135166 = icmp eq i32 %8, -1
  %i.cj = add nsw i32 %8, -1
  %spec.select142167 = select i1 %.not135166, i32 -1, i32 %i.cj ; 2 uses
  %i.ck = call i32 %6(i32 noundef %.0112192, i32 noundef %4, i32 noundef %5, ptr noundef %7) #9 ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 0
  %i.cm = icmp eq i32 %spec.select142167, 0
  %or.cond7168 = select i1 %i.cl, i1 true, i1 %i.cm
  br i1 %or.cond7168, label %.split165.us, label %.lr.ph

.split163.us:                                     ; preds = %bb.ab, %.split.us
  %i.cn = call i32 @BIO_closesocket(i32 noundef %.0112192) #9 ; 0 uses
  %i.co = load ptr, ptr @bio_err, align 8, !tbaa !12
  call void @ERR_print_errors(ptr noundef %i.co) #9
  br label %.thread153

.critedge:                                        ; preds = %13
  %i.cp = load ptr, ptr @bio_err, align 8, !tbaa !12
  call void @ERR_print_errors(ptr noundef %i.cp) #9
  %i.cq = call i32 @BIO_closesocket(i32 noundef %.0112192) #9 ; 0 uses
  br label %.thread153

.split165.us:                                     ; preds = %.lr.ph, %.critedge5.us, %.split
  %.us-phi = phi i32 [ %i.bo, %.critedge5.us ], [ %i.ck, %.split ], [ %i.ct, %.lr.ph ]
  %i.cr = call i32 @BIO_closesocket(i32 noundef %.0112192) #9 ; 0 uses
  br label %.thread153

.thread153:                                       ; preds = %.split163.us, %.critedge, %.split165.us
  %.1.ph = phi i32 [ %.us-phi, %.split165.us ], [ 0, %.critedge ], [ 0, %.split163.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.ac

.lr.ph:                                           ; preds = %.split, %.lr.ph
  %spec.select142169 = phi i32 [ %spec.select142, %.lr.ph ], [ %spec.select142167, %.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %.not135 = icmp eq i32 %spec.select142169, -1
  %i.cs = add nsw i32 %spec.select142169, -1
  %spec.select142 = select i1 %.not135, i32 -1, i32 %i.cs ; 2 uses
  %i.ct = call i32 %6(i32 noundef %.0112192, i32 noundef %4, i32 noundef %5, ptr noundef %7) #9 ; 2 uses
  %i.cu = icmp slt i32 %i.ct, 0
  %i.cv = icmp eq i32 %spec.select142, 0
  %or.cond7 = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond7, label %.split165.us, label %.lr.ph

.critedge159:                                     ; preds = %.thread144
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !9
  call void @BIO_ADDRINFO_free(ptr noundef %i.cw) #9
  %i.cx = load ptr, ptr @bio_err, align 8, !tbaa !12
  call void @ERR_print_errors(ptr noundef %i.cx) #9
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge159, %.thread153, %bb.s, %bb.u
  %.2 = phi i32 [ 0, %bb.s ], [ 0, %.critedge159 ], [ 0, %bb.u ], [ %.1.ph, %.thread153 ]
  %i.cy = icmp eq i32 %3, 1
  br i1 %i.cy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cz = call i32 @unlink(ptr noundef %1) #9     ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.da = load ptr, ptr @ourpeer, align 8, !tbaa !16
  call void @BIO_ADDR_free(ptr noundef %i.da) #9
  store ptr null, ptr @ourpeer, align 8, !tbaa !16
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %.2, %bb.ae ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

declare i32 @BIO_listen(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i16 @BIO_ADDR_rawport(ptr noundef) local_unnamed_addr #2

declare i32 @BIO_accept_ex(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_sock_should_retry(i32 noundef) local_unnamed_addr #2

declare i32 @BIO_set_tcp_ndelay(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @shutdown(i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @select(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @do_ssl_shutdown(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @SSL_shutdown(ptr noundef %0) #9 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  %i.d = tail call i32 @SSL_get_error(ptr noundef %0, i32 noundef %i.c) #9
  switch i32 %i.d, label %.critedge [
    i32 2, label %bb.b
    i32 3, label %bb.b
    i32 9, label %bb.b
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.e = tail call i32 @SSL_shutdown(ptr noundef %0) #9 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.critedge, !llvm.loop !29

.critedge:                                        ; preds = %bb.b, %.lr.ph, %bb.a
  ret void
}

declare i32 @SSL_shutdown(ptr noundef) local_unnamed_addr #2

declare i32 @SSL_get_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS15bio_addrinfo_st", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS6bio_st", !11, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTS11bio_addr_st", !11, i64 0}
!18 = distinct !{!18, !15}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 omnipotent char", !11, i64 0}
!21 = !{!7, !7, i64 0}
!22 = !{!23, !24, i64 0}
!23 = !{!"timeval", !24, i64 0, !24, i64 8}
!24 = !{!"long", !7, i64 0}
!25 = !{!23, !24, i64 8}
!26 = !{!24, !24, i64 0}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
end_hunk_0
