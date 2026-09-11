Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/bio_base64_test?download=true
inline.NumInlined: 13
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.test_case = type { ptr, ptr, i32, i32, ptr, i32, i32 }

@gunk = internal global [2048 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [26 x i8] c"test_bio_base64_generated\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"test_bio_base64_corner_case_bug\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"test_bio_base64_no_nl\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"Test index out of range: %d\00", align 1
@prefixes = internal unnamed_addr constant [5 x ptr] [ptr @.str.6, ptr @.str.7, ptr @gunk, ptr @.str.6, ptr @.str.6], align 16
@lengths = internal unnamed_addr constant [6 x i32] [i32 0, i32 3, i32 48, i32 192, i32 768, i32 1536], align 16
@suffixes = internal unnamed_addr constant [5 x ptr] [ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.8, ptr @.str.7], align 16
@.str.4 = private unnamed_addr constant [23 x i8] c"test/bio_base64_test.c\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Unexpected suffix test after padding\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"#foo\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"-EOF\00", align 1
@linelengths = internal unnamed_addr constant [12 x i32] [i32 4, i32 8, i32 16, i32 28, i32 40, i32 64, i32 80, i32 128, i32 256, i32 512, i32 1023, i32 0], align 16
@wscnts = internal unnamed_addr constant [7 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8, i32 16, i32 65535], align 16
@.str.19 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"b64 = BIO_new(BIO_f_base64())\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"Unexpectedly long decode output\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"Final read result was non-negative\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"Failed to decode expected data\00", align 1
@encode.b64 = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@.str.24 = private unnamed_addr constant [10 x i8] c"#foo\0A#bar\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"A\0AAAA\0AAAAA\0A\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"b64\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"b64_chk\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"BIO_flush(b64)\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"MEM_CHK\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"bptr->data\00", align 1
@.str.32 = private unnamed_addr constant [161 x i8] c"QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setup_tests() local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) @gunk, i8 111, i64 2048, i1 false)
  store i8 35, ptr @gunk, align 16, !tbaa !9
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @gunk, i64 2047), align 1, !tbaa !9
  tail call void @add_all_tests(ptr noundef nonnull @.str, ptr noundef nonnull @test_bio_base64_generated, i32 noundef 600, i32 noundef 1) #8
  tail call void @add_all_tests(ptr noundef nonnull @.str.1, ptr noundef nonnull @test_bio_base64_corner_case_bug, i32 noundef 4, i32 noundef 1) #8
  tail call void @add_test(ptr noundef nonnull @.str.2, ptr noundef nonnull @test_bio_base64_no_nl) #8
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @add_all_tests(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_bio_base64_generated(i32 noundef %0) #0 {
bb.a:
  %1 = alloca %struct.test_case, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.a = udiv i32 %0, 6                           ; 2 uses
  %i.b = udiv i32 %0, 150                         ; 2 uses
  %.neg20 = mul nsw i32 %i.b, -25
  %i.c = add nsw i32 %.neg20, %i.a                ; 2 uses
  %i.d = udiv i32 %i.c, 6                         ; 2 uses
  %.neg21 = mul i32 %i.d, -6
  %i.e = add i32 %.neg21, %i.c                    ; 5 uses
  %i.f = udiv i32 %0, 300                         ; 2 uses
  %i.g = shl nuw nsw i32 %i.f, 1
  %i.h = sub nsw i32 %i.b, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.h, ptr %i.i, align 8, !tbaa !13
  %i.j = udiv i32 %0, 600
  %i.k = shl nuw nsw i32 %i.j, 1
  %i.l = sub nsw i32 %i.f, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.l, ptr %i.m, align 4, !tbaa !14
  %.not = icmp ult i32 %0, 600
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.3, i32 noundef %0) #9 ; 0 uses
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.neg = mul nsw i32 %i.a, -6
  %i.p = add nsw i32 %.neg, %0
  %i.q = zext nneg i32 %i.d to i64                ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @prefixes, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29
  store ptr %i.s, ptr %1, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !18
  %i.u = sext i32 %i.p to i64
  %i.v = getelementptr inbounds [4 x i8], ptr @lengths, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !19   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i32 %i.w, ptr %i.x, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  store i32 0, ptr %i.y, align 4, !tbaa !21
  %i.z = icmp ne i32 %i.e, 0                      ; 2 uses
  %i.aa = icmp slt i32 %i.e, 3
  %or.cond = and i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = add i32 %i.w, %i.e
  store i32 %i.ab, ptr %i.x, align 8, !tbaa !20
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ac = icmp samesign ugt i32 %i.e, 2
  br i1 %i.ac, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.ad = add nsw i32 %i.e, -2
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !21
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @suffixes, i64 %i.q
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !22
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @suffixes, i64 %i.q
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !29 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !22
  br i1 %i.z, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.thread, %bb.f
  %i.ak = phi ptr [ %i.af, %.thread ], [ %i.ai, %bb.f ]
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9
  switch i8 %i.al, label %bb.h [
    i8 0, label %bb.i
    i8 45, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.4, i32 noundef 397, ptr noundef nonnull @.str.5) #8
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.f
  %i.am = call fastcc i32 @generic_case(ptr noundef %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.h ], [ %i.am, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_bio_base64_corner_case_bug(i32 noundef %0) #0 {
bb.a:
  %1 = alloca %struct.test_case, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.a = lshr i32 %0, 1
  %i.b = and i32 %0, 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.b, ptr %i.c, align 8, !tbaa !13
  %i.d = lshr i32 %0, 2                           ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 1
  %i.f = sub nsw i32 %i.a, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.f, ptr %i.g, align 4, !tbaa !14
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.3, i32 noundef %0) #9 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr @.str.24, ptr %1, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.25, ptr %i.j, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @.str.6, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 6, ptr %i.l, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.m, align 4, !tbaa !21
  %i.n = call fastcc i32 @generic_case(ptr noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.n, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret i32 %.0
}

