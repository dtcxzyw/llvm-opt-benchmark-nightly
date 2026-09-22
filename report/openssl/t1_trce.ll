Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/t1_trce?download=true
inline.NumInlined: 61
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 25
begin_hunk_0_@ssl_print_certificates:bb.a

bb.k:                                             ; preds = %bb.j
  %i.bg = load i32, ptr %i.ba, align 8, !tbaa !94 ; 2 uses
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
  %i.bl = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.506, i32 noundef %i.bk) #5 ; 0 uses
  %.not4065 = icmp eq i64 %i.aq, 0
  br i1 %.not4065, label %ssl_print_hexbuf.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.bm = getelementptr i8, ptr %1, i64 8
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.aa
  %i.bn = phi ptr [ %i.as, %.lr.ph ], [ %i.dn, %bb.aa ] ; 5 uses
  %i.bo = phi i64 [ %i.aq, %.lr.ph ], [ %i.dm, %bb.aa ] ; 3 uses
  %.val = load ptr, ptr %i.bm, align 8, !tbaa !95 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.bp = icmp ult i64 %i.bo, 3
  br i1 %i.bp, label %ssl_print_certificate.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = load i8, ptr %i.bn, align 1, !tbaa !84
  %i.br = zext i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !84
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 8
  %i.bx = or disjoint i32 %i.bw, %i.bs
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !84
  %i.ca = zext i8 %i.bz to i32
  %i.cb = or disjoint i32 %i.bx, %i.ca            ; 2 uses
  %i.cc = zext nneg i32 %i.cb to i64              ; 3 uses
  %i.cd = add nuw nsw i64 %i.cc, 3                ; 3 uses
  %i.ce = icmp ult i64 %i.bo, %i.cd
  br i1 %i.ce, label %ssl_print_certificate.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bn, i64 3 ; 2 uses
  store ptr %i.cf, ptr %i.b, align 8, !tbaa !88
  %i.cg = call i32 @BIO_indent(ptr noundef %0, i32 noundef 8, i32 noundef 80) #5 ; 0 uses
  %i.ch = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.508, i32 noundef %i.cb) #5 ; 0 uses
  %i.ci = load ptr, ptr %.val, align 8, !tbaa !110
  %i.cj = getelementptr inbounds nuw i8, ptr %.val, i64 1160
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !111
  %i.cl = call ptr @X509_new_ex(ptr noundef %i.ci, ptr noundef %i.ck) #5 ; 2 uses
  store ptr %i.cl, ptr %i.a, align 8, !tbaa !119
  %.not.i = icmp eq ptr %i.cl, null
  br i1 %.not.i, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = call ptr @d2i_X509(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %i.cc) #5
  %i.cn = icmp eq ptr %i.cm, null
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !119 ; 2 uses
  br i1 %i.cn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @X509_free(ptr noundef %i.co) #5
  store ptr null, ptr %i.a, align 8, !tbaa !119
  br label %.thread.i

bb.t:                                             ; preds = %bb.r
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %.thread.i, label %bb.u

.thread.i:                                        ; preds = %bb.t, %bb.s, %bb.q
  %i.cq = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.509) #5 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cr = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.510) #5 ; 0 uses
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.ct = call i32 @X509_print_ex(ptr noundef %0, ptr noundef %i.cs, i64 noundef 8520479, i64 noundef 0) #5 ; 0 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.cv = call i32 @PEM_write_bio_X509(ptr noundef %0, ptr noundef %i.cu) #5 ; 0 uses
  %i.cw = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.511) #5 ; 0 uses
  %i.cx = load ptr, ptr %i.a, align 8, !tbaa !119
  call void @X509_free(ptr noundef %i.cx) #5
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread.i
  %i.cy = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cc
  %.not31.i = icmp eq ptr %i.cy, %i.cz
  br i1 %.not31.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.512) #5 ; 0 uses
  br label %bb.x

