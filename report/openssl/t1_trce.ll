inline.NumInlined: 61
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 25
begin_hunk_0_@ssl_print_extensions:bb.a
  %i.he = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.011.i305.i
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !82
  %i.hg = zext i8 %i.hf to i32
  %i.hh = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.hg) #5 ; 0 uses
  %i.hi = add nuw nsw i64 %.011.i305.i, 1         ; 2 uses
  %exitcond.not.i306.i = icmp eq i64 %i.hi, %i.gm
  br i1 %exitcond.not.i306.i, label %ssl_print_hex.exit307.i, label %.lr.ph.i304.i, !llvm.loop !83

ssl_print_hex.exit307.i:                          ; preds = %.lr.ph.i304.i, %do_ssl_trace_str.exit302.i
  %i.hj = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.12) #5 ; 0 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gm
  %i.hl = sub i64 %i.go, %i.gm                    ; 2 uses
  %.not239.i = icmp eq i64 %i.hl, 0
  br i1 %.not239.i, label %ssl_print_extension.exit.thread68, label %.lr.ph.i, !llvm.loop !124

bb.av:                                            ; preds = %do_ssl_trace_str.exit.i
  br i1 %.not.i, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not237.i = icmp eq i32 %i.am, 2
  br i1 %.not237.i, label %bb.ax, label %.critedge

bb.ax:                                            ; preds = %bb.aw
  %i.hm = load i8, ptr %i.at, align 1, !tbaa !82
  %i.hn = zext i8 %i.hm to i32
  %i.ho = shl nuw nsw i32 %i.hn, 8
  %i.hp = getelementptr inbounds nuw i8, ptr %.05593, i64 5
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !82
  %i.hr = zext i8 %i.hq to i32
  %i.hs = or disjoint i32 %i.ho, %i.hr            ; 2 uses
  %i.ht = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef %i.v, i32 noundef 80) #5 ; 0 uses
  %trunc632.i = trunc nuw i32 %i.hs to i16
  switch i16 %trunc632.i, label %do_ssl_trace_str.exit312.i [
    i16 769, label %bb.ay
    i16 770, label %.fold.split621.i.a
    i16 771, label %.fold.split622.i.a
    i16 772, label %.fold.split623.i.a
    i16 -257, label %.fold.split624.i.a
    i16 -259, label %.fold.split625.i.a
    i16 256, label %.fold.split626.i.a
  ]

.fold.split621.i.a:                               ; preds = %bb.ax
  br label %bb.ay

.fold.split622.i.a:                               ; preds = %bb.ax
  br label %bb.ay

.fold.split623.i.a:                               ; preds = %bb.ax
  br label %bb.ay

.fold.split624.i.a:                               ; preds = %bb.ax
  br label %bb.ay

.fold.split625.i.a:                               ; preds = %bb.ax
  br label %bb.ay

.fold.split626.i.a:                               ; preds = %bb.ax
  br label %bb.ay

bb.ay:                                            ; preds = %.fold.split626.i.a, %.fold.split625.i.a, %.fold.split624.i.a, %.fold.split623.i.a, %.fold.split622.i.a, %.fold.split621.i.a, %bb.ax
  %.0810.i309.lcssa.i = phi ptr [ @ssl_version_tbl, %bb.ax ], [ getelementptr inbounds nuw (i8, ptr @ssl_version_tbl, i64 80), %.fold.split625.i.a ], [ getelementptr inbounds nuw (i8, ptr @ssl_version_tbl, i64 16), %.fold.split621.i.a ], [ getelementptr inbounds nuw (i8, ptr @ssl_version_tbl, i64 32), %.fold.split622.i.a ], [ getelementptr inbounds nuw (i8, ptr @ssl_version_tbl, i64 48), %.fold.split623.i.a ], [ getelementptr inbounds nuw (i8, ptr @ssl_version_tbl, i64 64), %.fold.split624.i.a ], [ getelementptr inbounds nuw (i8, ptr @ssl_version_tbl, i64 96), %.fold.split626.i.a ]
  %i.hu = getelementptr inbounds nuw i8, ptr %.0810.i309.lcssa.i, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !85
  br label %do_ssl_trace_str.exit312.i

do_ssl_trace_str.exit312.i:                       ; preds = %bb.ay, %bb.ax
  %.07.i311.i = phi ptr [ %i.hv, %bb.ay ], [ @.str.15, %bb.ax ]
  %i.hw = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.595, ptr noundef %.07.i311.i, i32 noundef %i.hs) #5 ; 0 uses
  br label %ssl_print_extension.exit.thread68