declare void @add_test(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @test_bio_base64_no_nl() #0 {
bb.a:
  %i.a = alloca [120 x i8], align 16              ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr null, ptr %i.b, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.a, i8 65, i64 120, i1 false)
  %i.c = tail call ptr @BIO_f_base64() #8
  %i.d = tail call ptr @BIO_new(ptr noundef %i.c) #8 ; 7 uses
  %i.e = tail call i32 @test_ptr(ptr noundef nonnull @.str.4, i32 noundef 447, ptr noundef nonnull @.str.26, ptr noundef %i.d) #8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @BIO_s_mem() #8
  %i.g = tail call ptr @BIO_new(ptr noundef %i.f) #8 ; 3 uses
  %i.h = tail call i32 @test_ptr(ptr noundef nonnull @.str.4, i32 noundef 451, ptr noundef nonnull @.str.27, ptr noundef %i.g) #8
  %.not11 = icmp eq i32 %i.h, 0
  br i1 %.not11, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @BIO_push(ptr noundef %i.d, ptr noundef %i.g) #8
  %i.j = tail call i32 @test_ptr_eq(ptr noundef nonnull @.str.4, i32 noundef 455, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.28, ptr noundef %i.d, ptr noundef %i.i) #8
  %.not12 = icmp eq i32 %i.j, 0
  br i1 %.not12, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @BIO_set_flags(ptr noundef %i.d, i32 noundef 256) #8
  %i.k = call i32 @BIO_write(ptr noundef %i.d, ptr noundef nonnull %i.a, i32 noundef 120) #8 ; 0 uses
  %i.l = call i64 @BIO_ctrl(ptr noundef %i.d, i32 noundef 11, i64 noundef 0, ptr noundef null) #8
  %i.m = and i64 %i.l, 4294967295
  %i.n = icmp ne i64 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = call i32 @test_true(ptr noundef nonnull @.str.4, i32 noundef 460, ptr noundef nonnull @.str.29, i32 noundef %i.o) #8
  %.not13 = icmp eq i32 %i.p, 0
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = call i64 @BIO_ctrl(ptr noundef %i.g, i32 noundef 115, i64 noundef 0, ptr noundef nonnull %i.b) #8 ; 0 uses
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.u = load i64, ptr %i.r, align 8, !tbaa !28
  %i.v = call i32 @test_mem_eq(ptr noundef nonnull @.str.4, i32 noundef 463, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i64 noundef 160, ptr noundef %i.t, i64 noundef %i.u) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ %i.v, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @BIO_free_all(ptr noundef %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @test_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @generic_case(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 19 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.pre.pre = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.k = icmp eq ptr %.pre.pre, null
end_hunk_0
