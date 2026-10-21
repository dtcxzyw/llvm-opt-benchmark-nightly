Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/recording?download=true
inline.NumInlined: 853
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@b3RecW_WORLDID:bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.pre.i.i, i32 noundef %i.i, i32 noundef %spec.select.i.i) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i.i = phi ptr [ %i.p, %bb.e ], [ %i.o, %bb.d ] ; 2 uses
  store ptr %storemerge.i.i, ptr %0, align 8, !tbaa !18
  store i32 %spec.select.i.i, ptr %i.h, align 8, !tbaa !17
  %.pre33.i.i = load i32, ptr %i.e, align 4, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.q = phi i32 [ %.pre33.i.i, %bb.f ], [ %i.f, %bb.b ]
  %i.r = phi ptr [ %storemerge.i.i, %bb.f ], [ %.pre.i.i, %bb.b ]
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  store i32 %i.a, ptr %i.t, align 1
  %i.u = load i32, ptr %i.e, align 4, !tbaa !16
  %i.v = add nsw i32 %i.u, 4
  br label %b3RecW_U32.exit

b3RecW_U32.exit:                                  ; preds = %bb.a, %bb.g
  %.sink.i.i = phi i32 [ %i.v, %bb.g ], [ %i.g, %bb.a ]
  store i32 %.sink.i.i, ptr %i.e, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3RecW_BODYID(ptr nofree noundef captures(none) %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.3.0.extract.shift.i = lshr i64 %1, 48
  %i.a = shl i64 %1, 32
  %i.b = lshr i64 %1, 16
  %i.c = and i64 %i.b, 4294901760
  %i.d = or disjoint i64 %i.c, %i.a
  %i.e = or disjoint i64 %i.d, %.sroa.3.0.extract.shift.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !13, !range !14, !noundef !15
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16   ; 3 uses
  %i.k = add nsw i32 %i.j, 8                      ; 2 uses
  br i1 %i.h, label %b3RecW_U64.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !17   ; 3 uses
  %i.n = icmp sgt i32 %i.k, %i.m
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !18 ; 3 uses
  br i1 %i.n, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = shl nsw i32 %i.m, 1
  %i.p = add nsw i32 %i.j, 72
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.o, i32 %i.p) ; 3 uses
  %i.q = icmp eq ptr %.pre.i.i, null
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = sext i32 %spec.select.i.i to i64
  %i.s = tail call ptr @b3Alloc(i64 noundef %i.r) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.pre.i.i, i32 noundef %i.m, i32 noundef %spec.select.i.i) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i.i = phi ptr [ %i.t, %bb.e ], [ %i.s, %bb.d ] ; 2 uses
  store ptr %storemerge.i.i, ptr %0, align 8, !tbaa !18
  store i32 %spec.select.i.i, ptr %i.l, align 8, !tbaa !17
  %.pre33.i.i = load i32, ptr %i.i, align 4, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.u = phi i32 [ %.pre33.i.i, %bb.f ], [ %i.j, %bb.b ]
  %i.v = phi ptr [ %storemerge.i.i, %bb.f ], [ %.pre.i.i, %bb.b ]
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %i.w
  store i64 %i.e, ptr %i.x, align 1
  %i.y = load i32, ptr %i.i, align 4, !tbaa !16
  %i.z = add nsw i32 %i.y, 8
  br label %b3RecW_U64.exit

b3RecW_U64.exit:                                  ; preds = %bb.a, %bb.g
  %.sink.i.i = phi i32 [ %i.z, %bb.g ], [ %i.k, %bb.a ]
  store i32 %.sink.i.i, ptr %i.i, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3RecW_JOINTID(ptr nofree noundef captures(none) %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.3.0.extract.shift.i = lshr i64 %1, 48
  %i.a = shl i64 %1, 32
  %i.b = lshr i64 %1, 16
  %i.c = and i64 %i.b, 4294901760
  %i.d = or disjoint i64 %i.c, %i.a
  %i.e = or disjoint i64 %i.d, %.sroa.3.0.extract.shift.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !13, !range !14, !noundef !15
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16   ; 3 uses
  %i.k = add nsw i32 %i.j, 8                      ; 2 uses
  br i1 %i.h, label %b3RecW_U64.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !17   ; 3 uses
  %i.n = icmp sgt i32 %i.k, %i.m
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !18 ; 3 uses
  br i1 %i.n, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = shl nsw i32 %i.m, 1
  %i.p = add nsw i32 %i.j, 72
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.o, i32 %i.p) ; 3 uses
  %i.q = icmp eq ptr %.pre.i.i, null
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = sext i32 %spec.select.i.i to i64
  %i.s = tail call ptr @b3Alloc(i64 noundef %i.r) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.pre.i.i, i32 noundef %i.m, i32 noundef %spec.select.i.i) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i.i = phi ptr [ %i.t, %bb.e ], [ %i.s, %bb.d ] ; 2 uses
  store ptr %storemerge.i.i, ptr %0, align 8, !tbaa !18
  store i32 %spec.select.i.i, ptr %i.l, align 8, !tbaa !17
  %.pre33.i.i = load i32, ptr %i.i, align 4, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.u = phi i32 [ %.pre33.i.i, %bb.f ], [ %i.j, %bb.b ]
  %i.v = phi ptr [ %storemerge.i.i, %bb.f ], [ %.pre.i.i, %bb.b ]
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %i.w
  store i64 %i.e, ptr %i.x, align 1
  %i.y = load i32, ptr %i.i, align 4, !tbaa !16
  %i.z = add nsw i32 %i.y, 8
  br label %b3RecW_U64.exit

