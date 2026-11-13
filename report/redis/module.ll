Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/module?download=true
inline.NumInlined: 700
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@moduleUnregisterUsedAPI:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.1 = phi i32 [ %i.k, %bb.b ], [ %.012, %.lr.ph ] ; 2 uses
  %i.l = call ptr @listNext(ptr noundef nonnull %1) #31 ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local i32 @moduleUnregisterFilters(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 !guid !1698 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !862
  call void @listRewind(ptr noundef %i.b, ptr noundef nonnull %1) #31
  %i.c = call ptr @listNext(ptr noundef nonnull %1) #31 ; 2 uses
  %.not10 = icmp eq ptr %i.c, null
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.d = phi ptr [ %i.k, %bb.c ], [ %i.c, %bb.a ]
  %.011 = phi i32 [ %.1, %bb.c ], [ 0, %bb.a ]    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !779  ; 2 uses
  %i.g = load ptr, ptr @moduleCommandFilters, align 8, !tbaa !924
  %i.h = call ptr @listSearchKey(ptr noundef %i.g, ptr noundef %i.f) #31 ; 2 uses
  %.not9 = icmp eq ptr %i.h, null
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = load ptr, ptr @moduleCommandFilters, align 8, !tbaa !924
  call void @listDelNode(ptr noundef %i.i, ptr noundef nonnull %i.h) #31
  %i.j = add nsw i32 %.011, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.1 = phi i32 [ %i.j, %bb.b ], [ %.011, %.lr.ph ] ; 2 uses
  call void @zfree(ptr noundef %i.f) #31
  %i.k = call ptr @listNext(ptr noundef nonnull %1) #31 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1697

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @RM_RegisterCommandFilter(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 !guid !1699 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #32 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !746
  store ptr %i.c, ptr %i.a, align 8, !tbaa !932
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !933
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %2, ptr %i.e, align 8, !tbaa !931
  %i.f = load ptr, ptr @moduleCommandFilters, align 8, !tbaa !924
  %i.g = tail call ptr @listAddNodeTail(ptr noundef %i.f, ptr noundef nonnull %i.a) #31 ; 0 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !746
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !862
  %i.k = tail call ptr @listAddNodeTail(ptr noundef %i.j, ptr noundef nonnull %i.a) #31 ; 0 uses
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_UnregisterCommandFilter(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 !guid !1700 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !932
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !746
  %.not = icmp eq ptr %i.a, %i.c
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @moduleCommandFilters, align 8, !tbaa !924
  %i.e = tail call ptr @listSearchKey(ptr noundef %i.d, ptr noundef nonnull %1) #31 ; 2 uses
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @moduleCommandFilters, align 8, !tbaa !924
  tail call void @listDelNode(ptr noundef %i.f, ptr noundef nonnull %i.e) #31
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !746
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !862
  %i.j = tail call ptr @listSearchKey(ptr noundef %i.i, ptr noundef nonnull %1) #31 ; 2 uses
  %.not14 = icmp eq ptr %i.j, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !746
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !862
  tail call void @listDelNode(ptr noundef %i.m, ptr noundef nonnull %i.j) #31
  tail call void @zfree(ptr noundef nonnull %1) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.d ], [ 1, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

declare void @getKeysFreeResult(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @RM_CommandFilterArgsCount(ptr nofree noundef readonly captures(none) %0) #7 !guid !1701 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !928
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @RM_CommandFilterArgGet(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #12 !guid !1702 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !928
  %.not = icmp slt i32 %1, %i.c
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !926
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !710
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_CommandFilterArgInsert(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) #0 !guid !1705 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !928  ; 4 uses
  %i.d = icmp sgt i32 %1, %i.c
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !927
  %.not = icmp sgt i32 %i.f, %i.c
  %.pre28.pre = load ptr, ptr %0, align 8, !tbaa !926 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw nsw i32 %i.c, 1                  ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !927
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = tail call ptr @zrealloc(ptr noundef %.pre28.pre, i64 noundef %i.i) #33 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !926
  %.pre = load i32, ptr %i.b, align 4, !tbaa !928
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre28 = phi ptr [ %i.j, %bb.d ], [ %.pre28.pre, %bb.c ] ; 3 uses
  %i.k = phi i32 [ %.pre, %bb.d ], [ %i.c, %bb.c ] ; 3 uses
  %i.l = icmp sgt i32 %i.k, %1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.m = zext i32 %i.k to i64                     ; 5 uses
  %i.n = zext nneg i32 %1 to i64                  ; 2 uses
  %i.o = add nsw i64 %i.m, -1
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.n)
  %i.q = sub nsw i64 %i.m, %i.p                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.q, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.q, -4                       ; 3 uses
  %i.r = sub nsw i64 %i.m, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = sub i64 %i.m, %index
  %i.t = getelementptr [8 x i8], ptr %.pre28, i64 %i.s ; 4 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %i.v = getelementptr i8, ptr %i.t, i64 -16
  %3 = getelementptr i8, ptr %i.t, i64 -32
  %wide.load32.a = load <2 x ptr>, ptr %i.v, align 8, !tbaa !710
  %wide.load32 = load <2 x ptr>, ptr %3, align 8, !tbaa !710
  %i.w = getelementptr i8, ptr %i.t, i64 -24
  store <2 x ptr> %wide.load32.a, ptr %i.u, align 8, !tbaa !710
  store <2 x ptr> %wide.load32, ptr %i.w, align 8, !tbaa !710
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1703

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.m, %.lr.ph ], [ %i.r, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.y = getelementptr [8 x i8], ptr %.pre28, i64 %indvars.iv ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !710
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !710
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ab = icmp samesign ugt i64 %indvars.iv.next, %i.n
  br i1 %i.ab, label %scalar.ph, label %._crit_edge, !llvm.loop !1704

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.e
  %i.ac = zext nneg i32 %1 to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.pre28, i64 %i.ac
  store ptr %2, ptr %i.ad, align 8, !tbaa !710
  %i.ae = add nsw i32 %i.k, 1
  store i32 %i.ae, ptr %i.b, align 4, !tbaa !928
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %._crit_edge
  %.022 = phi i32 [ 0, %._crit_edge ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_CommandFilterArgReplace(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #0 !guid !1706 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !928
  %.not = icmp slt i32 %1, %i.c
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !926
  %i.e = zext nneg i32 %1 to i64                  ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !710
  tail call void @decrRefCount(ptr noundef %i.g) #31
  %i.h = load ptr, ptr %0, align 8, !tbaa !926
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e
  store ptr %2, ptr %i.i, align 8, !tbaa !710
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_CommandFilterArgDelete(ptr nofree noundef captures(none) %0, i32 noundef %1) #0 !guid !1707 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !928
  %.not = icmp slt i32 %1, %i.c
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !926
  %i.e = zext nneg i32 %1 to i64                  ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !710
  tail call void @decrRefCount(ptr noundef %i.g) #31
  %i.h = load i32, ptr %i.b, align 4, !tbaa !928  ; 2 uses
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  %i.j = icmp slt i32 %1, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !926    ; 2 uses
  %i.l = shl nuw nsw i64 %i.e, 3                  ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.k, i64 %i.l
  %i.m = getelementptr nuw i8, ptr %i.k, i64 %i.l
  %scevgep17 = getelementptr nuw i8, ptr %i.m, i64 8
  %i.n = add i32 %i.h, -2
  %i.o = sub nsw i32 %i.n, %1
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = add nuw nsw i64 %i.q, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep17, i64 %i.r, i1 false), !tbaa !710
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  store i32 %i.i, ptr %i.b, align 4, !tbaa !928
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %._crit_edge
  %.014 = phi i32 [ 0, %._crit_edge ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.014
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @RM_CommandFilterGetClientId(ptr nofree noundef readonly captures(none) %0) #12 !guid !1708 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !929
  %i.c = load i64, ptr %i.b, align 8, !tbaa !882
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local i64 @RM_MallocSize(ptr noundef %0) #0 !guid !1709 {
bb.a:
  %i.a = tail call i64 @je_malloc_usable_size(ptr noundef %0) #31
  ret i64 %i.a
}

; Function Attrs: nounwind
declare i64 @je_malloc_usable_size(ptr noundef) local_unnamed_addr #25

; Function Attrs: nounwind uwtable
define dso_local i64 @RM_MallocUsableSize(ptr noundef %0) #0 !guid !1710 {
bb.a:
  %i.a = tail call i64 @je_malloc_usable_size(ptr noundef %0) #31
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i64 @RM_MallocSizeString(ptr noundef %0) #0 !guid !1711 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 15
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b, !prof !700

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.1, i32 noundef 11674) #31
  tail call void @abort() #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @getStringObjectSdsUsedMemory(ptr noundef nonnull %0) #31
  %i.e = add i64 %i.d, 16
  ret i64 %i.e
}

declare i64 @getStringObjectSdsUsedMemory(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @RM_MallocSizeDict(ptr nofree noundef readonly captures(none) %0) #12 !guid !1712 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !757
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !673
  %reass.mul = mul i64 %i.c, 244
  %i.d = add i64 %reass.mul, 40
  ret i64 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local float @RM_GetUsedMemoryRatio() #0 !guid !1713 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.b = call i32 @getMaxmemoryState(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a) #31 ; 0 uses
  %i.c = load float, ptr %i.a, align 4, !tbaa !901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @RM_ScanCursorCreate() #0 !guid !1714 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #32 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !1049
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !1050
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RM_ScanCursorRestart(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0) #24 !guid !1715 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !1049
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !1050
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RM_ScanCursorDestroy(ptr noundef %0) #0 !guid !1716 {
bb.a:
end_hunk_0
