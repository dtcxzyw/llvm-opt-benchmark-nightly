Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pg_locale?download=true
inline.NumInlined: 54
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@check_locale:bb.a

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.t = load ptr, ptr %2, align 8
  tail call void @pfree(ptr noundef %i.t) #19
  store ptr null, ptr %2, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.l, %bb.m, %bb.n, %bb.f, %bb.b, %bb.c, %bb.q
  %.0 = phi i1 [ false, %bb.f ], [ false, %bb.q ], [ false, %bb.b ], [ false, %bb.c ], [ %i.i, %bb.n ], [ %i.i, %bb.m ], [ %i.i, %bb.l ]
  ret i1 %.0
}

declare zeroext i1 @pg_is_ascii(ptr noundef) local_unnamed_addr #4

declare i32 @errcode(i32 noundef) local_unnamed_addr #4

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #4

declare ptr @pstrdup(ptr noundef) local_unnamed_addr #4

declare void @pfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @check_locale_monetary(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @check_locale(i32 noundef 4, ptr noundef %i.a, ptr noundef null)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @assign_locale_monetary(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #6 {
bb.a:
  store i1 false, ptr @CurrentLocaleConvValid, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @check_locale_numeric(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @check_locale(i32 noundef 1, ptr noundef %i.a, ptr noundef null)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @assign_locale_numeric(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #6 {
bb.a:
  store i1 false, ptr @CurrentLocaleConvValid, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @check_locale_time(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @check_locale(i32 noundef 2, ptr noundef %i.a, ptr noundef null)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @assign_locale_time(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #6 {
bb.a:
  store i1 false, ptr @CurrentLCTimeValid, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @check_locale_messages(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %2, 0
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @check_locale(i32 noundef 5, ptr noundef nonnull %i.a, ptr noundef null)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @assign_locale_messages(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @setlocale(i32 noundef 5, ptr noundef %0) #19 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %pg_perm_setlocale.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @setenv(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, i32 noundef 1) #19 ; 0 uses
  br label %pg_perm_setlocale.exit

pg_perm_setlocale.exit:                           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef nonnull ptr @PGLC_localeconv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.lconv, align 8              ; 15 uses
  %1 = alloca %struct.lconv, align 8              ; 17 uses
  %2 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 0, ptr %i.a, align 8
  %.b = load i1, ptr @CurrentLocaleConvValid, align 1
  br i1 %.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.b34 = load i1, ptr @PGLC_localeconv.CurrentLocaleConvAllocated, align 1
  br i1 %.b34, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr @PGLC_localeconv.CurrentLocaleConv, align 8
  call void @free(ptr noundef %i.b) #19
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PGLC_localeconv.CurrentLocaleConv, i64 8), align 8
  call void @free(ptr noundef %i.c) #19
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PGLC_localeconv.CurrentLocaleConv, i64 16), align 8
  call void @free(ptr noundef %i.d) #19
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PGLC_localeconv.CurrentLocaleConv, i64 24), align 8
  call void @free(ptr noundef %i.e) #19
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PGLC_localeconv.CurrentLocaleConv, i64 32), align 8
  call void @free(ptr noundef %i.f) #19
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PGLC_localeconv.CurrentLocaleConv, i64 40), align 8
  call void @free(ptr noundef %i.g) #19
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PGLC_localeconv.CurrentLocaleConv, i64 48), align 8
  call void @free(ptr noundef %i.h) #19
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PGLC_localeconv.CurrentLocaleConv, i64 56), align 8
  call void @free(ptr noundef %i.i) #19
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PGLC_localeconv.CurrentLocaleConv, i64 64), align 8
  call void @free(ptr noundef %i.j) #19
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PGLC_localeconv.CurrentLocaleConv, i64 72), align 8
  call void @free(ptr noundef %i.k) #19
  store i1 false, ptr @PGLC_localeconv.CurrentLocaleConvAllocated, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load ptr, ptr @locale_monetary, align 8
  %i.m = load ptr, ptr @locale_numeric, align 8
  %i.n = call i32 @pg_localeconv_r(ptr noundef %i.l, ptr noundef %i.m, ptr noundef nonnull %0) #19
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #20 ; 0 uses
  %i.p = load ptr, ptr @locale_monetary, align 8
  %i.q = load ptr, ptr @locale_numeric, align 8
  %i.r = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.10, ptr noundef %i.p, ptr noundef %i.q) #19 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.7, i32 noundef 534, ptr noundef nonnull @__func__.PGLC_localeconv) #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %0, align 8
  %i.t = call noalias ptr @strdup(ptr noundef %i.s) #19 ; 2 uses
  store ptr %i.t, ptr %1, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noalias ptr @strdup(ptr noundef %i.v) #19 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call noalias ptr @strdup(ptr noundef %i.z) #19 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noalias ptr @strdup(ptr noundef %i.ad) #19 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noalias ptr @strdup(ptr noundef %i.ah) #19 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noalias ptr @strdup(ptr noundef %i.al) #19 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noalias ptr @strdup(ptr noundef %i.ap) #19 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call noalias ptr @strdup(ptr noundef %i.at) #19 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call noalias ptr @strdup(ptr noundef %i.ax) #19 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noalias ptr @strdup(ptr noundef %i.bb) #19 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bg = load <8 x i8>, ptr %i.be, align 8
  store <8 x i8> %i.bg, ptr %i.bf, align 8
  call void @pg_localeconv_free(ptr noundef nonnull %0) #19
  %i.bh = insertelement <8 x ptr> poison, ptr %i.t, i64 0
  %i.bi = insertelement <8 x ptr> %i.bh, ptr %i.w, i64 1
  %i.bj = insertelement <8 x ptr> %i.bi, ptr %i.aa, i64 2
  %i.bk = insertelement <8 x ptr> %i.bj, ptr %i.ae, i64 3
  %i.bl = insertelement <8 x ptr> %i.bk, ptr %i.ai, i64 4
  %i.bm = insertelement <8 x ptr> %i.bl, ptr %i.am, i64 5
  %i.bn = insertelement <8 x ptr> %i.bm, ptr %i.aq, i64 6
  %i.bo = insertelement <8 x ptr> %i.bn, ptr %i.au, i64 7
  %.fr = freeze <8 x ptr> %i.bo
  %i.bp = icmp ne ptr %i.ay, null
  %i.bq = icmp ne ptr %i.bc, null
  %i.br = icmp eq <8 x ptr> %.fr, splat (ptr null)
  %i.bs = bitcast <8 x i1> %i.br to i8
  %i.bt = icmp eq i8 %i.bs, 0
  %op.rdx = select i1 %i.bt, i1 %i.bp, i1 false
  %op.rdx56 = select i1 %op.rdx, i1 %i.bq, i1 false
  br i1 %op.rdx56, label %bb.g, label %struct_lconv_is_valid.exit.thread

