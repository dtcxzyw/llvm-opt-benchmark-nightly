Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/gistproc?download=true
inline.NumInlined: 243
inline.NumDeleted: 51
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@g_box_consider_split:bb.a
  ret void
}

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nounwind uwtable
define internal i32 @common_entry_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load double, ptr %i.c, align 8
  %i.e = tail call i32 @float8_cmp_internal(double noundef %i.b, double noundef %i.d) #13
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @gist_box_same(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp ne i64 %i.b, 0
  %i.j = icmp ne i64 %i.e, 0
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = load double, ptr %i.k, align 8           ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load double, ptr %i.m, align 8           ; 2 uses
  %i.o = fcmp uno double %i.l, 0.000000e+00
  %i.p = fcmp uno double %i.n, 0.000000e+00
  %i.q = fcmp oeq double %i.l, %i.n
  %.in.i = select i1 %i.o, i1 %i.p, i1 %i.q
  br i1 %.in.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.s = load double, ptr %i.r, align 8           ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.u = load double, ptr %i.t, align 8           ; 2 uses
  %i.v = fcmp uno double %i.s, 0.000000e+00
  %i.w = fcmp uno double %i.u, 0.000000e+00
  %i.x = fcmp oeq double %i.s, %i.u
  %.in.i20 = select i1 %i.v, i1 %i.w, i1 %i.x
  br i1 %.in.i20, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.y = load double, ptr %i.c, align 8           ; 2 uses
  %i.z = load double, ptr %i.f, align 8           ; 2 uses
  %i.aa = fcmp uno double %i.y, 0.000000e+00
  %i.ab = fcmp uno double %i.z, 0.000000e+00
  %i.ac = fcmp oeq double %i.y, %i.z
  %.in.i21 = select i1 %i.aa, i1 %i.ab, i1 %i.ac
  br i1 %.in.i21, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load double, ptr %i.ad, align 8         ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ag = load double, ptr %i.af, align 8         ; 2 uses
  %i.ah = fcmp uno double %i.ae, 0.000000e+00
  %i.ai = fcmp uno double %i.ag, 0.000000e+00
  %i.aj = fcmp oeq double %i.ae, %i.ag
  %.in.i22 = select i1 %i.ah, i1 %i.ai, i1 %i.aj
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ak = icmp eq i64 %i.b, 0
  %i.al = icmp eq i64 %i.e, 0
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %storemerge.in = phi i1 [ %i.am, %bb.f ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ %.in.i22, %bb.e ]
  %i.an = inttoptr i64 %i.h to ptr
  %storemerge = zext i1 %storemerge.in to i8
  store i8 %storemerge, ptr %i.an, align 1
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gist_poly_compress(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  %i.e = load i8, ptr %i.d, align 2, !range !6, !noundef !7
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.c, align 8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call ptr @pg_detoast_datum(ptr noundef %i.h) #13
  %i.j = tail call ptr @palloc(i64 noundef 32) #13 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.l = tail call ptr @palloc(i64 noundef 32) #13 ; 6 uses
  %i.m = ptrtoint ptr %i.j to i64
  store i64 %i.m, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.u = load i16, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i16 %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 26
  store i8 0, ptr %i.w, align 2
  %i.x = ptrtoint ptr %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.x, %bb.b ], [ %i.b, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @gist_poly_consistent(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call ptr @pg_detoast_datum(ptr noundef %i.f) #13 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load i64, ptr %i.j, align 8
  %i.l = inttoptr i64 %i.k to ptr
  store i8 1, ptr %i.l, align 1
  %i.m = load i64, ptr %i.c, align 8              ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = icmp eq ptr %i.g, null
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = inttoptr i64 %i.m to ptr
  %i.q = trunc i64 %i.i to i16
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.s = tail call fastcc zeroext i1 @rtree_internal_consistent(ptr noundef nonnull %i.p, ptr noundef %i.r, i16 noundef zeroext %i.q)
  %i.t = load i64, ptr %i.d, align 8
  %i.u = inttoptr i64 %i.t to ptr
  %.not = icmp eq ptr %i.g, %i.u
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @pfree(ptr noundef nonnull %i.g) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = zext i1 %i.s to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i64 [ %i.v, %bb.d ], [ 0, %bb.a ]
  ret i64 %.0
}

declare void @pfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @gist_circle_compress(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  %i.e = load i8, ptr %i.d, align 2, !range !6, !noundef !7
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.c, align 8
  %i.h = inttoptr i64 %i.g to ptr                 ; 4 uses
  %i.i = tail call ptr @palloc(i64 noundef 32) #13 ; 5 uses
  %i.j = load double, ptr %i.h, align 8           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.l = load double, ptr %i.k, align 8           ; 2 uses
  %i.m = fadd double %i.j, %i.l                   ; 3 uses
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %i.o = fcmp oeq double %i.n, +inf
  br i1 %i.o, label %bb.c, label %float8_pl.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.p = tail call double @llvm.fabs.f64(double %i.j)
  %i.q = fcmp oeq double %i.p, +inf
  %i.r = tail call double @llvm.fabs.f64(double %i.l)
  %i.s = fcmp oeq double %i.r, +inf
  %or.cond.i.i = or i1 %i.q, %i.s
  br i1 %or.cond.i.i, label %float8_pl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call double @float_overflow_error_ext(ptr noundef null) #13
  br label %float8_pl.exit

float8_pl.exit:                                   ; preds = %bb.b, %bb.c, %bb.d
  %.0.i.i = phi double [ %i.t, %bb.d ], [ %i.m, %bb.c ], [ %i.m, %bb.b ]
  store double %.0.i.i, ptr %i.i, align 8
  %i.u = load double, ptr %i.h, align 8           ; 2 uses
  %i.v = load double, ptr %i.k, align 8           ; 2 uses
  %i.w = fsub double %i.u, %i.v                   ; 3 uses
  %i.x = tail call double @llvm.fabs.f64(double %i.w)
  %i.y = fcmp oeq double %i.x, +inf
  br i1 %i.y, label %bb.e, label %float8_mi.exit, !prof !5

bb.e:                                             ; preds = %float8_pl.exit
  %i.z = tail call double @llvm.fabs.f64(double %i.u)
  %i.aa = fcmp oeq double %i.z, +inf
  %i.ab = tail call double @llvm.fabs.f64(double %i.v)
  %i.ac = fcmp oeq double %i.ab, +inf
  %or.cond.i.i27 = or i1 %i.aa, %i.ac
  br i1 %or.cond.i.i27, label %float8_mi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call double @float_overflow_error_ext(ptr noundef null) #13
  br label %float8_mi.exit

float8_mi.exit:                                   ; preds = %float8_pl.exit, %bb.e, %bb.f
  %.0.i.i26 = phi double [ %i.ad, %bb.f ], [ %i.w, %bb.e ], [ %i.w, %float8_pl.exit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store double %.0.i.i26, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %1 = load double, ptr %i.af, align 8            ; 2 uses
  %2 = load double, ptr %i.k, align 8             ; 2 uses
  %3 = fadd double %1, %2                         ; 3 uses
  %i.ag = tail call double @llvm.fabs.f64(double %3)
  %i.ah = fcmp oeq double %i.ag, +inf
  br i1 %i.ah, label %bb.g, label %float8_pl.exit30, !prof !5

bb.g:                                             ; preds = %float8_mi.exit
  %4 = tail call double @llvm.fabs.f64(double %1)
  %5 = fcmp oeq double %4, +inf
  %6 = tail call double @llvm.fabs.f64(double %2)
  %7 = fcmp oeq double %6, +inf
  %or.cond.i.i29 = or i1 %5, %7
  br i1 %or.cond.i.i29, label %float8_pl.exit30, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call double @float_overflow_error_ext(ptr noundef null) #13
  br label %float8_pl.exit30

float8_pl.exit30:                                 ; preds = %float8_mi.exit, %bb.g, %bb.h
  %.0.i.i28 = phi double [ %i.ai, %bb.h ], [ %3, %bb.g ], [ %3, %float8_mi.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store double %.0.i.i28, ptr %i.aj, align 8
  %8 = load double, ptr %i.af, align 8            ; 2 uses
  %9 = load double, ptr %i.k, align 8             ; 2 uses
  %10 = fsub double %8, %9                        ; 3 uses
  %i.ak = tail call double @llvm.fabs.f64(double %10)
  %i.al = fcmp oeq double %i.ak, +inf
  br i1 %i.al, label %bb.i, label %float8_mi.exit33, !prof !5

bb.i:                                             ; preds = %float8_pl.exit30
  %11 = tail call double @llvm.fabs.f64(double %8)
  %12 = fcmp oeq double %11, +inf
  %13 = tail call double @llvm.fabs.f64(double %9)
  %14 = fcmp oeq double %13, +inf
  %or.cond.i.i32 = or i1 %12, %14
  br i1 %or.cond.i.i32, label %float8_mi.exit33, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = tail call double @float_overflow_error_ext(ptr noundef null) #13
  br label %float8_mi.exit33

float8_mi.exit33:                                 ; preds = %float8_pl.exit30, %bb.i, %bb.j
  %.0.i.i31 = phi double [ %i.am, %bb.j ], [ %10, %bb.i ], [ %10, %float8_pl.exit30 ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store double %.0.i.i31, ptr %i.an, align 8
  %i.ao = tail call ptr @palloc(i64 noundef 32) #13 ; 6 uses
  %i.ap = ptrtoint ptr %i.i to i64
  store i64 %i.ap, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ax = load i16, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i16 %i.ax, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 26
  store i8 0, ptr %i.az, align 2
  %i.ba = ptrtoint ptr %i.ao to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %float8_mi.exit33
  %.0 = phi i64 [ %i.ba, %float8_mi.exit33 ], [ %i.b, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @gist_circle_consistent(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.BOX, align 8                ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8
  %i.i = trunc i64 %i.h to i16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load i64, ptr %i.j, align 8
  %i.l = inttoptr i64 %i.k to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  store i8 1, ptr %i.l, align 1
  %i.m = load i64, ptr %i.c, align 8
  %i.n = icmp eq i64 %i.m, 0
  %i.o = icmp eq i64 %i.e, 0
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load double, ptr %i.f, align 8           ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  %i.r = load double, ptr %i.q, align 8           ; 4 uses
  %i.s = fadd double %i.p, %i.r                   ; 3 uses
  %i.t = tail call double @llvm.fabs.f64(double %i.s)
  %i.u = fcmp oeq double %i.t, +inf
  br i1 %i.u, label %bb.c, label %float8_pl.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.v = tail call double @llvm.fabs.f64(double %i.p)
  %i.w = fcmp oeq double %i.v, +inf
  %i.x = tail call double @llvm.fabs.f64(double %i.r)
  %i.y = fcmp oeq double %i.x, +inf
  %or.cond.i.i = or i1 %i.w, %i.y
  br i1 %or.cond.i.i, label %float8_pl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = tail call double @float_overflow_error_ext(ptr noundef null) #13
  %.pre = load double, ptr %i.f, align 8
  %.pre28 = load double, ptr %i.q, align 8
  br label %float8_pl.exit

float8_pl.exit:                                   ; preds = %bb.b, %bb.c, %bb.d
  %i.aa = phi double [ %.pre28, %bb.d ], [ %i.r, %bb.c ], [ %i.r, %bb.b ] ; 4 uses
  %i.ab = phi double [ %.pre, %bb.d ], [ %i.p, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.0.i.i = phi double [ %i.z, %bb.d ], [ %i.s, %bb.c ], [ %i.s, %bb.b ]
  store double %.0.i.i, ptr %1, align 8
  %i.ac = fsub double %i.ab, %i.aa                ; 3 uses
  %i.ad = tail call double @llvm.fabs.f64(double %i.ac)
  %i.ae = fcmp oeq double %i.ad, +inf
  br i1 %i.ae, label %bb.e, label %float8_mi.exit, !prof !5

bb.e:                                             ; preds = %float8_pl.exit
  %i.af = tail call double @llvm.fabs.f64(double %i.ab)
  %i.ag = fcmp oeq double %i.af, +inf
  %i.ah = tail call double @llvm.fabs.f64(double %i.aa)
  %i.ai = fcmp oeq double %i.ah, +inf
  %or.cond.i.i21 = or i1 %i.ag, %i.ai
  br i1 %or.cond.i.i21, label %float8_mi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call double @float_overflow_error_ext(ptr noundef null) #13
  %.pre29 = load double, ptr %i.q, align 8
  br label %float8_mi.exit

float8_mi.exit:                                   ; preds = %float8_pl.exit, %bb.e, %bb.f
  %i.ak = phi double [ %.pre29, %bb.f ], [ %i.aa, %bb.e ], [ %i.aa, %float8_pl.exit ] ; 4 uses
  %.0.i.i20 = phi double [ %i.aj, %bb.f ], [ %i.ac, %bb.e ], [ %i.ac, %float8_pl.exit ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %.0.i.i20, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.an = load double, ptr %i.am, align 8         ; 4 uses
  %i.ao = fadd double %i.an, %i.ak                ; 3 uses
  %i.ap = tail call double @llvm.fabs.f64(double %i.ao)
  %i.aq = fcmp oeq double %i.ap, +inf
  br i1 %i.aq, label %bb.g, label %float8_pl.exit24, !prof !5

bb.g:                                             ; preds = %float8_mi.exit
  %i.ar = tail call double @llvm.fabs.f64(double %i.an)
  %i.as = fcmp oeq double %i.ar, +inf
  %i.at = tail call double @llvm.fabs.f64(double %i.ak)
  %i.au = fcmp oeq double %i.at, +inf
  %or.cond.i.i23 = or i1 %i.as, %i.au
  br i1 %or.cond.i.i23, label %float8_pl.exit24, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = tail call double @float_overflow_error_ext(ptr noundef null) #13
  %.pre30 = load double, ptr %i.am, align 8
  %.pre31 = load double, ptr %i.q, align 8
  br label %float8_pl.exit24

float8_pl.exit24:                                 ; preds = %float8_mi.exit, %bb.g, %bb.h
  %i.aw = phi double [ %.pre31, %bb.h ], [ %i.ak, %bb.g ], [ %i.ak, %float8_mi.exit ] ; 2 uses
  %i.ax = phi double [ %.pre30, %bb.h ], [ %i.an, %bb.g ], [ %i.an, %float8_mi.exit ] ; 2 uses
  %.0.i.i22 = phi double [ %i.av, %bb.h ], [ %i.ao, %bb.g ], [ %i.ao, %float8_mi.exit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %.0.i.i22, ptr %i.ay, align 8
  %i.az = fsub double %i.ax, %i.aw                ; 3 uses
  %i.ba = tail call double @llvm.fabs.f64(double %i.az)
  %i.bb = fcmp oeq double %i.ba, +inf
  br i1 %i.bb, label %bb.i, label %float8_mi.exit27, !prof !5

bb.i:                                             ; preds = %float8_pl.exit24
  %i.bc = tail call double @llvm.fabs.f64(double %i.ax)
  %i.bd = fcmp oeq double %i.bc, +inf
  %i.be = tail call double @llvm.fabs.f64(double %i.aw)
  %i.bf = fcmp oeq double %i.be, +inf
  %or.cond.i.i26 = or i1 %i.bd, %i.bf
  br i1 %or.cond.i.i26, label %float8_mi.exit27, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = tail call double @float_overflow_error_ext(ptr noundef null) #13
  br label %float8_mi.exit27

float8_mi.exit27:                                 ; preds = %float8_pl.exit24, %bb.i, %bb.j
  %.0.i.i25 = phi double [ %i.bg, %bb.j ], [ %i.az, %bb.i ], [ %i.az, %float8_pl.exit24 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %.0.i.i25, ptr %i.bh, align 8
  %i.bi = load i64, ptr %i.c, align 8
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = call fastcc zeroext i1 @rtree_internal_consistent(ptr noundef %i.bj, ptr noundef %1, i16 noundef zeroext %i.i)
  %i.bl = zext i1 %i.bk to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %float8_mi.exit27
  %.0 = phi i64 [ %i.bl, %float8_mi.exit27 ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gist_point_compress(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  %i.e = load i8, ptr %i.d, align 2, !range !6, !noundef !7
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @palloc(i64 noundef 32) #13 ; 3 uses
  %i.h = load i64, ptr %i.c, align 8
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = tail call ptr @palloc(i64 noundef 32) #13 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.l = ptrtoint ptr %i.g to i64
  store i64 %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.t = load i16, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i16 %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 26
  store i8 0, ptr %i.v, align 2
  %i.w = ptrtoint ptr %i.j to i64
  br label %bb.c

end_hunk_0
begin_hunk_1_@gist_bbox_zorder_cmp:bb.a
  %.0.i5.i22 = phi i64 [ %i.bm, %bb.f ], [ 4294967295, %ieee_float32_to_uint32.exit.i18 ]
  %i.bn = insertelement <2 x i64> poison, i64 %.0.i5.i22, i64 0
  %i.bo = insertelement <2 x i64> %i.bn, i64 %.0.i.i19, i64 1 ; 2 uses
  %i.bp = shl nuw nsw <2 x i64> %i.bo, splat (i64 16)
  %i.bq = or <2 x i64> %i.bp, %i.bo
  %i.br = and <2 x i64> %i.bq, splat (i64 281470681808895) ; 2 uses
  %i.bs = shl nuw nsw <2 x i64> %i.br, splat (i64 8)
  %i.bt = or <2 x i64> %i.bs, %i.br
  %i.bu = and <2 x i64> %i.bt, splat (i64 71777214294589695) ; 2 uses
  %i.bv = shl nuw nsw <2 x i64> %i.bu, splat (i64 4)
  %i.bw = or <2 x i64> %i.bv, %i.bu
  %i.bx = and <2 x i64> %i.bw, splat (i64 1085102592571150095) ; 2 uses
  %i.by = shl nuw nsw <2 x i64> %i.bx, splat (i64 2)
  %i.bz = or <2 x i64> %i.by, %i.bx
  %i.ca = and <2 x i64> %i.bz, splat (i64 3689348814741910323) ; 3 uses
  %i.cb = shl nuw <2 x i64> %i.ca, <i64 2, i64 1>
  %i.cc = extractelement <2 x i64> %i.ca, i64 0
  %i.cd = shl nuw nsw i64 %i.cc, 1
  %i.ce = insertelement <2 x i64> %i.ca, i64 %i.cd, i64 0
  %i.cf = or <2 x i64> %i.cb, %i.ce
  %i.cg = and <2 x i64> %i.cf, <i64 -6148914691236517206, i64 6148914691236517205>
  %i.ch = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.cg) ; 2 uses
  %i.ci = icmp ugt i64 %i.aw, %i.ch
  br i1 %i.ci, label %bb.h, label %bb.g

bb.g:                                             ; preds = %point_zorder_internal.exit23
  %i.cj = icmp ult i64 %i.aw, %i.ch
  %. = sext i1 %i.cj to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %point_zorder_internal.exit23, %bb.b
  %.0 = phi i32 [ 1, %point_zorder_internal.exit23 ], [ 0, %bb.b ], [ %., %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc double @size_box(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load double, ptr %i.b, align 8           ; 4 uses
  %i.d = fcmp uno double %i.c, 0.000000e+00
  %i.e = fcmp ole double %i.a, %i.c
  %spec.select.i = or i1 %i.d, %i.e
  br i1 %spec.select.i, label %float8_mul.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load double, ptr %i.f, align 8           ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load double, ptr %i.h, align 8           ; 4 uses
  %i.j = fcmp uno double %i.i, 0.000000e+00
  %i.k = fcmp ole double %i.g, %i.i
  %spec.select.i11 = or i1 %i.j, %i.k
  br i1 %spec.select.i11, label %float8_mul.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %or.cond = fcmp uno double %i.a, %i.g
  br i1 %or.cond, label %float8_mul.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = fsub double %i.a, %i.c                   ; 3 uses
  %i.m = tail call double @llvm.fabs.f64(double %i.l)
  %i.n = fcmp oeq double %i.m, +inf
  br i1 %i.n, label %bb.e, label %float8_mi.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.o = tail call double @llvm.fabs.f64(double %i.a)
  %i.p = fcmp oeq double %i.o, +inf
  %i.q = tail call double @llvm.fabs.f64(double %i.c)
  %i.r = fcmp oeq double %i.q, +inf
  %or.cond.i.i = or i1 %i.p, %i.r
  br i1 %or.cond.i.i, label %float8_mi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call double @float_overflow_error_ext(ptr noundef null) #13
  %.pre = load double, ptr %i.f, align 8
  %.pre17 = load double, ptr %i.h, align 8
  br label %float8_mi.exit

float8_mi.exit:                                   ; preds = %bb.d, %bb.e, %bb.f
  %i.t = phi double [ %.pre17, %bb.f ], [ %i.i, %bb.e ], [ %i.i, %bb.d ] ; 2 uses
  %i.u = phi double [ %.pre, %bb.f ], [ %i.g, %bb.e ], [ %i.g, %bb.d ] ; 2 uses
  %.0.i.i = phi double [ %i.s, %bb.f ], [ %i.l, %bb.e ], [ %i.l, %bb.d ] ; 3 uses
  %i.v = fsub double %i.u, %i.t                   ; 3 uses
  %i.w = tail call double @llvm.fabs.f64(double %i.v)
  %i.x = fcmp oeq double %i.w, +inf
  br i1 %i.x, label %bb.g, label %float8_mi.exit14, !prof !5

bb.g:                                             ; preds = %float8_mi.exit
  %i.y = tail call double @llvm.fabs.f64(double %i.u)
  %i.z = fcmp oeq double %i.y, +inf
  %i.aa = tail call double @llvm.fabs.f64(double %i.t)
  %i.ab = fcmp oeq double %i.aa, +inf
  %or.cond.i.i13 = or i1 %i.z, %i.ab
  br i1 %or.cond.i.i13, label %float8_mi.exit14, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call double @float_overflow_error_ext(ptr noundef null) #13
  br label %float8_mi.exit14

float8_mi.exit14:                                 ; preds = %float8_mi.exit, %bb.g, %bb.h
  %.0.i.i12 = phi double [ %i.ac, %bb.h ], [ %i.v, %bb.g ], [ %i.v, %float8_mi.exit ] ; 3 uses
  %i.ad = fmul double %.0.i.i, %.0.i.i12          ; 4 uses
  %i.ae = tail call double @llvm.fabs.f64(double %i.ad)
  %i.af = fcmp oeq double %i.ae, +inf
  br i1 %i.af, label %bb.i, label %bb.k, !prof !5

bb.i:                                             ; preds = %float8_mi.exit14
  %i.ag = tail call double @llvm.fabs.f64(double %.0.i.i)
  %i.ah = fcmp oeq double %i.ag, +inf
  %i.ai = tail call double @llvm.fabs.f64(double %.0.i.i12)
  %i.aj = fcmp oeq double %i.ai, +inf
  %or.cond14.i.i = or i1 %i.ah, %i.aj
  br i1 %or.cond14.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = tail call double @float_overflow_error_ext(ptr noundef null) #13
  br label %float8_mul.exit

bb.k:                                             ; preds = %bb.i, %float8_mi.exit14
  %i.al = fcmp oeq double %i.ad, 0.000000e+00
  br i1 %i.al, label %bb.l, label %float8_mul.exit, !prof !5

bb.l:                                             ; preds = %bb.k
  %i.am = fcmp une double %.0.i.i, 0.000000e+00
  %i.an = fcmp une double %.0.i.i12, 0.000000e+00
  %or.cond.i.i16 = and i1 %i.am, %i.an
  br i1 %or.cond.i.i16, label %bb.m, label %float8_mul.exit

bb.m:                                             ; preds = %bb.l
  %i.ao = tail call double @float_underflow_error_ext(ptr noundef null) #13
  br label %float8_mul.exit

float8_mul.exit:                                  ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.c, %bb.a, %bb.b
  %.0 = phi double [ +inf, %bb.c ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.b ], [ %i.ad, %bb.k ], [ %i.ao, %bb.m ], [ %i.ak, %bb.j ], [ %i.ad, %bb.l ]
  ret double %.0
}

declare double @float_overflow_error_ext(ptr noundef) local_unnamed_addr #2

declare double @float_underflow_error_ext(ptr noundef) local_unnamed_addr #2

declare i32 @float8_cmp_internal(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @float_zero_divide_error() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @float_overflow_error() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @float_underflow_error() local_unnamed_addr #10

declare double @float_zero_divide_error_ext(ptr noundef) local_unnamed_addr #2

declare i64 @box_left(ptr noundef) #2

declare i64 @box_overleft(ptr noundef) #2

declare i64 @box_overlap(ptr noundef) #2

declare i64 @box_overright(ptr noundef) #2

declare i64 @box_right(ptr noundef) #2

declare i64 @box_same(ptr noundef) #2

declare i64 @box_contain(ptr noundef) #2

declare i64 @box_contained(ptr noundef) #2

declare i64 @box_overbelow(ptr noundef) #2

declare i64 @box_below(ptr noundef) #2

declare i64 @box_above(ptr noundef) #2

declare i64 @box_overabove(ptr noundef) #2

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #2

declare i64 @point_distance(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4, !20}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4}
!20 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_1
