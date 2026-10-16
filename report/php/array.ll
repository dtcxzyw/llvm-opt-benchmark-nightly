Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/array?download=true
inline.NumInlined: 61
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 33
begin_hunk_0_@php_array_key_compare_string_case:bb.a
  %.0.i = phi i64 [ %i.ae, %bb.i ], [ %i.ax, %zend_print_long_to_buf.exit9 ]
  %i.ay = call i32 @zend_binary_strcasecmp_l(ptr noundef nonnull %.015.i, i64 noundef %.013.i, ptr noundef nonnull %.014.i, i64 noundef %.0.i) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.o, label %bb.p, !prof !30

bb.o:                                             ; preds = %php_array_key_compare_string_case_unstable_i.exit
  %i.az = getelementptr i8, ptr %0, i64 12
  %.val = load i32, ptr %i.az, align 4, !tbaa !25
  %i.ba = getelementptr i8, ptr %1, i64 12
  %.val24 = load i32, ptr %i.ba, align 4, !tbaa !25
  %i.bb = call fastcc i32 @stable_sort_fallback(i32 %.val, i32 %.val24)
  br label %bb.p

bb.p:                                             ; preds = %php_array_key_compare_string_case_unstable_i.exit, %bb.o
  %.0 = phi i32 [ %i.bb, %bb.o ], [ %i.ay, %php_array_key_compare_string_case_unstable_i.exit ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal range(i32 -2147483647, -2147483648) i32 @php_array_reverse_key_compare_string(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #15 {
bb.a:
  %i.a = tail call fastcc i32 @php_array_reverse_key_compare_string_unstable(ptr noundef %0, ptr noundef %1) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 12
  %.val = load i32, ptr %i.b, align 4, !tbaa !25
  %i.c = getelementptr i8, ptr %1, i64 12
  %.val7 = load i32, ptr %i.c, align 4, !tbaa !25
  %i.d = tail call fastcc i32 @stable_sort_fallback(i32 %.val, i32 %.val7)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @php_array_key_compare_string(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #15 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 3 uses
  %i.b = alloca [21 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !123
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !120  ; 3 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = sub i64 0, %i.j
  store i8 0, ptr %i.h, align 4, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.05.i.i = phi ptr [ %i.h, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %.0.i21.i = phi i64 [ %i.l, %bb.d ], [ %i.q, %bb.e ] ; 3 uses
  %i.m = urem i64 %.0.i21.i, 10
  %i.n = trunc nuw nsw i64 %i.m to i8
  %i.o = or disjoint i8 %i.n, 48
  %i.p = getelementptr inbounds i8, ptr %.05.i.i, i64 -1 ; 2 uses
  store i8 %i.o, ptr %i.p, align 1, !tbaa !25
  %i.q = udiv i64 %.0.i21.i, 10
  %.not.i.i = icmp ult i64 %.0.i21.i, 10
  br i1 %.not.i.i, label %zend_print_ulong_to_buf.exit.i, label %bb.e, !llvm.loop !10

zend_print_ulong_to_buf.exit.i:                   ; preds = %bb.e
  %i.r = getelementptr inbounds i8, ptr %.05.i.i, i64 -2 ; 2 uses
  store i8 45, ptr %i.r, align 1, !tbaa !25
  br label %zend_print_long_to_buf.exit20.i

bb.f:                                             ; preds = %bb.c
  store i8 0, ptr %i.h, align 4, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.05.i22.i = phi ptr [ %i.h, %bb.f ], [ %i.v, %bb.g ]
  %.0.i23.i = phi i64 [ %i.j, %bb.f ], [ %i.w, %bb.g ] ; 3 uses
  %i.s = urem i64 %.0.i23.i, 10
  %i.t = trunc nuw nsw i64 %i.s to i8
  %i.u = or disjoint i8 %i.t, 48
  %i.v = getelementptr inbounds i8, ptr %.05.i22.i, i64 -1 ; 3 uses
  store i8 %i.u, ptr %i.v, align 1, !tbaa !25
  %i.w = udiv i64 %.0.i23.i, 10
  %.not.i24.i = icmp ult i64 %.0.i23.i, 10
  br i1 %.not.i24.i, label %zend_print_long_to_buf.exit20.i, label %bb.g, !llvm.loop !10

zend_print_long_to_buf.exit20.i:                  ; preds = %bb.g, %zend_print_ulong_to_buf.exit.i
  %.0.i19.i = phi ptr [ %i.r, %zend_print_ulong_to_buf.exit.i ], [ %i.v, %bb.g ] ; 2 uses
  %i.x = ptrtoint ptr %i.h to i64
  %i.y = ptrtoint ptr %.0.i19.i to i64
  %i.z = sub i64 %i.x, %i.y
  br label %bb.h

bb.h:                                             ; preds = %zend_print_long_to_buf.exit20.i, %bb.b
  %.015.i = phi ptr [ %i.e, %bb.b ], [ %.0.i19.i, %zend_print_long_to_buf.exit20.i ]
  %.013.i = phi i64 [ %i.g, %bb.b ], [ %i.z, %zend_print_long_to_buf.exit20.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !119 ; 3 uses
  %.not18.i = icmp eq ptr %i.ab, null
  br i1 %.not18.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !123
  br label %php_array_key_compare_string_unstable_i.exit

bb.j:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !120 ; 3 uses
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aj = sub i64 0, %i.ah
  store i8 0, ptr %i.af, align 4, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.05.i26.i = phi ptr [ %i.af, %bb.k ], [ %i.an, %bb.l ] ; 2 uses
  %.0.i27.i = phi i64 [ %i.aj, %bb.k ], [ %i.ao, %bb.l ] ; 3 uses
  %i.ak = urem i64 %.0.i27.i, 10
  %i.al = trunc nuw nsw i64 %i.ak to i8
  %i.am = or disjoint i8 %i.al, 48
  %i.an = getelementptr inbounds i8, ptr %.05.i26.i, i64 -1 ; 2 uses
  store i8 %i.am, ptr %i.an, align 1, !tbaa !25
  %i.ao = udiv i64 %.0.i27.i, 10
  %.not.i28.i = icmp ult i64 %.0.i27.i, 10
  br i1 %.not.i28.i, label %zend_print_ulong_to_buf.exit29.i, label %bb.l, !llvm.loop !10

zend_print_ulong_to_buf.exit29.i:                 ; preds = %bb.l
  %i.ap = getelementptr inbounds i8, ptr %.05.i26.i, i64 -2 ; 2 uses
  store i8 45, ptr %i.ap, align 1, !tbaa !25
  br label %zend_print_long_to_buf.exit.i

bb.m:                                             ; preds = %bb.j
  store i8 0, ptr %i.af, align 4, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.05.i30.i = phi ptr [ %i.af, %bb.m ], [ %i.at, %bb.n ]
  %.0.i31.i = phi i64 [ %i.ah, %bb.m ], [ %i.au, %bb.n ] ; 3 uses
  %i.aq = urem i64 %.0.i31.i, 10
  %i.ar = trunc nuw nsw i64 %i.aq to i8
  %i.as = or disjoint i8 %i.ar, 48
  %i.at = getelementptr inbounds i8, ptr %.05.i30.i, i64 -1 ; 3 uses
  store i8 %i.as, ptr %i.at, align 1, !tbaa !25
  %i.au = udiv i64 %.0.i31.i, 10
  %.not.i32.i = icmp ult i64 %.0.i31.i, 10
  br i1 %.not.i32.i, label %zend_print_long_to_buf.exit.i, label %bb.n, !llvm.loop !10

zend_print_long_to_buf.exit.i:                    ; preds = %bb.n, %zend_print_ulong_to_buf.exit29.i
  %.0.i.i = phi ptr [ %i.ap, %zend_print_ulong_to_buf.exit29.i ], [ %i.at, %bb.n ] ; 2 uses
  %i.av = ptrtoint ptr %i.af to i64
  %i.aw = ptrtoint ptr %.0.i.i to i64
  %i.ax = sub i64 %i.av, %i.aw
  br label %php_array_key_compare_string_unstable_i.exit

php_array_key_compare_string_unstable_i.exit:     ; preds = %bb.i, %zend_print_long_to_buf.exit.i
  %.014.i = phi ptr [ %i.ac, %bb.i ], [ %.0.i.i, %zend_print_long_to_buf.exit.i ]
  %.0.i = phi i64 [ %i.ae, %bb.i ], [ %i.ax, %zend_print_long_to_buf.exit.i ]
  %i.ay = call i32 @zend_binary_strcmp(ptr noundef nonnull %.015.i, i64 noundef %.013.i, ptr noundef nonnull %.014.i, i64 noundef %.0.i) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.o, label %bb.p, !prof !30

bb.o:                                             ; preds = %php_array_key_compare_string_unstable_i.exit
  %i.az = getelementptr i8, ptr %0, i64 12
  %.val = load i32, ptr %i.az, align 4, !tbaa !25
  %i.ba = getelementptr i8, ptr %1, i64 12
  %.val7 = load i32, ptr %i.ba, align 4, !tbaa !25
  %i.bb = call fastcc i32 @stable_sort_fallback(i32 %.val, i32 %.val7)
  br label %bb.p

bb.p:                                             ; preds = %php_array_key_compare_string_unstable_i.exit, %bb.o
  %.0 = phi i32 [ %i.bb, %bb.o ], [ %i.ay, %php_array_key_compare_string_unstable_i.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @php_array_reverse_key_compare_string_natural_case(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
  %3 = alloca [21 x i8], align 16                 ; 3 uses
  %4 = alloca [21 x i8], align 16                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !119      ; 3 uses
  %.not.i = icmp eq ptr %6, null
  br i1 %.not.i, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %10 = load i64, ptr %9, align 8, !tbaa !123
  br label %35

11:                                               ; preds = %2
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 5 uses
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %14 = load i64, ptr %13, align 8, !tbaa !120    ; 3 uses
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = sub i64 0, %14
  store i8 0, ptr %12, align 4, !tbaa !25
  br label %18

18:                                               ; preds = %18, %16
  %.05.i.i = phi ptr [ %12, %16 ], [ %22, %18 ]   ; 2 uses
  %.0.i22.i = phi i64 [ %17, %16 ], [ %23, %18 ]  ; 3 uses
  %19 = urem i64 %.0.i22.i, 10
  %20 = trunc nuw nsw i64 %19 to i8
  %21 = or disjoint i8 %20, 48
  %22 = getelementptr inbounds i8, ptr %.05.i.i, i64 -1 ; 2 uses
  store i8 %21, ptr %22, align 1, !tbaa !25
  %23 = udiv i64 %.0.i22.i, 10
  %.not.i.i = icmp ult i64 %.0.i22.i, 10
  br i1 %.not.i.i, label %zend_print_ulong_to_buf.exit.i, label %18, !llvm.loop !10

zend_print_ulong_to_buf.exit.i:                   ; preds = %18
  %24 = getelementptr inbounds i8, ptr %.05.i.i, i64 -2 ; 2 uses
  store i8 45, ptr %24, align 1, !tbaa !25
  br label %zend_print_long_to_buf.exit21.i

25:                                               ; preds = %11
  store i8 0, ptr %12, align 4, !tbaa !25
  br label %26

26:                                               ; preds = %26, %25
  %.05.i23.i = phi ptr [ %12, %25 ], [ %30, %26 ]
  %.0.i24.i = phi i64 [ %14, %25 ], [ %31, %26 ]  ; 3 uses
  %27 = urem i64 %.0.i24.i, 10
  %28 = trunc nuw nsw i64 %27 to i8
  %29 = or disjoint i8 %28, 48
  %30 = getelementptr inbounds i8, ptr %.05.i23.i, i64 -1 ; 3 uses
  store i8 %29, ptr %30, align 1, !tbaa !25
  %31 = udiv i64 %.0.i24.i, 10
  %.not.i25.i = icmp ult i64 %.0.i24.i, 10
  br i1 %.not.i25.i, label %zend_print_long_to_buf.exit21.i, label %26, !llvm.loop !10

zend_print_long_to_buf.exit21.i:                  ; preds = %26, %zend_print_ulong_to_buf.exit.i
  %.0.i20.i = phi ptr [ %24, %zend_print_ulong_to_buf.exit.i ], [ %30, %26 ] ; 2 uses
  %32 = ptrtoint ptr %12 to i64
  %33 = ptrtoint ptr %.0.i20.i to i64
  %34 = sub i64 %32, %33
  br label %35

35:                                               ; preds = %zend_print_long_to_buf.exit21.i, %7
  %.016.i = phi ptr [ %8, %7 ], [ %.0.i20.i, %zend_print_long_to_buf.exit21.i ]
  %.014.i = phi i64 [ %10, %7 ], [ %34, %zend_print_long_to_buf.exit21.i ]
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %37 = load ptr, ptr %36, align 8, !tbaa !119    ; 3 uses
  %.not19.i = icmp eq ptr %37, null
  br i1 %.not19.i, label %42, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds nuw i8, ptr %37, i64 24
  %40 = getelementptr inbounds nuw i8, ptr %37, i64 16
  %41 = load i64, ptr %40, align 8, !tbaa !123
  br label %php_array_key_compare_string_natural_general.exit

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 5 uses
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %45 = load i64, ptr %44, align 8, !tbaa !120    ; 3 uses
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = sub i64 0, %45
  store i8 0, ptr %43, align 4, !tbaa !25
  br label %49

49:                                               ; preds = %49, %47
  %.05.i27.i = phi ptr [ %43, %47 ], [ %53, %49 ] ; 2 uses
  %.0.i28.i = phi i64 [ %48, %47 ], [ %54, %49 ]  ; 3 uses
  %50 = urem i64 %.0.i28.i, 10
  %51 = trunc nuw nsw i64 %50 to i8
  %52 = or disjoint i8 %51, 48
  %53 = getelementptr inbounds i8, ptr %.05.i27.i, i64 -1 ; 2 uses
  store i8 %52, ptr %53, align 1, !tbaa !25
  %54 = udiv i64 %.0.i28.i, 10
  %.not.i29.i = icmp ult i64 %.0.i28.i, 10
  br i1 %.not.i29.i, label %zend_print_ulong_to_buf.exit30.i, label %49, !llvm.loop !10

zend_print_ulong_to_buf.exit30.i:                 ; preds = %49
  %55 = getelementptr inbounds i8, ptr %.05.i27.i, i64 -2 ; 2 uses
  store i8 45, ptr %55, align 1, !tbaa !25
  br label %zend_print_long_to_buf.exit.i

56:                                               ; preds = %42
  store i8 0, ptr %43, align 4, !tbaa !25
  br label %57

57:                                               ; preds = %57, %56
  %.05.i31.i = phi ptr [ %43, %56 ], [ %61, %57 ]
  %.0.i32.i = phi i64 [ %45, %56 ], [ %62, %57 ]  ; 3 uses
  %58 = urem i64 %.0.i32.i, 10
  %59 = trunc nuw nsw i64 %58 to i8
  %60 = or disjoint i8 %59, 48
  %61 = getelementptr inbounds i8, ptr %.05.i31.i, i64 -1 ; 3 uses
  store i8 %60, ptr %61, align 1, !tbaa !25
  %62 = udiv i64 %.0.i32.i, 10
  %.not.i33.i = icmp ult i64 %.0.i32.i, 10
  br i1 %.not.i33.i, label %zend_print_long_to_buf.exit.i, label %57, !llvm.loop !10

zend_print_long_to_buf.exit.i:                    ; preds = %57, %zend_print_ulong_to_buf.exit30.i
  %.0.i.i = phi ptr [ %55, %zend_print_ulong_to_buf.exit30.i ], [ %61, %57 ] ; 2 uses
  %63 = ptrtoint ptr %43 to i64
  %64 = ptrtoint ptr %.0.i.i to i64
  %65 = sub i64 %63, %64
  br label %php_array_key_compare_string_natural_general.exit

php_array_key_compare_string_natural_general.exit: ; preds = %38, %zend_print_long_to_buf.exit.i
  %.015.i = phi ptr [ %39, %38 ], [ %.0.i.i, %zend_print_long_to_buf.exit.i ]
  %.0.i = phi i64 [ %41, %38 ], [ %65, %zend_print_long_to_buf.exit.i ]
  %66 = call i32 @strnatcmp_ex(ptr noundef nonnull %.016.i, i64 noundef %.014.i, ptr noundef nonnull %.015.i, i64 noundef %.0.i, i1 noundef zeroext true) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %.not = icmp eq i32 %66, 0
  br i1 %.not, label %bb.a, label %bb.b, !prof !30

bb.a:                                             ; preds = %php_array_key_compare_string_natural_general.exit
  %i.a = getelementptr i8, ptr %0, i64 12
  %.val = load i32, ptr %i.a, align 4, !tbaa !25
  %i.b = getelementptr i8, ptr %1, i64 12
  %.val7 = load i32, ptr %i.b, align 4, !tbaa !25
  %67 = call fastcc i32 @stable_sort_fallback(i32 %.val, i32 %.val7)
  br label %bb.b

bb.b:                                             ; preds = %php_array_key_compare_string_natural_general.exit, %bb.a
  %.0 = phi i32 [ %67, %bb.a ], [ %66, %php_array_key_compare_string_natural_general.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @php_array_key_compare_string_natural_case(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
  %3 = alloca [21 x i8], align 16                 ; 3 uses
  %4 = alloca [21 x i8], align 16                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !119      ; 3 uses
  %.not.i = icmp eq ptr %6, null
  br i1 %.not.i, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %10 = load i64, ptr %9, align 8, !tbaa !123
  br label %35

11:                                               ; preds = %2
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 5 uses
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %14 = load i64, ptr %13, align 8, !tbaa !120    ; 3 uses
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = sub i64 0, %14
  store i8 0, ptr %12, align 4, !tbaa !25
  br label %18

18:                                               ; preds = %18, %16
  %.05.i.i = phi ptr [ %12, %16 ], [ %22, %18 ]   ; 2 uses
  %.0.i22.i = phi i64 [ %17, %16 ], [ %23, %18 ]  ; 3 uses
  %19 = urem i64 %.0.i22.i, 10
  %20 = trunc nuw nsw i64 %19 to i8
  %21 = or disjoint i8 %20, 48
  %22 = getelementptr inbounds i8, ptr %.05.i.i, i64 -1 ; 2 uses
  store i8 %21, ptr %22, align 1, !tbaa !25
  %23 = udiv i64 %.0.i22.i, 10
  %.not.i.i = icmp ult i64 %.0.i22.i, 10
  br i1 %.not.i.i, label %zend_print_ulong_to_buf.exit.i, label %18, !llvm.loop !10

zend_print_ulong_to_buf.exit.i:                   ; preds = %18
  %24 = getelementptr inbounds i8, ptr %.05.i.i, i64 -2 ; 2 uses
  store i8 45, ptr %24, align 1, !tbaa !25
  br label %zend_print_long_to_buf.exit21.i

25:                                               ; preds = %11
  store i8 0, ptr %12, align 4, !tbaa !25
  br label %26

26:                                               ; preds = %26, %25
  %.05.i23.i = phi ptr [ %12, %25 ], [ %30, %26 ]
  %.0.i24.i = phi i64 [ %14, %25 ], [ %31, %26 ]  ; 3 uses
  %27 = urem i64 %.0.i24.i, 10
  %28 = trunc nuw nsw i64 %27 to i8
  %29 = or disjoint i8 %28, 48
  %30 = getelementptr inbounds i8, ptr %.05.i23.i, i64 -1 ; 3 uses
  store i8 %29, ptr %30, align 1, !tbaa !25
  %31 = udiv i64 %.0.i24.i, 10
  %.not.i25.i = icmp ult i64 %.0.i24.i, 10
  br i1 %.not.i25.i, label %zend_print_long_to_buf.exit21.i, label %26, !llvm.loop !10

zend_print_long_to_buf.exit21.i:                  ; preds = %26, %zend_print_ulong_to_buf.exit.i
  %.0.i20.i = phi ptr [ %24, %zend_print_ulong_to_buf.exit.i ], [ %30, %26 ] ; 2 uses
  %32 = ptrtoint ptr %12 to i64
  %33 = ptrtoint ptr %.0.i20.i to i64
  %34 = sub i64 %32, %33
  br label %35

35:                                               ; preds = %zend_print_long_to_buf.exit21.i, %7
  %.016.i = phi ptr [ %8, %7 ], [ %.0.i20.i, %zend_print_long_to_buf.exit21.i ]
  %.014.i = phi i64 [ %10, %7 ], [ %34, %zend_print_long_to_buf.exit21.i ]
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %37 = load ptr, ptr %36, align 8, !tbaa !119    ; 3 uses
  %.not19.i = icmp eq ptr %37, null
  br i1 %.not19.i, label %42, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds nuw i8, ptr %37, i64 24
  %40 = getelementptr inbounds nuw i8, ptr %37, i64 16
  %41 = load i64, ptr %40, align 8, !tbaa !123
  br label %php_array_key_compare_string_natural_general.exit

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 5 uses
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %45 = load i64, ptr %44, align 8, !tbaa !120    ; 3 uses
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = sub i64 0, %45
  store i8 0, ptr %43, align 4, !tbaa !25
  br label %49

49:                                               ; preds = %49, %47
  %.05.i27.i = phi ptr [ %43, %47 ], [ %53, %49 ] ; 2 uses
  %.0.i28.i = phi i64 [ %48, %47 ], [ %54, %49 ]  ; 3 uses
  %50 = urem i64 %.0.i28.i, 10
  %51 = trunc nuw nsw i64 %50 to i8
  %52 = or disjoint i8 %51, 48
  %53 = getelementptr inbounds i8, ptr %.05.i27.i, i64 -1 ; 2 uses
  store i8 %52, ptr %53, align 1, !tbaa !25
  %54 = udiv i64 %.0.i28.i, 10
  %.not.i29.i = icmp ult i64 %.0.i28.i, 10
  br i1 %.not.i29.i, label %zend_print_ulong_to_buf.exit30.i, label %49, !llvm.loop !10

zend_print_ulong_to_buf.exit30.i:                 ; preds = %49
  %55 = getelementptr inbounds i8, ptr %.05.i27.i, i64 -2 ; 2 uses
  store i8 45, ptr %55, align 1, !tbaa !25
  br label %zend_print_long_to_buf.exit.i

56:                                               ; preds = %42
  store i8 0, ptr %43, align 4, !tbaa !25
  br label %57

57:                                               ; preds = %57, %56
  %.05.i31.i = phi ptr [ %43, %56 ], [ %61, %57 ]
  %.0.i32.i = phi i64 [ %45, %56 ], [ %62, %57 ]  ; 3 uses
  %58 = urem i64 %.0.i32.i, 10
  %59 = trunc nuw nsw i64 %58 to i8
  %60 = or disjoint i8 %59, 48
  %61 = getelementptr inbounds i8, ptr %.05.i31.i, i64 -1 ; 3 uses
  store i8 %60, ptr %61, align 1, !tbaa !25
  %62 = udiv i64 %.0.i32.i, 10
  %.not.i33.i = icmp ult i64 %.0.i32.i, 10
  br i1 %.not.i33.i, label %zend_print_long_to_buf.exit.i, label %57, !llvm.loop !10

zend_print_long_to_buf.exit.i:                    ; preds = %57, %zend_print_ulong_to_buf.exit30.i
  %.0.i.i = phi ptr [ %55, %zend_print_ulong_to_buf.exit30.i ], [ %61, %57 ] ; 2 uses
  %63 = ptrtoint ptr %43 to i64
  %64 = ptrtoint ptr %.0.i.i to i64
  %65 = sub i64 %63, %64
  br label %php_array_key_compare_string_natural_general.exit

php_array_key_compare_string_natural_general.exit: ; preds = %38, %zend_print_long_to_buf.exit.i
  %.015.i = phi ptr [ %39, %38 ], [ %.0.i.i, %zend_print_long_to_buf.exit.i ]
  %.0.i = phi i64 [ %41, %38 ], [ %65, %zend_print_long_to_buf.exit.i ]
  %66 = call i32 @strnatcmp_ex(ptr noundef nonnull %.016.i, i64 noundef %.014.i, ptr noundef nonnull %.015.i, i64 noundef %.0.i, i1 noundef zeroext true) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %.not = icmp eq i32 %66, 0
  br i1 %.not, label %bb.a, label %bb.b, !prof !30

bb.a:                                             ; preds = %php_array_key_compare_string_natural_general.exit
  %i.a = getelementptr i8, ptr %0, i64 12
  %.val = load i32, ptr %i.a, align 4, !tbaa !25
  %i.b = getelementptr i8, ptr %1, i64 12
  %.val7 = load i32, ptr %i.b, align 4, !tbaa !25
  %67 = call fastcc i32 @stable_sort_fallback(i32 %.val, i32 %.val7)
  br label %bb.b

bb.b:                                             ; preds = %php_array_key_compare_string_natural_general.exit, %bb.a
  %.0 = phi i32 [ %67, %bb.a ], [ %66, %php_array_key_compare_string_natural_general.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @php_array_reverse_key_compare_string_natural(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
  %3 = alloca [21 x i8], align 16                 ; 3 uses
  %4 = alloca [21 x i8], align 16                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !119      ; 3 uses
  %.not.i = icmp eq ptr %6, null
  br i1 %.not.i, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %10 = load i64, ptr %9, align 8, !tbaa !123
  br label %35

11:                                               ; preds = %2
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 5 uses
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %14 = load i64, ptr %13, align 8, !tbaa !120    ; 3 uses
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = sub i64 0, %14
  store i8 0, ptr %12, align 4, !tbaa !25
  br label %18

18:                                               ; preds = %18, %16
  %.05.i.i = phi ptr [ %12, %16 ], [ %22, %18 ]   ; 2 uses
  %.0.i22.i = phi i64 [ %17, %16 ], [ %23, %18 ]  ; 3 uses
  %19 = urem i64 %.0.i22.i, 10
  %20 = trunc nuw nsw i64 %19 to i8
  %21 = or disjoint i8 %20, 48
  %22 = getelementptr inbounds i8, ptr %.05.i.i, i64 -1 ; 2 uses
  store i8 %21, ptr %22, align 1, !tbaa !25
  %23 = udiv i64 %.0.i22.i, 10
  %.not.i.i = icmp ult i64 %.0.i22.i, 10
  br i1 %.not.i.i, label %zend_print_ulong_to_buf.exit.i, label %18, !llvm.loop !10

zend_print_ulong_to_buf.exit.i:                   ; preds = %18
  %24 = getelementptr inbounds i8, ptr %.05.i.i, i64 -2 ; 2 uses
  store i8 45, ptr %24, align 1, !tbaa !25
  br label %zend_print_long_to_buf.exit21.i

25:                                               ; preds = %11
  store i8 0, ptr %12, align 4, !tbaa !25
  br label %26

26:                                               ; preds = %26, %25
  %.05.i23.i = phi ptr [ %12, %25 ], [ %30, %26 ]
  %.0.i24.i = phi i64 [ %14, %25 ], [ %31, %26 ]  ; 3 uses
  %27 = urem i64 %.0.i24.i, 10
  %28 = trunc nuw nsw i64 %27 to i8
  %29 = or disjoint i8 %28, 48
  %30 = getelementptr inbounds i8, ptr %.05.i23.i, i64 -1 ; 3 uses
  store i8 %29, ptr %30, align 1, !tbaa !25
  %31 = udiv i64 %.0.i24.i, 10
  %.not.i25.i = icmp ult i64 %.0.i24.i, 10
  br i1 %.not.i25.i, label %zend_print_long_to_buf.exit21.i, label %26, !llvm.loop !10

zend_print_long_to_buf.exit21.i:                  ; preds = %26, %zend_print_ulong_to_buf.exit.i
  %.0.i20.i = phi ptr [ %24, %zend_print_ulong_to_buf.exit.i ], [ %30, %26 ] ; 2 uses
  %32 = ptrtoint ptr %12 to i64
  %33 = ptrtoint ptr %.0.i20.i to i64
  %34 = sub i64 %32, %33
  br label %35

35:                                               ; preds = %zend_print_long_to_buf.exit21.i, %7
  %.016.i = phi ptr [ %8, %7 ], [ %.0.i20.i, %zend_print_long_to_buf.exit21.i ]
  %.014.i = phi i64 [ %10, %7 ], [ %34, %zend_print_long_to_buf.exit21.i ]
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %37 = load ptr, ptr %36, align 8, !tbaa !119    ; 3 uses
  %.not19.i = icmp eq ptr %37, null
  br i1 %.not19.i, label %42, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds nuw i8, ptr %37, i64 24
  %40 = getelementptr inbounds nuw i8, ptr %37, i64 16
  %41 = load i64, ptr %40, align 8, !tbaa !123
  br label %php_array_key_compare_string_natural_general.exit

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 5 uses
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %45 = load i64, ptr %44, align 8, !tbaa !120    ; 3 uses
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = sub i64 0, %45
  store i8 0, ptr %43, align 4, !tbaa !25
  br label %49

49:                                               ; preds = %49, %47
  %.05.i27.i = phi ptr [ %43, %47 ], [ %53, %49 ] ; 2 uses
  %.0.i28.i = phi i64 [ %48, %47 ], [ %54, %49 ]  ; 3 uses
  %50 = urem i64 %.0.i28.i, 10
  %51 = trunc nuw nsw i64 %50 to i8
  %52 = or disjoint i8 %51, 48
  %53 = getelementptr inbounds i8, ptr %.05.i27.i, i64 -1 ; 2 uses
  store i8 %52, ptr %53, align 1, !tbaa !25
  %54 = udiv i64 %.0.i28.i, 10
  %.not.i29.i = icmp ult i64 %.0.i28.i, 10
  br i1 %.not.i29.i, label %zend_print_ulong_to_buf.exit30.i, label %49, !llvm.loop !10

zend_print_ulong_to_buf.exit30.i:                 ; preds = %49
  %55 = getelementptr inbounds i8, ptr %.05.i27.i, i64 -2 ; 2 uses
  store i8 45, ptr %55, align 1, !tbaa !25
  br label %zend_print_long_to_buf.exit.i

56:                                               ; preds = %42
  store i8 0, ptr %43, align 4, !tbaa !25
  br label %57

57:                                               ; preds = %57, %56
  %.05.i31.i = phi ptr [ %43, %56 ], [ %61, %57 ]
  %.0.i32.i = phi i64 [ %45, %56 ], [ %62, %57 ]  ; 3 uses
  %58 = urem i64 %.0.i32.i, 10
  %59 = trunc nuw nsw i64 %58 to i8
  %60 = or disjoint i8 %59, 48
  %61 = getelementptr inbounds i8, ptr %.05.i31.i, i64 -1 ; 3 uses
  store i8 %60, ptr %61, align 1, !tbaa !25
  %62 = udiv i64 %.0.i32.i, 10
  %.not.i33.i = icmp ult i64 %.0.i32.i, 10
  br i1 %.not.i33.i, label %zend_print_long_to_buf.exit.i, label %57, !llvm.loop !10

zend_print_long_to_buf.exit.i:                    ; preds = %57, %zend_print_ulong_to_buf.exit30.i
  %.0.i.i = phi ptr [ %55, %zend_print_ulong_to_buf.exit30.i ], [ %61, %57 ] ; 2 uses
  %63 = ptrtoint ptr %43 to i64
  %64 = ptrtoint ptr %.0.i.i to i64
  %65 = sub i64 %63, %64
  br label %php_array_key_compare_string_natural_general.exit

php_array_key_compare_string_natural_general.exit: ; preds = %38, %zend_print_long_to_buf.exit.i
  %.015.i = phi ptr [ %39, %38 ], [ %.0.i.i, %zend_print_long_to_buf.exit.i ]
  %.0.i = phi i64 [ %41, %38 ], [ %65, %zend_print_long_to_buf.exit.i ]
  %66 = call i32 @strnatcmp_ex(ptr noundef nonnull %.016.i, i64 noundef %.014.i, ptr noundef nonnull %.015.i, i64 noundef %.0.i, i1 noundef zeroext false) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %.not = icmp eq i32 %66, 0
  br i1 %.not, label %bb.a, label %bb.b, !prof !30

bb.a:                                             ; preds = %php_array_key_compare_string_natural_general.exit
  %i.a = getelementptr i8, ptr %0, i64 12
  %.val = load i32, ptr %i.a, align 4, !tbaa !25
  %i.b = getelementptr i8, ptr %1, i64 12
  %.val7 = load i32, ptr %i.b, align 4, !tbaa !25
  %67 = call fastcc i32 @stable_sort_fallback(i32 %.val, i32 %.val7)
  br label %bb.b

bb.b:                                             ; preds = %php_array_key_compare_string_natural_general.exit, %bb.a
  %.0 = phi i32 [ %67, %bb.a ], [ %66, %php_array_key_compare_string_natural_general.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @php_array_key_compare_string_natural(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
  %3 = alloca [21 x i8], align 16                 ; 3 uses
  %4 = alloca [21 x i8], align 16                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !119      ; 3 uses
  %.not.i = icmp eq ptr %6, null
  br i1 %.not.i, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %10 = load i64, ptr %9, align 8, !tbaa !123
  br label %35

11:                                               ; preds = %2
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 5 uses
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %14 = load i64, ptr %13, align 8, !tbaa !120    ; 3 uses
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = sub i64 0, %14
  store i8 0, ptr %12, align 4, !tbaa !25
  br label %18

18:                                               ; preds = %18, %16
  %.05.i.i = phi ptr [ %12, %16 ], [ %22, %18 ]   ; 2 uses
  %.0.i22.i = phi i64 [ %17, %16 ], [ %23, %18 ]  ; 3 uses
  %19 = urem i64 %.0.i22.i, 10
  %20 = trunc nuw nsw i64 %19 to i8
  %21 = or disjoint i8 %20, 48
  %22 = getelementptr inbounds i8, ptr %.05.i.i, i64 -1 ; 2 uses
  store i8 %21, ptr %22, align 1, !tbaa !25
  %23 = udiv i64 %.0.i22.i, 10
  %.not.i.i = icmp ult i64 %.0.i22.i, 10
  br i1 %.not.i.i, label %zend_print_ulong_to_buf.exit.i, label %18, !llvm.loop !10

zend_print_ulong_to_buf.exit.i:                   ; preds = %18
  %24 = getelementptr inbounds i8, ptr %.05.i.i, i64 -2 ; 2 uses
  store i8 45, ptr %24, align 1, !tbaa !25
  br label %zend_print_long_to_buf.exit21.i

25:                                               ; preds = %11
  store i8 0, ptr %12, align 4, !tbaa !25
  br label %26

26:                                               ; preds = %26, %25
  %.05.i23.i = phi ptr [ %12, %25 ], [ %30, %26 ]
  %.0.i24.i = phi i64 [ %14, %25 ], [ %31, %26 ]  ; 3 uses
  %27 = urem i64 %.0.i24.i, 10
  %28 = trunc nuw nsw i64 %27 to i8
  %29 = or disjoint i8 %28, 48
  %30 = getelementptr inbounds i8, ptr %.05.i23.i, i64 -1 ; 3 uses
  store i8 %29, ptr %30, align 1, !tbaa !25
  %31 = udiv i64 %.0.i24.i, 10
  %.not.i25.i = icmp ult i64 %.0.i24.i, 10
  br i1 %.not.i25.i, label %zend_print_long_to_buf.exit21.i, label %26, !llvm.loop !10

zend_print_long_to_buf.exit21.i:                  ; preds = %26, %zend_print_ulong_to_buf.exit.i
  %.0.i20.i = phi ptr [ %24, %zend_print_ulong_to_buf.exit.i ], [ %30, %26 ] ; 2 uses
  %32 = ptrtoint ptr %12 to i64
  %33 = ptrtoint ptr %.0.i20.i to i64
  %34 = sub i64 %32, %33
  br label %35

35:                                               ; preds = %zend_print_long_to_buf.exit21.i, %7
  %.016.i = phi ptr [ %8, %7 ], [ %.0.i20.i, %zend_print_long_to_buf.exit21.i ]
  %.014.i = phi i64 [ %10, %7 ], [ %34, %zend_print_long_to_buf.exit21.i ]
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %37 = load ptr, ptr %36, align 8, !tbaa !119    ; 3 uses
  %.not19.i = icmp eq ptr %37, null
  br i1 %.not19.i, label %42, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds nuw i8, ptr %37, i64 24
  %40 = getelementptr inbounds nuw i8, ptr %37, i64 16
  %41 = load i64, ptr %40, align 8, !tbaa !123
  br label %php_array_key_compare_string_natural_general.exit

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 5 uses
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %45 = load i64, ptr %44, align 8, !tbaa !120    ; 3 uses
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = sub i64 0, %45
  store i8 0, ptr %43, align 4, !tbaa !25
  br label %49

49:                                               ; preds = %49, %47
  %.05.i27.i = phi ptr [ %43, %47 ], [ %53, %49 ] ; 2 uses
  %.0.i28.i = phi i64 [ %48, %47 ], [ %54, %49 ]  ; 3 uses
  %50 = urem i64 %.0.i28.i, 10
  %51 = trunc nuw nsw i64 %50 to i8
  %52 = or disjoint i8 %51, 48
  %53 = getelementptr inbounds i8, ptr %.05.i27.i, i64 -1 ; 2 uses
  store i8 %52, ptr %53, align 1, !tbaa !25
  %54 = udiv i64 %.0.i28.i, 10
  %.not.i29.i = icmp ult i64 %.0.i28.i, 10
  br i1 %.not.i29.i, label %zend_print_ulong_to_buf.exit30.i, label %49, !llvm.loop !10

zend_print_ulong_to_buf.exit30.i:                 ; preds = %49
  %55 = getelementptr inbounds i8, ptr %.05.i27.i, i64 -2 ; 2 uses
  store i8 45, ptr %55, align 1, !tbaa !25
  br label %zend_print_long_to_buf.exit.i

56:                                               ; preds = %42
  store i8 0, ptr %43, align 4, !tbaa !25
  br label %57

57:                                               ; preds = %57, %56
  %.05.i31.i = phi ptr [ %43, %56 ], [ %61, %57 ]
  %.0.i32.i = phi i64 [ %45, %56 ], [ %62, %57 ]  ; 3 uses
  %58 = urem i64 %.0.i32.i, 10
  %59 = trunc nuw nsw i64 %58 to i8
  %60 = or disjoint i8 %59, 48
  %61 = getelementptr inbounds i8, ptr %.05.i31.i, i64 -1 ; 3 uses
  store i8 %60, ptr %61, align 1, !tbaa !25
  %62 = udiv i64 %.0.i32.i, 10
  %.not.i33.i = icmp ult i64 %.0.i32.i, 10
  br i1 %.not.i33.i, label %zend_print_long_to_buf.exit.i, label %57, !llvm.loop !10

zend_print_long_to_buf.exit.i:                    ; preds = %57, %zend_print_ulong_to_buf.exit30.i
  %.0.i.i = phi ptr [ %55, %zend_print_ulong_to_buf.exit30.i ], [ %61, %57 ] ; 2 uses
  %63 = ptrtoint ptr %43 to i64
  %64 = ptrtoint ptr %.0.i.i to i64
  %65 = sub i64 %63, %64
  br label %php_array_key_compare_string_natural_general.exit

php_array_key_compare_string_natural_general.exit: ; preds = %38, %zend_print_long_to_buf.exit.i
  %.015.i = phi ptr [ %39, %38 ], [ %.0.i.i, %zend_print_long_to_buf.exit.i ]
  %.0.i = phi i64 [ %41, %38 ], [ %65, %zend_print_long_to_buf.exit.i ]
  %66 = call i32 @strnatcmp_ex(ptr noundef nonnull %.016.i, i64 noundef %.014.i, ptr noundef nonnull %.015.i, i64 noundef %.0.i, i1 noundef zeroext false) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %.not = icmp eq i32 %66, 0
  br i1 %.not, label %bb.a, label %bb.b, !prof !30

bb.a:                                             ; preds = %php_array_key_compare_string_natural_general.exit
  %i.a = getelementptr i8, ptr %0, i64 12
  %.val = load i32, ptr %i.a, align 4, !tbaa !25
  %i.b = getelementptr i8, ptr %1, i64 12
  %.val7 = load i32, ptr %i.b, align 4, !tbaa !25
  %67 = call fastcc i32 @stable_sort_fallback(i32 %.val, i32 %.val7)
  br label %bb.b

bb.b:                                             ; preds = %php_array_key_compare_string_natural_general.exit, %bb.a
  %.0 = phi i32 [ %67, %bb.a ], [ %66, %php_array_key_compare_string_natural_general.exit ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nounwind memory(read) uwtable
define internal range(i32 -2147483647, -2147483648) i32 @php_array_reverse_key_compare_string_locale(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #16 {
bb.a:
  %i.a = tail call fastcc i32 @php_array_reverse_key_compare_string_locale_unstable(ptr noundef %0, ptr noundef %1) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 12
  %.val = load i32, ptr %i.b, align 4, !tbaa !25
  %i.c = getelementptr i8, ptr %1, i64 12
  %.val7 = load i32, ptr %i.c, align 4, !tbaa !25
  %i.d = tail call fastcc i32 @stable_sort_fallback(i32 %.val, i32 %.val7)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nounwind memory(read) uwtable
define internal i32 @php_array_key_compare_string_locale(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #16 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 3 uses
  %i.b = alloca [21 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %zend_print_long_to_buf.exit13.i

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !120  ; 3 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = sub i64 0, %i.h
  store i8 0, ptr %i.f, align 4, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.05.i.i = phi ptr [ %i.f, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %.0.i14.i = phi i64 [ %i.j, %bb.d ], [ %i.o, %bb.e ] ; 3 uses
  %i.k = urem i64 %.0.i14.i, 10
  %i.l = trunc nuw nsw i64 %i.k to i8
  %i.m = or disjoint i8 %i.l, 48
  %i.n = getelementptr inbounds i8, ptr %.05.i.i, i64 -1 ; 2 uses
  store i8 %i.m, ptr %i.n, align 1, !tbaa !25
  %i.o = udiv i64 %.0.i14.i, 10
  %.not.i.i = icmp ult i64 %.0.i14.i, 10
  br i1 %.not.i.i, label %zend_print_ulong_to_buf.exit.i, label %bb.e, !llvm.loop !10

zend_print_ulong_to_buf.exit.i:                   ; preds = %bb.e
  %i.p = getelementptr inbounds i8, ptr %.05.i.i, i64 -2 ; 2 uses
  store i8 45, ptr %i.p, align 1, !tbaa !25
  br label %zend_print_long_to_buf.exit13.i

bb.f:                                             ; preds = %bb.c
  store i8 0, ptr %i.f, align 4, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.05.i15.i = phi ptr [ %i.f, %bb.f ], [ %i.t, %bb.g ]
  %.0.i16.i = phi i64 [ %i.h, %bb.f ], [ %i.u, %bb.g ] ; 3 uses
  %i.q = urem i64 %.0.i16.i, 10
  %i.r = trunc nuw nsw i64 %i.q to i8
  %i.s = or disjoint i8 %i.r, 48
  %i.t = getelementptr inbounds i8, ptr %.05.i15.i, i64 -1 ; 3 uses
  store i8 %i.s, ptr %i.t, align 1, !tbaa !25
  %i.u = udiv i64 %.0.i16.i, 10
  %.not.i17.i = icmp ult i64 %.0.i16.i, 10
  br i1 %.not.i17.i, label %zend_print_long_to_buf.exit13.i, label %bb.g, !llvm.loop !10

zend_print_long_to_buf.exit13.i:                  ; preds = %bb.g, %zend_print_ulong_to_buf.exit.i, %bb.b
  %.08.i = phi ptr [ %i.e, %bb.b ], [ %i.p, %zend_print_ulong_to_buf.exit.i ], [ %i.t, %bb.g ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !119  ; 2 uses
  %.not11.i = icmp eq ptr %i.w, null
  br i1 %.not11.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %zend_print_long_to_buf.exit13.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  br label %php_array_key_compare_string_locale_unstable_i.exit

bb.i:                                             ; preds = %zend_print_long_to_buf.exit13.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !120 ; 3 uses
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ac = sub i64 0, %i.aa
  store i8 0, ptr %i.y, align 4, !tbaa !25
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.05.i19.i = phi ptr [ %i.y, %bb.j ], [ %i.ag, %bb.k ] ; 2 uses
  %.0.i20.i = phi i64 [ %i.ac, %bb.j ], [ %i.ah, %bb.k ] ; 3 uses
  %i.ad = urem i64 %.0.i20.i, 10
  %i.ae = trunc nuw nsw i64 %i.ad to i8
  %i.af = or disjoint i8 %i.ae, 48
  %i.ag = getelementptr inbounds i8, ptr %.05.i19.i, i64 -1 ; 2 uses
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !25
  %i.ah = udiv i64 %.0.i20.i, 10
  %.not.i21.i = icmp ult i64 %.0.i20.i, 10
  br i1 %.not.i21.i, label %zend_print_ulong_to_buf.exit22.i, label %bb.k, !llvm.loop !10

zend_print_ulong_to_buf.exit22.i:                 ; preds = %bb.k
  %i.ai = getelementptr inbounds i8, ptr %.05.i19.i, i64 -2 ; 2 uses
  store i8 45, ptr %i.ai, align 1, !tbaa !25
  br label %php_array_key_compare_string_locale_unstable_i.exit

bb.l:                                             ; preds = %bb.i
  store i8 0, ptr %i.y, align 4, !tbaa !25
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.05.i23.i = phi ptr [ %i.y, %bb.l ], [ %i.am, %bb.m ]
  %.0.i24.i = phi i64 [ %i.aa, %bb.l ], [ %i.an, %bb.m ] ; 3 uses
  %i.aj = urem i64 %.0.i24.i, 10
  %i.ak = trunc nuw nsw i64 %i.aj to i8
  %i.al = or disjoint i8 %i.ak, 48
  %i.am = getelementptr inbounds i8, ptr %.05.i23.i, i64 -1 ; 3 uses
  store i8 %i.al, ptr %i.am, align 1, !tbaa !25
  %i.an = udiv i64 %.0.i24.i, 10
  %.not.i25.i = icmp ult i64 %.0.i24.i, 10
  br i1 %.not.i25.i, label %php_array_key_compare_string_locale_unstable_i.exit, label %bb.m, !llvm.loop !10

php_array_key_compare_string_locale_unstable_i.exit: ; preds = %bb.m, %zend_print_ulong_to_buf.exit22.i, %bb.h
  %.0.i = phi ptr [ %i.x, %bb.h ], [ %i.ai, %zend_print_ulong_to_buf.exit22.i ], [ %i.am, %bb.m ]
  %i.ao = call i32 @strcoll(ptr noundef nonnull %.08.i, ptr noundef nonnull %.0.i) #23 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.n, label %bb.o, !prof !30

bb.n:                                             ; preds = %php_array_key_compare_string_locale_unstable_i.exit
  %i.ap = getelementptr i8, ptr %0, i64 12
  %.val = load i32, ptr %i.ap, align 4, !tbaa !25
  %i.aq = getelementptr i8, ptr %1, i64 12
  %.val7 = load i32, ptr %i.aq, align 4, !tbaa !25
  %i.ar = tail call fastcc i32 @stable_sort_fallback(i32 %.val, i32 %.val7)
  br label %bb.o

bb.o:                                             ; preds = %php_array_key_compare_string_locale_unstable_i.exit, %bb.n
  %.0 = phi i32 [ %i.ar, %bb.n ], [ %i.ao, %php_array_key_compare_string_locale_unstable_i.exit ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal range(i32 -2147483647, -2147483648) i32 @php_array_reverse_key_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #15 {
bb.a:
  %i.a = tail call fastcc i32 @php_array_reverse_key_compare_unstable(ptr noundef %0, ptr noundef %1) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 12
  %.val = load i32, ptr %i.b, align 4, !tbaa !25
  %i.c = getelementptr i8, ptr %1, i64 12
  %.val7 = load i32, ptr %i.c, align 4, !tbaa !25
  %i.d = tail call fastcc i32 @stable_sort_fallback(i32 %.val, i32 %.val7)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @php_array_key_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #15 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 8 uses
  %3 = alloca %struct._zval_struct, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119  ; 4 uses
  %i.f = icmp eq ptr %i.e, null                   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !120  ; 2 uses
  br i1 %i.f, label %php_array_key_compare_unstable_i.exit.thread, label %bb.e
end_hunk_0
begin_hunk_1_@php_array_key_compare_string_case_unstable:bb.a
  %i.an = getelementptr inbounds i8, ptr %.05.i, i64 -1 ; 2 uses
  store i8 %i.am, ptr %i.an, align 1, !tbaa !25
  %i.ao = udiv i64 %.0.i5, 10
  %.not.i6 = icmp ult i64 %.0.i5, 10
  br i1 %.not.i6, label %zend_print_ulong_to_buf.exit, label %bb.l, !llvm.loop !10

zend_print_ulong_to_buf.exit:                     ; preds = %bb.l
  %i.ap = getelementptr inbounds i8, ptr %.05.i, i64 -2 ; 2 uses
  store i8 45, ptr %i.ap, align 1, !tbaa !25
  br label %zend_print_long_to_buf.exit4

bb.m:                                             ; preds = %bb.j
  store i8 0, ptr %i.af, align 4, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.05.i7 = phi ptr [ %i.af, %bb.m ], [ %i.at, %bb.n ]
  %.0.i8 = phi i64 [ %i.ah, %bb.m ], [ %i.au, %bb.n ] ; 3 uses
  %i.aq = urem i64 %.0.i8, 10
  %i.ar = trunc nuw nsw i64 %i.aq to i8
  %i.as = or disjoint i8 %i.ar, 48
  %i.at = getelementptr inbounds i8, ptr %.05.i7, i64 -1 ; 3 uses
  store i8 %i.as, ptr %i.at, align 1, !tbaa !25
  %i.au = udiv i64 %.0.i8, 10
  %.not.i9 = icmp ult i64 %.0.i8, 10
  br i1 %.not.i9, label %zend_print_long_to_buf.exit4, label %bb.n, !llvm.loop !10

zend_print_long_to_buf.exit4:                     ; preds = %bb.n, %zend_print_ulong_to_buf.exit
  %.0.i3 = phi ptr [ %i.ap, %zend_print_ulong_to_buf.exit ], [ %i.at, %bb.n ] ; 2 uses
  %i.av = ptrtoint ptr %i.af to i64
  %i.aw = ptrtoint ptr %.0.i3 to i64
  %i.ax = sub i64 %i.av, %i.aw
  br label %php_array_key_compare_string_case_unstable_i.exit

php_array_key_compare_string_case_unstable_i.exit: ; preds = %bb.i, %zend_print_long_to_buf.exit4
  %.014.i = phi ptr [ %i.ac, %bb.i ], [ %.0.i3, %zend_print_long_to_buf.exit4 ]
  %.0.i = phi i64 [ %i.ae, %bb.i ], [ %i.ax, %zend_print_long_to_buf.exit4 ]
  %i.ay = call i32 @zend_binary_strcasecmp_l(ptr noundef nonnull %.015.i, i64 noundef %.013.i, ptr noundef nonnull %.014.i, i64 noundef %.0.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.ay
}

declare i32 @zend_binary_strcasecmp_l(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -2147483647, -2147483648) i32 @php_array_reverse_key_compare_string_unstable(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #15 {
bb.a:
  %i.a = tail call i32 @php_array_key_compare_string_unstable(ptr noundef %0, ptr noundef %1)
  %i.b = sub nsw i32 0, %i.a
  ret i32 %i.b
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @php_array_key_compare_string_unstable(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #15 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 3 uses
  %i.b = alloca [21 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !123
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !120  ; 3 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = sub i64 0, %i.j
  store i8 0, ptr %i.h, align 4, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.05.i.i = phi ptr [ %i.h, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %.0.i21.i = phi i64 [ %i.l, %bb.d ], [ %i.q, %bb.e ] ; 3 uses
  %i.m = urem i64 %.0.i21.i, 10
  %i.n = trunc nuw nsw i64 %i.m to i8
  %i.o = or disjoint i8 %i.n, 48
  %i.p = getelementptr inbounds i8, ptr %.05.i.i, i64 -1 ; 2 uses
  store i8 %i.o, ptr %i.p, align 1, !tbaa !25
  %i.q = udiv i64 %.0.i21.i, 10
  %.not.i.i = icmp ult i64 %.0.i21.i, 10
  br i1 %.not.i.i, label %zend_print_ulong_to_buf.exit.i, label %bb.e, !llvm.loop !10

zend_print_ulong_to_buf.exit.i:                   ; preds = %bb.e
  %i.r = getelementptr inbounds i8, ptr %.05.i.i, i64 -2 ; 2 uses
  store i8 45, ptr %i.r, align 1, !tbaa !25
  br label %zend_print_long_to_buf.exit20.i

bb.f:                                             ; preds = %bb.c
  store i8 0, ptr %i.h, align 4, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.05.i22.i = phi ptr [ %i.h, %bb.f ], [ %i.v, %bb.g ]
  %.0.i23.i = phi i64 [ %i.j, %bb.f ], [ %i.w, %bb.g ] ; 3 uses
  %i.s = urem i64 %.0.i23.i, 10
  %i.t = trunc nuw nsw i64 %i.s to i8
  %i.u = or disjoint i8 %i.t, 48
  %i.v = getelementptr inbounds i8, ptr %.05.i22.i, i64 -1 ; 3 uses
  store i8 %i.u, ptr %i.v, align 1, !tbaa !25
  %i.w = udiv i64 %.0.i23.i, 10
  %.not.i24.i = icmp ult i64 %.0.i23.i, 10
  br i1 %.not.i24.i, label %zend_print_long_to_buf.exit20.i, label %bb.g, !llvm.loop !10

zend_print_long_to_buf.exit20.i:                  ; preds = %bb.g, %zend_print_ulong_to_buf.exit.i
  %.0.i19.i = phi ptr [ %i.r, %zend_print_ulong_to_buf.exit.i ], [ %i.v, %bb.g ] ; 2 uses
  %i.x = ptrtoint ptr %i.h to i64
  %i.y = ptrtoint ptr %.0.i19.i to i64
  %i.z = sub i64 %i.x, %i.y
  br label %bb.h

bb.h:                                             ; preds = %zend_print_long_to_buf.exit20.i, %bb.b
  %.015.i = phi ptr [ %i.e, %bb.b ], [ %.0.i19.i, %zend_print_long_to_buf.exit20.i ]
  %.013.i = phi i64 [ %i.g, %bb.b ], [ %i.z, %zend_print_long_to_buf.exit20.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !119 ; 3 uses
  %.not18.i = icmp eq ptr %i.ab, null
  br i1 %.not18.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !123
  br label %php_array_key_compare_string_unstable_i.exit

bb.j:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !120 ; 3 uses
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aj = sub i64 0, %i.ah
  store i8 0, ptr %i.af, align 4, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.05.i26.i = phi ptr [ %i.af, %bb.k ], [ %i.an, %bb.l ] ; 2 uses
  %.0.i27.i = phi i64 [ %i.aj, %bb.k ], [ %i.ao, %bb.l ] ; 3 uses
  %i.ak = urem i64 %.0.i27.i, 10
  %i.al = trunc nuw nsw i64 %i.ak to i8
  %i.am = or disjoint i8 %i.al, 48
  %i.an = getelementptr inbounds i8, ptr %.05.i26.i, i64 -1 ; 2 uses
  store i8 %i.am, ptr %i.an, align 1, !tbaa !25
  %i.ao = udiv i64 %.0.i27.i, 10
  %.not.i28.i = icmp ult i64 %.0.i27.i, 10
  br i1 %.not.i28.i, label %zend_print_ulong_to_buf.exit29.i, label %bb.l, !llvm.loop !10

zend_print_ulong_to_buf.exit29.i:                 ; preds = %bb.l
  %i.ap = getelementptr inbounds i8, ptr %.05.i26.i, i64 -2 ; 2 uses
  store i8 45, ptr %i.ap, align 1, !tbaa !25
  br label %zend_print_long_to_buf.exit.i

bb.m:                                             ; preds = %bb.j
  store i8 0, ptr %i.af, align 4, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.05.i30.i = phi ptr [ %i.af, %bb.m ], [ %i.at, %bb.n ]
  %.0.i31.i = phi i64 [ %i.ah, %bb.m ], [ %i.au, %bb.n ] ; 3 uses
  %i.aq = urem i64 %.0.i31.i, 10
  %i.ar = trunc nuw nsw i64 %i.aq to i8
  %i.as = or disjoint i8 %i.ar, 48
  %i.at = getelementptr inbounds i8, ptr %.05.i30.i, i64 -1 ; 3 uses
  store i8 %i.as, ptr %i.at, align 1, !tbaa !25
  %i.au = udiv i64 %.0.i31.i, 10
  %.not.i32.i = icmp ult i64 %.0.i31.i, 10
  br i1 %.not.i32.i, label %zend_print_long_to_buf.exit.i, label %bb.n, !llvm.loop !10

zend_print_long_to_buf.exit.i:                    ; preds = %bb.n, %zend_print_ulong_to_buf.exit29.i
  %.0.i.i = phi ptr [ %i.ap, %zend_print_ulong_to_buf.exit29.i ], [ %i.at, %bb.n ] ; 2 uses
  %i.av = ptrtoint ptr %i.af to i64
  %i.aw = ptrtoint ptr %.0.i.i to i64
  %i.ax = sub i64 %i.av, %i.aw
  br label %php_array_key_compare_string_unstable_i.exit

php_array_key_compare_string_unstable_i.exit:     ; preds = %bb.i, %zend_print_long_to_buf.exit.i
  %.014.i = phi ptr [ %i.ac, %bb.i ], [ %.0.i.i, %zend_print_long_to_buf.exit.i ]
  %.0.i = phi i64 [ %i.ae, %bb.i ], [ %i.ax, %zend_print_long_to_buf.exit.i ]
  %i.ay = call i32 @zend_binary_strcmp(ptr noundef nonnull %.015.i, i64 noundef %.013.i, ptr noundef nonnull %.014.i, i64 noundef %.0.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.ay
}

declare i32 @zend_binary_strcmp(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @strnatcmp_ex(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind memory(read) uwtable
define internal fastcc range(i32 -2147483647, -2147483648) i32 @php_array_reverse_key_compare_string_locale_unstable(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 {
bb.a:
  %i.a = tail call fastcc i32 @php_array_key_compare_string_locale_unstable(ptr noundef %0, ptr noundef %1)
  %i.b = sub nsw i32 0, %i.a
  ret i32 %i.b
}

; Function Attrs: nofree noinline norecurse nounwind memory(read) uwtable
define internal fastcc i32 @php_array_key_compare_string_locale_unstable(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 3 uses
  %i.b = alloca [21 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %zend_print_long_to_buf.exit13.i

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !120  ; 3 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = sub i64 0, %i.h
  store i8 0, ptr %i.f, align 4, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.05.i.i = phi ptr [ %i.f, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %.0.i14.i = phi i64 [ %i.j, %bb.d ], [ %i.o, %bb.e ] ; 3 uses
  %i.k = urem i64 %.0.i14.i, 10
  %i.l = trunc nuw nsw i64 %i.k to i8
  %i.m = or disjoint i8 %i.l, 48
  %i.n = getelementptr inbounds i8, ptr %.05.i.i, i64 -1 ; 2 uses
  store i8 %i.m, ptr %i.n, align 1, !tbaa !25
  %i.o = udiv i64 %.0.i14.i, 10
  %.not.i.i = icmp ult i64 %.0.i14.i, 10
  br i1 %.not.i.i, label %zend_print_ulong_to_buf.exit.i, label %bb.e, !llvm.loop !10

zend_print_ulong_to_buf.exit.i:                   ; preds = %bb.e
  %i.p = getelementptr inbounds i8, ptr %.05.i.i, i64 -2 ; 2 uses
  store i8 45, ptr %i.p, align 1, !tbaa !25
  br label %zend_print_long_to_buf.exit13.i

bb.f:                                             ; preds = %bb.c
  store i8 0, ptr %i.f, align 4, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.05.i15.i = phi ptr [ %i.f, %bb.f ], [ %i.t, %bb.g ]
  %.0.i16.i = phi i64 [ %i.h, %bb.f ], [ %i.u, %bb.g ] ; 3 uses
  %i.q = urem i64 %.0.i16.i, 10
  %i.r = trunc nuw nsw i64 %i.q to i8
  %i.s = or disjoint i8 %i.r, 48
  %i.t = getelementptr inbounds i8, ptr %.05.i15.i, i64 -1 ; 3 uses
  store i8 %i.s, ptr %i.t, align 1, !tbaa !25
  %i.u = udiv i64 %.0.i16.i, 10
  %.not.i17.i = icmp ult i64 %.0.i16.i, 10
  br i1 %.not.i17.i, label %zend_print_long_to_buf.exit13.i, label %bb.g, !llvm.loop !10

zend_print_long_to_buf.exit13.i:                  ; preds = %bb.g, %zend_print_ulong_to_buf.exit.i, %bb.b
  %.08.i = phi ptr [ %i.e, %bb.b ], [ %i.p, %zend_print_ulong_to_buf.exit.i ], [ %i.t, %bb.g ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !119  ; 2 uses
  %.not11.i = icmp eq ptr %i.w, null
  br i1 %.not11.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %zend_print_long_to_buf.exit13.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  br label %php_array_key_compare_string_locale_unstable_i.exit

bb.i:                                             ; preds = %zend_print_long_to_buf.exit13.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !120 ; 3 uses
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ac = sub i64 0, %i.aa
  store i8 0, ptr %i.y, align 4, !tbaa !25
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.05.i19.i = phi ptr [ %i.y, %bb.j ], [ %i.ag, %bb.k ] ; 2 uses
  %.0.i20.i = phi i64 [ %i.ac, %bb.j ], [ %i.ah, %bb.k ] ; 3 uses
  %i.ad = urem i64 %.0.i20.i, 10
  %i.ae = trunc nuw nsw i64 %i.ad to i8
  %i.af = or disjoint i8 %i.ae, 48
  %i.ag = getelementptr inbounds i8, ptr %.05.i19.i, i64 -1 ; 2 uses
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !25
  %i.ah = udiv i64 %.0.i20.i, 10
  %.not.i21.i = icmp ult i64 %.0.i20.i, 10
  br i1 %.not.i21.i, label %zend_print_ulong_to_buf.exit22.i, label %bb.k, !llvm.loop !10

zend_print_ulong_to_buf.exit22.i:                 ; preds = %bb.k
  %i.ai = getelementptr inbounds i8, ptr %.05.i19.i, i64 -2 ; 2 uses
  store i8 45, ptr %i.ai, align 1, !tbaa !25
  br label %php_array_key_compare_string_locale_unstable_i.exit

bb.l:                                             ; preds = %bb.i
  store i8 0, ptr %i.y, align 4, !tbaa !25
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.05.i23.i = phi ptr [ %i.y, %bb.l ], [ %i.am, %bb.m ]
  %.0.i24.i = phi i64 [ %i.aa, %bb.l ], [ %i.an, %bb.m ] ; 3 uses
  %i.aj = urem i64 %.0.i24.i, 10
  %i.ak = trunc nuw nsw i64 %i.aj to i8
  %i.al = or disjoint i8 %i.ak, 48
  %i.am = getelementptr inbounds i8, ptr %.05.i23.i, i64 -1 ; 3 uses
  store i8 %i.al, ptr %i.am, align 1, !tbaa !25
  %i.an = udiv i64 %.0.i24.i, 10
  %.not.i25.i = icmp ult i64 %.0.i24.i, 10
  br i1 %.not.i25.i, label %php_array_key_compare_string_locale_unstable_i.exit, label %bb.m, !llvm.loop !10

php_array_key_compare_string_locale_unstable_i.exit: ; preds = %bb.m, %zend_print_ulong_to_buf.exit22.i, %bb.h
  %.0.i = phi ptr [ %i.x, %bb.h ], [ %i.ai, %zend_print_ulong_to_buf.exit22.i ], [ %i.am, %bb.m ]
  %i.ao = call i32 @strcoll(ptr noundef nonnull %.08.i, ptr noundef nonnull %.0.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.ao
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcoll(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -2147483647, -2147483648) i32 @php_array_reverse_key_compare_unstable(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #15 {
bb.a:
  %i.a = tail call fastcc i32 @php_array_key_compare_unstable(ptr noundef %0, ptr noundef %1)
  %i.b = sub nsw i32 0, %i.a
  ret i32 %i.b
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @php_array_key_compare_unstable(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #15 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 7 uses
  %3 = alloca %struct._zval_struct, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119  ; 4 uses
  %i.f = icmp eq ptr %i.e, null                   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !120  ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !120
  %i.k = icmp sgt i64 %i.h, %i.j
  %i.l = select i1 %i.k, i32 1, i32 -1
  br label %php_array_key_compare_unstable_i.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @zendi_smart_strcmp(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e) #18
  br label %php_array_key_compare_unstable_i.exit

bb.f:                                             ; preds = %bb.b
  store i64 %i.h, ptr %2, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 4, ptr %i.n, align 8, !tbaa !25
  store ptr %i.e, ptr %3, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !25
  %i.q = and i32 %i.p, 64
  %.not34.i = icmp eq i32 %i.q, 0
  %i.r = select i1 %.not34.i, i32 262, i32 6
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  store ptr %i.b, ptr %2, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !25
  %i.u = and i32 %i.t, 64
  %.not32.i = icmp eq i32 %i.u, 0
  %i.v = select i1 %.not32.i, i32 262, i32 6
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_1