bb.az:                                            ; preds = %bb.av
  %i.hx = icmp eq i32 %i.am, 0
  br i1 %i.hx, label %.critedge, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hy = load i8, ptr %i.at, align 1, !tbaa !82
  %i.hz = zext i8 %i.hy to i64                    ; 2 uses
  %i.ia = add nuw nsw i64 %i.hz, 1
  %.not236.i = icmp eq i64 %i.ia, %i.an
  br i1 %.not236.i, label %bb.bb, label %.critedge

bb.bb:                                            ; preds = %bb.ba
  %i.ib = getelementptr inbounds nuw i8, ptr %.05593, i64 5
  %i.ic = tail call fastcc i32 @do_ssl_trace_list(ptr noundef %0, i32 noundef %i.u, ptr noundef nonnull %i.ib, i64 noundef %i.hz, i64 noundef 2, ptr noundef nonnull @ssl_version_tbl, i64 noundef 7)
  br label %ssl_print_extension.exit

bb.bc:                                            ; preds = %do_ssl_trace_str.exit.i
  %i.id = icmp eq i32 %i.am, 0
  br i1 %i.id, label %.critedge, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ie = load i8, ptr %i.at, align 1, !tbaa !82  ; 2 uses
  %i.if = zext i8 %i.ie to i64                    ; 2 uses
  %i.ig = add nuw nsw i64 %i.if, 1
  %.not234.i = icmp eq i64 %i.ig, %i.an
  br i1 %.not234.i, label %bb.be, label %.critedge

bb.be:                                            ; preds = %bb.bd
  %.not2123.i317.i = icmp eq i8 %i.ie, 0
  br i1 %.not2123.i317.i, label %ssl_print_extension.exit.thread68, label %.lr.ph.split.i319.i

.lr.ph.split.i319.i:                              ; preds = %bb.be, %do_ssl_trace_str.exit.i325.i
  %.01925.i320.pn.i = phi ptr [ %.01925.i320.i, %do_ssl_trace_str.exit.i325.i ], [ %i.at, %bb.be ]
  %.02024.i321.i = phi i64 [ %i.in, %do_ssl_trace_str.exit.i325.i ], [ %i.if, %bb.be ]
  %.01925.i320.i = getelementptr inbounds nuw i8, ptr %.01925.i320.pn.i, i64 1 ; 2 uses
  %i.ih = load i8, ptr %.01925.i320.i, align 1, !tbaa !82 ; 2 uses
  %i.ii = zext i8 %i.ih to i32
  %i.ij = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef range(i32 6, 13) %i.u, i32 noundef 80) #5 ; 0 uses
  switch i8 %i.ih, label %do_ssl_trace_str.exit.i325.i [
    i8 0, label %bb.bf
    i8 1, label %.fold.split627.i
  ]

.fold.split627.i:                                 ; preds = %.lr.ph.split.i319.i
  br label %bb.bf

bb.bf:                                            ; preds = %.fold.split627.i, %.lr.ph.split.i319.i
  %.0810.i.i323.lcssa.i = phi ptr [ @ssl_psk_kex_modes_tbl, %.lr.ph.split.i319.i ], [ getelementptr inbounds nuw (i8, ptr @ssl_psk_kex_modes_tbl, i64 16), %.fold.split627.i ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.0810.i.i323.lcssa.i, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !85
  br label %do_ssl_trace_str.exit.i325.i

do_ssl_trace_str.exit.i325.i:                     ; preds = %bb.bf, %.lr.ph.split.i319.i
  %.07.i.i326.i = phi ptr [ %i.il, %bb.bf ], [ @.str.15, %.lr.ph.split.i319.i ]
  %i.im = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.595, ptr noundef %.07.i.i326.i, i32 noundef %i.ii) #5 ; 0 uses
  %i.in = add nsw i64 %.02024.i321.i, -1          ; 2 uses
  %.not21.i327.i = icmp eq i64 %i.in, 0
  br i1 %.not21.i327.i, label %ssl_print_extension.exit.thread68, label %.lr.ph.split.i319.i, !llvm.loop !119

bb.bg:                                            ; preds = %do_ssl_trace_str.exit.i
  br i1 %.not232.i, label %bb.bh, label %ssl_print_extension.exit.thread68

bb.bh:                                            ; preds = %bb.bg
  %.not233.i = icmp eq i32 %i.am, 4
  br i1 %.not233.i, label %bb.bi, label %.critedge

bb.bi:                                            ; preds = %bb.bh
  %i.io = load i32, ptr %i.at, align 1
  %i.ip = tail call i32 @llvm.bswap.i32(i32 %i.io)
  %i.iq = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef %i.u, i32 noundef 80) #5 ; 0 uses
  %i.ir = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.596, i32 noundef %i.ip) #5 ; 0 uses
  br label %ssl_print_extension.exit.thread68

