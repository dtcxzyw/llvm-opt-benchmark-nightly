begin_hunk_0_@prefs_pref_type_description:bb.a

bb.bg:                                            ; preds = %bb.d
  br label %bb.bi

bb.bh:                                            ; preds = %bb.d
  br label %bb.bi

switch.lookup:                                    ; preds = %bb.e
  %i.dm = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.prefs_pref_type_description, i64 %i.dm
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.d, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.h, %bb.g, %bb.f, %bb.c, %bb.bb, %bb.e, %switch.lookup
  %.032 = phi ptr [ @.str.81, %bb.bh ], [ @.str.59, %bb.d ], [ @.str.59, %bb.e ], [ @.str.76, %bb.bb ], [ %switch.load, %switch.lookup ], [ @.str.80, %bb.bg ], [ @.str.62, %bb.f ], [ @.str.65, %bb.g ], [ @.str.66, %bb.h ], [ @.str.71, %bb.aw ], [ @.str.72, %bb.ax ], [ @.str.73, %bb.ay ], [ @.str.74, %bb.az ], [ @.str.75, %bb.ba ], [ @.str.61, %bb.c ], [ @.str.77, %bb.bd ], [ @.str.78, %bb.be ], [ @.str.79, %bb.bf ]
  %i.dn = tail call noalias ptr @g_strdup(ptr noundef nonnull %.032)
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.bi, %bb.bc, %g_string_append_len_inline.exit, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.di, %g_string_append_len_inline.exit ], [ %i.dl, %bb.bc ], [ %i.dn, %bb.bi ]
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define zeroext i1 @prefs_pref_is_default(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4
  switch i32 %i.e, label %bb.o [
    i32 0, label %bb.d
    i32 16, label %bb.e
    i32 17, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 14, label %bb.h
    i32 3, label %bb.i
    i32 7, label %bb.i
    i32 12, label %bb.i
    i32 10, label %bb.i
    i32 13, label %bb.i
    i32 15, label %bb.i
    i32 11, label %bb.j
    i32 4, label %bb.j
    i32 8, label %bb.k
    i32 9, label %bb.n
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 64
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.g, %i.j
  br i1 %i.k, label %bb.p, label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 64
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.m, %i.p
  br i1 %i.q, label %bb.p, label %bb.o

bb.f:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %0, i64 64
  %i.s = load double, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load double, ptr %i.u, align 8
  %i.w = fcmp oeq double %i.s, %i.v
  br i1 %i.w, label %bb.p, label %bb.o

bb.g:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %0, i64 64
  %i.y = load i8, ptr %i.x, align 8, !range !9, !noundef !10
  %i.z = getelementptr i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load i8, ptr %i.aa, align 1, !range !9, !noundef !10
  %i.ac = icmp eq i8 %i.y, %i.ab
  br i1 %i.ac, label %bb.p, label %bb.o

bb.h:                                             ; preds = %bb.c, %bb.c
  %i.ad = getelementptr i8, ptr %0, i64 64
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %0, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp eq i32 %i.ae, %i.ah
  br i1 %i.ai, label %bb.p, label %bb.o

bb.i:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.aj = getelementptr i8, ptr %0, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr i8, ptr %0, i64 48
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call i32 @g_strcmp0(ptr noundef %i.ak, ptr noundef %i.an)
  %.not27 = icmp eq i32 %i.ao, 0
  br i1 %.not27, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.ap = getelementptr i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr i8, ptr %0, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call zeroext i1 @ranges_are_equal(ptr noundef %i.aq, ptr noundef %i.at)
  br i1 %i.au, label %bb.p, label %bb.o

bb.k:                                             ; preds = %bb.c
  %i.av = getelementptr i8, ptr %0, i64 64
  %i.aw = load i16, ptr %i.av, align 8
  %i.ax = getelementptr i8, ptr %0, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8            ; 3 uses
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = icmp eq i16 %i.aw, %i.az
  br i1 %i.ba, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr i8, ptr %0, i64 66
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = getelementptr i8, ptr %i.ay, i64 2
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = icmp eq i16 %i.bc, %i.be
  br i1 %i.bf, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr i8, ptr %0, i64 68
  %i.bh = load i16, ptr %i.bg, align 4
  %i.bi = getelementptr i8, ptr %i.ay, i64 4
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = icmp eq i16 %i.bh, %i.bj
  br i1 %i.bk, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.c
  %i.bl = getelementptr i8, ptr %0, i64 128
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call zeroext i1 %i.bm(ptr noundef nonnull %0)
  br label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a, %bb.o, %bb.n
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.o ], [ false, %bb.b ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.i ], [ true, %bb.j ], [ %i.bn, %bb.n ], [ true, %bb.m ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @prefs_pref_to_str(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(10) ptr @g_malloc(i64 noundef 10) #24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.37, i64 noundef 10, i1 noundef false) #23
  br label %g_strdup_inline.exit81

bb.c:                                             ; preds = %bb.a
  switch i32 %1, label %bb.g [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr i8, ptr %0, i64 64
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr i8, ptr %0, i64 56
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.f = tail call noalias dereferenceable_or_null(10) ptr @g_malloc(i64 noundef 10) #24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(10) %i.f, ptr noundef nonnull align 1 dereferenceable(10) @.str.37, i64 noundef 10, i1 noundef false) #23
  br label %g_strdup_inline.exit81

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.053 = phi ptr [ %i.b, %bb.d ], [ %i.c, %bb.e ], [ %i.e, %bb.f ] ; 10 uses
  %i.g = getelementptr i8, ptr %0, i64 40
  %i.h = load i8, ptr %i.g, align 8, !range !9, !noundef !10
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %g_strdup_inline.exit72, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = getelementptr i8, ptr %0, i64 36
  %i.k = load i32, ptr %i.j, align 4
  switch i32 %i.k, label %g_strdup_inline.exit72 [
    i32 0, label %bb.j
    i32 16, label %bb.n
    i32 17, label %bb.o
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 14, label %bb.q
    i32 3, label %bb.t
    i32 7, label %bb.t
    i32 12, label %bb.t
    i32 10, label %bb.t
    i32 13, label %bb.t
    i32 15, label %bb.t
    i32 11, label %g_strdup_inline.exit67
    i32 4, label %g_strdup_inline.exit67
    i32 8, label %bb.w
    i32 9, label %bb.x
    i32 5, label %bb.z
    i32 6, label %bb.aa
  ]

bb.j:                                             ; preds = %bb.i
  %i.l = load i32, ptr %.053, align 4             ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 72
  %i.n = load i32, ptr %i.m, align 8
  switch i32 %i.n, label %g_strdup_inline.exit72 [
    i32 10, label %bb.k
    i32 8, label %bb.l
    i32 16, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.o = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.83, i32 noundef %i.l)
  br label %g_strdup_inline.exit81

bb.l:                                             ; preds = %bb.j
  %i.p = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.84, i32 noundef %i.l)
  br label %g_strdup_inline.exit81

bb.m:                                             ; preds = %bb.j
  %i.q = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.85, i32 noundef %i.l)
  br label %g_strdup_inline.exit81

bb.n:                                             ; preds = %bb.i
  %i.r = load i32, ptr %.053, align 4
  %i.s = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.86, i32 noundef %i.r)
  br label %g_strdup_inline.exit81

bb.o:                                             ; preds = %bb.i
  %i.t = getelementptr i8, ptr %0, i64 72
  %i.u = load i32, ptr %i.t, align 8
  %i.v = load double, ptr %.053, align 8
  %i.w = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.87, i32 noundef %i.u, double noundef %i.v)
  br label %g_strdup_inline.exit81