ssl_print_certificate.exit.thread:                ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %ssl_print_hexbuf.exit.thread

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cd ; 3 uses
  store ptr %i.db, ptr %i.c, align 8, !tbaa !88
  %i.dc = sub nuw i64 %i.bo, %i.cd                ; 3 uses
  store i64 %i.dc, ptr %i.d, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !78  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 216
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !81
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 80
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !83
  %i.di = and i32 %i.dh, 8
  %.not42 = icmp eq i32 %i.di, 0
  br i1 %.not42, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dj = load i32, ptr %i.dd, align 8, !tbaa !94 ; 2 uses
  %i.dk = icmp slt i32 %i.dj, 772
  %.not43 = icmp eq i32 %i.dj, 65536
  %or.cond50 = or i1 %i.dk, %.not43
  br i1 %or.cond50, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = call fastcc i32 @ssl_print_extensions(ptr noundef %0, i32 noundef 8, i32 noundef %2, i8 noundef zeroext 11, ptr noundef %i.c, ptr noundef %i.d)
  %.not44 = icmp eq i32 %i.dl, 0
  br i1 %.not44, label %ssl_print_hexbuf.exit.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.z
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !88
  %.pre69 = load i64, ptr %i.d, align 8, !tbaa !89
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %bb.y, %bb.x
  %i.dm = phi i64 [ %.pre69, %._crit_edge ], [ %i.dc, %bb.y ], [ %i.dc, %bb.x ] ; 2 uses
  %i.dn = phi ptr [ %.pre, %._crit_edge ], [ %i.db, %bb.y ], [ %i.db, %bb.x ]
  %.not40 = icmp eq i64 %i.dm, 0
  br i1 %.not40, label %ssl_print_hexbuf.exit.thread, label %bb.o, !llvm.loop !116

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
  %i.c = load i8, ptr %i.b, align 1, !tbaa !84
  %i.d = zext i8 %i.c to i32
  %i.e = shl nuw nsw i32 %i.d, 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.g = load i8, ptr %i.f, align 1, !tbaa !84
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 8
  %i.j = or disjoint i32 %i.i, %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i8, ptr %i.k, align 1, !tbaa !84
  %i.m = zext i8 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !84
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.t = load i8, ptr %i.s, align 1, !tbaa !84
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 8
  %i.w = or disjoint i32 %i.v, %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.y = load i8, ptr %i.x, align 1, !tbaa !84
  %i.z = zext i8 %i.y to i32
  %i.aa = or disjoint i32 %i.w, %i.z              ; 5 uses
  %narrow = add nuw nsw i32 %i.aa, 8
  %i.ab = zext nneg i32 %narrow to i64
  %.not = icmp eq i64 %2, %i.ab
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ac = load i8, ptr %1, align 1, !tbaa !84
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !84
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
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !87
  br label %do_ssl_trace_str.exit

do_ssl_trace_str.exit:                            ; preds = %bb.c, %switch.lookup
  %.07.i = phi ptr [ %i.an, %switch.lookup ], [ @.str.15, %bb.c ]
  %i.ao = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.513, ptr noundef %.07.i, i32 noundef %i.ai) #5 ; 0 uses
  %i.ap = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef 6, i32 noundef 80) #5 ; 0 uses
  %i.aq = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.514, i32 noundef %i.n) #5 ; 0 uses
  %i.ar = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef 6, i32 noundef 80) #5 ; 0 uses
  %.not37 = icmp eq i32 %i.aa, 0
  br i1 %.not37, label %bb.e, label %bb.d

bb.d:                                             ; preds = %do_ssl_trace_str.exit
  %i.as = uitofp nneg i32 %i.n to float
  %i.at = uitofp nneg i32 %i.aa to float
  %i.au = fdiv float %i.as, %i.at
  %i.av = fpext float %i.au to double
  %i.aw = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.515, i32 noundef %i.aa, double noundef %i.av) #5 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %do_ssl_trace_str.exit
  %i.ax = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.516, i32 noundef 0) #5 ; 0 uses
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
  %i.a = load i64, ptr %3, align 8, !tbaa !89     ; 2 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %ssl_print_hexbuf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !83
  %i.i = and i32 %i.h, 2
  %.not = icmp eq i32 %i.i, 0
  %.pre = load ptr, ptr %2, align 8, !tbaa !88    ; 3 uses
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %.pre, align 1, !tbaa !84
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 8
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !84
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
    i16 1800, label %.fold.split55
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

.fold.split34:                                    ; preds = %bb.c
  br label %bb.d

