Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/parse?download=true
inline.NumInlined: 1675
inline.NumDeleted: 268
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@tokadd_string:bb.a
.thread:                                          ; preds = %bb.z, %bb.af
  %i.mb = getelementptr i8, ptr %i.as, i64 -1
  %.val191.val = load i8, ptr %i.mb, align 1, !tbaa !31
  %i.mc = icmp slt i8 %.val191.val, 0
  br i1 %i.mc, label %tokadd.exit208, label %bb.db

tokadd.exit208:                                   ; preds = %bb.bd, %bb.bc, %.thread, %bb.bb
  %.0139 = phi i32 [ %.011.i.ph, %.thread ], [ %i.cq, %bb.bb ], [ %i.cq, %bb.bc ], [ %i.cq, %bb.bd ]
  %i.md = load ptr, ptr %6, align 8, !tbaa !386   ; 3 uses
  %.not167 = icmp eq ptr %i.md, null
  %i.me = load ptr, ptr %5, align 8, !tbaa !386   ; 3 uses
  br i1 %.not167, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %tokadd.exit208
  store ptr %i.me, ptr %6, align 8, !tbaa !386
  br label %bb.da

bb.cw:                                            ; preds = %tokadd.exit208
  %.not168 = icmp eq ptr %i.md, %i.me
  br i1 %.not168, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.mf = trunc nuw i8 %.0138 to i1
  br i1 %i.mf, label %.backedge.backedge, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mg = getelementptr i8, ptr %i.md, i64 8
  %.val187 = load ptr, ptr %i.mg, align 8, !tbaa !382
  %i.mh = getelementptr i8, ptr %i.me, i64 8
  %.val188 = load ptr, ptr %i.mh, align 8, !tbaa !382
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.mi = load i32, ptr %i.t, align 4, !tbaa !63  ; 4 uses
  store i32 %i.mi, ptr %8, align 4, !tbaa !372
  %i.mj = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.mk = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.ml = ptrtoint ptr %i.mj to i64
  %i.mm = ptrtoint ptr %i.mk to i64               ; 2 uses
  %i.mn = sub i64 %i.ml, %i.mm
  %i.mo = trunc i64 %i.mn to i32
  store i32 %i.mo, ptr %i.u, align 4, !tbaa !373
  store i32 %i.mi, ptr %i.v, align 4, !tbaa !372
  %i.mp = load ptr, ptr %i.b, align 8, !tbaa !192
  %i.mq = ptrtoint ptr %i.mp to i64
  %i.mr = sub i64 %i.mq, %i.mm
  %i.ms = trunc i64 %i.mr to i32
  store i32 %i.ms, ptr %i.w, align 4, !tbaa !373
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.807, ptr noundef %.val187, ptr noundef %.val188)
  %i.mt = load i32, ptr %i.t, align 4, !tbaa !63
  %i.mu = icmp eq i32 %i.mi, %i.mt
  br i1 %i.mu, label %bb.cz, label %parser_mixed_error.exit

bb.cz:                                            ; preds = %bb.cy
  %i.mv = load ptr, ptr %i.x, align 8, !tbaa !193
  %i.mw = load i64, ptr %i.y, align 8, !tbaa !194
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.mw, ptr noundef nonnull readonly %8, i32 noundef %i.mi, ptr noundef %i.mv)
  br label %parser_mixed_error.exit

parser_mixed_error.exit:                          ; preds = %bb.cy, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %.backedge.backedge

bb.da:                                            ; preds = %bb.cw, %bb.cv
  %i.mx = call fastcc i32 @tokadd_mbchar(ptr noundef %0, i32 noundef %.0139)
  %i.my = icmp eq i32 %i.mx, -1
  br i1 %i.my, label %nextc0.exit201.thread231, label %.backedge.backedge

bb.db:                                            ; preds = %.thread
  br i1 %.not164, label %pushback.exit192, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %trunc264 = trunc nuw i32 %.011.i.ph to i8
  switch i8 %trunc264, label %pushback.exit192 [
    i8 32, label %bb.dd
    i8 13, label %bb.dd
    i8 12, label %bb.dd
    i8 11, label %bb.dd
    i8 10, label %bb.dd
    i8 9, label %bb.dd
  ]

bb.dd:                                            ; preds = %bb.dc, %bb.dc, %bb.dc, %bb.dc, %bb.dc, %bb.dc
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %.011.i.ph)
  br label %nextc0.exit

