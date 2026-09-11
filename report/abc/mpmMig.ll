Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/mpmMig?download=true
inline.NumInlined: 124
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Mig_ManStart:Mig_ManAppendObj.exit
  store ptr %i.l, ptr %i.n, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.o, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 28 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Mig_ManStop(ptr noundef captures(none) initializes((80, 84)) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #18
  store ptr null, ptr %i.a, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not48 = icmp eq ptr %i.d, null
  br i1 %.not48, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #18
  store ptr null, ptr %i.c, align 8, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %.not49 = icmp eq ptr %i.f, null
  br i1 %.not49, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.f) #18
  store ptr null, ptr %i.e, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37   ; 2 uses
  %.not50 = icmp eq ptr %i.h, null
  br i1 %.not50, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.h) #18
  store ptr null, ptr %i.g, align 8, !tbaa !37
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38   ; 2 uses
  %.not51 = icmp eq ptr %i.j, null
  br i1 %.not51, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.j) #18
  store ptr null, ptr %i.i, align 8, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.l = getelementptr i8, ptr %0, i64 28         ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !25
  %.val57 = load i32, ptr %i.l, align 4, !tbaa !19
  %i.m = icmp sgt i32 %.val57, 0
  br i1 %i.m, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.k
  %i.n = getelementptr i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %storemerge58 = phi i32 [ 0, %.lr.ph ], [ %i.u, %bb.l ]
  %.val56 = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.p = sext i32 %storemerge58 to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %.val56, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -16 ; 2 uses
  store ptr %i.s, ptr %i.o, align 8, !tbaa !26
  tail call void @free(ptr noundef nonnull %i.s) #18
  store ptr null, ptr %i.o, align 8, !tbaa !26
  %i.t = load i32, ptr %i.k, align 8, !tbaa !25
  %i.u = add nsw i32 %i.t, 1                      ; 3 uses
  store i32 %i.u, ptr %i.k, align 8, !tbaa !25
  %.val = load i32, ptr %i.l, align 4, !tbaa !19
  %i.v = icmp slt i32 %i.u, %.val
  br i1 %i.v, label %bb.l, label %.critedge, !llvm.loop !34

