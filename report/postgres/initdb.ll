Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/initdb?download=true
inline.NumInlined: 60
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@setup_locale_encoding:bb.a

.lr.ph.i.preheader.i:                             ; preds = %bb.ad
  %i.bx = call i32 @uloc_countAvailable_74() #17
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i, label %.critedge.i.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.i, %.lr.ph.backedge.i.i
  %.015.i13.i = phi i32 [ %.015.be.i.i, %.lr.ph.backedge.i.i ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.bz = call ptr @uloc_getAvailable_74(i32 noundef %.015.i13.i) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i32 0, ptr %i.a, align 4
  %i.ca = call i32 @uloc_getLanguage_74(ptr noundef %i.bz, ptr noundef nonnull %i.c, i32 noundef 12, ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.cb = load i32, ptr %i.a, align 4             ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  %i.cd = icmp eq i32 %i.cb, -124
  %or.cond3.i.i = or i1 %i.cc, %i.cd
  br i1 %or.cond3.i.i, label %bb.ae, label %.split.i.i

.split.i.i:                                       ; preds = %.lr.ph.i
  %i.ce = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.c) #19
  %i.cf = icmp eq i32 %i.ce, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br i1 %i.cf, label %icu_validate_locale.exit.i, label %.lr.ph.backedge.i.i

.lr.ph.backedge.i.i:                              ; preds = %bb.ae, %.split.i.i
  %.015.be.i.i = add nuw nsw i32 %.015.i13.i, 1   ; 2 uses
  %i.cg = call i32 @uloc_countAvailable_74() #17
  %i.ch = icmp slt i32 %.015.be.i.i, %i.cg
  br i1 %i.ch, label %.lr.ph.i, label %.critedge.i.i, !llvm.loop !5

bb.ae:                                            ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %.lr.ph.backedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.backedge.i.i, %.lr.ph.i.preheader.i
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.164, ptr noundef %.010.i.i, ptr noundef nonnull %i.b) #17
  call void @exit(i32 noundef 1) #18
  unreachable

icu_validate_locale.exit.i:                       ; preds = %.split.i.i, %bb.ad, %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.pre = load i8, ptr @locale_provider, align 1
  br label %setlocales.exit

setlocales.exit:                                  ; preds = %bb.r, %icu_validate_locale.exit.i
  %i.ci = phi i8 [ %i.ac, %bb.r ], [ %.pre, %icu_validate_locale.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  %i.cj = icmp eq i8 %i.ci, 99
  br i1 %i.cj, label %bb.af, label %bb.an

bb.af:                                            ; preds = %setlocales.exit
  %i.ck = load ptr, ptr @lc_ctype, align 8        ; 7 uses
  %i.cl = load ptr, ptr @lc_collate, align 8
  %i.cm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ck, ptr noundef nonnull dereferenceable(1) %i.cl) #19
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.co = load ptr, ptr @lc_time, align 8
  %i.cp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ck, ptr noundef nonnull dereferenceable(1) %i.co) #19
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.cr = load ptr, ptr @lc_numeric, align 8
  %i.cs = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ck, ptr noundef nonnull dereferenceable(1) %i.cr) #19
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.cu = load ptr, ptr @lc_monetary, align 8
  %i.cv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ck, ptr noundef nonnull dereferenceable(1) %i.cu) #19
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.cx = load ptr, ptr @lc_messages, align 8
  %i.cy = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ck, ptr noundef nonnull dereferenceable(1) %i.cx) #19
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.da = load ptr, ptr @datlocale, align 8       ; 2 uses
  %.not = icmp eq ptr %i.da, null
  br i1 %.not, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.db = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ck, ptr noundef nonnull dereferenceable(1) %i.da) #19
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dd = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.ck) #17 ; 0 uses
  br label %bb.aq

bb.an:                                            ; preds = %setlocales.exit.thread, %bb.al, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %setlocales.exit
  %i.de = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.10) #17 ; 0 uses
  %i.df = load i8, ptr @locale_provider, align 1
  %switch.tableidx = add i8 %i.df, -98            ; 2 uses
  %i.dg = icmp ult i8 %switch.tableidx, 8
  br i1 %i.dg, label %switch.lookup, label %collprovider_name.exit

