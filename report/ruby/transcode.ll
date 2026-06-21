inline.NumInlined: 403
inline.NumDeleted: 97
begin_hunk_0_@rb_econv_convert:bb.a
bb.aj:                                            ; preds = %rb_econv_convert0.exit, %bb.ai
  %i.el = load i32, ptr %0, align 8, !tbaa !54
  %i.em = trunc i32 %i.el to i8
  %trunc = and i8 %i.em, -16
  switch i8 %trunc, label %.loopexit47 [
    i8 32, label %bb.ak
    i8 48, label %bb.ar
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.en = load ptr, ptr %i.y, align 8, !tbaa !65  ; 2 uses
  %.not.i30 = icmp eq ptr %i.en, null
  br i1 %.not.i30, label %bb.al, label %.make_replacement.exit40_crit_edge

.make_replacement.exit40_crit_edge:               ; preds = %bb.ak
  %.pre77 = load i64, ptr %i.aa, align 8, !tbaa !81
  %.pre78 = load ptr, ptr %i.ab, align 8, !tbaa !82
  br label %make_replacement.exit40

bb.al:                                            ; preds = %bb.ak
  %i.eo = load ptr, ptr %i.z, align 8, !tbaa !51  ; 3 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %rb_econv_encoding_to_insert_output.exit.i31, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !62 ; 3 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 68
  %i.es = load i32, ptr %i.er, align 4, !tbaa !64
  %i.et = icmp eq i32 %i.es, 2
  br i1 %i.et, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.eu = load ptr, ptr %i.eq, align 8, !tbaa !14
  br label %rb_econv_encoding_to_insert_output.exit.i31

bb.ao:                                            ; preds = %bb.am
  %i.ev = getelementptr i8, ptr %i.eq, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !19
  br label %rb_econv_encoding_to_insert_output.exit.i31

rb_econv_encoding_to_insert_output.exit.i31:      ; preds = %bb.ao, %bb.an, %bb.al
  %.0.i.i32 = phi ptr [ %i.ew, %bb.ao ], [ %i.eu, %bb.an ], [ @.str.3, %bb.al ] ; 2 uses
  %i.ex = load i8, ptr %.0.i.i32, align 1, !tbaa !30
  %.not13.i33 = icmp eq i8 %i.ex, 0
  br i1 %.not13.i33, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %rb_econv_encoding_to_insert_output.exit.i31
  %i.ey = load ptr, ptr %i.eo, align 8, !tbaa !62
  %i.ez = getelementptr i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !19
  %i.fb = call ptr @rb_enc_find(ptr noundef %i.fa) #19 ; 0 uses
  %i.fc = call i32 @rb_st_locale_insensitive_strcasecmp(ptr noundef nonnull readonly %.0.i.i32, ptr noundef nonnull @.str.91) #22
  %i.fd = icmp eq i32 %i.fc, 0                    ; 3 uses
  %..i.i34 = select i1 %i.fd, i64 3, i64 1
  %.str.91..str.83.i.i35 = select i1 %i.fd, ptr @.str.91, ptr @.str.83
  %.str.92..str.90.i.i36 = select i1 %i.fd, ptr @.str.92, ptr @.str.90
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %rb_econv_encoding_to_insert_output.exit.i31
  %.014.i37 = phi ptr [ %.str.91..str.83.i.i35, %bb.ap ], [ @.str.3, %rb_econv_encoding_to_insert_output.exit.i31 ] ; 2 uses
  %.0.i38 = phi i64 [ %..i.i34, %bb.ap ], [ 1, %rb_econv_encoding_to_insert_output.exit.i31 ] ; 2 uses
  %.012.i39 = phi ptr [ %.str.92..str.90.i.i36, %bb.ap ], [ @.str.90, %rb_econv_encoding_to_insert_output.exit.i31 ] ; 2 uses
  store ptr %.012.i39, ptr %i.y, align 8, !tbaa !65
  store i64 %.0.i38, ptr %i.aa, align 8, !tbaa !81
  store ptr %.014.i37, ptr %i.ab, align 8, !tbaa !82
  store i32 0, ptr %i.ac, align 8, !tbaa !42
  br label %make_replacement.exit40

make_replacement.exit40:                          ; preds = %.make_replacement.exit40_crit_edge, %bb.aq
  %i.fe = phi ptr [ %.pre78, %.make_replacement.exit40_crit_edge ], [ %.014.i37, %bb.aq ]
  %i.ff = phi i64 [ %.pre77, %.make_replacement.exit40_crit_edge ], [ %.0.i38, %bb.aq ]
  %i.fg = phi ptr [ %i.en, %.make_replacement.exit40_crit_edge ], [ %.012.i39, %bb.aq ]
  %i.fh = call i32 @rb_econv_insert_output(ptr noundef nonnull %0, ptr noundef %i.fg, i64 noundef %i.ff, ptr noundef %i.fe), !inline_history !83
  %.not46 = icmp eq i32 %i.fh, -1
  br i1 %.not46, label %.loopexit47, label %.backedge.backedge

bb.ar:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.fi = load ptr, ptr %i.v, align 8, !tbaa !84  ; 2 uses
  %i.fj = call i32 @rb_st_locale_insensitive_strcasecmp(ptr noundef %i.fi, ptr noundef nonnull @.str.81) #22, !inline_history !85
  %i.fk = icmp eq i32 %i.fj, 0
  %i.fl = load ptr, ptr %i.w, align 8, !tbaa !80  ; 2 uses
  %i.fm = load i64, ptr %i.x, align 8, !tbaa !86  ; 2 uses
  br i1 %i.fk, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fn = call fastcc ptr @allocate_converted_string(ptr noundef %i.fi, ptr noundef nonnull @.str.81, ptr noundef %i.fl, i64 noundef %i.fm, ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef %i.b), !inline_history !85 ; 4 uses
  %.not.i26 = icmp eq ptr %i.fn, null
  br i1 %.not.i26, label %output_hex_charref.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not33.i = icmp eq ptr %i.fn, %i.a
  br i1 %.not33.i, label %thread-pre-split102, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fo = load ptr, ptr %i.w, align 8, !tbaa !80
  %.not34.i = icmp eq ptr %i.fn, %i.fo
  br label %thread-pre-split102

thread-pre-split102:                              ; preds = %bb.at, %bb.au
  %.not36.i.ph = phi i1 [ %.not34.i, %bb.au ], [ true, %bb.at ]
  %.pr = load i64, ptr %i.b, align 8, !tbaa !25
  br label %bb.av

bb.av:                                            ; preds = %bb.ar, %thread-pre-split102
  %i.fp = phi i64 [ %.pr, %thread-pre-split102 ], [ %i.fm, %bb.ar ] ; 3 uses
  %.031.i = phi ptr [ %i.fn, %thread-pre-split102 ], [ %i.fl, %bb.ar ] ; 3 uses
  %.not36.i = phi i1 [ %.not36.i.ph, %thread-pre-split102 ], [ true, %bb.ar ] ; 2 uses
  %i.fq = and i64 %i.fp, 3
  %.not35.i = icmp eq i64 %i.fq, 0
  br i1 %.not35.i, label %.preheader, label %.loopexit48

.preheader:                                       ; preds = %bb.av
  %i.fr = icmp ugt i64 %i.fp, 3
  br i1 %i.fr, label %.lr.ph, label %._crit_edge

thread-pre-split:                                 ; preds = %.lr.ph
  %i.fs = getelementptr i8, ptr %.029.i61, i64 4
  %i.ft = add i64 %i.fv, -4                       ; 2 uses
  %i.fu = icmp ugt i64 %i.ft, 3
  br i1 %i.fu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %thread-pre-split
  %.029.i61 = phi ptr [ %i.fs, %thread-pre-split ], [ %.031.i, %.preheader ] ; 2 uses
  %i.fv = phi i64 [ %i.ft, %thread-pre-split ], [ %i.fp, %.preheader ]
  %i.fw = load i32, ptr %.029.i61, align 1
  %i.fx = call i32 @llvm.bswap.i32(i32 %i.fw)
  %i.fy = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.c, i64 noundef 16, ptr noundef nonnull @.str.82, i32 noundef %i.fx) #19, !inline_history !85 ; 0 uses
  %i.fz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #22, !inline_history !85
  %i.ga = call i32 @rb_econv_insert_output(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef %i.fz, ptr noundef nonnull @.str.83), !inline_history !85
  %i.gb = icmp eq i32 %i.ga, -1
  br i1 %i.gb, label %.loopexit48, label %thread-pre-split

