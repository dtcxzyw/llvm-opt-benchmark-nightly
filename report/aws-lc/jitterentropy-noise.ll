Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/jitterentropy-noise?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { [4 x i32] }
%struct.rand_data = type { ptr, i64, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i64, i32, i8, i64, i32, i32, i32, i32, i32, i32, [8 x i64], [8 x i32] }
%struct.jent_sha_ctx = type { [25 x i64], i64, i32, i32, i32, [136 x i8] }

@__const.jent_memaccess.prngState = private unnamed_addr constant %union.anon { [4 x i32] [i32 -1902907712, i32 -832216950, i32 -1462473914, i32 -398659735] }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @jent_measure_jitter(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store i64 %1, ptr %i.b, align 8
  store ptr %2, ptr %i.c, align 8
  store i64 0, ptr %i.d, align 8
  store i64 0, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = load i64, ptr %i.b, align 8
  call void @jent_memaccess(ptr noundef %i.g, i64 noundef %i.h)
  %i.i = load ptr, ptr %i.a, align 8
  call void @jent_get_nstime_internal(ptr noundef %i.i, ptr noundef %i.d)
  %i.j = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.rand_data, ptr %i.j, i32 0, i32 1
  %i.k = load i64, ptr %3, align 8
  %i.l = load i64, ptr %i.d, align 8
  %i.m = call i64 @jent_delta(i64 noundef %i.k, i64 noundef %i.l)
  %i.n = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.rand_data, ptr %i.n, i32 0, i32 15
  %i.o = load i64, ptr %4, align 8
  %i.p = udiv i64 %i.m, %i.o
  store i64 %i.p, ptr %i.e, align 8
  %i.q = load i64, ptr %i.d, align 8
  %i.r = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct.rand_data, ptr %i.r, i32 0, i32 1
  store i64 %i.q, ptr %5, align 8
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load i64, ptr %i.e, align 8
  %i.u = call i32 @jent_stuck(ptr noundef %i.s, i64 noundef %i.t)
  store i32 %i.u, ptr %i.f, align 4
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = load i64, ptr %i.e, align 8
  %i.x = load i64, ptr %i.b, align 8
  %i.y = load i32, ptr %i.f, align 4
  call void @jent_hash_time(ptr noundef %i.v, i64 noundef %i.w, i64 noundef %i.x, i32 noundef %i.y)
  %i.z = load ptr, ptr %i.c, align 8
  %i.aa = icmp ne ptr %i.z, null
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = load i64, ptr %i.e, align 8
  %i.ac = load ptr, ptr %i.c, align 8
  store i64 %i.ab, ptr %i.ac, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ad = load i32, ptr %i.f, align 4
  ret i32 %i.ad
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jent_memaccess(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 10 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %2 = alloca %union.anon, align 4                ; 3 uses
  %i.e = alloca i32, align 4                      ; 2 uses
  %i.f = alloca i64, align 8                      ; 3 uses
  %i.g = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store i64 %1, ptr %i.b, align 8
  store i64 0, ptr %i.c, align 8
  store i64 0, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 @__const.jent_memaccess.prngState, i64 16, i1 false)
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = call i64 @jent_loop_shuffle(ptr noundef %i.h, i32 noundef 7, i32 noundef 0)
  store i64 %i.i, ptr %i.f, align 8
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = icmp eq ptr null, %i.j
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.rand_data, ptr %i.l, i32 0, i32 4
  %i.m = load ptr, ptr %3, align 8
  %i.n = icmp eq ptr null, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.rand_data, ptr %i.o, i32 0, i32 5
  %i.p = load i32, ptr %4, align 8
  store i32 %i.p, ptr %i.e, align 4
  store i64 0, ptr %i.c, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.q = load i64, ptr %i.c, align 8
  %i.r = icmp ult i64 %i.q, 16
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.a, align 8
  call void @jent_get_nstime_internal(ptr noundef %i.s, ptr noundef %i.d)
  %i.t = load i64, ptr %i.d, align 8
  %i.u = and i64 %i.t, 255
  %i.v = trunc nuw i64 %i.u to i8
  %i.w = zext i8 %i.v to i32
  %i.x = load i64, ptr %i.c, align 8
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %2, i64 0, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = xor i32 %i.aa, %i.w
  %i.ac = trunc nuw i32 %i.ab to i8
  store i8 %i.ac, ptr %i.y, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load i64, ptr %i.c, align 8
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.c, align 8
  br label %bb.e, !llvm.loop !5

bb.h:                                             ; preds = %bb.e
  %i.af = load i64, ptr %i.b, align 8
  %i.ag = icmp ne i64 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = load i64, ptr %i.b, align 8
  store i64 %i.ah, ptr %i.f, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i64 0, ptr %i.c, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %i.ai = load i64, ptr %i.c, align 8
  %i.aj = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct.rand_data, ptr %i.aj, i32 0, i32 6
  %i.ak = load i32, ptr %5, align 4
  %i.al = zext i32 %i.ak to i64
  %i.am = load i64, ptr %i.f, align 8
  %i.an = add i64 %i.al, %i.am
  %i.ao = icmp ult i64 %i.ai, %i.an
  br i1 %i.ao, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.a, align 8
  %6 = getelementptr inbounds nuw %struct.rand_data, ptr %i.ap, i32 0, i32 4
  %i.aq = load ptr, ptr %6, align 8
  %i.ar = getelementptr inbounds nuw [4 x i32], ptr %2, i64 0, i64 0
  %i.as = call i32 @xoshiro128starstar(ptr noundef %i.ar)
  %i.at = load i32, ptr %i.e, align 4
  %i.au = and i32 %i.as, %i.at
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.av
  store ptr %i.aw, ptr %i.g, align 8
  %i.ax = load ptr, ptr %i.g, align 8
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nuw nsw i32 %i.az, 1
  %i.bb = and i32 %i.ba, 255
  %i.bc = trunc nuw i32 %i.bb to i8
  %i.bd = load ptr, ptr %i.g, align 8
  store i8 %i.bc, ptr %i.bd, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = load i64, ptr %i.c, align 8
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.c, align 8
  br label %bb.k, !llvm.loop !6

.loopexit:                                        ; preds = %bb.k
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %bb.c
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jent_get_nstime_internal(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.c = load ptr, ptr %i.a, align 8              ; 0 uses
  %i.d = load ptr, ptr %i.b, align 8
  call void @jent_get_nstime(ptr noundef %i.d)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @jent_delta(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  store i64 %0, ptr %i.a, align 8
  store i64 %1, ptr %i.b, align 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = load i64, ptr %i.a, align 8
  %i.e = sub i64 %i.c, %i.d
  ret i64 %i.e
}

declare i32 @jent_stuck(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jent_hash_time(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 2 uses
  %4 = alloca %struct.jent_sha_ctx, align 8       ; 10 uses
  %i.e = alloca [136 x i8], align 16              ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 3 uses
  %i.h = alloca i64, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store i64 %1, ptr %i.b, align 8
  store i64 %2, ptr %i.c, align 8
  store i32 %3, ptr %i.d, align 4
  call void @llvm.memset.p0.i64(ptr align 16 %i.e, i8 0, i64 136, i1 false)
  store i64 0, ptr %i.f, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = call i64 @jent_loop_shuffle(ptr noundef %i.i, i32 noundef 3, i32 noundef 0)
  store i64 %i.j, ptr %i.h, align 8
  call void @jent_sha3_256_init(ptr noundef %4)
  %i.k = load i64, ptr %i.c, align 8
  %i.l = icmp ne i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.c, align 8
  store i64 %i.m, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 0, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.n = load i64, ptr %i.f, align 8
  %i.o = load i64, ptr %i.h, align 8
  %i.p = icmp ult i64 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [136 x i8], ptr %i.e, i64 0, i64 0
  call void @jent_sha3_update(ptr noundef %4, ptr noundef %i.q, i64 noundef 32)
  %i.r = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct.rand_data, ptr %i.r, i32 0, i32 7
  call void @jent_sha3_update(ptr noundef %4, ptr noundef %5, i64 noundef 4)
  %i.s = load ptr, ptr %i.a, align 8
  %6 = getelementptr inbounds nuw %struct.rand_data, ptr %i.s, i32 0, i32 8
  call void @jent_sha3_update(ptr noundef %4, ptr noundef %6, i64 noundef 4)
  %i.t = load ptr, ptr %i.a, align 8
  %7 = getelementptr inbounds nuw %struct.rand_data, ptr %i.t, i32 0, i32 10
  call void @jent_sha3_update(ptr noundef %4, ptr noundef %7, i64 noundef 4)
  %i.u = load ptr, ptr %i.a, align 8
  %8 = getelementptr inbounds nuw %struct.rand_data, ptr %i.u, i32 0, i32 11
  call void @jent_sha3_update(ptr noundef %4, ptr noundef %8, i64 noundef 4)
  %i.v = load ptr, ptr %i.a, align 8
  %9 = getelementptr inbounds nuw %struct.rand_data, ptr %i.v, i32 0, i32 12
  call void @jent_sha3_update(ptr noundef %4, ptr noundef %9, i64 noundef 8)
  call void @jent_sha3_update(ptr noundef %4, ptr noundef %i.f, i64 noundef 8)
  %i.w = getelementptr inbounds nuw [136 x i8], ptr %i.e, i64 0, i64 0
  call void @jent_sha3_final(ptr noundef %4, ptr noundef %i.w)
  br label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.f, align 8
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.f, align 8
  br label %bb.d, !llvm.loop !7

bb.g:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.d, align 4
  %i.aa = icmp ne i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load i64, ptr %i.b, align 8
  store i64 %i.ab, ptr %i.g, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i64 0, ptr %i.g, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = getelementptr inbounds nuw [136 x i8], ptr %i.e, i64 0, i64 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %i.ad, ptr align 8 %i.g, i64 8, i1 false)
  %i.ae = load ptr, ptr %i.a, align 8
  %10 = getelementptr inbounds nuw %struct.rand_data, ptr %i.ae, i32 0, i32 0
  %i.af = load ptr, ptr %10, align 8
  %i.ag = getelementptr inbounds nuw [136 x i8], ptr %i.e, i64 0, i64 0
  call void @jent_sha3_update(ptr noundef %i.af, ptr noundef %i.ag, i64 noundef 136)
  call void @jent_memset_secure(ptr noundef %4, i64 noundef 360)
  %i.ah = getelementptr inbounds nuw [136 x i8], ptr %i.e, i64 0, i64 0
  call void @jent_memset_secure(ptr noundef %i.ah, i64 noundef 136)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @jent_random_data(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store i32 0, ptr %i.b, align 4
  store i32 0, ptr %i.c, align 4
  %i.d = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.rand_data, ptr %i.d, i32 0, i32 14
  %i.e = load i8, ptr %1, align 4
  %i.f = lshr i8 %i.e, 1
  %i.g = and i8 %i.f, 1
  %i.h = zext nneg i8 %i.g to i32
  %i.i = icmp ne i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 64, ptr %i.c, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = call i32 @jent_measure_jitter(ptr noundef %i.j, i64 noundef 0, ptr noundef null) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.l = load ptr, ptr %i.a, align 8
  %i.m = call i32 @jent_health_failure(ptr noundef %i.l)
  %i.n = icmp ne i32 %i.m, 0
  %i.o = xor i1 %i.n, true
  br i1 %i.o, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = call i32 @jent_measure_jitter(ptr noundef %i.p, i64 noundef 0, ptr noundef null)
  %i.r = icmp ne i32 %i.q, 0
  br i1 %i.r, label %2, label %bb.g

2:                                                ; preds = %bb.e
  br label %bb.f

bb.f:                                             ; preds = %2, %bb.h
  br label %bb.d, !llvm.loop !8

bb.g:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.b, align 4
  %i.t = add i32 %i.s, 1                          ; 2 uses
  store i32 %i.t, ptr %i.b, align 4
  %i.u = load i32, ptr %i.c, align 4
  %i.v = add i32 256, %i.u
  %i.w = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.rand_data, ptr %i.w, i32 0, i32 3
  %i.x = load i32, ptr %3, align 4
  %i.y = mul i32 %i.v, %i.x
  %i.z = icmp uge i32 %i.t, %i.y
  br i1 %i.z, label %4, label %bb.h

4:                                                ; preds = %bb.g
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  br label %bb.f

bb.i:                                             ; preds = %bb.d
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %4
  ret void
}

declare i32 @jent_health_failure(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @jent_read_random_block(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca [32 x i8], align 16               ; 4 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store i64 %2, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.rand_data, ptr %i.e, i32 0, i32 0
  %i.f = load ptr, ptr %3, align 8
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 0, i64 0
  call void @jent_sha3_final(ptr noundef %i.f, ptr noundef %i.g)
  %i.h = load i64, ptr %i.c, align 8
  %i.i = icmp ne i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 0, i64 0
  %i.l = load i64, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 16 %i.k, i64 %i.l, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.rand_data, ptr %i.m, i32 0, i32 0
  %i.n = load ptr, ptr %4, align 8
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 0, i64 0
  call void @jent_sha3_update(ptr noundef %i.n, ptr noundef %i.o, i64 noundef 32)
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 0, i64 0
  call void @jent_memset_secure(ptr noundef %i.p, i64 noundef 32)
  ret void
}

declare void @jent_sha3_final(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @jent_sha3_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jent_memset_secure(ptr noundef nonnull %0, i64 noundef range(i64 32, 361) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store i64 %1, ptr %i.b, align 8
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = load i64, ptr %i.b, align 8
  call void @OPENSSL_cleanse(ptr noundef %i.c, i64 noundef %i.d)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @jent_loop_shuffle(ptr noundef %0, i32 noundef range(i32 3, 8) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store i32 %1, ptr %i.b, align 4
  store i32 0, ptr %i.c, align 4
  %i.d = load ptr, ptr %i.a, align 8              ; 0 uses
  %i.e = load i32, ptr %i.b, align 4              ; 0 uses
  %i.f = load i32, ptr %i.c, align 4
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw i64 1, %i.g
  ret i64 %i.h
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xoshiro128starstar(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 14 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i32, ptr %i.d, i64 1
  %i.f = load i32, ptr %i.e, align 4
  %i.g = mul i32 %i.f, 5
  %i.h = call i32 @uint32rotl(i32 noundef %i.g, i32 noundef 7)
  %i.i = mul i32 %i.h, 9
  store i32 %i.i, ptr %i.b, align 4
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i32, ptr %i.j, i64 1
  %i.l = load i32, ptr %i.k, align 4
  %i.m = shl i32 %i.l, 9
  store i32 %i.m, ptr %i.c, align 4
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i32, ptr %i.n, i64 0
  %i.p = load i32, ptr %i.o, align 4
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i32, ptr %i.q, i64 2 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = xor i32 %i.s, %i.p
  store i32 %i.t, ptr %i.r, align 4
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = getelementptr inbounds nuw i32, ptr %i.u, i64 1
  %i.w = load i32, ptr %i.v, align 4
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw i32, ptr %i.x, i64 3 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = xor i32 %i.z, %i.w
  store i32 %i.aa, ptr %i.y, align 4
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i32, ptr %i.ab, i64 2
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = load ptr, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i32, ptr %i.ae, i64 1 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = xor i32 %i.ag, %i.ad
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = getelementptr inbounds nuw i32, ptr %i.ai, i64 3
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = load ptr, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw i32, ptr %i.al, i64 0 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = xor i32 %i.an, %i.ak
  store i32 %i.ao, ptr %i.am, align 4
  %i.ap = load i32, ptr %i.c, align 4
  %i.aq = load ptr, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw i32, ptr %i.aq, i64 2 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = xor i32 %i.as, %i.ap
  store i32 %i.at, ptr %i.ar, align 4
  %i.au = load ptr, ptr %i.a, align 8
  %i.av = getelementptr inbounds nuw i32, ptr %i.au, i64 3
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = call i32 @uint32rotl(i32 noundef %i.aw, i32 noundef 11)
  %i.ay = load ptr, ptr %i.a, align 8
  %i.az = getelementptr inbounds nuw i32, ptr %i.ay, i64 3
  store i32 %i.ax, ptr %i.az, align 4
  %i.ba = load i32, ptr %i.b, align 4
  ret i32 %i.ba
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uint32rotl(i32 noundef %0, i32 noundef range(i32 7, 12) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  store i32 %0, ptr %i.a, align 4
  store i32 %1, ptr %i.b, align 4
  %i.c = load i32, ptr %i.a, align 4
  %i.d = load i32, ptr %i.b, align 4
  %i.e = shl i32 %i.c, %i.d
  %i.f = load i32, ptr %i.a, align 4
  %i.g = load i32, ptr %i.b, align 4
  %i.h = sub i32 32, %i.g
  %i.i = lshr i32 %i.f, %i.h
  %i.j = or i32 %i.e, %i.i
  ret i32 %i.j
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jent_get_nstime(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.d = call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !9 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1
  store i64 %i.e, ptr %i.b, align 8
  store i64 %i.f, ptr %i.c, align 8
  %i.g = load i64, ptr %i.b, align 8
  %i.h = load i64, ptr %i.c, align 8
  %i.i = shl i64 %i.h, 32
  %i.j = or i64 %i.g, %i.i
  %i.k = load ptr, ptr %i.a, align 8
  store i64 %i.j, ptr %i.k, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @jent_sha3_256_init(ptr noundef) local_unnamed_addr #1

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
end_hunk_0
