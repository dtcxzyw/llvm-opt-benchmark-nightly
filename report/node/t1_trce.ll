inline.NumInlined: 62
inline.NumDeleted: 6
begin_hunk_0_@ssl_print_client_keyex:bb.a
  %i.cf = add nuw nsw i64 %i.ce, 2                ; 2 uses
  %i.cg = icmp ult i64 %.086, %i.cf
  br i1 %i.cg, label %ssl_print_hexbuf.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %.085, i64 2
  %i.ci = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef range(i32 0, 15) 8, i32 noundef 80) #5 ; 0 uses
  %i.cj = trunc nuw nsw i64 %i.ce to i32
  %i.ck = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.499, i32 noundef %i.cj) #5 ; 0 uses
  %.not.i.i38 = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i38, label %ssl_print_hexbuf.exit44, label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %bb.v, %.lr.ph.i.i39
  %.011.i.i40 = phi i64 [ %i.cp, %.lr.ph.i.i39 ], [ 0, %bb.v ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.011.i.i40
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !78
  %i.cn = zext i8 %i.cm to i32
  %i.co = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.cn) #5 ; 0 uses
  %i.cp = add nuw nsw i64 %.011.i.i40, 1          ; 2 uses
  %exitcond.not.i.i41 = icmp eq i64 %i.cp, %i.ce
  br i1 %exitcond.not.i.i41, label %ssl_print_hexbuf.exit44, label %.lr.ph.i.i39, !llvm.loop !79

ssl_print_hexbuf.exit44:                          ; preds = %.lr.ph.i.i39, %bb.v
  %i.cq = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.12) #5 ; 0 uses
  %i.cr = sub i64 %.086, %i.cf
  br label %bb.ab

bb.w:                                             ; preds = %.split, %.split
  %i.cs = icmp eq i64 %.086, 0
  br i1 %i.cs, label %ssl_print_hexbuf.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = load i8, ptr %.085, align 1, !tbaa !78  ; 3 uses
  %i.cu = zext i8 %i.ct to i64                    ; 3 uses
  %.neg = xor i64 %i.cu, -1
  %.not101 = icmp ugt i64 %.086, %i.cu
  br i1 %.not101, label %bb.y, label %ssl_print_hexbuf.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.cv = getelementptr inbounds nuw i8, ptr %.085, i64 1
  %i.cw = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef range(i32 0, 15) 8, i32 noundef 80) #5 ; 0 uses
  %i.cx = zext i8 %i.ct to i32
  %i.cy = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.500, i32 noundef %i.cx) #5 ; 0 uses
  %.not.i.i46 = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i46, label %ssl_print_hexbuf.exit52, label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %bb.y, %.lr.ph.i.i47
  %.011.i.i48 = phi i64 [ %i.dd, %.lr.ph.i.i47 ], [ 0, %bb.y ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.011.i.i48
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !78
  %i.db = zext i8 %i.da to i32
  %i.dc = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.db) #5 ; 0 uses
  %i.dd = add nuw nsw i64 %.011.i.i48, 1          ; 2 uses
  %exitcond.not.i.i49 = icmp eq i64 %i.dd, %i.cu
  br i1 %exitcond.not.i.i49, label %ssl_print_hexbuf.exit52, label %.lr.ph.i.i47, !llvm.loop !79

ssl_print_hexbuf.exit52:                          ; preds = %.lr.ph.i.i47, %bb.y
  %i.de = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.12) #5 ; 0 uses
  %i.df = add i64 %.086, %.neg
  br label %bb.ab