._crit_edge:                                      ; preds = %thread-pre-split, %.preheader
  br i1 %.not36.i, label %output_hex_charref.exit, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge
  call void @ruby_xfree(ptr noundef %.031.i) #19, !inline_history !85
  br label %output_hex_charref.exit

.loopexit48:                                      ; preds = %bb.av, %.lr.ph
  br i1 %.not36.i, label %output_hex_charref.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %.loopexit48
  call void @ruby_xfree(ptr noundef %.031.i) #19, !inline_history !85
  br label %output_hex_charref.exit.thread

output_hex_charref.exit.thread:                   ; preds = %bb.as, %bb.ax, %.loopexit48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.loopexit47

output_hex_charref.exit:                          ; preds = %._crit_edge, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.backedge.backedge

.loopexit47:                                      ; preds = %rb_econv_convert0.exit, %bb.aj, %make_replacement.exit40, %bb.ai, %output_hex_charref.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  ret i32 %.5223.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @rb_econv_encoding_to_insert_output(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !62   ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !14
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi ptr [ %i.j, %bb.d ], [ %i.h, %bb.c ], [ @.str.3, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef range(i32 -1, 1) i32 @rb_econv_insert_output(ptr nofree noundef captures(none) initializes((4, 8)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %rb_econv_encoding_to_insert_output.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !62   ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 68
  %i.h = load i32, ptr %i.g, align 4, !tbaa !64
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !14
  br label %rb_econv_encoding_to_insert_output.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  br label %rb_econv_encoding_to_insert_output.exit

rb_econv_encoding_to_insert_output.exit:          ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.l, %bb.d ], [ %i.j, %bb.c ], [ @.str.3, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.m = getelementptr i8, ptr %0, i64 4
  store i32 1, ptr %i.m, align 4, !tbaa !58
  %i.n = icmp eq i64 %2, 0
  br i1 %i.n, label %bb.ac, label %bb.e

bb.e:                                             ; preds = %rb_econv_encoding_to_insert_output.exit
  %i.o = tail call i32 @rb_st_locale_insensitive_strcasecmp(ptr noundef %.0.i, ptr noundef %3) #22
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = call fastcc ptr @allocate_converted_string(ptr noundef %3, ptr noundef %.0.i, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.a, i64 noundef 4096, ptr noundef %i.b) ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.ac, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.f
  %.pr = load i64, ptr %i.b, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %thread-pre-split
  %i.s = phi i64 [ %.pr, %thread-pre-split ], [ %2, %bb.e ] ; 7 uses
  %.0117 = phi ptr [ %i.q, %thread-pre-split ], [ %1, %bb.e ] ; 6 uses
  %i.t = getelementptr i8, ptr %0, i64 96
  %i.u = load i32, ptr %i.t, align 8, !tbaa !48   ; 3 uses
  %i.v = add i32 %i.u, -1                         ; 2 uses
  %i.w = icmp eq i32 %i.u, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %0, i64 48
  %i.y = getelementptr i8, ptr %0, i64 56
  %i.z = getelementptr i8, ptr %0, i64 64
  %i.aa = getelementptr i8, ptr %0, i64 72
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %0, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !49 ; 2 uses
  %i.ad = sext i32 %i.v to i64
  %i.ae = getelementptr [48 x i8], ptr %i.ac, i64 %i.ad ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !60 ; 5 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !62
  %i.ah = getelementptr i8, ptr %i.ag, i64 68
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !64
  %i.aj = icmp eq i32 %i.ai, 2
  br i1 %i.aj, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %i.af, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !87
  %i.am = add i64 %i.al, %i.s                     ; 3 uses
  %i.an = icmp ult i64 %i.am, %i.s
  br i1 %i.an, label %bb.ab, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = icmp eq i32 %i.v, 0
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr i8, ptr %0, i64 48
  %i.aq = getelementptr i8, ptr %0, i64 56
  %i.ar = getelementptr i8, ptr %0, i64 64
  %i.as = getelementptr i8, ptr %0, i64 72
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.at = add i32 %i.u, -2
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr [48 x i8], ptr %i.ac, i64 %i.au ; 4 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = getelementptr i8, ptr %i.av, i64 16
  %i.ay = getelementptr i8, ptr %i.av, i64 24
  %i.az = getelementptr i8, ptr %i.av, i64 32
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.ba = getelementptr i8, ptr %i.ae, i64 8
  %i.bb = getelementptr i8, ptr %i.ae, i64 16
  %i.bc = getelementptr i8, ptr %i.ae, i64 24
  %i.bd = getelementptr i8, ptr %i.ae, i64 32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.h
  %.0124 = phi ptr [ %i.z, %bb.h ], [ %i.ar, %bb.l ], [ %i.ay, %bb.m ], [ %i.bc, %bb.n ] ; 10 uses
  %.0123 = phi ptr [ %i.aa, %bb.h ], [ %i.as, %bb.l ], [ %i.az, %bb.m ], [ %i.bd, %bb.n ] ; 3 uses
  %.0122 = phi i64 [ %i.s, %bb.h ], [ %i.am, %bb.l ], [ %i.am, %bb.m ], [ %i.s, %bb.n ] ; 6 uses
  %.0120 = phi ptr [ %i.y, %bb.h ], [ %i.aq, %bb.l ], [ %i.ax, %bb.m ], [ %i.bb, %bb.n ] ; 5 uses
  %.0119 = phi ptr [ %i.x, %bb.h ], [ %i.ap, %bb.l ], [ %i.aw, %bb.m ], [ %i.ba, %bb.n ] ; 5 uses
  %.0118 = phi ptr [ null, %bb.h ], [ %i.af, %bb.l ], [ %i.af, %bb.m ], [ %i.af, %bb.n ] ; 5 uses
  %i.be = load ptr, ptr %.0119, align 8, !tbaa !29 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bg = call noalias nonnull ptr @ruby_xmalloc(i64 noundef %.0122) #21 ; 5 uses
  store ptr %i.bg, ptr %.0119, align 8, !tbaa !29
  store ptr %i.bg, ptr %.0120, align 8, !tbaa !29
  store ptr %i.bg, ptr %.0124, align 8, !tbaa !29
  %i.bh = getelementptr i8, ptr %i.bg, i64 %.0122
  br label %.sink.split

bb.q:                                             ; preds = %bb.o
  %i.bi = load ptr, ptr %.0123, align 8, !tbaa !29
  %i.bj = load ptr, ptr %.0124, align 8, !tbaa !29 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = icmp ult i64 %i.bm, %.0122
  br i1 %i.bn, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bo = load ptr, ptr %.0120, align 8, !tbaa !29 ; 2 uses
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bl, %i.bp
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.be, ptr noundef nonnull align 1 %i.bo, i64 noundef %i.bq, i1 noundef false) #19
  %i.br = load ptr, ptr %.0119, align 8, !tbaa !29 ; 3 uses
  %i.bs = load ptr, ptr %.0124, align 8, !tbaa !29
  %i.bt = load ptr, ptr %.0120, align 8, !tbaa !29
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = getelementptr i8, ptr %i.br, i64 %i.bw  ; 3 uses
  store ptr %i.bx, ptr %.0124, align 8, !tbaa !29
  store ptr %i.br, ptr %.0120, align 8, !tbaa !29
  %i.by = load ptr, ptr %.0123, align 8, !tbaa !29
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = icmp ult i64 %i.cb, %.0122
  br i1 %i.cc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = add i64 %i.bw, %.0122                   ; 3 uses
  %i.ce = icmp ult i64 %i.cd, %.0122
  br i1 %i.ce, label %bb.ab, label %.thread

.thread:                                          ; preds = %bb.s
  %i.cf = call nonnull ptr @ruby_xrealloc(ptr noundef %i.br, i64 noundef %i.cd) #24 ; 4 uses
  store ptr %i.cf, ptr %.0120, align 8, !tbaa !29
  %i.cg = load ptr, ptr %.0124, align 8, !tbaa !29
  %i.ch = load ptr, ptr %.0119, align 8, !tbaa !29
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = getelementptr i8, ptr %i.cf, i64 %i.ck  ; 2 uses
  store ptr %i.cl, ptr %.0124, align 8, !tbaa !29
  store ptr %i.cf, ptr %.0119, align 8, !tbaa !29
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cd
  br label %.sink.split

.sink.split:                                      ; preds = %bb.p, %.thread
  %.sink = phi ptr [ %i.cm, %.thread ], [ %i.bh, %bb.p ]
  %.ph = phi ptr [ %i.cl, %.thread ], [ %i.bg, %bb.p ]
  store ptr %.sink, ptr %.0123, align 8, !tbaa !29
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.q, %bb.r
  %i.cn = phi ptr [ %i.bx, %bb.r ], [ %i.bj, %bb.q ], [ %.ph, %.sink.split ] ; 2 uses
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.cn, ptr noundef nonnull readonly align 1 %.0117, i64 noundef range(i64 1, 0) %i.s, i1 noundef false) #19
  %.pre = load ptr, ptr %.0124, align 8, !tbaa !29
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.t, %bb.u
  %i.co = phi ptr [ %i.cn, %bb.t ], [ %.pre, %bb.u ]
  %i.cp = getelementptr i8, ptr %i.co, i64 %i.s   ; 3 uses
  store ptr %i.cp, ptr %.0124, align 8, !tbaa !29
  %.not = icmp eq ptr %.0118, null
  br i1 %.not, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %ruby_nonempty_memcpy.exit
  %i.cq = load ptr, ptr %.0118, align 8, !tbaa !62 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 68
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !64
  %i.ct = icmp eq i32 %i.cs, 2
  br i1 %i.ct, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.cu = getelementptr i8, ptr %i.cq, i64 60
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !69
  %i.cw = icmp slt i32 %i.cv, 9
  %i.cx = getelementptr i8, ptr %.0118, i64 56    ; 2 uses
  br i1 %i.cw, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !30
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.cz = phi ptr [ %i.cy, %bb.x ], [ %i.cx, %bb.w ]
  %i.da = getelementptr i8, ptr %.0118, i64 48    ; 3 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !87 ; 2 uses
  %.not.i133 = icmp eq i64 %i.db, 0
  br i1 %.not.i133, label %ruby_nonempty_memcpy.exit135, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr i8, ptr %.0118, i64 40
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !88
  %i.de = getelementptr i8, ptr %i.cz, i64 %i.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.cp, ptr noundef nonnull readonly align 1 %i.de, i64 noundef range(i64 1, 0) %i.db, i1 noundef false) #19
  %.pre137 = load i64, ptr %i.da, align 8, !tbaa !87
  %.pre138 = load ptr, ptr %.0124, align 8, !tbaa !29
  br label %ruby_nonempty_memcpy.exit135

ruby_nonempty_memcpy.exit135:                     ; preds = %bb.y, %bb.z
  %i.df = phi ptr [ %i.cp, %bb.y ], [ %.pre138, %bb.z ]
  %i.dg = phi i64 [ 0, %bb.y ], [ %.pre137, %bb.z ]
  %i.dh = getelementptr i8, ptr %i.df, i64 %i.dg
  store ptr %i.dh, ptr %.0124, align 8, !tbaa !29
  store i64 0, ptr %i.da, align 8, !tbaa !87
  br label %bb.aa

bb.aa:                                            ; preds = %ruby_nonempty_memcpy.exit135, %bb.v, %ruby_nonempty_memcpy.exit
  %i.di = icmp ne ptr %.0117, %1
  %i.dj = icmp ne ptr %.0117, %i.a
  %or.cond = and i1 %i.di, %i.dj
  br i1 %or.cond, label %.sink.split148, label %bb.ac

bb.ab:                                            ; preds = %bb.s, %bb.j
end_hunk_0
begin_hunk_1_@rb_econv_putback:bb.a
  %i.j = load i32, ptr %i.i, align 4, !tbaa !69
  %i.k = icmp slt i32 %i.j, 9
  %i.l = getelementptr i8, ptr %i.g, i64 56       ; 2 uses
  br i1 %i.k, label %ruby_nonempty_memcpy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %bb.b ]
  %i.o = getelementptr i8, ptr %i.g, i64 48       ; 3 uses
  %i.p = sext i32 %2 to i64                       ; 3 uses
  %i.q = getelementptr i8, ptr %i.g, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !88
  %i.s = getelementptr i8, ptr %i.n, i64 %i.r
  %i.t = load i64, ptr %i.o, align 8, !tbaa !87
  %i.u = getelementptr i8, ptr %i.s, i64 %i.t
  %i.v = sub nsw i64 0, %i.p
  %i.w = getelementptr i8, ptr %i.u, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull readonly align 1 %i.w, i64 noundef range(i64 1, 0) %i.p, i1 noundef false) #19
  %i.x = load i64, ptr %i.o, align 8, !tbaa !87
  %i.y = sub i64 %i.x, %i.p
  store i64 %i.y, ptr %i.o, align 8, !tbaa !87
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %ruby_nonempty_memcpy.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_econv_asciicompat_encoding(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.asciicompat_encoding_t, align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !20
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock_enter.exit

bb.b:                                             ; preds = %bb.a
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #19
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.a, %bb.b
  %i.d = load ptr, ptr @transcoder_table, align 8, !tbaa !11
  %i.e = ptrtoint ptr %0 to i64
  %i.f = call i32 @rb_st_lookup(ptr noundef %i.d, i64 noundef %i.e, ptr noundef nonnull %i.a) #19
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %rb_vm_lock_enter.exit9, label %bb.c

bb.c:                                             ; preds = %rb_vm_lock_enter.exit
  %i.g = load i64, ptr %i.a, align 8, !tbaa !25
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !93
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %rb_vm_lock_enter.exit9

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.l, align 8, !tbaa !98
  store ptr null, ptr %1, align 8, !tbaa !100
  %i.m = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = call ptr @rb_st_copy(ptr noundef nonnull %i.h) #19 ; 2 uses
  %i.o = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !20
  %.not.i.i7 = icmp eq ptr %i.o, null
  br i1 %.not.i.i7, label %bb.f, label %rb_vm_lock_leave.exit

bb.f:                                             ; preds = %bb.e
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.b) #19
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %bb.e, %bb.f
  %i.p = ptrtoint ptr %1 to i64
  %i.q = call i32 @rb_st_foreach(ptr noundef %i.n, ptr noundef nonnull @asciicompat_encoding_i, i64 noundef %i.p) #19 ; 0 uses
  call void @rb_st_free_table(ptr noundef %i.n) #19
  %i.r = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !20
  %.not.i.i8 = icmp eq ptr %i.r, null
  br i1 %.not.i.i8, label %bb.g, label %rb_vm_lock_leave.exit11

