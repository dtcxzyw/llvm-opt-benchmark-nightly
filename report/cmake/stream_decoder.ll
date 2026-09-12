Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/stream_decoder?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_filter = type { i64, ptr }
%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 9) i32 @lzma_stream_decoder_init(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30
  %.not = icmp eq i64 %i.b, ptrtoint (ptr @lzma_stream_decoder_init to i64)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 ptrtoint (ptr @lzma_stream_decoder_init to i64), ptr %i.a, align 8, !tbaa !30
  %.not37 = icmp ult i32 %3, 64
  br i1 %.not37, label %bb.d, label %stream_decoder_reset.exit

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %0, align 8, !tbaa !31     ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !17
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @lzma_alloc(i64 noundef 1416, ptr noundef %1) #10 ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %stream_decoder_reset.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.e, ptr %0, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @stream_decode, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @stream_decoder_end, ptr %i.h, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @stream_decoder_get_check, ptr %i.i, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @stream_decoder_memconfig, ptr %i.j, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx, i8 0, i64 64, i1 false)
  store ptr null, ptr %i.k, align 8, !tbaa !36
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 -1, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  store ptr null, ptr %i.l, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.m = phi ptr [ null, %bb.f ], [ %.pre, %._crit_edge ]
  %.034 = phi ptr [ %i.e, %bb.f ], [ %i.c, %._crit_edge ] ; 11 uses
  %i.n = tail call i64 @llvm.umax.i64(i64 %2, i64 1)
  %i.o = getelementptr inbounds nuw i8, ptr %.034, i64 360
  store i64 %i.n, ptr %i.o, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %.034, i64 368
  store i64 32768, ptr %i.p, align 8, !tbaa !20
  %i.q = trunc nuw nsw i32 %3 to i8
  %i.r = getelementptr inbounds nuw i8, ptr %.034, i64 376
  %i.s = and i8 %i.q, 1
  store i8 %i.s, ptr %i.r, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %.034, i64 377
  %4 = lshr i32 %3, 1
  %5 = trunc nuw nsw i32 %4 to i8
  %i.u = and i8 %5, 1
  store i8 %i.u, ptr %i.t, align 1, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %.034, i64 378
  %6 = lshr i32 %3, 2
  %7 = trunc nuw nsw i32 %6 to i8
  %i.w = and i8 %7, 1
  store i8 %i.w, ptr %i.v, align 2, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %.034, i64 379
  %8 = lshr i32 %3, 4
  %9 = trunc nuw nsw i32 %8 to i8
  %i.y = and i8 %9, 1
  store i8 %i.y, ptr %i.x, align 1, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %.034, i64 380
  %10 = lshr i32 %3, 3
  %11 = trunc nuw nsw i32 %10 to i8
  %i.aa = and i8 %11, 1
  store i8 %i.aa, ptr %i.z, align 4, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %.034, i64 381
  store i8 1, ptr %i.ab, align 1, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %.034, i64 352
  %i.ad = tail call ptr @lzma_index_hash_init(ptr noundef %i.m, ptr noundef %1) #10 ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !17
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %stream_decoder_reset.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %.034, align 8, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %.034, i64 384
  store i64 0, ptr %i.af, align 8, !tbaa !28
  br label %stream_decoder_reset.exit

stream_decoder_reset.exit:                        ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %.1 = phi i32 [ 8, %bb.c ], [ 5, %bb.e ], [ 0, %bb.h ], [ 5, %bb.g ]
  ret i32 %.1
}

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @stream_decode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #0 {
bb.a:
  %9 = alloca [5 x %struct.lzma_filter], align 16 ; 7 uses
  %10 = alloca %struct.lzma_stream_flags, align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 381 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 377
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 378
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 379
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre = load i32, ptr %0, align 8, !tbaa !27
  switch i32 %.pre, label %.thread [
    i32 0, label %bb.e
    i32 1, label %bb.l
    i32 2, label %bb.r
    i32 3, label %bb.w
    i32 4, label %bb.y
    i32 5, label %bb.aa
    i32 6, label %bb.ah
  ]

bb.b:                                             ; preds = %bb.am
  store i32 0, ptr %0, align 8, !tbaa !27
  store i64 0, ptr %i.c, align 8, !tbaa !28
  br label %bb.e

bb.c:                                             ; preds = %bb.x
  store i32 1, ptr %0, align 8, !tbaa !27
  br label %bb.l

