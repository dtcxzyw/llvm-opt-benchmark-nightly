Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/bitreader?download=true
inline.NumInlined: 12
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@FLAC__bitreader_skip_bits_no_crc:bb.a
bb.i:                                             ; preds = %bb.h
  %i.l = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %.1)
  %.not31 = icmp eq i32 %i.l, 0
  br i1 %.not31, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.c, %bb.f, %bb.j
  %.122.ph = phi i32 [ 1, %bb.j ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.a
  %.122 = phi i32 [ 1, %bb.a ], [ %.122.ph, %.sink.split ]
  ret i32 %.122
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @FLAC__bitreader_skip_byte_block_aligned_no_crc(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !12
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %i.f = shl i32 %1, 3
  %i.g = icmp ult i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 -1, ptr %i.d, align 4, !tbaa !13
  br label %.loopexit

bb.d:                                             ; preds = %bb.b, %bb.a
  %cond38 = icmp eq i32 %1, 0
  br i1 %cond38, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %.039 = phi i32 [ %1, %.lr.ph ], [ %i.o, %bb.g ] ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %.not26 = icmp eq i32 %i.i, 0
  br i1 %.not26, label %.critedge.preheader, label %bb.f

.critedge.preheader:                              ; preds = %bb.e
  %i.j = icmp ugt i32 %.039, 7
  br i1 %i.j, label %.lr.ph43, label %.lr.ph47.preheader

.lr.ph43:                                         ; preds = %.critedge.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 8)
  %.not31 = icmp eq i32 %i.n, 0
  br i1 %.not31, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = add i32 %.039, -1                        ; 2 uses
  %cond = icmp eq i32 %i.o, 0
  br i1 %cond, label %.loopexit, label %bb.e, !llvm.loop !37

.preheader:                                       ; preds = %.critedge
  %.not2745 = icmp eq i32 %.2, 0
  br i1 %.not2745, label %.loopexit, label %.lr.ph47.preheader

.lr.ph47.preheader:                               ; preds = %.critedge.preheader, %.preheader
  %.346.ph = phi i32 [ %.039, %.critedge.preheader ], [ %.2, %.preheader ]
  br label %.lr.ph47

bb.h:                                             ; preds = %.lr.ph43, %.critedge
  %.142 = phi i32 [ %.039, %.lr.ph43 ], [ %.2, %.critedge ] ; 2 uses
  %i.p = load i32, ptr %i.k, align 4, !tbaa !18   ; 2 uses
  %i.q = load i32, ptr %i.l, align 4, !tbaa !29
  %i.r = icmp ult i32 %i.p, %i.q
  br i1 %i.r, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.s = add nuw i32 %i.p, 1
  store i32 %i.s, ptr %i.k, align 4, !tbaa !18
  %i.t = add i32 %.142, -8                        ; 2 uses
  %i.u = load i32, ptr %i.b, align 8, !tbaa !12
  %.not30 = icmp eq i32 %i.u, 0
  br i1 %.not30, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load i32, ptr %i.m, align 4, !tbaa !13
  %i.w = add i32 %i.v, -64
  store i32 %i.w, ptr %i.m, align 4, !tbaa !13
  br label %.critedge

bb.k:                                             ; preds = %bb.h
  %i.x = tail call fastcc i32 @bitreader_read_from_client_(ptr noundef nonnull %0)
  %.not29 = icmp eq i32 %i.x, 0
  br i1 %.not29, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.i, %bb.j
  %.2 = phi i32 [ %i.t, %bb.j ], [ %i.t, %bb.i ], [ %.142, %bb.k ] ; 4 uses
  %i.y = icmp ugt i32 %.2, 7
  br i1 %i.y, label %bb.h, label %.preheader, !llvm.loop !38

bb.l:                                             ; preds = %.lr.ph47
  %i.z = add nsw i32 %.346, -1                    ; 2 uses
  %.not27 = icmp eq i32 %i.z, 0
  br i1 %.not27, label %.loopexit, label %.lr.ph47, !llvm.loop !39

.lr.ph47:                                         ; preds = %.lr.ph47.preheader, %bb.l
  %.346 = phi i32 [ %i.z, %bb.l ], [ %.346.ph, %.lr.ph47.preheader ]
  %i.aa = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 8)
  %.not28 = icmp eq i32 %i.aa, 0
  br i1 %.not28, label %.loopexit, label %bb.l