pushback.exit192:                                 ; preds = %bb.dc, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.cr, %bb.ct, %bb.x, %bb.cs, %tokadd.exit218, %bb.db, %bb.p
  %.1140 = phi i32 [ %3, %bb.p ], [ %2, %bb.x ], [ %i.lz, %tokadd.exit218 ], [ %i.cq, %switch.early.test ], [ %3, %bb.ct ], [ %i.cq, %bb.cs ], [ %.011.i.ph, %bb.db ], [ %.011.i.ph, %bb.dc ], [ %2, %bb.cr ], [ %i.cq, %switch.early.test ], [ %i.cq, %switch.early.test ], [ %i.cq, %switch.early.test ], [ %i.cq, %switch.early.test ], [ %i.cq, %switch.early.test ] ; 4 uses
  %i.mz = and i32 %.1140, 128
  %.not179 = icmp eq i32 %i.mz, 0
  br i1 %.not179, label %pushback.exit192.thread239, label %bb.de

bb.de:                                            ; preds = %pushback.exit192
  %i.na = load ptr, ptr %6, align 8, !tbaa !386   ; 3 uses
  %.not180 = icmp eq ptr %i.na, null
  %i.nb = load ptr, ptr %5, align 8, !tbaa !386   ; 3 uses
  br i1 %.not180, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store ptr %i.nb, ptr %6, align 8, !tbaa !386
  br label %pushback.exit192.thread239

bb.dg:                                            ; preds = %bb.de
  %.not181 = icmp eq ptr %i.na, %i.nb
  br i1 %.not181, label %pushback.exit192.thread239, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.nc = trunc nuw i8 %.0138 to i1
  br i1 %i.nc, label %.backedge.backedge, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.nd = getelementptr i8, ptr %i.na, i64 8
  %.val = load ptr, ptr %i.nd, align 8, !tbaa !382
  %i.ne = getelementptr i8, ptr %i.nb, i64 8
  %.val186 = load ptr, ptr %i.ne, align 8, !tbaa !382
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.nf = load i32, ptr %i.t, align 4, !tbaa !63  ; 4 uses
  store i32 %i.nf, ptr %7, align 4, !tbaa !372
  %i.ng = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.nh = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.ni = ptrtoint ptr %i.ng to i64
  %i.nj = ptrtoint ptr %i.nh to i64               ; 2 uses
  %i.nk = sub i64 %i.ni, %i.nj
  %i.nl = trunc i64 %i.nk to i32
  store i32 %i.nl, ptr %i.z, align 4, !tbaa !373
  store i32 %i.nf, ptr %i.aa, align 4, !tbaa !372
  %i.nm = load ptr, ptr %i.b, align 8, !tbaa !192
  %i.nn = ptrtoint ptr %i.nm to i64
  %i.no = sub i64 %i.nn, %i.nj
  %i.np = trunc i64 %i.no to i32
  store i32 %i.np, ptr %i.ab, align 4, !tbaa !373
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.807, ptr noundef %.val, ptr noundef %.val186)
  %i.nq = load i32, ptr %i.t, align 4, !tbaa !63
  %i.nr = icmp eq i32 %i.nf, %i.nq
  br i1 %i.nr, label %bb.dj, label %parser_mixed_error.exit220

bb.dj:                                            ; preds = %bb.di
  %i.ns = load ptr, ptr %i.x, align 8, !tbaa !193
  %i.nt = load i64, ptr %i.y, align 8, !tbaa !194
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.nt, ptr noundef nonnull readonly %7, i32 noundef %i.nf, ptr noundef %i.ns)
  br label %parser_mixed_error.exit220

parser_mixed_error.exit220:                       ; preds = %bb.di, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.backedge.backedge

pushback.exit192.thread239:                       ; preds = %bb.ay, %bb.ax, %bb.au, %bb.ar, %bb.av, %bb.at, %bb.as, %bb.aa, %bb.am, %bb.df, %bb.dg, %pushback.exit192
  %.1140242 = phi i32 [ %.1140, %pushback.exit192 ], [ %.1140, %bb.df ], [ %.1140, %bb.dg ], [ 117, %bb.ay ], [ 117, %bb.ax ], [ 92, %bb.au ], [ 10, %bb.ar ], [ 92, %bb.av ], [ 92, %bb.at ], [ 10, %bb.as ], [ 35, %bb.aa ], [ 10, %bb.am ]
  %i.nu = trunc i32 %.1140242 to i8
  %i.nv = load ptr, ptr %i.k, align 8, !tbaa !362
  %i.nw = load i32, ptr %i.l, align 8, !tbaa !388 ; 2 uses
  %i.nx = add i32 %i.nw, 1
  store i32 %i.nx, ptr %i.l, align 8, !tbaa !388
  %i.ny = sext i32 %i.nw to i64
  %i.nz = getelementptr i8, ptr %i.nv, i64 %i.ny
  store i8 %i.nu, ptr %i.nz, align 1, !tbaa !31
  %i.oa = load i32, ptr %i.l, align 8, !tbaa !388
  %i.ob = load i32, ptr %i.m, align 4, !tbaa !365 ; 2 uses
  %.not.i221 = icmp slt i32 %i.oa, %i.ob
  br i1 %.not.i221, label %.backedge.backedge, label %bb.dk