bb.z:                                             ; preds = %.split
  %i.dg = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef 8, i32 noundef 80) #5 ; 0 uses
  %i.dh = trunc i64 %.086 to i32
  %i.di = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.501, i32 noundef %i.dh) #5 ; 0 uses
  %.not.i53 = icmp eq i64 %.086, 0
  br i1 %.not.i53, label %ssl_print_hex.exit57, label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %bb.z, %.lr.ph.i54
  %.011.i55 = phi i64 [ %i.dn, %.lr.ph.i54 ], [ 0, %bb.z ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.085, i64 %.011.i55
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !78
  %i.dl = zext i8 %i.dk to i32
  %i.dm = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.dl) #5 ; 0 uses
  %i.dn = add nuw i64 %.011.i55, 1                ; 2 uses
  %exitcond.not.i56 = icmp eq i64 %i.dn, %.086
  br i1 %exitcond.not.i56, label %ssl_print_hex.exit57, label %.lr.ph.i54, !llvm.loop !79

ssl_print_hex.exit57:                             ; preds = %.lr.ph.i54, %bb.z
  %i.do = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.12) #5 ; 0 uses
  br label %bb.ab

bb.aa:                                            ; preds = %.split
  %i.dp = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef 8, i32 noundef 80) #5 ; 0 uses
  %i.dq = trunc i64 %.086 to i32
  %i.dr = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.502, i32 noundef %i.dq) #5 ; 0 uses
  %.not.i58 = icmp eq i64 %.086, 0
  br i1 %.not.i58, label %ssl_print_hex.exit62, label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %bb.aa, %.lr.ph.i59
  %.011.i60 = phi i64 [ %i.dw, %.lr.ph.i59 ], [ 0, %bb.aa ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.085, i64 %.011.i60
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !78
  %i.du = zext i8 %i.dt to i32
  %i.dv = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.du) #5 ; 0 uses
  %i.dw = add nuw i64 %.011.i60, 1                ; 2 uses
  %exitcond.not.i61 = icmp eq i64 %i.dw, %.086
  br i1 %exitcond.not.i61, label %ssl_print_hex.exit62, label %.lr.ph.i59, !llvm.loop !79

ssl_print_hex.exit62:                             ; preds = %.lr.ph.i59, %bb.aa
  %i.dx = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.12) #5 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %ssl_print_hexbuf.exit52, %ssl_print_hexbuf.exit44, %ssl_print_hexbuf.exit36, %ssl_print_hex.exit, %bb.n, %ssl_print_hex.exit62, %ssl_print_hex.exit57, %.split
  %.187 = phi i64 [ %.086, %.split ], [ %.086, %ssl_print_hex.exit ], [ %i.bw, %ssl_print_hexbuf.exit36 ], [ %i.cr, %ssl_print_hexbuf.exit44 ], [ %i.df, %ssl_print_hexbuf.exit52 ], [ 0, %ssl_print_hex.exit57 ], [ 0, %ssl_print_hex.exit62 ], [ %.086, %bb.n ]
  %.not26 = icmp eq i64 %.187, 0
  %i.dy = zext i1 %.not26 to i32
  br label %ssl_print_hexbuf.exit.thread

ssl_print_hexbuf.exit.thread:                     ; preds = %bb.x, %bb.w, %bb.u, %bb.t, %bb.r, %.critedge, %bb.l, %bb.k, %bb.ab
  %.0 = phi i32 [ %i.dy, %bb.ab ], [ 0, %bb.u ], [ 0, %bb.l ], [ 0, %bb.r ], [ 0, %bb.k ], [ 0, %.critedge ], [ 0, %bb.t ], [ 0, %bb.w ], [ 0, %bb.x ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ssl_print_certificates(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load i32, ptr %i.i, align 8, !tbaa !76
  %i.k = and i32 %i.j, 8
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.f, align 8, !tbaa !93   ; 2 uses
  %i.m = icmp slt i32 %i.l, 772
  %.not36 = icmp eq i32 %i.l, 65536
  %or.cond = or i1 %i.m, %.not36
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %4, 0
  br i1 %i.n, label %ssl_print_hexbuf.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %3, align 1, !tbaa !78      ; 3 uses
  %i.p = zext i8 %i.o to i64                      ; 3 uses
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %.not64 = icmp ugt i64 %4, %i.p
  br i1 %.not64, label %bb.e, label %ssl_print_hexbuf.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.s = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef range(i32 0, 15) 6, i32 noundef 80) #5 ; 0 uses
  %i.t = zext i8 %i.o to i32
  %i.u = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.503, i32 noundef %i.t) #5 ; 0 uses
  %.not.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i, label %ssl_print_hexbuf.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.011.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.011.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !78
  %i.x = zext i8 %i.w to i32
  %i.y = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.x) #5 ; 0 uses
  %i.z = add nuw nsw i64 %.011.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.z, %i.p
  br i1 %exitcond.not.i.i, label %ssl_print_hexbuf.exit, label %.lr.ph.i.i, !llvm.loop !79