bb.p:                                             ; preds = %bb.i
  %i.x = load i8, ptr %.053, align 1, !range !9, !noundef !10
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = select i1 %i.y, ptr @.str.88, ptr @.str.89
  %i.aa = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.z)
  br label %g_strdup_inline.exit81

bb.q:                                             ; preds = %bb.i, %bb.i
  %i.ab = load i32, ptr %.053, align 4
  %i.ac = getelementptr i8, ptr %0, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not6592 = icmp eq ptr %i.ae, null
  br i1 %.not6592, label %g_strdup_inline.exit72, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %bb.s
  %.05093 = phi ptr [ %i.al, %bb.s ], [ %i.ad, %bb.q ] ; 3 uses
  %i.af = getelementptr i8, ptr %.05093, i64 16
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = icmp eq i32 %i.ag, %i.ab
  br i1 %i.ah, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph
  %i.ai = getelementptr i8, ptr %.05093, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noalias ptr @g_strdup(ptr noundef %i.aj)
  br label %g_strdup_inline.exit81

bb.s:                                             ; preds = %.lr.ph
  %i.al = getelementptr i8, ptr %.05093, i64 24   ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %.not65 = icmp eq ptr %i.am, null
  br i1 %.not65, label %g_strdup_inline.exit72, label %.lr.ph, !llvm.loop !57