.loopexit:                                        ; preds = %bb.f, %bb.g, %bb.k, %.lr.ph47, %bb.l, %bb.d, %.preheader, %bb.c
  %.021 = phi i32 [ 0, %bb.c ], [ 0, %bb.k ], [ 1, %bb.d ], [ 1, %bb.l ], [ 1, %.preheader ], [ 0, %.lr.ph47 ], [ 1, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.021
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @FLAC__bitreader_read_byte_block_aligned_no_crc(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !12
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %i.f = shl i32 %2, 3
  %i.g = icmp ult i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 -1, ptr %i.d, align 4, !tbaa !13
  br label %.loopexit

bb.d:                                             ; preds = %bb.b, %bb.a
  %cond64 = icmp eq i32 %2, 0
  br i1 %cond64, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %.066 = phi i32 [ %2, %.lr.ph ], [ %i.r, %bb.g ] ; 4 uses
  %.04165 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.g ] ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %.not50 = icmp eq i32 %i.i, 0
  br i1 %.not50, label %.critedge.preheader, label %bb.f

.critedge.preheader:                              ; preds = %bb.e
  %i.j = icmp ugt i32 %.066, 7
  br i1 %i.j, label %.lr.ph71, label %.lr.ph77.preheader

.lr.ph71:                                         ; preds = %.critedge.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 8)
  %.not55 = icmp eq i32 %i.n, 0
  br i1 %.not55, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.a, align 4, !tbaa !21
  %i.p = trunc i32 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %.04165, i64 1
  store i8 %i.p, ptr %.04165, align 1, !tbaa !31
  %i.r = add i32 %.066, -1                        ; 2 uses
  %cond = icmp eq i32 %i.r, 0
  br i1 %cond, label %.loopexit, label %bb.e, !llvm.loop !40

.preheader:                                       ; preds = %.critedge
  %.not5174 = icmp eq i32 %.2, 0
  br i1 %.not5174, label %.loopexit, label %.lr.ph77.preheader

.lr.ph77.preheader:                               ; preds = %.critedge.preheader, %.preheader
  %.376.ph = phi i32 [ %.066, %.critedge.preheader ], [ %.2, %.preheader ]
  %.34475.ph = phi ptr [ %.04165, %.critedge.preheader ], [ %.243, %.preheader ]
  br label %.lr.ph77

bb.h:                                             ; preds = %.lr.ph71, %.critedge
  %.170 = phi i32 [ %.066, %.lr.ph71 ], [ %.2, %.critedge ] ; 2 uses
  %.14269 = phi ptr [ %.04165, %.lr.ph71 ], [ %.243, %.critedge ] ; 10 uses
  %i.s = load i32, ptr %i.k, align 4, !tbaa !18   ; 3 uses
  %i.t = load i32, ptr %i.l, align 4, !tbaa !29
  %i.u = icmp ult i32 %i.s, %i.t
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %0, align 8, !tbaa !11
  %i.w = add nuw i32 %i.s, 1
  store i32 %i.w, ptr %i.k, align 4, !tbaa !18
  %i.x = zext i32 %i.s to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.x
  %3 = load i64, ptr %i.y, align 8, !tbaa !25     ; 8 uses
  %4 = lshr i64 %3, 56
  %5 = trunc nuw i64 %4 to i8
  store i8 %5, ptr %.14269, align 1, !tbaa !31
  %6 = lshr i64 %3, 48
  %7 = trunc i64 %6 to i8
  %8 = getelementptr inbounds nuw i8, ptr %.14269, i64 1
  store i8 %7, ptr %8, align 1, !tbaa !31
  %9 = lshr i64 %3, 40
  %10 = trunc i64 %9 to i8
  %11 = getelementptr inbounds nuw i8, ptr %.14269, i64 2
  store i8 %10, ptr %11, align 1, !tbaa !31
  %12 = lshr i64 %3, 32
  %13 = trunc i64 %12 to i8
  %14 = getelementptr inbounds nuw i8, ptr %.14269, i64 3
  store i8 %13, ptr %14, align 1, !tbaa !31
  %15 = lshr i64 %3, 24
  %16 = trunc i64 %15 to i8
  %17 = getelementptr inbounds nuw i8, ptr %.14269, i64 4
  store i8 %16, ptr %17, align 1, !tbaa !31
  %18 = lshr i64 %3, 16
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds nuw i8, ptr %.14269, i64 5
  store i8 %19, ptr %20, align 1, !tbaa !31
  %21 = lshr i64 %3, 8
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds nuw i8, ptr %.14269, i64 6
  store i8 %22, ptr %23, align 1, !tbaa !31
  %24 = trunc i64 %3 to i8
  %25 = getelementptr inbounds nuw i8, ptr %.14269, i64 7
  store i8 %24, ptr %25, align 1, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %.14269, i64 8 ; 2 uses
  %i.aa = add i32 %.170, -8                       ; 2 uses
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !12
  %.not54 = icmp eq i32 %i.ab, 0
  br i1 %.not54, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load i32, ptr %i.m, align 4, !tbaa !13
  %i.ad = add i32 %i.ac, -64
  store i32 %i.ad, ptr %i.m, align 4, !tbaa !13
  br label %.critedge