bb.d:                                             ; preds = %bb.n
  store i32 4, ptr %0, align 8, !tbaa !27
  br label %bb.y

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.w = call i64 @lzma_bufcpy(ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef 12) #10 ; 0 uses
  %i.x = load i64, ptr %i.c, align 8, !tbaa !28
  %i.y = icmp ult i64 %i.x, 12
  br i1 %i.y, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.c, align 8, !tbaa !28
  %i.z = call i32 @lzma_stream_header_decode(ptr noundef nonnull %i.e, ptr noundef nonnull %i.b) #10 ; 2 uses
  switch i32 %i.z, label %.thread [
    i32 0, label %bb.h
    i32 7, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.aa = load i8, ptr %i.g, align 1, !tbaa !26, !range !37, !noundef !38
  %i.ab = trunc nuw i8 %i.aa to i1
  %spec.select = select i1 %i.ab, i32 7, i32 9
  br label %.thread

bb.h:                                             ; preds = %bb.f
  store i8 0, ptr %i.g, align 1, !tbaa !26
  %i.ac = load i32, ptr %i.h, align 8, !tbaa !29  ; 3 uses
  store i32 %i.ac, ptr %i.i, align 8, !tbaa !39
  store i32 1, ptr %0, align 8, !tbaa !27
  %i.ad = load i8, ptr %i.j, align 8, !tbaa !21, !range !37, !noundef !38
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = icmp eq i32 %i.ac, 0
  %or.cond = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i8, ptr %i.k, align 1, !tbaa !22, !range !37, !noundef !38
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = call zeroext i8 @lzma_check_is_supported(i32 noundef %i.ac) #11
  %.not176 = icmp eq i8 %i.ai, 0
  br i1 %.not176, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aj = load i8, ptr %i.l, align 2, !tbaa !23, !range !37, !noundef !38
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.k, %bb.a
  %i.al = load i64, ptr %3, align 8, !tbaa !18    ; 2 uses
  %.not177 = icmp ult i64 %i.al, %4
  br i1 %.not177, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.am = load i64, ptr %i.c, align 8, !tbaa !28
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.n, label %._crit_edge218

._crit_edge218:                                   ; preds = %bb.m
  %.pre219 = load i32, ptr %i.m, align 4, !tbaa !40
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.al
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !41  ; 2 uses
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.d, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = zext i8 %i.ap to i32
  %i.as = shl nuw nsw i32 %i.ar, 2
  %i.at = add nuw nsw i32 %i.as, 4                ; 2 uses
  store i32 %i.at, ptr %i.m, align 4, !tbaa !40
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge218, %bb.o
  %i.au = phi i32 [ %.pre219, %._crit_edge218 ], [ %i.at, %bb.o ]
  %i.av = zext i32 %i.au to i64
  %i.aw = call i64 @lzma_bufcpy(ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef %i.av) #10 ; 0 uses
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !28
  %i.ay = load i32, ptr %i.m, align 4, !tbaa !40
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp ult i64 %i.ax, %i.az
  br i1 %i.ba, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 0, ptr %i.c, align 8, !tbaa !28
  store i32 2, ptr %0, align 8, !tbaa !27
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.a
  store i32 1, ptr %i.n, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  store ptr %9, ptr %i.o, align 8, !tbaa !43
  %i.bb = call i32 @lzma_block_header_decode(ptr noundef nonnull %i.n, ptr noundef %1, ptr noundef nonnull %i.b) #10 ; 2 uses
  %.not178 = icmp eq i32 %i.bb, 0
  br i1 %.not178, label %bb.s, label %.thread189

bb.s:                                             ; preds = %bb.r
  %i.bc = load i8, ptr %i.p, align 1, !tbaa !24, !range !37, !noundef !38
  store i8 %i.bc, ptr %i.q, align 8, !tbaa !44
  %i.bd = call i64 @lzma_raw_decoder_memusage(ptr noundef nonnull %9) #12 ; 3 uses
  %i.be = icmp eq i64 %i.bd, -1
  br i1 %i.be, label %.thread185, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 %i.bd, ptr %i.r, align 8, !tbaa !20
  %i.bf = load i64, ptr %i.s, align 8, !tbaa !19
  %i.bg = icmp ugt i64 %i.bd, %i.bf
  br i1 %i.bg, label %.thread185, label %bb.u

.thread185:                                       ; preds = %bb.s, %bb.t
  %.0.ph = phi i32 [ 6, %bb.t ], [ 8, %bb.s ]
  call void @lzma_filters_free(ptr noundef nonnull %9, ptr noundef %1) #10
  store ptr null, ptr %i.o, align 8, !tbaa !43
  br label %.thread189

bb.u:                                             ; preds = %bb.t
  %i.bh = call i32 @lzma_block_decoder_init(ptr noundef nonnull %i.t, ptr noundef %1, ptr noundef nonnull %i.n) #10 ; 2 uses
  call void @lzma_filters_free(ptr noundef nonnull %9, ptr noundef %1) #10
  store ptr null, ptr %i.o, align 8, !tbaa !43
  %.not179 = icmp eq i32 %i.bh, 0
  br i1 %.not179, label %bb.v, label %.thread189

end_hunk_0