.fold.split35:                                    ; preds = %bb.c
  br label %bb.d

.fold.split36:                                    ; preds = %bb.c
  br label %bb.d

.fold.split37:                                    ; preds = %bb.c
  br label %bb.d

.fold.split38:                                    ; preds = %bb.c
  br label %bb.d

.fold.split39:                                    ; preds = %bb.c
  br label %bb.d

.fold.split40:                                    ; preds = %bb.c
  br label %bb.d

.fold.split41:                                    ; preds = %bb.c
  br label %bb.d

.fold.split42:                                    ; preds = %bb.c
  br label %bb.d

.fold.split43:                                    ; preds = %bb.c
  br label %bb.d

.fold.split44:                                    ; preds = %bb.c
  br label %bb.d

.fold.split45:                                    ; preds = %bb.c
  br label %bb.d

.fold.split46:                                    ; preds = %bb.c
  br label %bb.d

.fold.split47:                                    ; preds = %bb.c
  br label %bb.d

.fold.split48:                                    ; preds = %bb.c
  br label %bb.d

.fold.split49:                                    ; preds = %bb.c
  br label %bb.d

.fold.split50:                                    ; preds = %bb.c
  br label %bb.d

.fold.split51:                                    ; preds = %bb.c
  br label %bb.d

.fold.split52:                                    ; preds = %bb.c
  br label %bb.d

.fold.split53:                                    ; preds = %bb.c
  br label %bb.d

.fold.split54:                                    ; preds = %bb.c
end_hunk_0
begin_hunk_1_@ssl_print_extensions:bb.a
    i16 2, label %.fold.split430.i
    i16 3, label %.fold.split431.i
    i16 4, label %.fold.split432.i
    i16 5, label %.fold.split433.i
    i16 6, label %.fold.split434.i
    i16 7, label %.fold.split435.i
    i16 8, label %.fold.split436.i
    i16 9, label %.fold.split437.i
    i16 10, label %.fold.split438.i
    i16 11, label %.fold.split439.i
    i16 12, label %.fold.split440.i
    i16 13, label %.fold.split441.i
    i16 14, label %.fold.split442.i
    i16 16, label %.fold.split443.i
    i16 18, label %.fold.split444.i
    i16 19, label %.fold.split445.i
    i16 20, label %.fold.split446.i
    i16 21, label %.fold.split447.i
    i16 22, label %.fold.split448.i
    i16 23, label %.fold.split449.i
    i16 27, label %.fold.split450.i
    i16 35, label %.fold.split451.i
    i16 41, label %.fold.split452.i
    i16 42, label %.fold.split453.i
    i16 43, label %.fold.split454.i
    i16 44, label %.fold.split455.i
    i16 45, label %.fold.split456.i
    i16 47, label %.fold.split457.i
    i16 49, label %.fold.split458.i
    i16 50, label %.fold.split459.i
    i16 51, label %.fold.split460.i
    i16 -255, label %.fold.split461.i
    i16 13172, label %.fold.split462.i
    i16 -499, label %.fold.split463.i
    i16 -768, label %.fold.split464.i
  ]

.fold.split.i:                                    ; preds = %bb.j
  br label %bb.k

.fold.split430.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split431.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split432.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split433.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split434.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split435.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split436.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split437.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split438.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split439.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split440.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split441.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split442.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split443.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split444.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split445.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split446.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split447.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split448.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split449.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split450.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split451.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split452.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split453.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split454.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split455.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split456.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split457.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split458.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split459.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split460.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split461.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split462.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split463.i:                                 ; preds = %bb.j
  br label %bb.k

.fold.split464.i:                                 ; preds = %bb.j
  br label %bb.k