b3RecW_U64.exit:                                  ; preds = %bb.a, %bb.g
  %.sink.i.i = phi i32 [ %i.z, %bb.g ], [ %i.k, %bb.a ]
  store i32 %.sink.i.i, ptr %i.i, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3RecW_SPHERE(ptr nofree noundef captures(none) %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !13, !range !14, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16   ; 3 uses
  %i.f = add nsw i32 %i.e, 16                     ; 2 uses
  br i1 %i.c, label %b3RecBufAppend.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !17   ; 3 uses
  %i.i = icmp sgt i32 %i.f, %i.h
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !18  ; 3 uses
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = shl nsw i32 %i.h, 1
  %i.k = add nsw i32 %i.e, 80
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.j, i32 %i.k) ; 3 uses
  %i.l = icmp eq ptr %.pre.i, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = sext i32 %spec.select.i to i64
  %i.n = tail call ptr @b3Alloc(i64 noundef %i.m) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.pre.i, i32 noundef %i.h, i32 noundef %spec.select.i) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i = phi ptr [ %i.o, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !18
  store i32 %spec.select.i, ptr %i.g, align 8, !tbaa !17
  %.pre33.i = load i32, ptr %i.d, align 4, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.p = phi i32 [ %.pre33.i, %bb.f ], [ %i.e, %bb.b ]
  %i.q = phi ptr [ %storemerge.i, %bb.f ], [ %.pre.i, %bb.b ]
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  %3 = shufflevector <2 x float> %1, <2 x float> %2, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %3, ptr %i.s, align 1
  %i.t = load i32, ptr %i.d, align 4, !tbaa !16
  %i.u = add nsw i32 %i.t, 16
  br label %b3RecBufAppend.exit

b3RecBufAppend.exit:                              ; preds = %bb.a, %bb.g
  %.sink.i = phi i32 [ %i.u, %bb.g ], [ %i.f, %bb.a ]
  store i32 %.sink.i, ptr %i.d, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3RecW_CAPSULE(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly byval(%struct.b3Capsule) align 8 captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !13, !range !14, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16   ; 3 uses
  %i.f = add nsw i32 %i.e, 28                     ; 2 uses
  br i1 %i.c, label %b3RecBufAppend.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !17   ; 3 uses
  %i.i = icmp sgt i32 %i.f, %i.h
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !18  ; 3 uses
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = shl nsw i32 %i.h, 1
  %i.k = add nsw i32 %i.e, 92
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.j, i32 %i.k) ; 3 uses
  %i.l = icmp eq ptr %.pre.i, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = sext i32 %spec.select.i to i64
  %i.n = tail call ptr @b3Alloc(i64 noundef %i.m) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.pre.i, i32 noundef %i.h, i32 noundef %spec.select.i) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i = phi ptr [ %i.o, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !18
  store i32 %spec.select.i, ptr %i.g, align 8, !tbaa !17
  %.pre33.i = load i32, ptr %i.d, align 4, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.p = phi i32 [ %.pre33.i, %bb.f ], [ %i.e, %bb.b ]
  %i.q = phi ptr [ %storemerge.i, %bb.f ], [ %.pre.i, %bb.b ]
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(28) %1, i64 28, i1 false)
  %i.t = load i32, ptr %i.d, align 4, !tbaa !16
  %i.u = add nsw i32 %i.t, 28
  br label %b3RecBufAppend.exit

b3RecBufAppend.exit:                              ; preds = %bb.a, %bb.g
  %.sink.i = phi i32 [ %i.u, %bb.g ], [ %i.f, %bb.a ]
  store i32 %.sink.i, ptr %i.d, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3RecW_GEOMID(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !13, !range !14, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16   ; 3 uses
  %i.f = add nsw i32 %i.e, 4                      ; 2 uses
  br i1 %i.c, label %b3RecW_U32.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !17   ; 3 uses
  %i.i = icmp sgt i32 %i.f, %i.h
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !18 ; 3 uses
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = shl nsw i32 %i.h, 1
  %i.k = add nsw i32 %i.e, 68
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.j, i32 %i.k) ; 3 uses
  %i.l = icmp eq ptr %.pre.i.i, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = sext i32 %spec.select.i.i to i64
  %i.n = tail call ptr @b3Alloc(i64 noundef %i.m) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.pre.i.i, i32 noundef %i.h, i32 noundef %spec.select.i.i) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i.i = phi ptr [ %i.o, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  store ptr %storemerge.i.i, ptr %0, align 8, !tbaa !18
  store i32 %spec.select.i.i, ptr %i.g, align 8, !tbaa !17
  %.pre33.i.i = load i32, ptr %i.d, align 4, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.p = phi i32 [ %.pre33.i.i, %bb.f ], [ %i.e, %bb.b ]
  %i.q = phi ptr [ %storemerge.i.i, %bb.f ], [ %.pre.i.i, %bb.b ]
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  store i32 %1, ptr %i.s, align 1
  %i.t = load i32, ptr %i.d, align 4, !tbaa !16
  %i.u = add nsw i32 %i.t, 4
  br label %b3RecW_U32.exit

b3RecW_U32.exit:                                  ; preds = %bb.a, %bb.g
  %.sink.i.i = phi i32 [ %i.u, %bb.g ], [ %i.f, %bb.a ]
  store i32 %.sink.i.i, ptr %i.d, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3RecW_FILTER(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly byval(%struct.b3Filter) align 8 captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !201
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !13, !range !14, !noundef !15
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 10 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !16   ; 4 uses
  br i1 %i.d, label %b3RecW_U64.exit.thread, label %bb.b

b3RecW_U64.exit.thread:                           ; preds = %bb.a
  %i.g = add nsw i32 %i.f, 16
  br label %b3RecW_U64.exit8.thread

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !17   ; 3 uses
  %i.k = icmp sgt i32 %i.h, %i.j
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !18 ; 3 uses
  br i1 %i.k, label %bb.c, label %b3RecW_U64.exit

bb.c:                                             ; preds = %bb.b
  %i.l = shl nsw i32 %i.j, 1
  %i.m = add nsw i32 %i.f, 72
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.l, i32 %i.m) ; 3 uses
  %i.n = icmp eq ptr %.pre.i.i, null
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = sext i32 %spec.select.i.i to i64
  %i.p = tail call ptr @b3Alloc(i64 noundef %i.o) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.pre.i.i, i32 noundef %i.j, i32 noundef %spec.select.i.i) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i.i = phi ptr [ %i.q, %bb.e ], [ %i.p, %bb.d ] ; 2 uses
  store ptr %storemerge.i.i, ptr %0, align 8, !tbaa !18
  store i32 %spec.select.i.i, ptr %i.i, align 8, !tbaa !17
  %.pre33.i.i = load i32, ptr %i.e, align 4, !tbaa !16
  br label %b3RecW_U64.exit