bb.k:                                             ; preds = %bb.h
  %i.ae = tail call fastcc i32 @bitreader_read_from_client_(ptr noundef nonnull %0)
  %.not53 = icmp eq i32 %i.ae, 0
  br i1 %.not53, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.j, %bb.k
  %.243 = phi ptr [ %.14269, %bb.k ], [ %i.z, %bb.j ], [ %i.z, %bb.i ] ; 2 uses
  %.2 = phi i32 [ %.170, %bb.k ], [ %i.aa, %bb.j ], [ %i.aa, %bb.i ] ; 4 uses
  %i.af = icmp ugt i32 %.2, 7
  br i1 %i.af, label %bb.h, label %.preheader, !llvm.loop !41

.lr.ph77:                                         ; preds = %.lr.ph77.preheader, %bb.l
  %.376 = phi i32 [ %i.ak, %bb.l ], [ %.376.ph, %.lr.ph77.preheader ]
  %.34475 = phi ptr [ %i.aj, %bb.l ], [ %.34475.ph, %.lr.ph77.preheader ] ; 2 uses
  %i.ag = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 8)
  %.not52 = icmp eq i32 %i.ag, 0
  br i1 %.not52, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph77
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !21
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %.34475, i64 1
  store i8 %i.ai, ptr %.34475, align 1, !tbaa !31
  %i.ak = add nsw i32 %.376, -1                   ; 2 uses
  %.not51 = icmp eq i32 %i.ak, 0
  br i1 %.not51, label %.loopexit, label %.lr.ph77, !llvm.loop !42

.loopexit:                                        ; preds = %bb.f, %bb.g, %bb.k, %.lr.ph77, %bb.l, %bb.d, %.preheader, %bb.c
  %.045 = phi i32 [ 0, %bb.c ], [ 0, %bb.k ], [ 1, %bb.d ], [ 1, %bb.l ], [ 1, %.preheader ], [ 0, %.lr.ph77 ], [ 1, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.045
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @FLAC__bitreader_read_unary_unsigned(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1) local_unnamed_addr #9 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !18   ; 3 uses
  %i.f = load i32, ptr %i.b, align 4, !tbaa !29
  %i.g = icmp ult i32 %i.e, %i.f
  %.pre77 = load i32, ptr %i.c, align 8, !tbaa !19 ; 4 uses
  br i1 %i.g, label %.lr.ph.peel, label %._crit_edge

.lr.ph.peel:                                      ; preds = %bb.b
  %i.h = icmp ult i32 %.pre77, 64
  br i1 %i.h, label %bb.c, label %.lr.ph..thread_crit_edge.peel

.lr.ph..thread_crit_edge.peel:                    ; preds = %.lr.ph.peel
  %.pre75.peel = load i32, ptr %1, align 4, !tbaa !21
  br label %.thread.peel

bb.c:                                             ; preds = %.lr.ph.peel
  %i.i = load ptr, ptr %0, align 8, !tbaa !11
  %i.j = zext i32 %i.e to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !25
  %i.m = zext nneg i32 %.pre77 to i64
  %i.n = shl i64 %i.l, %i.m                       ; 2 uses
  %.not54.peel = icmp eq i64 %i.n, 0
  %.pre76.peel = load i32, ptr %1, align 4, !tbaa !21 ; 2 uses
  br i1 %.not54.peel, label %.thread.peel, label %.loopexit

.thread.peel:                                     ; preds = %bb.c, %.lr.ph..thread_crit_edge.peel
  %i.o = phi i32 [ %.pre75.peel, %.lr.ph..thread_crit_edge.peel ], [ %.pre76.peel, %bb.c ]
  %reass.sub71.peel = sub i32 %i.o, %.pre77
  %i.p = add i32 %reass.sub71.peel, 64
  store i32 %i.p, ptr %1, align 4, !tbaa !21
  %i.q = load i32, ptr %i.a, align 4, !tbaa !18
  %i.r = add i32 %i.q, 1                          ; 4 uses
  store i32 %i.r, ptr %i.a, align 4, !tbaa !18
  store i32 0, ptr %i.c, align 8, !tbaa !19
  %i.s = load i32, ptr %i.b, align 4, !tbaa !29
  %i.t = icmp ult i32 %i.r, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread.peel, %.thread
  %i.u = phi i32 [ %i.ak, %.thread ], [ %i.r, %.thread.peel ]
  %i.v = load ptr, ptr %0, align 8, !tbaa !11
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !25   ; 2 uses
  %.not54 = icmp eq i64 %i.y, 0
  %.pre76 = load i32, ptr %1, align 4, !tbaa !21  ; 2 uses
  br i1 %.not54, label %.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.lr.ph
  %.lcssa91 = phi i64 [ %i.y, %.lr.ph ], [ %i.n, %bb.c ]
  %.pre76.lcssa = phi i32 [ %.pre76, %.lr.ph ], [ %.pre76.peel, %bb.c ]
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.lcssa91, i1 true)
  %i.aa = trunc nuw nsw i64 %i.z to i32           ; 2 uses
  %i.ab = add i32 %.pre76.lcssa, %i.aa
  store i32 %i.ab, ptr %1, align 4, !tbaa !21
  %i.ac = add nuw nsw i32 %i.aa, 1
  %i.ad = load i32, ptr %i.c, align 8, !tbaa !19
  %i.ae = add i32 %i.ac, %i.ad                    ; 2 uses
  store i32 %i.ae, ptr %i.c, align 8, !tbaa !19
  %i.af = icmp ugt i32 %i.ae, 63
  br i1 %i.af, label %bb.d, label %.thread58