ssl_print_hexbuf.exit:                            ; preds = %.lr.ph.i.i, %bb.e
  %i.aa = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.12) #5 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 %i.q
  %i.ac = sub i64 %4, %i.q                        ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 3
  br i1 %i.ad, label %ssl_print_hexbuf.exit.thread, label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.a
  %.old51 = icmp ult i64 %4, 3
  br i1 %.old51, label %ssl_print_hexbuf.exit.thread, label %bb.g

bb.g:                                             ; preds = %ssl_print_hexbuf.exit, %bb.f
  %i.ae = phi ptr [ %3, %bb.f ], [ %i.ab, %ssl_print_hexbuf.exit ] ; 4 uses
  %.057 = phi i64 [ %4, %bb.f ], [ %i.ac, %ssl_print_hexbuf.exit ]
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !78
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !78
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 8
  %i.am = or disjoint i64 %i.al, %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !78
  %i.ap = zext i8 %i.ao to i64
  %i.aq = or disjoint i64 %i.am, %i.ap            ; 5 uses
  store i64 %i.aq, ptr %i.d, align 8, !tbaa !85
  %i.ar = add nuw nsw i64 %i.aq, 3
  %.not38 = icmp eq i64 %.057, %i.ar
  br i1 %.not38, label %bb.h, label %ssl_print_hexbuf.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  store ptr %i.as, ptr %i.c, align 8, !tbaa !84
  %.not39 = icmp eq i32 %2, 0
  br i1 %.not39, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 2898
  %i.au = load i8, ptr %i.at, align 2, !tbaa !94
  %i.av = icmp eq i8 %i.au, 2
  br i1 %i.av, label %.split, label %bb.n

.critedge:                                        ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 2896
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !95
  %i.ay = icmp eq i8 %i.ax, 2
  br i1 %i.ay, label %.split, label %bb.n

.split:                                           ; preds = %.critedge, %bb.i
  %i.az = call fastcc i32 @ssl_print_raw_public_key(ptr noundef %0, ptr noundef %1, ptr noundef %i.c, ptr noundef %i.d)
  %.not45 = icmp eq i32 %i.az, 0
  br i1 %.not45, label %ssl_print_hexbuf.exit.thread, label %bb.j

bb.j:                                             ; preds = %.split
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !18  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 216
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !73
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !76
  %i.bf = and i32 %i.be, 8
  %.not46 = icmp eq i32 %i.bf, 0
  br i1 %.not46, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bg = load i32, ptr %i.ba, align 8, !tbaa !93 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, 772
  %.not47 = icmp eq i32 %i.bg, 65536
  %or.cond49 = or i1 %i.bh, %.not47
  br i1 %or.cond49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = call fastcc i32 @ssl_print_extensions(ptr noundef %0, i32 noundef 8, i32 noundef %2, i8 noundef zeroext 11, ptr noundef %i.c, ptr noundef %i.d)
  %.not48 = icmp eq i32 %i.bi, 0
  br i1 %.not48, label %ssl_print_hexbuf.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  br label %ssl_print_hexbuf.exit.thread

