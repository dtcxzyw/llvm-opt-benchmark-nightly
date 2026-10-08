Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_decompress?download=true
inline.NumInlined: 232
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ZSTD_findDecompressedSize:bb.a
  %i.d = icmp eq i32 %i.c, 407710288
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult i64 %.03572, 8
  br i1 %i.e, label %.thread59, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.03971, i64 4
  %.val.i = load i32, ptr %i.f, align 1, !tbaa !50 ; 2 uses
  %i.g = icmp ugt i32 %.val.i, -9
  %i.h = zext i32 %.val.i to i64
  %i.i = add nuw nsw i64 %i.h, 8                  ; 2 uses
  %.not77 = icmp ugt i64 %i.i, %.03572
  %or.cond = select i1 %i.g, i1 true, i1 %.not77
  br i1 %or.cond, label %.thread59, label %bb.h, !llvm.loop !110

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.j = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %3, ptr noundef nonnull readonly %.03971, i64 noundef %.03572, i32 noundef 0)
  %.not.i = icmp eq i64 %i.j, 0
  %i.k = load i32, ptr %i.a, align 4
  %i.l = icmp eq i32 %i.k, 1
  %i.m = load i64, ptr %3, align 8
  %spec.select.i = select i1 %i.l, i64 0, i64 %i.m
  %.0.i = select i1 %.not.i, i64 %spec.select.i, i64 -2 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.n = icmp ugt i64 %.0.i, -3
  br i1 %i.n, label %.thread59, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add i64 %.0.i, %.03273                   ; 2 uses
  %.not65 = icmp ult i64 %i.o, %.03273
  br i1 %.not65, label %.thread59, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull %.03971, i64 noundef %.03572, i32 noundef 0)
  %i.p = load i64, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.q = icmp ult i64 %i.p, -119
  br i1 %i.q, label %bb.h, label %.thread59

bb.h:                                             ; preds = %bb.d, %bb.g
  %..i.pn = phi i64 [ %i.i, %bb.d ], [ %i.p, %bb.g ] ; 2 uses
  %.234 = phi i64 [ %.03273, %bb.d ], [ %i.o, %bb.g ] ; 2 uses
  %.338 = sub i64 %.03572, %..i.pn                ; 3 uses
  %.342 = getelementptr inbounds nuw i8, ptr %.03971, i64 %..i.pn
  %.not = icmp ult i64 %.338, 5
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.035.lcssa = phi i64 [ %1, %bb.a ], [ %.338, %bb.h ]
  %.032.lcssa = phi i64 [ 0, %bb.a ], [ %.234, %bb.h ]
  %.not50 = icmp eq i64 %.035.lcssa, 0
  %.032.53 = select i1 %.not50, i64 %.032.lcssa, i64 -2
  br label %.thread59

