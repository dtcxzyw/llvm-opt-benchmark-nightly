Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/backward_references_enc?download=true
inline.NumInlined: 78
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@VP8LDistanceToPlaneCode:bb.a
  %i.y = add nsw i32 %1, 120
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.l, %bb.b ], [ %i.x, %bb.d ], [ %i.y, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8LClearBackwardRefs(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  store ptr %i.d, ptr %i.b, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %i.g, align 8, !tbaa !15
  store ptr %i.e, ptr %i.a, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.h, align 8, !tbaa !18
  store ptr null, ptr %i.e, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @VP8LBackwardRefsClear(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %VP8LClearBackwardRefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  store ptr %i.d, ptr %i.b, align 8, !tbaa !16
  br label %VP8LClearBackwardRefs.exit

VP8LClearBackwardRefs.exit:                       ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !15
  store ptr %i.e, ptr %i.a, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.h, align 8, !tbaa !18
  store ptr null, ptr %i.e, align 8, !tbaa !17
  %.not6 = icmp eq ptr %i.f, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %VP8LClearBackwardRefs.exit, %.lr.ph
  %i.i = phi ptr [ %i.j, %.lr.ph ], [ %i.f, %VP8LClearBackwardRefs.exit ] ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 3 uses
  tail call void @WebPSafeFree(ptr noundef nonnull %i.i) #11
  store ptr %i.j, ptr %i.g, align 8, !tbaa !15
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !36

._crit_edge:                                      ; preds = %.lr.ph, %VP8LClearBackwardRefs.exit
  ret void
}

declare void @WebPSafeFree(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @VP8LBackwardRefsInit(ptr noundef initializes((0, 40)) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !14
  %i.c = tail call i32 @llvm.smax.i32(i32 %1, i32 256)
  store i32 %i.c, ptr %0, align 8, !tbaa !22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8LRefsCursorInit(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.VP8LRefsCursor) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !24
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !26
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink2 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sink = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ]
  store ptr %.sink2, ptr %0, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %i.j, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8LRefsCursorNextBlock(ptr nofree noundef captures(none) initializes((0, 8), (16, 24)) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.i
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !28
  store ptr %i.c, ptr %i.a, align 8, !tbaa !24
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @VP8LBackwardRefsCursorAdd(ptr nofree noundef captures(none) %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.f = load i32, ptr %0, align 8, !tbaa !22
  %i.g = icmp eq i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %0, align 8, !tbaa !22
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 3
  %i.n = add nsw i64 %i.m, 24
  %i.o = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.n) #11 ; 4 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %BackwardRefsNewBlock.exit.thread, label %bb.e

BackwardRefsNewBlock.exit.thread:                 ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !29
  %i.r = or i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !29
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !25
  br label %BackwardRefsNewBlock.exit

bb.f:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !20
  store ptr %i.u, ptr %i.h, align 8, !tbaa !15
  br label %BackwardRefsNewBlock.exit

BackwardRefsNewBlock.exit:                        ; preds = %bb.e, %bb.f
  %.020.i = phi ptr [ %i.o, %bb.e ], [ %i.i, %bb.f ] ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !14
  store ptr %.020.i, ptr %i.w, align 8, !tbaa !16
  store ptr %.020.i, ptr %i.v, align 8, !tbaa !14
  store ptr %.020.i, ptr %i.a, align 8, !tbaa !18
  store ptr null, ptr %.020.i, align 8, !tbaa !20
  %2 = getelementptr inbounds nuw i8, ptr %.020.i, i64 16
  store i32 0, ptr %2, align 8, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %BackwardRefsNewBlock.exit, %bb.b
  %i.x = phi i32 [ 0, %BackwardRefsNewBlock.exit ], [ %i.e, %bb.b ] ; 2 uses
  %.0 = phi ptr [ %.020.i, %BackwardRefsNewBlock.exit ], [ %i.b, %bb.b ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.ab = add nsw i32 %i.x, 1
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !26
  %i.ac = sext i32 %i.x to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ac
  store i64 %1, ptr %i.ad, align 4
  br label %bb.h

bb.h:                                             ; preds = %BackwardRefsNewBlock.exit.thread, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @VP8LHashChainInit(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = tail call ptr @WebPSafeMalloc(i64 noundef %i.a, i64 noundef 4) #11 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !32
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.d, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @WebPSafeMalloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @VP8LHashChainClear(ptr nofree noundef captures(none) initializes((8, 12)) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  tail call void @WebPSafeFree(ptr noundef %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !33
  store ptr null, ptr %0, align 8, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @VP8LHashChainFill(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #3 {
bb.a:
  %i.a = mul i32 %4, %3                           ; 5 uses
  %i.b = mul nsw i32 %1, %1
  %i.c = lshr i32 %i.b, 7                         ; 2 uses
  %i.d = add nuw nsw i32 %i.c, 8                  ; 2 uses
  %i.e = icmp sgt i32 %1, 75
  br i1 %i.e, label %GetWindowSizeForHashChain.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %1, 50
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = shl i32 %3, 8
  br label %GetWindowSizeForHashChain.exit

bb.d:                                             ; preds = %bb.b
  %i.h = icmp sgt i32 %1, 25
  %.v.i = select i1 %i.h, i32 6, i32 4
  %i.i = shl i32 %3, %.v.i
  br label %GetWindowSizeForHashChain.exit

GetWindowSizeForHashChain.exit:                   ; preds = %bb.a, %bb.c, %bb.d
  %i.j = phi i32 [ 1048456, %bb.a ], [ %i.g, %bb.c ], [ %i.i, %bb.d ]
  %i.k = tail call range(i32 -2147483648, 1048457) i32 @llvm.smin.i32(i32 %i.j, i32 1048456)
  %i.l = load i32, ptr %8, align 4, !tbaa !34     ; 3 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !32     ; 10 uses
  %i.n = icmp slt i32 %i.a, 3
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %GetWindowSizeForHashChain.exit
  %i.o = sext i32 %i.a to i64
  %i.p = getelementptr [4 x i8], ptr %i.m, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  store i32 0, ptr %i.q, align 4, !tbaa !34
  store i32 0, ptr %i.m, align 4, !tbaa !34
  br label %.loopexit

bb.f:                                             ; preds = %GetWindowSizeForHashChain.exit
  %i.r = tail call ptr @WebPSafeMalloc(i64 noundef 262144, i64 noundef 4) #11 ; 9 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = tail call i32 @WebPEncodingSetError(ptr noundef %6, i32 noundef 1) #11
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.u = sdiv i32 %7, 2                           ; 3 uses
  %i.v = sub nsw i32 %7, %i.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1048576) %i.r, i8 -1, i64 1048576, i1 false)
  %i.w = load i32, ptr %2, align 4, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !34
  %i.z = icmp eq i32 %i.w, %i.y
  %i.aa = zext i1 %i.z to i32
  %i.ab = add nsw i32 %i.a, -2                    ; 6 uses
  br label %.critedge254

.critedge254:                                     ; preds = %.loopexit279, %bb.h
  %.0218 = phi i32 [ 0, %bb.h ], [ %.3221, %.loopexit279 ] ; 12 uses
  %.0216 = phi i32 [ %i.aa, %bb.h ], [ %.1217, %.loopexit279 ]
  %i.ac = icmp slt i32 %.0218, %i.ab
  br i1 %i.ac, label %bb.i, label %bb.q

bb.i:                                             ; preds = %.critedge254
  %i.ad = add nsw i32 %.0218, 1                   ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !34 ; 2 uses
  %i.ah = sext i32 %.0218 to i64                  ; 3 uses
  %i.ai = getelementptr [4 x i8], ptr %2, i64 %i.ah ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !34
  %i.al = icmp eq i32 %i.ag, %i.ak                ; 2 uses
  %i.am = icmp ne i32 %.0216, 0
  %or.cond = select i1 %i.am, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !34 ; 2 uses
  %i.ao = add nsw i32 %.0218, 2
  %i.ap = add nsw i32 %.0218, 3                   ; 2 uses
  %i.aq = icmp slt i32 %i.ap, %i.a
  br i1 %i.aq, label %.lr.ph.preheader, label %.lr.ph289

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.ar = sub i32 %i.ab, %.0218                   ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %i.as = phi i32 [ %i.ay, %bb.k ], [ %i.ap, %.lr.ph.preheader ]
  %.0208283 = phi i32 [ %i.ax, %bb.k ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !34
  %i.aw = icmp eq i32 %i.av, %i.an
  br i1 %i.aw, label %bb.k, label %.critedge

bb.k:                                             ; preds = %.lr.ph
  %i.ax = add i32 %.0208283, 1                    ; 3 uses
  %i.ay = add i32 %i.ao, %i.ax
  %exitcond.not = icmp eq i32 %i.ax, %i.ar
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !37

.critedge:                                        ; preds = %.lr.ph, %bb.k
  %.0208.lcssa = phi i32 [ %i.ar, %bb.k ], [ %.0208283, %.lr.ph ] ; 4 uses
  %i.az = icmp ugt i32 %.0208.lcssa, 4095
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ah
  %i.bb = add i32 %.0208.lcssa, -4095             ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ba, i8 -1, i64 %i.bd, i1 false)
  %i.be = add i32 %i.bb, %.0218
  br label %.lr.ph289

bb.m:                                             ; preds = %.critedge
  %.not251286 = icmp eq i32 %.0208.lcssa, 0
  br i1 %.not251286, label %.loopexit279, label %.lr.ph289

.lr.ph289:                                        ; preds = %bb.j, %bb.l, %bb.m
  %.1209362 = phi i32 [ %.0208.lcssa, %bb.m ], [ 4095, %bb.l ], [ 1, %bb.j ] ; 5 uses
  %.1219361 = phi i32 [ %.0218, %bb.m ], [ %i.be, %bb.l ], [ %.0218, %bb.j ] ; 2 uses
  %i.bf = mul i32 %i.an, 1540483478               ; 3 uses
  %i.bg = sext i32 %.1219361 to i64               ; 3 uses
  %xtraiter = and i32 %.1209362, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph289
  %i.bh = add nsw i32 %.1209362, -1
  %i.bi = mul i32 %.1209362, -962287725
  %i.bj = add i32 %i.bi, %i.bf
  %i.bk = lshr i32 %i.bj, 14
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !34
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.bg
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !34
  %indvars.iv.next.prol = add nsw i64 %i.bg, 1    ; 2 uses
  store i32 %.1219361, ptr %i.bm, align 4, !tbaa !34
end_hunk_0
begin_hunk_1_@VP8LGetBackwardReferences:bb.a
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ej
  %indvars.iv.next.i.i.prol = add nsw i64 %i.bo, -1
  %i.el = icmp eq i32 %i.bn, 0
  %invariant.op = or disjoint i64 %.sroa.3.0.insert.shift.i.i.i, 2
  %xtraiter255 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.em = icmp ult i32 %i.dk, 4
  %unroll_iter = and i64 %wide.trip.count.i.i, 4294967292
  %lcmp.mod256.not = icmp eq i64 %xtraiter255, 0
  %lcmp.mod257 = icmp ne i64 %xtraiter255, 0
  %xtraiter258 = and i64 %i.dn, 1
  %lcmp.mod259.not = icmp eq i64 %xtraiter258, 0
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %17, i64 %i.dn
  %indvars.iv.next167.i.i.prol = add nsw i64 %i.dn, -1
  %i.eo = icmp eq i32 %spec.select.i, 1
  br label %bb.o

.preheader.loopexit.i:                            ; preds = %.loopexit.i
  %.pre.i = load i32, ptr %i.e, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader239..preheader_crit_edge.i
  %.pre-phi281.i = phi i32 [ %.pre280.i, %.preheader239..preheader_crit_edge.i ], [ %i.bq, %.preheader.loopexit.i ] ; 2 uses
  %.pre-phi.i = phi i32 [ %.pre279.i, %.preheader239..preheader_crit_edge.i ], [ %i.bp, %.preheader.loopexit.i ] ; 2 uses
  %i.ep = phi i32 [ 0, %.preheader239..preheader_crit_edge.i ], [ %.pre.i, %.preheader.loopexit.i ] ; 3 uses
  %i.eq = icmp sgt i32 %3, 24                     ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  br i1 %i.be, label %bb.gk, label %bb.hj

bb.o:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.0112252.i = phi i32 [ 1, %.lr.ph.i ], [ %i.ajy, %.loopexit.i ] ; 6 uses
  %.0116251.i = phi i32 [ %5, %.lr.ph.i ], [ %i.ajx, %.loopexit.i ] ; 2 uses
  %i.eu = and i32 %.0116251.i, %.0112252.i
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %.loopexit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  switch i32 %.0112252.i, label %.critedge [
    i32 2, label %bb.q
    i32 1, label %bb.aw
    i32 4, label %bb.ax
  ]

bb.q:                                             ; preds = %bb.p
  %i.ew = load ptr, ptr %i.db, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i47, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ex = load ptr, ptr %i.dc, align 8, !tbaa !15
  store ptr %i.ex, ptr %i.ew, align 8, !tbaa !16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ey = load ptr, ptr %i.dd, align 8, !tbaa !17 ; 5 uses
  store ptr %i.ey, ptr %i.dc, align 8, !tbaa !15
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !14
  store ptr null, ptr %i.de, align 8, !tbaa !18
  store ptr null, ptr %i.dd, align 8, !tbaa !17
  %i.ez = load i32, ptr %2, align 4, !tbaa !34
  %.sroa.3.0.insert.ext.i.i.i.i = zext i32 %i.ez to i64
  %.sroa.3.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.3.0.insert.ext.i.i.i.i, 32
  %.sroa.21.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i.i.i, 65536
  %i.fa = icmp eq ptr %i.ey, null
  br i1 %i.fa, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.fb = load i32, ptr %i.bg, align 8, !tbaa !22
  %i.fc = sext i32 %i.fb to i64
  %i.fd = shl nsw i64 %i.fc, 3
  %i.fe = add nsw i64 %i.fd, 24
  %i.ff = call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.fe) #11 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i.i, label %BackwardRefsNewBlock.exit.thread.i.i.i.i, label %bb.u

BackwardRefsNewBlock.exit.thread.i.i.i.i:         ; preds = %bb.t
  %i.fg = load i32, ptr %i.df, align 4, !tbaa !29
  %i.fh = or i32 %i.fg, 1
  store i32 %i.fh, ptr %i.df, align 4, !tbaa !29
  br label %AddSingleLiteral.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 24 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !25
  %.pre.i.i = load ptr, ptr %i.db, align 8, !tbaa !14
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.fk = load ptr, ptr %i.ey, align 8, !tbaa !20
  store ptr %i.fk, ptr %i.dc, align 8, !tbaa !15
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %.pre87.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fl = phi ptr [ %i.fi, %bb.u ], [ %.pre87.i.i, %bb.v ]
  %i.fm = phi ptr [ %.pre.i.i, %bb.u ], [ %i.dd, %bb.v ]
  %.020.i.i.i.i.i = phi ptr [ %i.ff, %bb.u ], [ %i.ey, %bb.v ] ; 5 uses
  store ptr %.020.i.i.i.i.i, ptr %i.fm, align 8, !tbaa !16
  store ptr %.020.i.i.i.i.i, ptr %i.db, align 8, !tbaa !14
  store ptr %.020.i.i.i.i.i, ptr %i.de, align 8, !tbaa !18
  store ptr null, ptr %.020.i.i.i.i.i, align 8, !tbaa !20
  %i.fn = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 16
  store i32 1, ptr %i.fn, align 8, !tbaa !26
  store i64 %.sroa.21.0.insert.insert.i.i.i.i, ptr %i.fl, align 4
  br label %AddSingleLiteral.exit.i.i

AddSingleLiteral.exit.i.i:                        ; preds = %bb.w, %BackwardRefsNewBlock.exit.thread.i.i.i.i
  br i1 %i.bm, label %.lr.ph.i.i49, label %BackwardReferencesRle.exit.i

.lr.ph.i.i49:                                     ; preds = %AddSingleLiteral.exit.i.i, %VP8LBackwardRefsCursorAdd.exit.i.i
  %.05686.i.i = phi i32 [ %.1.i.i, %VP8LBackwardRefsCursorAdd.exit.i.i ], [ 1, %AddSingleLiteral.exit.i.i ] ; 4 uses
  %i.fo = sub nsw i32 %i.bj, %.05686.i.i
  %i.fp = call range(i32 -2147483645, 4096) i32 @llvm.smin.i32(i32 range(i32 -2147483645, 2147483647) %i.fo, i32 4095) ; 2 uses
  %i.fq = zext nneg i32 %.05686.i.i to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fq ; 7 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -4 ; 2 uses
  %i.ft = load i32, ptr %i.fr, align 4, !tbaa !34
  %i.fu = load i32, ptr %i.fs, align 4, !tbaa !34
  %.not.i62.i.i = icmp eq i32 %i.ft, %i.fu
  br i1 %.not.i62.i.i, label %bb.x, label %FindMatchLength.exit.i.i

bb.x:                                             ; preds = %.lr.ph.i.i49
  %i.fv = load ptr, ptr @VP8LVectorMismatch, align 8, !tbaa !35
  %i.fw = call i32 %i.fv(ptr noundef nonnull %i.fr, ptr noundef nonnull %i.fs, i32 noundef range(i32 -2147483645, 2147483647) %i.fp) #11, !inline_history !48
  br label %FindMatchLength.exit.i.i

FindMatchLength.exit.i.i:                         ; preds = %bb.x, %.lr.ph.i.i49
  %.0.i.i.i50 = phi i32 [ %i.fw, %bb.x ], [ 0, %.lr.ph.i.i49 ] ; 5 uses
  %i.fx = icmp slt i32 %.05686.i.i, %0
  br i1 %i.fx, label %FindMatchLength.exit65.i.i, label %bb.y

bb.y:                                             ; preds = %FindMatchLength.exit.i.i
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.dh ; 2 uses
  %i.fz = load i32, ptr %i.fr, align 4, !tbaa !34
  %i.ga = load i32, ptr %i.fy, align 4, !tbaa !34
  %.not.i63.i.i = icmp eq i32 %i.fz, %i.ga
  br i1 %.not.i63.i.i, label %bb.z, label %FindMatchLength.exit65.i.i

bb.z:                                             ; preds = %bb.y
  %i.gb = load ptr, ptr @VP8LVectorMismatch, align 8, !tbaa !35
  %i.gc = call i32 %i.gb(ptr noundef nonnull %i.fr, ptr noundef nonnull %i.fy, i32 noundef range(i32 -2147483645, 2147483647) %i.fp) #11, !inline_history !48
  br label %FindMatchLength.exit65.i.i

FindMatchLength.exit65.i.i:                       ; preds = %bb.z, %bb.y, %FindMatchLength.exit.i.i
  %i.gd = phi i32 [ 0, %FindMatchLength.exit.i.i ], [ %i.gc, %bb.z ], [ 0, %bb.y ] ; 5 uses
  %i.ge = icmp sge i32 %.0.i.i.i50, %i.gd
  %i.gf = icmp sgt i32 %.0.i.i.i50, 3
  %or.cond.i.i = and i1 %i.gf, %i.ge
  br i1 %or.cond.i.i, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %FindMatchLength.exit65.i.i
  %i.gg = shl i32 %.0.i.i.i50, 16
  %.sroa.22.0.insert.shift.i.i.i = zext i32 %i.gg to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.22.0.insert.shift.i.i.i, 4294967298
  %i.gh = load ptr, ptr %i.de, align 8, !tbaa !18 ; 3 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !26 ; 2 uses
  %i.gl = load i32, ptr %i.bg, align 8, !tbaa !22
  %i.gm = icmp eq i32 %i.gk, %i.gl
  br i1 %i.gm, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.gn = load ptr, ptr %i.dc, align 8, !tbaa !15 ; 3 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.gp = load i32, ptr %i.bg, align 8, !tbaa !22
  %i.gq = sext i32 %i.gp to i64
  %i.gr = shl nsw i64 %i.gq, 3
  %i.gs = add nsw i64 %i.gr, 24
  %i.gt = call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.gs) #11 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i, label %BackwardRefsNewBlock.exit.thread.i.i.i, label %bb.ae

BackwardRefsNewBlock.exit.thread.i.i.i:           ; preds = %bb.ad
  %i.gu = load i32, ptr %i.df, align 4, !tbaa !29
  %i.gv = or i32 %i.gu, 1
  store i32 %i.gv, ptr %i.df, align 4, !tbaa !29
  br label %VP8LBackwardRefsCursorAdd.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !25
  br label %BackwardRefsNewBlock.exit.i.i.i

bb.af:                                            ; preds = %bb.ac
  %i.gy = load ptr, ptr %i.gn, align 8, !tbaa !20
  store ptr %i.gy, ptr %i.dc, align 8, !tbaa !15
  br label %BackwardRefsNewBlock.exit.i.i.i

BackwardRefsNewBlock.exit.i.i.i:                  ; preds = %bb.af, %bb.ae
  %.020.i.i.i.i = phi ptr [ %i.gt, %bb.ae ], [ %i.gn, %bb.af ] ; 6 uses
  %i.gz = load ptr, ptr %i.db, align 8, !tbaa !14
  store ptr %.020.i.i.i.i, ptr %i.gz, align 8, !tbaa !16
  store ptr %.020.i.i.i.i, ptr %i.db, align 8, !tbaa !14
  store ptr %.020.i.i.i.i, ptr %i.de, align 8, !tbaa !18
  store ptr null, ptr %.020.i.i.i.i, align 8, !tbaa !20
  %19 = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 16
  store i32 0, ptr %19, align 8, !tbaa !26
  br label %bb.ag

bb.ag:                                            ; preds = %BackwardRefsNewBlock.exit.i.i.i, %bb.ab
  %i.ha = phi i32 [ 0, %BackwardRefsNewBlock.exit.i.i.i ], [ %i.gk, %bb.ab ] ; 2 uses
  %.0.i66.i.i = phi ptr [ %.020.i.i.i.i, %BackwardRefsNewBlock.exit.i.i.i ], [ %i.gh, %bb.ab ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.0.i66.i.i, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !25
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.i66.i.i, i64 16
  %i.he = add nsw i32 %i.ha, 1
  store i32 %i.he, ptr %i.hd, align 8, !tbaa !26
  %i.hf = sext i32 %i.ha to i64
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %i.hf
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.hg, align 4
  br label %VP8LBackwardRefsCursorAdd.exit.i.i

bb.ah:                                            ; preds = %FindMatchLength.exit65.i.i
  %i.hh = icmp sgt i32 %i.gd, 3
  %i.hi = load ptr, ptr %i.de, align 8, !tbaa !18 ; 5 uses
  %i.hj = icmp eq ptr %i.hi, null                 ; 2 uses
  br i1 %i.hh, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %i.hk = shl i32 %i.gd, 16
  %.sroa.22.0.insert.shift.i68.i.i = zext i32 %i.hk to i64
  %.sroa.0.0.insert.insert.i70.reass.reass.i.reass.reass.i.reass.reass.reass = or disjoint i64 %.sroa.22.0.insert.shift.i68.i.i, %invariant.op
  br i1 %i.hj, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !26 ; 2 uses
  %i.hn = load i32, ptr %i.bg, align 8, !tbaa !22
  %i.ho = icmp eq i32 %i.hm, %i.hn
  br i1 %i.ho, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.hp = load ptr, ptr %i.dc, align 8, !tbaa !15 ; 3 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.hr = load i32, ptr %i.bg, align 8, !tbaa !22
  %i.hs = sext i32 %i.hr to i64
  %i.ht = shl nsw i64 %i.hs, 3
  %i.hu = add nsw i64 %i.ht, 24
  %i.hv = call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.hu) #11 ; 4 uses
  %.not.i.i74.i.i = icmp eq ptr %i.hv, null
  br i1 %.not.i.i74.i.i, label %BackwardRefsNewBlock.exit.thread.i75.i.i, label %bb.am

BackwardRefsNewBlock.exit.thread.i75.i.i:         ; preds = %bb.al
  %i.hw = load i32, ptr %i.df, align 4, !tbaa !29
  %i.hx = or i32 %i.hw, 1
  store i32 %i.hx, ptr %i.df, align 4, !tbaa !29
  br label %VP8LBackwardRefsCursorAdd.exit.i.i

bb.am:                                            ; preds = %bb.al
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store ptr %i.hy, ptr %i.hz, align 8, !tbaa !25
  br label %BackwardRefsNewBlock.exit.i72.i.i

bb.an:                                            ; preds = %bb.ak
  %i.ia = load ptr, ptr %i.hp, align 8, !tbaa !20
  store ptr %i.ia, ptr %i.dc, align 8, !tbaa !15
  br label %BackwardRefsNewBlock.exit.i72.i.i

BackwardRefsNewBlock.exit.i72.i.i:                ; preds = %bb.an, %bb.am
  %.020.i.i73.i.i = phi ptr [ %i.hv, %bb.am ], [ %i.hp, %bb.an ] ; 6 uses
  %i.ib = load ptr, ptr %i.db, align 8, !tbaa !14
  store ptr %.020.i.i73.i.i, ptr %i.ib, align 8, !tbaa !16
  store ptr %.020.i.i73.i.i, ptr %i.db, align 8, !tbaa !14
  store ptr %.020.i.i73.i.i, ptr %i.de, align 8, !tbaa !18
  store ptr null, ptr %.020.i.i73.i.i, align 8, !tbaa !20
  %20 = getelementptr inbounds nuw i8, ptr %.020.i.i73.i.i, i64 16
  store i32 0, ptr %20, align 8, !tbaa !26
  br label %bb.ao

bb.ao:                                            ; preds = %BackwardRefsNewBlock.exit.i72.i.i, %bb.aj
  %i.ic = phi i32 [ 0, %BackwardRefsNewBlock.exit.i72.i.i ], [ %i.hm, %bb.aj ] ; 2 uses
  %.0.i71.i.i = phi ptr [ %.020.i.i73.i.i, %BackwardRefsNewBlock.exit.i72.i.i ], [ %i.hi, %bb.aj ] ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.0.i71.i.i, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !25
  %i.if = getelementptr inbounds nuw i8, ptr %.0.i71.i.i, i64 16
  %i.ig = add nsw i32 %i.ic, 1
  store i32 %i.ig, ptr %i.if, align 8, !tbaa !26
  %i.ih = sext i32 %i.ic to i64
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.ih
  store i64 %.sroa.0.0.insert.insert.i70.reass.reass.i.reass.reass.i.reass.reass.reass, ptr %i.ii, align 4
  br label %VP8LBackwardRefsCursorAdd.exit.i.i

bb.ap:                                            ; preds = %bb.ah
  %i.ij = load i32, ptr %i.fr, align 4, !tbaa !34
  %.sroa.3.0.insert.ext.i.i77.i.i = zext i32 %i.ij to i64
  %.sroa.3.0.insert.shift.i.i78.i.i = shl nuw i64 %.sroa.3.0.insert.ext.i.i77.i.i, 32
  %.sroa.21.0.insert.insert.i.i79.i.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i78.i.i, 65536
  br i1 %i.hj, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !26 ; 2 uses
  %i.im = load i32, ptr %i.bg, align 8, !tbaa !22
  %i.in = icmp eq i32 %i.il, %i.im
  br i1 %i.in, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.io = load ptr, ptr %i.dc, align 8, !tbaa !15 ; 3 uses
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.iq = load i32, ptr %i.bg, align 8, !tbaa !22
  %i.ir = sext i32 %i.iq to i64
  %i.is = shl nsw i64 %i.ir, 3
  %i.it = add nsw i64 %i.is, 24
  %i.iu = call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.it) #11 ; 4 uses
  %.not.i.i.i83.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i83.i.i, label %BackwardRefsNewBlock.exit.thread.i.i84.i.i, label %bb.at

BackwardRefsNewBlock.exit.thread.i.i84.i.i:       ; preds = %bb.as
  %i.iv = load i32, ptr %i.df, align 4, !tbaa !29
  %i.iw = or i32 %i.iv, 1
  store i32 %i.iw, ptr %i.df, align 4, !tbaa !29
  br label %VP8LBackwardRefsCursorAdd.exit.i.i

bb.at:                                            ; preds = %bb.as
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store ptr %i.ix, ptr %i.iy, align 8, !tbaa !25
  br label %BackwardRefsNewBlock.exit.i.i81.i.i

bb.au:                                            ; preds = %bb.ar
  %i.iz = load ptr, ptr %i.io, align 8, !tbaa !20
  store ptr %i.iz, ptr %i.dc, align 8, !tbaa !15
  br label %BackwardRefsNewBlock.exit.i.i81.i.i

BackwardRefsNewBlock.exit.i.i81.i.i:              ; preds = %bb.au, %bb.at
  %.020.i.i.i82.i.i = phi ptr [ %i.iu, %bb.at ], [ %i.io, %bb.au ] ; 6 uses
  %i.ja = load ptr, ptr %i.db, align 8, !tbaa !14
  store ptr %.020.i.i.i82.i.i, ptr %i.ja, align 8, !tbaa !16
  store ptr %.020.i.i.i82.i.i, ptr %i.db, align 8, !tbaa !14
  store ptr %.020.i.i.i82.i.i, ptr %i.de, align 8, !tbaa !18
  store ptr null, ptr %.020.i.i.i82.i.i, align 8, !tbaa !20
  %21 = getelementptr inbounds nuw i8, ptr %.020.i.i.i82.i.i, i64 16
  store i32 0, ptr %21, align 8, !tbaa !26
  br label %bb.av

bb.av:                                            ; preds = %BackwardRefsNewBlock.exit.i.i81.i.i, %bb.aq
  %i.jb = phi i32 [ 0, %BackwardRefsNewBlock.exit.i.i81.i.i ], [ %i.il, %bb.aq ] ; 2 uses
  %.0.i.i80.i.i = phi ptr [ %.020.i.i.i82.i.i, %BackwardRefsNewBlock.exit.i.i81.i.i ], [ %i.hi, %bb.aq ] ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.0.i.i80.i.i, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !25
  %i.je = getelementptr inbounds nuw i8, ptr %.0.i.i80.i.i, i64 16
  %i.jf = add nsw i32 %i.jb, 1
  store i32 %i.jf, ptr %i.je, align 8, !tbaa !26
  %i.jg = sext i32 %i.jb to i64
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %i.jg
  store i64 %.sroa.21.0.insert.insert.i.i79.i.i, ptr %i.jh, align 4
  br label %VP8LBackwardRefsCursorAdd.exit.i.i

VP8LBackwardRefsCursorAdd.exit.i.i:               ; preds = %bb.av, %BackwardRefsNewBlock.exit.thread.i.i84.i.i, %bb.ao, %BackwardRefsNewBlock.exit.thread.i75.i.i, %bb.ag, %BackwardRefsNewBlock.exit.thread.i.i.i
  %.pn.i.i = phi i32 [ %i.gd, %bb.ao ], [ %.0.i.i.i50, %bb.ag ], [ %.0.i.i.i50, %BackwardRefsNewBlock.exit.thread.i.i.i ], [ %i.gd, %BackwardRefsNewBlock.exit.thread.i75.i.i ], [ 1, %BackwardRefsNewBlock.exit.thread.i.i84.i.i ], [ 1, %bb.av ]
  %.1.i.i = add nuw nsw i32 %.pn.i.i, %.05686.i.i ; 2 uses
  %i.ji = icmp slt i32 %.1.i.i, %i.bj
  br i1 %i.ji, label %.lr.ph.i.i49, label %BackwardReferencesRle.exit.i, !llvm.loop !49

BackwardReferencesRle.exit.i:                     ; preds = %VP8LBackwardRefsCursorAdd.exit.i.i, %AddSingleLiteral.exit.i.i
  %i.jj = load i32, ptr %i.df, align 4, !tbaa !29
  %.not.i.i48 = icmp eq i32 %i.jj, 0
  %i.jk = zext i1 %.not.i.i48 to i32
  br label %bb.eu

bb.aw:                                            ; preds = %bb.p
  %i.jl = call fastcc i32 @BackwardReferencesLz77(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %8, ptr noundef nonnull %i.bg)
  br label %bb.eu

bb.ax:                                            ; preds = %bb.p
  %i.jm = call ptr @WebPSafeMalloc(i64 noundef %i.bk, i64 noundef 4) #11 ; 2 uses
  store ptr %i.jm, ptr %18, align 8, !tbaa !32
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %.critedge, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i32 %i.bj, ptr %i.bl, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.c, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.d, i8 0, i64 128, i1 false)
  %i.jo = call ptr @WebPSafeMalloc(i64 noundef %i.bk, i64 noundef 2) #11 ; 11 uses
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %BackwardReferencesLz77Box.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jq = getelementptr [2 x i8], ptr %i.jo, i64 %i.bk
  %i.jr = getelementptr i8, ptr %i.jq, i64 -2
  store i16 1, ptr %i.jr, align 2, !tbaa !88
  br i1 %i.bm, label %.lr.ph.i133.i.preheader, label %.peel.next319.i.i

.lr.ph.i133.i.preheader:                          ; preds = %bb.az
  br i1 %lcmp.mod.not.not, label %.lr.ph.i133.i.prol, label %.lr.ph.i133.i.prol.loopexit

.lr.ph.i133.i.prol:                               ; preds = %.lr.ph.i133.i.preheader
  %i.js = load i32, ptr %i.ei, align 4, !tbaa !34
  %i.jt = load i32, ptr %i.ek, align 4, !tbaa !34
  %i.ju = icmp eq i32 %i.js, %i.jt
  br i1 %i.ju, label %bb.ba, label %.lr.ph.i133.i.prol.loopexit.unr-lcssa

bb.ba:                                            ; preds = %.lr.ph.i133.i.prol
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.jo, i64 %i.ej
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !88 ; 2 uses
  %i.jx = icmp ne i16 %i.jw, 4095
  %i.jy = zext i1 %i.jx to i16
  %i.jz = add i16 %i.jw, %i.jy
  br label %.lr.ph.i133.i.prol.loopexit.unr-lcssa

.lr.ph.i133.i.prol.loopexit.unr-lcssa:            ; preds = %bb.ba, %.lr.ph.i133.i.prol
  %.sink.i.i.prol = phi i16 [ %i.jz, %bb.ba ], [ 1, %.lr.ph.i133.i.prol ]
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %i.jo, i64 %i.bo
  store i16 %.sink.i.i.prol, ptr %i.ka, align 2, !tbaa !88
  br label %.lr.ph.i133.i.prol.loopexit

.lr.ph.i133.i.prol.loopexit:                      ; preds = %.lr.ph.i133.i.prol.loopexit.unr-lcssa, %.lr.ph.i133.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %i.bo, %.lr.ph.i133.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i133.i.prol.loopexit.unr-lcssa ]
  br i1 %i.el, label %.peel.next319.i.i, label %.lr.ph.i133.i

.lr.ph.i133.i:                                    ; preds = %.lr.ph.i133.i.prol.loopexit, %bb.bd
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %bb.bd ], [ %indvars.iv.i.i.unr, %.lr.ph.i133.i.prol.loopexit ] ; 7 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !34 ; 2 uses
  %i.kd = add nuw nsw i64 %indvars.iv.i.i, 1      ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kd
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !34
  %i.kg = icmp eq i32 %i.kc, %i.kf
  br i1 %i.kg, label %bb.bb, label %.lr.ph.i133.i.1

bb.bb:                                            ; preds = %.lr.ph.i133.i
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %i.jo, i64 %i.kd
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !88 ; 2 uses
  %i.kj = icmp ne i16 %i.ki, 4095
  %i.kk = zext i1 %i.kj to i16
  %i.kl = add i16 %i.ki, %i.kk
  br label %.lr.ph.i133.i.1

.lr.ph.i133.i.1:                                  ; preds = %bb.bb, %.lr.ph.i133.i
  %.sink.i.i = phi i16 [ %i.kl, %bb.bb ], [ 1, %.lr.ph.i133.i ]
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %i.jo, i64 %indvars.iv.i.i
  store i16 %.sink.i.i, ptr %i.km, align 2, !tbaa !88
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i.i
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !34
  %i.kp = icmp eq i32 %i.ko, %i.kc
  br i1 %i.kp, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.lr.ph.i133.i.1
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %i.jo, i64 %indvars.iv.i.i
  %i.kr = load i16, ptr %i.kq, align 2, !tbaa !88 ; 2 uses
  %i.ks = icmp ne i16 %i.kr, 4095
  %i.kt = zext i1 %i.ks to i16
  %i.ku = add i16 %i.kr, %i.kt
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.lr.ph.i133.i.1
  %.sink.i.i.1 = phi i16 [ %i.ku, %bb.bc ], [ 1, %.lr.ph.i133.i.1 ]
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %i.jo, i64 %indvars.iv.next.i.i
  store i16 %.sink.i.i.1, ptr %i.kv, align 2, !tbaa !88
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2
  %i.kw = icmp sgt i64 %indvars.iv.i.i, 1
  br i1 %i.kw, label %.lr.ph.i133.i, label %.peel.next319.i.i, !llvm.loop !50

.peel.next319.i.i:                                ; preds = %.lr.ph.i133.i.prol.loopexit, %bb.bd, %bb.az
  br i1 %brmerge.i, label %VP8LDistanceToPlaneCode.exit.i.i46, label %VP8LDistanceToPlaneCode.exit.thread.i.i

VP8LDistanceToPlaneCode.exit.i.i46:               ; preds = %.peel.next319.i.i
  %.0.i.in.in.i.i = load i8, ptr %.0.i.in.in.in.i.i, align 1, !tbaa !8 ; 2 uses
  %i.kx = icmp ugt i8 %.0.i.in.in.i.i, 31
  br i1 %i.kx, label %VP8LDistanceToPlaneCode.exit.thread.i.i, label %bb.be

bb.be:                                            ; preds = %VP8LDistanceToPlaneCode.exit.i.i46
  %i.ky = zext nneg i8 %.0.i.in.in.i.i to i64
  %i.kz = getelementptr [4 x i8], ptr %i.c, i64 %i.ky
  store i32 1, ptr %i.kz, align 4, !tbaa !34
  br label %VP8LDistanceToPlaneCode.exit.thread.i.i

VP8LDistanceToPlaneCode.exit.thread.i.i:          ; preds = %bb.be, %VP8LDistanceToPlaneCode.exit.i.i46, %.peel.next319.i.i
  %i.la = sdiv i32 2, %0                          ; 3 uses
  %i.lb = mul nsw i32 %i.la, %0
  %.recomposed276 = srem i32 2, %0                ; 2 uses
  %i.lc = icmp sgt i32 %i.lb, -7
  br i1 %i.lc, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %VP8LDistanceToPlaneCode.exit.thread.i.i
  %i.ld = icmp sgt i32 %.recomposed276, %i.bp
  br i1 %i.ld, label %bb.bg, label %VP8LDistanceToPlaneCode.exit.thread.i.1.i

bb.bg:                                            ; preds = %bb.bf
  %i.le = shl nsw i32 %i.la, 4
  %i.lf = add i32 %i.le, %i.bq
  br label %VP8LDistanceToPlaneCode.exit.i.1.i

bb.bh:                                            ; preds = %VP8LDistanceToPlaneCode.exit.thread.i.i
  %i.lg = shl nsw i32 %i.la, 4
  %i.lh = or disjoint i32 %i.lg, 8
  br label %VP8LDistanceToPlaneCode.exit.i.1.i

VP8LDistanceToPlaneCode.exit.i.1.i:               ; preds = %bb.bh, %bb.bg
  %.pn215.i.1.i = phi i32 [ %i.lh, %bb.bh ], [ %i.lf, %bb.bg ]
  %.pn214.in.i.1.i = sub i32 %.pn215.i.1.i, %.recomposed276
  %.pn214.i.1.i = sext i32 %.pn214.in.i.1.i to i64
  %.0.i.in.in.in.i.1.i = getelementptr inbounds i8, ptr @plane_to_code_lut, i64 %.pn214.i.1.i
  %.0.i.in.in.i.1.i = load i8, ptr %.0.i.in.in.in.i.1.i, align 1, !tbaa !8 ; 2 uses
  %i.li = icmp ugt i8 %.0.i.in.in.i.1.i, 31
  br i1 %i.li, label %VP8LDistanceToPlaneCode.exit.thread.i.1.i, label %bb.bi

bb.bi:                                            ; preds = %VP8LDistanceToPlaneCode.exit.i.1.i
  %i.lj = zext nneg i8 %.0.i.in.in.i.1.i to i64
  %i.lk = getelementptr [4 x i8], ptr %i.c, i64 %i.lj
  store i32 2, ptr %i.lk, align 4, !tbaa !34
  br label %VP8LDistanceToPlaneCode.exit.thread.i.1.i

VP8LDistanceToPlaneCode.exit.thread.i.1.i:        ; preds = %bb.bi, %VP8LDistanceToPlaneCode.exit.i.1.i, %bb.bf
  %i.ll = sdiv i32 3, %0                          ; 3 uses
  %i.lm = mul nsw i32 %i.ll, %0
  %.recomposed277 = srem i32 3, %0                ; 2 uses
  %i.ln = icmp sgt i32 %i.lm, -6
  br i1 %i.ln, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %VP8LDistanceToPlaneCode.exit.thread.i.1.i
  %i.lo = icmp sgt i32 %.recomposed277, %i.bp
  br i1 %i.lo, label %bb.bk, label %VP8LDistanceToPlaneCode.exit.thread.i.2.i

bb.bk:                                            ; preds = %bb.bj
  %i.lp = shl nsw i32 %i.ll, 4
  %i.lq = add i32 %i.lp, %i.bq
  br label %VP8LDistanceToPlaneCode.exit.i.2.i

bb.bl:                                            ; preds = %VP8LDistanceToPlaneCode.exit.thread.i.1.i
  %i.lr = shl nsw i32 %i.ll, 4
  %i.ls = or disjoint i32 %i.lr, 8
  br label %VP8LDistanceToPlaneCode.exit.i.2.i

VP8LDistanceToPlaneCode.exit.i.2.i:               ; preds = %bb.bl, %bb.bk
  %.pn215.i.2.i = phi i32 [ %i.ls, %bb.bl ], [ %i.lq, %bb.bk ]
  %.pn214.in.i.2.i = sub i32 %.pn215.i.2.i, %.recomposed277
  %.pn214.i.2.i = sext i32 %.pn214.in.i.2.i to i64
  %.0.i.in.in.in.i.2.i = getelementptr inbounds i8, ptr @plane_to_code_lut, i64 %.pn214.i.2.i
end_hunk_1
begin_hunk_2_@VP8LGetBackwardReferences:bb.a
  %i.apr = getelementptr inbounds nuw i8, ptr %i.app, i64 8
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !25 ; 2 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %i.app, i64 16
  %i.apu = load i32, ptr %i.apt, align 8, !tbaa !26
  %i.apv = sext i32 %i.apu to i64
  %i.apw = getelementptr inbounds [8 x i8], ptr %i.aps, i64 %i.apv
  br label %VP8LRefsCursorNext.exit.i174.1.i

VP8LRefsCursorNext.exit.i174.1.i:                 ; preds = %bb.ia, %bb.hy
  %.sroa.13.1.i.1.i = phi ptr [ %.sroa.13.06.i.1.i, %bb.hy ], [ %i.apw, %bb.ia ]
  %.sroa.10.1.i.1.i = phi ptr [ %.sroa.10.07.i.1.i, %bb.hy ], [ %i.app, %bb.ia ]
  %.sroa.0.1.i175.1.i = phi ptr [ %i.apn, %bb.hy ], [ %i.aps, %bb.ia ] ; 2 uses
  %.not4.i.1.i = icmp eq ptr %.sroa.0.1.i175.1.i, null
  br i1 %.not4.i.1.i, label %GetBackwardReferences.exit, label %bb.hs, !llvm.loop !47

GetBackwardReferences.exit:                       ; preds = %bb.hz, %VP8LRefsCursorNext.exit.i174.1.i, %bb.hi, %VP8LClearBackwardRefs.exit.i182.i, %.thread227.1.i, %VP8LRefsCursorInit.exit.i171.1.i
  %i.apx = load ptr, ptr %18, align 8, !tbaa !32
  call void @WebPSafeFree(ptr noundef %i.apx) #11
  %i.apy = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 0, ptr %i.apy, align 8, !tbaa !33
  store ptr null, ptr %18, align 8, !tbaa !32
  call void @VP8LFreeHistogram(ptr noundef nonnull %i.bh) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %bb.ib

.critedge:                                        ; preds = %bb.p, %bb.eu, %bb.ax, %CalculateBestCacheSize.exit.i, %bb.hm, %bb.gn, %BackwardRefsWithLocalCache.exit.thread.i, %BackwardRefsClone.exit.i, %BackwardRefsClone.exit193.i, %bb.n
  %i.apz = load ptr, ptr %18, align 8, !tbaa !32
  call void @WebPSafeFree(ptr noundef %i.apz) #11
  %i.aqa = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 0, ptr %i.aqa, align 8, !tbaa !33
  store ptr null, ptr %18, align 8, !tbaa !32
  call void @VP8LFreeHistogram(ptr noundef %i.bh) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  %i.aqb = call i32 @WebPEncodingSetError(ptr noundef %11, i32 noundef 1) #11
  br label %bb.ic

bb.ib:                                            ; preds = %bb.m, %GetBackwardReferencesLowEffort.exit.thread, %GetBackwardReferences.exit
  %i.aqc = load i32, ptr %13, align 4, !tbaa !34
  %i.aqd = add nsw i32 %i.aqc, %12
  %i.aqe = call i32 @WebPReportProgress(ptr noundef %11, i32 noundef %i.aqd, ptr noundef nonnull %13) #11
  br label %bb.ic

bb.ic:                                            ; preds = %.thread, %bb.ib, %.critedge
  %.1 = phi i32 [ %i.aqe, %bb.ib ], [ %i.ba, %.thread ], [ %i.aqb, %.critedge ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @BackwardReferencesLz77(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = mul nsw i32 %1, %0                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %VP8LClearBackwardRefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  store ptr %i.e, ptr %i.c, align 8, !tbaa !16
  br label %VP8LClearBackwardRefs.exit

VP8LClearBackwardRefs.exit:                       ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !15
  store ptr %i.f, ptr %i.b, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  store ptr null, ptr %i.i, align 8, !tbaa !18
  store ptr null, ptr %i.f, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.a, 0
  br i1 %i.j, label %.lr.ph100, label %._crit_edge

.lr.ph100:                                        ; preds = %VP8LClearBackwardRefs.exit
  %i.k = add nsw i32 %i.a, -1
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph100, %AddSingleLiteral.exit
  %.097 = phi i32 [ 0, %.lr.ph100 ], [ %i.cl, %AddSingleLiteral.exit ] ; 6 uses
  %.06096 = phi i32 [ -1, %.lr.ph100 ], [ %.16187, %AddSingleLiteral.exit ] ; 3 uses
  %.val73 = load ptr, ptr %3, align 8, !tbaa !32  ; 2 uses
  %i.m = sext i32 %.097 to i64                    ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %.val73, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !34   ; 2 uses
  %i.p = lshr i32 %i.o, 12
  %i.q = and i32 %i.o, 4095                       ; 4 uses
  %i.r = icmp samesign ugt i32 %i.q, 3
  br i1 %i.r, label %bb.d, label %..thread82_crit_edge

..thread82_crit_edge:                             ; preds = %bb.c
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !18
  br label %.thread82

bb.d:                                             ; preds = %bb.c
  %i.s = add nsw i32 %i.q, %.097
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.k) ; 2 uses
  %i.u = tail call i32 @llvm.smax.i32(i32 %.097, i32 %.06096) ; 5 uses
  %.not71.not90 = icmp slt i32 %i.u, %i.t
  br i1 %.not71.not90, label %.lr.ph.preheader, label %.thread.thread

.thread.thread:                                   ; preds = %bb.d
  %.pre101116 = load ptr, ptr %i.i, align 8, !tbaa !18
  br label %bb.l

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.v = tail call i32 @llvm.smax.i32(i32 %.06096, i32 %.097) ; 2 uses
  %smax = sext i32 %i.v to i64
  %i.w = add i32 %i.t, %i.v
  %i.x = sub i32 %i.w, %i.u
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %select.unfold
  %indvars.iv = phi i64 [ %smax, %.lr.ph.preheader ], [ %indvars.iv.next, %select.unfold ]
  %.05492 = phi i32 [ 0, %.lr.ph.preheader ], [ %.2, %select.unfold ] ; 2 uses
  %.07791 = phi i32 [ %i.q, %.lr.ph.preheader ], [ %.1, %select.unfold ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %.val73, i64 %indvars.iv.next
  %i.z = load i32, ptr %i.y, align 4, !tbaa !34
  %i.aa = and i32 %i.z, 4095                      ; 2 uses
  %i.ab = icmp samesign ugt i32 %i.aa, 3
  %i.ac = select i1 %i.ab, i32 %i.aa, i32 1
  %i.ad = trunc i64 %indvars.iv.next to i32       ; 2 uses
  %i.ae = add nsw i32 %i.ac, %i.ad                ; 3 uses
  %i.af = icmp sgt i32 %i.ae, %.05492
  br i1 %i.af, label %bb.e, label %select.unfold

bb.e:                                             ; preds = %.lr.ph
  %.not72 = icmp slt i32 %i.ae, %i.a
  %i.ag = trunc i64 %indvars.iv.next to i32
  %i.ah = sub i32 %i.ag, %.097                    ; 2 uses
  br i1 %.not72, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %bb.e, %.lr.ph
  %.1 = phi i32 [ %.07791, %.lr.ph ], [ %i.ah, %bb.e ] ; 2 uses
  %.2 = phi i32 [ %.05492, %.lr.ph ], [ %i.ae, %bb.e ]
  %exitcond.not = icmp eq i32 %i.x, %i.ad
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !106

.thread:                                          ; preds = %select.unfold, %bb.e
  %.278 = phi i32 [ %i.ah, %bb.e ], [ %.1, %select.unfold ] ; 2 uses
  %i.ai = icmp eq i32 %.278, 1
  %.pre101 = load ptr, ptr %i.i, align 8, !tbaa !18 ; 2 uses
  br i1 %i.ai, label %.thread82, label %bb.l

.thread82:                                        ; preds = %..thread82_crit_edge, %.thread
  %i.aj = phi ptr [ %.pre101, %.thread ], [ %.pre, %..thread82_crit_edge ] ; 3 uses
  %.16188 = phi i32 [ %i.u, %.thread ], [ %.06096, %..thread82_crit_edge ] ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %2, i64 %i.m
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !34
  %.sroa.3.0.insert.ext.i.i = zext i32 %i.al to i64
  %.sroa.3.0.insert.shift.i.i = shl nuw i64 %.sroa.3.0.insert.ext.i.i, 32
  %.sroa.21.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i, 65536
  %i.am = icmp eq ptr %i.aj, null
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread82
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !26 ; 2 uses
  %i.ap = load i32, ptr %4, align 8, !tbaa !22
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %.thread82
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !15  ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.at = load i32, ptr %4, align 8, !tbaa !22
  %i.au = sext i32 %i.at to i64
  %i.av = shl nsw i64 %i.au, 3
  %i.aw = add nsw i64 %i.av, 24
  %i.ax = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.aw) #11 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %BackwardRefsNewBlock.exit.thread.i.i, label %bb.i

BackwardRefsNewBlock.exit.thread.i.i:             ; preds = %bb.h
  %i.ay = load i32, ptr %i.l, align 4, !tbaa !29
  %i.az = or i32 %i.ay, 1
  store i32 %i.az, ptr %i.l, align 4, !tbaa !29
  br label %AddSingleLiteral.exit

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !25
  br label %BackwardRefsNewBlock.exit.i.i

bb.j:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %i.ar, align 8, !tbaa !20
  store ptr %i.bc, ptr %i.h, align 8, !tbaa !15
  br label %BackwardRefsNewBlock.exit.i.i

BackwardRefsNewBlock.exit.i.i:                    ; preds = %bb.j, %bb.i
  %.020.i.i.i = phi ptr [ %i.ax, %bb.i ], [ %i.ar, %bb.j ] ; 6 uses
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !14
  store ptr %.020.i.i.i, ptr %i.bd, align 8, !tbaa !16
  store ptr %.020.i.i.i, ptr %i.b, align 8, !tbaa !14
  store ptr %.020.i.i.i, ptr %i.i, align 8, !tbaa !18
  store ptr null, ptr %.020.i.i.i, align 8, !tbaa !20
  %5 = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 16
  store i32 0, ptr %5, align 8, !tbaa !26
  br label %bb.k

bb.k:                                             ; preds = %BackwardRefsNewBlock.exit.i.i, %bb.f
  %i.be = phi i32 [ 0, %BackwardRefsNewBlock.exit.i.i ], [ %i.ao, %bb.f ] ; 2 uses
  %.0.i.i = phi ptr [ %.020.i.i.i, %BackwardRefsNewBlock.exit.i.i ], [ %i.aj, %bb.f ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.bi = add nsw i32 %i.be, 1
  store i32 %i.bi, ptr %i.bh, align 8, !tbaa !26
  %i.bj = sext i32 %i.be to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bj
  store i64 %.sroa.21.0.insert.insert.i.i, ptr %i.bk, align 4
  br label %AddSingleLiteral.exit

bb.l:                                             ; preds = %.thread.thread, %.thread
  %.pre101118 = phi ptr [ %.pre101116, %.thread.thread ], [ %.pre101, %.thread ] ; 3 uses
  %.278117 = phi i32 [ %i.q, %.thread.thread ], [ %.278, %.thread ] ; 3 uses
  %.sroa.3.0.insert.ext.i = zext nneg i32 %i.p to i64
  %.sroa.3.0.insert.shift.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i, 32
  %i.bl = shl i32 %.278117, 16
  %.sroa.22.0.insert.shift.i = zext i32 %i.bl to i64
  %.sroa.22.0.insert.insert.i = or disjoint i64 %.sroa.3.0.insert.shift.i, %.sroa.22.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.22.0.insert.insert.i, 2
  %i.bm = icmp eq ptr %.pre101118, null
  br i1 %i.bm, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %.pre101118, i64 16
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !26 ; 2 uses
  %i.bp = load i32, ptr %4, align 8, !tbaa !22
  %i.bq = icmp eq i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !15  ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bt = load i32, ptr %4, align 8, !tbaa !22
  %i.bu = sext i32 %i.bt to i64
  %i.bv = shl nsw i64 %i.bu, 3
  %i.bw = add nsw i64 %i.bv, 24
  %i.bx = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.bw) #11 ; 4 uses
  %.not.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i, label %BackwardRefsNewBlock.exit.thread.i, label %bb.p

BackwardRefsNewBlock.exit.thread.i:               ; preds = %bb.o
  %i.by = load i32, ptr %i.l, align 4, !tbaa !29
  %i.bz = or i32 %i.by, 1
  store i32 %i.bz, ptr %i.l, align 4, !tbaa !29
  br label %AddSingleLiteral.exit

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !25
  br label %BackwardRefsNewBlock.exit.i

bb.q:                                             ; preds = %bb.n
  %i.cc = load ptr, ptr %i.br, align 8, !tbaa !20
  store ptr %i.cc, ptr %i.h, align 8, !tbaa !15
  br label %BackwardRefsNewBlock.exit.i

BackwardRefsNewBlock.exit.i:                      ; preds = %bb.q, %bb.p
  %.020.i.i = phi ptr [ %i.bx, %bb.p ], [ %i.br, %bb.q ] ; 6 uses
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !14
  store ptr %.020.i.i, ptr %i.cd, align 8, !tbaa !16
  store ptr %.020.i.i, ptr %i.b, align 8, !tbaa !14
  store ptr %.020.i.i, ptr %i.i, align 8, !tbaa !18
  store ptr null, ptr %.020.i.i, align 8, !tbaa !20
  %6 = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 16
  store i32 0, ptr %6, align 8, !tbaa !26
  br label %bb.r

bb.r:                                             ; preds = %BackwardRefsNewBlock.exit.i, %bb.m
  %i.ce = phi i32 [ 0, %BackwardRefsNewBlock.exit.i ], [ %i.bo, %bb.m ] ; 2 uses
  %.0.i = phi ptr [ %.020.i.i, %BackwardRefsNewBlock.exit.i ], [ %.pre101118, %bb.m ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !25
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ci = add nsw i32 %i.ce, 1
  store i32 %i.ci, ptr %i.ch, align 8, !tbaa !26
  %i.cj = sext i32 %i.ce to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.cj
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ck, align 4
  br label %AddSingleLiteral.exit

AddSingleLiteral.exit:                            ; preds = %bb.r, %BackwardRefsNewBlock.exit.thread.i, %bb.k, %BackwardRefsNewBlock.exit.thread.i.i
  %.16187 = phi i32 [ %.16188, %bb.k ], [ %.16188, %BackwardRefsNewBlock.exit.thread.i.i ], [ %i.u, %BackwardRefsNewBlock.exit.thread.i ], [ %i.u, %bb.r ]
  %.27885 = phi i32 [ 1, %bb.k ], [ 1, %BackwardRefsNewBlock.exit.thread.i.i ], [ %.278117, %BackwardRefsNewBlock.exit.thread.i ], [ %.278117, %bb.r ]
  %i.cl = add nsw i32 %.27885, %.097              ; 2 uses
  %i.cm = icmp slt i32 %i.cl, %i.a
  br i1 %i.cm, label %bb.c, label %._crit_edge, !llvm.loop !107

._crit_edge:                                      ; preds = %AddSingleLiteral.exit, %VP8LClearBackwardRefs.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !29
  %.not = icmp eq i32 %i.co, 0
  %i.cp = zext i1 %.not to i32
  ret i32 %i.cp
}

declare i32 @VP8LColorCacheInit(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @VP8LColorCacheClear(ptr noundef) local_unnamed_addr #4

declare ptr @VP8LAllocateHistogram(i32 noundef) local_unnamed_addr #4

declare void @VP8LHistogramCreate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @VP8LHistogramEstimateBits(ptr noundef) local_unnamed_addr #4

declare i32 @VP8LBackwardReferencesTraceBackwards(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @VP8LFreeHistogram(ptr noundef) local_unnamed_addr #4

declare void @VP8LHistogramInit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTS14PixOrCopyBlock", !9, i64 0}
!11 = !{!"any p2 pointer", !9, i64 0}
!12 = !{!"p2 _ZTS14PixOrCopyBlock", !11, i64 0}
!13 = !{!"VP8LBackwardRefs", !5, i64 0, !5, i64 4, !10, i64 8, !12, i64 16, !10, i64 24, !10, i64 32}
!14 = !{!13, !12, i64 16}
!15 = !{!13, !10, i64 24}
!16 = !{!10, !10, i64 0}
!17 = !{!13, !10, i64 8}
!18 = !{!13, !10, i64 32}
!19 = !{!"PixOrCopyBlock", !10, i64 0, !9, i64 8, !5, i64 16}
!20 = !{!19, !10, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!13, !5, i64 0}
!23 = !{!"", !9, i64 0, !10, i64 8, !9, i64 16}
!24 = !{!23, !10, i64 8}
!25 = !{!19, !9, i64 8}
!26 = !{!19, !5, i64 16}
!27 = !{!23, !9, i64 0}
!28 = !{!23, !9, i64 16}
!29 = !{!13, !5, i64 4}
!30 = !{!"p1 int", !9, i64 0}
!31 = !{!"VP8LHashChain", !30, i64 0, !5, i64 8}
!32 = !{!31, !30, i64 0}
!33 = !{!31, !5, i64 8}
!34 = !{!5, !5, i64 0}
!35 = !{!9, !9, i64 0}
!36 = distinct !{!36, !21}
!37 = distinct !{!37, !21}
!38 = distinct !{!38, !21}
!39 = distinct !{!39, !21}
!40 = distinct !{null}
!41 = distinct !{!41, !21}
!42 = distinct !{!42, !21}
!43 = distinct !{!43, i1 false, !"VP8LRefsCursorInit"}
!44 = distinct !{!44, !43, !"VP8LRefsCursorInit: argument 0"}
!45 = distinct !{!45, i1 false, !"VP8LRefsCursorInit"}
!46 = distinct !{!46, !45, !"VP8LRefsCursorInit: argument 0"}
!47 = distinct !{!47, !21}
!48 = distinct !{null, null, null}
!49 = distinct !{!49, !21}
!50 = distinct !{!50, !21}
!51 = distinct !{!51, !21}
!52 = distinct !{!52, !21}
!53 = distinct !{!53, !21}
!54 = distinct !{!54, !21}
!55 = distinct !{!55, !21}
!56 = distinct !{!56, !21}
!57 = distinct !{!57, !21}
!58 = distinct !{!58, i1 false, !"VP8LRefsCursorInit"}
!59 = distinct !{!59, !58, !"VP8LRefsCursorInit: argument 0"}
!60 = distinct !{!60, !21, !90}
!61 = distinct !{!61, !21}
!62 = distinct !{!62, !97}
!63 = distinct !{!63, !21}
!64 = distinct !{!64, !21}
!65 = distinct !{!65, !21}
!66 = distinct !{!66, !21}
!67 = distinct !{!67, !21, !90}
!68 = distinct !{!68, !21}
!69 = distinct !{!69, i1 false, !"VP8LRefsCursorInit"}
!70 = distinct !{!70, !69, !"VP8LRefsCursorInit: argument 0"}
!71 = distinct !{!71, i1 false, !"VP8LRefsCursorInit"}
!72 = distinct !{!72, !71, !"VP8LRefsCursorInit: argument 0"}
!73 = distinct !{!73, !21}
!74 = distinct !{!74, !21}
!75 = distinct !{!75, !21}
!76 = distinct !{!76, !21}
!77 = distinct !{!77, !21}
!78 = distinct !{!78, i1 false, !"VP8LRefsCursorInit"}
!79 = distinct !{!79, !78, !"VP8LRefsCursorInit: argument 0"}
!80 = distinct !{!80, i1 false, !"VP8LRefsCursorInit"}
!81 = distinct !{!81, !80, !"VP8LRefsCursorInit: argument 0"}
!82 = !{!44}
!83 = !{!46}
!84 = !{!"short", !4, i64 0}
!85 = !{!"", !4, i64 0, !84, i64 2, !5, i64 4}
!86 = !{!85, !4, i64 0}
!87 = !{!85, !5, i64 4}
!88 = !{!84, !84, i64 0}
!89 = !{!59}
!90 = !{!"llvm.loop.peeled.count", i32 1}
!91 = !{!"long", !4, i64 0}
!92 = !{!"", !30, i64 0, !4, i64 8, !4, i64 1032, !4, i64 2056, !4, i64 3080, !5, i64 3240, !4, i64 3244, !91, i64 3256, !4, i64 3264, !4, i64 3304, !84, i64 3310}
!93 = !{!92, !30, i64 0}
!94 = !{!"", !30, i64 0, !5, i64 8, !5, i64 12}
!95 = !{!94, !30, i64 0}
!96 = !{!85, !84, i64 2}
!97 = !{!"llvm.loop.unroll.disable"}
!98 = !{!70}
!99 = !{!72}
!100 = !{!94, !5, i64 8}
!101 = !{!91, !91, i64 0}
!102 = !{!12, !12, i64 0}
!103 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 8, !16, i64 16, i64 8, !102, i64 24, i64 8, !16, i64 32, i64 8, !16}
!104 = !{!79}
!105 = !{!81}
!106 = distinct !{!106, !21}
!107 = distinct !{!107, !21}
end_hunk_2