bb.n:                                             ; preds = %bb.i, %.critedge
  %i.bj = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef 6, i32 noundef 80) #5 ; 0 uses
  %i.bk = trunc nuw nsw i64 %i.aq to i32
  %i.bl = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.504, i32 noundef %i.bk) #5 ; 0 uses
  %.not4065 = icmp eq i64 %i.aq, 0
  br i1 %.not4065, label %ssl_print_hexbuf.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.bm = getelementptr i8, ptr %1, i64 8
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.aa
  %i.bn = phi i64 [ %i.aq, %.lr.ph ], [ %i.dl, %bb.aa ] ; 3 uses
  %.val = load ptr, ptr %i.bm, align 8, !tbaa !96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %5 = load ptr, ptr %i.c, align 8, !tbaa !84     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.bo = icmp ult i64 %i.bn, 3
  br i1 %i.bo, label %ssl_print_certificate.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = load i8, ptr %5, align 1, !tbaa !78
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 16
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !78
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 8
  %i.bw = or disjoint i32 %i.bv, %i.br
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !78
  %i.bz = zext i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bw, %i.bz            ; 2 uses
  %i.cb = zext nneg i32 %i.ca to i64              ; 3 uses
  %i.cc = add nuw nsw i64 %i.cb, 3                ; 3 uses
  %i.cd = icmp ult i64 %i.bn, %i.cc
  br i1 %i.cd, label %ssl_print_certificate.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 2 uses
  store ptr %i.ce, ptr %i.b, align 8, !tbaa !84
  %i.cf = call i32 @BIO_indent(ptr noundef %0, i32 noundef 8, i32 noundef 80) #5 ; 0 uses
  %i.cg = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.506, i32 noundef %i.ca) #5 ; 0 uses
  %i.ch = load ptr, ptr %.val, align 8, !tbaa !97
  %i.ci = getelementptr inbounds nuw i8, ptr %.val, i64 1136
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !112
  %i.ck = call ptr @X509_new_ex(ptr noundef %i.ch, ptr noundef %i.cj) #5 ; 2 uses
  store ptr %i.ck, ptr %i.a, align 8, !tbaa !113
  %.not.i = icmp eq ptr %i.ck, null
  br i1 %.not.i, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = call ptr @d2i_X509(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %i.cb) #5
  %i.cm = icmp eq ptr %i.cl, null
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  br i1 %i.cm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @X509_free(ptr noundef %i.cn) #5
  store ptr null, ptr %i.a, align 8, !tbaa !113
  br label %.thread.i

bb.t:                                             ; preds = %bb.r
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %.thread.i, label %bb.u

.thread.i:                                        ; preds = %bb.t, %bb.s, %bb.q
  %i.cp = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.507) #5 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cq = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.508) #5 ; 0 uses
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.cs = call i32 @X509_print_ex(ptr noundef %0, ptr noundef %i.cr, i64 noundef 8520479, i64 noundef 0) #5 ; 0 uses
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.cu = call i32 @PEM_write_bio_X509(ptr noundef %0, ptr noundef %i.ct) #5 ; 0 uses
  %i.cv = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.509) #5 ; 0 uses
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !113
  call void @X509_free(ptr noundef %i.cw) #5
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread.i
  %i.cx = load ptr, ptr %i.b, align 8, !tbaa !84
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cb
  %.not31.i = icmp eq ptr %i.cx, %i.cy
  br i1 %.not31.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cz = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.510) #5 ; 0 uses
  br label %bb.x