.thread59:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.g, %bb.f, %._crit_edge
  %.5 = phi i64 [ %.032.53, %._crit_edge ], [ -2, %bb.c ], [ %.0.i, %bb.e ], [ -2, %bb.g ], [ -2, %bb.f ], [ -2, %bb.d ]
  ret i64 %.5
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_findFrameCompressedSize(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ZSTD_frameSizeInfo, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0, i64 noundef %1, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define i64 @ZSTD_getDecompressedSize(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %2 = alloca %struct.ZSTD_FrameHeader, align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %2, ptr noundef readonly %0, i64 noundef %1, i32 noundef 0)
  %.not.i = icmp eq i64 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 1
  %i.e = load i64, ptr %2, align 8
  %spec.select.i = select i1 %i.d, i64 0, i64 %i.e
  %.0.i = select i1 %.not.i, i64 %spec.select.i, i64 -2 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.f = icmp ugt i64 %.0.i, -3
  %i.g = select i1 %i.f, i64 0, i64 %.0.i
  ret i64 %i.g
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_decompressBound(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ZSTD_frameSizeInfo, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.017 = phi ptr [ %0, %bb.a ], [ %i.g, %bb.c ]  ; 2 uses
  %.015 = phi i64 [ %1, %bb.a ], [ %i.h, %bb.c ]  ; 3 uses
  %.014 = phi i64 [ 0, %bb.a ], [ %i.i, %bb.c ]   ; 2 uses
  %.not = icmp eq i64 %.015, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %.017, i64 noundef %.015, i32 noundef 0)
  %i.c = load i64, ptr %i.a, align 8, !tbaa !61   ; 3 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !62   ; 2 uses
  %i.e = icmp ult i64 %i.c, -119
  %i.f = icmp ne i64 %i.d, -2
  %or.cond.not = select i1 %i.e, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %.017, i64 %i.c
  %i.h = sub i64 %.015, %i.c
  %i.i = add i64 %i.d, %.014
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br i1 %or.cond.not, label %bb.b, label %bb.d, !llvm.loop !111

bb.d:                                             ; preds = %bb.b, %bb.c
  %.2 = phi i64 [ -2, %bb.c ], [ %.014, %bb.b ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ZSTD_FrameHeader, align 8   ; 7 uses
  %5 = alloca %struct.blockProperties_t, align 4  ; 7 uses
  %i.a = icmp eq i32 %3, 0
  %i.b = icmp ugt i64 %2, 7
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %1, align 1, !tbaa !50
  %i.c = and i32 %.val, -16
  %i.d = icmp eq i32 %i.c, 407710288
  br i1 %i.d, label %readSkippableFrameSize.exit, label %bb.c

readSkippableFrameSize.exit:                      ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.e, align 1, !tbaa !50 ; 2 uses
  %i.f = icmp ugt i32 %.val.i, -9
  %i.g = zext i32 %.val.i to i64
  %i.h = add nuw nsw i64 %i.g, 8                  ; 2 uses
  %i.i = icmp ugt i64 %i.h, %2
  %..i = select i1 %i.i, i64 -72, i64 %i.h
  %.1.i = select i1 %i.f, i64 -14, i64 %..i
  store i64 0, ptr %0, align 8, !tbaa !52
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.1.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !52
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !118
  br label %bb.p

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.j = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %4, ptr noundef %1, i64 noundef %2, i32 noundef %3) ; 3 uses
  %i.k = icmp ult i64 %i.j, -119
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.l, align 8, !tbaa !61, !alias.scope !119
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -2, ptr %i.m, align 8, !tbaa !62, !alias.scope !119
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %.not51 = icmp eq i64 %i.j, 0
  br i1 %.not51, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -72, ptr %i.n, align 8, !tbaa !61, !alias.scope !120
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -2, ptr %i.o, align 8, !tbaa !62, !alias.scope !120
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !54
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.t = sub i64 %2, %i.r                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.u = call i64 @ZSTD_getcBlockSize(ptr noundef %i.s, i64 noundef %i.t, ptr noundef nonnull %5) #15 ; 3 uses
  %i.v = icmp ult i64 %i.u, -119
  br i1 %i.v, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %i.x = phi i64 [ %i.u, %.lr.ph ], [ %i.ag, %bb.j ]
  %.075 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %bb.j ]
  %.04274 = phi i64 [ %i.t, %.lr.ph ], [ %i.ab, %bb.j ] ; 2 uses
  %.04473 = phi ptr [ %i.s, %.lr.ph ], [ %i.aa, %bb.j ]
  %i.y = add nuw i64 %i.x, 3                      ; 3 uses
  %i.z = icmp ugt i64 %i.y, %.04274
  br i1 %i.z, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.04473, i64 %i.y ; 4 uses
  %i.ab = sub nuw i64 %.04274, %i.y               ; 3 uses
  %i.ac = add i64 %.075, 1                        ; 3 uses
  %i.ad = load i32, ptr %i.w, align 4, !tbaa !64
  %.not53 = icmp eq i32 %i.ad, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br i1 %.not53, label %bb.j, label %bb.k

