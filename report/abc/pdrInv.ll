Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/pdrInv?download=true
inline.NumInlined: 291
inline.NumDeleted: 67
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@Pdr_ManCountFlops:bb.a
  %or.cond.i.i = icmp ult i32 %i.e, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val14 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.d, align 8, !tbaa !72
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !42
  store i32 %.val14, ptr %i.f, align 4, !tbaa !40
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.h = sext i32 %spec.store.select.i.i to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #22 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !42
  store i32 %.val14, ptr %i.f, align 4, !tbaa !40
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %Vec_IntStart.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.l = sext i32 %.val14 to i64
  %i.m = shl nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 0, i64 %i.m, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %.val16 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.j, %bb.b ]
  %i.n = getelementptr i8, ptr %1, i64 4
  %.val18 = load i32, ptr %i.n, align 4, !tbaa !27 ; 2 uses
  %i.o = icmp sgt i32 %.val18, 0
  br i1 %i.o, label %.lr.ph20, label %.critedge

.lr.ph20:                                         ; preds = %Vec_IntStart.exit
  %i.p = getelementptr i8, ptr %1, i64 8
  %.val15 = load ptr, ptr %i.p, align 8, !tbaa !73
  %i.q = zext nneg i32 %.val18 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph20, %.loopexit
  %indvars.iv22 = phi i64 [ 0, %.lr.ph20 ], [ %indvars.iv.next23, %.loopexit ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val15, i64 %indvars.iv22
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !74
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !76
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !43
  %i.ac = ashr i32 %i.ab, 1
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %.val16, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !43
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.w, align 8, !tbaa !76
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.d, label %.loopexit, !llvm.loop !77

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.c
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %i.ak = icmp samesign ult i64 %indvars.iv.next23, %i.q
  br i1 %i.ak, label %bb.c, label %.critedge, !llvm.loop !78

.critedge:                                        ; preds = %.loopexit, %Vec_IntStart.exit
  ret ptr %i.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2147483648, 2147483647) i32 @Pdr_ManFindInvariantStart(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val10 = load i32, ptr %i.c, align 4, !tbaa !27 ; 3 uses
  %i.d = add nsw i32 %.val10, -1                  ; 2 uses
  %i.e = icmp sgt i32 %.val10, 1
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val11 = load ptr, ptr %i.h, align 8, !tbaa !31
  %wide.trip.count = zext nneg i32 %.val10 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val11, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %.val = load i32, ptr %i.k, align 4, !tbaa !27
  %i.l = icmp eq i32 %.val, 0
  br i1 %i.l, label %.critedge.loopexit.split.loop.exit16, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !79

.critedge.loopexit.split.loop.exit16:             ; preds = %bb.b
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.critedge.loopexit.split.loop.exit16, %bb.a
  %.09 = phi i32 [ %i.d, %bb.a ], [ %i.m, %.critedge.loopexit.split.loop.exit16 ], [ %i.d, %bb.c ]
  ret i32 %.09
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Pdr_ManCollectCubes(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !27
  store i32 100, ptr %i.a, align 8, !tbaa !80
  %i.c = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #22 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val1627 = load i32, ptr %i.g, align 4, !tbaa !29
  %i.h = icmp slt i32 %1, %.val1627
  br i1 %i.h, label %.lr.ph29.preheader, label %.critedge

.lr.ph29.preheader:                               ; preds = %bb.a
  %i.i = sext i32 %1 to i64
  br label %.lr.ph29

.lr.ph29:                                         ; preds = %.lr.ph29.preheader, %.critedge2
  %i.j = phi ptr [ %i.f, %.lr.ph29.preheader ], [ %i.aj, %.critedge2 ] ; 2 uses
  %.promoted24 = phi ptr [ %i.c, %.lr.ph29.preheader ], [ %.promoted2443, %.critedge2 ] ; 2 uses
  %.promoted21 = phi i32 [ 100, %.lr.ph29.preheader ], [ %.promoted2141, %.critedge2 ] ; 2 uses
  %.promoted = phi i32 [ 0, %.lr.ph29.preheader ], [ %.promoted39, %.critedge2 ] ; 2 uses
  %indvars.iv35 = phi i64 [ %i.i, %.lr.ph29.preheader ], [ %indvars.iv.next36, %.critedge2 ] ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val17 = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.l = getelementptr inbounds [8 x i8], ptr %.val17, i64 %indvars.iv35
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32   ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 4        ; 2 uses
  %.val19 = load i32, ptr %i.n, align 4, !tbaa !27
  %i.o = icmp sgt i32 %.val19, 0
  br i1 %i.o, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.lr.ph29
  %i.p = getelementptr i8, ptr %i.m, i64 8
  %i.q = sext i32 %.promoted to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_PtrPush.exit
  %indvars.iv30 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next31, %Vec_PtrPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.q, %.lr.ph ], [ %indvars.iv.next, %Vec_PtrPush.exit ] ; 7 uses
  %storemerge25 = phi ptr [ %.promoted24, %.lr.ph ], [ %storemerge26, %Vec_PtrPush.exit ] ; 6 uses
  %spec.select.sink.i23 = phi i32 [ %.promoted21, %.lr.ph ], [ %spec.select.sink.i22, %Vec_PtrPush.exit ] ; 3 uses
  %.val18 = load ptr, ptr %i.p, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val18, i64 %indvars.iv30
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32
  %i.t = trunc nsw i64 %indvars.iv to i32
  %i.u = icmp eq i32 %spec.select.sink.i23, %i.t
  br i1 %i.u, label %bb.c, label %Vec_PtrPush.exit

bb.c:                                             ; preds = %bb.b
  %i.v = icmp slt i64 %indvars.iv, 16
  br i1 %i.v, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not9.i.i = icmp eq ptr %storemerge25, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge25, i64 noundef 128) #23
  br label %Vec_PtrPush.exit

bb.f:                                             ; preds = %bb.d
  %i.x = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  br label %Vec_PtrPush.exit

bb.g:                                             ; preds = %bb.c
  %i.y = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.z = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.y, i32 %i.z, i32 2147483647 ; 4 uses
  %i.aa = sext i32 %spec.select.i to i64
  %.not.i10.i = icmp samesign ult i64 %indvars.iv, %i.aa
  br i1 %.not.i10.i, label %bb.h, label %Vec_PtrPush.exit

bb.h:                                             ; preds = %bb.g
  %.not9.i11.i = icmp eq ptr %storemerge25, null
  %i.ab = zext nneg i32 %spec.select.i to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call ptr @realloc(ptr noundef nonnull %storemerge25, i64 noundef %i.ac) #23
  br label %Vec_PtrPush.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ac) #22
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.f, %bb.e, %bb.j, %bb.i, %bb.b, %bb.g
  %storemerge26 = phi ptr [ %storemerge25, %bb.b ], [ %storemerge25, %bb.g ], [ %i.x, %bb.f ], [ %i.w, %bb.e ], [ %i.ad, %bb.i ], [ %i.ae, %bb.j ] ; 4 uses
  %spec.select.sink.i22 = phi i32 [ %spec.select.sink.i23, %bb.b ], [ %spec.select.sink.i23, %bb.g ], [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i, %bb.i ], [ %spec.select.i, %bb.j ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %storemerge26, i64 %indvars.iv
  store ptr %i.s, ptr %i.af, align 8, !tbaa !32
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %.val = load i32, ptr %i.n, align 4, !tbaa !27
  %i.ag = sext i32 %.val to i64
  %i.ah = icmp slt i64 %indvars.iv.next31, %i.ag
  br i1 %i.ah, label %bb.b, label %..critedge2_crit_edge, !llvm.loop !81

..critedge2_crit_edge:                            ; preds = %Vec_PtrPush.exit
  %i.ai = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  store i32 %i.ai, ptr %i.b, align 4, !tbaa !27
  store i32 %spec.select.sink.i22, ptr %i.a, align 8
  store ptr %storemerge26, ptr %i.d, align 8
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !28
  br label %.critedge2

.critedge2:                                       ; preds = %..critedge2_crit_edge, %.lr.ph29
  %i.aj = phi ptr [ %.pre, %..critedge2_crit_edge ], [ %i.j, %.lr.ph29 ] ; 2 uses
  %.promoted2443 = phi ptr [ %storemerge26, %..critedge2_crit_edge ], [ %.promoted24, %.lr.ph29 ]
  %.promoted2141 = phi i32 [ %spec.select.sink.i22, %..critedge2_crit_edge ], [ %.promoted21, %.lr.ph29 ]
  %.promoted39 = phi i32 [ %i.ai, %..critedge2_crit_edge ], [ %.promoted, %.lr.ph29 ]
  %indvars.iv.next36 = add nsw i64 %indvars.iv35, 1 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %.val16 = load i32, ptr %i.ak, align 4, !tbaa !29
  %i.al = sext i32 %.val16 to i64
  %i.am = icmp slt i64 %indvars.iv.next36, %i.al
  br i1 %i.am, label %.lr.ph29, label %.critedge, !llvm.loop !82

.critedge:                                        ; preds = %.critedge2, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Pdr_ManCountFlopsInv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val10.i = load i32, ptr %i.c, align 4, !tbaa !27 ; 3 uses
  %i.d = add nsw i32 %.val10.i, -1                ; 2 uses
  %i.e = icmp sgt i32 %.val10.i, 1
  br i1 %i.e, label %.lr.ph.i, label %Pdr_ManFindInvariantStart.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val11.i = load ptr, ptr %i.h, align 8, !tbaa !31
  %wide.trip.count.i = zext nneg i32 %.val10.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val11.i, i64 %indvars.iv.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %.val.i = load i32, ptr %i.k, align 4, !tbaa !27
  %i.l = icmp eq i32 %.val.i, 0
  br i1 %i.l, label %.critedge.loopexit.split.loop.exit16.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Pdr_ManFindInvariantStart.exit, label %bb.b, !llvm.loop !79

.critedge.loopexit.split.loop.exit16.i:           ; preds = %bb.b
  %i.m = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %Pdr_ManFindInvariantStart.exit

Pdr_ManFindInvariantStart.exit:                   ; preds = %bb.c, %bb.a, %.critedge.loopexit.split.loop.exit16.i
  %.09.i = phi i32 [ %i.d, %bb.a ], [ %i.m, %.critedge.loopexit.split.loop.exit16.i ], [ %i.d, %bb.c ]
  %i.n = tail call ptr @Pdr_ManCollectCubes(ptr noundef %0, i32 noundef %.09.i) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64
  %i.q = getelementptr i8, ptr %i.p, i64 104
  %.val14.i = load i32, ptr %i.q, align 8, !tbaa !65 ; 5 uses
  %i.r = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 5 uses
  %i.s = add i32 %.val14.i, -1
  %or.cond.i.i.i = icmp ult i32 %i.s, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %.val14.i ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i.i, ptr %i.r, align 8, !tbaa !72
  %.not.i.i.i = icmp eq i32 %spec.store.select.i.i.i, 0
  br i1 %.not.i.i.i, label %Vec_IntAlloc.exit.thread.i.i, label %Vec_IntAlloc.exit.i.i

Vec_IntAlloc.exit.thread.i.i:                     ; preds = %Pdr_ManFindInvariantStart.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr null, ptr %i.u, align 8, !tbaa !42
  store i32 %.val14.i, ptr %i.t, align 4, !tbaa !40
  br label %Vec_IntStart.exit.i

Vec_IntAlloc.exit.i.i:                            ; preds = %Pdr_ManFindInvariantStart.exit
  %i.v = sext i32 %spec.store.select.i.i.i to i64
  %i.w = shl nsw i64 %i.v, 2
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #22 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !42
  store i32 %.val14.i, ptr %i.t, align 4, !tbaa !40
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %Vec_IntStart.exit.i, label %bb.d

bb.d:                                             ; preds = %Vec_IntAlloc.exit.i.i
  %i.z = sext i32 %.val14.i to i64
  %i.aa = shl nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.x, i8 0, i64 %i.aa, i1 false)
  br label %Vec_IntStart.exit.i

Vec_IntStart.exit.i:                              ; preds = %bb.d, %Vec_IntAlloc.exit.i.i, %Vec_IntAlloc.exit.thread.i.i
  %.val16.i = phi ptr [ null, %Vec_IntAlloc.exit.thread.i.i ], [ null, %Vec_IntAlloc.exit.i.i ], [ %i.x, %bb.d ]
  %i.ab = getelementptr i8, ptr %i.n, i64 4
  %.val18.i = load i32, ptr %i.ab, align 4, !tbaa !27 ; 2 uses
  %i.ac = icmp sgt i32 %.val18.i, 0
  %i.ad = getelementptr i8, ptr %i.n, i64 8
  %.val15.i = load ptr, ptr %i.ad, align 8, !tbaa !73 ; 3 uses
  br i1 %i.ac, label %.lr.ph20.i, label %Pdr_ManCountFlops.exit