bb.bj:                                            ; preds = %do_ssl_trace_str.exit.i, %do_ssl_trace_str.exit.i
  br i1 %.not.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.not231.i = icmp eq i32 %i.am, 1
  br i1 %.not231.i, label %.lr.ph.split.i331.i, label %.critedge

.lr.ph.split.i331.i:                              ; preds = %bb.bk
  %i.is = load i8, ptr %i.at, align 1, !tbaa !82  ; 3 uses
  %i.it = zext i8 %i.is to i32
  %i.iu = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef range(i32 6, 13) %i.u, i32 noundef 80) #5 ; 0 uses
  %i.iv = icmp ult i8 %i.is, 4
  br i1 %i.iv, label %switch.lookup190, label %do_ssl_trace_str.exit.i337.i

switch.lookup190:                                 ; preds = %.lr.ph.split.i331.i
  %i.iw = zext nneg i8 %i.is to i64
  %switch.gep191 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ssl_print_extensions.10, i64 %i.iw
  %switch.load192 = load ptr, ptr %switch.gep191, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %switch.load192, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !85
  br label %do_ssl_trace_str.exit.i337.i

do_ssl_trace_str.exit.i337.i:                     ; preds = %.lr.ph.split.i331.i, %switch.lookup190
  %.07.i.i338.i = phi ptr [ %i.iy, %switch.lookup190 ], [ @.str.15, %.lr.ph.split.i331.i ]
  %i.iz = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.595, ptr noundef %.07.i.i338.i, i32 noundef %i.it) #5 ; 0 uses
  br label %ssl_print_extension.exit.thread68

bb.bl:                                            ; preds = %bb.bj
  %i.ja = icmp eq i32 %i.am, 0
  br i1 %i.ja, label %.critedge, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jb = load i8, ptr %i.at, align 1, !tbaa !82
  %i.jc = zext i8 %i.jb to i64                    ; 2 uses
  %i.jd = add nuw nsw i64 %i.jc, 1
  %.not230.i = icmp eq i64 %i.jd, %i.an
  br i1 %.not230.i, label %bb.bn, label %.critedge

bb.bn:                                            ; preds = %bb.bm
  %i.je = getelementptr inbounds nuw i8, ptr %.05593, i64 5
  %i.jf = tail call fastcc i32 @do_ssl_trace_list(ptr noundef %0, i32 noundef %i.u, ptr noundef nonnull %i.je, i64 noundef %i.jc, i64 noundef 1, ptr noundef nonnull @ssl_cert_type_tbl, i64 noundef 4)
  br label %ssl_print_extension.exit

bb.bo:                                            ; preds = %do_ssl_trace_str.exit.i
  %i.jg = tail call i32 @BIO_dump_indent(ptr noundef %0, ptr noundef nonnull %i.at, i32 noundef %i.am, i32 noundef %i.u) #5 ; 0 uses
  br label %ssl_print_extension.exit.thread68

.critedge255.i:                                   ; preds = %bb.af
  tail call fastcc void @ssl_print_hex(ptr noundef %0, i32 noundef %i.v, ptr noundef nonnull @.str.590, ptr noundef nonnull %i.eu, i64 noundef %i.es)
  br label %ssl_print_extension.exit.thread68

ssl_print_extension.exit:                         ; preds = %bb.t, %bb.bb, %bb.bn
  %.5.i = phi i32 [ %i.da, %bb.t ], [ %i.jf, %bb.bn ], [ %i.ic, %bb.bb ]
  %.not64 = icmp eq i32 %.5.i, 0
  br i1 %.not64, label %.critedge, label %ssl_print_extension.exit.thread68

ssl_print_extension.exit.thread68:                ; preds = %do_ssl_trace_str.exit.i325.i, %ssl_print_hex.exit307.i, %do_ssl_trace_str.exit288.i, %bb.y, %do_ssl_trace_str.exit.i280.i, %do_ssl_trace_str.exit.i.i, %do_ssl_trace_str.exit.us.i.i, %.preheader.i.i, %bb.ah, %bb.ai, %ssl_print_hex.exit.i, %bb.aj, %bb.ar, %bb.bg, %.critedge255.i, %bb.be, %do_ssl_trace_str.exit312.i, %.preheader.i, %bb.w, %do_ssl_trace_str.exit.i337.i, %bb.q, %bb.bi, %do_ssl_trace_str.exit297.i, %bb.bo, %ssl_print_extension.exit
  %i.jh = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.an ; 2 uses
  %i.ji = sub i64 %.05692, %i.ao                  ; 2 uses
  %.not = icmp eq i64 %i.ji, 0
  br i1 %.not, label %bb.bp, label %bb.g, !llvm.loop !125