.thread:                                          ; preds = %bb.h, %bb.j, %bb.g
  %.lcssa.sink = phi i64 [ %i.u, %bb.g ], [ %i.ag, %bb.j ], [ -72, %bb.h ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa.sink, ptr %i.ae, align 8, !tbaa !61
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -2, ptr %i.af, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.critedge

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.ag = call i64 @ZSTD_getcBlockSize(ptr noundef nonnull %i.aa, i64 noundef %i.ab, ptr noundef nonnull %5) #15 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, -119
  br i1 %i.ah, label %bb.h, label %.thread

bb.k:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !58
  %.not54 = icmp eq i32 %i.aj, 0
  br i1 %.not54, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = icmp ult i64 %i.ab, 4
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -72, ptr %i.al, align 8, !tbaa !61, !alias.scope !121
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -2, ptr %i.am, align 8, !tbaa !62, !alias.scope !121
  br label %.critedge

bb.n:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.2 = phi ptr [ %i.an, %bb.n ], [ %i.aa, %bb.k ]
  %i.ao = ptrtoint ptr %.2 to i64
  %i.ap = ptrtoint ptr %1 to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = load i64, ptr %4, align 8, !tbaa !55    ; 2 uses
  %.not55 = icmp eq i64 %i.ar, -1
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.at = load i32, ptr %i.as, align 8
  %i.au = zext i32 %i.at to i64
  %i.av = mul i64 %i.ac, %i.au
  %i.aw = select i1 %.not55, i64 %i.av, i64 %i.ar
  store i64 %i.ac, ptr %0, align 8, !tbaa !52
  %.sroa.6.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aq, ptr %.sroa.6.0..sroa_idx26, align 8, !tbaa !52
  %.sroa.8.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aw, ptr %.sroa.8.0..sroa_idx28, align 8, !tbaa !118
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.d, %bb.f, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.p

bb.p:                                             ; preds = %.critedge, %readSkippableFrameSize.exit
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_decompressionMargin(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ZSTD_frameSizeInfo, align 8 ; 7 uses
  %3 = alloca %struct.ZSTD_FrameHeader, align 8   ; 8 uses
  %.not49 = icmp eq i64 %1, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.02753 = phi i32 [ 0, %.lr.ph ], [ %.128, %bb.g ] ; 2 uses
  %.02952 = phi i64 [ 0, %.lr.ph ], [ %.130, %bb.g ] ; 2 uses
  %.03251 = phi i64 [ %1, %.lr.ph ], [ %i.ab, %bb.g ] ; 3 uses
  %.03450 = phi ptr [ %0, %.lr.ph ], [ %i.aa, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %.03450, i64 noundef %.03251, i32 noundef 0)
  %i.g = load i64, ptr %i.a, align 8, !tbaa !61   ; 4 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.i = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %3, ptr noundef readonly %.03450, i64 noundef %.03251, i32 noundef 0) ; 2 uses
  %i.j = icmp ult i64 %i.i, -119
  br i1 %i.j, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.g, -120
  %i.l = icmp eq i64 %i.h, -2
  %or.cond = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.c, align 4, !tbaa !53
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.d, align 8, !tbaa !54
  %i.p = zext i32 %i.o to i64
  %i.q = add i64 %.02952, %i.p
  %i.r = load i32, ptr %i.e, align 8, !tbaa !58
  %.not40 = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not40, i64 0, i64 4
  %i.t = add i64 %i.q, %i.s
  %i.u = load i64, ptr %2, align 8, !tbaa !123
  %i.v = mul i64 %i.u, 3
  %i.w = add i64 %i.t, %i.v
  %i.x = load i32, ptr %i.f, align 8, !tbaa !57
  %i.y = tail call i32 @llvm.umax.i32(i32 %.02753, i32 %i.x)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.z = add i64 %i.g, %.02952
  br label %bb.g

.thread:                                          ; preds = %bb.b, %bb.c
  %.238.ph = phi i64 [ -20, %bb.c ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %._crit_edge

bb.g:                                             ; preds = %bb.e, %bb.f
  %.130 = phi i64 [ %i.w, %bb.e ], [ %i.z, %bb.f ] ; 2 uses
  %.128 = phi i32 [ %i.y, %bb.e ], [ %.02753, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.03450, i64 %i.g
  %i.ab = sub i64 %.03251, %i.g                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !122

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.ac = zext i32 %.128 to i64
  %i.ad = add i64 %.130, %i.ac
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit, %.thread
  %.3 = phi i64 [ %.238.ph, %.thread ], [ 0, %bb.a ], [ %i.ad, %._crit_edge.loopexit ]
  ret i64 %.3
}

; Function Attrs: nounwind uwtable
define noundef i64 @ZSTD_insertBlock(ptr noundef %0, ptr noundef %1, i64 noundef returned %2) local_unnamed_addr #0 {
bb.a:
  tail call void @ZSTD_checkContinuity(ptr noundef %0, ptr noundef %1, i64 noundef %2) #15
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 29888
  store ptr %i.a, ptr %i.b, align 8, !tbaa !65
  ret i64 %2
}

declare void @ZSTD_checkContinuity(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i64 @ZSTD_decompress_usingDict(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef null)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.ZSTD_Trace, align 8         ; 11 uses
  %9 = alloca %struct.blockProperties_t, align 4  ; 9 uses
  %.not = icmp eq ptr %7, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %7) #15
  %i.b = tail call i64 @ZSTD_DDict_dictSize(ptr noundef nonnull %7) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.058 = phi ptr [ %i.a, %bb.b ], [ %5, %bb.a ]
  %.057 = phi i64 [ %i.b, %bb.b ], [ %6, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30104 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !36
  %i.e = icmp eq i32 %i.d, 0                      ; 2 uses
  %i.f = select i1 %i.e, i64 5, i64 1             ; 2 uses
  %.not67123129 = icmp ult i64 %4, %i.f
  br i1 %.not67123129, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 30204 ; 2 uses
  %.not.i.i = icmp eq ptr @ZSTD_trace_decompress_begin, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 95968 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 29920
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 29976
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 29888
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10296 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 30200
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 29992
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 30176
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 26684
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 6192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4136
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 30232
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 29944 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 30112
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 30008 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 29928
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 29960
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 30108
  %i.ae = icmp ne ptr @ZSTD_trace_decompress_end, null
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 30192 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.an = insertelement <2 x ptr> poison, ptr %i.m, i64 0
  %i.ao = insertelement <2 x ptr> %i.an, ptr %i.s, i64 1
  %i.ap = insertelement <2 x ptr> poison, ptr %i.t, i64 0
  %i.aq = insertelement <2 x ptr> %i.ap, ptr %i.n, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
end_hunk_0
begin_hunk_1_@ZSTD_initDStream:ZSTD_DCtx_refDDict.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 30104
  %i.i = load i32, ptr %i.h, align 8, !tbaa !36
  %i.j = icmp eq i32 %i.i, 0
  %i.k = select i1 %i.j, i64 5, i64 1
  ret i64 %i.k
}

; Function Attrs: nounwind uwtable
define range(i64 -64, 1) i64 @ZSTD_DCtx_refDDict(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %i.d = load i32, ptr %i.c, align 4, !tbaa !98
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %ZSTD_DDictHashSet_addDDict.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 30184 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.g = tail call i64 @ZSTD_freeDDict(ptr noundef %i.f) #15 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 30208 ; 2 uses
  store i32 0, ptr %i.h, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %.not19 = icmp eq ptr %1, null
  br i1 %.not19, label %ZSTD_DDictHashSet_addDDict.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 30192
  store ptr %1, ptr %i.i, align 8, !tbaa !81
  store i32 -1, ptr %i.h, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 30224
  %i.k = load i32, ptr %i.j, align 8, !tbaa !40
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.d, label %ZSTD_DDictHashSet_addDDict.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 30216 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35   ; 14 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 30128
  %.sroa.0.0.copyload = load ptr, ptr %i.p, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30136
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30144
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i.i, label %ZSTD_customMalloc.exit.i, label %ZSTD_customMalloc.exit.thread.i

ZSTD_customMalloc.exit.i:                         ; preds = %bb.e
  %i.q = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #17 ; 4 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %ZSTD_createDDictHashSet.exit.thread, label %ZSTD_customCalloc.exit.i

ZSTD_customMalloc.exit.thread.i:                  ; preds = %bb.e
  %i.r = tail call ptr %.sroa.0.0.copyload(ptr noundef %.sroa.5.0.copyload, i64 noundef 24) #15, !inline_history !132 ; 5 uses
  %.not18.i = icmp eq ptr %i.r, null
  br i1 %.not18.i, label %ZSTD_createDDictHashSet.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %ZSTD_customMalloc.exit.thread.i
  %i.s = tail call ptr %.sroa.0.0.copyload(ptr noundef %.sroa.5.0.copyload, i64 noundef 512) #15, !inline_history !133 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %ZSTD_customCalloc.exit.thread.i, label %ZSTD_customCalloc.exit.thread27.i

ZSTD_customCalloc.exit.thread.i:                  ; preds = %.thread.i
  store ptr null, ptr %i.r, align 8, !tbaa !49
  br label %bb.f

ZSTD_customCalloc.exit.thread27.i:                ; preds = %.thread.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.s, i8 0, i64 512, i1 false)
  store ptr %i.s, ptr %i.r, align 8, !tbaa !49
  br label %.thread

ZSTD_customCalloc.exit.i:                         ; preds = %ZSTD_customMalloc.exit.i
  %i.u = tail call noalias dereferenceable_or_null(512) ptr @calloc(i64 noundef 1, i64 noundef 512) #19 ; 2 uses
  store ptr %i.u, ptr %i.q, align 8, !tbaa !49
  %.not9.i = icmp eq ptr %i.u, null
  br i1 %.not9.i, label %bb.f, label %.thread

bb.f:                                             ; preds = %ZSTD_customCalloc.exit.i, %ZSTD_customCalloc.exit.thread.i
  %.0.i192126.i = phi ptr [ %i.r, %ZSTD_customCalloc.exit.thread.i ], [ %i.q, %ZSTD_customCalloc.exit.i ] ; 2 uses
  %.not4.i.i = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not4.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void %.sroa.4.0.copyload(ptr noundef %.sroa.5.0.copyload, ptr noundef nonnull %.0.i192126.i) #15, !inline_history !134
  br label %ZSTD_createDDictHashSet.exit.thread

bb.h:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %.0.i192126.i) #15
  br label %ZSTD_createDDictHashSet.exit.thread