bb.dk:                                            ; preds = %pushback.exit192.thread239
  %i.oc = shl i32 %i.ob, 1                        ; 2 uses
  store i32 %i.oc, ptr %i.m, align 4, !tbaa !365
  %i.od = load ptr, ptr %i.k, align 8, !tbaa !362
  %i.oe = sext i32 %i.oc to i64
  %i.of = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.od, i64 noundef %i.oe, i64 noundef 1) #38
  store ptr %i.of, ptr %i.k, align 8, !tbaa !362
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.dk, %pushback.exit192.thread239, %bb.dh, %parser_mixed_error.exit220, %bb.cx, %parser_mixed_error.exit, %bb.cg, %bb.ch, %bb.ci, %bb.ao, %bb.ap, %bb.az, %tokspace.exit, %bb.bm, %bb.cu, %bb.da
  %.0138.be = phi i8 [ 1, %bb.cx ], [ 1, %bb.dh ], [ %.0138, %bb.ao ], [ %.0138, %bb.bm ], [ %.0138, %tokspace.exit ], [ %.0138, %bb.cu ], [ %.0138, %bb.cg ], [ %.0138, %bb.da ], [ %.0138, %bb.az ], [ %.0138, %bb.ap ], [ %.0138, %bb.ch ], [ 1, %bb.ci ], [ 1, %parser_mixed_error.exit ], [ 1, %parser_mixed_error.exit220 ], [ %.0138, %pushback.exit192.thread239 ], [ %.0138, %bb.dk ]
  br label %.backedge, !llvm.loop !638

nextc0.exit:                                      ; preds = %.critedge.i, %bb.aq, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.w, %bb.v, %bb.u, %bb.t, %bb.dd
  %.2141 = phi i32 [ 35, %bb.ad ], [ 35, %bb.ae ], [ %.011.i.ph, %bb.dd ], [ %2, %bb.w ], [ %2, %bb.t ], [ %2, %bb.u ], [ %2, %bb.v ], [ 35, %bb.ab ], [ 35, %bb.ac ], [ 92, %bb.aq ], [ -1, %.critedge.i ] ; 2 uses
  %i.og = load ptr, ptr %6, align 8, !tbaa !386   ; 2 uses
  %.not178 = icmp eq ptr %i.og, null
  br i1 %.not178, label %nextc0.exit201.thread231, label %bb.dl

bb.dl:                                            ; preds = %nextc0.exit
  store ptr %i.og, ptr %5, align 8, !tbaa !386
  br label %nextc0.exit201.thread231

nextc0.exit201.thread231:                         ; preds = %.critedge.i194, %bb.da, %tokadd_escape.exit, %nextc0.exit, %bb.dl
  %.0 = phi i32 [ %.2141, %bb.dl ], [ -1, %tokadd_escape.exit ], [ %.2141, %nextc0.exit ], [ -1, %bb.da ], [ -1, %.critedge.i194 ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias noundef nonnull ptr @parser_str_new(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef range(i64 -2147483648, 2147483648) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readnone captures(address) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.81, i64 noundef %1) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias nonnull dereferenceable(32) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 32) #33 ; 7 uses
  %i.c = add nuw nsw i64 %1, 1
  %i.d = tail call noalias nonnull ptr @ruby_xcalloc(i64 noundef %i.c, i64 noundef 1) #33 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %0, null
  %.not.i.i.i = icmp eq i64 %1, 0
  %or.cond.i.i = or i1 %.not.i.i, %.not.i.i.i
  br i1 %or.cond.i.i, label %rb_parser_encoding_string_new.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.d, ptr noundef nonnull readonly align 1 %0, i64 noundef range(i64 1, 0) %1, i1 noundef false) #31
  br label %rb_parser_encoding_string_new.exit