bb.k:                                             ; preds = %.fold.split464.i, %.fold.split463.i, %.fold.split462.i, %.fold.split461.i, %.fold.split460.i, %.fold.split459.i, %.fold.split458.i, %.fold.split457.i, %.fold.split456.i, %.fold.split455.i, %.fold.split454.i, %.fold.split453.i, %.fold.split452.i, %.fold.split451.i, %.fold.split450.i, %.fold.split449.i, %.fold.split448.i, %.fold.split447.i, %.fold.split446.i, %.fold.split445.i, %.fold.split444.i, %.fold.split443.i, %.fold.split442.i, %.fold.split441.i, %.fold.split440.i, %.fold.split439.i, %.fold.split438.i, %.fold.split437.i, %.fold.split436.i, %.fold.split435.i, %.fold.split434.i, %.fold.split433.i, %.fold.split432.i, %.fold.split431.i, %.fold.split430.i, %.fold.split.i, %bb.j
  %.0810.i.lcssa.i = phi ptr [ @ssl_exts_tbl, %bb.j ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 560), %.fold.split463.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 16), %.fold.split.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 32), %.fold.split430.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 48), %.fold.split431.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 64), %.fold.split432.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 80), %.fold.split433.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 96), %.fold.split434.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 112), %.fold.split435.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 128), %.fold.split436.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 144), %.fold.split437.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 160), %.fold.split438.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 176), %.fold.split439.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 192), %.fold.split440.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 208), %.fold.split441.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 224), %.fold.split442.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 240), %.fold.split443.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 256), %.fold.split444.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 272), %.fold.split445.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 288), %.fold.split446.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 304), %.fold.split447.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 320), %.fold.split448.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 336), %.fold.split449.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 352), %.fold.split450.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 368), %.fold.split451.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 384), %.fold.split452.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 400), %.fold.split453.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 416), %.fold.split454.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 432), %.fold.split455.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 448), %.fold.split456.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 464), %.fold.split457.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 480), %.fold.split458.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 496), %.fold.split459.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 512), %.fold.split460.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 528), %.fold.split461.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 544), %.fold.split462.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_exts_tbl, i64 576), %.fold.split464.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0810.i.lcssa.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !87
  br label %do_ssl_trace_str.exit.i

do_ssl_trace_str.exit.i:                          ; preds = %bb.k, %bb.j
  %.07.i.i = phi ptr [ %i.aw, %bb.k ], [ @.str.15, %bb.j ]
  %i.ax = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.589, ptr noundef %.07.i.i, i32 noundef range(i32 0, 65536) %i.ae, i32 noundef %i.am) #5 ; 0 uses
  switch i16 %trunc630.i, label %bb.bo [
    i16 27, label %bb.l
    i16 1, label %bb.n
    i16 11, label %bb.o
    i16 10, label %bb.r
    i16 16, label %bb.u
    i16 13, label %bb.z
    i16 -255, label %bb.ac
    i16 35, label %bb.aj
    i16 51, label %bb.al
    i16 43, label %bb.av
    i16 45, label %bb.bc
    i16 42, label %bb.bg
    i16 20, label %bb.bj
    i16 19, label %bb.bj
  ]

bb.l:                                             ; preds = %do_ssl_trace_str.exit.i
  %i.ay = icmp eq i32 %i.am, 0
  br i1 %i.ay, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = load i8, ptr %i.at, align 1, !tbaa !84  ; 3 uses
  %i.ba = zext i8 %i.az to i64                    ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 1
  %.not253.i = icmp eq i64 %i.bb, %i.an
  %i.bc = and i8 %i.az, 1
  %.not.i.i = icmp eq i8 %i.bc, 0
  %or.cond = and i1 %.not253.i, %.not.i.i
  br i1 %or.cond, label %.preheader.i.i, label %.critedge

.preheader.i.i:                                   ; preds = %bb.m
  %.not2123.i.i = icmp eq i8 %i.az, 0
  br i1 %.not2123.i.i, label %ssl_print_extension.exit.thread68, label %.lr.ph.split.us.i.preheader.i

.lr.ph.split.us.i.preheader.i:                    ; preds = %.preheader.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.05593, i64 5
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %do_ssl_trace_str.exit.us.i.i, %.lr.ph.split.us.i.preheader.i
  %.01925.us.i.i = phi ptr [ %i.bq, %do_ssl_trace_str.exit.us.i.i ], [ %i.bd, %.lr.ph.split.us.i.preheader.i ] ; 3 uses
  %.02024.us.i.i = phi i64 [ %i.br, %do_ssl_trace_str.exit.us.i.i ], [ %i.ba, %.lr.ph.split.us.i.preheader.i ]
  %i.be = load i8, ptr %.01925.us.i.i, align 1, !tbaa !84
  %i.bf = zext i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.01925.us.i.i, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !84
  %i.bj = zext i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.bg, %i.bj            ; 3 uses
  %i.bl = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef range(i32 6, 13) %i.u, i32 noundef 80) #5 ; 0 uses
  %i.bm = icmp samesign ult i32 %i.bk, 4
  br i1 %i.bm, label %switch.lookup, label %do_ssl_trace_str.exit.us.i.i