ZSTD_createDDictHashSet.exit.thread:              ; preds = %ZSTD_customMalloc.exit.thread.i, %ZSTD_customMalloc.exit.i, %bb.g, %bb.h
  store ptr null, ptr %i.m, align 8, !tbaa !35
  br label %ZSTD_DDictHashSet_addDDict.exit.thread

.thread:                                          ; preds = %ZSTD_customCalloc.exit.i, %ZSTD_customCalloc.exit.thread27.i
  %.0.i192131.i = phi ptr [ %i.r, %ZSTD_customCalloc.exit.thread27.i ], [ %i.q, %ZSTD_customCalloc.exit.i ] ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i192131.i, i64 8
  store i64 64, ptr %i.v, align 8, !tbaa !92
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i192131.i, i64 16
  store i64 0, ptr %i.w, align 8, !tbaa !139
  store ptr %.0.i192131.i, ptr %i.m, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i192131.i, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i192131.i, i64 8
  br label %ZSTD_DDictHashSet_expand.exit.thread.i

bb.i:                                             ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !139
  %.phi.trans.insert40 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.pre41 = load i64, ptr %.phi.trans.insert40, align 8, !tbaa !92 ; 4 uses
  %i.z = shl i64 %.pre, 2
  %i.aa = icmp ugt i64 %.pre41, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 30128
  %.sroa.024.0.copyload = load ptr, ptr %i.ab, align 8 ; 2 uses
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30136
  %.sroa.425.0.copyload = load ptr, ptr %.sroa.425.0..sroa_idx, align 8 ; 2 uses
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30144
  %.sroa.526.0.copyload = load ptr, ptr %.sroa.526.0..sroa_idx, align 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 7 uses
  br i1 %i.aa, label %ZSTD_DDictHashSet_expand.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = shl i64 %.pre41, 4                      ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.024.0.copyload, null
  br i1 %.not.i.i.i, label %ZSTD_customCalloc.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = tail call ptr %.sroa.024.0.copyload(ptr noundef %.sroa.526.0.copyload, i64 noundef %i.ae) #15, !inline_history !135 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %ZSTD_DDictHashSet_addDDict.exit.thread, label %ZSTD_customCalloc.exit.thread35.i.i