switch.lookup:                                    ; preds = %bb.an
  %i.dh = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.collprovider_name, i64 %i.dh
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %collprovider_name.exit

collprovider_name.exit:                           ; preds = %bb.an, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.165, %bb.an ]
  %i.di = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.11, ptr noundef nonnull %.0.i) #17 ; 0 uses
  %i.dj = load i8, ptr @locale_provider, align 1
  %.not10 = icmp eq i8 %i.dj, 99
  br i1 %.not10, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %collprovider_name.exit
  %i.dk = load ptr, ptr @datlocale, align 8
  %i.dl = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.12, ptr noundef %i.dk) #17 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %collprovider_name.exit
  %i.dm = load ptr, ptr @lc_collate, align 8
  %i.dn = load ptr, ptr @lc_ctype, align 8
  %i.do = load ptr, ptr @lc_messages, align 8
  %i.dp = load ptr, ptr @lc_monetary, align 8
  %i.dq = load ptr, ptr @lc_numeric, align 8
  %i.dr = load ptr, ptr @lc_time, align 8
  %i.ds = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.13, ptr noundef %i.dm, ptr noundef %i.dn, ptr noundef %i.do, ptr noundef %i.dp, ptr noundef %i.dq, ptr noundef %i.dr) #17 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %i.dt = load ptr, ptr @encoding, align 8        ; 4 uses
  %.not11 = icmp eq ptr %i.dt, null
  br i1 %.not11, label %bb.ar, label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  %i.du = load ptr, ptr @lc_ctype, align 8
  %i.dv = call i32 @pg_get_encoding_from_locale(ptr noundef %i.du, i1 noundef zeroext true) #17 ; 2 uses
  %i.dw = load i8, ptr @locale_provider, align 1
  %i.dx = icmp eq i8 %i.dw, 105
  %i.dy = icmp eq i32 %i.dv, 0
  %or.cond = select i1 %i.dx, i1 %i.dy, i1 false
  %spec.store.select = select i1 %or.cond, i32 6, i32 %i.dv ; 6 uses
  %i.dz = icmp eq i32 %spec.store.select, -1
  br i1 %i.dz, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ea = load ptr, ptr @lc_ctype, align 8
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef %i.ea) #17
  %i.eb = load ptr, ptr @progname, align 8
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 2, ptr noundef nonnull @.str.15, ptr noundef %i.eb) #17
  %i.ec = load ptr, ptr @progname, align 8
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 2, ptr noundef nonnull @.str.16, ptr noundef %i.ec) #17
  call void @exit(i32 noundef 1) #18
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.ed = call i32 @pg_valid_server_encoding_id_private(i32 noundef %spec.store.select) #17
  %.not12 = icmp eq i32 %i.ed, 0
  br i1 %.not12, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ee = load ptr, ptr @lc_ctype, align 8
  %i.ef = call ptr @pg_encoding_to_char_private(i32 noundef %spec.store.select) #17
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef %i.ee, ptr noundef %i.ef) #17
  %i.eg = call ptr @pg_encoding_to_char_private(i32 noundef %spec.store.select) #17
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 1, ptr noundef nonnull @.str.18, ptr noundef %i.eg) #17
  %i.eh = load ptr, ptr @progname, align 8
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 2, ptr noundef nonnull @.str.19, ptr noundef %i.eh) #17
  call void @exit(i32 noundef 1) #18
  unreachable

bb.av:                                            ; preds = %bb.at
  store i32 %spec.store.select, ptr @encodingid, align 4
  %i.ei = call ptr @pg_encoding_to_char_private(i32 noundef %spec.store.select) #17
  %i.ej = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.20, ptr noundef %i.ei) #17 ; 0 uses
  %.pre14 = load i32, ptr @encodingid, align 4
  br label %bb.az