.lr.ph20.i:                                       ; preds = %Vec_IntStart.exit.i
  %i.ae = zext nneg i32 %.val18.i to i64
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.i, %.lr.ph20.i
  %indvars.iv22.i = phi i64 [ 0, %.lr.ph20.i ], [ %indvars.iv.next23.i, %.loopexit.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val15.i, i64 %indvars.iv22.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !32 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !74
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !76
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.i6, label %.loopexit.i

.lr.ph.i6:                                        ; preds = %.preheader.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i6
  %indvars.iv.i7 = phi i64 [ 0, %.lr.ph.i6 ], [ %indvars.iv.next.i8, %bb.f ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i7
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !43
  %i.aq = ashr i32 %i.ap, 1
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %.val16.i, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !43
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !43
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i7, 1 ; 2 uses
  %i.av = load i32, ptr %i.ak, align 8, !tbaa !76
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next.i8, %i.aw
  br i1 %i.ax, label %bb.f, label %.loopexit.i, !llvm.loop !77

.loopexit.i:                                      ; preds = %bb.f, %.preheader.i, %bb.e
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next23.i, %i.ae
  br i1 %exitcond.not, label %Pdr_ManCountFlops.exit.thread, label %bb.e, !llvm.loop !78

Pdr_ManCountFlops.exit:                           ; preds = %Vec_IntStart.exit.i
  %.not.i = icmp eq ptr %.val15.i, null
  br i1 %.not.i, label %Vec_PtrFree.exit, label %Pdr_ManCountFlops.exit.thread

Pdr_ManCountFlops.exit.thread:                    ; preds = %.loopexit.i, %Pdr_ManCountFlops.exit
  tail call void @free(ptr noundef nonnull %.val15.i) #20
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %Pdr_ManCountFlops.exit, %Pdr_ManCountFlops.exit.thread
  tail call void @free(ptr noundef nonnull %i.n) #20
  ret ptr %i.r
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Pdr_ManCountVariables(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
end_hunk_0
begin_hunk_1_@Pdr_ManDeriveMarkNonInductive:bb.a
bb.d:                                             ; preds = %bb.c
  %i.y = tail call i32 @sat_solver_simplify(ptr noundef nonnull %i.d) #20 ; 0 uses
  br label %sat_solver_compress.exit

sat_solver_compress.exit:                         ; preds = %bb.d, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val39 = load i32, ptr %i.e, align 4, !tbaa !27 ; 2 uses
  %i.z = sext i32 %.val39 to i64
  %i.aa = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %bb.b, label %.critedge.preheader, !llvm.loop !134

bb.e:                                             ; preds = %.lr.ph55, %.critedge
  %indvars.iv57 = phi i64 [ 0, %.lr.ph55 ], [ %indvars.iv.next58, %.critedge ] ; 2 uses
  %.03553 = phi i32 [ 0, %.lr.ph55 ], [ %.136, %.critedge ] ; 2 uses
  %.val41 = load ptr, ptr %i.k, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val41, i64 %indvars.iv57
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !74
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call ptr @Pdr_ManCubeToLits(ptr noundef %0, i32 noundef %.val40, ptr noundef nonnull %i.ac, i32 noundef 0, i32 noundef 1) #20 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val46 = load ptr, ptr %i.ah, align 8, !tbaa !42 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 4
  %.val43 = load i32, ptr %i.ai, align 4, !tbaa !40
  %i.aj = sext i32 %.val43 to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %.val46, i64 %i.aj
  %i.al = tail call i32 @sat_solver_solve(ptr noundef %i.d, ptr noundef %.val46, ptr noundef %i.ak, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #20
  %.not = icmp eq i32 %i.al, -1
  br i1 %.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 -1, ptr %i.ad, align 8, !tbaa !74
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.g, %bb.e
  %.136 = phi i32 [ %.03553, %bb.e ], [ 1, %bb.g ], [ %.03553, %bb.f ] ; 2 uses
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %.val = load i32, ptr %i.e, align 4, !tbaa !27
  %i.am = sext i32 %.val to i64
  %i.an = icmp slt i64 %indvars.iv.next58, %i.am
  br i1 %i.an, label %bb.e, label %.critedge2, !llvm.loop !135

.critedge2:                                       ; preds = %.critedge, %bb.a, %.critedge.preheader
  %.035.lcssa = phi i32 [ 0, %.critedge.preheader ], [ 0, %bb.a ], [ %.136, %.critedge ]
  ret i32 %.035.lcssa
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Pdr_ManDeriveInfinityClauses(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val10.i = load i32, ptr %i.c, align 4, !tbaa !27 ; 3 uses
  %i.d = add nsw i32 %.val10.i, -1                ; 2 uses
  %i.e = icmp sgt i32 %.val10.i, 1
  br i1 %i.e, label %.lr.ph.i, label %Pdr_ManFindInvariantStart.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val11.i = load ptr, ptr %i.h, align 8, !tbaa !31
  %wide.trip.count.i = zext nneg i32 %.val10.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val11.i, i64 %indvars.iv.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %.val.i = load i32, ptr %i.k, align 4, !tbaa !27
  %i.l = icmp eq i32 %.val.i, 0
  br i1 %i.l, label %.critedge.loopexit.split.loop.exit16.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Pdr_ManFindInvariantStart.exit, label %bb.b, !llvm.loop !79

.critedge.loopexit.split.loop.exit16.i:           ; preds = %bb.b
  %i.m = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %Pdr_ManFindInvariantStart.exit

Pdr_ManFindInvariantStart.exit:                   ; preds = %bb.c, %bb.a, %.critedge.loopexit.split.loop.exit16.i
  %.09.i = phi i32 [ %i.d, %bb.a ], [ %i.m, %.critedge.loopexit.split.loop.exit16.i ], [ %i.d, %bb.c ]
  %i.n = tail call ptr @Pdr_ManCollectCubes(ptr noundef %0, i32 noundef %.09.i) ; 4 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %Vec_IntPush.exit, label %.preheader

.preheader:                                       ; preds = %Pdr_ManFindInvariantStart.exit, %.preheader
  %i.o = tail call i32 @Pdr_ManDeriveMarkNonInductive(ptr noundef %0, ptr noundef %i.n)
  %.not28 = icmp eq i32 %i.o, 0
  br i1 %.not28, label %Vec_IntPush.exit, label %.preheader, !llvm.loop !136

Vec_IntPush.exit:                                 ; preds = %.preheader, %Pdr_ManFindInvariantStart.exit
  %i.p = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 7 uses
  store i32 1000, ptr %i.p, align 8, !tbaa !72
  %i.r = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #22 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !42
  store i32 1, ptr %i.q, align 4, !tbaa !40
  store i32 0, ptr %i.r, align 4, !tbaa !43
  %i.t = getelementptr i8, ptr %i.n, i64 4        ; 2 uses
  %.val66 = load i32, ptr %i.t, align 4, !tbaa !27
  %i.u = icmp sgt i32 %.val66, 0
  br i1 %i.u, label %.lr.ph68, label %.critedge

.lr.ph68:                                         ; preds = %Vec_IntPush.exit
  %i.v = getelementptr i8, ptr %i.n, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph68, %.loopexit
  %i.w = phi ptr [ %i.r, %.lr.ph68 ], [ %i.bm, %.loopexit ] ; 3 uses
  %.val31 = phi ptr [ %i.r, %.lr.ph68 ], [ %.val3179, %.loopexit ] ; 4 uses
  %indvars.iv75 = phi i64 [ 0, %.lr.ph68 ], [ %indvars.iv.next76, %.loopexit ] ; 2 uses
  %.val30 = load ptr, ptr %i.v, align 8, !tbaa !73
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.val30, i64 %indvars.iv75
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !32   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !74
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %.val31, align 4, !tbaa !43
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %.val31, align 4, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !76
  %i.ag = load i32, ptr %i.q, align 4, !tbaa !40  ; 7 uses
  %i.ah = load i32, ptr %i.p, align 8, !tbaa !72
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %Vec_IntPush.exit39

bb.f:                                             ; preds = %bb.e
  %i.aj = icmp slt i32 %i.ag, 16
  br i1 %i.aj, label %Vec_IntGrow.exit11.sink.split.i35, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = icmp samesign ult i32 %i.ag, 1073741823
  %i.al = shl nuw nsw i32 %i.ag, 1
  %spec.select.i32 = select i1 %i.ak, i32 %i.al, i32 2147483647 ; 3 uses
  %.not.i9.i33 = icmp samesign ult i32 %i.ag, %spec.select.i32
  br i1 %.not.i9.i33, label %bb.h, label %Vec_IntPush.exit39

bb.h:                                             ; preds = %bb.g
  %i.am = zext nneg i32 %spec.select.i32 to i64
  %i.an = shl nuw nsw i64 %i.am, 2
  br label %Vec_IntGrow.exit11.sink.split.i35

Vec_IntGrow.exit11.sink.split.i35:                ; preds = %bb.f, %bb.h
  %.sink = phi i64 [ %i.an, %bb.h ], [ 64, %bb.f ]
  %spec.select.sink.i36 = phi i32 [ %spec.select.i32, %bb.h ], [ 16, %bb.f ]
  %i.ao = tail call ptr @realloc(ptr noundef nonnull %.val31, i64 noundef %.sink) #23 ; 2 uses
  store ptr %i.ao, ptr %i.s, align 8, !tbaa !42
  store i32 %spec.select.sink.i36, ptr %i.p, align 8, !tbaa !72
  br label %Vec_IntPush.exit39

Vec_IntPush.exit39:                               ; preds = %bb.e, %bb.g, %Vec_IntGrow.exit11.sink.split.i35
  %.promoted63 = phi ptr [ %i.w, %bb.e ], [ %i.w, %bb.g ], [ %i.ao, %Vec_IntGrow.exit11.sink.split.i35 ] ; 4 uses
  %i.ap = add nsw i32 %i.ag, 1
  store i32 %i.ap, ptr %i.q, align 4, !tbaa !40
  %i.aq = sext i32 %i.ag to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %.promoted63, i64 %i.aq
  store i32 %i.af, ptr %i.ar, align 4, !tbaa !43
  %i.as = load i32, ptr %i.ae, align 8, !tbaa !76
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %Vec_IntPush.exit39
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %.promoted = load i32, ptr %i.q, align 4, !tbaa !40
  %.promoted60 = load i32, ptr %i.p, align 8, !tbaa !72
  %i.av = sext i32 %.promoted to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %Vec_IntPush.exit47
  %indvars.iv70 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next71, %Vec_IntPush.exit47 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.av, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit47 ] ; 7 uses
  %storemerge5764 = phi ptr [ %.promoted63, %.lr.ph ], [ %storemerge5765, %Vec_IntPush.exit47 ] ; 3 uses
  %spec.select.sink.i4462 = phi i32 [ %.promoted60, %.lr.ph ], [ %spec.select.sink.i4461, %Vec_IntPush.exit47 ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv70
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !43
  %i.ay = trunc nsw i64 %indvars.iv to i32
  %i.az = icmp eq i32 %spec.select.sink.i4462, %i.ay
  br i1 %i.az, label %bb.j, label %Vec_IntPush.exit47

bb.j:                                             ; preds = %bb.i
  %i.ba = icmp slt i64 %indvars.iv, 16
  br i1 %i.ba, label %Vec_IntPush.exit47.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.bc = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i40 = select i1 %i.bb, i32 %i.bc, i32 2147483647 ; 3 uses
  %i.bd = sext i32 %spec.select.i40 to i64
  %.not.i9.i41 = icmp samesign ult i64 %indvars.iv, %i.bd
  br i1 %.not.i9.i41, label %bb.l, label %Vec_IntPush.exit47

bb.l:                                             ; preds = %bb.k
  %i.be = zext nneg i32 %spec.select.i40 to i64
  %i.bf = shl nuw nsw i64 %i.be, 2
  br label %Vec_IntPush.exit47.sink.split

Vec_IntPush.exit47.sink.split:                    ; preds = %bb.j, %bb.l
  %.sink85 = phi i64 [ %i.bf, %bb.l ], [ 64, %bb.j ]
  %spec.select.sink.i4461.ph = phi i32 [ %spec.select.i40, %bb.l ], [ 16, %bb.j ]
  %i.bg = tail call ptr @realloc(ptr noundef nonnull %storemerge5764, i64 noundef %.sink85) #23
  br label %Vec_IntPush.exit47

Vec_IntPush.exit47:                               ; preds = %Vec_IntPush.exit47.sink.split, %bb.i, %bb.k
  %storemerge5765 = phi ptr [ %storemerge5764, %bb.i ], [ %storemerge5764, %bb.k ], [ %i.bg, %Vec_IntPush.exit47.sink.split ] ; 5 uses
  %spec.select.sink.i4461 = phi i32 [ %spec.select.sink.i4462, %bb.i ], [ %spec.select.sink.i4462, %bb.k ], [ %spec.select.sink.i4461.ph, %Vec_IntPush.exit47.sink.split ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %storemerge5765, i64 %indvars.iv
  store i32 %i.ax, ptr %i.bh, align 4, !tbaa !43
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.bi = load i32, ptr %i.ae, align 8, !tbaa !76
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next71, %i.bj
  br i1 %i.bk, label %bb.i, label %..loopexit_crit_edge, !llvm.loop !137

..loopexit_crit_edge:                             ; preds = %Vec_IntPush.exit47
  %i.bl = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.bl, ptr %i.q, align 4, !tbaa !40
  store i32 %spec.select.sink.i4461, ptr %i.p, align 8
  store ptr %storemerge5765, ptr %i.s, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %Vec_IntPush.exit39, %..loopexit_crit_edge, %bb.d
  %i.bm = phi ptr [ %.promoted63, %Vec_IntPush.exit39 ], [ %storemerge5765, %..loopexit_crit_edge ], [ %i.w, %bb.d ] ; 2 uses
  %.val3179 = phi ptr [ %.promoted63, %Vec_IntPush.exit39 ], [ %storemerge5765, %..loopexit_crit_edge ], [ %.val31, %bb.d ]
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %.val = load i32, ptr %i.t, align 4, !tbaa !27
  %i.bn = sext i32 %.val to i64
  %i.bo = icmp slt i64 %indvars.iv.next76, %i.bn
  br i1 %i.bo, label %bb.d, label %.critedge, !llvm.loop !138

.critedge:                                        ; preds = %.loopexit, %Vec_IntPush.exit
  %i.bp = phi ptr [ %i.r, %Vec_IntPush.exit ], [ %i.bm, %.loopexit ] ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !139 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %Vec_PtrFreeP.exit, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !73 ; 2 uses
  %.not.i = icmp eq ptr %i.bu, null
  br i1 %.not.i, label %bb.n, label %.thread.i

.thread.i:                                        ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.bu) #20
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !139 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr null, ptr %i.bw, align 8, !tbaa !73
  br label %bb.n

bb.n:                                             ; preds = %.thread.i, %bb.m
  %i.bx = phi ptr [ %i.bv, %.thread.i ], [ %i.br, %bb.m ]
  tail call void @free(ptr noundef nonnull %i.bx) #20
  br label %Vec_PtrFreeP.exit

Vec_PtrFreeP.exit:                                ; preds = %.critedge, %bb.n
  store ptr %i.n, ptr %i.bq, align 8, !tbaa !83
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !64
  %i.ca = getelementptr i8, ptr %i.bz, i64 104
  %.val29 = load i32, ptr %i.ca, align 8, !tbaa !65
  %i.cb = load i32, ptr %i.q, align 4, !tbaa !40  ; 7 uses
  %i.cc = load i32, ptr %i.p, align 8, !tbaa !72
  %i.cd = icmp eq i32 %i.cb, %i.cc
  br i1 %i.cd, label %bb.o, label %Vec_IntPush.exit55

bb.o:                                             ; preds = %Vec_PtrFreeP.exit
  %i.ce = icmp slt i32 %i.cb, 16
  br i1 %i.ce, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %.not9.i.i53 = icmp eq ptr %i.bp, null
  br i1 %.not9.i.i53, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bp, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i51

bb.r:                                             ; preds = %bb.p
  %i.cg = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i51

bb.s:                                             ; preds = %bb.o
  %i.ch = icmp samesign ult i32 %i.cb, 1073741823
  %i.ci = shl nuw nsw i32 %i.cb, 1
  %spec.select.i48 = select i1 %i.ch, i32 %i.ci, i32 2147483647 ; 4 uses
  %.not.i9.i49 = icmp samesign ult i32 %i.cb, %spec.select.i48
  br i1 %.not.i9.i49, label %bb.t, label %Vec_IntPush.exit55

bb.t:                                             ; preds = %bb.s
  %.not9.i10.i50 = icmp eq ptr %i.bp, null
  %i.cj = zext nneg i32 %spec.select.i48 to i64
  %i.ck = shl nuw nsw i64 %i.cj, 2                ; 2 uses
  br i1 %.not9.i10.i50, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = tail call ptr @realloc(ptr noundef nonnull %i.bp, i64 noundef %i.ck) #23
  br label %Vec_IntGrow.exit11.sink.split.i51

bb.v:                                             ; preds = %bb.t
  %i.cm = tail call noalias ptr @malloc(i64 noundef %i.ck) #22
  br label %Vec_IntGrow.exit11.sink.split.i51

Vec_IntGrow.exit11.sink.split.i51:                ; preds = %bb.u, %bb.v, %bb.q, %bb.r
  %storemerge = phi ptr [ %i.cg, %bb.r ], [ %i.cf, %bb.q ], [ %i.cl, %bb.u ], [ %i.cm, %bb.v ] ; 2 uses
  %spec.select.sink.i52 = phi i32 [ 16, %bb.r ], [ 16, %bb.q ], [ %spec.select.i48, %bb.u ], [ %spec.select.i48, %bb.v ]
  store ptr %storemerge, ptr %i.s, align 8, !tbaa !42
  store i32 %spec.select.sink.i52, ptr %i.p, align 8, !tbaa !72
  br label %Vec_IntPush.exit55

Vec_IntPush.exit55:                               ; preds = %Vec_PtrFreeP.exit, %bb.s, %Vec_IntGrow.exit11.sink.split.i51
  %i.cn = phi ptr [ %i.bp, %Vec_PtrFreeP.exit ], [ %i.bp, %bb.s ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i51 ]
  %i.co = add nsw i32 %i.cb, 1
  store i32 %i.co, ptr %i.q, align 4, !tbaa !40
  %i.cp = sext i32 %i.cb to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cp
  store i32 %.val29, ptr %i.cq, align 4, !tbaa !43
  ret ptr %i.p
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Pdr_InvMap(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val11 = load i32, ptr %i.a, align 4, !tbaa !40 ; 9 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 5 uses
  %i.c = add i32 %.val11, -1
  %or.cond.i.i = icmp ult i32 %i.c, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val11 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.b, align 8, !tbaa !72
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.e, align 8, !tbaa !42
  store i32 %.val11, ptr %i.d, align 4, !tbaa !40
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.f = sext i32 %spec.store.select.i.i to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #22 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !42
  store i32 %.val11, ptr %i.d, align 4, !tbaa !40
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %Vec_IntStart.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.j = sext i32 %.val11 to i64
  %i.k = shl nsw i64 %i.j, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.h, i8 0, i64 %i.k, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %.val13 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.h, %bb.b ] ; 3 uses
  %i.l = icmp sgt i32 %.val11, 0
  br i1 %i.l, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntStart.exit
  %i.m = getelementptr i8, ptr %0, i64 8
  %.val12 = load ptr, ptr %i.m, align 8, !tbaa !42 ; 3 uses
  %i.n = zext nneg i32 %.val11 to i64             ; 2 uses
  %xtraiter = and i64 %i.n, 1
  %i.o = icmp eq i32 %.val11, 1
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.n, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.g ] ; 4 uses
  %.016 = phi i32 [ 0, %.lr.ph.new ], [ %.1.1, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val12, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !43
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = add nsw i32 %.016, 1
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val13, i64 %indvars.iv
  store i32 %.016, ptr %i.s, align 4, !tbaa !43
end_hunk_1
begin_hunk_2_@Pdr_InvPrintStr:bb.a
  %.016.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %.1.i.1, %.lr.ph.i55.preheader.unr-lcssa ]
  %lcmp.mod172 = trunc i32 %.val11.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod172)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val12.i, i64 %indvars.iv.i.epil.init
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !43
  %.not.i.epil = icmp eq i32 %i.ac, 0
  br i1 %.not.i.epil, label %.lr.ph.i55.preheader, label %bb.h

bb.h:                                             ; preds = %.epil.preheader
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val13.i, i64 %indvars.iv.i.epil.init
  store i32 %.016.i.epil.init, ptr %i.ad, align 4, !tbaa !43
  br label %.lr.ph.i55.preheader

.lr.ph.i55.preheader:                             ; preds = %.epil.preheader, %bb.h, %.lr.ph.i55.preheader.unr-lcssa
  %min.iters.check = icmp ult i32 %.val11.i, 8
  br i1 %min.iters.check, label %.lr.ph.i55.preheader168, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i55.preheader
  %n.vec = and i64 %i.r, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi164 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.val12.i, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <4 x i32>, ptr %i.ae, align 4, !tbaa !43
  %wide.load165 = load <4 x i32>, ptr %i.af, align 4, !tbaa !43
  %i.ag = icmp eq <4 x i32> %wide.load, zeroinitializer
  %i.ah = icmp eq <4 x i32> %wide.load165, zeroinitializer
  %i.ai = zext <4 x i1> %i.ag to <4 x i32>
  %i.aj = zext <4 x i1> %i.ah to <4 x i32>
  %i.ak = add <4 x i32> %vec.phi, %i.ai           ; 2 uses
  %i.al = add <4 x i32> %vec.phi164, %i.aj        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !145

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.al, %i.ak
  %i.an = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.r
  br i1 %cmp.n, label %Vec_IntCountZero.exit, label %.lr.ph.i55.preheader168

.lr.ph.i55.preheader168:                          ; preds = %.lr.ph.i55.preheader, %middle.block
  %indvars.iv.i56.ph = phi i64 [ 0, %.lr.ph.i55.preheader ], [ %n.vec, %middle.block ]
  %.08.i.ph = phi i32 [ 0, %.lr.ph.i55.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55.preheader168, %.lr.ph.i55
  %indvars.iv.i56 = phi i64 [ %indvars.iv.next.i57, %.lr.ph.i55 ], [ %indvars.iv.i56.ph, %.lr.ph.i55.preheader168 ] ; 2 uses
  %.08.i = phi i32 [ %i.as, %.lr.ph.i55 ], [ %.08.i.ph, %.lr.ph.i55.preheader168 ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val12.i, i64 %indvars.iv.i56
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !43
  %i.aq = icmp eq i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %i.as = add nuw nsw i32 %.08.i, %i.ar           ; 2 uses
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i57, %i.r
  br i1 %exitcond.not.i, label %Vec_IntCountZero.exit, label %.lr.ph.i55, !llvm.loop !146

Vec_IntCountZero.exit:                            ; preds = %.lr.ph.i55, %middle.block, %Vec_IntStart.exit.i
  %.0.lcssa.i = phi i32 [ 0, %Vec_IntStart.exit.i ], [ %i.an, %middle.block ], [ %i.as, %.lr.ph.i55 ]
  %i.at = sub nsw i32 %.val11.i, %.0.lcssa.i      ; 2 uses
  %i.au = getelementptr i8, ptr %0, i64 8
  %.val54 = load ptr, ptr %i.au, align 8, !tbaa !42 ; 3 uses
  %i.av = zext i32 %i.at to i64                   ; 3 uses
  %i.aw = tail call noalias ptr @malloc(i64 noundef %i.av) #22 ; 10 uses
  %i.ax = icmp sgt i32 %i.at, 0                   ; 2 uses
  br i1 %i.ax, label %.lr.ph.preheader, label %.preheader96

.lr.ph.preheader:                                 ; preds = %Vec_IntCountZero.exit
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aw, i8 45, i64 %i.av, i1 false), !tbaa !93
  br label %.preheader96

.preheader96:                                     ; preds = %.lr.ph.preheader, %Vec_IntCountZero.exit
  %i.ay = load i32, ptr %.val54, align 4, !tbaa !43
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.preheader95.lr.ph, label %Vec_StrPush.exit89

.preheader95.lr.ph:                               ; preds = %.preheader96
  %i.ba = getelementptr i8, ptr %i.f, i64 8       ; 2 uses
  br label %.preheader95

.preheader95:                                     ; preds = %.preheader95.lr.ph, %._crit_edge112
  %.promoted107 = phi ptr [ %i.c, %.preheader95.lr.ph ], [ %i.er, %._crit_edge112 ] ; 2 uses
  %.promoted104 = phi i32 [ 1000, %.preheader95.lr.ph ], [ %i.eq, %._crit_edge112 ] ; 2 uses
  %.promoted = phi i32 [ 0, %.preheader95.lr.ph ], [ %i.es, %._crit_edge112 ] ; 2 uses
  %.val54.pn = phi ptr [ %.val54, %.preheader95.lr.ph ], [ %i.ga, %._crit_edge112 ]
  %.147114 = phi i32 [ 0, %.preheader95.lr.ph ], [ %i.fy, %._crit_edge112 ]
  %.0115 = getelementptr i8, ptr %.val54.pn, i64 4 ; 9 uses
  %i.bb = load i32, ptr %.0115, align 4, !tbaa !43 ; 4 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph100, label %.preheader

.lr.ph100:                                        ; preds = %.preheader95
  %.val53 = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.bb to i64   ; 2 uses
  %xtraiter174 = and i64 %wide.trip.count, 1
  %i.bd = icmp eq i32 %i.bb, 1
  br i1 %i.bd, label %.epil.preheader173, label %.lr.ph100.new

.lr.ph100.new:                                    ; preds = %.lr.ph100
  %unroll_iter177 = and i64 %wide.trip.count, 2147483646
  br label %bb.i

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.i
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod175.not, label %.preheader, label %.epil.preheader173

.epil.preheader173:                               ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph100
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph100 ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod176 = trunc i32 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod176)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.0115, i64 %indvars.iv.epil.init
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !43 ; 2 uses
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = and i8 %i.bh, 1
  %i.bj = sub nuw nsw i8 49, %i.bi
  %i.bk = ashr i32 %i.bg, 1
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %.val53, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !43
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %i.aw, i64 %i.bo
  store i8 %i.bj, ptr %i.bp, align 1, !tbaa !93
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader173, %.preheader.loopexit.unr-lcssa, %.preheader95
  br i1 %i.ax, label %.lr.ph102, label %bb.s

.lr.ph102:                                        ; preds = %.preheader
  %i.bq = sext i32 %.promoted to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.i, %.lr.ph100.new
  %indvars.iv = phi i64 [ 0, %.lr.ph100.new ], [ %indvars.iv.next.1, %bb.i ] ; 2 uses
  %niter178 = phi i64 [ 0, %.lr.ph100.new ], [ %niter178.next.1, %bb.i ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.0115, i64 %indvars.iv
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !43 ; 2 uses
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = and i8 %i.bu, 1
  %i.bw = sub nuw nsw i8 49, %i.bv
  %i.bx = ashr i32 %i.bt, 1
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %.val53, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !43
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %i.aw, i64 %i.cb
  store i8 %i.bw, ptr %i.cc, align 1, !tbaa !93
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.0115, i64 %indvars.iv.next.1
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !43 ; 2 uses
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = and i8 %i.cf, 1
  %i.ch = sub nuw nsw i8 49, %i.cg
  %i.ci = ashr i32 %i.ce, 1
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %.val53, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !43
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr %i.aw, i64 %i.cm
  store i8 %i.ch, ptr %i.cn, align 1, !tbaa !93
  %niter178.next.1 = add nuw i64 %niter178, 2     ; 2 uses
  %niter178.ncmp.1 = icmp eq i64 %niter178.next.1, %unroll_iter177
  br i1 %niter178.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.i, !llvm.loop !147

bb.j:                                             ; preds = %.lr.ph102, %Vec_StrPush.exit
  %indvars.iv123 = phi i64 [ 0, %.lr.ph102 ], [ %indvars.iv.next124, %Vec_StrPush.exit ] ; 2 uses
  %indvars.iv121 = phi i64 [ %i.bq, %.lr.ph102 ], [ %indvars.iv.next122, %Vec_StrPush.exit ] ; 7 uses
  %storemerge94108 = phi ptr [ %.promoted107, %.lr.ph102 ], [ %storemerge94109, %Vec_StrPush.exit ] ; 6 uses
  %spec.select.sink.i106 = phi i32 [ %.promoted104, %.lr.ph102 ], [ %spec.select.sink.i105, %Vec_StrPush.exit ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv123
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !93
  %i.cq = trunc nsw i64 %indvars.iv121 to i32
  %i.cr = icmp eq i32 %spec.select.sink.i106, %i.cq
  br i1 %i.cr, label %bb.k, label %Vec_StrPush.exit

bb.k:                                             ; preds = %bb.j
  %i.cs = icmp slt i64 %indvars.iv121, 16
  br i1 %i.cs, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.not9.i.i = icmp eq ptr %storemerge94108, null
  br i1 %.not9.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ct = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %storemerge94108, i64 noundef 16) #23
  br label %Vec_StrPush.exit

bb.n:                                             ; preds = %bb.l
  %i.cu = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22
  br label %Vec_StrPush.exit

bb.o:                                             ; preds = %bb.k
  %i.cv = icmp samesign ult i64 %indvars.iv121, 1073741823
  %indvars.iv121.tr = trunc i64 %indvars.iv121 to i32
  %i.cw = shl nsw i32 %indvars.iv121.tr, 1
  %spec.select.i = select i1 %i.cv, i32 %i.cw, i32 2147483647 ; 4 uses
  %i.cx = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv121, %i.cx
  br i1 %.not.i9.i, label %bb.p, label %Vec_StrPush.exit

bb.p:                                             ; preds = %bb.o
  %.not9.i10.i = icmp eq ptr %storemerge94108, null
  %i.cy = zext nneg i32 %spec.select.i to i64     ; 2 uses
  br i1 %.not9.i10.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = tail call ptr @realloc(ptr noundef nonnull %storemerge94108, i64 noundef %i.cy) #23
  br label %Vec_StrPush.exit

bb.r:                                             ; preds = %bb.p
  %i.da = tail call noalias ptr @malloc(i64 noundef %i.cy) #22
  br label %Vec_StrPush.exit

Vec_StrPush.exit:                                 ; preds = %bb.n, %bb.m, %bb.r, %bb.q, %bb.j, %bb.o
  %storemerge94109 = phi ptr [ %storemerge94108, %bb.j ], [ %storemerge94108, %bb.o ], [ %i.cu, %bb.n ], [ %i.ct, %bb.m ], [ %i.cz, %bb.q ], [ %i.da, %bb.r ] ; 4 uses
  %spec.select.sink.i105 = phi i32 [ %spec.select.sink.i106, %bb.j ], [ %spec.select.sink.i106, %bb.o ], [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select.i, %bb.q ], [ %spec.select.i, %bb.r ] ; 3 uses
  %indvars.iv.next122 = add nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %storemerge94109, i64 %indvars.iv121
  store i8 %i.cp, ptr %i.db, align 1, !tbaa !93
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next124, %i.av
  br i1 %exitcond129.not, label %._crit_edge, label %bb.j, !llvm.loop !148

._crit_edge:                                      ; preds = %Vec_StrPush.exit
  %i.dc = trunc nsw i64 %indvars.iv.next122 to i32 ; 2 uses
  store i32 %i.dc, ptr %i.b, align 4, !tbaa !112
  store i32 %spec.select.sink.i105, ptr %i.a, align 8
  store ptr %storemerge94109, ptr %i.d, align 8
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %.preheader
  %i.dd = phi ptr [ %storemerge94109, %._crit_edge ], [ %.promoted107, %.preheader ] ; 6 uses
  %i.de = phi i32 [ %spec.select.sink.i105, %._crit_edge ], [ %.promoted104, %.preheader ] ; 5 uses
  %i.df = phi i32 [ %i.dc, %._crit_edge ], [ %.promoted, %.preheader ] ; 10 uses
  %i.dg = icmp eq i32 %i.df, %i.de
  br i1 %i.dg, label %bb.t, label %Vec_StrPush.exit65

bb.t:                                             ; preds = %bb.s
  %i.dh = icmp slt i32 %i.de, 16
  br i1 %i.dh, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %.not9.i.i63 = icmp eq ptr %i.dd, null
  br i1 %.not9.i.i63, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.di = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.dd, i64 noundef 16) #23
  br label %Vec_StrGrow.exit11.sink.split.i61

bb.w:                                             ; preds = %bb.u
  %i.dj = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22
  br label %Vec_StrGrow.exit11.sink.split.i61

bb.x:                                             ; preds = %bb.t
  %i.dk = icmp samesign ult i32 %i.de, 1073741823
  %i.dl = shl nuw nsw i32 %i.de, 1
  %spec.select.i58 = select i1 %i.dk, i32 %i.dl, i32 2147483647 ; 4 uses
  %.not.i9.i59 = icmp samesign ult i32 %i.de, %spec.select.i58
  br i1 %.not.i9.i59, label %bb.y, label %Vec_StrPush.exit65

bb.y:                                             ; preds = %bb.x
  %.not9.i10.i60 = icmp eq ptr %i.dd, null
  %i.dm = zext nneg i32 %spec.select.i58 to i64   ; 2 uses
  br i1 %.not9.i10.i60, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dn = tail call ptr @realloc(ptr noundef nonnull %i.dd, i64 noundef %i.dm) #23
  br label %Vec_StrGrow.exit11.sink.split.i61

bb.aa:                                            ; preds = %bb.y
  %i.do = tail call noalias ptr @malloc(i64 noundef %i.dm) #22
  br label %Vec_StrGrow.exit11.sink.split.i61

Vec_StrGrow.exit11.sink.split.i61:                ; preds = %bb.z, %bb.aa, %bb.v, %bb.w
  %storemerge91 = phi ptr [ %i.dj, %bb.w ], [ %i.di, %bb.v ], [ %i.dn, %bb.z ], [ %i.do, %bb.aa ] ; 2 uses
  %spec.select.sink.i62 = phi i32 [ 16, %bb.w ], [ 16, %bb.v ], [ %spec.select.i58, %bb.z ], [ %spec.select.i58, %bb.aa ]
  store ptr %storemerge91, ptr %i.d, align 8, !tbaa !115
  store i32 %spec.select.sink.i62, ptr %i.a, align 8, !tbaa !114
  br label %Vec_StrPush.exit65

Vec_StrPush.exit65:                               ; preds = %bb.s, %bb.x, %Vec_StrGrow.exit11.sink.split.i61
  %i.dp = phi ptr [ %i.dd, %bb.s ], [ %i.dd, %bb.x ], [ %storemerge91, %Vec_StrGrow.exit11.sink.split.i61 ] ; 2 uses
  %i.dq = add nsw i32 %i.df, 1                    ; 7 uses
  store i32 %i.dq, ptr %i.b, align 4, !tbaa !112
  %i.dr = sext i32 %i.df to i64
  %i.ds = getelementptr inbounds i8, ptr %i.dp, i64 %i.dr
  store i8 32, ptr %i.ds, align 1, !tbaa !93
  %i.dt = load i32, ptr %i.a, align 8, !tbaa !114 ; 2 uses
  %i.du = icmp eq i32 %i.dq, %i.dt
  br i1 %i.du, label %bb.ab, label %Vec_StrPush.exit73

bb.ab:                                            ; preds = %Vec_StrPush.exit65
  %i.dv = icmp slt i32 %i.df, 15
  br i1 %i.dv, label %Vec_StrGrow.exit11.sink.split.i69, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dw = icmp samesign ult i32 %i.df, 1073741822
  %i.dx = shl nuw nsw i32 %i.dq, 1
  %spec.select.i66 = select i1 %i.dw, i32 %i.dx, i32 2147483647 ; 3 uses
  %.not.i9.i67 = icmp samesign ult i32 %i.dq, %spec.select.i66
  br i1 %.not.i9.i67, label %bb.ad, label %Vec_StrPush.exit73.thread

Vec_StrPush.exit73.thread:                        ; preds = %bb.ac
  %i.dy = load ptr, ptr %i.d, align 8, !tbaa !115 ; 2 uses
  %i.dz = add nuw nsw i32 %i.df, 2
  %i.ea = zext nneg i32 %i.dq to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ea
  store i8 49, ptr %i.eb, align 1, !tbaa !93
  br label %Vec_StrPush.exit81

bb.ad:                                            ; preds = %bb.ac
  %i.ec = zext nneg i32 %spec.select.i66 to i64
  br label %Vec_StrGrow.exit11.sink.split.i69

Vec_StrGrow.exit11.sink.split.i69:                ; preds = %bb.ab, %bb.ad
  %.sink = phi i64 [ %i.ec, %bb.ad ], [ 16, %bb.ab ]
  %spec.select.sink.i70 = phi i32 [ %spec.select.i66, %bb.ad ], [ 16, %bb.ab ] ; 2 uses
  %i.ed = tail call ptr @realloc(ptr noundef nonnull %i.dp, i64 noundef %.sink) #23
  store ptr %i.ed, ptr %i.d, align 8, !tbaa !115
  store i32 %spec.select.sink.i70, ptr %i.a, align 8, !tbaa !114
  br label %Vec_StrPush.exit73

Vec_StrPush.exit73:                               ; preds = %Vec_StrPush.exit65, %Vec_StrGrow.exit11.sink.split.i69
  %i.ee = phi i32 [ %i.dt, %Vec_StrPush.exit65 ], [ %spec.select.sink.i70, %Vec_StrGrow.exit11.sink.split.i69 ] ; 5 uses
  %i.ef = load ptr, ptr %i.d, align 8, !tbaa !115 ; 4 uses
  %i.eg = add nsw i32 %i.df, 2                    ; 4 uses
  %i.eh = sext i32 %i.dq to i64
  %i.ei = getelementptr inbounds i8, ptr %i.ef, i64 %i.eh
  store i8 49, ptr %i.ei, align 1, !tbaa !93
  %i.ej = icmp eq i32 %i.eg, %i.ee
  br i1 %i.ej, label %bb.ae, label %Vec_StrPush.exit81

bb.ae:                                            ; preds = %Vec_StrPush.exit73
  %i.ek = icmp slt i32 %i.df, 14
  br i1 %i.ek, label %Vec_StrGrow.exit11.sink.split.i77, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.el = icmp samesign ult i32 %i.df, 1073741821
  %i.em = shl nuw nsw i32 %i.ee, 1
  %spec.select.i74 = select i1 %i.el, i32 %i.em, i32 2147483647 ; 3 uses
  %.not.i9.i75 = icmp samesign ult i32 %i.ee, %spec.select.i74
  br i1 %.not.i9.i75, label %bb.ag, label %Vec_StrPush.exit81

bb.ag:                                            ; preds = %bb.af
  %i.en = zext nneg i32 %spec.select.i74 to i64
  br label %Vec_StrGrow.exit11.sink.split.i77

Vec_StrGrow.exit11.sink.split.i77:                ; preds = %bb.ae, %bb.ag
  %.sink159 = phi i64 [ %i.en, %bb.ag ], [ 16, %bb.ae ]
  %spec.select.sink.i78 = phi i32 [ %spec.select.i74, %bb.ag ], [ 16, %bb.ae ] ; 2 uses
  %i.eo = tail call ptr @realloc(ptr noundef nonnull %i.ef, i64 noundef %.sink159) #23 ; 2 uses
  store ptr %i.eo, ptr %i.d, align 8, !tbaa !115
  store i32 %spec.select.sink.i78, ptr %i.a, align 8, !tbaa !114
  br label %Vec_StrPush.exit81

Vec_StrPush.exit81:                               ; preds = %Vec_StrPush.exit73.thread, %Vec_StrPush.exit73, %bb.af, %Vec_StrGrow.exit11.sink.split.i77
  %i.ep = phi i32 [ %i.eg, %Vec_StrPush.exit73 ], [ %i.eg, %bb.af ], [ %i.eg, %Vec_StrGrow.exit11.sink.split.i77 ], [ %i.dz, %Vec_StrPush.exit73.thread ]
  %i.eq = phi i32 [ %i.ee, %Vec_StrPush.exit73 ], [ %i.ee, %bb.af ], [ %spec.select.sink.i78, %Vec_StrGrow.exit11.sink.split.i77 ], [ %i.dq, %Vec_StrPush.exit73.thread ] ; 6 uses
  %i.er = phi ptr [ %i.ef, %Vec_StrPush.exit73 ], [ %i.ef, %bb.af ], [ %i.eo, %Vec_StrGrow.exit11.sink.split.i77 ], [ %i.dy, %Vec_StrPush.exit73.thread ] ; 5 uses
  %i.es = add nsw i32 %i.df, 3                    ; 6 uses
  store i32 %i.es, ptr %i.b, align 4, !tbaa !112
  %i.et = sext i32 %i.ep to i64
  %i.eu = getelementptr inbounds i8, ptr %i.er, i64 %i.et
  store i8 10, ptr %i.eu, align 1, !tbaa !93
  %i.ev = load i32, ptr %.0115, align 4, !tbaa !43 ; 5 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %.lr.ph111, label %._crit_edge112

.lr.ph111:                                        ; preds = %Vec_StrPush.exit81
  %.val52 = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 3 uses
  %wide.trip.count133 = zext nneg i32 %i.ev to i64 ; 2 uses
  %xtraiter180 = and i64 %wide.trip.count133, 1
  %i.ex = icmp eq i32 %i.ev, 1
  br i1 %i.ex, label %.epil.preheader179, label %.lr.ph111.new

.lr.ph111.new:                                    ; preds = %.lr.ph111
  %unroll_iter183 = and i64 %wide.trip.count133, 2147483646
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph111.new
  %indvars.iv130 = phi i64 [ 0, %.lr.ph111.new ], [ %indvars.iv.next131.1, %bb.ah ] ; 2 uses
  %niter184 = phi i64 [ 0, %.lr.ph111.new ], [ %niter184.next.1, %bb.ah ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.0115, i64 %indvars.iv130
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !43
  %i.fb = ashr i32 %i.fa, 1
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %.val52, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !43
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds i8, ptr %i.aw, i64 %i.ff
  store i8 45, ptr %i.fg, align 1, !tbaa !93
  %indvars.iv.next131.1 = add nuw nsw i64 %indvars.iv130, 2 ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.0115, i64 %indvars.iv.next131.1
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !43
end_hunk_2
begin_hunk_3_@Pdr_InvCheck_int:bb.a
  store i32 %.val109166, ptr %i.c, align 4, !tbaa !40
  store ptr %storemerge171, ptr %i.e, align 8
  br label %bb.at

bb.at:                                            ; preds = %.sink.split, %Vec_IntFill.exit._crit_edge
  %i.dx = phi ptr [ %.pre203, %Vec_IntFill.exit._crit_edge ], [ %storemerge171, %.sink.split ] ; 2 uses
  %.083.lcssa = phi i32 [ 0, %Vec_IntFill.exit._crit_edge ], [ %.083.lcssa.ph, %.sink.split ]
  %.not.i129 = icmp eq ptr %i.dx, null
  br i1 %.not.i129, label %Vec_IntFree.exit130, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @free(ptr noundef nonnull %i.dx) #20
  br label %Vec_IntFree.exit130

Vec_IntFree.exit130:                              ; preds = %bb.at, %bb.au
  tail call void @free(ptr noundef nonnull %i.b) #20
  %i.dy = add nsw i32 %.083.lcssa, %.081.lcssa
  br label %bb.av

bb.av:                                            ; preds = %Vec_IntFree.exit130, %Vec_IntFree.exit128, %Vec_IntFree.exit118, %Vec_IntFree.exit
  %.090 = phi i32 [ 1, %Vec_IntFree.exit ], [ %i.dy, %Vec_IntFree.exit130 ], [ 1, %Vec_IntFree.exit128 ], [ 1, %Vec_IntFree.exit118 ]
  ret i32 %.090
}

declare i32 @sat_solver_nvars(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @Pdr_InvCheck(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Mf_ManGenerateCnf(ptr noundef %0, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #20 ; 2 uses
  %i.b = tail call ptr @Cnf_DataWriteIntoSolver(ptr noundef %i.a, i32 noundef 1, i32 noundef 0) #20 ; 2 uses
  tail call void @Cnf_DataFree(ptr noundef %i.a) #20
  %i.c = tail call i32 @Pdr_InvCheck_int(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.b, i32 noundef 0)
  tail call void @sat_solver_delete(ptr noundef %i.b) #20
  ret i32 %i.c
}

declare ptr @Mf_ManGenerateCnf(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Cnf_DataWriteIntoSolver(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @Cnf_DataFree(ptr noundef) local_unnamed_addr #3

declare void @sat_solver_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Pdr_InvMinimize(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #20
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !118
  %.neg249 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !120
  %.neg = sdiv i64 %i.e, -1000
  %.neg250 = add i64 %.neg, %.neg249
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg250, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.f = call ptr @Mf_ManGenerateCnf(ptr noundef %0, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #20 ; 3 uses
  %i.g = call ptr @Cnf_DataWriteIntoSolver(ptr noundef %i.f, i32 noundef 1, i32 noundef 0) #20 ; 7 uses
  %i.h = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %.val173 = load ptr, ptr %i.h, align 8, !tbaa !42 ; 9 uses
  %i.i = load i32, ptr %.val173, align 4, !tbaa !43 ; 7 uses
  %i.j = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 14 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 9 uses
  store i32 0, ptr %i.k, align 4, !tbaa !40
  store i32 100, ptr %i.j, align 8, !tbaa !72
  %i.l = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #22 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 7 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !42
  %i.n = ashr i32 %i.i, 5
  %i.o = and i32 %i.i, 31
  %i.p = icmp ne i32 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = add nsw i32 %i.n, %i.q                   ; 3 uses
  %i.s = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 4 uses
  %i.t = shl nsw i32 %i.r, 5                      ; 2 uses
  store i32 %i.t, ptr %i.s, align 8, !tbaa !168
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %Vec_BitStart.exit, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.u = sext i32 %i.r to i64
  %i.v = shl nsw i64 %i.u, 2                      ; 2 uses
  %i.w = call noalias ptr @malloc(i64 noundef %i.v) #22
  br label %Vec_BitStart.exit

Vec_BitStart.exit:                                ; preds = %Abc_Clock.exit, %bb.c
  %.pre-phi8.i = phi i64 [ %i.v, %bb.c ], [ 0, %Abc_Clock.exit ]
  %i.x = phi ptr [ %i.w, %bb.c ], [ null, %Abc_Clock.exit ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  store ptr %i.x, ptr %i.z, align 8, !tbaa !170
  store i32 %i.t, ptr %i.y, align 4, !tbaa !171
  call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 0, i64 %.pre-phi8.i, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !172
  %i.ac = getelementptr i8, ptr %0, i64 16        ; 4 uses
  %.val176 = load i32, ptr %i.ac, align 8, !tbaa !151 ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 72        ; 4 uses
  %.val182 = load ptr, ptr %i.ad, align 8, !tbaa !162
  %i.ae = getelementptr i8, ptr %.val182, i64 4
  %.val182.val = load i32, ptr %i.ae, align 4, !tbaa !40
  %i.af = sub nsw i32 %.val182.val, %.val176
  %i.ag = call i32 @sat_solver_nvars(ptr noundef %i.g) #20 ; 2 uses
  %i.ah = call i32 @sat_solver_nvars(ptr noundef %i.g) #20
  %i.ai = add nsw i32 %i.ah, %i.i
  call void @sat_solver_setnvars(ptr noundef %i.g, i32 noundef %i.ai) #20
  %i.aj = getelementptr inbounds nuw i8, ptr %.val173, i64 4 ; 3 uses
  %i.ak = load i32, ptr %.val173, align 4, !tbaa !43
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph277, label %.critedge167.thread

.lr.ph277:                                        ; preds = %Vec_BitStart.exit
  %i.am = sub nsw i32 %i.ab, %.val176
  %i.an = shl i32 %i.am, 1
  br label %bb.d

.preheader257:                                    ; preds = %bb.m
  %i.ao = icmp slt i32 %i.ca, 1
  br i1 %i.ao, label %.critedge167.thread, label %.lr.ph301

.lr.ph301:                                        ; preds = %.preheader257
  %i.ap = icmp sgt i32 %i.i, 0
  %i.aq = shl i32 %i.af, 1
  %i.ar = add i32 %i.aq, 2
  %.not158 = icmp eq i32 %2, 0
  br label %bb.n

bb.d:                                             ; preds = %.lr.ph277, %bb.m
  %.val172350 = phi ptr [ %i.l, %.lr.ph277 ], [ %.val172, %bb.m ] ; 3 uses
  %.0276 = phi ptr [ %i.aj, %.lr.ph277 ], [ %i.bz, %bb.m ] ; 5 uses
  %.0148275 = phi i32 [ 0, %.lr.ph277 ], [ %i.bv, %bb.m ] ; 2 uses
  %i.as = add nsw i32 %.0148275, %i.ag
  %i.at = shl nsw i32 %i.as, 1
  %i.au = or disjoint i32 %i.at, 1
  %i.av = load i32, ptr %i.j, align 8, !tbaa !72
  %.not.i.i194 = icmp slt i32 %i.av, 1
  br i1 %.not.i.i194, label %bb.e, label %Vec_IntFill.exit

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %.val172350, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = call dereferenceable_or_null(4) ptr @realloc(ptr noundef nonnull %.val172350, i64 noundef 4) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ax = call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ay = phi ptr [ %i.aw, %bb.f ], [ %i.ax, %bb.g ] ; 2 uses
  store ptr %i.ay, ptr %i.m, align 8, !tbaa !42
  store i32 1, ptr %i.j, align 8, !tbaa !72
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %bb.d, %bb.h
  %.val172349 = phi ptr [ %i.ay, %bb.h ], [ %.val172350, %bb.d ] ; 3 uses
  store i32 %i.au, ptr %.val172349, align 4, !tbaa !43
  store i32 1, ptr %i.k, align 4, !tbaa !40
  %i.az = load i32, ptr %.0276, align 4, !tbaa !43
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph, label %bb.m

.lr.ph:                                           ; preds = %Vec_IntFill.exit
  %.promoted269 = load i32, ptr %i.j, align 8, !tbaa !72
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv330 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next331, %Vec_IntPush.exit ]
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 7 uses
  %storemerge253273 = phi ptr [ %.val172349, %.lr.ph ], [ %storemerge253274, %Vec_IntPush.exit ] ; 3 uses
  %spec.select.sink.i271 = phi i32 [ %.promoted269, %.lr.ph ], [ %spec.select.sink.i270, %Vec_IntPush.exit ] ; 3 uses
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1 ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.0276, i64 %indvars.iv.next331
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !43
  %i.bd = add i32 %i.bc, %i.an
  %i.be = xor i32 %i.bd, 1
  %i.bf = trunc nsw i64 %indvars.iv to i32
  %i.bg = icmp eq i32 %spec.select.sink.i271, %i.bf
  br i1 %i.bg, label %bb.j, label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.bh, label %Vec_IntPush.exit.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.bj = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.bi, i32 %i.bj, i32 2147483647 ; 3 uses
  %i.bk = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.bk
  br i1 %.not.i9.i, label %bb.l, label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.k
  %i.bl = zext nneg i32 %spec.select.i to i64
  %i.bm = shl nuw nsw i64 %i.bl, 2
  br label %Vec_IntPush.exit.sink.split

Vec_IntPush.exit.sink.split:                      ; preds = %bb.j, %bb.l
  %.sink = phi i64 [ %i.bm, %bb.l ], [ 64, %bb.j ]
  %spec.select.sink.i270.ph = phi i32 [ %spec.select.i, %bb.l ], [ 16, %bb.j ]
  %i.bn = call ptr @realloc(ptr noundef nonnull %storemerge253273, i64 noundef %.sink) #23
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_IntPush.exit.sink.split, %bb.i, %bb.k
  %storemerge253274 = phi ptr [ %storemerge253273, %bb.i ], [ %storemerge253273, %bb.k ], [ %i.bn, %Vec_IntPush.exit.sink.split ] ; 4 uses
  %spec.select.sink.i270 = phi i32 [ %spec.select.sink.i271, %bb.i ], [ %spec.select.sink.i271, %bb.k ], [ %spec.select.sink.i270.ph, %Vec_IntPush.exit.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %storemerge253274, i64 %indvars.iv
  store i32 %i.be, ptr %i.bo, align 4, !tbaa !43
  %i.bp = load i32, ptr %.0276, align 4, !tbaa !43
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp slt i64 %indvars.iv.next331, %i.bq
  br i1 %i.br, label %bb.i, label %._crit_edge, !llvm.loop !174

._crit_edge:                                      ; preds = %Vec_IntPush.exit
  %i.bs = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.bs, ptr %i.k, align 4, !tbaa !40
  store i32 %spec.select.sink.i270, ptr %i.j, align 8
  store ptr %storemerge253274, ptr %i.m, align 8
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %Vec_IntFill.exit
  %.val187 = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 1, %Vec_IntFill.exit ]
  %.val172 = phi ptr [ %storemerge253274, %._crit_edge ], [ %.val172349, %Vec_IntFill.exit ] ; 7 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %.val172, i64 %.val187
  %i.bu = call i32 @sat_solver_addclause(ptr noundef %i.g, ptr noundef nonnull %.val172, ptr noundef nonnull %i.bt) #20 ; 0 uses
  %i.bv = add nuw nsw i32 %.0148275, 1            ; 2 uses
  %i.bw = load i32, ptr %.0276, align 4, !tbaa !43
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr [4 x i8], ptr %.0276, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %.val173, align 4, !tbaa !43 ; 2 uses
  %i.cb = icmp slt i32 %i.bv, %i.ca
  br i1 %i.cb, label %bb.d, label %.preheader257, !llvm.loop !175

bb.n:                                             ; preds = %.lr.ph301, %.loopexit255
  %.val170364 = phi ptr [ %.val172, %.lr.ph301 ], [ %.val170365, %.loopexit255 ] ; 3 uses
  %i.cc = phi ptr [ %.val172, %.lr.ph301 ], [ %i.hd, %.loopexit255 ] ; 3 uses
  %i.cd = phi ptr [ %.val172, %.lr.ph301 ], [ %i.he, %.loopexit255 ] ; 3 uses
  %i.ce = phi ptr [ %.val172, %.lr.ph301 ], [ %i.hf, %.loopexit255 ] ; 3 uses
  %.0135299 = phi i32 [ 0, %.lr.ph301 ], [ %.1136, %.loopexit255 ] ; 6 uses
  %.1149297 = phi i32 [ 0, %.lr.ph301 ], [ %i.hg, %.loopexit255 ] ; 6 uses
  %i.cf = lshr i32 %.1149297, 5
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cg ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !43
  %i.cj = and i32 %.1149297, 31
  %i.ck = shl nuw i32 1, %i.cj                    ; 2 uses
  %i.cl = and i32 %i.ci, %i.ck
  %.not = icmp eq i32 %i.cl, 0
  br i1 %.not, label %bb.o, label %.loopexit255

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.k, align 4, !tbaa !40
  br i1 %i.ap, label %.lr.ph280, label %._crit_edge281.thread

.lr.ph280:                                        ; preds = %bb.o, %bb.z
  %.val170363 = phi ptr [ %.val170362, %bb.z ], [ %.val170364, %bb.o ] ; 4 uses
  %i.cm = phi ptr [ %i.dp, %bb.z ], [ %i.cc, %bb.o ] ; 4 uses
  %i.cn = phi ptr [ %i.dq, %bb.z ], [ %i.cd, %bb.o ] ; 4 uses
  %i.co = phi ptr [ %i.dr, %bb.z ], [ %i.ce, %bb.o ] ; 6 uses
  %i.cp = phi i32 [ %.fr, %bb.z ], [ 0, %bb.o ]   ; 9 uses
  %.1144278 = phi i32 [ %i.ds, %bb.z ], [ 0, %bb.o ] ; 5 uses
  %.not162 = icmp eq i32 %.1144278, %.1149297
  br i1 %.not162, label %bb.z, label %bb.p

bb.p:                                             ; preds = %.lr.ph280
  %i.cq = lshr i32 %.1144278, 5
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !43
  %i.cu = and i32 %.1144278, 31
  %i.cv = shl nuw i32 1, %i.cu
  %i.cw = and i32 %i.ct, %i.cv
  %.not163 = icmp eq i32 %i.cw, 0
  br i1 %.not163, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.cx = add nsw i32 %.1144278, %i.ag
  %i.cy = shl nsw i32 %i.cx, 1
  %i.cz = load i32, ptr %i.j, align 8, !tbaa !72
  %i.da = icmp eq i32 %i.cp, %i.cz
  br i1 %i.da, label %bb.r, label %Vec_IntPush.exit203

bb.r:                                             ; preds = %bb.q
  %i.db = icmp slt i32 %i.cp, 16
  br i1 %i.db, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %.not9.i.i201 = icmp eq ptr %i.co, null
  br i1 %.not9.i.i201, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.co, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i199

bb.u:                                             ; preds = %bb.s
  %i.dd = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i199

bb.v:                                             ; preds = %bb.r
  %i.de = icmp samesign ult i32 %i.cp, 1073741823
  %i.df = shl nuw nsw i32 %i.cp, 1
  %spec.select.i196 = select i1 %i.de, i32 %i.df, i32 2147483647 ; 4 uses
  %.not.i9.i197 = icmp samesign ult i32 %i.cp, %spec.select.i196
  br i1 %.not.i9.i197, label %bb.w, label %Vec_IntPush.exit203

bb.w:                                             ; preds = %bb.v
  %.not9.i10.i198 = icmp eq ptr %i.co, null
  %i.dg = zext nneg i32 %spec.select.i196 to i64
  %i.dh = shl nuw nsw i64 %i.dg, 2                ; 2 uses
  br i1 %.not9.i10.i198, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.di = call ptr @realloc(ptr noundef nonnull %i.co, i64 noundef %i.dh) #23
  br label %Vec_IntGrow.exit11.sink.split.i199

bb.y:                                             ; preds = %bb.w
  %i.dj = call noalias ptr @malloc(i64 noundef %i.dh) #22
  br label %Vec_IntGrow.exit11.sink.split.i199

Vec_IntGrow.exit11.sink.split.i199:               ; preds = %bb.x, %bb.y, %bb.t, %bb.u
  %storemerge248 = phi ptr [ %i.dd, %bb.u ], [ %i.dc, %bb.t ], [ %i.di, %bb.x ], [ %i.dj, %bb.y ] ; 4 uses
  %spec.select.sink.i200 = phi i32 [ 16, %bb.u ], [ 16, %bb.t ], [ %spec.select.i196, %bb.x ], [ %spec.select.i196, %bb.y ]
  store ptr %storemerge248, ptr %i.m, align 8, !tbaa !42
  store i32 %spec.select.sink.i200, ptr %i.j, align 8, !tbaa !72
  br label %Vec_IntPush.exit203

Vec_IntPush.exit203:                              ; preds = %bb.q, %bb.v, %Vec_IntGrow.exit11.sink.split.i199
  %.val170361 = phi ptr [ %.val170363, %bb.q ], [ %.val170363, %bb.v ], [ %storemerge248, %Vec_IntGrow.exit11.sink.split.i199 ]
  %i.dk = phi ptr [ %i.cm, %bb.q ], [ %i.cm, %bb.v ], [ %storemerge248, %Vec_IntGrow.exit11.sink.split.i199 ]
  %i.dl = phi ptr [ %i.cn, %bb.q ], [ %i.cn, %bb.v ], [ %storemerge248, %Vec_IntGrow.exit11.sink.split.i199 ] ; 3 uses
  %i.dm = add i32 %i.cp, 1                        ; 2 uses
  store i32 %i.dm, ptr %i.k, align 4, !tbaa !40
  %i.dn = sext i32 %i.cp to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.dn
  store i32 %i.cy, ptr %i.do, align 4, !tbaa !43
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph280, %bb.p, %Vec_IntPush.exit203
  %.val170362 = phi ptr [ %.val170363, %.lr.ph280 ], [ %.val170363, %bb.p ], [ %.val170361, %Vec_IntPush.exit203 ] ; 2 uses
  %i.dp = phi ptr [ %i.cm, %.lr.ph280 ], [ %i.cm, %bb.p ], [ %i.dk, %Vec_IntPush.exit203 ] ; 2 uses
  %i.dq = phi ptr [ %i.cn, %.lr.ph280 ], [ %i.cn, %bb.p ], [ %i.dl, %Vec_IntPush.exit203 ] ; 2 uses
  %i.dr = phi ptr [ %i.co, %.lr.ph280 ], [ %i.co, %bb.p ], [ %i.dl, %Vec_IntPush.exit203 ] ; 2 uses
  %.fr = phi i32 [ %i.cp, %.lr.ph280 ], [ %i.cp, %bb.p ], [ %i.dm, %Vec_IntPush.exit203 ] ; 5 uses
  %i.ds = add nuw nsw i32 %.1144278, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ds, %i.i
  br i1 %exitcond.not, label %._crit_edge281, label %.lr.ph280, !llvm.loop !176

._crit_edge281:                                   ; preds = %bb.z
  %i.dt = icmp slt i32 %.fr, 16
  %i.du = icmp ult i32 %.fr, 1073741823
  %i.dv = shl nuw nsw i32 %.fr, 1
  %spec.select = select i1 %i.du, i32 %i.dv, i32 2147483647
  br label %._crit_edge281.thread

._crit_edge281.thread:                            ; preds = %._crit_edge281, %bb.o
  %i.dw = phi i1 [ %i.dt, %._crit_edge281 ], [ true, %bb.o ]
  %i.dx = phi ptr [ %i.dr, %._crit_edge281 ], [ %i.ce, %bb.o ]
  %i.dy = phi ptr [ %i.dq, %._crit_edge281 ], [ %i.cd, %bb.o ] ; 2 uses
  %.promoted286410 = phi i32 [ %.fr, %._crit_edge281 ], [ 0, %bb.o ] ; 6 uses
  %i.dz = phi ptr [ %i.dp, %._crit_edge281 ], [ %i.cc, %bb.o ] ; 2 uses
  %.val170360408 = phi ptr [ %.val170362, %._crit_edge281 ], [ %.val170364, %bb.o ] ; 2 uses
  %i.ea = phi i32 [ %spec.select, %._crit_edge281 ], [ 0, %bb.o ] ; 4 uses
  %.not.i9.i205 = icmp samesign ult i32 %.promoted286410, %i.ea
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = shl nuw nsw i64 %i.eb, 2                ; 2 uses
  %i.ed = add nsw i32 %.promoted286410, 1         ; 2 uses
  %i.ee = sext i32 %.promoted286410 to i64        ; 3 uses
  %i.ef = sext i32 %i.ed to i64
  %.val179480 = load i32, ptr %i.ac, align 8, !tbaa !151
  %.val180481 = load ptr, ptr %i.ad, align 8, !tbaa !162
  %i.eg = getelementptr i8, ptr %.val180481, i64 4
  %.val180.val482 = load i32, ptr %i.eg, align 4, !tbaa !40
  %i.eh = icmp sgt i32 %.val180.val482, %.val179480
  br i1 %i.eh, label %.lr.ph485, label %.preheader254

bb.aa:                                            ; preds = %Vec_IntPush.exit211
  %.val179 = load i32, ptr %i.ac, align 8, !tbaa !151
  %.val180 = load ptr, ptr %i.ad, align 8, !tbaa !162
  %i.ei = getelementptr i8, ptr %.val180, i64 4
  %.val180.val = load i32, ptr %i.ei, align 4, !tbaa !40
  %i.ej = sub nsw i32 %.val180.val, %.val179
  %i.ek = icmp slt i32 %i.en, %i.ej
  br i1 %i.ek, label %.lr.ph485, label %.preheader254, !llvm.loop !177

.lr.ph485:                                        ; preds = %._crit_edge281.thread, %bb.aa
  %.2145484 = phi i32 [ %i.en, %bb.aa ], [ 0, %._crit_edge281.thread ] ; 2 uses
  %i.el = phi ptr [ %i.ev, %bb.aa ], [ %i.dy, %._crit_edge281.thread ] ; 4 uses
  %i.em = phi ptr [ %i.ev, %bb.aa ], [ %i.dz, %._crit_edge281.thread ] ; 2 uses
  %.val170359483 = phi ptr [ %.val170358, %bb.aa ], [ %.val170360408, %._crit_edge281.thread ] ; 2 uses
  store i32 %.promoted286410, ptr %i.k, align 4, !tbaa !40
  %i.en = add nuw nsw i32 %.2145484, 1            ; 3 uses
  %i.eo = shl nuw nsw i32 %i.en, 1
  %i.ep = load i32, ptr %i.j, align 8, !tbaa !72
  %i.eq = icmp eq i32 %.promoted286410, %i.ep
  br i1 %i.eq, label %bb.ab, label %Vec_IntPush.exit211

bb.ab:                                            ; preds = %.lr.ph485
  br i1 %i.dw, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %.not9.i.i209 = icmp eq ptr %i.el, null
  br i1 %.not9.i.i209, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.er = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.el, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i207

bb.ae:                                            ; preds = %bb.ac
  %i.es = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i207

bb.af:                                            ; preds = %bb.ab
  br i1 %.not.i9.i205, label %bb.ag, label %Vec_IntPush.exit211

bb.ag:                                            ; preds = %bb.af
  %.not9.i10.i206 = icmp eq ptr %i.el, null
  br i1 %.not9.i10.i206, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.et = call ptr @realloc(ptr noundef nonnull %i.el, i64 noundef %i.ec) #23
  br label %Vec_IntGrow.exit11.sink.split.i207

bb.ai:                                            ; preds = %bb.ag
  %i.eu = call noalias ptr @malloc(i64 noundef %i.ec) #22
  br label %Vec_IntGrow.exit11.sink.split.i207

Vec_IntGrow.exit11.sink.split.i207:               ; preds = %bb.ah, %bb.ai, %bb.ad, %bb.ae
  %storemerge = phi ptr [ %i.es, %bb.ae ], [ %i.er, %bb.ad ], [ %i.et, %bb.ah ], [ %i.eu, %bb.ai ] ; 3 uses
  %spec.select.sink.i208 = phi i32 [ 16, %bb.ae ], [ 16, %bb.ad ], [ %i.ea, %bb.ah ], [ %i.ea, %bb.ai ]
  store ptr %storemerge, ptr %i.m, align 8, !tbaa !42
  store i32 %spec.select.sink.i208, ptr %i.j, align 8, !tbaa !72
  br label %Vec_IntPush.exit211

Vec_IntPush.exit211:                              ; preds = %.lr.ph485, %bb.af, %Vec_IntGrow.exit11.sink.split.i207
  %.val170358 = phi ptr [ %.val170359483, %.lr.ph485 ], [ %.val170359483, %bb.af ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i207 ] ; 4 uses
  %i.ev = phi ptr [ %i.em, %.lr.ph485 ], [ %i.em, %bb.af ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i207 ] ; 14 uses
  store i32 %i.ed, ptr %i.k, align 4, !tbaa !40
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.ee
  store i32 %i.eo, ptr %i.ew, align 4, !tbaa !43
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.ef
  %i.ey = call i32 @sat_solver_solve(ptr noundef %i.g, ptr noundef %i.ev, ptr noundef %i.ex, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #20
  switch i32 %i.ey, label %bb.aa [
    i32 0, label %.critedge167
    i32 1, label %.critedge
  ], !llvm.loop !177

.critedge:                                        ; preds = %Vec_IntPush.exit211
  %.val177.pre = load i32, ptr %i.ac, align 8, !tbaa !151
  %.val178.pre = load ptr, ptr %i.ad, align 8, !tbaa !162
  %.phi.trans.insert = getelementptr i8, ptr %.val178.pre, i64 4
  %.val178.val.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !40
  %.pre380 = sub nsw i32 %.val178.val.pre, %.val177.pre
  %i.ez = icmp slt i32 %.2145484, %.pre380
  br i1 %i.ez, label %.loopexit255, label %.preheader254

.preheader254:                                    ; preds = %bb.aa, %._crit_edge281.thread, %.critedge
  %i.fa = phi ptr [ %i.ev, %.critedge ], [ %i.dx, %._crit_edge281.thread ], [ %i.ev, %bb.aa ] ; 2 uses
  %i.fb = phi ptr [ %i.ev, %.critedge ], [ %i.dy, %._crit_edge281.thread ], [ %i.ev, %bb.aa ] ; 2 uses
  %i.fc = phi ptr [ %i.ev, %.critedge ], [ %i.dz, %._crit_edge281.thread ], [ %i.ev, %bb.aa ] ; 2 uses
  %.val170357414 = phi ptr [ %.val170358, %.critedge ], [ %.val170360408, %._crit_edge281.thread ], [ %.val170358, %bb.aa ] ; 2 uses
  %i.fd = load i32, ptr %.val173, align 4, !tbaa !43 ; 2 uses
  %i.fe = icmp sgt i32 %i.fd, 0
  br i1 %i.fe, label %.lr.ph296, label %.critedge169

.lr.ph296:                                        ; preds = %.preheader254, %bb.au
  %i.ff = phi i32 [ %i.gn, %bb.au ], [ %i.fd, %.preheader254 ]
  %.val170367 = phi ptr [ %.val170368, %bb.au ], [ %.val170357414, %.preheader254 ] ; 2 uses
  %.promoted291 = phi ptr [ %i.go, %bb.au ], [ %i.fc, %.preheader254 ] ; 2 uses
  %i.fg = phi ptr [ %i.gp, %bb.au ], [ %i.fb, %.preheader254 ]
  %i.fh = phi ptr [ %i.gq, %bb.au ], [ %i.fa, %.preheader254 ]
  %.2295 = phi ptr [ %i.gv, %bb.au ], [ %i.aj, %.preheader254 ] ; 5 uses
  %.0151294 = phi i32 [ %i.gr, %bb.au ], [ 0, %.preheader254 ] ; 4 uses
  %i.fi = lshr i32 %.0151294, 5
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !43
  %i.fm = and i32 %.0151294, 31
  %i.fn = lshr i32 %i.fl, %i.fm
  %.not155 = trunc i32 %i.fn to i1
  %i.fo = icmp eq i32 %.0151294, %.1149297
  %or.cond165 = or i1 %i.fo, %.not155
  br i1 %or.cond165, label %bb.au, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph296
  store i32 %.promoted286410, ptr %i.k, align 4, !tbaa !40
  %i.fp = load i32, ptr %.2295, align 4, !tbaa !43
  %i.fq = icmp sgt i32 %i.fp, 0
  br i1 %i.fq, label %.lr.ph284, label %bb.at

.lr.ph284:                                        ; preds = %bb.aj
  %.promoted288 = load i32, ptr %i.j, align 8, !tbaa !72
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph284, %Vec_IntPush.exit219
  %indvars.iv337 = phi i64 [ 0, %.lr.ph284 ], [ %indvars.iv.next338, %Vec_IntPush.exit219 ]
  %indvars.iv335 = phi i64 [ %i.ee, %.lr.ph284 ], [ %indvars.iv.next336, %Vec_IntPush.exit219 ] ; 7 uses
  %storemerge247292 = phi ptr [ %.promoted291, %.lr.ph284 ], [ %storemerge247293, %Vec_IntPush.exit219 ] ; 6 uses
  %spec.select.sink.i216290 = phi i32 [ %.promoted288, %.lr.ph284 ], [ %spec.select.sink.i216289, %Vec_IntPush.exit219 ] ; 3 uses
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1 ; 3 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.2295, i64 %indvars.iv.next338
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !43
  %i.ft = add i32 %i.ar, %i.fs
  %i.fu = trunc nsw i64 %indvars.iv335 to i32
  %i.fv = icmp eq i32 %spec.select.sink.i216290, %i.fu
  br i1 %i.fv, label %bb.al, label %Vec_IntPush.exit219

bb.al:                                            ; preds = %bb.ak
  %i.fw = icmp slt i64 %indvars.iv335, 16
  br i1 %i.fw, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %.not9.i.i217 = icmp eq ptr %storemerge247292, null
  br i1 %.not9.i.i217, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fx = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge247292, i64 noundef 64) #23
  br label %Vec_IntPush.exit219

bb.ao:                                            ; preds = %bb.am
  %i.fy = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntPush.exit219

bb.ap:                                            ; preds = %bb.al
  %i.fz = icmp samesign ult i64 %indvars.iv335, 1073741823
  %indvars.iv335.tr = trunc i64 %indvars.iv335 to i32
  %i.ga = shl nsw i32 %indvars.iv335.tr, 1
  %spec.select.i212 = select i1 %i.fz, i32 %i.ga, i32 2147483647 ; 4 uses
  %i.gb = sext i32 %spec.select.i212 to i64
  %.not.i9.i213 = icmp samesign ult i64 %indvars.iv335, %i.gb
  br i1 %.not.i9.i213, label %bb.aq, label %Vec_IntPush.exit219

bb.aq:                                            ; preds = %bb.ap
  %.not9.i10.i214 = icmp eq ptr %storemerge247292, null
  %i.gc = zext nneg i32 %spec.select.i212 to i64
  %i.gd = shl nuw nsw i64 %i.gc, 2                ; 2 uses
  br i1 %.not9.i10.i214, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ge = call ptr @realloc(ptr noundef nonnull %storemerge247292, i64 noundef %i.gd) #23
  br label %Vec_IntPush.exit219

bb.as:                                            ; preds = %bb.aq
  %i.gf = call noalias ptr @malloc(i64 noundef %i.gd) #22
  br label %Vec_IntPush.exit219

Vec_IntPush.exit219:                              ; preds = %bb.ao, %bb.an, %bb.as, %bb.ar, %bb.ak, %bb.ap
  %storemerge247293 = phi ptr [ %storemerge247292, %bb.ak ], [ %storemerge247292, %bb.ap ], [ %i.fy, %bb.ao ], [ %i.fx, %bb.an ], [ %i.ge, %bb.ar ], [ %i.gf, %bb.as ] ; 4 uses
  %spec.select.sink.i216289 = phi i32 [ %spec.select.sink.i216290, %bb.ak ], [ %spec.select.sink.i216290, %bb.ap ], [ 16, %bb.ao ], [ 16, %bb.an ], [ %spec.select.i212, %bb.ar ], [ %spec.select.i212, %bb.as ] ; 2 uses
  %indvars.iv.next336 = add nsw i64 %indvars.iv335, 1 ; 3 uses
  %i.gg = getelementptr inbounds [4 x i8], ptr %storemerge247293, i64 %indvars.iv335
  store i32 %i.ft, ptr %i.gg, align 4, !tbaa !43
  %i.gh = load i32, ptr %.2295, align 4, !tbaa !43
  %i.gi = sext i32 %i.gh to i64
  %i.gj = icmp slt i64 %indvars.iv.next338, %i.gi
  br i1 %i.gj, label %bb.ak, label %._crit_edge285, !llvm.loop !178

._crit_edge285:                                   ; preds = %Vec_IntPush.exit219
  %i.gk = trunc nsw i64 %indvars.iv.next336 to i32
  store i32 %i.gk, ptr %i.k, align 4, !tbaa !40
  store i32 %spec.select.sink.i216289, ptr %i.j, align 8
  store ptr %storemerge247293, ptr %i.m, align 8
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge285, %bb.aj
  %.pre-phi382 = phi i64 [ %indvars.iv.next336, %._crit_edge285 ], [ %i.ee, %bb.aj ]
  %.val170 = phi ptr [ %storemerge247293, %._crit_edge285 ], [ %.val170367, %bb.aj ] ; 10 uses
  %i.gl = getelementptr inbounds [4 x i8], ptr %.val170, i64 %.pre-phi382
  %i.gm = call i32 @sat_solver_solve(ptr noundef %i.g, ptr noundef %.val170, ptr noundef %i.gl, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #20
  switch i32 %i.gm, label %.loopexit255 [
    i32 0, label %.critedge167
    i32 -1, label %._crit_edge371
  ]

._crit_edge371:                                   ; preds = %bb.at
  %.pre = load i32, ptr %.val173, align 4, !tbaa !43
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge371, %.lr.ph296
  %i.gn = phi i32 [ %.pre, %._crit_edge371 ], [ %i.ff, %.lr.ph296 ] ; 2 uses
  %.val170368 = phi ptr [ %.val170, %._crit_edge371 ], [ %.val170367, %.lr.ph296 ] ; 2 uses
  %i.go = phi ptr [ %.val170, %._crit_edge371 ], [ %.promoted291, %.lr.ph296 ] ; 2 uses
  %i.gp = phi ptr [ %.val170, %._crit_edge371 ], [ %i.fg, %.lr.ph296 ] ; 2 uses
  %i.gq = phi ptr [ %.val170, %._crit_edge371 ], [ %i.fh, %.lr.ph296 ] ; 2 uses
  %i.gr = add nuw nsw i32 %.0151294, 1            ; 2 uses
  %i.gs = load i32, ptr %.2295, align 4, !tbaa !43
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr [4 x i8], ptr %.2295, i64 %i.gt
  %i.gv = getelementptr i8, ptr %i.gu, i64 4
  %i.gw = icmp slt i32 %i.gr, %i.gn
  br i1 %i.gw, label %.lr.ph296, label %.critedge169, !llvm.loop !179

.critedge169:                                     ; preds = %bb.au, %.preheader254
  %.val170366 = phi ptr [ %.val170357414, %.preheader254 ], [ %.val170368, %bb.au ]
  %i.gx = phi ptr [ %i.fc, %.preheader254 ], [ %i.go, %bb.au ]
  %i.gy = phi ptr [ %i.fb, %.preheader254 ], [ %i.gp, %bb.au ]
  %i.gz = phi ptr [ %i.fa, %.preheader254 ], [ %i.gq, %bb.au ]
  br i1 %.not158, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.critedge169
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.51, i32 noundef %.1149297)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.critedge169
  %i.ha = load i32, ptr %i.ch, align 4, !tbaa !43
  %i.hb = or i32 %i.ha, %i.ck
  store i32 %i.hb, ptr %i.ch, align 4, !tbaa !43
  %i.hc = add nsw i32 %.0135299, 1
  br label %.loopexit255

.loopexit255:                                     ; preds = %bb.at, %.critedge, %bb.n, %bb.aw
  %.val170365 = phi ptr [ %.val170364, %bb.n ], [ %.val170358, %.critedge ], [ %.val170366, %bb.aw ], [ %.val170, %bb.at ]
  %i.hd = phi ptr [ %i.cc, %bb.n ], [ %i.ev, %.critedge ], [ %i.gx, %bb.aw ], [ %.val170, %bb.at ]
  %i.he = phi ptr [ %i.cd, %bb.n ], [ %i.ev, %.critedge ], [ %i.gy, %bb.aw ], [ %.val170, %bb.at ]
  %i.hf = phi ptr [ %i.ce, %bb.n ], [ %i.ev, %.critedge ], [ %i.gz, %bb.aw ], [ %.val170, %bb.at ]
  %.1136 = phi i32 [ %.0135299, %bb.n ], [ %.0135299, %.critedge ], [ %i.hc, %bb.aw ], [ %.0135299, %bb.at ] ; 2 uses
  %i.hg = add nuw nsw i32 %.1149297, 1            ; 2 uses
  %i.hh = load i32, ptr %.val173, align 4, !tbaa !43
  %.not319 = icmp slt i32 %i.hg, %i.hh
  br i1 %.not319, label %bb.n, label %.critedge167, !llvm.loop !180

.critedge167:                                     ; preds = %.loopexit255, %Vec_IntPush.exit211, %bb.at
  %.0135266 = phi i32 [ %.0135299, %Vec_IntPush.exit211 ], [ %.0135299, %bb.at ], [ %.1136, %.loopexit255 ] ; 3 uses
  %i.hi = phi i1 [ false, %Vec_IntPush.exit211 ], [ false, %bb.at ], [ true, %.loopexit255 ] ; 2 uses
  %.not159 = icmp eq i32 %.0135266, 0
  br i1 %.not159, label %.critedge167.thread, label %bb.ax

bb.ax:                                            ; preds = %.critedge167
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.52, i32 noundef %.0135266, i32 noundef %i.i)
  br label %bb.ay

.critedge167.thread:                              ; preds = %Vec_BitStart.exit, %.preheader257, %.critedge167
  %i.hj = phi i1 [ %i.hi, %.critedge167 ], [ true, %.preheader257 ], [ true, %Vec_BitStart.exit ]
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.53)
  br label %bb.ay

bb.ay:                                            ; preds = %.critedge167.thread, %bb.ax
  %i.hk = phi i1 [ %i.hj, %.critedge167.thread ], [ %i.hi, %bb.ax ]
  %.0135266417 = phi i32 [ 0, %.critedge167.thread ], [ %.0135266, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.hl = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #20
  %i.hm = icmp slt i32 %i.hl, 0
  br i1 %i.hm, label %Abc_Clock.exit221, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hn = load i64, ptr %3, align 8, !tbaa !118
  %i.ho = mul nsw i64 %i.hn, 1000000
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !120
  %i.hr = sdiv i64 %i.hq, 1000
  %i.hs = add nsw i64 %i.hr, %i.ho
  br label %Abc_Clock.exit221

Abc_Clock.exit221:                                ; preds = %bb.ay, %bb.az
  %.0.i220 = phi i64 [ %i.hs, %bb.az ], [ -1, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ht = add i64 %.0.i220, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.5)
  %i.hu = sitofp i64 %i.ht to double
  %i.hv = fdiv double %i.hu, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.59, double noundef %i.hv)
  %i.hw = icmp sgt i32 %.0135266417, 0
  %or.cond = and i1 %i.hk, %i.hw
  br i1 %or.cond, label %Vec_IntPush.exit229, label %bb.br

Vec_IntPush.exit229:                              ; preds = %Abc_Clock.exit221
  %i.hx = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 6 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4 ; 3 uses
  store i32 1000, ptr %i.hx, align 8, !tbaa !72
  %i.hz = call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #22 ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 3 uses
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !42
  %i.ib = sub nsw i32 %i.i, %.0135266417
  store i32 1, ptr %i.hy, align 4, !tbaa !40
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !43
  %i.ic = load i32, ptr %.val173, align 4, !tbaa !43 ; 2 uses
  %i.id = icmp sgt i32 %i.ic, 0
  br i1 %i.id, label %.lr.ph317, label %._crit_edge318.thread

._crit_edge318.thread:                            ; preds = %Vec_IntPush.exit229
  %i.ie = getelementptr i8, ptr %1, i64 4
  %.val174419 = load i32, ptr %i.ie, align 4, !tbaa !40
  %.val175420 = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.if = sext i32 %.val174419 to i64
  %i.ig = getelementptr [4 x i8], ptr %.val175420, i64 %i.if
  %i.ih = getelementptr i8, ptr %i.ig, i64 -4
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !43
  br label %Vec_IntPush.exit245

.lr.ph317:                                        ; preds = %Vec_IntPush.exit229, %.loopexit
  %i.ij = phi i32 [ %i.jk, %.loopexit ], [ %i.ic, %Vec_IntPush.exit229 ]
  %.promoted312 = phi ptr [ %.promoted312376, %.loopexit ], [ %i.hz, %Vec_IntPush.exit229 ] ; 2 uses
  %.promoted309 = phi i32 [ %.promoted309374, %.loopexit ], [ 1000, %Vec_IntPush.exit229 ] ; 2 uses
  %.promoted307 = phi i32 [ %.promoted307372, %.loopexit ], [ 1, %Vec_IntPush.exit229 ] ; 2 uses
  %.4316 = phi ptr [ %i.jp, %.loopexit ], [ %i.aj, %Vec_IntPush.exit229 ] ; 4 uses
  %.2150315 = phi i32 [ %i.jm, %.loopexit ], [ 0, %Vec_IntPush.exit229 ] ; 3 uses
  %.val189 = load ptr, ptr %i.z, align 8, !tbaa !170
  %i.ik = lshr i32 %.2150315, 5
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.val189, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !43
  %i.io = and i32 %.2150315, 31
  %i.ip = shl nuw i32 1, %i.io
  %i.iq = and i32 %i.in, %i.ip
  %.not160 = icmp ne i32 %i.iq, 0
  %.pre378 = load i32, ptr %.4316, align 4, !tbaa !43 ; 2 uses
  %.not161304 = icmp slt i32 %.pre378, 0
  %or.cond450 = select i1 %.not160, i1 true, i1 %.not161304
  br i1 %or.cond450, label %.loopexit, label %.lr.ph306

.lr.ph306:                                        ; preds = %.lr.ph317
  %i.ir = sext i32 %.promoted307 to i64
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph306, %Vec_IntPush.exit237
  %indvars.iv344 = phi i64 [ 0, %.lr.ph306 ], [ %indvars.iv.next345, %Vec_IntPush.exit237 ] ; 3 uses
  %indvars.iv342 = phi i64 [ %i.ir, %.lr.ph306 ], [ %indvars.iv.next343, %Vec_IntPush.exit237 ] ; 7 uses
  %storemerge252313 = phi ptr [ %.promoted312, %.lr.ph306 ], [ %storemerge252314, %Vec_IntPush.exit237 ] ; 6 uses
  %spec.select.sink.i234311 = phi i32 [ %.promoted309, %.lr.ph306 ], [ %spec.select.sink.i234310, %Vec_IntPush.exit237 ] ; 3 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.4316, i64 %indvars.iv344
  %i.it = load i32, ptr %i.is, align 4, !tbaa !43
  %i.iu = trunc nsw i64 %indvars.iv342 to i32
  %i.iv = icmp eq i32 %spec.select.sink.i234311, %i.iu
  br i1 %i.iv, label %bb.bb, label %Vec_IntPush.exit237

bb.bb:                                            ; preds = %bb.ba
  %i.iw = icmp slt i64 %indvars.iv342, 16
  br i1 %i.iw, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %.not9.i.i235 = icmp eq ptr %storemerge252313, null
  br i1 %.not9.i.i235, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ix = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge252313, i64 noundef 64) #23
  br label %Vec_IntPush.exit237

bb.be:                                            ; preds = %bb.bc
  %i.iy = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntPush.exit237

bb.bf:                                            ; preds = %bb.bb
  %i.iz = icmp samesign ult i64 %indvars.iv342, 1073741823
  %indvars.iv342.tr = trunc i64 %indvars.iv342 to i32
  %i.ja = shl nsw i32 %indvars.iv342.tr, 1
  %spec.select.i230 = select i1 %i.iz, i32 %i.ja, i32 2147483647 ; 4 uses
  %i.jb = sext i32 %spec.select.i230 to i64
  %.not.i9.i231 = icmp samesign ult i64 %indvars.iv342, %i.jb
  br i1 %.not.i9.i231, label %bb.bg, label %Vec_IntPush.exit237

bb.bg:                                            ; preds = %bb.bf
  %.not9.i10.i232 = icmp eq ptr %storemerge252313, null
  %i.jc = zext nneg i32 %spec.select.i230 to i64
  %i.jd = shl nuw nsw i64 %i.jc, 2                ; 2 uses
  br i1 %.not9.i10.i232, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.je = call ptr @realloc(ptr noundef nonnull %storemerge252313, i64 noundef %i.jd) #23
  br label %Vec_IntPush.exit237

bb.bi:                                            ; preds = %bb.bg
  %i.jf = call noalias ptr @malloc(i64 noundef %i.jd) #22
  br label %Vec_IntPush.exit237

Vec_IntPush.exit237:                              ; preds = %bb.be, %bb.bd, %bb.bi, %bb.bh, %bb.ba, %bb.bf
  %storemerge252314 = phi ptr [ %storemerge252313, %bb.ba ], [ %storemerge252313, %bb.bf ], [ %i.iy, %bb.be ], [ %i.ix, %bb.bd ], [ %i.je, %bb.bh ], [ %i.jf, %bb.bi ] ; 4 uses
  %spec.select.sink.i234310 = phi i32 [ %spec.select.sink.i234311, %bb.ba ], [ %spec.select.sink.i234311, %bb.bf ], [ 16, %bb.be ], [ 16, %bb.bd ], [ %spec.select.i230, %bb.bh ], [ %spec.select.i230, %bb.bi ] ; 3 uses
  %indvars.iv.next343 = add nsw i64 %indvars.iv342, 1 ; 2 uses
  %i.jg = getelementptr inbounds [4 x i8], ptr %storemerge252314, i64 %indvars.iv342
  store i32 %i.it, ptr %i.jg, align 4, !tbaa !43
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, 1
  %i.jh = load i32, ptr %.4316, align 4, !tbaa !43 ; 2 uses
  %i.ji = sext i32 %i.jh to i64
  %.not161.not = icmp slt i64 %indvars.iv344, %i.ji
  br i1 %.not161.not, label %bb.ba, label %..loopexit_crit_edge, !llvm.loop !181

..loopexit_crit_edge:                             ; preds = %Vec_IntPush.exit237
  %i.jj = trunc nsw i64 %indvars.iv.next343 to i32 ; 2 uses
  store i32 %i.jj, ptr %i.hy, align 4, !tbaa !40
  store i32 %spec.select.sink.i234310, ptr %i.hx, align 8
  store ptr %storemerge252314, ptr %i.ia, align 8
  %.pre379 = load i32, ptr %.val173, align 4, !tbaa !43
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.lr.ph317
  %i.jk = phi i32 [ %i.ij, %.lr.ph317 ], [ %.pre379, %..loopexit_crit_edge ] ; 2 uses
  %i.jl = phi i32 [ %.pre378, %.lr.ph317 ], [ %i.jh, %..loopexit_crit_edge ]
  %.promoted312376 = phi ptr [ %.promoted312, %.lr.ph317 ], [ %storemerge252314, %..loopexit_crit_edge ] ; 7 uses
  %.promoted309374 = phi i32 [ %.promoted309, %.lr.ph317 ], [ %spec.select.sink.i234310, %..loopexit_crit_edge ] ; 6 uses
  %.promoted307372 = phi i32 [ %.promoted307, %.lr.ph317 ], [ %i.jj, %..loopexit_crit_edge ] ; 5 uses
  %i.jm = add nuw nsw i32 %.2150315, 1            ; 2 uses
  %i.jn = sext i32 %i.jl to i64
  %i.jo = getelementptr [4 x i8], ptr %.4316, i64 %i.jn
  %i.jp = getelementptr i8, ptr %i.jo, i64 4
  %i.jq = icmp slt i32 %i.jm, %i.jk
  br i1 %i.jq, label %.lr.ph317, label %._crit_edge318, !llvm.loop !182

._crit_edge318:                                   ; preds = %.loopexit
  %i.jr = getelementptr i8, ptr %1, i64 4
  %.val174 = load i32, ptr %i.jr, align 4, !tbaa !40
  %.val175 = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.js = sext i32 %.val174 to i64
  %i.jt = getelementptr [4 x i8], ptr %.val175, i64 %i.js
  %i.ju = getelementptr i8, ptr %i.jt, i64 -4
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !43 ; 3 uses
  %i.jw = icmp eq i32 %.promoted307372, %.promoted309374
  br i1 %i.jw, label %bb.bj, label %Vec_IntPush.exit245

bb.bj:                                            ; preds = %._crit_edge318
  %i.jx = icmp slt i32 %.promoted309374, 16
  br i1 %i.jx, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %.not9.i.i243 = icmp eq ptr %.promoted312376, null
  br i1 %.not9.i.i243, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jy = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.promoted312376, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i241

bb.bm:                                            ; preds = %bb.bk
  %i.jz = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i241

bb.bn:                                            ; preds = %bb.bj
  %i.ka = icmp samesign ult i32 %.promoted309374, 1073741823
  %i.kb = shl nuw nsw i32 %.promoted309374, 1
  %spec.select.i238 = select i1 %i.ka, i32 %i.kb, i32 2147483647 ; 4 uses
  %.not.i9.i239 = icmp samesign ult i32 %.promoted309374, %spec.select.i238
  br i1 %.not.i9.i239, label %bb.bo, label %Vec_IntPush.exit245

bb.bo:                                            ; preds = %bb.bn
  %.not9.i10.i240 = icmp eq ptr %.promoted312376, null
  %i.kc = zext nneg i32 %spec.select.i238 to i64
  %i.kd = shl nuw nsw i64 %i.kc, 2                ; 2 uses
  br i1 %.not9.i10.i240, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ke = call ptr @realloc(ptr noundef nonnull %.promoted312376, i64 noundef %i.kd) #23
  br label %Vec_IntGrow.exit11.sink.split.i241

bb.bq:                                            ; preds = %bb.bo
  %i.kf = call noalias ptr @malloc(i64 noundef %i.kd) #22
  br label %Vec_IntGrow.exit11.sink.split.i241

Vec_IntGrow.exit11.sink.split.i241:               ; preds = %bb.bp, %bb.bq, %bb.bl, %bb.bm
  %storemerge251 = phi ptr [ %i.jz, %bb.bm ], [ %i.jy, %bb.bl ], [ %i.ke, %bb.bp ], [ %i.kf, %bb.bq ] ; 2 uses
  %spec.select.sink.i242 = phi i32 [ 16, %bb.bm ], [ 16, %bb.bl ], [ %spec.select.i238, %bb.bp ], [ %spec.select.i238, %bb.bq ]
  store ptr %storemerge251, ptr %i.ia, align 8, !tbaa !42
  store i32 %spec.select.sink.i242, ptr %i.hx, align 8, !tbaa !72
  br label %Vec_IntPush.exit245

Vec_IntPush.exit245:                              ; preds = %._crit_edge318.thread, %._crit_edge318, %bb.bn, %Vec_IntGrow.exit11.sink.split.i241
  %i.kg = phi i32 [ %i.jv, %._crit_edge318 ], [ %i.jv, %bb.bn ], [ %i.jv, %Vec_IntGrow.exit11.sink.split.i241 ], [ %i.ii, %._crit_edge318.thread ]
  %i.kh = phi i32 [ %.promoted307372, %._crit_edge318 ], [ %.promoted307372, %bb.bn ], [ %.promoted307372, %Vec_IntGrow.exit11.sink.split.i241 ], [ 1, %._crit_edge318.thread ] ; 2 uses
  %i.ki = phi ptr [ %.promoted312376, %._crit_edge318 ], [ %.promoted312376, %bb.bn ], [ %storemerge251, %Vec_IntGrow.exit11.sink.split.i241 ], [ %i.hz, %._crit_edge318.thread ]
  %i.kj = add nsw i32 %i.kh, 1
  store i32 %i.kj, ptr %i.hy, align 4, !tbaa !40
  %i.kk = sext i32 %i.kh to i64
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.kk
  store i32 %i.kg, ptr %i.kl, align 4, !tbaa !43
  br label %bb.br

bb.br:                                            ; preds = %Vec_IntPush.exit245, %Abc_Clock.exit221
  %.0134 = phi ptr [ %i.hx, %Vec_IntPush.exit245 ], [ null, %Abc_Clock.exit221 ]
  call void @Cnf_DataFree(ptr noundef %i.f) #20
  call void @sat_solver_delete(ptr noundef %i.g) #20
  %i.km = load ptr, ptr %i.z, align 8, !tbaa !170 ; 2 uses
  %.not.i = icmp eq ptr %i.km, null
  br i1 %.not.i, label %Vec_BitFree.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @free(ptr noundef nonnull %i.km) #20
  br label %Vec_BitFree.exit

Vec_BitFree.exit:                                 ; preds = %bb.br, %bb.bs
  call void @free(ptr noundef nonnull %i.s) #20
  %i.kn = load ptr, ptr %i.m, align 8, !tbaa !42  ; 2 uses
  %.not.i246 = icmp eq ptr %i.kn, null
  br i1 %.not.i246, label %Vec_IntFree.exit, label %bb.bt

bb.bt:                                            ; preds = %Vec_BitFree.exit
  call void @free(ptr noundef nonnull %i.kn) #20
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_BitFree.exit, %bb.bt
  call void @free(ptr noundef nonnull %i.j) #20
  ret ptr %.0134
}

declare void @sat_solver_setnvars(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Pdr_InvMinimizeLits(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #20
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !118
  %.neg107 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !120
  %.neg = sdiv i64 %i.e, -1000
  %.neg108 = add i64 %.neg, %.neg107
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg108, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.f = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !42  ; 6 uses
  %i.g = call ptr @Mf_ManGenerateCnf(ptr noundef %0, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #20 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 4 ; 3 uses
  %i.i = load i32, ptr %.val, align 4, !tbaa !43  ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph122, label %._crit_edge123.thread

._crit_edge123.thread:                            ; preds = %Abc_Clock.exit
  call void @Cnf_DataFree(ptr noundef %i.g) #20
  br label %bb.j

.lr.ph122:                                        ; preds = %Abc_Clock.exit
  %.not78 = icmp eq i32 %2, 0
  br i1 %.not78, label %.lr.ph122.split.us, label %.lr.ph122.split

.lr.ph122.split.us:                               ; preds = %.lr.ph122, %._crit_edge.split.us.us
  %i.k = phi i32 [ %i.o, %._crit_edge.split.us.us ], [ %i.i, %.lr.ph122 ]
  %.061121.us = phi i32 [ %.162.lcssa.us, %._crit_edge.split.us.us ], [ 0, %.lr.ph122 ] ; 2 uses
  %.063119.us = phi ptr [ %i.r, %._crit_edge.split.us.us ], [ %i.h, %.lr.ph122 ] ; 4 uses
  %.065118.us = phi i32 [ %i.m, %._crit_edge.split.us.us ], [ 0, %.lr.ph122 ]
  %.069116.us = phi i32 [ %i.p, %._crit_edge.split.us.us ], [ 0, %.lr.ph122 ]
  %i.l = load i32, ptr %.063119.us, align 4, !tbaa !43 ; 3 uses
  %i.m = add nsw i32 %i.l, %.065118.us            ; 2 uses
  %i.n = icmp sgt i32 %i.l, 0
  br i1 %i.n, label %.lr.ph.us, label %.lr.ph122.split.us.._crit_edge.split.us.us_crit_edge

.lr.ph122.split.us.._crit_edge.split.us.us_crit_edge: ; preds = %.lr.ph122.split.us
  %.pre175 = sext i32 %i.l to i64
  br label %._crit_edge.split.us.us

end_hunk_3
