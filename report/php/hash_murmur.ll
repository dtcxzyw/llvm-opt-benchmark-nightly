Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/hash_murmur?download=true
begin_hunk_0
@.str.4 = private unnamed_addr constant [9 x i8] c"murmur3c\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"lllllllll\00", align 1
@php_hash_murmur3c_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.4, ptr @PHP_MURMUR3CInit, ptr @PHP_MURMUR3CUpdate, ptr @PHP_MURMUR3CFinal, ptr @PHP_MURMUR3CCopy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.5, i64 16, i64 4, i64 36, i8 0, [7 x i8] zeroinitializer, i64 0 }, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"murmur3f\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"qqqql\00", align 1
@php_hash_murmur3f_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.6, ptr @PHP_MURMUR3FInit, ptr @PHP_MURMUR3FUpdate, ptr @PHP_MURMUR3FFinal, ptr @PHP_MURMUR3FCopy, ptr @php_hash_serialize, ptr @php_hash_unserialize, ptr @.str.7, i64 16, i64 8, i64 40, i8 0, [7 x i8] zeroinitializer, i64 0 }, align 8

; Function Attrs: nounwind uwtable
define dso_local void @PHP_MURMUR3AInit(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %zend_hash_str_find_deref.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @zend_hash_str_find(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, i64 noundef 4) #6 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %zend_hash_str_find_deref.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !12    ; 2 uses
  %i.d = icmp eq i8 %i.c, 10
  br i1 %i.d, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi i8 [ %i.c, %bb.c ], [ %.pre, %bb.d ]
  %.0.i.ph = phi ptr [ %i.a, %bb.c ], [ %i.f, %bb.d ]
  %i.h = icmp eq i8 %i.g, 4
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load i64, ptr %.0.i.ph, align 8, !tbaa !12
  %i.j = trunc i64 %i.i to i32
  br label %zend_hash_str_find_deref.exit

bb.g:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 8192, ptr noundef nonnull @.str.3) #6
  br label %zend_hash_str_find_deref.exit