b3RecW_U64.exit:                                  ; preds = %bb.b, %bb.f
  %i.r = phi i32 [ %.pre33.i.i, %bb.f ], [ %i.f, %bb.b ]
  %i.s = phi ptr [ %storemerge.i.i, %bb.f ], [ %.pre.i.i, %bb.b ]
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %i.t
  store i64 %i.a, ptr %i.u, align 1
  %i.v = load i32, ptr %i.e, align 4, !tbaa !16   ; 3 uses
  %i.w = add nsw i32 %i.v, 8                      ; 2 uses
  %.pre = load i8, ptr %i.b, align 8, !tbaa !13, !range !14
  %i.x = trunc nuw i8 %.pre to i1
  store i32 %i.w, ptr %i.e, align 4, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !202
  %i.aa = add nsw i32 %i.v, 16                    ; 2 uses
  br i1 %i.x, label %b3RecW_U64.exit8.thread, label %bb.g

bb.g:                                             ; preds = %b3RecW_U64.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !17 ; 3 uses
  %i.ad = icmp sgt i32 %i.aa, %i.ac
  %.pre.i.i3 = load ptr, ptr %0, align 8, !tbaa !18 ; 3 uses
  br i1 %i.ad, label %bb.h, label %b3RecW_U64.exit8

bb.h:                                             ; preds = %bb.g
  %i.ae = shl nsw i32 %i.ac, 1
  %i.af = add nsw i32 %i.v, 80
  %spec.select.i.i5 = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 %i.af) ; 3 uses
  %i.ag = icmp eq ptr %.pre.i.i3, null
  br i1 %i.ag, label %bb.i, label %bb.j

end_hunk_0
begin_hunk_1_@b3RecWriteArgs_BodyAllowFastRotation:bb.a
  br i1 %i.i, label %b3RecW_BOOL.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !17   ; 3 uses
  %i.o = icmp sgt i32 %i.l, %i.n
  %.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !18 ; 3 uses
  br i1 %i.o, label %bb.c, label %b3RecW_BODYID.exit

bb.c:                                             ; preds = %bb.b
  %i.p = shl nsw i32 %i.n, 1
  %i.q = add nsw i32 %i.k, 72
  %spec.select.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.p, i32 %i.q) ; 3 uses
  %i.r = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sext i32 %spec.select.i.i.i to i64
  %i.t = tail call ptr @b3Alloc(i64 noundef %i.s) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.pre.i.i.i, i32 noundef %i.n, i32 noundef %spec.select.i.i.i) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i.i.i = phi ptr [ %i.u, %bb.e ], [ %i.t, %bb.d ] ; 2 uses
  store ptr %storemerge.i.i.i, ptr %0, align 8, !tbaa !18
  store i32 %spec.select.i.i.i, ptr %i.m, align 8, !tbaa !17
  %.pre33.i.i.i = load i32, ptr %i.j, align 4, !tbaa !16
  br label %b3RecW_BODYID.exit

b3RecW_BODYID.exit:                               ; preds = %bb.b, %bb.f
  %i.v = phi i32 [ %.pre33.i.i.i, %bb.f ], [ %i.k, %bb.b ]
  %i.w = phi ptr [ %storemerge.i.i.i, %bb.f ], [ %.pre.i.i.i, %bb.b ]
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  store i64 %i.f, ptr %i.y, align 1
  %i.z = load i32, ptr %i.j, align 4, !tbaa !16   ; 2 uses
  %i.aa = add nsw i32 %i.z, 8                     ; 4 uses
  %.pre = load i8, ptr %i.g, align 8, !tbaa !13, !range !14
  %i.ab = trunc nuw i8 %.pre to i1
  store i32 %i.aa, ptr %i.j, align 4, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !88, !range !14, !noundef !15
  br i1 %i.ab, label %b3RecW_BOOL.exit, label %bb.g

bb.g:                                             ; preds = %b3RecW_BODYID.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !17 ; 3 uses
  %.not.i.i = icmp slt i32 %i.aa, %i.af
  %.pre.i.i.i4 = load ptr, ptr %0, align 8, !tbaa !18 ; 3 uses
  br i1 %.not.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = shl nsw i32 %i.af, 1
  %i.ah = add nsw i32 %i.z, 73
  %spec.select.i.i.i5 = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 %i.ah) ; 3 uses
  %i.ai = icmp eq ptr %.pre.i.i.i4, null
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = sext i32 %spec.select.i.i.i5 to i64
  %i.ak = tail call ptr @b3Alloc(i64 noundef %i.aj) #17
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.al = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.pre.i.i.i4, i32 noundef %i.af, i32 noundef %spec.select.i.i.i5) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge.i.i.i6 = phi ptr [ %i.al, %bb.j ], [ %i.ak, %bb.i ] ; 2 uses
  store ptr %storemerge.i.i.i6, ptr %0, align 8, !tbaa !18
  store i32 %spec.select.i.i.i5, ptr %i.ae, align 8, !tbaa !17
  %.pre33.i.i.i7 = load i32, ptr %i.j, align 4, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %i.am = phi i32 [ %.pre33.i.i.i7, %bb.k ], [ %i.aa, %bb.g ]
  %i.an = phi ptr [ %storemerge.i.i.i6, %bb.k ], [ %.pre.i.i.i4, %bb.g ]
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao
  store i8 %i.ad, ptr %i.ap, align 1
  %i.aq = load i32, ptr %i.j, align 4, !tbaa !16
  br label %b3RecW_BOOL.exit