switch.lookup:                                    ; preds = %.lr.ph.split.us.i.i
  %trunc635.i = zext nneg i32 %i.bk to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ssl_print_extensions, i64 %trunc635.i
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %switch.load, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !87
  br label %do_ssl_trace_str.exit.us.i.i

do_ssl_trace_str.exit.us.i.i:                     ; preds = %.lr.ph.split.us.i.i, %switch.lookup
  %.07.i.us.i.i = phi ptr [ %i.bo, %switch.lookup ], [ @.str.15, %.lr.ph.split.us.i.i ]
  %i.bp = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.595, ptr noundef %.07.i.us.i.i, i32 noundef %i.bk) #5 ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01925.us.i.i, i64 2
  %i.br = add i64 %.02024.us.i.i, -2              ; 2 uses
  %.not21.us.i.i = icmp eq i64 %i.br, 0
  br i1 %.not21.us.i.i, label %ssl_print_extension.exit.thread68, label %.lr.ph.split.us.i.i, !llvm.loop !2

bb.n:                                             ; preds = %do_ssl_trace_str.exit.i
  %i.bs = icmp eq i32 %i.am, 0
  br i1 %i.bs, label %.critedge, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.n, %do_ssl_trace_str.exit.i.i
  %.01925.i.i = phi ptr [ %i.cb, %do_ssl_trace_str.exit.i.i ], [ %i.at, %bb.n ] ; 2 uses
  %.02024.i.i = phi i64 [ %i.cc, %do_ssl_trace_str.exit.i.i ], [ %i.an, %bb.n ]
  %i.bt = load i8, ptr %.01925.i.i, align 1, !tbaa !84 ; 3 uses
  %i.bu = zext i8 %i.bt to i32
  %i.bv = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef range(i32 6, 13) %i.u, i32 noundef 80) #5 ; 0 uses
  %i.bw = icmp ult i8 %i.bt, 5
  br i1 %i.bw, label %switch.lookup184, label %do_ssl_trace_str.exit.i.i

switch.lookup184:                                 ; preds = %.lr.ph.split.i.i
  %i.bx = zext nneg i8 %i.bt to i64
  %switch.gep185 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ssl_print_extensions.8, i64 %i.bx
  %switch.load186 = load ptr, ptr %switch.gep185, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %switch.load186, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !87
  br label %do_ssl_trace_str.exit.i.i

do_ssl_trace_str.exit.i.i:                        ; preds = %.lr.ph.split.i.i, %switch.lookup184
  %.07.i.i.i = phi ptr [ %i.bz, %switch.lookup184 ], [ @.str.15, %.lr.ph.split.i.i ]
  %i.ca = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.595, ptr noundef %.07.i.i.i, i32 noundef %i.bu) #5 ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 1
  %i.cc = add nsw i64 %.02024.i.i, -1             ; 2 uses
  %.not21.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not21.i.i, label %ssl_print_extension.exit.thread68, label %.lr.ph.split.i.i, !llvm.loop !2

bb.o:                                             ; preds = %do_ssl_trace_str.exit.i
  %i.cd = icmp eq i32 %i.am, 0
  br i1 %i.cd, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = load i8, ptr %i.at, align 1, !tbaa !84  ; 2 uses
  %i.cf = zext i8 %i.ce to i64                    ; 2 uses
  %i.cg = add nuw nsw i64 %i.cf, 1
  %.not252.i = icmp eq i64 %i.cg, %i.an
  br i1 %.not252.i, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %.not2123.i272.i = icmp eq i8 %i.ce, 0
  br i1 %.not2123.i272.i, label %ssl_print_extension.exit.thread68, label %.lr.ph.split.i274.i