bb.bp:                                            ; preds = %ssl_print_extension.exit.thread68
  store ptr %i.jh, ptr %4, align 8, !tbaa !88
  store i64 %i.s, ptr %5, align 8, !tbaa !89
  br label %.critedge

.critedge:                                        ; preds = %bb.bl, %bb.bk, %bb.bh, %bb.bd, %bb.bc, %bb.ba, %bb.az, %bb.aq, %bb.ao, %bb.ag, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.bm, %bb.aw, %bb.u, %bb.s, %bb.r, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.v, %bb.g, %ssl_print_extension.exit, %bb.as, %.lr.ph.i, %bb.x, %bb.i, %bb.e, %bb.a, %bb.bp, %bb.d, %bb.b
  %.2 = phi i32 [ 1, %bb.b ], [ 1, %bb.bp ], [ 1, %bb.d ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.as ], [ 0, %bb.i ], [ 0, %bb.x ], [ 0, %.lr.ph.i ], [ 0, %ssl_print_extension.exit ], [ 0, %bb.g ], [ 0, %bb.v ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.u ], [ 0, %bb.aw ], [ 0, %bb.bm ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.ad ], [ 0, %bb.ag ], [ 0, %bb.ao ], [ 0, %bb.aq ], [ 0, %bb.az ], [ 0, %bb.ba ], [ 0, %bb.bc ], [ 0, %bb.bd ], [ 0, %bb.bh ], [ 0, %bb.bk ], [ 0, %bb.bl ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @do_ssl_trace_list(ptr noundef %0, i32 noundef range(i32 6, 13) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef range(i64 0, 65536) %3, i64 noundef range(i64 1, 3) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef range(i64 2, 58) %6) unnamed_addr #0 {
bb.a:
  %.lhs.trunc = trunc nuw i64 %3 to i16
  %.rhs.trunc = trunc nuw nsw i64 %4 to i16
  %i.a = urem i16 %.lhs.trunc, %.rhs.trunc
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %.not2123 = icmp eq i64 %3, 0
  br i1 %.not2123, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = icmp eq i64 %4, 2
  br i1 %i.b, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %do_ssl_trace_str.exit.us
  %.01925.us = phi ptr [ %i.r, %do_ssl_trace_str.exit.us ], [ %2, %.lr.ph ] ; 3 uses
  %.02024.us = phi i64 [ %i.s, %do_ssl_trace_str.exit.us ], [ %3, %.lr.ph ]
  %i.c = load i8, ptr %.01925.us, align 1, !tbaa !82
  %i.d = zext i8 %i.c to i32
  %i.e = shl nuw nsw i32 %i.d, 8
  %i.f = getelementptr inbounds nuw i8, ptr %.01925.us, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !82
  %i.h = zext i8 %i.g to i32
  %i.i = or disjoint i32 %i.e, %i.h               ; 2 uses
  %i.j = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef %1, i32 noundef 80) #5 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.split.us
  %.011.i.us = phi i64 [ 0, %.lr.ph.split.us ], [ %i.m, %bb.c ]
  %.0810.i.us = phi ptr [ %5, %.lr.ph.split.us ], [ %i.n, %bb.c ] ; 3 uses
  %i.k = load i32, ptr %.0810.i.us, align 8, !tbaa !93
  %i.l = icmp eq i32 %i.k, %i.i
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw nsw i64 %.011.i.us, 1            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0810.i.us, i64 16
  %exitcond.not.i.us = icmp eq i64 %i.m, %6
  br i1 %exitcond.not.i.us, label %do_ssl_trace_str.exit.us, label %bb.b, !llvm.loop !94

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.0810.i.us, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !85
  br label %do_ssl_trace_str.exit.us

do_ssl_trace_str.exit.us:                         ; preds = %bb.c, %bb.d
  %.07.i.us = phi ptr [ %i.p, %bb.d ], [ @.str.15, %bb.c ]
  %i.q = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.595, ptr noundef %.07.i.us, i32 noundef %i.i) #5 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01925.us, i64 2
  %i.s = add i64 %.02024.us, -2                   ; 2 uses
  %.not21.us = icmp eq i64 %i.s, 0
  br i1 %.not21.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !119