b3RecW_BOOL.exit:                                 ; preds = %bb.a, %b3RecW_BODYID.exit, %bb.l
  %.sink.i.in.i.i = phi i32 [ %i.aq, %bb.l ], [ %i.aa, %b3RecW_BODYID.exit ], [ %i.l, %bb.a ]
  %.sink.i.i.i8 = add nsw i32 %.sink.i.in.i.i, 1
  store i32 %.sink.i.i.i8, ptr %i.j, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3RecWriteArgs_CreateSphereShape(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %.sroa.3.0.extract.shift.i.i = lshr i64 %i.a, 48
  %i.b = shl i64 %i.a, 32
  %i.c = lshr i64 %i.a, 16
  %i.d = and i64 %i.c, 4294901760
  %i.e = or disjoint i64 %i.d, %i.b
  %i.f = or disjoint i64 %i.e, %.sroa.3.0.extract.shift.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !13, !range !14, !noundef !15
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 8 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16   ; 3 uses
  %i.l = add nsw i32 %i.k, 8                      ; 2 uses
  br i1 %i.i, label %b3RecW_BODYID.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !17   ; 3 uses
  %i.o = icmp sgt i32 %i.l, %i.n
  %.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !18 ; 3 uses
  br i1 %i.o, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.p = shl nsw i32 %i.n, 1
  %i.q = add nsw i32 %i.k, 72
  %spec.select.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.p, i32 %i.q) ; 3 uses
  %i.r = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sext i32 %spec.select.i.i.i to i64
  %i.t = tail call ptr @b3Alloc(i64 noundef %i.s) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.pre.i.i.i, i32 noundef %i.n, i32 noundef %spec.select.i.i.i) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i.i.i = phi ptr [ %i.u, %bb.e ], [ %i.t, %bb.d ] ; 2 uses
  store ptr %storemerge.i.i.i, ptr %0, align 8, !tbaa !18
  store i32 %spec.select.i.i.i, ptr %i.m, align 8, !tbaa !17
  %.pre33.i.i.i = load i32, ptr %i.j, align 4, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.v = phi i32 [ %.pre33.i.i.i, %bb.f ], [ %i.k, %bb.b ]
  %i.w = phi ptr [ %storemerge.i.i.i, %bb.f ], [ %.pre.i.i.i, %bb.b ]
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  store i64 %i.f, ptr %i.y, align 1
  %i.z = load i32, ptr %i.j, align 4, !tbaa !16
  %i.aa = add nsw i32 %i.z, 8
  br label %b3RecW_BODYID.exit

b3RecW_BODYID.exit:                               ; preds = %bb.a, %bb.g
  %.sink.i.i.i = phi i32 [ %i.aa, %bb.g ], [ %i.l, %bb.a ]
  store i32 %.sink.i.i.i, ptr %i.j, align 4, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @b3RecW_SHAPEDEF(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.b3ShapeDef) align 8 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ad = load <2 x float>, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.af = load <2 x float>, ptr %i.ae, align 8
  %i.ag = load i8, ptr %i.g, align 8, !tbaa !13, !range !14, !noundef !15
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = load i32, ptr %i.j, align 4, !tbaa !16  ; 3 uses
  %i.aj = add nsw i32 %i.ai, 16                   ; 2 uses
  br i1 %i.ah, label %b3RecW_SPHERE.exit, label %bb.h

bb.h:                                             ; preds = %b3RecW_BODYID.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !17 ; 3 uses
  %i.am = icmp sgt i32 %i.aj, %i.al
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !18 ; 3 uses
  br i1 %i.am, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.an = shl nsw i32 %i.al, 1
  %i.ao = add nsw i32 %i.ai, 80
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.an, i32 %i.ao) ; 3 uses
  %i.ap = icmp eq ptr %.pre.i.i, null
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = sext i32 %spec.select.i.i to i64
  %i.ar = tail call ptr @b3Alloc(i64 noundef %i.aq) #17
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.as = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.pre.i.i, i32 noundef %i.al, i32 noundef %spec.select.i.i) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %storemerge.i.i = phi ptr [ %i.as, %bb.k ], [ %i.ar, %bb.j ] ; 2 uses
  store ptr %storemerge.i.i, ptr %0, align 8, !tbaa !18
  store i32 %spec.select.i.i, ptr %i.ak, align 8, !tbaa !17
  %.pre33.i.i = load i32, ptr %i.j, align 4, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %i.at = phi i32 [ %.pre33.i.i, %bb.l ], [ %i.ai, %bb.h ]
  %i.au = phi ptr [ %storemerge.i.i, %bb.l ], [ %.pre.i.i, %bb.h ]
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  %2 = shufflevector <2 x float> %i.ad, <2 x float> %i.af, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %2, ptr %i.aw, align 1
  %i.ax = load i32, ptr %i.j, align 4, !tbaa !16
  %i.ay = add nsw i32 %i.ax, 16
  br label %b3RecW_SPHERE.exit

