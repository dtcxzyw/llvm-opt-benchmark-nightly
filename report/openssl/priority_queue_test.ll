Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/priority_queue_test?download=true
inline.NumInlined: 30
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.info_st = type { i64, i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"test_size_t_priority_queue\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"test_large_priority_queue\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"test_22644\00", align 1
@test_size_t_priority_counts = internal unnamed_addr constant [8 x i32] [i32 10, i32 11, i32 6, i32 5, i32 3, i32 1, i32 2, i32 7500], align 16
@test_size_t_priority_queue_int.values = internal global [500000 x i64] zeroinitializer, align 16
@test_size_t_priority_queue_int.sorted = internal global [500000 x i64] zeroinitializer, align 16
@test_size_t_priority_queue_int.ref = internal global [500000 x i64] zeroinitializer, align 16
@test_size_t_priority_queue_int.orders = internal unnamed_addr constant [3 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5], align 16
@.str.3 = private unnamed_addr constant [10 x i8] c"unordered\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ascending\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"descending\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"test/priority_queue_test.c\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"testing count %d, %s, %s, values %s, remove %d, %sfree\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"reserve\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"grow\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"deterministic\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"pop \00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"MAX_SAMPLES\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"pq = ossl_pqueue_size_t_new(&size_t_compare)\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"ossl_pqueue_size_t_num(pq)\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"ossl_pqueue_size_t_reserve(pq, count)\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"ossl_pqueue_size_t_push(pq, values + i, ref + i)\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"*ossl_pqueue_size_t_peek(pq)\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"*sorted\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"ossl_pqueue_size_t_remove(pq, ref[i])\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"values + i\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sorted[i]\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"*ossl_pqueue_size_t_pop(pq)\00", align 1
@num_rec_freed = internal unnamed_addr global i64 0, align 8
@.str.27 = private unnamed_addr constant [14 x i8] c"num_rec_freed\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.29 = private unnamed_addr constant [52 x i8] c"ossl_pqueue_INFO_push(pq, &infos[0], &infos[0].idx)\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"infos[0].idx\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"ossl_pqueue_INFO_remove(pq, infos[0].idx)\00", align 1
@.str.33 = private unnamed_addr constant [52 x i8] c"ossl_pqueue_INFO_push(pq, &infos[1], &infos[1].idx)\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"infos[1].idx\00", align 1
@.str.35 = private unnamed_addr constant [42 x i8] c"ossl_pqueue_INFO_remove(pq, infos[1].idx)\00", align 1
@.str.36 = private unnamed_addr constant [52 x i8] c"ossl_pqueue_INFO_push(pq, &infos[2], &infos[2].idx)\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"infos[2].idx\00", align 1
@.str.38 = private unnamed_addr constant [52 x i8] c"ossl_pqueue_INFO_push(pq, &infos[3], &infos[3].idx)\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"infos[3].idx\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.41 = private unnamed_addr constant [52 x i8] c"ossl_pqueue_INFO_push(pq, &infos[4], &infos[4].idx)\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"infos[4].idx\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.44 = private unnamed_addr constant [52 x i8] c"ossl_pqueue_INFO_push(pq, &infos[5], &infos[5].idx)\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"infos[5].idx\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.47 = private unnamed_addr constant [52 x i8] c"ossl_pqueue_INFO_push(pq, &infos[6], &infos[6].idx)\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"infos[6].idx\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.50 = private unnamed_addr constant [52 x i8] c"ossl_pqueue_INFO_push(pq, &infos[7], &infos[7].idx)\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"infos[7].idx\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.53 = private unnamed_addr constant [52 x i8] c"ossl_pqueue_INFO_push(pq, &infos[8], &infos[8].idx)\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"infos[8].idx\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"ossl_pqueue_INFO_pop(pq)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setup_tests() local_unnamed_addr #0 {
bb.a:
  tail call void @add_all_tests(ptr noundef nonnull @.str, ptr noundef nonnull @test_size_t_priority_queue, i32 noundef 1152, i32 noundef 1) #8
  tail call void @add_test(ptr noundef nonnull @.str.1, ptr noundef nonnull @test_large_priority_queue) #8
  tail call void @add_test(ptr noundef nonnull @.str.2, ptr noundef nonnull @test_22644) #8
  ret i32 1
}