bb.g:                                             ; preds = %rb_vm_lock_leave.exit
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #19
  br label %rb_vm_lock_enter.exit9

bb.h:                                             ; preds = %bb.d
  %i.s = ptrtoint ptr %1 to i64
  %i.t = call i32 @rb_st_foreach(ptr noundef nonnull %i.h, ptr noundef nonnull @asciicompat_encoding_i, i64 noundef %i.s) #19 ; 0 uses
  br label %rb_vm_lock_enter.exit9

rb_vm_lock_enter.exit9:                           ; preds = %bb.g, %bb.c, %bb.h, %rb_vm_lock_enter.exit
  %.pr = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !20
  %.not.i.i10 = icmp eq ptr %.pr, null
  br i1 %.not.i.i10, label %bb.i, label %rb_vm_lock_leave.exit11

bb.i:                                             ; preds = %rb_vm_lock_enter.exit9
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.b) #19
  br label %rb_vm_lock_leave.exit11

rb_vm_lock_leave.exit11:                          ; preds = %rb_vm_lock_leave.exit, %rb_vm_lock_enter.exit9, %bb.i
  %i.u = load ptr, ptr %1, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %i.u
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare i32 @rb_st_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @rb_st_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @asciicompat_encoding_i(i64 %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr
  %i.b = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = load i8, ptr %i.c, align 1, !tbaa !30
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %load_transcoder_entry.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %load_transcoder_entry.exit.thread11

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.b, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 3 uses
  %.not22.i = icmp eq ptr %i.i, null
  br i1 %.not22.i, label %load_transcoder_entry.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #22 ; 3 uses
  %i.k = add i64 %i.j, 10                         ; 2 uses
  %i.l = tail call i64 @rb_str_new(ptr noundef null, i64 noundef %i.k) #19, !callees !36, !inline_history !101 ; 4 uses
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !38
  %i.o = and i64 %i.n, 8192
  %.not.i.i = icmp eq i64 %i.o, 0
  %i.p = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.e, %bb.d
  %i.r = phi ptr [ %i.q, %bb.e ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.r, ptr noundef nonnull align 1 dereferenceable(10) @transcoder_lib_prefix, i64 noundef range(i64 1, 0) 10, i1 noundef false) #19
  %.not.i24.i = icmp eq i64 %i.j, 0
  br i1 %.not.i24.i, label %load_transcoder_entry.exit, label %bb.f

bb.f:                                             ; preds = %RSTRING_PTR.exit.i
  %i.s = getelementptr i8, ptr %i.r, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.s, ptr noundef nonnull readonly align 1 %i.i, i64 noundef range(i64 1, 0) %i.j, i1 noundef false) #19
  br label %load_transcoder_entry.exit