rb_parser_encoding_string_new.exit:               ; preds = %bb.c, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %i.f, align 8, !tbaa !39
  %i.g = getelementptr i8, ptr %i.d, i64 %1
  store i8 0, ptr %i.g, align 1, !tbaa !31
  store i32 0, ptr %i.b, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %2, ptr %i.h, align 8, !tbaa !41
  %i.i = and i32 %3, 4
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %rb_parser_encoding_string_new.exit
  %5 = tail call fastcc i32 @rb_parser_enc_str_coderange(ptr noundef nonnull %i.b)
  %i.j = icmp eq i32 %5, 1
  br i1 %i.j, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call nonnull ptr @rb_usascii_encoding() #31
  %i.l = icmp eq ptr %4, %i.k
  br i1 %i.l, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = tail call nonnull ptr @rb_utf8_encoding() #31
  %.not11 = icmp eq ptr %2, %i.m
  br i1 %.not11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call nonnull ptr @rb_ascii8bit_encoding() #31
  store ptr %i.n, ptr %i.h, align 8, !tbaa !41
  store i32 2, ptr %i.b, align 8, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.f, %rb_parser_encoding_string_new.exit
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @flush_string_content(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80         ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192
  %i.c = sub i64 0, %2
  %i.d = getelementptr i8, ptr %i.b, i64 %i.c     ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !192
  %i.e = getelementptr i8, ptr %0, i64 264
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = tail call fastcc ptr @rb_parser_enc_cr_str_buf_cat(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef %i.h, i64 noundef range(i64 1, -9223372036854775808) %i.k, ptr noundef %1, i32 noundef 0, ptr noundef null) ; 0 uses
  %i.n = getelementptr i8, ptr %0, i64 196
  %i.o = load i32, ptr %i.n, align 4, !tbaa !63
  %i.p = getelementptr i8, ptr %0, i64 280
  store i32 %i.o, ptr %i.p, align 8, !tbaa !380
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !192
  %i.r = getelementptr i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = add i64 %i.v, 2147483648
  %.not.i = icmp ult i64 %i.w, 4294967296
  br i1 %.not.i, label %rb_long2int_inline.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_out_of_int(i64 noundef %i.v) #32
  unreachable

rb_long2int_inline.exit:                          ; preds = %bb.c
  %i.x = trunc nsw i64 %i.v to i32
  %i.y = getelementptr i8, ptr %0, i64 284
  store i32 %i.x, ptr %i.y, align 4, !tbaa !381
  br label %bb.e

bb.e:                                             ; preds = %rb_long2int_inline.exit, %bb.b
  tail call fastcc void @parser_dispatch_delayed_token(ptr noundef nonnull %0, i32 noundef 321, i32 noundef 8530)
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !192
  store ptr %i.z, ptr %i.g, align 8, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  tail call fastcc void @parser_dispatch_scan_event(ptr noundef nonnull %0, i32 noundef 321, i32 noundef 8533)
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !192
  %i.ab = getelementptr i8, ptr %i.aa, i64 %2
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !192
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @tokadd_utf8(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, i32 noundef range(i32 0, 5) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.rb_code_location_struct, align 4 ; 8 uses
  %.not = icmp eq i32 %3, 0                       ; 4 uses
  br i1 %.not, label %tokadd.exit116, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 160        ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !362
  %i.c = getelementptr i8, ptr %0, i64 136        ; 6 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !388  ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !388
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr i8, ptr %i.b, i64 %i.f
  store i8 92, ptr %i.g, align 1, !tbaa !31
  %i.h = load i32, ptr %i.c, align 8, !tbaa !388  ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 140        ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !365  ; 2 uses
  %.not.i = icmp slt i32 %i.h, %i.j
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !362 ; 2 uses
  br i1 %.not.i, label %tokadd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = shl i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %i.i, align 4, !tbaa !365
  %i.l = sext i32 %i.k to i64
  %i.m = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre, i64 noundef %i.l, i64 noundef 1) #38 ; 2 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !362
  %.pre159 = load i32, ptr %i.c, align 8, !tbaa !388
  br label %tokadd.exit

tokadd.exit:                                      ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ %i.h, %bb.b ], [ %.pre159, %bb.c ] ; 2 uses
  %i.o = phi ptr [ %.pre, %bb.b ], [ %i.m, %bb.c ]
  %i.p = add i32 %i.n, 1
  store i32 %i.p, ptr %i.c, align 8, !tbaa !388
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr i8, ptr %i.o, i64 %i.q
  store i8 117, ptr %i.r, align 1, !tbaa !31
  %i.s = load i32, ptr %i.c, align 8, !tbaa !388
  %i.t = load i32, ptr %i.i, align 4, !tbaa !365  ; 2 uses
  %.not.i115 = icmp slt i32 %i.s, %i.t
  br i1 %.not.i115, label %tokadd.exit116, label %bb.d