b3RecW_SPHERE.exit:                               ; preds = %b3RecW_BODYID.exit, %bb.m
  %.sink.i.i = phi i32 [ %i.ay, %bb.m ], [ %i.aj, %b3RecW_BODYID.exit ]
  store i32 %.sink.i.i, ptr %i.j, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3RecWriteArgs_CreateCapsuleShape(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b3Capsule, align 8          ; 4 uses
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %.sroa.3.0.extract.shift.i.i = lshr i64 %i.a, 48
  %i.b = shl i64 %i.a, 32
  %i.c = lshr i64 %i.a, 16
  %i.d = and i64 %i.c, 4294901760
  %i.e = or disjoint i64 %i.d, %i.b
  %i.f = or disjoint i64 %i.e, %.sroa.3.0.extract.shift.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !13, !range !14, !noundef !15
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 8 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16   ; 3 uses
  %i.l = add nsw i32 %i.k, 8                      ; 2 uses
  br i1 %i.i, label %b3RecW_BODYID.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !17   ; 3 uses
  %i.o = icmp sgt i32 %i.l, %i.n
  %.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !18 ; 3 uses
  br i1 %i.o, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.p = shl nsw i32 %i.n, 1
  %i.q = add nsw i32 %i.k, 72
  %spec.select.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.p, i32 %i.q) ; 3 uses
  %i.r = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sext i32 %spec.select.i.i.i to i64
  %i.t = tail call ptr @b3Alloc(i64 noundef %i.s) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.pre.i.i.i, i32 noundef %i.n, i32 noundef %spec.select.i.i.i) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i.i.i = phi ptr [ %i.u, %bb.e ], [ %i.t, %bb.d ] ; 2 uses
  store ptr %storemerge.i.i.i, ptr %0, align 8, !tbaa !18
  store i32 %spec.select.i.i.i, ptr %i.m, align 8, !tbaa !17
  %.pre33.i.i.i = load i32, ptr %i.j, align 4, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.v = phi i32 [ %.pre33.i.i.i, %bb.f ], [ %i.k, %bb.b ]
  %i.w = phi ptr [ %storemerge.i.i.i, %bb.f ], [ %.pre.i.i.i, %bb.b ]
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  store i64 %i.f, ptr %i.y, align 1
  %i.z = load i32, ptr %i.j, align 4, !tbaa !16
  %i.aa = add nsw i32 %i.z, 8
  br label %b3RecW_BODYID.exit

b3RecW_BODYID.exit:                               ; preds = %bb.a, %bb.g
  %.sink.i.i.i = phi i32 [ %i.aa, %bb.g ], [ %i.l, %bb.a ]
  store i32 %.sink.i.i.i, ptr %i.j, align 4, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @b3RecW_SHAPEDEF(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.b3ShapeDef) align 8 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(28) %i.ac, i64 28, i1 false)
  %i.ad = load i8, ptr %i.g, align 8, !tbaa !13, !range !14, !noundef !15
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = load i32, ptr %i.j, align 4, !tbaa !16  ; 3 uses
  %i.ag = add nsw i32 %i.af, 28                   ; 2 uses
  br i1 %i.ae, label %b3RecW_CAPSULE.exit, label %bb.h

bb.h:                                             ; preds = %b3RecW_BODYID.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !17 ; 3 uses
  %i.aj = icmp sgt i32 %i.ag, %i.ai
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !18 ; 3 uses
  br i1 %i.aj, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ak = shl nsw i32 %i.ai, 1
  %i.al = add nsw i32 %i.af, 92
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 %i.al) ; 3 uses
  %i.am = icmp eq ptr %.pre.i.i, null
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = sext i32 %spec.select.i.i to i64
  %i.ao = tail call ptr @b3Alloc(i64 noundef %i.an) #17
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ap = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.pre.i.i, i32 noundef %i.ai, i32 noundef %spec.select.i.i) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %storemerge.i.i = phi ptr [ %i.ap, %bb.k ], [ %i.ao, %bb.j ] ; 2 uses
  store ptr %storemerge.i.i, ptr %0, align 8, !tbaa !18
  store i32 %spec.select.i.i, ptr %i.ah, align 8, !tbaa !17
  %.pre33.i.i = load i32, ptr %i.j, align 4, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %i.aq = phi i32 [ %.pre33.i.i, %bb.l ], [ %i.af, %bb.h ]
  %i.ar = phi ptr [ %storemerge.i.i, %bb.l ], [ %.pre.i.i, %bb.h ]
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.at, ptr noundef nonnull readonly align 8 dereferenceable(28) %2, i64 28, i1 false)
  %i.au = load i32, ptr %i.j, align 4, !tbaa !16
  %i.av = add nsw i32 %i.au, 28
  br label %b3RecW_CAPSULE.exit

b3RecW_CAPSULE.exit:                              ; preds = %b3RecW_BODYID.exit, %bb.m
  %.sink.i.i = phi i32 [ %i.av, %bb.m ], [ %i.ag, %b3RecW_BODYID.exit ]
  store i32 %.sink.i.i, ptr %i.j, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3RecWriteArgs_CreateHullShape(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %.sroa.3.0.extract.shift.i.i = lshr i64 %i.a, 48
  %i.b = shl i64 %i.a, 32
  %i.c = lshr i64 %i.a, 16
  %i.d = and i64 %i.c, 4294901760
  %i.e = or disjoint i64 %i.d, %i.b
  %i.f = or disjoint i64 %i.e, %.sroa.3.0.extract.shift.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !13, !range !14, !noundef !15
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 8 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16   ; 3 uses
  %i.l = add nsw i32 %i.k, 8                      ; 2 uses
  br i1 %i.i, label %b3RecW_BODYID.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !17   ; 3 uses
  %i.o = icmp sgt i32 %i.l, %i.n
  %.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !18 ; 3 uses
  br i1 %i.o, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.p = shl nsw i32 %i.n, 1
  %i.q = add nsw i32 %i.k, 72
  %spec.select.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.p, i32 %i.q) ; 3 uses
  %i.r = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sext i32 %spec.select.i.i.i to i64
  %i.t = tail call ptr @b3Alloc(i64 noundef %i.s) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.pre.i.i.i, i32 noundef %i.n, i32 noundef %spec.select.i.i.i) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i.i.i = phi ptr [ %i.u, %bb.e ], [ %i.t, %bb.d ] ; 2 uses
  store ptr %storemerge.i.i.i, ptr %0, align 8, !tbaa !18
  store i32 %spec.select.i.i.i, ptr %i.m, align 8, !tbaa !17
  %.pre33.i.i.i = load i32, ptr %i.j, align 4, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.v = phi i32 [ %.pre33.i.i.i, %bb.f ], [ %i.k, %bb.b ]
  %i.w = phi ptr [ %storemerge.i.i.i, %bb.f ], [ %.pre.i.i.i, %bb.b ]
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  store i64 %i.f, ptr %i.y, align 1
  %i.z = load i32, ptr %i.j, align 4, !tbaa !16
  %i.aa = add nsw i32 %i.z, 8
  br label %b3RecW_BODYID.exit