load_transcoder_entry.exit:                       ; preds = %RSTRING_PTR.exit.i, %bb.f
  tail call void @rb_str_set_len(i64 noundef %i.l, i64 noundef %i.k) #19
  tail call void @rb_obj_freeze_inline(i64 noundef %i.l) #19
  %i.t = tail call i32 @rb_require_internal_silent(i64 noundef %i.l) #19 ; 0 uses
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !22 ; 2 uses
  %.not = icmp eq ptr %.pre.i, null
  br i1 %.not, label %load_transcoder_entry.exit.thread, label %load_transcoder_entry.exit.thread11

load_transcoder_entry.exit.thread11:              ; preds = %bb.b, %load_transcoder_entry.exit
  %.0.i14 = phi ptr [ %.pre.i, %load_transcoder_entry.exit ], [ %i.g, %bb.b ] ; 2 uses
  %i.u = getelementptr i8, ptr %.0.i14, i64 68
  %i.v = load i32, ptr %i.u, align 4, !tbaa !64
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.g, label %load_transcoder_entry.exit.thread

bb.g:                                             ; preds = %load_transcoder_entry.exit.thread11
  %i.x = getelementptr i8, ptr %.0.i14, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19
  store ptr %i.y, ptr %i.a, align 8, !tbaa !100
  br label %load_transcoder_entry.exit.thread