bb.aw:                                            ; preds = %bb.aq
  %i.ek = load i8, ptr %i.dt, align 1
  %.not.i13 = icmp eq i8 %i.ek, 0
  br i1 %.not.i13, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.el = call i32 @pg_valid_server_encoding_private(ptr noundef nonnull %i.dt) #17 ; 3 uses
  %i.em = icmp sgt i32 %i.el, -1
  br i1 %i.em, label %get_encoding_id.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.166, ptr noundef nonnull %i.dt) #17
  call void @exit(i32 noundef 1) #18
  unreachable

get_encoding_id.exit:                             ; preds = %bb.ax
  store i32 %i.el, ptr @encodingid, align 4
  br label %bb.az

bb.az:                                            ; preds = %get_encoding_id.exit, %bb.av
  %i.en = phi i32 [ %i.el, %get_encoding_id.exit ], [ %.pre14, %bb.av ]
  %i.eo = load ptr, ptr @lc_ctype, align 8
  %0 = call fastcc zeroext i1 @check_locale_encoding(ptr noundef %i.eo, i32 noundef %i.en)
  br i1 %0, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ep = load ptr, ptr @lc_collate, align 8
  %i.eq = load i32, ptr @encodingid, align 4
  %1 = call fastcc zeroext i1 @check_locale_encoding(ptr noundef %i.ep, i32 noundef %i.eq)
  br i1 %1, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  call void @exit(i32 noundef 1) #18
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.er = load i8, ptr @locale_provider, align 1
  switch i8 %i.er, label %.thread [
    i8 98, label %bb.bd
    i8 105, label %bb.bh
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.es = load ptr, ptr @datlocale, align 8       ; 3 uses
  %i.et = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.es, ptr noundef nonnull dereferenceable(8) @.str.21) #19
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ev = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.es, ptr noundef nonnull dereferenceable(16) @.str.22) #19
  %i.ew = icmp eq i32 %i.ev, 0
  %i.ex = load i32, ptr @encodingid, align 4
  %i.ey = icmp ne i32 %i.ex, 6
  %or.cond3 = select i1 %i.ew, i1 %i.ey, i1 false
  br i1 %or.cond3, label %bb.bg, label %.thread

bb.bf:                                            ; preds = %bb.bd
  %.old = load i32, ptr @encodingid, align 4
  %.old2.not = icmp eq i32 %.old, 6
  br i1 %.old2.not, label %.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.es, ptr noundef nonnull @.str.24) #17
  call void @exit(i32 noundef 1) #18
  unreachable

bb.bh:                                            ; preds = %bb.bc
  %i.ez = load i32, ptr @encodingid, align 4      ; 2 uses
  %i.fa = call zeroext i1 @is_encoding_supported_by_icu(i32 noundef range(i32 0, -1) %i.ez) #17
  br i1 %i.fa, label %.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.168) #17
  %i.fb = call ptr @pg_encoding_to_char_private(i32 noundef range(i32 0, -1) %i.ez) #17
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 1, ptr noundef nonnull @.str.171, ptr noundef %i.fb) #17
  %i.fc = load ptr, ptr @progname, align 8
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 2, ptr noundef nonnull @.str.170, ptr noundef %i.fc) #17
  call void @exit(i32 noundef 1) #18
  unreachable

.thread:                                          ; preds = %bb.bc, %bb.bh, %bb.bf, %bb.be
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @pg_printf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @collprovider_name(i8 noundef signext range(i8 98, 106) %0) unnamed_addr #9 {
switch.lookup:
  %i.a = zext nneg i8 %0 to i64
  %i.b = getelementptr [8 x i8], ptr @switch.table.collprovider_name, i64 %i.a
  %switch.gep = getelementptr i8, ptr %i.b, i64 -784
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
}