.lr.ph.split:                                     ; preds = %.lr.ph, %do_ssl_trace_str.exit
  %.01925 = phi ptr [ %i.ad, %do_ssl_trace_str.exit ], [ %2, %.lr.ph ] ; 2 uses
  %.02024 = phi i64 [ %i.ae, %do_ssl_trace_str.exit ], [ %3, %.lr.ph ]
  %i.t = load i8, ptr %.01925, align 1, !tbaa !82
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef %1, i32 noundef 80) #5 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.split
  %.011.i = phi i64 [ 0, %.lr.ph.split ], [ %i.aa, %bb.g ]
  %.0810.i = phi ptr [ %5, %.lr.ph.split ], [ %i.ab, %bb.g ] ; 3 uses
  %i.w = load i32, ptr %.0810.i, align 8, !tbaa !93
  %i.x = icmp eq i32 %i.w, %i.u
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.0810.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !85
  br label %do_ssl_trace_str.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = add nuw nsw i64 %.011.i, 1              ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0810.i, i64 16
  %exitcond.not.i = icmp eq i64 %i.aa, %6
  br i1 %exitcond.not.i, label %do_ssl_trace_str.exit, label %bb.e, !llvm.loop !94

do_ssl_trace_str.exit:                            ; preds = %bb.g, %bb.f
  %.07.i = phi ptr [ %i.z, %bb.f ], [ @.str.15, %bb.g ]
  %i.ac = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.595, ptr noundef %.07.i, i32 noundef %i.u) #5 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.01925, i64 1
  %i.ae = add nsw i64 %.02024, -1                 ; 2 uses
  %.not21 = icmp eq i64 %i.ae, 0
  br i1 %.not21, label %.loopexit, label %.lr.ph.split, !llvm.loop !119

.loopexit:                                        ; preds = %do_ssl_trace_str.exit, %do_ssl_trace_str.exit.us, %.preheader, %bb.a
  %.018 = phi i32 [ 0, %bb.a ], [ 1, %.preheader ], [ 1, %do_ssl_trace_str.exit.us ], [ 1, %do_ssl_trace_str.exit ]
  ret i32 %.018
}

declare i32 @BIO_dump_indent(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ssl_print_random(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !89
  %i.b = icmp ult i64 %i.a, 32
  br i1 %i.b, label %bb.b, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !88     ; 29 uses
  %i.d = load i32, ptr %i.c, align 1
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef 6, i32 noundef 80) #5 ; 0 uses
  %i.h = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.64) #5 ; 0 uses
  %i.i = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef 8, i32 noundef 80) #5 ; 0 uses
  %i.j = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.65, i32 noundef %i.e) #5 ; 0 uses
  %i.k = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef 8, i32 noundef 80) #5 ; 0 uses
  %i.l = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.66, i32 noundef 28) #5 ; 0 uses
  %i.m = load i8, ptr %i.f, align 1, !tbaa !82
  %i.n = zext i8 %i.m to i32
  %i.o = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.n) #5 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.q = load i8, ptr %i.p, align 1, !tbaa !82
  %i.r = zext i8 %i.q to i32
  %i.s = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.r) #5 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.u = load i8, ptr %i.t, align 1, !tbaa !82
  %i.v = zext i8 %i.u to i32
  %i.w = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.v) #5 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.y = load i8, ptr %i.x, align 1, !tbaa !82
  %i.z = zext i8 %i.y to i32
  %i.aa = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.z) #5 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !82
  %i.ad = zext i8 %i.ac to i32
  %i.ae = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.ad) #5 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !82
  %i.ah = zext i8 %i.ag to i32
  %i.ai = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.ah) #5 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !82
  %i.al = zext i8 %i.ak to i32
  %i.am = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.al) #5 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !82
  %i.ap = zext i8 %i.ao to i32
  %i.aq = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.ap) #5 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !82
  %i.at = zext i8 %i.as to i32
  %i.au = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.at) #5 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !82
  %i.ax = zext i8 %i.aw to i32
  %i.ay = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.ax) #5 ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !82
  %i.bb = zext i8 %i.ba to i32
  %i.bc = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.bb) #5 ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !82
  %i.bf = zext i8 %i.be to i32
  %i.bg = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.bf) #5 ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !82
  %i.bj = zext i8 %i.bi to i32
  %i.bk = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.bj) #5 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !82
  %i.bn = zext i8 %i.bm to i32
  %i.bo = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.bn) #5 ; 0 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !82
  %i.br = zext i8 %i.bq to i32
  %i.bs = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.br) #5 ; 0 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 19
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !82
  %i.bv = zext i8 %i.bu to i32
  %i.bw = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.bv) #5 ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !82
  %i.bz = zext i8 %i.by to i32
  %i.ca = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.bz) #5 ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 21
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !82
  %i.cd = zext i8 %i.cc to i32
end_hunk_0