ZSTD_customCalloc.exit.thread35.i.i:              ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.af, i8 0, i64 %i.ae, i1 false)
  %.pre.i.i = load i64, ptr %i.ad, align 8, !tbaa !92
  br label %bb.l

ZSTD_customCalloc.exit.i.i:                       ; preds = %bb.j
  %i.ah = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.ae) #19 ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i23, label %ZSTD_DDictHashSet_addDDict.exit.thread, label %bb.l

bb.l:                                             ; preds = %ZSTD_customCalloc.exit.i.i, %ZSTD_customCalloc.exit.thread35.i.i
  %i.ai = phi i64 [ %.pre.i.i, %ZSTD_customCalloc.exit.thread35.i.i ], [ %.pre41, %ZSTD_customCalloc.exit.i.i ] ; 2 uses
  %.1.i38.i.i = phi ptr [ %i.af, %ZSTD_customCalloc.exit.thread35.i.i ], [ %i.ah, %ZSTD_customCalloc.exit.i.i ]
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !49  ; 4 uses
  %i.ak = shl i64 %.pre41, 1
  store ptr %.1.i38.i.i, ptr %i.n, align 8, !tbaa !49
  store i64 %i.ak, ptr %i.ad, align 8, !tbaa !92
  store i64 0, ptr %i.ac, align 8, !tbaa !139
  %.not45.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not45.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %ZSTD_DDictHashSet_emplaceDDict.exit.thread.i.i
  %.02244.i.i = phi i64 [ %i.bj, %ZSTD_DDictHashSet_emplaceDDict.exit.thread.i.i ], [ 0, %bb.l ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.02244.i.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !93 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.am, null
  br i1 %.not26.i.i, label %ZSTD_DDictHashSet_emplaceDDict.exit.thread.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.an = call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %i.am) #15 ; 2 uses
  %.val.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !92 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.an, ptr %i.b, align 4, !tbaa !50
  %i.ao = call i64 @ZSTD_XXH64(ptr noundef nonnull captures(address) %i.b, i64 noundef 4, i64 noundef 0) #18
  %i.ap = add i64 %.val.i.i.i, -1                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aq = load i64, ptr %i.ac, align 8, !tbaa !139 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %.val.i.i.i
  br i1 %i.ar, label %ZSTD_DDictHashSet_addDDict.exit.thread, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.m
  %i.as = and i64 %i.ao, %i.ap                    ; 3 uses
  %i.at = load ptr, ptr %i.n, align 8, !tbaa !49  ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !93 ; 2 uses
  %.not26.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not26.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.o
  %i.aw = phi ptr [ %i.bf, %bb.o ], [ %i.av, %.preheader.i.i.i ]
  %.027.i.i.i = phi i64 [ %i.bc, %bb.o ], [ %i.as, %.preheader.i.i.i ] ; 2 uses
  %i.ax = call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %i.aw) #15
  %i.ay = icmp eq i32 %i.ax, %i.an
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.027.i.i.i
  store ptr %i.am, ptr %i.ba, align 8, !tbaa !93
  br label %ZSTD_DDictHashSet_emplaceDDict.exit.thread.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.bb = and i64 %.027.i.i.i, %i.ap
  %i.bc = add i64 %i.bb, 1                        ; 3 uses
  %i.bd = load ptr, ptr %i.n, align 8, !tbaa !49  ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !93 ; 2 uses
  %.not.i31.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i31.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !136

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.o
  %.pre.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !139
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %.preheader.i.i.i
  %i.bg = phi i64 [ %i.aq, %.preheader.i.i.i ], [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ]
  %.0.lcssa.i.i.i = phi i64 [ %i.as, %.preheader.i.i.i ], [ %i.bc, %._crit_edge.loopexit.i.i.i ]
  %.lcssa25.i.i.i = phi ptr [ %i.at, %.preheader.i.i.i ], [ %i.bd, %._crit_edge.loopexit.i.i.i ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.lcssa25.i.i.i, i64 %.0.lcssa.i.i.i
  store ptr %i.am, ptr %i.bh, align 8, !tbaa !93
  %i.bi = add i64 %i.bg, 1
  store i64 %i.bi, ptr %i.ac, align 8, !tbaa !139
  br label %ZSTD_DDictHashSet_emplaceDDict.exit.thread.i.i

ZSTD_DDictHashSet_emplaceDDict.exit.thread.i.i:   ; preds = %._crit_edge.i.i.i, %bb.n, %.lr.ph.i.i
  %i.bj = add nuw i64 %.02244.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bj, %i.ai
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !137

._crit_edge.i.i:                                  ; preds = %ZSTD_DDictHashSet_emplaceDDict.exit.thread.i.i, %bb.l
  %.not.i32.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i32.i.i, label %ZSTD_DDictHashSet_expand.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i
  %.not4.i.i.i = icmp eq ptr %.sroa.425.0.copyload, null
  br i1 %.not4.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void %.sroa.425.0.copyload(ptr noundef %.sroa.526.0.copyload, ptr noundef nonnull %i.aj) #15, !inline_history !138
  br label %ZSTD_DDictHashSet_expand.exit.thread.i

bb.r:                                             ; preds = %bb.p
  call void @free(ptr noundef nonnull %i.aj) #15
  br label %ZSTD_DDictHashSet_expand.exit.thread.i

ZSTD_DDictHashSet_expand.exit.thread.i:           ; preds = %.thread, %bb.r, %bb.q, %._crit_edge.i.i, %bb.i
  %i.bk = phi ptr [ %i.y, %.thread ], [ %i.ad, %bb.r ], [ %i.ad, %bb.q ], [ %i.ad, %._crit_edge.i.i ], [ %i.ad, %bb.i ]
  %i.bl = phi ptr [ %i.x, %.thread ], [ %i.ac, %bb.r ], [ %i.ac, %bb.q ], [ %i.ac, %._crit_edge.i.i ], [ %i.ac, %bb.i ] ; 3 uses
  %i.bm = phi ptr [ %.0.i192131.i, %.thread ], [ %i.n, %bb.r ], [ %i.n, %bb.q ], [ %i.n, %._crit_edge.i.i ], [ %i.n, %bb.i ] ; 3 uses
  %i.bn = call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %1) #15 ; 2 uses
  %.val.i15.i = load i64, ptr %i.bk, align 8, !tbaa !92 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.bn, ptr %i.a, align 4, !tbaa !50
  %i.bo = call i64 @ZSTD_XXH64(ptr noundef nonnull captures(address) %i.a, i64 noundef 4, i64 noundef 0) #18
  %i.bp = add i64 %.val.i15.i, -1                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bq = load i64, ptr %i.bl, align 8, !tbaa !139 ; 2 uses
  %.not22.i = icmp eq i64 %i.bq, %.val.i15.i
  br i1 %.not22.i, label %ZSTD_DDictHashSet_addDDict.exit.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %ZSTD_DDictHashSet_expand.exit.thread.i
  %i.br = and i64 %i.bo, %i.bp                    ; 3 uses
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !49 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !93 ; 2 uses
  %.not26.i16.i = icmp eq ptr %i.bu, null
  br i1 %.not26.i16.i, label %._crit_edge.i20.i, label %.lr.ph.i17.i