declare i32 @pg_get_encoding_from_locale(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare i32 @pg_valid_server_encoding_id_private(i32 noundef) local_unnamed_addr #4

declare ptr @pg_encoding_to_char_private(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @check_locale_encoding(ptr noundef %0, i32 noundef range(i32 0, -1) %1) unnamed_addr #0 {
  %3 = tail call i32 @pg_get_encoding_from_locale(ptr noundef %0, i1 noundef zeroext true) #17 ; 3 uses
  %4 = icmp eq i32 %3, %1
  %5 = add i32 %3, 1
  %6 = icmp ult i32 %5, 2
  %or.cond3 = or i1 %4, %6
  %7 = icmp eq i32 %1, 0
  %or.cond5 = or i1 %7, %or.cond3                 ; 2 uses
  br i1 %or.cond5, label %12, label %8

8:                                                ; preds = %2
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.168) #17
  %9 = tail call ptr @pg_encoding_to_char_private(i32 noundef %1) #17
  %10 = tail call ptr @pg_encoding_to_char_private(i32 noundef %3) #17
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 1, ptr noundef nonnull @.str.169, ptr noundef %9, ptr noundef %10) #17
  %11 = load ptr, ptr @progname, align 8
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 2, ptr noundef nonnull @.str.170, ptr noundef %11) #17
  br label %12

12:                                               ; preds = %2, %8
  ret i1 %or.cond5
}

; Function Attrs: nounwind uwtable
define dso_local void @setup_data_file_paths() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @share_path, align 8
  %i.b = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.58, ptr noundef %i.a, ptr noundef nonnull @.str.25) #17
  store ptr %i.b, ptr @bki_file, align 8
  %i.c = load ptr, ptr @share_path, align 8
  %i.d = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.58, ptr noundef %i.c, ptr noundef nonnull @.str.26) #17
  store ptr %i.d, ptr @hba_file, align 8
  %i.e = load ptr, ptr @share_path, align 8
  %i.f = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.58, ptr noundef %i.e, ptr noundef nonnull @.str.27) #17
  store ptr %i.f, ptr @ident_file, align 8
  %i.g = load ptr, ptr @share_path, align 8
  %i.h = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.58, ptr noundef %i.g, ptr noundef nonnull @.str.28) #17
  store ptr %i.h, ptr @hosts_file, align 8
  %i.i = load ptr, ptr @share_path, align 8
  %i.j = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.58, ptr noundef %i.i, ptr noundef nonnull @.str.29) #17
  store ptr %i.j, ptr @conf_file, align 8
  %i.k = load ptr, ptr @share_path, align 8
  %i.l = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.58, ptr noundef %i.k, ptr noundef nonnull @.str.30) #17
  store ptr %i.l, ptr @dictionary_file, align 8
  %i.m = load ptr, ptr @share_path, align 8
  %i.n = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.58, ptr noundef %i.m, ptr noundef nonnull @.str.31) #17
  store ptr %i.n, ptr @info_schema_file, align 8
  %i.o = load ptr, ptr @share_path, align 8
  %i.p = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.58, ptr noundef %i.o, ptr noundef nonnull @.str.32) #17
  store ptr %i.p, ptr @features_file, align 8
  %i.q = load ptr, ptr @share_path, align 8
  %i.r = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.58, ptr noundef %i.q, ptr noundef nonnull @.str.33) #17
  store ptr %i.r, ptr @system_constraints_file, align 8
  %i.s = load ptr, ptr @share_path, align 8
  %i.t = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.58, ptr noundef %i.s, ptr noundef nonnull @.str.34) #17
  store ptr %i.t, ptr @system_functions_file, align 8
  %i.u = load ptr, ptr @share_path, align 8
  %i.v = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.58, ptr noundef %i.u, ptr noundef nonnull @.str.35) #17
  store ptr %i.v, ptr @system_views_file, align 8
  %.b2 = load i1, ptr @show_setting, align 1
  %.b3 = load i1, ptr @debug, align 1
  %or.cond = select i1 %.b2, i1 true, i1 %.b3
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr @stderr, align 8
  %i.x = load ptr, ptr @pg_data, align 8
  %i.y = load ptr, ptr @share_path, align 8
  %i.z = load ptr, ptr @username, align 8
  %i.aa = load ptr, ptr @bki_file, align 8
  %i.ab = load ptr, ptr @conf_file, align 8
  %i.ac = load ptr, ptr @hba_file, align 8
  %i.ad = load ptr, ptr @ident_file, align 8
  %i.ae = load ptr, ptr @hosts_file, align 8
  %i.af = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef %i.x, ptr noundef %i.y, ptr noundef nonnull @bin_path, ptr noundef %i.z, ptr noundef %i.aa, ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef %i.ad, ptr noundef %i.ae) #17 ; 0 uses
  %.b = load i1, ptr @show_setting, align 1
  br i1 %.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @exit(i32 noundef 0) #20
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.ag = load ptr, ptr @bki_file, align 8
  tail call fastcc void @check_input(ptr noundef %i.ag)
  %i.ah = load ptr, ptr @hba_file, align 8
  tail call fastcc void @check_input(ptr noundef %i.ah)
  %i.ai = load ptr, ptr @ident_file, align 8
  tail call fastcc void @check_input(ptr noundef %i.ai)
  %i.aj = load ptr, ptr @hosts_file, align 8
  tail call fastcc void @check_input(ptr noundef %i.aj)
  %i.ak = load ptr, ptr @conf_file, align 8
  tail call fastcc void @check_input(ptr noundef %i.ak)
  %i.al = load ptr, ptr @dictionary_file, align 8
  tail call fastcc void @check_input(ptr noundef %i.al)
  %i.am = load ptr, ptr @info_schema_file, align 8
  tail call fastcc void @check_input(ptr noundef %i.am)
  %i.an = load ptr, ptr @features_file, align 8
  tail call fastcc void @check_input(ptr noundef %i.an)
  %i.ao = load ptr, ptr @system_constraints_file, align 8
  tail call fastcc void @check_input(ptr noundef %i.ao)
  %i.ap = load ptr, ptr @system_functions_file, align 8
  tail call fastcc void @check_input(ptr noundef %i.ap)
  %i.aq = load ptr, ptr @system_views_file, align 8
  tail call fastcc void @check_input(ptr noundef %i.aq)
  ret void
}