zend_hash_str_find_deref.exit:                    ; preds = %bb.a, %bb.b, %bb.g, %bb.f
  %.sink = phi i32 [ 0, %bb.b ], [ 0, %bb.g ], [ %i.j, %bb.f ], [ 0, %bb.a ]
  store i32 %.sink, ptr %0, align 4, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.k, align 4, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.l, align 4, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_MURMUR3AUpdate(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17
  %i.c = trunc i64 %2 to i32                      ; 2 uses
  %i.d = add i32 %i.b, %i.c
  store i32 %i.d, ptr %i.a, align 4, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @PMurHash32_Process(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %1, i32 noundef %i.c) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_MURMUR3AFinal(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !17
  %i.f = tail call i32 @PMurHash32_Result(i32 noundef %i.a, i32 noundef %i.c, i32 noundef %i.e) #6 ; 2 uses
  store i32 %i.f, ptr %1, align 4, !tbaa !15
  %i.g = lshr i32 %i.f, 24
  %i.h = trunc nuw i32 %i.g to i8
  store i8 %i.h, ptr %0, align 1, !tbaa !12
  %i.i = load i32, ptr %1, align 4, !tbaa !15
  %i.j = lshr i32 %i.i, 16
  %i.k = trunc i32 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !12
  %i.m = load i32, ptr %1, align 4, !tbaa !15
  %i.n = lshr i32 %i.m, 8
  %i.o = trunc i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.o, ptr %i.p, align 1, !tbaa !12
  %i.q = load i32, ptr %1, align 4, !tbaa !15
  %i.r = trunc i32 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.r, ptr %i.s, align 1, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @PHP_MURMUR3ACopy(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %2) #1 {
bb.a:
  %i.a = load <2 x i32>, ptr %1, align 4, !tbaa !18
  store <2 x i32> %i.a, ptr %2, align 4, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.c, ptr %i.d, align 4, !tbaa !17
  ret i32 0
}

declare i32 @php_hash_serialize(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @php_hash_unserialize(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @php_error_docref(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @PMurHash32_Process(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @PMurHash32_Result(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @PHP_MURMUR3CInit(ptr nofree noundef writeonly captures(none) initializes((0, 36)) %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @zend_hash_str_find(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, i64 noundef 4) #6 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %zend_hash_str_find_deref.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !12    ; 2 uses
  %i.d = icmp eq i8 %i.c, 10
  br i1 %i.d, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi i8 [ %i.c, %bb.c ], [ %.pre, %bb.d ]
  %.0.i.ph = phi ptr [ %i.a, %bb.c ], [ %i.f, %bb.d ]
  %i.h = icmp eq i8 %i.g, 4
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load i64, ptr %.0.i.ph, align 8, !tbaa !12
  %i.j = trunc i64 %i.i to i32
  %i.k = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %i.l = shufflevector <4 x i32> %i.k, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.l, ptr %0, align 4, !tbaa !18
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 8192, ptr noundef nonnull @.str.3) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.i

zend_hash_str_find_deref.exit:                    ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %zend_hash_str_find_deref.exit, %bb.g, %bb.f, %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.m, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_MURMUR3CUpdate(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20
  %i.c = trunc i64 %2 to i32                      ; 2 uses
  %i.d = add i32 %i.b, %i.c
  store i32 %i.d, ptr %i.a, align 4, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @PMurHash128x86_Process(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %1, i32 noundef %i.c) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_MURMUR3CFinal(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  call void @PMurHash128x86_Result(ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef %i.d, ptr noundef nonnull %i.a) #6
  %i.e = load i32, ptr %i.a, align 16, !tbaa !18
  %i.f = call i32 @llvm.bswap.i32(i32 %i.e)
  store i32 %i.f, ptr %0, align 1, !tbaa !12
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %4 = load i8, ptr %3, align 1, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %4, ptr %i.g, align 1, !tbaa !12
  %i.h = load i32, ptr %2, align 4, !tbaa !18     ; 3 uses
  %5 = lshr i32 %i.h, 16
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %6, ptr %7, align 1, !tbaa !12
  %8 = lshr i32 %i.h, 8
  %9 = trunc i32 %8 to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %9, ptr %i.i, align 1, !tbaa !12
  %10 = trunc i32 %i.h to i8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %10, ptr %11, align 1, !tbaa !12
  %12 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %14 = load i8, ptr %13, align 1, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %14, ptr %i.j, align 1, !tbaa !12
  %i.k = load i32, ptr %12, align 8, !tbaa !18    ; 3 uses
  %15 = lshr i32 %i.k, 16
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %16, ptr %17, align 1, !tbaa !12
  %18 = lshr i32 %i.k, 8
  %19 = trunc i32 %18 to i8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %19, ptr %i.l, align 1, !tbaa !12
  %20 = trunc i32 %i.k to i8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %20, ptr %21, align 1, !tbaa !12
  %22 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %23 = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %24 = load i8, ptr %23, align 1, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %24, ptr %i.m, align 1, !tbaa !12
  %i.n = load i32, ptr %22, align 4, !tbaa !18    ; 3 uses
  %25 = lshr i32 %i.n, 16
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %26, ptr %27, align 1, !tbaa !12
  %28 = lshr i32 %i.n, 8
  %29 = trunc i32 %28 to i8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %29, ptr %i.o, align 1, !tbaa !12
  %30 = trunc i32 %i.n to i8
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %30, ptr %31, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @PHP_MURMUR3CCopy(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 36)) %2) #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.d, ptr %i.e, align 4, !tbaa !20
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @PMurHash128x86_Process(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @PMurHash128x86_Result(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @PHP_MURMUR3FInit(ptr nofree noundef writeonly captures(none) initializes((0, 36)) %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @zend_hash_str_find(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, i64 noundef 4) #6 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %zend_hash_str_find_deref.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !12    ; 2 uses
  %i.d = icmp eq i8 %i.c, 10
  br i1 %i.d, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi i8 [ %i.c, %bb.c ], [ %.pre, %bb.d ]
  %.0.i.ph = phi ptr [ %i.a, %bb.c ], [ %i.f, %bb.d ]
  %i.h = icmp eq i8 %i.g, 4
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load i64, ptr %.0.i.ph, align 8, !tbaa !12 ; 2 uses
  store i64 %i.i, ptr %0, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !22
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 8192, ptr noundef nonnull @.str.3) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.i

zend_hash_str_find_deref.exit:                    ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %zend_hash_str_find_deref.exit, %bb.g, %bb.f, %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.k, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_MURMUR3FUpdate(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = trunc i64 %2 to i32                      ; 2 uses
  %i.d = add i32 %i.b, %i.c
  store i32 %i.d, ptr %i.a, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @PMurHash128x64_Process(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %1, i32 noundef %i.c) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_MURMUR3FFinal(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20
  call void @PMurHash128x64_Result(ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef %i.d, ptr noundef nonnull %i.a) #6
  %i.e = load i64, ptr %i.a, align 16, !tbaa !22
  %i.f = call i64 @llvm.bswap.i64(i64 %i.e)
  store i64 %i.f, ptr %0, align 1, !tbaa !12
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %4 = load i8, ptr %3, align 1, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %4, ptr %i.g, align 1, !tbaa !12
  %i.h = load i64, ptr %2, align 8, !tbaa !22     ; 7 uses
  %5 = lshr i64 %i.h, 48
  %6 = trunc i64 %5 to i8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %6, ptr %7, align 1, !tbaa !12
  %8 = lshr i64 %i.h, 40
  %9 = trunc i64 %8 to i8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %9, ptr %10, align 1, !tbaa !12
  %11 = lshr i64 %i.h, 32
  %12 = trunc i64 %11 to i8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %12, ptr %13, align 1, !tbaa !12
  %14 = lshr i64 %i.h, 24
  %15 = trunc i64 %14 to i8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %15, ptr %16, align 1, !tbaa !12
  %17 = lshr i64 %i.h, 16
  %18 = trunc i64 %17 to i8
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %18, ptr %19, align 1, !tbaa !12
  %20 = lshr i64 %i.h, 8
  %21 = trunc i64 %20 to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %21, ptr %i.i, align 1, !tbaa !12
  %22 = trunc i64 %i.h to i8
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %22, ptr %23, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @PHP_MURMUR3FCopy(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 36)) %2) #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.d, ptr %i.e, align 8, !tbaa !20
  ret i32 0
}

declare void @PMurHash128x64_Process(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @PMurHash128x64_Result(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @zend_hash_str_find(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8}
!15 = !{!14, !9, i64 0}
!16 = !{!14, !9, i64 4}
!17 = !{!14, !9, i64 8}
!18 = !{!9, !9, i64 0}
!19 = !{!"", !8, i64 0, !8, i64 16, !9, i64 32}
!20 = !{!19, !9, i64 32}
!21 = !{!"long", !8, i64 0}
!22 = !{!21, !21, i64 0}
end_hunk_0