bb.d:                                             ; preds = %.loopexit
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !18
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !18
  br label %.thread58.sink.split

.thread:                                          ; preds = %.lr.ph
  %i.ai = add i32 %.pre76, 64
  store i32 %i.ai, ptr %1, align 4, !tbaa !21
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !18
  %i.ak = add i32 %i.aj, 1                        ; 4 uses
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !18
  store i32 0, ptr %i.c, align 8, !tbaa !19
  %i.al = load i32, ptr %i.b, align 4, !tbaa !29
  %i.am = icmp ult i32 %i.ak, %i.al
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %.thread.peel, %.thread, %bb.b
  %i.an = phi i32 [ %.pre77, %bb.b ], [ 0, %.thread ], [ 0, %.thread.peel ] ; 3 uses
  %.lcssa = phi i32 [ %i.e, %bb.b ], [ %i.r, %.thread.peel ], [ %i.ak, %.thread ]
  %i.ao = load i32, ptr %i.d, align 8, !tbaa !30
  %i.ap = shl i32 %i.ao, 3                        ; 4 uses
  %i.aq = icmp ugt i32 %i.ap, %i.an
  br i1 %i.aq, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.ar = load ptr, ptr %0, align 8, !tbaa !11
  %i.as = zext i32 %.lcssa to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !25
  %i.av = sub i32 64, %i.ap
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl nsw i64 -1, %i.aw
  %i.ay = and i64 %i.au, %i.ax
  %i.az = zext nneg i32 %i.an to i64
  %i.ba = shl i64 %i.ay, %i.az                    ; 2 uses
  %.not = icmp eq i64 %i.ba, 0
  br i1 %.not, label %.thread60, label %bb.f

.thread60:                                        ; preds = %bb.e
  %i.bb = sub i32 %i.ap, %i.an
  %i.bc = load i32, ptr %1, align 4, !tbaa !21
  %i.bd = add i32 %i.bb, %i.bc
  store i32 %i.bd, ptr %1, align 4, !tbaa !21
  store i32 %i.ap, ptr %i.c, align 8, !tbaa !19
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.ba, i1 true)
  %i.bf = trunc nuw nsw i64 %i.be to i32          ; 2 uses
  %i.bg = load i32, ptr %1, align 4, !tbaa !21
  %i.bh = add i32 %i.bg, %i.bf
  store i32 %i.bh, ptr %1, align 4, !tbaa !21
  %i.bi = add nuw nsw i32 %i.bf, 1
  %i.bj = load i32, ptr %i.c, align 8, !tbaa !19
  %i.bk = add i32 %i.bi, %i.bj
  br label %.thread58.sink.split

bb.g:                                             ; preds = %.thread60, %._crit_edge
  %i.bl = tail call fastcc i32 @bitreader_read_from_client_(ptr noundef nonnull %0)
  %.not53 = icmp eq i32 %i.bl, 0
  br i1 %.not53, label %.thread58, label %bb.b

.thread58.sink.split:                             ; preds = %bb.f, %bb.d
  %.sink = phi i32 [ 0, %bb.d ], [ %i.bk, %bb.f ]
  store i32 %.sink, ptr %i.c, align 8, !tbaa !19
  br label %.thread58

.thread58:                                        ; preds = %bb.g, %.thread58.sink.split, %.loopexit
  %.5 = phi i32 [ 1, %.loopexit ], [ 1, %.thread58.sink.split ], [ 0, %bb.g ]
  ret i32 %.5
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @FLAC__bitreader_read_rice_signed_block(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = lshr i32 -1, %3
  %i.d = zext i32 %2 to i64
end_hunk_0