bb.t:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.an = load ptr, ptr %.053, align 8
  %i.ao = load ptr, ptr @prefs_regex, align 8     ; 2 uses
  %.not.i82 = icmp eq ptr %i.ao, null
  br i1 %.not.i82, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ap = tail call ptr @g_regex_new(ptr noundef nonnull @.str, i32 noundef 8192, i32 noundef 8388608, ptr noundef null) ; 2 uses
  store ptr %i.ap, ptr @prefs_regex, align 8
  br label %prefs_sanitize_string.exit

bb.v:                                             ; preds = %bb.t
  %i.aq = tail call ptr @g_regex_ref(ptr noundef nonnull %i.ao) ; 0 uses
  %.pre.i = load ptr, ptr @prefs_regex, align 8
  br label %prefs_sanitize_string.exit

prefs_sanitize_string.exit:                       ; preds = %bb.u, %bb.v
  %i.ar = phi ptr [ %.pre.i, %bb.v ], [ %i.ap, %bb.u ]
  %i.as = tail call ptr @g_regex_replace(ptr noundef %i.ar, ptr noundef %i.an, i64 noundef -1, i32 noundef 0, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef null)
  %i.at = load ptr, ptr @prefs_regex, align 8
  tail call void @g_regex_unref(ptr noundef %i.at)
  br label %g_strdup_inline.exit81

g_strdup_inline.exit67:                           ; preds = %bb.i, %bb.i
  %i.au = load ptr, ptr %.053, align 8
  %i.av = tail call ptr @range_convert_range(ptr noundef null, ptr noundef %i.au) ; 2 uses
  %i.aw = tail call noalias ptr @g_strdup(ptr noundef %i.av)
  tail call void @wmem_free(ptr noundef null, ptr noundef %i.av)
  br label %g_strdup_inline.exit81

bb.w:                                             ; preds = %bb.i
  %i.ax = load i16, ptr %.053, align 2
  %i.ay = udiv i16 %i.ax, 257
  %i.az = zext nneg i16 %i.ay to i32
  %i.ba = getelementptr i8, ptr %.053, i64 2
  %2 = load i16, ptr %i.ba, align 2
  %3 = udiv i16 %2, 257
  %4 = zext nneg i16 %3 to i32
  %5 = getelementptr i8, ptr %.053, i64 4
  %6 = load i16, ptr %5, align 2
  %7 = udiv i16 %6, 257
  %i.bb = zext nneg i16 %7 to i32
  %i.bc = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.90, i32 noundef %i.az, i32 noundef %4, i32 noundef %i.bb)
  br label %g_strdup_inline.exit81

bb.x:                                             ; preds = %bb.i
  %i.bd = getelementptr i8, ptr %0, i64 136
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not64 = icmp eq ptr %i.be, null
  br i1 %.not64, label %g_strdup_inline.exit72, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bf = icmp eq i32 %1, 0
  %i.bg = tail call ptr %i.be(ptr noundef nonnull %0, i1 noundef zeroext %i.bf)
  br label %g_strdup_inline.exit81

bb.z:                                             ; preds = %bb.i
  br label %g_strdup_inline.exit72