ssl_print_certificate.exit.thread:                ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %ssl_print_hexbuf.exit.thread

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 %i.cc
  store ptr %i.da, ptr %i.c, align 8, !tbaa !84
  %i.db = sub i64 %i.bn, %i.cc                    ; 3 uses
  store i64 %i.db, ptr %i.d, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.dc = load ptr, ptr %i.e, align 8, !tbaa !18  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 216
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !73
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !76
  %i.dh = and i32 %i.dg, 8
  %.not42 = icmp eq i32 %i.dh, 0
  br i1 %.not42, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.di = load i32, ptr %i.dc, align 8, !tbaa !93 ; 2 uses
  %i.dj = icmp slt i32 %i.di, 772
  %.not43 = icmp eq i32 %i.di, 65536
  %or.cond50 = or i1 %i.dj, %.not43
  br i1 %or.cond50, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = call fastcc i32 @ssl_print_extensions(ptr noundef %0, i32 noundef 8, i32 noundef %2, i8 noundef zeroext 11, ptr noundef %i.c, ptr noundef %i.d)
  %.not44 = icmp eq i32 %i.dk, 0
  br i1 %.not44, label %ssl_print_hexbuf.exit.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.z
  %.pre.a = load i64, ptr %i.d, align 8, !tbaa !85
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %bb.y, %bb.x
  %i.dl = phi i64 [ %.pre.a, %._crit_edge ], [ %i.db, %bb.y ], [ %i.db, %bb.x ] ; 2 uses
  %.not40 = icmp eq i64 %i.dl, 0
  br i1 %.not40, label %ssl_print_hexbuf.exit.thread, label %bb.o, !llvm.loop !114

ssl_print_hexbuf.exit.thread:                     ; preds = %bb.z, %bb.aa, %bb.n, %bb.d, %bb.c, %ssl_print_certificate.exit.thread, %bb.l, %.split, %bb.g, %bb.f, %ssl_print_hexbuf.exit, %bb.m
  %.0 = phi i32 [ 0, %ssl_print_hexbuf.exit ], [ 0, %bb.f ], [ 1, %bb.m ], [ 0, %.split ], [ 0, %bb.g ], [ 0, %ssl_print_certificate.exit.thread ], [ 0, %bb.l ], [ 0, %bb.c ], [ 0, %bb.d ], [ 1, %bb.n ], [ 0, %bb.z ], [ 1, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ssl_print_compressed_certificates(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, 8
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 1, !tbaa !78
  %i.d = zext i8 %i.c to i32
  %i.e = shl nuw nsw i32 %i.d, 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.g = load i8, ptr %i.f, align 1, !tbaa !78
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 8
  %i.j = or disjoint i32 %i.i, %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i8, ptr %i.k, align 1, !tbaa !78
  %i.m = zext i8 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !78
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.t = load i8, ptr %i.s, align 1, !tbaa !78
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 8
  %i.w = or disjoint i32 %i.v, %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.y = load i8, ptr %i.x, align 1, !tbaa !78
  %i.z = zext i8 %i.y to i32
  %i.aa = or disjoint i32 %i.w, %i.z              ; 5 uses
  %narrow = add nuw nsw i32 %i.aa, 8
  %i.ab = zext nneg i32 %narrow to i64
  %.not = icmp eq i64 %2, %i.ab
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ac = load i8, ptr %1, align 1, !tbaa !78
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !78
  %i.ah = zext i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.ae, %i.ah            ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef 6, i32 noundef 80) #5 ; 0 uses
  %i.al = icmp samesign ult i32 %i.ai, 4
  br i1 %i.al, label %switch.lookup, label %do_ssl_trace_str.exit

switch.lookup:                                    ; preds = %bb.c
  %trunc = zext nneg i32 %i.ai to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ssl_print_extensions, i64 %trunc
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %switch.load, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !81
  br label %do_ssl_trace_str.exit

do_ssl_trace_str.exit:                            ; preds = %bb.c, %switch.lookup
  %.07.i = phi ptr [ %i.an, %switch.lookup ], [ @.str.15, %bb.c ]
  %i.ao = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.511, ptr noundef %.07.i, i32 noundef %i.ai) #5 ; 0 uses
  %i.ap = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef 6, i32 noundef 80) #5 ; 0 uses
  %i.aq = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.512, i32 noundef %i.n) #5 ; 0 uses
  %i.ar = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef 6, i32 noundef 80) #5 ; 0 uses
  %.not37 = icmp eq i32 %i.aa, 0
  br i1 %.not37, label %bb.e, label %bb.d