bb.d:                                             ; preds = %tokadd.exit
  %i.u = shl i32 %i.t, 1                          ; 2 uses
  store i32 %i.u, ptr %i.i, align 4, !tbaa !365
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !362
  %i.w = sext i32 %i.u to i64
  %i.x = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.v, i64 noundef %i.w, i64 noundef 1) #38
  store ptr %i.x, ptr %i.a, align 8, !tbaa !362
  br label %tokadd.exit116

tokadd.exit116:                                   ; preds = %bb.d, %tokadd.exit, %bb.a
  %i.y = getelementptr i8, ptr %0, i64 16
  %i.z = getelementptr i8, ptr %0, i64 80         ; 23 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !192 ; 4 uses
  %i.ab = getelementptr i8, ptr %0, i64 88        ; 6 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !324 ; 2 uses
  %.not100 = icmp ult ptr %i.aa, %i.ac
  br i1 %.not100, label %bb.e, label %bb.ai

bb.e:                                             ; preds = %tokadd.exit116
  %i.ad = load i8, ptr %i.aa, align 1, !tbaa !31
  %i.ae = icmp eq i8 %i.ad, 123
  br i1 %i.ae, label %bb.f, label %bb.ai

bb.f:                                             ; preds = %bb.e
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !182
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !31
  %i.ai = icmp eq i32 %i.ah, 7
  br i1 %i.ai, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr i8, ptr %0, i64 160       ; 9 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !362
  %i.al = getelementptr i8, ptr %0, i64 136       ; 9 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !388 ; 2 uses
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 8, !tbaa !388
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr i8, ptr %i.ak, i64 %i.ao
  store i8 123, ptr %i.ap, align 1, !tbaa !31
  %i.aq = load i32, ptr %i.al, align 8, !tbaa !388
  %i.ar = getelementptr i8, ptr %0, i64 140       ; 6 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !365 ; 2 uses
  %.not.i117 = icmp slt i32 %i.aq, %i.as
  br i1 %.not.i117, label %tokadd.exit118, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = shl i32 %i.as, 1                        ; 2 uses
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !365
  %i.au = load ptr, ptr %i.aj, align 8, !tbaa !362
  %i.av = sext i32 %i.at to i64
  %i.aw = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.au, i64 noundef %i.av, i64 noundef 1) #38
  store ptr %i.aw, ptr %i.aj, align 8, !tbaa !362
  br label %tokadd.exit118

tokadd.exit118:                                   ; preds = %bb.h, %bb.i
  %i.ax = load ptr, ptr %i.z, align 8, !tbaa !192 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 1      ; 3 uses
  store ptr %i.ay, ptr %i.z, align 8, !tbaa !192
  %i.az = load ptr, ptr %i.ab, align 8, !tbaa !324 ; 2 uses
  %.not110142 = icmp ult ptr %i.ay, %i.az
  br i1 %.not110142, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %tokadd.exit118, %bb.q
  %i.ba = phi ptr [ %i.co, %bb.q ], [ %i.az, %tokadd.exit118 ]
  %i.bb = phi ptr [ %i.cn, %bb.q ], [ %i.ay, %tokadd.exit118 ]
  %i.bc = phi ptr [ %i.cm, %bb.q ], [ %i.ax, %tokadd.exit118 ]
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !31  ; 3 uses
  %i.be = zext i8 %i.bd to i32                    ; 2 uses
  %i.bf = icmp eq i8 %i.bd, 125
  br i1 %i.bf, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph
  %i.bg = load ptr, ptr %i.aj, align 8, !tbaa !362
  %i.bh = load i32, ptr %i.al, align 8, !tbaa !388 ; 2 uses
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.al, align 8, !tbaa !388
  %i.bj = sext i32 %i.bh to i64
  %i.bk = getelementptr i8, ptr %i.bg, i64 %i.bj
  store i8 125, ptr %i.bk, align 1, !tbaa !31
  %i.bl = load i32, ptr %i.al, align 8, !tbaa !388
  %i.bm = load i32, ptr %i.ar, align 4, !tbaa !365 ; 2 uses
  %.not.i119 = icmp slt i32 %i.bl, %i.bm
  br i1 %.not.i119, label %tokadd.exit120, label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_0