.lr.ph.split.i274.i:                              ; preds = %bb.q, %do_ssl_trace_str.exit.i280.i
  %.01925.i275.pn.i = phi ptr [ %.01925.i275.i, %do_ssl_trace_str.exit.i280.i ], [ %i.at, %bb.q ]
  %.02024.i276.i = phi i64 [ %i.cp, %do_ssl_trace_str.exit.i280.i ], [ %i.cf, %bb.q ]
  %.01925.i275.i = getelementptr inbounds nuw i8, ptr %.01925.i275.pn.i, i64 1 ; 2 uses
  %i.ch = load i8, ptr %.01925.i275.i, align 1, !tbaa !84 ; 3 uses
  %i.ci = zext i8 %i.ch to i32
  %i.cj = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef range(i32 6, 13) %i.u, i32 noundef 80) #5 ; 0 uses
  %i.ck = icmp ult i8 %i.ch, 3
  br i1 %i.ck, label %switch.lookup187, label %do_ssl_trace_str.exit.i280.i

switch.lookup187:                                 ; preds = %.lr.ph.split.i274.i
  %i.cl = zext nneg i8 %i.ch to i64
  %switch.gep188 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ssl_print_extensions.9, i64 %i.cl
  %switch.load189 = load ptr, ptr %switch.gep188, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %switch.load189, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !87
  br label %do_ssl_trace_str.exit.i280.i

do_ssl_trace_str.exit.i280.i:                     ; preds = %.lr.ph.split.i274.i, %switch.lookup187
  %.07.i.i281.i = phi ptr [ %i.cn, %switch.lookup187 ], [ @.str.15, %.lr.ph.split.i274.i ]
  %i.co = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.595, ptr noundef %.07.i.i281.i, i32 noundef %i.ci) #5 ; 0 uses
  %i.cp = add nsw i64 %.02024.i276.i, -1          ; 2 uses
  %.not21.i282.i = icmp eq i64 %i.cp, 0
  br i1 %.not21.i282.i, label %ssl_print_extension.exit.thread68, label %.lr.ph.split.i274.i, !llvm.loop !2

bb.r:                                             ; preds = %do_ssl_trace_str.exit.i
  %i.cq = icmp samesign ult i32 %i.am, 2
  br i1 %i.cq, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = load i8, ptr %i.at, align 1, !tbaa !84
  %i.cs = zext i8 %i.cr to i64
  %i.ct = shl nuw nsw i64 %i.cs, 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.05593, i64 5
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !84
  %i.cw = zext i8 %i.cv to i64
  %i.cx = or disjoint i64 %i.ct, %i.cw            ; 2 uses
  %i.cy = add nuw nsw i64 %i.cx, 2
  %.not251.i = icmp eq i64 %i.cy, %i.an
  br i1 %.not251.i, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %.05593, i64 6
  %i.da = tail call fastcc i32 @do_ssl_trace_list(ptr noundef %0, i32 noundef %i.u, ptr noundef nonnull %i.cz, i64 noundef %i.cx, i64 noundef 2, ptr noundef nonnull @ssl_groups_tbl, i64 noundef 57)
  br label %ssl_print_extension.exit

bb.u:                                             ; preds = %do_ssl_trace_str.exit.i
  %i.db = icmp samesign ult i32 %i.am, 2
  br i1 %i.db, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = load i8, ptr %i.at, align 1, !tbaa !84
  %i.dd = zext i8 %i.dc to i64
  %i.de = shl nuw nsw i64 %i.dd, 8
  %i.df = getelementptr inbounds nuw i8, ptr %.05593, i64 5
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !84
  %i.dh = zext i8 %i.dg to i64
  %i.di = or disjoint i64 %i.de, %i.dh            ; 3 uses
  %i.dj = add nuw nsw i64 %i.di, 2
  %.not248.i = icmp eq i64 %i.dj, %i.an
  br i1 %.not248.i, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %.not249371.i = icmp eq i64 %i.di, 0
  br i1 %.not249371.i, label %ssl_print_extension.exit.thread68, label %.lr.ph374.i

