Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_filter_compress?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.archive_read_filter_bidder_vtable = type { ptr, ptr, ptr }
%struct.archive_read_filter_vtable = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [14 x i8] c"compress (.Z)\00", align 1
@compress_bidder_vtable = internal constant %struct.archive_read_filter_bidder_vtable { ptr @compress_bidder_bid, ptr @compress_bidder_init, ptr null }, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Can't allocate data for %s decompression\00", align 1
@compress_reader_vtable = internal constant %struct.archive_read_filter_vtable { ptr @compress_filter_read, ptr @compress_filter_close, ptr null }, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid compressed data\00", align 1
@getbits.mask = internal unnamed_addr constant [17 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535], align 16
@next_code.debug_index = internal unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local i32 @archive_read_support_compression_compress(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @__archive_read_register_bidder(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @compress_bidder_vtable) #7
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @archive_read_support_filter_compress(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @__archive_read_register_bidder(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @compress_bidder_vtable) #7
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__archive_read_register_bidder(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 19) i32 @compress_bidder_bid(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call ptr @__archive_read_filter_ahead(ptr noundef %1, i64 noundef 3, ptr noundef nonnull %i.a) #7 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !10
  %.not = icmp eq i8 %i.d, 31
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !10
  %.not9 = icmp eq i8 %i.f, -99
  br i1 %.not9, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !10
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = and i32 %i.i, 32
  %.not10 = icmp eq i32 %i.j, 0
  br i1 %.not10, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = and i32 %i.i, 64
  %.not11 = icmp eq i32 %i.k, 0
  %. = select i1 %.not11, i32 18, i32 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ], [ %., %bb.e ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -30, 1) i32 @compress_bidder_init(ptr nofree noundef captures(none) initializes((48, 60)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 3, ptr %i.a, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str, ptr %i.b, align 8, !tbaa !46
  %i.c = tail call noalias dereferenceable_or_null(262016) ptr @calloc(i64 noundef 1, i64 noundef 262016) #8 ; 16 uses
  %i.d = tail call noalias dereferenceable_or_null(65536) ptr @malloc(i64 noundef 65536) #9 ; 3 uses
  %i.e = icmp eq ptr %i.c, null
  %i.f = icmp eq ptr %i.d, null
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.d) #7
  tail call void @free(ptr noundef %i.c) #7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %i.h, i32 noundef 12, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str) #7
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.c, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 65536, ptr %i.j, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.d, ptr %i.k, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @compress_reader_vtable, ptr %i.l, align 8, !tbaa !47
  %i.m = tail call fastcc i32 @getbits(ptr noundef nonnull %0, i32 noundef 8) ; 0 uses
  %i.n = tail call fastcc i32 @getbits(ptr noundef nonnull %0, i32 noundef 8) ; 0 uses
  %i.o = tail call fastcc i32 @getbits(ptr noundef nonnull %0, i32 noundef 8) ; 2 uses
  %i.p = and i32 %i.o, 31                         ; 3 uses
  %i.q = icmp samesign ugt i32 %i.p, 16
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %i.s, i32 noundef -1, ptr noundef nonnull @.str.2) #7
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  store i32 %i.p, ptr %i.t, align 4, !tbaa !24
  %i.u = shl nuw nsw i32 1, %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 %i.u, ptr %i.v, align 8, !tbaa !25
  %i.w = and i32 %i.o, 128                        ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 %i.w, ptr %i.x, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  store i32 256, ptr %i.y, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 196712
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 196704
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !28
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %vector.ph, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 257, ptr %i.y, align 8, !tbaa !27
  br label %vector.ph

vector.ph:                                        ; preds = %bb.f, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 9, ptr %i.ab, align 4, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 511, ptr %i.ac, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i32 -1, ptr %i.ad, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 65628
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i8> [ <i8 -1, i8 -2, i8 -3, i8 -4, i8 -5, i8 -6, i8 -7, i8 -8>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i8> %vec.ind, splat (i8 -8)
  %i.ag = sub i64 255, %index                     ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -14
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -30
  store <8 x i16> zeroinitializer, ptr %i.ai, align 2, !tbaa !33
  store <8 x i16> zeroinitializer, ptr %i.aj, align 2, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -7
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -15
  %reverse = shufflevector <8 x i8> %vec.ind, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse52 = shufflevector <8 x i8> %step.add, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse, ptr %i.al, align 1, !tbaa !10
  store <8 x i8> %reverse52, ptr %i.am, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i8> %vec.ind, splat (i8 -16)
  %i.an = icmp eq i64 %index.next, 256
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %i.ao = tail call fastcc i32 @next_code(ptr noundef nonnull %0) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %middle.block, %bb.d, %bb.b
  %.043 = phi i32 [ -30, %bb.b ], [ -30, %bb.d ], [ 0, %middle.block ]
  ret i32 %.043
}

declare ptr @__archive_read_filter_ahead(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare void @archive_set_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @getbits(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !35   ; 3 uses
  %i.f = icmp slt i32 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.pre37 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !36
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.pre = load i64, ptr %i.g, align 8, !tbaa !37
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.l = phi i32 [ %i.e, %.lr.ph ], [ %i.ah, %bb.h ]
  %i.m = phi i64 [ %.pre, %.lr.ph ], [ %i.ag, %bb.h ] ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %._crit_edge34

._crit_edge34:                                    ; preds = %bb.b
  %.pre35 = load ptr, ptr %i.c, align 8, !tbaa !38
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.h, align 8, !tbaa !39   ; 2 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.q = call i64 @__archive_read_filter_consume(ptr noundef %i.p, i64 noundef %i.o) #7 ; 0 uses
  store i64 0, ptr %i.h, align 8, !tbaa !39
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.s = call ptr @__archive_read_filter_ahead(ptr noundef %i.r, i64 noundef 1, ptr noundef nonnull %i.a) #7 ; 3 uses
  store ptr %i.s, ptr %i.c, align 8, !tbaa !38
  %i.t = load i64, ptr %i.a, align 8, !tbaa !41   ; 5 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp slt i64 %i.t, 0
  %i.w = icmp eq ptr %i.s, null
  %or.cond = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.t, ptr %i.g, align 8, !tbaa !37
  store i64 %i.t, ptr %i.h, align 8, !tbaa !39
  %.pre36 = load i32, ptr %i.d, align 4, !tbaa !35
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge34, %bb.g
  %i.x = phi i64 [ %i.m, %._crit_edge34 ], [ %i.t, %bb.g ]
  %i.y = phi i32 [ %i.l, %._crit_edge34 ], [ %.pre36, %bb.g ] ; 2 uses
  %i.z = phi ptr [ %.pre35, %._crit_edge34 ], [ %i.s, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !38
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !10
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl i32 %i.ac, %i.y
  %i.ae = load i32, ptr %i.j, align 8, !tbaa !36
  %i.af = or i32 %i.ae, %i.ad                     ; 2 uses
  store i32 %i.af, ptr %i.j, align 8, !tbaa !36
  %i.ag = add i64 %i.x, -1                        ; 2 uses
  store i64 %i.ag, ptr %i.g, align 8, !tbaa !37
  %i.ah = add nsw i32 %i.y, 8                     ; 4 uses
  store i32 %i.ah, ptr %i.d, align 4, !tbaa !35
  %i.ai = load i64, ptr %i.k, align 8, !tbaa !42
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.k, align 8, !tbaa !42
  %i.ak = icmp slt i32 %i.ah, %1
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.h, %.._crit_edge_crit_edge
  %i.al = phi i32 [ %.pre37, %.._crit_edge_crit_edge ], [ %i.af, %bb.h ] ; 2 uses
  %.lcssa = phi i32 [ %i.e, %.._crit_edge_crit_edge ], [ %i.ah, %bb.h ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.an = ashr i32 %i.al, %1
  store i32 %i.an, ptr %i.am, align 8, !tbaa !36
  %i.ao = sub nsw i32 %.lcssa, %1
  store i32 %i.ao, ptr %i.d, align 4, !tbaa !35
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds [4 x i8], ptr @getbits.mask, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !43
  %i.ap = and i32 %4, %i.al
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.e, %._crit_edge
  %.0 = phi i32 [ %i.ap, %._crit_edge ], [ -30, %bb.f ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @next_code(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 18 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 76 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 5 uses
  %i.l = load i32, ptr %i.d, align 4, !tbaa !29
  %i.m = tail call fastcc i32 @getbits(ptr noundef %0, i32 noundef %i.l) ; 3 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %.loopexit, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.a, %.loopexit112
  %i.o = phi i32 [ %i.bq, %.loopexit112 ], [ %i.m, %bb.a ] ; 6 uses
  %i.p = load i32, ptr @next_code.debug_index, align 4, !tbaa !43
  %i.q = add i32 %i.p, 1                          ; 2 uses
  %i.r = icmp ugt i32 %i.q, 1023
  %spec.select = select i1 %i.r, i32 0, i32 %i.q
  store i32 %spec.select, ptr @next_code.debug_index, align 4, !tbaa !43
  %i.s = icmp eq i32 %i.o, 256
  br i1 %i.s, label %bb.b, label %bb.k

bb.b:                                             ; preds = %.lr.ph123
  %i.t = load i32, ptr %i.e, align 8, !tbaa !26
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.d, align 4, !tbaa !29   ; 3 uses
  %i.v = sext i32 %i.u to i64
  %i.w = load i64, ptr %i.f, align 8, !tbaa !42
  %i.x = urem i64 %i.w, %i.v
  %i.y = trunc i64 %i.x to i32
  %i.z = sub i32 %i.u, %i.y
  %i.aa = srem i32 %i.z, %i.u                     ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !35
  %i.ab = icmp slt i32 %i.aa, 1
  br i1 %i.ab, label %.loopexit112, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %getbits.exit
  %.088 = phi i32 [ %i.ac, %getbits.exit ], [ %i.aa, %bb.c ] ; 2 uses
  %i.ac = add nsw i32 %.088, -1
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !20  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 28 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !35 ; 3 uses
  %i.ag = icmp slt i32 %i.af, 8
  br i1 %i.ag, label %.lr.ph.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %.lr.ph
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.pre37.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !36
  %i.ah = add nsw i32 %i.af, -8
  br label %getbits.exit

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %.pre.i = load i64, ptr %i.ai, align 8, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %.lr.ph.i
  %i.am = phi i32 [ %i.af, %.lr.ph.i ], [ %i.bi, %bb.j ]
  %i.an = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.bh, %bb.j ] ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.e, label %._crit_edge34.i

._crit_edge34.i:                                  ; preds = %bb.d
  %.pre35.i = load ptr, ptr %i.ad, align 8, !tbaa !38
  br label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !39 ; 2 uses
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.ar = call i64 @__archive_read_filter_consume(ptr noundef %i.aq, i64 noundef %i.ap) #7 ; 0 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !39
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.at = call ptr @__archive_read_filter_ahead(ptr noundef %i.as, i64 noundef 1, ptr noundef nonnull %i.a) #7 ; 3 uses
  store ptr %i.at, ptr %i.ad, align 8, !tbaa !38
  %i.au = load i64, ptr %i.a, align 8, !tbaa !41  ; 5 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = icmp slt i64 %i.au, 0
  %i.ax = icmp eq ptr %i.at, null
  %or.cond.i = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.au, ptr %i.ai, align 8, !tbaa !37
  store i64 %i.au, ptr %i.aj, align 8, !tbaa !39
  %.pre36.i = load i32, ptr %i.ae, align 4, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge34.i
  %i.ay = phi i64 [ %i.an, %._crit_edge34.i ], [ %i.au, %bb.i ]
  %i.az = phi i32 [ %i.am, %._crit_edge34.i ], [ %.pre36.i, %bb.i ] ; 4 uses
  %i.ba = phi ptr [ %.pre35.i, %._crit_edge34.i ], [ %i.at, %bb.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bb, ptr %i.ad, align 8, !tbaa !38
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !10
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl i32 %i.bd, %i.az
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !36
  %i.bg = or i32 %i.be, %i.bf                     ; 2 uses
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !36
  %i.bh = add i64 %i.ay, -1                       ; 2 uses
  store i64 %i.bh, ptr %i.ai, align 8, !tbaa !37
  %i.bi = add nsw i32 %i.az, 8                    ; 2 uses
  store i32 %i.bi, ptr %i.ae, align 4, !tbaa !35
  %i.bj = load i64, ptr %i.al, align 8, !tbaa !42
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.al, align 8, !tbaa !42
  %i.bl = icmp slt i32 %i.az, 0
  br i1 %i.bl, label %bb.d, label %getbits.exit, !llvm.loop !0

.thread:                                          ; preds = %bb.g, %bb.h
  %.0.i.ph = phi i32 [ -1, %bb.g ], [ -30, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.loopexit

getbits.exit:                                     ; preds = %bb.j, %.._crit_edge_crit_edge.i
  %i.bm = phi i32 [ %.pre37.i, %.._crit_edge_crit_edge.i ], [ %i.bg, %bb.j ]
  %.lcssa.i = phi i32 [ %i.ah, %.._crit_edge_crit_edge.i ], [ %i.az, %bb.j ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.bo = ashr i32 %i.bm, 8
  store i32 %i.bo, ptr %i.bn, align 8, !tbaa !36
  store i32 %.lcssa.i, ptr %i.ae, align 4, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bp = icmp slt i32 %.088, 2
  br i1 %i.bp, label %.loopexit112, label %.lr.ph, !llvm.loop !50

.loopexit112:                                     ; preds = %getbits.exit, %bb.c
  store i64 0, ptr %i.f, align 8, !tbaa !42
  store i32 9, ptr %i.d, align 4, !tbaa !29
  store i32 511, ptr %i.i, align 8, !tbaa !30
  store i32 257, ptr %i.j, align 8, !tbaa !27
  store i32 -1, ptr %i.k, align 8, !tbaa !31
  %i.bq = call fastcc i32 @getbits(ptr noundef %0, i32 noundef 9) ; 3 uses
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %.loopexit, label %.lr.ph123

bb.k:                                             ; preds = %bb.b, %.lr.ph123
  %i.bs = load i32, ptr %i.j, align 8, !tbaa !27  ; 3 uses
  %i.bt = icmp sgt i32 %i.o, %i.bs
  br i1 %i.bt, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = icmp eq i32 %i.o, %i.bs
  br i1 %i.bu, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bv = load i32, ptr %i.k, align 8, !tbaa !31
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !19
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %i.by, i32 noundef -1, ptr noundef nonnull @.str.2) #7
  br label %.loopexit

bb.o:                                             ; preds = %bb.m, %bb.l
  %.not79 = icmp samesign ult i32 %i.o, %i.bs
  br i1 %.not79, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !52
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 196704 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !28 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !28
  store i8 %i.cb, ptr %i.cd, align 1, !tbaa !10
  %i.cf = load i32, ptr %i.k, align 8, !tbaa !31
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.069 = phi i32 [ %i.cf, %bb.p ], [ %i.o, %bb.o ] ; 3 uses
  %i.cg = icmp sgt i32 %.069, 255
  br i1 %i.cg, label %.lr.ph91, label %._crit_edge92

.lr.ph91:                                         ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 196704 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 65628
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph91, %bb.r
  %.189 = phi i32 [ %.069, %.lr.ph91 ], [ %i.cr, %bb.r ]
  %i.ck = zext nneg i32 %.189 to i64              ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !10
  %i.cn = load ptr, ptr %i.ci, align 8, !tbaa !28 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  store ptr %i.co, ptr %i.ci, align 8, !tbaa !28
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !10
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %i.ck
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !33 ; 2 uses
  %i.cr = zext i16 %i.cq to i32                   ; 2 uses
  %i.cs = icmp ugt i16 %i.cq, 255
  br i1 %i.cs, label %bb.r, label %._crit_edge92, !llvm.loop !51

._crit_edge92:                                    ; preds = %bb.r, %bb.q
  %.1.lcssa = phi i32 [ %.069, %bb.q ], [ %i.cr, %bb.r ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 84 ; 2 uses
  store i32 %.1.lcssa, ptr %i.ct, align 4, !tbaa !52
  %i.cu = trunc i32 %.1.lcssa to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 196704 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !28 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store ptr %i.cx, ptr %i.cv, align 8, !tbaa !28
  store i8 %i.cu, ptr %i.cw, align 1, !tbaa !10
  %i.cy = load i32, ptr %i.j, align 8, !tbaa !27  ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !25
  %i.db = icmp slt i32 %i.cy, %i.da
  br i1 %i.db, label %bb.s, label %bb.u

bb.s:                                             ; preds = %._crit_edge92
  %i.dc = load i32, ptr %i.k, align 8, !tbaa !31  ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, -1
  br i1 %i.dd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.de = trunc i32 %i.dc to i16
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 65628
  %i.dg = sext i32 %i.cy to i64                   ; 2 uses
  %i.dh = getelementptr inbounds [2 x i8], ptr %i.df, i64 %i.dg
  store i16 %i.de, ptr %i.dh, align 2, !tbaa !33
  %i.di = load i32, ptr %i.ct, align 4, !tbaa !52
  %i.dj = trunc i32 %i.di to i8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.dg
  store i8 %i.dj, ptr %i.dl, align 1, !tbaa !10
  %i.dm = load i32, ptr %i.j, align 8, !tbaa !27
  %i.dn = add nsw i32 %i.dm, 1                    ; 2 uses
  store i32 %i.dn, ptr %i.j, align 8, !tbaa !27
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge92
  %i.do = phi i32 [ %i.dn, %bb.t ], [ %i.cy, %bb.s ], [ %i.cy, %._crit_edge92 ]
  %i.dp = load i32, ptr %i.i, align 8, !tbaa !30
  %i.dq = icmp sgt i32 %i.do, %i.dp
  br i1 %i.dq, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.dr = load i32, ptr %i.d, align 4, !tbaa !29
  %i.ds = add nsw i32 %i.dr, 1                    ; 3 uses
  store i32 %i.ds, ptr %i.d, align 4, !tbaa !29
  store i64 0, ptr %i.f, align 8, !tbaa !42
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !24
  %i.dv = icmp eq i32 %i.ds, %i.du
  br i1 %i.dv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dw = load i32, ptr %i.cz, align 8, !tbaa !25
  br label %.sink.split

bb.x:                                             ; preds = %bb.v
  %notmask = shl nsw i32 -1, %i.ds
  %i.dx = xor i32 %notmask, -1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.x, %bb.w
  %.sink = phi i32 [ %i.dw, %bb.w ], [ %i.dx, %bb.x ]
  store i32 %.sink, ptr %i.i, align 8, !tbaa !30
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.u
  store i32 %i.o, ptr %i.k, align 8, !tbaa !31
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit112, %bb.a, %.thread, %bb.y, %bb.n
  %.2 = phi i32 [ 0, %bb.y ], [ -30, %bb.n ], [ %.0.i.ph, %.thread ], [ %i.m, %bb.a ], [ %i.bq, %.loopexit112 ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal i64 @compress_filter_read(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !54
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %1, align 8, !tbaa !55
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %.not33 = icmp eq i64 %i.h, 0
  br i1 %.not33, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 196704 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 196712
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %.030 = phi ptr [ %i.f, %.lr.ph ], [ %.1, %bb.j ] ; 5 uses
  %i.l = load i32, ptr %i.c, align 4, !tbaa !54
  %.not27 = icmp eq i32 %i.l, 0
  br i1 %.not27, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !28   ; 2 uses
  %i.n = icmp ugt ptr %i.m, %i.k
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -1 ; 2 uses
  store ptr %i.o, ptr %i.j, align 8, !tbaa !28
  %i.p = load i8, ptr %i.o, align 1, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %.030, i64 1
  store i8 %i.p, ptr %.030, align 1, !tbaa !10
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.r = tail call fastcc i32 @next_code(ptr noundef %0) ; 2 uses
  switch i32 %i.r, label %bb.i [
    i32 -1, label %bb.h
    i32 0, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  store i32 -1, ptr %i.c, align 4, !tbaa !54
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.s = sext i32 %i.r to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.1 = phi ptr [ %i.q, %bb.f ], [ %.030, %bb.h ], [ %.030, %bb.g ] ; 3 uses
  %i.t = icmp ult ptr %.1, %i.i
  br i1 %i.t, label %bb.d, label %.critedge, !llvm.loop !53

.critedge:                                        ; preds = %bb.d, %bb.j, %bb.c
  %.0.lcssa = phi ptr [ %i.f, %bb.c ], [ %.1, %bb.j ], [ %.030, %bb.d ]
  store ptr %i.f, ptr %1, align 8, !tbaa !55
  %i.u = ptrtoint ptr %.0.lcssa to i64
  %i.v = ptrtoint ptr %i.f to i64
  %i.w = sub i64 %i.u, %i.v
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %bb.i, %bb.b
  %.023 = phi i64 [ 0, %bb.b ], [ %i.s, %bb.i ], [ %i.w, %.critedge ]
  ret i64 %.023
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal noundef i32 @compress_filter_close(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  tail call void @free(ptr noundef %i.d) #7
  tail call void @free(ptr noundef %i.b) #7
  ret i32 0
}

declare i64 @__archive_read_filter_consume(ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0,1) }
attributes #9 = { nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !34}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTS26archive_read_filter_bidder", !12, i64 0}
!14 = !{!"p1 _ZTS19archive_read_filter", !12, i64 0}
!15 = !{!"p1 _ZTS12archive_read", !12, i64 0}
!16 = !{!"p1 _ZTS26archive_read_filter_vtable", !12, i64 0}
!17 = !{!"p1 omnipotent char", !12, i64 0}
!18 = !{!"archive_read_filter", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !12, i64 40, !17, i64 48, !7, i64 56, !7, i64 60, !7, i64 64, !17, i64 72, !11, i64 80, !17, i64 88, !11, i64 96, !12, i64 104, !11, i64 112, !17, i64 120, !11, i64 128, !6, i64 136, !6, i64 137, !6, i64 138}
!19 = !{!18, !15, i64 24}
!20 = !{!18, !12, i64 40}
!21 = !{!"private_data", !17, i64 0, !11, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !11, i64 32, !11, i64 40, !12, i64 48, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !6, i64 92, !6, i64 65628, !17, i64 196704, !6, i64 196712}
!22 = !{!21, !11, i64 40}
!23 = !{!21, !12, i64 48}
!24 = !{!21, !7, i64 68}
!25 = !{!21, !7, i64 64}
!26 = !{!21, !7, i64 56}
!27 = !{!21, !7, i64 88}
!28 = !{!21, !17, i64 196704}
!29 = !{!21, !7, i64 76}
!30 = !{!21, !7, i64 72}
!31 = !{!21, !7, i64 80}
!32 = !{!"short", !6, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!21, !7, i64 28}
!36 = !{!21, !7, i64 24}
!37 = !{!21, !11, i64 8}
!38 = !{!21, !17, i64 0}
!39 = !{!21, !11, i64 16}
!40 = !{!18, !14, i64 16}
!41 = !{!11, !11, i64 0}
!42 = !{!21, !11, i64 32}
!43 = !{!7, !7, i64 0}
!44 = distinct !{!44, !34, !48, !49}
!45 = !{!18, !7, i64 56}
!46 = !{!18, !17, i64 48}
!47 = !{!18, !16, i64 32}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = distinct !{!50, !34}
!51 = distinct !{!51, !34}
!52 = !{!21, !7, i64 84}
!53 = distinct !{!53, !34}
!54 = !{!21, !7, i64 60}
!55 = !{!12, !12, i64 0}
end_hunk_0