bb.aa:                                            ; preds = %bb.i
  %i.bh = getelementptr i8, ptr %0, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not62 = icmp eq ptr %i.bi, null
  br i1 %.not62, label %g_strdup_inline.exit72, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not63 = icmp eq ptr %i.bk, null
  br i1 %.not63, label %g_strdup_inline.exit72, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bl = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.92, ptr noundef nonnull %i.bk)
  br label %g_strdup_inline.exit81

g_strdup_inline.exit72:                           ; preds = %bb.s, %bb.i, %bb.z, %bb.h, %bb.x, %bb.j, %bb.ab, %bb.aa, %bb.q
  %.152 = phi ptr [ @.str.93, %bb.aa ], [ @.str.37, %bb.i ], [ @.str.91, %bb.x ], [ @.str.37, %bb.j ], [ @.str.82, %bb.h ], [ @.str.78, %bb.z ], [ @.str.93, %bb.ab ], [ @.str.37, %bb.q ], [ @.str.37, %bb.s ]
  %i.bm = tail call noalias ptr @g_strdup(ptr noundef nonnull %.152)
  br label %g_strdup_inline.exit81

g_strdup_inline.exit81:                           ; preds = %bb.r, %bb.l, %bb.k, %bb.m, %g_strdup_inline.exit72, %bb.ac, %bb.p, %bb.g, %bb.b, %bb.y, %bb.w, %g_strdup_inline.exit67, %prefs_sanitize_string.exit, %bb.o, %bb.n
  %.3 = phi ptr [ %i.p, %bb.l ], [ %i.aa, %bb.p ], [ %i.bm, %g_strdup_inline.exit72 ], [ %i.s, %bb.n ], [ %i.w, %bb.o ], [ %i.ak, %bb.r ], [ %i.q, %bb.m ], [ %i.as, %prefs_sanitize_string.exit ], [ %i.aw, %g_strdup_inline.exit67 ], [ %i.bc, %bb.w ], [ %i.bg, %bb.y ], [ %i.bl, %bb.ac ], [ %i.a, %bb.b ], [ %i.f, %bb.g ], [ %i.o, %bb.k ]
  ret ptr %.3
}

; Function Attrs: null_pointer_is_valid
declare ptr @range_convert_range(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @pref_write_individual(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 36         ; 4 uses
  %i.e = load i32, ptr %i.d, align 4
  switch i32 %i.e, label %bb.e [
    i32 5, label %bb.s
    i32 6, label %bb.s
    i32 11, label %bb.s
    i32 14, label %bb.s
    i32 9, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 112
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr %i.g()
  %.not63 = icmp eq ptr %i.h, null
  br i1 %.not63, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.i = load ptr, ptr %1, align 8                ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not64 = icmp eq ptr %i.j, null
  br i1 %.not64, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %i.i, i64 56
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.l, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.n = phi ptr [ %i.m, %bb.f ], [ %i.j, %bb.e ]
  %i.o = tail call zeroext i1 @prefs_pref_is_default(ptr noundef nonnull %0)
  %i.p = select i1 %i.o, ptr @.str.94, ptr @.str.14 ; 2 uses
  %i.q = load i32, ptr %i.d, align 4
  %i.r = icmp eq i32 %i.q, 9
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %0, i64 112
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call ptr %i.v()
  %i.x = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.t, i32 noundef 2, ptr noundef nonnull @.str.95, ptr noundef %i.w) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = getelementptr i8, ptr %1, i64 8          ; 8 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.z, i32 noundef 2, ptr noundef nonnull @.str.96) ; 0 uses
  %i.ab = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not65 = icmp eq ptr %i.ac, null
  br i1 %.not65, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.ac, ptr noundef nonnull @.str.14, i64 noundef 2)
  %.not66 = icmp eq i32 %i.ad, 0
  br i1 %.not66, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load i32, ptr %i.d, align 4
  %.not67 = icmp eq i32 %i.ae, 9
  br i1 %.not67, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %i.ab, align 8
  %i.ag = tail call ptr @g_strsplit(ptr noundef %i.af, ptr noundef nonnull @.str.96, i32 noundef 0) ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not6872 = icmp eq ptr %i.ah, null
  br i1 %.not6872, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %i.ai = phi ptr [ %i.ao, %.lr.ph ], [ %i.ah, %bb.l ]
  %.073 = phi i32 [ %i.al, %.lr.ph ], [ 0, %bb.l ]
  %i.aj = load ptr, ptr %i.y, align 8
  %i.ak = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.aj, i32 noundef 2, ptr noundef nonnull @.str.97, ptr noundef nonnull %i.ai) ; 0 uses
  %i.al = add i32 %.073, 1                        ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr [8 x i8], ptr %i.ag, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not68 = icmp eq ptr %i.ao, null
  br i1 %.not68, label %._crit_edge, label %.lr.ph, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph, %bb.l
  tail call void @g_strfreev(ptr noundef %i.ag)
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.ap = load ptr, ptr %i.y, align 8
  %i.aq = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ap, i32 noundef 2, ptr noundef nonnull @.str.98) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %._crit_edge, %bb.m
  %i.ar = tail call ptr @prefs_pref_type_description(ptr noundef nonnull %0) ; 2 uses
  %i.as = tail call ptr @g_strsplit(ptr noundef %i.ar, ptr noundef nonnull @.str.96, i32 noundef 0) ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not6974 = icmp eq ptr %i.at, null
  br i1 %.not6974, label %._crit_edge78, label %.lr.ph77