.lr.ph.i17.i:                                     ; preds = %.preheader.i.i, %bb.t
  %i.bv = phi ptr [ %i.ce, %bb.t ], [ %i.bu, %.preheader.i.i ]
  %.027.i.i = phi i64 [ %i.cb, %bb.t ], [ %i.br, %.preheader.i.i ] ; 2 uses
  %i.bw = call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %i.bv) #15
  %i.bx = icmp eq i32 %i.bw, %i.bn
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i17.i
  %i.by = load ptr, ptr %i.bm, align 8, !tbaa !49
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.027.i.i
  store ptr %1, ptr %i.bz, align 8, !tbaa !93
  br label %ZSTD_DDictHashSet_addDDict.exit.thread

bb.t:                                             ; preds = %.lr.ph.i17.i
  %i.ca = and i64 %.027.i.i, %i.bp
  %i.cb = add i64 %i.ca, 1                        ; 3 uses
  %i.cc = load ptr, ptr %i.bm, align 8, !tbaa !49 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !93 ; 2 uses
  %.not.i18.i = icmp eq ptr %i.ce, null
  br i1 %.not.i18.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i17.i, !llvm.loop !136

._crit_edge.loopexit.i.i:                         ; preds = %bb.t
  %.pre.i19.i = load i64, ptr %i.bl, align 8, !tbaa !139
  br label %._crit_edge.i20.i

