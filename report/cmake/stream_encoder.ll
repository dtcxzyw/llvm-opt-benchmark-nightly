Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/stream_encoder?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.lzma_filter = type { i64, ptr }

@stream_encode.convert = internal unnamed_addr constant [5 x i32] [i32 0, i32 1, i32 3, i32 3, i32 3], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_stream_encoder(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lzma_strm_init(ptr noundef %0) #6 ; 2 uses
  %.not.not = icmp eq i32 %i.a, 0
  br i1 %.not.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = tail call i32 @stream_encoder_init(ptr noundef %i.c, ptr noundef %i.e, ptr noundef %1, i32 noundef %2) ; 2 uses
  %.not19.not = icmp eq i32 %i.f, 0
  br i1 %.not19.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @lzma_end(ptr noundef nonnull %0) #6
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.h, i8 1, i64 5, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.2 = phi i32 [ 0, %bb.d ], [ %i.f, %bb.c ], [ %i.a, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal i32 @stream_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %4 = alloca %struct.lzma_stream_flags, align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %.not = icmp eq i64 %i.b, ptrtoint (ptr @stream_encoder_init to i64)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 ptrtoint (ptr @stream_encoder_init to i64), ptr %i.a, align 8, !tbaa !16
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 456
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.f = tail call ptr @lzma_alloc(i64 noundef 1504, ptr noundef %1) #6 ; 10 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.f, ptr %0, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @stream_encode, ptr %i.h, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @stream_encoder_end, ptr %i.i, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @stream_encoder_update, ptr %i.j, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 296
  store i64 -1, ptr %i.k, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !29
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 -1, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !30
  %.sroa.34.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.34.0..sroa_idx.a, i8 0, i64 64, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  store ptr null, ptr %5, align 8, !tbaa !29
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 384
  store i64 -1, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !30
  %.sroa.3.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx.a, i8 0, i64 72, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.m = phi ptr [ null, %bb.f ], [ %.pre, %._crit_edge ]
  %.040 = phi ptr [ %i.f, %bb.f ], [ %i.d, %._crit_edge ] ; 8 uses
  store i32 0, ptr %.040, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %.040, i64 88
  store i32 0, ptr %i.n, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %.040, i64 96
  store i32 %3, ptr %i.o, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %.040, i64 456
  tail call void @lzma_index_end(ptr noundef %i.m, ptr noundef %1) #6
  %i.q = tail call ptr @lzma_index_init(ptr noundef %1) #6 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !19
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %3, ptr %i.s, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %.040, i64 480
  %i.u = call i32 @lzma_stream_header_encode(ptr noundef nonnull %4, ptr noundef nonnull %i.t) #6 ; 2 uses
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %.040, i64 464
  store i64 0, ptr %i.v, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %.040, i64 472
  store i64 12, ptr %i.w, align 8, !tbaa !37
  %i.x = call i32 @stream_encoder_update(ptr noundef nonnull %.040, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.1 = phi i32 [ %i.x, %bb.i ], [ %i.u, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e, %bb.g, %bb.c
  %.3 = phi i32 [ 11, %bb.c ], [ %.1, %bb.j ], [ 5, %bb.e ], [ 5, %bb.g ]
  ret i32 %.3
}

; Function Attrs: nounwind
declare void @lzma_end(ptr noundef) local_unnamed_addr #3

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @stream_encode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #0 {
bb.a:
  %9 = alloca %struct.lzma_stream_flags, align 8  ; 7 uses
  %i.a = load i64, ptr %6, align 8, !tbaa !30
  %i.b = icmp ult i64 %i.a, %7
  br i1 %i.b, label %.lr.ph, label %block_encoder_init.exit.thread

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = zext i32 %8 to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @stream_encode.convert, i64 %i.m
  %i.o = icmp eq i32 %8, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.not97 = icmp eq i32 %8, 3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %.pre = load i32, ptr %0, align 8, !tbaa !31
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %i.v = phi i32 [ %.pre, %.lr.ph ], [ %i.bh, %bb.u ]
  switch i32 %i.v, label %block_encoder_init.exit.thread [
    i32 0, label %bb.c
    i32 2, label %bb.c
    i32 5, label %bb.c
    i32 1, label %bb.f
    i32 3, label %bb.o
    i32 4, label %bb.r
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.w = load i64, ptr %i.j, align 8, !tbaa !37
  %i.x = call i64 @lzma_bufcpy(ptr noundef nonnull %i.i, ptr noundef nonnull %i.u, i64 noundef %i.w, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7) #6 ; 0 uses
  %i.y = load i64, ptr %i.u, align 8, !tbaa !36
  %i.z = load i64, ptr %i.j, align 8, !tbaa !37
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %block_encoder_init.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load i32, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 5
  br i1 %i.ac, label %block_encoder_init.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.u, align 8, !tbaa !36
  %i.ad = add i32 %i.ab, 1                        ; 2 uses
  store i32 %i.ad, ptr %0, align 8, !tbaa !31
  br label %bb.u

bb.f:                                             ; preds = %bb.b
  %i.ae = load i64, ptr %3, align 8, !tbaa !30
  %i.af = icmp eq i64 %i.ae, %4
  br i1 %i.af, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  br i1 %.not97, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = icmp ne i32 %8, 0
  %i.ah = zext i1 %i.ag to i32
  br label %block_encoder_init.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.aj = call i32 @lzma_index_encoder_init(ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef %i.ai) #6 ; 2 uses
  %.not98 = icmp eq i32 %i.aj, 0
  br i1 %.not98, label %bb.j, label %block_encoder_init.exit.thread

bb.j:                                             ; preds = %bb.i
  store i32 4, ptr %0, align 8, !tbaa !31
  br label %bb.u

bb.k:                                             ; preds = %bb.f
  %i.ak = load i8, ptr %i.r, align 4, !tbaa !38, !range !39, !noundef !40
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 -1, i64 16, i1 false)
  %i.am = call i32 @lzma_block_header_size(ptr noundef nonnull %i.p) #6 ; 2 uses
  %.not.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.not.i, label %block_encoder_init.exit, label %block_encoder_init.exit.thread

block_encoder_init.exit:                          ; preds = %bb.l
  %i.an = call i32 @lzma_block_encoder_init(ptr noundef nonnull %i.k, ptr noundef %1, ptr noundef nonnull %i.p) #6 ; 2 uses
  %.not95 = icmp eq i32 %i.an, 0
  br i1 %.not95, label %bb.m, label %block_encoder_init.exit.thread

bb.m:                                             ; preds = %block_encoder_init.exit, %bb.k
  store i8 0, ptr %i.r, align 4, !tbaa !38
  %i.ao = call i32 @lzma_block_header_encode(ptr noundef nonnull %i.p, ptr noundef nonnull %i.i) #6
  %.not96 = icmp eq i32 %i.ao, 0
  br i1 %.not96, label %bb.n, label %block_encoder_init.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ap = load i32, ptr %i.t, align 4, !tbaa !41
  %i.aq = zext i32 %i.ap to i64
  store i64 %i.aq, ptr %i.j, align 8, !tbaa !37
  store i32 2, ptr %0, align 8, !tbaa !31
  br label %bb.u

bb.o:                                             ; preds = %bb.b
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.as = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.at = load i32, ptr %i.n, align 4, !tbaa !44
  %i.au = call i32 %i.ar(ptr noundef %i.as, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef %i.at) #6 ; 2 uses
  %i.av = icmp ne i32 %i.au, 1
  %or.cond = or i1 %i.o, %i.av
  br i1 %or.cond, label %block_encoder_init.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %i.p) #7
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.ay = load i64, ptr %i.q, align 8, !tbaa !45
  %i.az = call i32 @lzma_index_append(ptr noundef %i.ax, ptr noundef %1, i64 noundef %i.aw, i64 noundef %i.ay) #6 ; 2 uses
  %.not94 = icmp eq i32 %i.az, 0
  br i1 %.not94, label %bb.q, label %block_encoder_init.exit.thread

bb.q:                                             ; preds = %bb.p
  store i32 1, ptr %0, align 8, !tbaa !31
  br label %bb.u

bb.r:                                             ; preds = %bb.b
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.bc = call i32 %i.ba(ptr noundef %i.bb, ptr noundef %1, ptr noundef null, ptr noundef null, i64 noundef 0, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef 0) #6 ; 2 uses
  %.not = icmp eq i32 %i.bc, 1
  br i1 %.not, label %bb.s, label %block_encoder_init.exit.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 56, i1 false)
  %i.bd = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.be = call i64 @lzma_index_size(ptr noundef %i.bd) #7
  store i64 %i.be, ptr %i.e, align 8, !tbaa !48
end_hunk_0