load_transcoder_entry.exit.thread:                ; preds = %bb.c, %load_transcoder_entry.exit, %load_transcoder_entry.exit.thread11, %bb.a, %bb.g
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.g ], [ 0, %load_transcoder_entry.exit.thread11 ], [ 0, %load_transcoder_entry.exit ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_econv_append(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.d = getelementptr i8, ptr %0, i64 176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102  ; 3 uses
  %i.f = icmp eq i64 %3, 4
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @rb_str_buf_new(i64 noundef %2) #19 ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @rb_enc_associate(i64 noundef %i.g, ptr noundef nonnull %i.e) #19 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.i = tail call ptr @rb_enc_get(i64 noundef %3) #19
  %i.j = tail call i32 @rb_enc_str_coderange(i64 noundef %3) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.050 = phi i64 [ %3, %bb.d ], [ %i.g, %bb.c ], [ %i.g, %bb.b ] ; 6 uses
  %.048 = phi i32 [ %i.j, %bb.d ], [ 1048576, %bb.c ], [ 1048576, %bb.b ]
  %.047 = phi ptr [ %i.i, %bb.d ], [ %i.e, %bb.c ], [ null, %bb.b ]
  %i.k = getelementptr i8, ptr %0, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51   ; 2 uses
  %.not54 = icmp eq ptr %i.l, null
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.n = getelementptr i8, ptr %i.m, i64 64
  %i.o = load i32, ptr %i.n, align 8, !tbaa !70
  %i.p = sext i32 %i.o to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.049 = phi i64 [ %i.p, %bb.f ], [ 1, %bb.e ]
  %i.q = inttoptr i64 %.050 to ptr                ; 5 uses
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %i.s = getelementptr i8, ptr %i.q, i64 24       ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %rb_econv_check_error.exit, %bb.g
  %.1 = phi i32 [ %.048, %bb.g ], [ %.2, %rb_econv_check_error.exit ] ; 4 uses
  %.046 = phi i64 [ %2, %bb.g ], [ %i.ba, %rb_econv_check_error.exit ] ; 3 uses
  %.0 = phi ptr [ %1, %bb.g ], [ %i.ar, %rb_econv_check_error.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.t = load i64, ptr %i.r, align 8, !tbaa !103  ; 4 uses
  %i.u = call i64 @rb_str_capacity(i64 noundef %.050) #22
  %i.v = sub i64 %i.u, %i.t
  %i.w = add i64 %.046, %.049                     ; 3 uses
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = add i64 %i.w, %i.t
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr @rb_eArgError, align 8, !tbaa !25
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.4) #20
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @rb_str_modify_expand(i64 noundef %.050, i64 noundef %i.w) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  store ptr %.0, ptr %i.a, align 8, !tbaa !29
  %i.ab = getelementptr i8, ptr %.0, i64 %.046
  %i.ac = load i64, ptr %i.q, align 8, !tbaa !38
  %i.ad = and i64 %i.ac, 8192
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !30
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.l, %bb.m
  %i.af = phi ptr [ %i.ae, %bb.m ], [ %i.s, %bb.l ] ; 2 uses
  %i.ag = call i64 @rb_str_capacity(i64 noundef %.050) #22
  %i.ah = getelementptr i8, ptr %i.af, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.af, i64 %i.t   ; 3 uses
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !29
  %i.aj = call i32 @rb_econv_convert(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.ab, ptr noundef nonnull %i.b, ptr noundef %i.ah, i32 noundef %4)
  %i.ak = call i32 @llvm.fshl.i32(i32 %.1, i32 %.1, i32 12)
  %.off = add i32 %i.ak, -1
  %switch = icmp ult i32 %.off, 2
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  br i1 %switch, label %bb.n, label %bb.o

bb.n:                                             ; preds = %RSTRING_PTR.exit
  store i32 %.1, ptr %i.c, align 4, !tbaa !7
  %i.al = call i64 @rb_str_coderange_scan_restartable(ptr noundef %i.ai, ptr noundef %.pre, ptr noundef %.047, ptr noundef nonnull %i.c) #19 ; 0 uses
  %i.am = load i32, ptr %i.c, align 4, !tbaa !7   ; 2 uses
  %i.an = load i64, ptr %i.q, align 8, !tbaa !38
  %i.ao = and i64 %i.an, -3145729
  %i.ap = zext i32 %i.am to i64
  %i.aq = or i64 %i.ao, %i.ap
  store i64 %i.aq, ptr %i.q, align 8, !tbaa !38
  br label %bb.o

bb.o:                                             ; preds = %RSTRING_PTR.exit, %bb.n
  %.2 = phi i32 [ %.1, %RSTRING_PTR.exit ], [ %i.am, %bb.n ]
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !29  ; 2 uses
  %i.as = ptrtoint ptr %.pre to i64
  %i.at = ptrtoint ptr %i.ai to i64
  %i.au = sub i64 %i.t, %i.at
  %i.av = add i64 %i.au, %i.as
  call void @rb_str_set_len(i64 noundef %.050, i64 noundef %i.av) #19
  %i.aw = call fastcc i64 @make_econv_exception(ptr noundef readonly %0) ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4
  br i1 %i.ax, label %rb_econv_check_error.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @rb_exc_raise(i64 noundef %i.aw) #20
  unreachable

rb_econv_check_error.exit:                        ; preds = %bb.o
  %i.ay = ptrtoint ptr %.0 to i64
  %i.az = ptrtoint ptr %i.ar to i64
  %.neg = add i64 %.046, %i.ay
  %i.ba = sub i64 %.neg, %i.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.bb = icmp eq i32 %i.aj, 2
  br i1 %i.bb, label %bb.h, label %bb.q, !llvm.loop !105

bb.q:                                             ; preds = %rb_econv_check_error.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i64 %.050
}

declare i64 @rb_str_buf_new(i64 noundef) local_unnamed_addr #1

declare i64 @rb_enc_associate(i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @rb_enc_get(i64 noundef) local_unnamed_addr #1

declare i32 @rb_enc_str_coderange(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_str_capacity(i64 noundef) local_unnamed_addr #5

declare void @rb_str_modify_expand(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_coderange_scan_restartable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_str_set_len(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_econv_check_error(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @make_econv_exception(ptr noundef %0) ; 2 uses
  %i.b = icmp eq i64 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @rb_exc_raise(i64 noundef %i.a) #20
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_econv_substr_append(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = tail call i64 @rb_str_new_frozen(i64 noundef %1) #19 ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !25
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38
  %i.f = and i64 %i.e, 8192
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.g, %bb.a ]
  %i.j = getelementptr i8, ptr %i.i, i64 %2
  %i.k = tail call i64 @rb_econv_append(ptr noundef %0, ptr noundef %i.j, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr %i.a, ptr %i.b, align 8, !tbaa !106
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #19, !srcloc !107
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.m = load volatile i64, ptr %i.l, align 8, !tbaa !25 ; 0 uses
  ret i64 %i.k
}

declare i64 @rb_str_new_frozen(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_econv_str_append(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = inttoptr i64 %1 to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = tail call i64 @rb_str_new_frozen(i64 noundef %1) #19 ; 2 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !25
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !38
  %i.i = and i64 %i.h, 8192
  %.not.i.i = icmp eq i64 %i.i, 0
  %i.j = getelementptr i8, ptr %i.g, i64 24       ; 2 uses
  br i1 %.not.i.i, label %rb_econv_substr_append.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30
  br label %rb_econv_substr_append.exit

rb_econv_substr_append.exit:                      ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ %i.j, %bb.a ]
  %i.m = tail call i64 @rb_econv_append(ptr noundef %0, ptr noundef %i.l, i64 noundef %i.e, i64 noundef %2, i32 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr %i.a, ptr %i.b, align 8, !tbaa !106
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #19, !srcloc !107
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.o = load volatile i64, ptr %i.n, align 8, !tbaa !25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.m
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_econv_substr_convert(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call i64 @rb_str_new_frozen(i64 noundef %1) #19 ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !25
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38
  %i.f = and i64 %i.e, 8192
  %.not.i.i = icmp eq i64 %i.f, 0
  %i.g = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  br i1 %.not.i.i, label %rb_econv_substr_append.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  br label %rb_econv_substr_append.exit

rb_econv_substr_append.exit:                      ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.g, %bb.a ]
  %i.j = getelementptr i8, ptr %i.i, i64 %2
  %i.k = tail call i64 @rb_econv_append(ptr noundef %0, ptr noundef %i.j, i64 noundef %3, i64 noundef 4, i32 noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr %i.a, ptr %i.b, align 8, !tbaa !106
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #19, !srcloc !107
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.m = load volatile i64, ptr %i.l, align 8, !tbaa !25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.k
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_econv_str_convert(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = inttoptr i64 %1 to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = tail call i64 @rb_str_new_frozen(i64 noundef %1) #19 ; 2 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !25
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !38
  %i.i = and i64 %i.h, 8192
  %.not.i.i = icmp eq i64 %i.i, 0
  %i.j = getelementptr i8, ptr %i.g, i64 24       ; 2 uses
  br i1 %.not.i.i, label %rb_econv_substr_append.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30
  br label %rb_econv_substr_append.exit

rb_econv_substr_append.exit:                      ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ %i.j, %bb.a ]
  %i.m = tail call i64 @rb_econv_append(ptr noundef %0, ptr noundef %i.l, i64 noundef %i.e, i64 noundef 4, i32 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr %i.a, ptr %i.b, align 8, !tbaa !106
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #19, !srcloc !107
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.o = load volatile i64, ptr %i.n, align 8, !tbaa !25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.m
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -1, 1) i32 @rb_econv_decorate_at_first(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
end_hunk_1