.lr.ph374.i:                                      ; preds = %bb.w
  %i.dk = getelementptr inbounds nuw i8, ptr %.05593, i64 6
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph374.i
  %.0206373.i = phi i64 [ %i.di, %.lr.ph374.i ], [ %i.dt, %bb.y ] ; 2 uses
  %.0212372.i = phi ptr [ %i.dk, %.lr.ph374.i ], [ %i.ds, %bb.y ] ; 2 uses
  %i.dl = load i8, ptr %.0212372.i, align 1, !tbaa !84 ; 2 uses
  %i.dm = zext i8 %i.dl to i64                    ; 3 uses
  %.not250.i = icmp ugt i64 %.0206373.i, %i.dm
  br i1 %.not250.i, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw i8, ptr %.0212372.i, i64 1 ; 2 uses
  %.neg.i = xor i64 %i.dm, -1
  %i.do = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef %i.u, i32 noundef 80) #5 ; 0 uses
  %i.dp = zext i8 %i.dl to i32
  %i.dq = tail call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull %i.dn, i32 noundef %i.dp) #5 ; 0 uses
  %i.dr = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.12) #5 ; 0 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dm
  %i.dt = add i64 %.0206373.i, %.neg.i            ; 2 uses
  %.not249.i = icmp eq i64 %i.dt, 0
  br i1 %.not249.i, label %ssl_print_extension.exit.thread68, label %bb.x, !llvm.loop !122

bb.z:                                             ; preds = %do_ssl_trace_str.exit.i
  %i.du = icmp samesign ult i32 %i.am, 2
  br i1 %i.du, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = load i8, ptr %i.at, align 1, !tbaa !84
  %i.dw = zext i8 %i.dv to i64
  %i.dx = shl nuw nsw i64 %i.dw, 8
  %i.dy = getelementptr inbounds nuw i8, ptr %.05593, i64 5
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !84
  %i.ea = zext i8 %i.dz to i64                    ; 2 uses
  %i.eb = or disjoint i64 %i.dx, %i.ea            ; 3 uses
  %i.ec = add nuw nsw i64 %i.eb, 2
  %.not245.i = icmp eq i64 %i.ec, %i.an
  %i.ed = and i64 %i.ea, 1
  %.not246.i = icmp eq i64 %i.ed, 0
  %or.cond260.i = and i1 %.not246.i, %.not245.i
  br i1 %or.cond260.i, label %.preheader.i, label %.critedge

.preheader.i:                                     ; preds = %bb.aa
  %.not247367.i = icmp eq i64 %i.eb, 0
  br i1 %.not247367.i, label %ssl_print_extension.exit.thread68, label %.lr.ph370.i

.lr.ph370.i:                                      ; preds = %.preheader.i, %do_ssl_trace_str.exit288.i
  %.2208369.i = phi i64 [ %i.ep, %do_ssl_trace_str.exit288.i ], [ %i.eb, %.preheader.i ]
  %.pn368.i = phi ptr [ %.2214.i, %do_ssl_trace_str.exit288.i ], [ %i.at, %.preheader.i ] ; 2 uses
  %.2214.i = getelementptr inbounds nuw i8, ptr %.pn368.i, i64 2 ; 2 uses
  %i.ee = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef %i.u, i32 noundef 80) #5 ; 0 uses
  %i.ef = load i8, ptr %.2214.i, align 1, !tbaa !84
  %i.eg = zext i8 %i.ef to i32
  %i.eh = shl nuw nsw i32 %i.eg, 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.pn368.i, i64 3
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !84
  %i.ek = zext i8 %i.ej to i32
  %i.el = or disjoint i32 %i.eh, %i.ek            ; 2 uses
  %trunc634.i = trunc nuw i32 %i.el to i16
  switch i16 %trunc634.i, label %do_ssl_trace_str.exit288.i [
    i16 1027, label %bb.ab
    i16 1283, label %.fold.split474.i
    i16 1539, label %.fold.split475.i
    i16 771, label %.fold.split476.i
    i16 2055, label %.fold.split477.i
    i16 2056, label %.fold.split478.i
    i16 515, label %.fold.split479.i
    i16 2052, label %.fold.split480.i
    i16 2053, label %.fold.split481.i
    i16 2054, label %.fold.split482.i
    i16 2057, label %.fold.split483.i
    i16 2058, label %.fold.split484.i
    i16 2059, label %.fold.split485.i
    i16 1025, label %.fold.split486.i
    i16 1281, label %.fold.split487.i
end_hunk_1