b3RecW_BODYID.exit:                               ; preds = %bb.a, %bb.g
  %.sink.i.i.i = phi i32 [ %i.aa, %bb.g ], [ %i.l, %bb.a ]
  store i32 %.sink.i.i.i, ptr %i.j, align 4, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @b3RecW_SHAPEDEF(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.b3ShapeDef) align 8 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !90
  %i.ae = load i8, ptr %i.g, align 8, !tbaa !13, !range !14, !noundef !15
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = load i32, ptr %i.j, align 4, !tbaa !16  ; 3 uses
  %i.ah = add nsw i32 %i.ag, 4                    ; 2 uses
  br i1 %i.af, label %b3RecW_GEOMID.exit, label %bb.h
end_hunk_1
begin_hunk_2_@b3RecWriteArgs_ShapeEnableHitEvents:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16   ; 3 uses
  %i.l = add nsw i32 %i.k, 8                      ; 2 uses
  br i1 %i.i, label %b3RecW_BOOL.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !17   ; 3 uses
  %i.o = icmp sgt i32 %i.l, %i.n
  %.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !18 ; 3 uses
  br i1 %i.o, label %bb.c, label %b3RecW_SHAPEID.exit

bb.c:                                             ; preds = %bb.b
  %i.p = shl nsw i32 %i.n, 1
  %i.q = add nsw i32 %i.k, 72
  %spec.select.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.p, i32 %i.q) ; 3 uses
  %i.r = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sext i32 %spec.select.i.i.i to i64
  %i.t = tail call ptr @b3Alloc(i64 noundef %i.s) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.pre.i.i.i, i32 noundef %i.n, i32 noundef %spec.select.i.i.i) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i.i.i = phi ptr [ %i.u, %bb.e ], [ %i.t, %bb.d ] ; 2 uses
  store ptr %storemerge.i.i.i, ptr %0, align 8, !tbaa !18
  store i32 %spec.select.i.i.i, ptr %i.m, align 8, !tbaa !17
  %.pre33.i.i.i = load i32, ptr %i.j, align 4, !tbaa !16
  br label %b3RecW_SHAPEID.exit

b3RecW_SHAPEID.exit:                              ; preds = %bb.b, %bb.f
  %i.v = phi i32 [ %.pre33.i.i.i, %bb.f ], [ %i.k, %bb.b ]
  %i.w = phi ptr [ %storemerge.i.i.i, %bb.f ], [ %.pre.i.i.i, %bb.b ]
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  store i64 %i.f, ptr %i.y, align 1
  %i.z = load i32, ptr %i.j, align 4, !tbaa !16   ; 2 uses
  %i.aa = add nsw i32 %i.z, 8                     ; 4 uses
  %.pre = load i8, ptr %i.g, align 8, !tbaa !13, !range !14
  %i.ab = trunc nuw i8 %.pre to i1
  store i32 %i.aa, ptr %i.j, align 4, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !92, !range !14, !noundef !15
  br i1 %i.ab, label %b3RecW_BOOL.exit, label %bb.g

bb.g:                                             ; preds = %b3RecW_SHAPEID.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !17 ; 3 uses
  %.not.i.i = icmp slt i32 %i.aa, %i.af
  %.pre.i.i.i4 = load ptr, ptr %0, align 8, !tbaa !18 ; 3 uses
  br i1 %.not.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = shl nsw i32 %i.af, 1
  %i.ah = add nsw i32 %i.z, 73
  %spec.select.i.i.i5 = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 %i.ah) ; 3 uses
  %i.ai = icmp eq ptr %.pre.i.i.i4, null
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = sext i32 %spec.select.i.i.i5 to i64
  %i.ak = tail call ptr @b3Alloc(i64 noundef %i.aj) #17
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.al = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.pre.i.i.i4, i32 noundef %i.af, i32 noundef %spec.select.i.i.i5) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge.i.i.i6 = phi ptr [ %i.al, %bb.j ], [ %i.ak, %bb.i ] ; 2 uses
  store ptr %storemerge.i.i.i6, ptr %0, align 8, !tbaa !18
  store i32 %spec.select.i.i.i5, ptr %i.ae, align 8, !tbaa !17
  %.pre33.i.i.i7 = load i32, ptr %i.j, align 4, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %i.am = phi i32 [ %.pre33.i.i.i7, %bb.k ], [ %i.aa, %bb.g ]
  %i.an = phi ptr [ %storemerge.i.i.i6, %bb.k ], [ %.pre.i.i.i4, %bb.g ]
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao
  store i8 %i.ad, ptr %i.ap, align 1
  %i.aq = load i32, ptr %i.j, align 4, !tbaa !16
  br label %b3RecW_BOOL.exit