struct_lconv_is_valid.exit.thread:                ; preds = %bb.f
  %i.bu = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #20 ; 0 uses
  %i.bv = call i32 @errcode(i32 noundef 8389) #19 ; 0 uses
  %i.bw = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.11) #19 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.7, i32 noundef 565, ptr noundef nonnull @__func__.PGLC_localeconv) #19
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr @PG_exception_stack, align 8 ; 2 uses
  %i.by = load ptr, ptr @error_context_stack, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.bz = call i32 @__sigsetjmp(ptr noundef nonnull %2, i32 noundef 0) #21
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %2, ptr @PG_exception_stack, align 8
  %i.cb = load ptr, ptr @locale_numeric, align 8
  %i.cc = call i32 @pg_get_encoding_from_locale(ptr noundef %i.cb, i1 noundef zeroext true) #19
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.cc, i32 0) ; 2 uses
  call fastcc void @db_encoding_convert(i32 noundef %spec.store.select, ptr noundef %1)
  call fastcc void @db_encoding_convert(i32 noundef %spec.store.select, ptr noundef %i.x)
  %i.cd = load ptr, ptr @locale_monetary, align 8
  %i.ce = call i32 @pg_get_encoding_from_locale(ptr noundef %i.cd, i1 noundef zeroext true) #19
  %spec.store.select1 = call i32 @llvm.smax.i32(i32 %i.ce, i32 0) ; 6 uses
  call fastcc void @db_encoding_convert(i32 noundef %spec.store.select1, ptr noundef %i.af)
  call fastcc void @db_encoding_convert(i32 noundef %spec.store.select1, ptr noundef %i.aj)
  call fastcc void @db_encoding_convert(i32 noundef %spec.store.select1, ptr noundef %i.an)
  call fastcc void @db_encoding_convert(i32 noundef %spec.store.select1, ptr noundef %i.ar)
  call fastcc void @db_encoding_convert(i32 noundef %spec.store.select1, ptr noundef %i.az)
  call fastcc void @db_encoding_convert(i32 noundef %spec.store.select1, ptr noundef %i.bd)
  store ptr %i.bx, ptr @PG_exception_stack, align 8
  store ptr %i.by, ptr @error_context_stack, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) @PGLC_localeconv.CurrentLocaleConv, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  store i1 true, ptr @PGLC_localeconv.CurrentLocaleConvAllocated, align 1
  store i1 true, ptr @CurrentLocaleConvValid, align 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store ptr %i.bx, ptr @PG_exception_stack, align 8
  store ptr %i.by, ptr @error_context_stack, align 8
  call fastcc void @free_struct_lconv(ptr noundef nonnull %1)
  call void @pg_re_throw() #22
  unreachable

