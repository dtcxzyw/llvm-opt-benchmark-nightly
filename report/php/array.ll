Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/array?download=true
inline.NumInlined: 57
inline.NumDeleted: 21
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
bb.a:
  %2 = tail call fastcc i32 @php_array_key_compare_string_natural_general(ptr noundef %1, ptr noundef %0, i32 noundef 1) ; 2 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 12
  %.val = load i32, ptr %i.a, align 4, !tbaa !25
  %i.b = getelementptr i8, ptr %1, i64 12
  %.val7 = load i32, ptr %i.b, align 4, !tbaa !25
  %3 = tail call fastcc i32 @stable_sort_fallback(i32 %.val, i32 %.val7)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %3, %bb.b ], [ %2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @php_array_key_compare_string_natural_case(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %2 = tail call fastcc i32 @php_array_key_compare_string_natural_general(ptr noundef %0, ptr noundef %1, i32 noundef 1) ; 2 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 12
  %.val = load i32, ptr %i.a, align 4, !tbaa !25
  %i.b = getelementptr i8, ptr %1, i64 12
  %.val7 = load i32, ptr %i.b, align 4, !tbaa !25
  %3 = tail call fastcc i32 @stable_sort_fallback(i32 %.val, i32 %.val7)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %3, %bb.b ], [ %2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @php_array_reverse_key_compare_string_natural(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %2 = tail call fastcc i32 @php_array_key_compare_string_natural_general(ptr noundef %1, ptr noundef %0, i32 noundef 0) ; 2 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 12
  %.val = load i32, ptr %i.a, align 4, !tbaa !25
  %i.b = getelementptr i8, ptr %1, i64 12
  %.val7 = load i32, ptr %i.b, align 4, !tbaa !25
  %3 = tail call fastcc i32 @stable_sort_fallback(i32 %.val, i32 %.val7)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %3, %bb.b ], [ %2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @php_array_key_compare_string_natural(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %2 = tail call fastcc i32 @php_array_key_compare_string_natural_general(ptr noundef %0, ptr noundef %1, i32 noundef 0) ; 2 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 12
  %.val = load i32, ptr %i.a, align 4, !tbaa !25
  %i.b = getelementptr i8, ptr %1, i64 12
  %.val7 = load i32, ptr %i.b, align 4, !tbaa !25
  %3 = tail call fastcc i32 @stable_sort_fallback(i32 %.val, i32 %.val7)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %3, %bb.b ], [ %2, %bb.a ]
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

; Function Attrs: nounwind uwtable
define internal fastcc i32 @php_array_key_compare_string_natural_general(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #2 {
  %4 = alloca [21 x i8], align 16                 ; 3 uses
  %5 = alloca [21 x i8], align 16                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !119      ; 3 uses
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %11 = load i64, ptr %10, align 8, !tbaa !123
  br label %36

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 5 uses
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %15 = load i64, ptr %14, align 8, !tbaa !120    ; 3 uses
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = sub i64 0, %15
  store i8 0, ptr %13, align 4, !tbaa !25
  br label %19

19:                                               ; preds = %19, %17
  %.05.i = phi ptr [ %13, %17 ], [ %23, %19 ]     ; 2 uses
  %.0.i22 = phi i64 [ %18, %17 ], [ %24, %19 ]    ; 3 uses
  %20 = urem i64 %.0.i22, 10
  %21 = trunc nuw nsw i64 %20 to i8
  %22 = or disjoint i8 %21, 48
  %23 = getelementptr inbounds i8, ptr %.05.i, i64 -1 ; 2 uses
  store i8 %22, ptr %23, align 1, !tbaa !25
  %24 = udiv i64 %.0.i22, 10
  %.not.i = icmp ult i64 %.0.i22, 10
  br i1 %.not.i, label %zend_print_ulong_to_buf.exit, label %19, !llvm.loop !10

zend_print_ulong_to_buf.exit:                     ; preds = %19
  %25 = getelementptr inbounds i8, ptr %.05.i, i64 -2 ; 2 uses
  store i8 45, ptr %25, align 1, !tbaa !25
  br label %zend_print_long_to_buf.exit21

26:                                               ; preds = %12
  store i8 0, ptr %13, align 4, !tbaa !25
  br label %27

27:                                               ; preds = %27, %26
  %.05.i23 = phi ptr [ %13, %26 ], [ %31, %27 ]
  %.0.i24 = phi i64 [ %15, %26 ], [ %32, %27 ]    ; 3 uses
  %28 = urem i64 %.0.i24, 10
  %29 = trunc nuw nsw i64 %28 to i8
  %30 = or disjoint i8 %29, 48
  %31 = getelementptr inbounds i8, ptr %.05.i23, i64 -1 ; 3 uses
  store i8 %30, ptr %31, align 1, !tbaa !25
  %32 = udiv i64 %.0.i24, 10
  %.not.i25 = icmp ult i64 %.0.i24, 10
  br i1 %.not.i25, label %zend_print_long_to_buf.exit21, label %27, !llvm.loop !10

zend_print_long_to_buf.exit21:                    ; preds = %27, %zend_print_ulong_to_buf.exit
  %.0.i20 = phi ptr [ %25, %zend_print_ulong_to_buf.exit ], [ %31, %27 ] ; 2 uses
  %33 = ptrtoint ptr %13 to i64
  %34 = ptrtoint ptr %.0.i20 to i64
  %35 = sub i64 %33, %34
  br label %36

36:                                               ; preds = %zend_print_long_to_buf.exit21, %8
  %.016 = phi ptr [ %9, %8 ], [ %.0.i20, %zend_print_long_to_buf.exit21 ]
  %.014 = phi i64 [ %11, %8 ], [ %35, %zend_print_long_to_buf.exit21 ]
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %38 = load ptr, ptr %37, align 8, !tbaa !119    ; 3 uses
  %.not19 = icmp eq ptr %38, null
  br i1 %.not19, label %43, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds nuw i8, ptr %38, i64 24
  %41 = getelementptr inbounds nuw i8, ptr %38, i64 16
  %42 = load i64, ptr %41, align 8, !tbaa !123
  br label %67

43:                                               ; preds = %36
  %44 = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 5 uses
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %46 = load i64, ptr %45, align 8, !tbaa !120    ; 3 uses
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = sub i64 0, %46
  store i8 0, ptr %44, align 4, !tbaa !25
  br label %50

50:                                               ; preds = %50, %48
  %.05.i27 = phi ptr [ %44, %48 ], [ %54, %50 ]   ; 2 uses
  %.0.i28 = phi i64 [ %49, %48 ], [ %55, %50 ]    ; 3 uses
  %51 = urem i64 %.0.i28, 10
  %52 = trunc nuw nsw i64 %51 to i8
  %53 = or disjoint i8 %52, 48
  %54 = getelementptr inbounds i8, ptr %.05.i27, i64 -1 ; 2 uses
  store i8 %53, ptr %54, align 1, !tbaa !25
  %55 = udiv i64 %.0.i28, 10
  %.not.i29 = icmp ult i64 %.0.i28, 10
  br i1 %.not.i29, label %zend_print_ulong_to_buf.exit30, label %50, !llvm.loop !10

zend_print_ulong_to_buf.exit30:                   ; preds = %50
  %56 = getelementptr inbounds i8, ptr %.05.i27, i64 -2 ; 2 uses
  store i8 45, ptr %56, align 1, !tbaa !25
  br label %zend_print_long_to_buf.exit

57:                                               ; preds = %43
  store i8 0, ptr %44, align 4, !tbaa !25
  br label %58

58:                                               ; preds = %58, %57
  %.05.i31 = phi ptr [ %44, %57 ], [ %62, %58 ]
  %.0.i32 = phi i64 [ %46, %57 ], [ %63, %58 ]    ; 3 uses
  %59 = urem i64 %.0.i32, 10
  %60 = trunc nuw nsw i64 %59 to i8
  %61 = or disjoint i8 %60, 48
  %62 = getelementptr inbounds i8, ptr %.05.i31, i64 -1 ; 3 uses
  store i8 %61, ptr %62, align 1, !tbaa !25
  %63 = udiv i64 %.0.i32, 10
  %.not.i33 = icmp ult i64 %.0.i32, 10
  br i1 %.not.i33, label %zend_print_long_to_buf.exit, label %58, !llvm.loop !10

zend_print_long_to_buf.exit:                      ; preds = %58, %zend_print_ulong_to_buf.exit30
  %.0.i = phi ptr [ %56, %zend_print_ulong_to_buf.exit30 ], [ %62, %58 ] ; 2 uses
  %64 = ptrtoint ptr %44 to i64
  %65 = ptrtoint ptr %.0.i to i64
  %66 = sub i64 %64, %65
  br label %67

67:                                               ; preds = %zend_print_long_to_buf.exit, %39
  %.015 = phi ptr [ %40, %39 ], [ %.0.i, %zend_print_long_to_buf.exit ]
  %.0 = phi i64 [ %42, %39 ], [ %66, %zend_print_long_to_buf.exit ]
  %68 = icmp ne i32 %2, 0
  %69 = call i32 @strnatcmp_ex(ptr noundef nonnull %.016, i64 noundef %.014, ptr noundef nonnull %.015, i64 noundef %.0, i1 noundef zeroext %68) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i32 %69
}

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