.lr.ph77:                                         ; preds = %bb.n, %.lr.ph77
  %i.au = phi ptr [ %i.ba, %.lr.ph77 ], [ %i.at, %bb.n ]
  %.175 = phi i32 [ %i.ax, %.lr.ph77 ], [ 0, %bb.n ]
  %i.av = load ptr, ptr %i.y, align 8
  %i.aw = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.av, i32 noundef 2, ptr noundef nonnull @.str.97, ptr noundef nonnull %i.au) ; 0 uses
  %i.ax = add i32 %.175, 1                        ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr [8 x i8], ptr %i.as, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not69 = icmp eq ptr %i.ba, null
  br i1 %.not69, label %._crit_edge78, label %.lr.ph77, !llvm.loop !59

._crit_edge78:                                    ; preds = %.lr.ph77, %bb.n
  tail call void @g_strfreev(ptr noundef %i.as)
  tail call void @g_free(ptr noundef %i.ar)
  %i.bb = tail call ptr @prefs_pref_to_str(ptr noundef nonnull %0, i32 noundef 2) ; 2 uses
  %i.bc = load ptr, ptr %i.y, align 8
  %i.bd = load ptr, ptr %0, align 8
  %i.be = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bc, i32 noundef 2, ptr noundef nonnull @.str.99, ptr noundef nonnull %i.p, ptr noundef %i.n, ptr noundef %i.bd) ; 0 uses
  %i.bf = load i32, ptr %i.d, align 4
  %.not70 = icmp eq i32 %i.bf, 13
  br i1 %.not70, label %bb.q, label %bb.o

bb.o:                                             ; preds = %._crit_edge78
  %i.bg = tail call ptr @g_strsplit(ptr noundef %i.bb, ptr noundef nonnull @.str.96, i32 noundef 0) ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not7179 = icmp eq ptr %i.bh, null
  br i1 %.not7179, label %._crit_edge83.thread, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.o, %.lr.ph82
  %i.bi = phi ptr [ %i.bq, %.lr.ph82 ], [ %i.bh, %bb.o ]
  %.280 = phi i32 [ %i.bn, %.lr.ph82 ], [ 0, %bb.o ] ; 2 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %i.bk = icmp eq i32 %.280, 0
  %i.bl = select i1 %i.bk, ptr @.str.14, ptr %i.p
  %i.bm = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bj, i32 noundef 2, ptr noundef nonnull @.str.100, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bi) ; 0 uses
  %i.bn = add i32 %.280, 1                        ; 3 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr [8 x i8], ptr %i.bg, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not71 = icmp eq ptr %i.bq, null
  br i1 %.not71, label %._crit_edge83, label %.lr.ph82, !llvm.loop !60
end_hunk_0