declare i32 @pg_fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @check_input(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = call i32 @stat(ptr noundef %0, ptr noundef nonnull %1) #17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #21
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 2
  %.str.172..str.174 = select i1 %i.d, ptr @.str.172, ptr @.str.174
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull %.str.172..str.174, ptr noundef %0) #17
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 2, ptr noundef nonnull @.str.173) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 61440
  %i.h = icmp eq i32 %i.g, 32768
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.175, ptr noundef %0) #17
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 2, ptr noundef nonnull @.str.173) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @setup_text_search() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @default_text_search_config, align 8
  %.not = icmp eq ptr %i.a, null
  %i.b = load ptr, ptr @lc_ctype, align 8
  %i.c = tail call fastcc ptr @find_matching_ts_config(ptr noundef %i.b) ; 4 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr @default_text_search_config, align 8
  %.not2 = icmp eq ptr %i.c, null
  br i1 %.not2, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @lc_ctype, align 8
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 2, i32 noundef 0, ptr noundef nonnull @.str.38, ptr noundef %i.d) #17
  store ptr @.str.39, ptr @default_text_search_config, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr @lc_ctype, align 8
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 3, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef %i.f) #17
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.g = load ptr, ptr @default_text_search_config, align 8 ; 2 uses
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %i.g) #19
  %.not3 = icmp eq i32 %i.h, 0
  br i1 %.not3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = load ptr, ptr @lc_ctype, align 8
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 3, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef nonnull %i.g, ptr noundef %i.i) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f, %bb.b, %bb.c
  %i.j = load ptr, ptr @default_text_search_config, align 8
  %i.k = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.42, ptr noundef %i.j) #17 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_matching_ts_config(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @pg_strdup(ptr noundef nonnull @.str.154) #17
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @pg_strdup(ptr noundef nonnull %0) #17 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ %i.e, %bb.e ]  ; 3 uses
  %i.d = load i8, ptr %.0, align 1
  switch i8 %i.d, label %bb.e [
    i8 0, label %.critedge
    i8 95, label %.critedge
    i8 45, label %.critedge
    i8 46, label %.critedge
    i8 64, label %.critedge
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.d, !llvm.loop !6

.critedge:                                        ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  store i8 0, ptr %.0, align 1
end_hunk_0