._crit_edge.i20.i:                                ; preds = %._crit_edge.loopexit.i.i, %.preheader.i.i
  %i.cf = phi i64 [ %i.bq, %.preheader.i.i ], [ %.pre.i19.i, %._crit_edge.loopexit.i.i ]
  %.0.lcssa.i.i = phi i64 [ %i.br, %.preheader.i.i ], [ %i.cb, %._crit_edge.loopexit.i.i ]
  %.lcssa25.i.i = phi ptr [ %i.bs, %.preheader.i.i ], [ %i.cc, %._crit_edge.loopexit.i.i ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.lcssa25.i.i, i64 %.0.lcssa.i.i
  store ptr %1, ptr %i.cg, align 8, !tbaa !93
  %i.ch = add i64 %i.cf, 1
  store i64 %i.ch, ptr %i.bl, align 8, !tbaa !139
  br label %ZSTD_DDictHashSet_addDDict.exit.thread

ZSTD_DDictHashSet_addDDict.exit.thread:           ; preds = %bb.m, %._crit_edge.i20.i, %bb.s, %ZSTD_DDictHashSet_expand.exit.thread.i, %bb.k, %ZSTD_customCalloc.exit.i.i, %bb.b, %bb.c, %ZSTD_createDDictHashSet.exit.thread, %bb.a
  %.1 = phi i64 [ -60, %bb.a ], [ -64, %ZSTD_createDDictHashSet.exit.thread ], [ 0, %bb.b ], [ -64, %ZSTD_customCalloc.exit.i.i ], [ 0, %bb.c ], [ 0, %._crit_edge.i20.i ], [ -1, %ZSTD_DDictHashSet_expand.exit.thread.i ], [ -64, %bb.k ], [ 0, %bb.s ], [ -1, %bb.m ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define range(i64 -64, 6) i64 @ZSTD_initDStream_usingDDict(ptr nofree noundef captures(none) initializes((30176, 30180), (30236, 30240), (30316, 30320)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30236
  store i32 0, ptr %i.a, align 4, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 30316
  store i32 0, ptr %i.b, align 4, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30176
  store i32 1, ptr %i.c, align 8, !tbaa !30
  %i.d = tail call i64 @ZSTD_DCtx_refDDict(ptr noundef %0, ptr noundef %1) ; 2 uses
  %i.e = icmp ult i64 %i.d, -119
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 30104
  %i.g = load i32, ptr %i.f, align 8, !tbaa !36
  %i.h = icmp eq i32 %i.g, 0
  %i.i = select i1 %i.h, i64 5, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.2 = phi i64 [ %i.i, %bb.b ], [ %i.d, %bb.a ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i64 1, 6) i64 @ZSTD_resetDStream(ptr nofree noundef captures(none) initializes((30176, 30180), (30236, 30240), (30316, 30320)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30236
  store i32 0, ptr %i.a, align 4, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 30316
  store i32 0, ptr %i.b, align 4, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30176
  store i32 1, ptr %i.c, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 30104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !36
  %i.f = icmp eq i32 %i.e, 0
  %i.g = select i1 %i.f, i64 5, i64 1
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i64 -60, 1) i64 @ZSTD_DCtx_setMaxWindowSize(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %i.b = load i32, ptr %i.a, align 4, !tbaa !98
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %1, -2147483649
  %or.cond = icmp ult i64 %i.c, -2147482625
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 30264
  store i64 %1, ptr %i.d, align 8, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ 0, %bb.c ], [ -60, %bb.a ], [ -42, %bb.b ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i64, i64 } @ZSTD_dParam_getBounds(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  switch i32 %0, label %bb.d [
    i32 100, label %bb.e
    i32 1000, label %bb.b
    i32 1001, label %bb.b
    i32 1002, label %bb.b
    i32 1003, label %bb.b
    i32 1004, label %bb.b
    i32 1005, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.sroa.3.0 = phi i64 [ 0, %bb.d ], [ 562949953422336, %bb.c ], [ 4294967296, %bb.b ], [ 133143986186, %bb.a ]
  %.sroa.0.0 = phi i64 [ -40, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i64 -60, 1) i64 @ZSTD_DCtx_setFormat(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %i.b = load i32, ptr %i.a, align 4, !tbaa !98
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %ZSTD_DCtx_setParameter.exit

bb.b:                                             ; preds = %bb.a
  %narrow.i36.i = icmp ugt i32 %1, 1
  br i1 %narrow.i36.i, label %ZSTD_DCtx_setParameter.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30104
  store i32 %1, ptr %i.c, align 8, !tbaa !36
  br label %ZSTD_DCtx_setParameter.exit

ZSTD_DCtx_setParameter.exit:                      ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ 0, %bb.c ], [ -42, %bb.b ], [ -60, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i64 -60, 1) i64 @ZSTD_DCtx_setParameter(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %i.b = load i32, ptr %i.a, align 4, !tbaa !98
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.r [
    i32 100, label %bb.c
    i32 1000, label %bb.e
    i32 1001, label %bb.g
    i32 1002, label %bb.i
    i32 1003, label %bb.k
    i32 1004, label %bb.n
    i32 1005, label %bb.p
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %2, 0
  %spec.store.select = select i1 %i.c, i32 27, i32 %2 ; 2 uses
  %i.d = add i32 %spec.store.select, -32
  %narrow.i = icmp ult i32 %i.d, -22
  br i1 %narrow.i, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = zext nneg i32 %spec.store.select to i64
  %i.f = shl nuw nsw i64 1, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 30264
  store i64 %i.f, ptr %i.g, align 8, !tbaa !37
  br label %bb.r

bb.e:                                             ; preds = %bb.b
  %narrow.i36 = icmp ugt i32 %2, 1
  br i1 %narrow.i36, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 30104
  store i32 %2, ptr %i.h, align 8, !tbaa !36
  br label %bb.r

bb.g:                                             ; preds = %bb.b
  %narrow.i38 = icmp ugt i32 %2, 1
  br i1 %narrow.i38, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 30320
  store i32 %2, ptr %i.i, align 8, !tbaa !38
  br label %bb.r

bb.i:                                             ; preds = %bb.b
  %narrow.i40 = icmp ugt i32 %2, 1
  br i1 %narrow.i40, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 30108
  store i32 %2, ptr %i.j, align 4, !tbaa !39
  br label %bb.r

bb.k:                                             ; preds = %bb.b
  %narrow.i42 = icmp ugt i32 %2, 1
end_hunk_1