bb.j:                                             ; preds = %bb.a, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret ptr @PGLC_localeconv.CurrentLocaleConv
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @free_struct_lconv(ptr nofree noundef readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @free(ptr noundef %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @free(ptr noundef %i.c) #19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @free(ptr noundef %i.e) #19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @free(ptr noundef %i.g) #19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @free(ptr noundef %i.i) #19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @free(ptr noundef %i.k) #19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @free(ptr noundef %i.m) #19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @free(ptr noundef %i.o) #19
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @free(ptr noundef %i.q) #19
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8
  tail call void @free(ptr noundef %i.s) #19
  ret void
}

declare i32 @pg_localeconv_r(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #8

declare void @pg_localeconv_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind returns_twice
declare i32 @__sigsetjmp(ptr noundef, i32 noundef) local_unnamed_addr #9

declare i32 @pg_get_encoding_from_locale(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @db_encoding_convert(i32 noundef %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #23
  %i.c = trunc i64 %i.b to i32
  %i.d = tail call ptr @pg_any_to_server(ptr noundef nonnull %i.a, i32 noundef %i.c, i32 noundef %0) #19 ; 3 uses
  %i.e = load ptr, ptr %1, align 8                ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @strdup(ptr noundef %i.d) #19 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #20 ; 0 uses
  %i.j = tail call i32 @errcode(i32 noundef 8389) #19 ; 0 uses
  %i.k = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.11) #19 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.7, i32 noundef 491, ptr noundef nonnull @__func__.db_encoding_convert) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.e) #19
  store ptr %i.g, ptr %1, align 8
  tail call void @pfree(ptr noundef %i.d) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @pg_re_throw() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @cache_locale_time() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3040 x i8], align 16             ; 41 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %0 = alloca %struct.tm, align 8                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  %.b = load i1, ptr @CurrentLCTimeValid, align 1
  br i1 %.b, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @errstart(i32 noundef 12, ptr noundef null) #19
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @locale_time, align 8
  %i.e = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.12, ptr noundef %i.d) #19 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.7, i32 noundef 718, ptr noundef nonnull @__func__.cache_locale_time) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = tail call ptr @__errno_location() #24    ; 2 uses
  store i32 2, ptr %i.f, align 4
  %i.g = load ptr, ptr @locale_time, align 8
  %i.h = tail call ptr @newlocale(i32 noundef 8127, ptr noundef %i.g, ptr noundef null) #19 ; 40 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr @locale_time, align 8
  tail call void @report_newlocale_failure(ptr noundef %i.i) #19
  br label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.d
  %i.j = tail call i64 @time(ptr noundef null) #19
  store i64 %i.j, ptr %i.b, align 8
  %i.k = call ptr @gmtime_r(ptr noundef nonnull %i.b, ptr noundef nonnull %0) #19 ; 41 uses
  store i32 0, ptr %i.f, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 7 uses
  store i32 0, ptr %i.l, align 8
  %i.m = call i64 @strftime_l(ptr noundef nonnull %i.a, i64 noundef 80, ptr noundef nonnull @.str.13, ptr noundef %i.k, ptr noundef %i.h) #19
  %i.n = icmp eq i64 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.p = call i64 @strftime_l(ptr noundef nonnull %i.o, i64 noundef 80, ptr noundef nonnull @.str.14, ptr noundef %i.k, ptr noundef %i.h) #19
  %i.q = icmp eq i64 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i32 1, ptr %i.l, align 8
  %i.s = call i64 @strftime_l(ptr noundef nonnull %i.r, i64 noundef 80, ptr noundef nonnull @.str.13, ptr noundef %i.k, ptr noundef %i.h) #19
  %i.t = icmp eq i64 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.v = call i64 @strftime_l(ptr noundef nonnull %i.u, i64 noundef 80, ptr noundef nonnull @.str.14, ptr noundef %i.k, ptr noundef %i.h) #19
  %i.w = icmp eq i64 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store i32 2, ptr %i.l, align 8
  %i.y = call i64 @strftime_l(ptr noundef nonnull %i.x, i64 noundef 80, ptr noundef nonnull @.str.13, ptr noundef %i.k, ptr noundef %i.h) #19
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 400
end_hunk_0