b3RecW_BOOL.exit:                                 ; preds = %bb.a, %b3RecW_SHAPEID.exit, %bb.l
  %.sink.i.in.i.i = phi i32 [ %i.aq, %bb.l ], [ %i.aa, %b3RecW_SHAPEID.exit ], [ %i.l, %bb.a ]
  %.sink.i.i.i8 = add nsw i32 %.sink.i.in.i.i, 1
  store i32 %.sink.i.i.i8, ptr %i.j, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3RecWriteArgs_ShapeSetSphere(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 4                ; 3 uses
  %.sroa.3.0.extract.shift.i.i = lshr i64 %i.a, 48
  %i.b = shl i64 %i.a, 32
  %i.c = lshr i64 %i.a, 16
  %i.d = and i64 %i.c, 4294901760
  %i.e = or disjoint i64 %i.d, %i.b
  %i.f = or disjoint i64 %i.e, %.sroa.3.0.extract.shift.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !13, !range !14, !noundef !15
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16   ; 4 uses
  br i1 %i.i, label %b3RecW_SHAPEID.exit.thread, label %bb.b

b3RecW_SHAPEID.exit.thread:                       ; preds = %bb.a
  %i.l = add nsw i32 %i.k, 24
  br label %b3RecW_SPHERE.exit

bb.b:                                             ; preds = %bb.a
  %i.m = add nsw i32 %i.k, 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !17   ; 3 uses
  %i.p = icmp sgt i32 %i.m, %i.o
  %.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !18 ; 3 uses
  br i1 %i.p, label %bb.c, label %b3RecW_SHAPEID.exit

bb.c:                                             ; preds = %bb.b
  %i.q = shl nsw i32 %i.o, 1
  %i.r = add nsw i32 %i.k, 72
  %spec.select.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.q, i32 %i.r) ; 3 uses
  %i.s = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = sext i32 %spec.select.i.i.i to i64
  %i.u = tail call ptr @b3Alloc(i64 noundef %i.t) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.pre.i.i.i, i32 noundef %i.o, i32 noundef %spec.select.i.i.i) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i.i.i = phi ptr [ %i.v, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  store ptr %storemerge.i.i.i, ptr %0, align 8, !tbaa !18
  store i32 %spec.select.i.i.i, ptr %i.n, align 8, !tbaa !17
  %.pre33.i.i.i = load i32, ptr %i.j, align 4, !tbaa !16
  br label %b3RecW_SHAPEID.exit

b3RecW_SHAPEID.exit:                              ; preds = %bb.b, %bb.f
  %i.w = phi i32 [ %.pre33.i.i.i, %bb.f ], [ %i.k, %bb.b ]
  %i.x = phi ptr [ %storemerge.i.i.i, %bb.f ], [ %.pre.i.i.i, %bb.b ]
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %i.y
  store i64 %i.f, ptr %i.z, align 1
  %i.aa = load i32, ptr %i.j, align 4, !tbaa !16  ; 3 uses
  %i.ab = add nsw i32 %i.aa, 8                    ; 2 uses
  %.pre = load i8, ptr %i.g, align 8, !tbaa !13, !range !14
  %i.ac = trunc nuw i8 %.pre to i1
  store i32 %i.ab, ptr %i.j, align 4, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load <2 x float>, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load <2 x float>, ptr %i.af, align 4
  %i.ah = add nsw i32 %i.aa, 24                   ; 2 uses
  br i1 %i.ac, label %b3RecW_SPHERE.exit, label %bb.g

bb.g:                                             ; preds = %b3RecW_SHAPEID.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !17 ; 3 uses
  %i.ak = icmp sgt i32 %i.ah, %i.aj
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !18 ; 3 uses
  br i1 %i.ak, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.al = shl nsw i32 %i.aj, 1
  %i.am = add nsw i32 %i.aa, 88
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.al, i32 %i.am) ; 3 uses
  %i.an = icmp eq ptr %.pre.i.i, null
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = sext i32 %spec.select.i.i to i64
  %i.ap = tail call ptr @b3Alloc(i64 noundef %i.ao) #17
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aq = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.pre.i.i, i32 noundef %i.aj, i32 noundef %spec.select.i.i) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge.i.i = phi ptr [ %i.aq, %bb.j ], [ %i.ap, %bb.i ] ; 2 uses
  store ptr %storemerge.i.i, ptr %0, align 8, !tbaa !18
  store i32 %spec.select.i.i, ptr %i.ai, align 8, !tbaa !17
  %.pre33.i.i = load i32, ptr %i.j, align 4, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %i.ar = phi i32 [ %.pre33.i.i, %bb.k ], [ %i.ab, %bb.g ]
  %i.as = phi ptr [ %storemerge.i.i, %bb.k ], [ %.pre.i.i, %bb.g ]
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  %2 = shufflevector <2 x float> %i.ae, <2 x float> %i.ag, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %2, ptr %i.au, align 1
  %i.av = load i32, ptr %i.j, align 4, !tbaa !16
  %i.aw = add nsw i32 %i.av, 16
  br label %b3RecW_SPHERE.exit

b3RecW_SPHERE.exit:                               ; preds = %b3RecW_SHAPEID.exit.thread, %b3RecW_SHAPEID.exit, %bb.l
  %.sink.i.i = phi i32 [ %i.aw, %bb.l ], [ %i.ah, %b3RecW_SHAPEID.exit ], [ %i.l, %b3RecW_SHAPEID.exit.thread ]
  store i32 %.sink.i.i, ptr %i.j, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3RecWriteArgs_ShapeSetCapsule(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b3Capsule, align 8          ; 5 uses
  %i.a = load i64, ptr %1, align 4                ; 3 uses
  %.sroa.3.0.extract.shift.i.i = lshr i64 %i.a, 48
  %i.b = shl i64 %i.a, 32
  %i.c = lshr i64 %i.a, 16
  %i.d = and i64 %i.c, 4294901760
  %i.e = or disjoint i64 %i.d, %i.b
  %i.f = or disjoint i64 %i.e, %.sroa.3.0.extract.shift.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !13, !range !14, !noundef !15
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 8 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16   ; 4 uses
  %i.l = add nsw i32 %i.k, 8                      ; 2 uses
  br i1 %i.i, label %b3RecW_SHAPEID.exit.thread, label %bb.b

b3RecW_SHAPEID.exit.thread:                       ; preds = %bb.a
  store i32 %i.l, ptr %i.j, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.m = add nsw i32 %i.k, 36
  br label %b3RecW_CAPSULE.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !17   ; 3 uses
  %i.p = icmp sgt i32 %i.l, %i.o
  %.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !18 ; 3 uses
  br i1 %i.p, label %bb.c, label %b3RecW_SHAPEID.exit

bb.c:                                             ; preds = %bb.b
  %i.q = shl nsw i32 %i.o, 1
  %i.r = add nsw i32 %i.k, 72
  %spec.select.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.q, i32 %i.r) ; 3 uses
  %i.s = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = sext i32 %spec.select.i.i.i to i64
  %i.u = tail call ptr @b3Alloc(i64 noundef %i.t) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.pre.i.i.i, i32 noundef %i.o, i32 noundef %spec.select.i.i.i) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i.i.i = phi ptr [ %i.v, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  store ptr %storemerge.i.i.i, ptr %0, align 8, !tbaa !18
  store i32 %spec.select.i.i.i, ptr %i.n, align 8, !tbaa !17
  %.pre33.i.i.i = load i32, ptr %i.j, align 4, !tbaa !16
  br label %b3RecW_SHAPEID.exit

b3RecW_SHAPEID.exit:                              ; preds = %bb.b, %bb.f
  %i.w = phi i32 [ %.pre33.i.i.i, %bb.f ], [ %i.k, %bb.b ]
  %i.x = phi ptr [ %storemerge.i.i.i, %bb.f ], [ %.pre.i.i.i, %bb.b ]
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %i.y
  store i64 %i.f, ptr %i.z, align 1
  %i.aa = load i32, ptr %i.j, align 4, !tbaa !16  ; 3 uses
  %i.ab = add nsw i32 %i.aa, 8                    ; 2 uses
  %.pre = load i8, ptr %i.g, align 8, !tbaa !13, !range !14
  %i.ac = trunc nuw i8 %.pre to i1
  store i32 %i.ab, ptr %i.j, align 4, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(28) %i.ad, i64 28, i1 false)
  %i.ae = add nsw i32 %i.aa, 36                   ; 2 uses
  br i1 %i.ac, label %b3RecW_CAPSULE.exit, label %bb.g