declare void @add_all_tests(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_size_t_priority_queue(i32 noundef %0) #0 {
bb.a:
  %i.a = and i32 %0, 7
  %i.b = ashr i32 %0, 3                           ; 5 uses
  %1 = srem i32 %i.b, 3
  %2 = sdiv i32 %i.b, 3
  %3 = srem i32 %2, 2
  %i.c = sdiv i32 %i.b, 6
  %i.d = srem i32 %i.c, 2
  %4 = sdiv i32 %i.b, 12
  %5 = srem i32 %4, 6
  %6 = sdiv i32 %i.b, 72
  %7 = srem i32 %6, 2
  %8 = zext nneg i32 %i.a to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr @test_size_t_priority_counts, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !14
  %i.e = tail call fastcc i32 @test_size_t_priority_queue_int(i32 noundef %i.d, i32 noundef %1, i32 noundef %10, i32 noundef %5, i32 noundef %3, i32 noundef %7)
  ret i32 %i.e
}

declare void @add_test(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_large_priority_queue() #0 {
bb.a:
  %i.a = tail call fastcc i32 @test_size_t_priority_queue_int(i32 noundef 0, i32 noundef 0, i32 noundef 500000, i32 noundef 5000, i32 noundef 1, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_22644() #0 {
bb.a:
  %0 = alloca [32 x %struct.info_st], align 16    ; 53 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #8
  %i.a = tail call ptr @ossl_pqueue_new(ptr noundef nonnull @cmp) #8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(768) %0, i8 0, i64 768, i1 false)
  store i64 1, ptr %i.c, align 16, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 3, ptr %i.g, align 16, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 4, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 5, ptr %i.k, align 16, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 6, ptr %i.m, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 7, ptr %i.o, align 16, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 8, ptr %i.q, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 9, ptr %i.r, align 16, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 10, ptr %i.s, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 11, ptr %i.t, align 16, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 12, ptr %i.u, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 13, ptr %i.v, align 16, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 14, ptr %i.w, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 15, ptr %i.x, align 16, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 16, ptr %i.y, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 17, ptr %i.z, align 16, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 18, ptr %i.aa, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i64 19, ptr %i.ab, align 16, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 20, ptr %i.ac, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 21, ptr %i.ad, align 16, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 22, ptr %i.ae, align 8, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i64 23, ptr %i.af, align 16, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i64 24, ptr %i.ag, align 8, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i64 25, ptr %i.ah, align 16, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i64 26, ptr %i.ai, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i64 27, ptr %i.aj, align 16, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i64 28, ptr %i.ak, align 8, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i64 29, ptr %i.al, align 16, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i64 30, ptr %i.am, align 8, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 752
  store i64 31, ptr %i.an, align 16, !tbaa !11
  store i64 70650219160667140, ptr %0, align 16, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = call i32 @ossl_pqueue_push(ptr noundef %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.ao) #8
  %i.aq = icmp ne i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %i.as = call i32 @test_true(ptr noundef nonnull @.str.6, i32 noundef 192, ptr noundef nonnull @.str.29, i32 noundef %i.ar) #8
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.at = load i64, ptr %i.ao, align 16, !tbaa !15
  %i.au = call i32 @test_size_t_eq(ptr noundef nonnull @.str.6, i32 noundef 193, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i64 noundef %i.at, i64 noundef 7) #8
  %.not19 = icmp eq i32 %i.au, 0
  br i1 %.not19, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = load i64, ptr %i.ao, align 16, !tbaa !15
  %i.aw = call ptr @ossl_pqueue_remove(ptr noundef %i.a, i64 noundef %i.av) #8
  %i.ax = call i32 @test_ptr(ptr noundef nonnull @.str.6, i32 noundef 194, ptr noundef nonnull @.str.32, ptr noundef %i.aw) #8
  %.not20 = icmp eq i32 %i.ax, 0
  br i1 %.not20, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 289360691352306692, ptr %i.b, align 8, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.az = call i32 @ossl_pqueue_push(ptr noundef %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ay) #8
  %i.ba = icmp ne i32 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = call i32 @test_true(ptr noundef nonnull @.str.6, i32 noundef 198, ptr noundef nonnull @.str.33, i32 noundef %i.bb) #8
  %.not21 = icmp eq i32 %i.bc, 0
  br i1 %.not21, label %bb.w, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = load i64, ptr %i.ay, align 8, !tbaa !15
  %i.be = call i32 @test_size_t_eq(ptr noundef nonnull @.str.6, i32 noundef 199, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.31, i64 noundef %i.bd, i64 noundef 7) #8
  %.not22 = icmp eq i32 %i.be, 0
  br i1 %.not22, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = load i64, ptr %i.ay, align 8, !tbaa !15
  %i.bg = call ptr @ossl_pqueue_remove(ptr noundef %i.a, i64 noundef %i.bf) #8
  %i.bh = call i32 @test_ptr(ptr noundef nonnull @.str.6, i32 noundef 200, ptr noundef nonnull @.str.35, ptr noundef %i.bg) #8
  %.not23 = icmp eq i32 %i.bh, 0
  br i1 %.not23, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 289360691352306692, ptr %i.d, align 16, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bj = call i32 @ossl_pqueue_push(ptr noundef %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.bi) #8
  %i.bk = icmp ne i32 %i.bj, 0
  %i.bl = zext i1 %i.bk to i32
  %i.bm = call i32 @test_true(ptr noundef nonnull @.str.6, i32 noundef 204, ptr noundef nonnull @.str.36, i32 noundef %i.bl) #8
  %.not24 = icmp eq i32 %i.bm, 0
  br i1 %.not24, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = load i64, ptr %i.bi, align 16, !tbaa !15
  %i.bo = call i32 @test_size_t_eq(ptr noundef nonnull @.str.6, i32 noundef 205, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.31, i64 noundef %i.bn, i64 noundef 7) #8
  %.not25 = icmp eq i32 %i.bo, 0
  br i1 %.not25, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 289360691352306692, ptr %i.f, align 8, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bq = call i32 @ossl_pqueue_push(ptr noundef %i.a, ptr noundef nonnull %i.f, ptr noundef nonnull %i.bp) #8
  %i.br = icmp ne i32 %i.bq, 0
  %i.bs = zext i1 %i.br to i32
  %i.bt = call i32 @test_true(ptr noundef nonnull @.str.6, i32 noundef 209, ptr noundef nonnull @.str.38, i32 noundef %i.bs) #8
  %.not26 = icmp eq i32 %i.bt, 0
  br i1 %.not26, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = load i64, ptr %i.bp, align 8, !tbaa !15
  %i.bv = call i32 @test_size_t_eq(ptr noundef nonnull @.str.6, i32 noundef 210, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i64 noundef %i.bu, i64 noundef 6) #8
  %.not27 = icmp eq i32 %i.bv, 0
  br i1 %.not27, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 289360691352306692, ptr %i.h, align 16, !tbaa !12
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bx = call i32 @ossl_pqueue_push(ptr noundef %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bw) #8
  %i.by = icmp ne i32 %i.bx, 0
  %i.bz = zext i1 %i.by to i32
  %i.ca = call i32 @test_true(ptr noundef nonnull @.str.6, i32 noundef 214, ptr noundef nonnull @.str.41, i32 noundef %i.bz) #8
  %.not28 = icmp eq i32 %i.ca, 0
  br i1 %.not28, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = load i64, ptr %i.bw, align 16, !tbaa !15
  %i.cc = call i32 @test_size_t_eq(ptr noundef nonnull @.str.6, i32 noundef 215, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i64 noundef %i.cb, i64 noundef 5) #8
  %.not29 = icmp eq i32 %i.cc, 0
  br i1 %.not29, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 289360691352306692, ptr %i.j, align 8, !tbaa !12
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ce = call i32 @ossl_pqueue_push(ptr noundef %i.a, ptr noundef nonnull %i.j, ptr noundef nonnull %i.cd) #8
  %i.cf = icmp ne i32 %i.ce, 0
  %i.cg = zext i1 %i.cf to i32
  %i.ch = call i32 @test_true(ptr noundef nonnull @.str.6, i32 noundef 219, ptr noundef nonnull @.str.44, i32 noundef %i.cg) #8
  %.not30 = icmp eq i32 %i.ch, 0
  br i1 %.not30, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = load i64, ptr %i.cd, align 8, !tbaa !15
  %i.cj = call i32 @test_size_t_eq(ptr noundef nonnull @.str.6, i32 noundef 220, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i64 noundef %i.ci, i64 noundef 4) #8
  %.not31 = icmp eq i32 %i.cj, 0
  br i1 %.not31, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 289360691352306692, ptr %i.l, align 16, !tbaa !12
end_hunk_0