bb.d:                                             ; preds = %do_ssl_trace_str.exit
  %i.as = uitofp nneg i32 %i.n to float
  %i.at = uitofp nneg i32 %i.aa to float
  %i.au = fdiv float %i.as, %i.at
  %i.av = fpext float %i.au to double
  %i.aw = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.513, i32 noundef %i.aa, double noundef %i.av) #5 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %do_ssl_trace_str.exit
  %i.ax = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.514, i32 noundef 0) #5 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ay = tail call i32 @BIO_dump_indent(ptr noundef %0, ptr noundef nonnull %i.aj, i32 noundef %i.aa, i32 noundef 6) #5 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %bb.f
  %.0 = phi i32 [ 1, %bb.f ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ssl_print_signature(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !85     ; 2 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %ssl_print_hexbuf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !76
  %i.i = and i32 %i.h, 2
  %.not = icmp eq i32 %i.i, 0
  %.pre = load ptr, ptr %2, align 8, !tbaa !84    ; 3 uses
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %.pre, align 1, !tbaa !78
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 8
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !78
  %i.o = zext i8 %i.n to i32
  %i.p = or disjoint i32 %i.l, %i.o               ; 2 uses
  %i.q = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef 6, i32 noundef 80) #5 ; 0 uses
  %trunc = trunc nuw i32 %i.p to i16
  switch i16 %trunc, label %bb.e [
    i16 1027, label %bb.d
    i16 1283, label %.fold.split
    i16 1539, label %.fold.split23
    i16 771, label %.fold.split24
    i16 2055, label %.fold.split25
    i16 2056, label %.fold.split26
    i16 515, label %.fold.split27
    i16 2052, label %.fold.split28
    i16 2053, label %.fold.split29
    i16 2054, label %.fold.split30
    i16 2057, label %.fold.split31
    i16 2058, label %.fold.split32
    i16 2059, label %.fold.split33
    i16 1025, label %.fold.split34
    i16 1281, label %.fold.split35
    i16 1537, label %.fold.split36
    i16 769, label %.fold.split37
    i16 513, label %.fold.split38
    i16 1026, label %.fold.split39
    i16 1282, label %.fold.split40
    i16 1538, label %.fold.split41
    i16 770, label %.fold.split42
    i16 514, label %.fold.split43
    i16 2112, label %.fold.split44
    i16 2113, label %.fold.split45
    i16 -4370, label %.fold.split46
    i16 -4113, label %.fold.split47
    i16 -4627, label %.fold.split48
    i16 2074, label %.fold.split49
    i16 2075, label %.fold.split50
    i16 2076, label %.fold.split51
    i16 2308, label %.fold.split52
    i16 2309, label %.fold.split53
    i16 2310, label %.fold.split54
  ]

.fold.split:                                      ; preds = %bb.c
  br label %bb.d

.fold.split23:                                    ; preds = %bb.c
  br label %bb.d

.fold.split24:                                    ; preds = %bb.c
  br label %bb.d

.fold.split25:                                    ; preds = %bb.c
  br label %bb.d

.fold.split26:                                    ; preds = %bb.c
  br label %bb.d

.fold.split27:                                    ; preds = %bb.c
  br label %bb.d

.fold.split28:                                    ; preds = %bb.c
  br label %bb.d

.fold.split29:                                    ; preds = %bb.c
  br label %bb.d

.fold.split30:                                    ; preds = %bb.c
  br label %bb.d

.fold.split31:                                    ; preds = %bb.c
  br label %bb.d

.fold.split32:                                    ; preds = %bb.c
  br label %bb.d

.fold.split33:                                    ; preds = %bb.c
  br label %bb.d

end_hunk_0