.critedge:                                        ; preds = %bb.l, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !39   ; 2 uses
  %.not52 = icmp eq ptr %i.x, null
  br i1 %.not52, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.x) #18
  store ptr null, ptr %i.w, align 8, !tbaa !39
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40   ; 2 uses
  %.not53 = icmp eq ptr %i.z, null
  br i1 %.not53, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %i.z) #18
  store ptr null, ptr %i.y, align 8, !tbaa !40
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 2 uses
  %.not54 = icmp eq ptr %i.ab, null
  br i1 %.not54, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.ab) #18
  store ptr null, ptr %i.aa, align 8, !tbaa !41
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ac = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %.not55 = icmp eq ptr %i.ac, null
  br i1 %.not55, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.ac) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  tail call void @free(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Mig_ManTypeNum(ptr nofree noundef captures(none) initializes((80, 84)) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 28
  %.val = load i32, ptr %i.b, align 4, !tbaa !19  ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !25
  %i.c = icmp sgt i32 %.val, 0
  br i1 %i.c, label %.lr.ph27, label %.critedge

.lr.ph27:                                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val18 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %wide.trip.count = zext nneg i32 %.val to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph27, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph27 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.025 = phi i32 [ 0, %.lr.ph27 ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.val18, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 4 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !26
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 12
  %.014.val20 = load i32, ptr %i.h, align 4
  %i.i = icmp ult i32 %.014.val20, -2
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.123 = phi i32 [ %.2, %bb.c ], [ %.025, %.preheader ] ; 2 uses
  %.01421 = phi ptr [ %i.v, %bb.c ], [ %i.g, %.preheader ] ; 5 uses
  %i.j = getelementptr i8, ptr %.01421, i64 4
  %.014.val19 = load i32, ptr %i.j, align 4       ; 2 uses
  %i.k = icmp ugt i32 %.014.val19, -3
  br i1 %i.k, label %bb.c, label %Mig_ObjIsNode2.exit.i.i

Mig_ObjIsNode2.exit.i.i:                          ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.01421, i64 8
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp ult i32 %i.m, -2
  br i1 %i.n, label %Mig_ObjNodeType.exit, label %Mig_ObjIsAnd.exit.i

Mig_ObjIsAnd.exit.i:                              ; preds = %Mig_ObjIsNode2.exit.i.i
  %i.o = load i32, ptr %.01421, align 4
  %i.p = lshr i32 %i.o, 1                         ; 2 uses
  %i.q = lshr i32 %.014.val19, 1                  ; 2 uses
  %.not.i = icmp samesign ult i32 %i.p, %i.q
  br i1 %.not.i, label %Mig_ObjNodeType.exit, label %Mig_ObjIsXor.exit.i

Mig_ObjIsXor.exit.i:                              ; preds = %Mig_ObjIsAnd.exit.i
  %2 = icmp samesign ugt i32 %i.p, %i.q
  %3 = zext i1 %2 to i32
  %4 = xor i32 %3, 3
  br label %Mig_ObjNodeType.exit

Mig_ObjNodeType.exit:                             ; preds = %Mig_ObjIsNode2.exit.i.i, %Mig_ObjIsAnd.exit.i, %Mig_ObjIsXor.exit.i
  %i.r = phi i32 [ 1, %Mig_ObjIsAnd.exit.i ], [ 3, %Mig_ObjIsNode2.exit.i.i ], [ %4, %Mig_ObjIsXor.exit.i ]
  %i.s = icmp eq i32 %i.r, %1
  %i.t = zext i1 %i.s to i32
  %i.u = add nsw i32 %.123, %i.t
  br label %bb.c

bb.c:                                             ; preds = %Mig_ObjNodeType.exit, %.lr.ph
  %.2 = phi i32 [ %i.u, %Mig_ObjNodeType.exit ], [ %.123, %.lr.ph ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01421, i64 16
  %i.w = getelementptr i8, ptr %.01421, i64 28
  %.014.val = load i32, ptr %i.w, align 4
  %i.x = icmp ult i32 %.014.val, -2
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %.1.lcssa = phi i32 [ %.025, %.preheader ], [ %.2, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.y = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.y, ptr %i.a, align 8, !tbaa !25
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !1

.critedge:                                        ; preds = %bb.b, %._crit_edge, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1.lcssa, %._crit_edge ], [ %.025, %bb.b ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Mig_ManAndNum(ptr nofree noundef captures(none) initializes((80, 84)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 28
  %.val.i = load i32, ptr %i.b, align 4, !tbaa !19 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !25
  %i.c = icmp sgt i32 %.val.i, 0
  br i1 %i.c, label %.lr.ph27.i, label %Mig_ManTypeNum.exit

.lr.ph27.i:                                       ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val18.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %wide.trip.count.i = zext nneg i32 %.val.i to i64
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph27.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph27.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.025.i = phi i32 [ 0, %.lr.ph27.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.val18.i, i64 %indvars.iv.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 4 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %Mig_ManTypeNum.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 12
  %.014.val20.i = load i32, ptr %i.h, align 4
  %i.i = icmp ult i32 %.014.val20.i, -2
  br i1 %i.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %.123.i = phi i32 [ %.2.i, %bb.c ], [ %.025.i, %.preheader.i ] ; 2 uses
  %.01421.i = phi ptr [ %i.t, %bb.c ], [ %i.g, %.preheader.i ] ; 5 uses
  %i.j = getelementptr i8, ptr %.01421.i, i64 4
  %.014.val19.i = load i32, ptr %i.j, align 4     ; 2 uses
  %i.k = icmp ugt i32 %.014.val19.i, -3
  br i1 %i.k, label %bb.c, label %Mig_ObjIsNode2.exit.i.i.i

Mig_ObjIsNode2.exit.i.i.i:                        ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.01421.i, i64 8
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp ult i32 %i.m, -2
  br i1 %i.n, label %Mig_ObjNodeType.exit.i, label %Mig_ObjIsAnd.exit.i.i

Mig_ObjIsAnd.exit.i.i:                            ; preds = %Mig_ObjIsNode2.exit.i.i.i
  %i.o = load i32, ptr %.01421.i, align 4
  %i.p = lshr i32 %i.o, 1
  %i.q = lshr i32 %.014.val19.i, 1
  %.not.i.i = icmp samesign ult i32 %i.p, %i.q
  %spec.select = zext i1 %.not.i.i to i32
  br label %Mig_ObjNodeType.exit.i

Mig_ObjNodeType.exit.i:                           ; preds = %Mig_ObjIsAnd.exit.i.i, %Mig_ObjIsNode2.exit.i.i.i
  %i.r = phi i32 [ %spec.select, %Mig_ObjIsAnd.exit.i.i ], [ 0, %Mig_ObjIsNode2.exit.i.i.i ]
  %i.s = add nsw i32 %i.r, %.123.i
  br label %bb.c

bb.c:                                             ; preds = %Mig_ObjNodeType.exit.i, %.lr.ph.i
  %.2.i = phi i32 [ %i.s, %Mig_ObjNodeType.exit.i ], [ %.123.i, %.lr.ph.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01421.i, i64 16
  %i.u = getelementptr i8, ptr %.01421.i, i64 28
  %.014.val.i = load i32, ptr %i.u, align 4
  %i.v = icmp ult i32 %.014.val.i, -2
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.c, %.preheader.i
  %.1.lcssa.i = phi i32 [ %.025.i, %.preheader.i ], [ %.2.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.w = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i32 %i.w, ptr %i.a, align 8, !tbaa !25
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Mig_ManTypeNum.exit, label %bb.b, !llvm.loop !1

Mig_ManTypeNum.exit:                              ; preds = %bb.b, %._crit_edge.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %.025.i, %bb.b ], [ %.1.lcssa.i, %._crit_edge.i ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Mig_ManXorNum(ptr nofree noundef captures(none) initializes((80, 84)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 28
  %.val.i = load i32, ptr %i.b, align 4, !tbaa !19 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !25
  %i.c = icmp sgt i32 %.val.i, 0
  br i1 %i.c, label %.lr.ph27.i, label %Mig_ManTypeNum.exit

.lr.ph27.i:                                       ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val18.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %wide.trip.count.i = zext nneg i32 %.val.i to i64
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph27.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph27.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.025.i = phi i32 [ 0, %.lr.ph27.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.val18.i, i64 %indvars.iv.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 4 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %Mig_ManTypeNum.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 12
  %.014.val20.i = load i32, ptr %i.h, align 4
  %i.i = icmp ult i32 %.014.val20.i, -2
  br i1 %i.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %.123.i = phi i32 [ %.2.i, %bb.c ], [ %.025.i, %.preheader.i ] ; 2 uses
  %.01421.i = phi ptr [ %i.t, %bb.c ], [ %i.g, %.preheader.i ] ; 5 uses
  %i.j = getelementptr i8, ptr %.01421.i, i64 4
  %.014.val19.i = load i32, ptr %i.j, align 4     ; 2 uses
  %i.k = icmp ugt i32 %.014.val19.i, -3
  br i1 %i.k, label %bb.c, label %Mig_ObjIsNode2.exit.i.i.i

Mig_ObjIsNode2.exit.i.i.i:                        ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.01421.i, i64 8
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp ult i32 %i.m, -2
  br i1 %i.n, label %Mig_ObjNodeType.exit.i, label %Mig_ObjIsAnd.exit.i.i

Mig_ObjIsAnd.exit.i.i:                            ; preds = %Mig_ObjIsNode2.exit.i.i.i
  %i.o = load i32, ptr %.01421.i, align 4
  %i.p = lshr i32 %i.o, 1                         ; 2 uses
  %i.q = lshr i32 %.014.val19.i, 1                ; 2 uses
  %.not.i.i = icmp samesign ult i32 %i.p, %i.q
  br i1 %.not.i.i, label %Mig_ObjNodeType.exit.i, label %Mig_ObjIsXor.exit.i.i

Mig_ObjIsXor.exit.i.i:                            ; preds = %Mig_ObjIsAnd.exit.i.i
  %1 = icmp samesign ugt i32 %i.p, %i.q
  %2 = zext i1 %1 to i32
  br label %Mig_ObjNodeType.exit.i

Mig_ObjNodeType.exit.i:                           ; preds = %Mig_ObjIsXor.exit.i.i, %Mig_ObjIsAnd.exit.i.i, %Mig_ObjIsNode2.exit.i.i.i
  %i.r = phi i32 [ 0, %Mig_ObjIsAnd.exit.i.i ], [ 0, %Mig_ObjIsNode2.exit.i.i.i ], [ %2, %Mig_ObjIsXor.exit.i.i ]
  %i.s = add nsw i32 %i.r, %.123.i
  br label %bb.c

bb.c:                                             ; preds = %Mig_ObjNodeType.exit.i, %.lr.ph.i
  %.2.i = phi i32 [ %i.s, %Mig_ObjNodeType.exit.i ], [ %.123.i, %.lr.ph.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01421.i, i64 16
  %i.u = getelementptr i8, ptr %.01421.i, i64 28
  %.014.val.i = load i32, ptr %i.u, align 4
  %i.v = icmp ult i32 %.014.val.i, -2
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.c, %.preheader.i
  %.1.lcssa.i = phi i32 [ %.025.i, %.preheader.i ], [ %.2.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.w = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i32 %i.w, ptr %i.a, align 8, !tbaa !25
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Mig_ManTypeNum.exit, label %bb.b, !llvm.loop !1

Mig_ManTypeNum.exit:                              ; preds = %bb.b, %._crit_edge.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %.025.i, %bb.b ], [ %.1.lcssa.i, %._crit_edge.i ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Mig_ManMuxNum(ptr nofree noundef captures(none) initializes((80, 84)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 28
  %.val.i = load i32, ptr %i.b, align 4, !tbaa !19 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !25
  %i.c = icmp sgt i32 %.val.i, 0
  br i1 %i.c, label %.lr.ph27.i, label %Mig_ManTypeNum.exit

.lr.ph27.i:                                       ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val18.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %wide.trip.count.i = zext nneg i32 %.val.i to i64
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph27.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph27.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.025.i = phi i32 [ 0, %.lr.ph27.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.val18.i, i64 %indvars.iv.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 4 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %Mig_ManTypeNum.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 12
  %.014.val20.i = load i32, ptr %i.h, align 4
  %i.i = icmp ult i32 %.014.val20.i, -2
  br i1 %i.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %.123.i = phi i32 [ %.2.i, %bb.c ], [ %.025.i, %.preheader.i ] ; 2 uses
  %.01421.i = phi ptr [ %i.u, %bb.c ], [ %i.g, %.preheader.i ] ; 5 uses
  %i.j = getelementptr i8, ptr %.01421.i, i64 4
  %.014.val19.i = load i32, ptr %i.j, align 4     ; 2 uses
  %i.k = icmp ugt i32 %.014.val19.i, -3
  br i1 %i.k, label %bb.c, label %Mig_ObjIsNode2.exit.i.i.i

Mig_ObjIsNode2.exit.i.i.i:                        ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.01421.i, i64 8
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp ult i32 %i.m, -2
  br i1 %i.n, label %Mig_ObjNodeType.exit.i, label %Mig_ObjIsAnd.exit.i.i

Mig_ObjIsAnd.exit.i.i:                            ; preds = %Mig_ObjIsNode2.exit.i.i.i
  %i.o = load i32, ptr %.01421.i, align 4
  %i.p = lshr i32 %i.o, 1                         ; 2 uses
  %i.q = lshr i32 %.014.val19.i, 1                ; 2 uses
  %.not.i.i = icmp samesign ult i32 %i.p, %i.q
  br i1 %.not.i.i, label %Mig_ObjNodeType.exit.i, label %Mig_ObjIsXor.exit.i.i

Mig_ObjIsXor.exit.i.i:                            ; preds = %Mig_ObjIsAnd.exit.i.i
  %i.r = icmp samesign ule i32 %i.p, %i.q
  %1 = zext i1 %i.r to i32
  br label %Mig_ObjNodeType.exit.i

Mig_ObjNodeType.exit.i:                           ; preds = %Mig_ObjIsXor.exit.i.i, %Mig_ObjIsAnd.exit.i.i, %Mig_ObjIsNode2.exit.i.i.i
  %i.s = phi i32 [ 0, %Mig_ObjIsAnd.exit.i.i ], [ 1, %Mig_ObjIsNode2.exit.i.i.i ], [ %1, %Mig_ObjIsXor.exit.i.i ]
  %i.t = add nsw i32 %i.s, %.123.i
  br label %bb.c

bb.c:                                             ; preds = %Mig_ObjNodeType.exit.i, %.lr.ph.i
  %.2.i = phi i32 [ %i.t, %Mig_ObjNodeType.exit.i ], [ %.123.i, %.lr.ph.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01421.i, i64 16
  %i.v = getelementptr i8, ptr %.01421.i, i64 28
  %.014.val.i = load i32, ptr %i.v, align 4
  %i.w = icmp ult i32 %.014.val.i, -2
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.c, %.preheader.i
  %.1.lcssa.i = phi i32 [ %.025.i, %.preheader.i ], [ %.2.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.x = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i32 %i.x, ptr %i.a, align 8, !tbaa !25
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Mig_ManTypeNum.exit, label %bb.b, !llvm.loop !1

Mig_ManTypeNum.exit:                              ; preds = %bb.b, %._crit_edge.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %.025.i, %bb.b ], [ %.1.lcssa.i, %._crit_edge.i ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Mig_ManSetRefs(ptr nofree noundef captures(none) initializes((80, 84), (140, 144)) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val31 = load i32, ptr %i.b, align 8, !tbaa !23 ; 6 uses
  %i.c = load i32, ptr %i.a, align 8, !tbaa !14
  %.not.i.i = icmp slt i32 %i.c, %.val31
  br i1 %.not.i.i, label %bb.b, label %Vec_IntGrow.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.e, null
  %i.f = sext i32 %.val31 to i64
  %i.g = shl nsw i64 %i.f, 2                      ; 2 uses
  br i1 %.not9.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @realloc(ptr noundef nonnull %i.e, i64 noundef %i.g) #19
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.g) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  store ptr %i.j, ptr %i.d, align 8, !tbaa !13
  store i32 %.val31, ptr %i.a, align 8, !tbaa !14
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.a
  %i.k = icmp sgt i32 %.val31, 0
  br i1 %i.k, label %.lr.ph.i, label %Vec_IntFill.exit

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.n = zext nneg i32 %.val31 to i64
  %i.o = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 0, i64 %i.o, i1 false), !tbaa !28
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %Vec_IntGrow.exit.i, %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %.val31, ptr %i.p, align 4, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.r = getelementptr i8, ptr %0, i64 28         ; 2 uses
  store i32 0, ptr %i.q, align 8, !tbaa !25
  %.val44 = load i32, ptr %i.r, align 4, !tbaa !19 ; 2 uses
  %i.s = icmp sgt i32 %.val44, 0
  br i1 %i.s, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntFill.exit
  %i.t = getelementptr i8, ptr %0, i64 32
  %.val30 = load ptr, ptr %i.t, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = getelementptr i8, ptr %0, i64 144        ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %._crit_edge
  %.val48 = phi i32 [ %.val44, %.lr.ph ], [ %.val, %._crit_edge ]
  %storemerge45 = phi i32 [ 0, %.lr.ph ], [ %i.bu, %._crit_edge ] ; 2 uses
  %i.w = sext i32 %storemerge45 to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %.val30, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15   ; 4 uses
  store ptr %i.y, ptr %i.u, align 8, !tbaa !26
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %.critedge, label %.preheader40

.preheader40:                                     ; preds = %bb.f
  %i.z = getelementptr i8, ptr %i.y, i64 12       ; 2 uses
  %.023.val42 = load i32, ptr %i.z, align 4
  %i.aa = icmp ult i32 %.023.val42, -2
  br i1 %i.aa, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %.preheader40, %Mig_ObjSiblId.exit.thread
  %i.ab = phi ptr [ %i.br, %Mig_ObjSiblId.exit.thread ], [ %i.z, %.preheader40 ]
  %.02343 = phi ptr [ %i.bq, %Mig_ObjSiblId.exit.thread ], [ %i.y, %.preheader40 ] ; 6 uses
  %i.ac = load i32, ptr %.02343, align 4          ; 2 uses
  %i.ad = icmp ugt i32 %i.ac, -3
  br i1 %i.ad, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.ae = lshr i32 %i.ac, 1                       ; 2 uses
  %.not28 = icmp eq i32 %i.ae, 0
  br i1 %.not28, label %.critedge2, label %Mig_ObjHasFanin.exit.1

Mig_ObjHasFanin.exit.1:                           ; preds = %bb.g
  %.val33 = load ptr, ptr %i.v, align 8, !tbaa !13 ; 3 uses
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val33, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !28
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %.02343, i64 4
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = icmp ugt i32 %i.ak, -3
  br i1 %i.al, label %.critedge2, label %bb.h

bb.h:                                             ; preds = %Mig_ObjHasFanin.exit.1
  %i.am = lshr i32 %i.ak, 1                       ; 2 uses
  %.not28.1 = icmp eq i32 %i.am, 0
  br i1 %.not28.1, label %.critedge2, label %Mig_ObjHasFanin.exit.2

Mig_ObjHasFanin.exit.2:                           ; preds = %bb.h
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val33, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !28
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %.02343, i64 8
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = icmp ugt i32 %i.as, -3
  br i1 %i.at, label %.critedge2, label %bb.i

bb.i:                                             ; preds = %Mig_ObjHasFanin.exit.2
  %i.au = lshr i32 %i.as, 1                       ; 2 uses
  %.not28.2 = icmp eq i32 %i.au, 0
  br i1 %.not28.2, label %.critedge2, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.val33, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !28
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !28
  br label %.critedge2

.critedge2:                                       ; preds = %bb.j, %bb.i, %Mig_ObjHasFanin.exit.2, %bb.h, %Mig_ObjHasFanin.exit.1, %.preheader, %bb.g
  %.val.i.i = load i32, ptr %i.ab, align 4
  %i.az = lshr i32 %.val.i.i, 1                   ; 2 uses
  %i.ba = and i32 %i.az, 4095
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [16 x i8], ptr %.02343, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !31 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 124
  %.val3.i = load i32, ptr %i.bg, align 4, !tbaa !29
  %i.bh = icmp eq i32 %.val3.i, 0
  br i1 %i.bh, label %Mig_ObjSiblId.exit.thread, label %Mig_ObjSiblId.exit

Mig_ObjSiblId.exit:                               ; preds = %.critedge2
  %i.bi = getelementptr i8, ptr %i.bf, i64 128
  %.val4.i = load ptr, ptr %i.bi, align 8, !tbaa !13
  %i.bj = zext nneg i32 %i.az to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.val4.i, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !28 ; 2 uses
  %.not29 = icmp eq i32 %i.bl, 0
  br i1 %.not29, label %Mig_ObjSiblId.exit.thread, label %Mig_ObjSiblId.exit37

Mig_ObjSiblId.exit37:                             ; preds = %Mig_ObjSiblId.exit
  %.val32 = load ptr, ptr %i.v, align 8, !tbaa !13
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %.val32, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !28
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !28
  br label %Mig_ObjSiblId.exit.thread

Mig_ObjSiblId.exit.thread:                        ; preds = %.critedge2, %Mig_ObjSiblId.exit, %Mig_ObjSiblId.exit37
  %i.bq = getelementptr inbounds nuw i8, ptr %.02343, i64 16
  %i.br = getelementptr i8, ptr %.02343, i64 28   ; 2 uses
  %.023.val = load i32, ptr %i.br, align 4
  %i.bs = icmp ult i32 %.023.val, -2
  br i1 %i.bs, label %.preheader, label %._crit_edge.loopexit, !llvm.loop !43

._crit_edge.loopexit:                             ; preds = %Mig_ObjSiblId.exit.thread
  %.pre = load i32, ptr %i.q, align 8, !tbaa !25
  %.val.pre = load i32, ptr %i.r, align 4, !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader40
  %.val = phi i32 [ %.val.pre, %._crit_edge.loopexit ], [ %.val48, %.preheader40 ] ; 2 uses
end_hunk_0