bb.g:                                             ; preds = %b3RecW_SHAPEID.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !17 ; 3 uses
  %i.ah = icmp sgt i32 %i.ae, %i.ag
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !18 ; 3 uses
  br i1 %i.ah, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ai = shl nsw i32 %i.ag, 1
  %i.aj = add nsw i32 %i.aa, 100
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 %i.aj) ; 3 uses
  %i.ak = icmp eq ptr %.pre.i.i, null
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = sext i32 %spec.select.i.i to i64
  %i.am = tail call ptr @b3Alloc(i64 noundef %i.al) #17
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.an = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.pre.i.i, i32 noundef %i.ag, i32 noundef %spec.select.i.i) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge.i.i = phi ptr [ %i.an, %bb.j ], [ %i.am, %bb.i ] ; 2 uses
  store ptr %storemerge.i.i, ptr %0, align 8, !tbaa !18
  store i32 %spec.select.i.i, ptr %i.af, align 8, !tbaa !17
  %.pre33.i.i = load i32, ptr %i.j, align 4, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %i.ao = phi i32 [ %.pre33.i.i, %bb.k ], [ %i.ab, %bb.g ]
  %i.ap = phi ptr [ %storemerge.i.i, %bb.k ], [ %.pre.i.i, %bb.g ]
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.ar, ptr noundef nonnull readonly align 8 dereferenceable(28) %2, i64 28, i1 false)
  %i.as = load i32, ptr %i.j, align 4, !tbaa !16
  %i.at = add nsw i32 %i.as, 28
  br label %b3RecW_CAPSULE.exit

b3RecW_CAPSULE.exit:                              ; preds = %b3RecW_SHAPEID.exit.thread, %b3RecW_SHAPEID.exit, %bb.l
  %.sink.i.i = phi i32 [ %i.at, %bb.l ], [ %i.ae, %b3RecW_SHAPEID.exit ], [ %i.m, %b3RecW_SHAPEID.exit.thread ]
  store i32 %.sink.i.i, ptr %i.j, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3RecWriteArgs_ShapeApplyWind(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 4                ; 3 uses
  %.sroa.3.0.extract.shift.i.i = lshr i64 %i.a, 48
  %i.b = shl i64 %i.a, 32
  %i.c = lshr i64 %i.a, 16
  %i.d = and i64 %i.c, 4294901760
  %i.e = or disjoint i64 %i.d, %i.b
  %i.f = or disjoint i64 %i.e, %.sroa.3.0.extract.shift.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !13, !range !14, !noundef !15
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 17 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16   ; 3 uses
  %i.l = add nsw i32 %i.k, 8                      ; 2 uses
  br i1 %i.i, label %b3RecW_SHAPEID.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !17   ; 3 uses
  %i.o = icmp sgt i32 %i.l, %i.n
  %.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !18 ; 3 uses
  br i1 %i.o, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.p = shl nsw i32 %i.n, 1
  %i.q = add nsw i32 %i.k, 72
  %spec.select.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.p, i32 %i.q) ; 3 uses
  %i.r = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sext i32 %spec.select.i.i.i to i64
  %i.t = tail call ptr @b3Alloc(i64 noundef %i.s) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.pre.i.i.i, i32 noundef %i.n, i32 noundef %spec.select.i.i.i) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i.i.i = phi ptr [ %i.u, %bb.e ], [ %i.t, %bb.d ] ; 2 uses
  store ptr %storemerge.i.i.i, ptr %0, align 8, !tbaa !18
  store i32 %spec.select.i.i.i, ptr %i.m, align 8, !tbaa !17
  %.pre33.i.i.i = load i32, ptr %i.j, align 4, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.v = phi i32 [ %.pre33.i.i.i, %bb.f ], [ %i.k, %bb.b ]
  %i.w = phi ptr [ %storemerge.i.i.i, %bb.f ], [ %.pre.i.i.i, %bb.b ]
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  store i64 %i.f, ptr %i.y, align 1
  %i.z = load i32, ptr %i.j, align 4, !tbaa !16
  %i.aa = add nsw i32 %i.z, 8
  br label %b3RecW_SHAPEID.exit

b3RecW_SHAPEID.exit:                              ; preds = %bb.a, %bb.g
  %.sink.i.i.i = phi i32 [ %i.aa, %bb.g ], [ %i.l, %bb.a ]
  store i32 %.sink.i.i.i, ptr %i.j, align 4, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.ab, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  tail call void @b3RecW_VEC3(ptr noundef nonnull %0, <2 x float> %.sroa.0.0.copyload, float %.sroa.2.0.copyload)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !364
  %i.ae = load i8, ptr %i.g, align 8, !tbaa !13, !range !14, !noundef !15
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = load i32, ptr %i.j, align 4, !tbaa !16  ; 4 uses
end_hunk_2
