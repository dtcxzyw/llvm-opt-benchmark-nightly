inline.NumInlined: 700
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@moduleUnregisterUsedAPI:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !263
  call void @listRewind(ptr noundef %i.b, ptr noundef nonnull %1) #31
  %i.c = call ptr @listNext(ptr noundef nonnull %1) #31 ; 2 uses
  %.not11 = icmp eq ptr %i.c, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.d = phi ptr [ %i.l, %bb.c ], [ %i.c, %bb.a ]
  %.012 = phi i32 [ %.1, %bb.c ], [ 0, %bb.a ]    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !262
  %i.i = call ptr @listSearchKey(ptr noundef %i.h, ptr noundef %0) #31 ; 2 uses
  %.not10 = icmp eq ptr %i.i, null
  br i1 %.not10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !262
  call void @listDelNode(ptr noundef %i.j, ptr noundef nonnull %i.i) #31
  %i.k = add nsw i32 %.012, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.1 = phi i32 [ %i.k, %bb.b ], [ %.012, %.lr.ph ] ; 2 uses
  %i.l = call ptr @listNext(ptr noundef nonnull %1) #31 ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !585

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local i32 @moduleUnregisterFilters(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264
  call void @listRewind(ptr noundef %i.b, ptr noundef nonnull %1) #31
  %i.c = call ptr @listNext(ptr noundef nonnull %1) #31 ; 2 uses
  %.not10 = icmp eq ptr %i.c, null
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.d = phi ptr [ %i.k, %bb.c ], [ %i.c, %bb.a ]
  %.011 = phi i32 [ %.1, %bb.c ], [ 0, %bb.a ]    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 2 uses
  %i.g = load ptr, ptr @moduleCommandFilters, align 8, !tbaa !392
  %i.h = call ptr @listSearchKey(ptr noundef %i.g, ptr noundef %i.f) #31 ; 2 uses
  %.not9 = icmp eq ptr %i.h, null
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = load ptr, ptr @moduleCommandFilters, align 8, !tbaa !392
  call void @listDelNode(ptr noundef %i.i, ptr noundef nonnull %i.h) #31
  %i.j = add nsw i32 %.011, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.1 = phi i32 [ %i.j, %bb.b ], [ %.011, %.lr.ph ] ; 2 uses
  call void @zfree(ptr noundef %i.f) #31
  %i.k = call ptr @listNext(ptr noundef nonnull %1) #31 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !586

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @RM_RegisterCommandFilter(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #32 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !106
  store ptr %i.c, ptr %i.a, align 8, !tbaa !400
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !402
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %2, ptr %i.e, align 8, !tbaa !398
  %i.f = load ptr, ptr @moduleCommandFilters, align 8, !tbaa !392
  %i.g = tail call ptr @listAddNodeTail(ptr noundef %i.f, ptr noundef nonnull %i.a) #31 ; 0 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !264
  %i.k = tail call ptr @listAddNodeTail(ptr noundef %i.j, ptr noundef nonnull %i.a) #31 ; 0 uses
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_UnregisterCommandFilter(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !400
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !106
  %.not = icmp eq ptr %i.a, %i.c
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @moduleCommandFilters, align 8, !tbaa !392
  %i.e = tail call ptr @listSearchKey(ptr noundef %i.d, ptr noundef nonnull %1) #31 ; 2 uses
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @moduleCommandFilters, align 8, !tbaa !392
  tail call void @listDelNode(ptr noundef %i.f, ptr noundef nonnull %i.e) #31
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !264
  %i.j = tail call ptr @listSearchKey(ptr noundef %i.i, ptr noundef nonnull %1) #31 ; 2 uses
  %.not14 = icmp eq ptr %i.j, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !264
  tail call void @listDelNode(ptr noundef %i.m, ptr noundef nonnull %i.j) #31
  tail call void @zfree(ptr noundef nonnull %1) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.d ], [ 1, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

declare void @getKeysFreeResult(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @RM_CommandFilterArgsCount(ptr nofree noundef readonly captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !396
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @RM_CommandFilterArgGet(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #12 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !396
  %.not = icmp slt i32 %1, %i.c
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !393
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_CommandFilterArgInsert(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !396  ; 4 uses
  %i.d = icmp sgt i32 %1, %i.c
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !395
  %.not = icmp sgt i32 %i.f, %i.c
  %.pre28.pre = load ptr, ptr %0, align 8, !tbaa !393 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw nsw i32 %i.c, 1                  ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !395
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = tail call ptr @zrealloc(ptr noundef %.pre28.pre, i64 noundef %i.i) #33 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !393
  %.pre = load i32, ptr %i.b, align 4, !tbaa !396
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre28 = phi ptr [ %i.j, %bb.d ], [ %.pre28.pre, %bb.c ] ; 3 uses
  %i.k = phi i32 [ %.pre, %bb.d ], [ %i.c, %bb.c ] ; 10 uses
  %i.l = icmp sgt i32 %i.k, %1
  br i1 %i.l, label %.lr.ph.a, label %._crit_edge

.lr.ph.a:                                         ; preds = %bb.e
  %3 = add i32 %i.k, -1
  %4 = tail call i32 @llvm.umin.i32(i32 %1, i32 %3)
  %5 = sub i32 %i.k, %4                           ; 3 uses
  %min.iters.check = icmp ult i32 %5, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.a
  %6 = add i32 %i.k, -1
  %7 = tail call i32 @llvm.usub.sat.i32(i32 %6, i32 %1)
  %8 = icmp ugt i32 %7, %i.k
  br i1 %8, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %5, -4                         ; 3 uses
  %9 = sub i32 %i.k, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %10 = sub i32 %i.k, %index
  %11 = zext nneg i32 %10 to i64
  %i.m = getelementptr [8 x i8], ptr %.pre28, i64 %11 ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 -16
  %i.o = getelementptr i8, ptr %i.m, i64 -32
  %wide.load = load <2 x ptr>, ptr %i.n, align 8, !tbaa !70
  %wide.load32 = load <2 x ptr>, ptr %i.o, align 8, !tbaa !70
  %i.p = getelementptr i8, ptr %i.m, i64 -8
  %i.q = getelementptr i8, ptr %i.m, i64 -24
  store <2 x ptr> %wide.load, ptr %i.p, align 8, !tbaa !70
  store <2 x ptr> %wide.load32, ptr %i.q, align 8, !tbaa !70
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.r = icmp eq i32 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !587

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %5, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph.a, %middle.block
  %.026.ph = phi i32 [ %i.k, %vector.scevcheck ], [ %i.k, %.lr.ph.a ], [ %9, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.026 = phi i32 [ %13, %scalar.ph ], [ %.026.ph, %scalar.ph.preheader ] ; 2 uses
  %12 = zext nneg i32 %.026 to i64
  %i.s = getelementptr [8 x i8], ptr %.pre28, i64 %12 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70
  store ptr %i.u, ptr %i.s, align 8, !tbaa !70
  %13 = add nsw i32 %.026, -1                     ; 2 uses
  %i.v = icmp samesign ugt i32 %13, %1
  br i1 %i.v, label %scalar.ph, label %._crit_edge, !llvm.loop !590

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.e
  %i.w = zext nneg i32 %1 to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.pre28, i64 %i.w
  store ptr %2, ptr %i.x, align 8, !tbaa !70
  %i.y = add nsw i32 %i.k, 1
  store i32 %i.y, ptr %i.b, align 4, !tbaa !396
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %._crit_edge
  %.022 = phi i32 [ 0, %._crit_edge ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_CommandFilterArgReplace(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !396
  %.not = icmp slt i32 %1, %i.c
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !393
  %i.e = zext nneg i32 %1 to i64                  ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  tail call void @decrRefCount(ptr noundef %i.g) #31
  %i.h = load ptr, ptr %0, align 8, !tbaa !393
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e
  store ptr %2, ptr %i.i, align 8, !tbaa !70
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_CommandFilterArgDelete(ptr nofree noundef captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !396
  %.not = icmp slt i32 %1, %i.c
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !393
  %i.e = zext nneg i32 %1 to i64                  ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  tail call void @decrRefCount(ptr noundef %i.g) #31
  %i.h = load i32, ptr %i.b, align 4, !tbaa !396  ; 2 uses
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  %i.j = icmp slt i32 %1, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !393    ; 2 uses
  %i.l = shl nuw nsw i64 %i.e, 3                  ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.k, i64 %i.l
  %i.m = getelementptr nuw i8, ptr %i.k, i64 %i.l
  %scevgep17 = getelementptr nuw i8, ptr %i.m, i64 8
  %i.n = add i32 %i.h, -2
  %i.o = sub nsw i32 %i.n, %1
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = add nuw nsw i64 %i.q, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep17, i64 %i.r, i1 false), !tbaa !70
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  store i32 %i.i, ptr %i.b, align 4, !tbaa !396
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %._crit_edge
  %.014 = phi i32 [ 0, %._crit_edge ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.014
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @RM_CommandFilterGetClientId(ptr nofree noundef readonly captures(none) %0) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !397
  %i.c = load i64, ptr %i.b, align 8, !tbaa !298
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local i64 @RM_MallocSize(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @je_malloc_usable_size(ptr noundef %0) #31
  ret i64 %i.a
}

; Function Attrs: nounwind
declare i64 @je_malloc_usable_size(ptr noundef) local_unnamed_addr #25

; Function Attrs: nounwind uwtable
define dso_local i64 @RM_MallocUsableSize(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @je_malloc_usable_size(ptr noundef %0) #31
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i64 @RM_MallocSizeString(ptr noundef %0) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 15
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b, !prof !60

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
define dso_local i64 @RM_MallocSizeDict(ptr nofree noundef readonly captures(none) %0) #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !29
  %reass.mul = mul i64 %i.c, 244
  %i.d = add i64 %reass.mul, 40
  ret i64 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local float @RM_GetUsedMemoryRatio() #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.b = call i32 @getMaxmemoryState(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a) #31 ; 0 uses
  %i.c = load float, ptr %i.a, align 4, !tbaa !333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @RM_ScanCursorCreate() #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #32 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !591
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !593
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RM_ScanCursorRestart(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0) #24 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !591
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !593
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RM_ScanCursorDestroy(ptr noundef %0) #0 {
bb.a:
  tail call void @zfree(ptr noundef %0) #31
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_Scan(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca %struct.ScanCBData, align 8         ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !593
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #36
  store i32 2, ptr %i.c, align 4, !tbaa !9
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
end_hunk_0
begin_hunk_1_@moduleFreeCommand:bb.a
  tail call void @hdr_close(ptr noundef nonnull %i.as) #31
  store ptr null, ptr %i.ar, align 8, !tbaa !671
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge2
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !218
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !232
  tail call void @moduleFreeArgs(ptr noundef %i.az, i32 noundef %i.bb)
  tail call void @zfree(ptr noundef nonnull %i.d) #31
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !186 ; 2 uses
  %.not72 = icmp eq ptr %i.bd, null
  br i1 %.not72, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @dictInitSafeIterator(ptr noundef nonnull %2, ptr noundef nonnull %i.bd) #31
  %i.be = call ptr @dictNext(ptr noundef nonnull %2) #31 ; 2 uses
  %.not7390 = icmp eq ptr %i.be, null
  br i1 %.not7390, label %._crit_edge93, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.l, %bb.p
  %i.bf = phi ptr [ %i.bp, %bb.p ], [ %i.be, %bb.l ]
  %i.bg = call ptr @dictGetVal(ptr noundef nonnull %i.bf) #31 ; 5 uses
  %i.bh = call i32 @moduleFreeCommand(ptr noundef %0, ptr noundef %i.bg)
  %.not74 = icmp eq i32 %i.bh, 0
  br i1 %.not74, label %bb.m, label %bb.p, !llvm.loop !673

bb.m:                                             ; preds = %.lr.ph92
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !186
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !172
  %i.bk = call i32 @dictDelete(ptr noundef %i.bi, ptr noundef %i.bj) #31
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.o, label %bb.n, !prof !60

bb.n:                                             ; preds = %bb.m
  call void @_serverAssert(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.1, i32 noundef 13061) #31
  call void @abort() #34
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !172
  call void @sdsfree(ptr noundef %i.bm) #31
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 216
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !173
  call void @sdsfree(ptr noundef %i.bo) #31
  call void @zfree(ptr noundef nonnull %i.bg) #31
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph92, %bb.o
  %i.bp = call ptr @dictNext(ptr noundef nonnull %2) #31 ; 2 uses
  %.not73 = icmp eq ptr %i.bp, null
  br i1 %.not73, label %._crit_edge93, label %.lr.ph92

._crit_edge93:                                    ; preds = %bb.p, %bb.l
  call void @dictResetIterator(ptr noundef nonnull %2) #31
  %i.bq = load ptr, ptr %i.bc, align 8, !tbaa !186
  call void @dictRelease(ptr noundef %i.bq) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %._crit_edge93, %bb.k, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ 0, %._crit_edge93 ], [ 0, %bb.k ]
  ret i32 %.1
}

declare void @hdr_close(ptr noundef) local_unnamed_addr #1

declare void @dictRelease(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @moduleUnregisterCommands(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.dictIterator, align 8       ; 6 uses
  tail call void @pauseAllIOThreads() #31
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 72), align 8, !tbaa !182
  call void @dictInitSafeIterator(ptr noundef nonnull %1, ptr noundef %i.a) #31
  %i.b = call ptr @dictNext(ptr noundef nonnull %1) #31 ; 2 uses
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %i.c = phi ptr [ %i.q, %bb.g ], [ %i.b, %bb.a ]
  %i.d = call ptr @dictGetVal(ptr noundef nonnull %i.c) #31 ; 4 uses
  %i.e = call i32 @moduleFreeCommand(ptr noundef %0, ptr noundef %i.d)
  %.not8 = icmp eq i32 %i.e, 0
  br i1 %.not8, label %bb.b, label %bb.g, !llvm.loop !674

bb.b:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 72), align 8, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 216 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !173
  %i.i = call i32 @dictDelete(ptr noundef %i.f, ptr noundef %i.h) #31
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.c, !prof !60

bb.c:                                             ; preds = %bb.b
  call void @_serverAssert(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.1, i32 noundef 13083) #31
  call void @abort() #34
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 80), align 8, !tbaa !183
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !173
  %i.m = call i32 @dictDelete(ptr noundef %i.k, ptr noundef %i.l) #31
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.e, !prof !60

bb.e:                                             ; preds = %bb.d
  call void @_serverAssert(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 13084) #31
  call void @abort() #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !172
  call void @sdsfree(ptr noundef %i.o) #31
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !173
  call void @sdsfree(ptr noundef %i.p) #31
  call void @zfree(ptr noundef nonnull %i.d) #31
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.q = call ptr @dictNext(ptr noundef nonnull %1) #31 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.a
  call void @dictResetIterator(ptr noundef nonnull %1) #31
  call void @resumeAllIOThreads() #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @parseLoadexArguments(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !368    ; 3 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !9      ; 5 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !282  ; 4 uses
  %i.h = tail call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.115) #35
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %i.i = add nuw nsw i64 %indvars.iv, 2           ; 2 uses
  %i.j = trunc nuw i64 %i.i to i32
  %.not47 = icmp sgt i32 %i.b, %i.j
  br i1 %.not47, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105
  %i.l = icmp sgt i32 %i.k, 2
  br i1 %i.l, label %.thread62, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.116) #31
  br label %.thread62

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.d, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !282
  %i.q = tail call ptr @sdsdup(ptr noundef %i.p) #31 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !282
  %i.v = tail call ptr @sdsdup(ptr noundef %i.u) #31
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 288), align 8, !tbaa !648
  %i.x = tail call i32 @dictReplace(ptr noundef %i.w, ptr noundef %i.q, ptr noundef %i.v) #31
  %.not48 = icmp eq i32 %i.x, 0
  br i1 %.not48, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  tail call void @sdsfree(ptr noundef %i.q) #31
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph
  %i.y = tail call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.117) #35
  %.not49 = icmp eq i32 %i.y, 0
  br i1 %.not49, label %.thread66, label %bb.h

.thread66:                                        ; preds = %bb.g
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  %i.aa = add nuw nsw i32 %i.z, 1                 ; 3 uses
  %.not50 = icmp slt i32 %i.aa, %i.b              ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab
  %i.ad = sub nuw nsw i32 %i.b, %i.aa
  %.sink = select i1 %.not50, ptr %i.ac, ptr null
  %storemerge = select i1 %.not50, i32 %i.ad, i32 0
  store ptr %.sink, ptr %0, align 8, !tbaa !368
  store i32 %storemerge, ptr %1, align 4, !tbaa !9
  br label %.thread62

bb.h:                                             ; preds = %bb.g
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105
  %i.af = icmp sgt i32 %i.ae, 2
  br i1 %i.af, label %.thread62, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6420), align 4, !tbaa !662
  %.not.i = icmp eq i32 %i.ag, 0
  %.not2.i = icmp eq ptr %i.g, null
  %i.ah = select i1 %.not2.i, ptr @.str.61, ptr %i.g
  %i.ai = select i1 %.not.i, ptr %i.ah, ptr @.str.597
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.118, ptr noundef nonnull %i.ai) #31
  br label %.thread62

bb.j:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.aj = trunc nuw i64 %indvars.iv.next to i32
  %i.ak = icmp sgt i32 %i.b, %i.aj
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !675

._crit_edge:                                      ; preds = %bb.j, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !368
  store i32 0, ptr %1, align 4, !tbaa !9
  br label %.thread62

.thread62:                                        ; preds = %bb.d, %bb.c, %bb.h, %bb.i, %.thread66, %._crit_edge
  %.3 = phi i32 [ 0, %.thread66 ], [ 0, %._crit_edge ], [ 1, %bb.d ], [ 1, %bb.i ], [ 1, %bb.h ], [ 1, %bb.c ]
  ret i32 %.3
}

declare i32 @dictReplace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @moduleUnregisterCleanup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  %2 = alloca %struct.listIter, align 8           ; 5 uses
  %3 = alloca %struct.listIter, align 8           ; 5 uses
  %4 = alloca %struct.listIter, align 8           ; 5 uses
  %5 = alloca %struct.listIter, align 8           ; 5 uses
  %6 = alloca %struct.listIter, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1440), align 8, !tbaa !676
  call void @listRewind(ptr noundef %i.a, ptr noundef nonnull %6) #31
  %i.b = call ptr @listNext(ptr noundef nonnull %6) #31 ; 2 uses
  %.not8.i = icmp eq ptr %i.b, null
  br i1 %.not8.i, label %moduleFreeAuthenticatedClients.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %i.c = phi ptr [ %i.n, %bb.d ], [ %i.b, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !141  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 776
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !560  ; 2 uses
  %.not7.i = icmp ne ptr %i.g, null
  %i.h = icmp eq ptr %i.g, %0
  %or.cond.i = and i1 %.not7.i, %i.h
  br i1 %or.cond.i, label %bb.b, label %bb.d, !llvm.loop !677

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 760 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !552  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %revokeClientAuthentication.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.e, align 8, !tbaa !298
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 768
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !553
  call void %i.j(i64 noundef %i.k, ptr noundef %i.m) #31, !inline_history !678
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  br label %revokeClientAuthentication.exit.i

revokeClientAuthentication.exit.i:                ; preds = %bb.c, %bb.b
  call void @deauthenticateAndCloseClient(ptr noundef nonnull %i.e) #31
  br label %bb.d

bb.d:                                             ; preds = %revokeClientAuthentication.exit.i, %.lr.ph.i
  %i.n = call ptr @listNext(ptr noundef nonnull %6) #31 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %moduleFreeAuthenticatedClients.exit, label %.lr.ph.i

moduleFreeAuthenticatedClients.exit:              ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @moduleUnregisterCommands(ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.o = load ptr, ptr @moduleKeyspaceSubscribers, align 8, !tbaa !392
  call void @listRewind(ptr noundef %i.o, ptr noundef nonnull %5) #31
  %i.p = call ptr @listNext(ptr noundef nonnull %5) #31 ; 2 uses
  %.not5.i = icmp eq ptr %i.p, null
  br i1 %.not5.i, label %moduleUnsubscribeNotifications.exit, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %moduleFreeAuthenticatedClients.exit, %bb.f
  %i.q = phi ptr [ %i.w, %bb.f ], [ %i.p, %moduleFreeAuthenticatedClients.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !141  ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !498
  %i.u = icmp eq ptr %i.t, %0
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i9
  %i.v = load ptr, ptr @moduleKeyspaceSubscribers, align 8, !tbaa !392
  call void @listDelNode(ptr noundef %i.v, ptr noundef nonnull %i.q) #31
  call void @zfree(ptr noundef nonnull %i.s) #31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i9
  %i.w = call ptr @listNext(ptr noundef nonnull %5) #31 ; 2 uses
  %.not.i10 = icmp eq ptr %i.w, null
  br i1 %.not.i10, label %moduleUnsubscribeNotifications.exit, label %.lr.ph.i9, !llvm.loop !514

moduleUnsubscribeNotifications.exit:              ; preds = %bb.f, %moduleFreeAuthenticatedClients.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.x = call i32 @moduleUnregisterSharedAPI(ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !263
  call void @listRewind(ptr noundef %i.z, ptr noundef nonnull %4) #31
  %i.aa = call ptr @listNext(ptr noundef nonnull %4) #31 ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %moduleUnregisterUsedAPI.exit, label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %moduleUnsubscribeNotifications.exit, %bb.h
  %i.ab = phi ptr [ %i.ai, %bb.h ], [ %i.aa, %moduleUnsubscribeNotifications.exit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !141
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !262
  %i.ag = call ptr @listSearchKey(ptr noundef %i.af, ptr noundef %0) #31 ; 2 uses
  %.not10.i = icmp eq ptr %i.ag, null
  br i1 %.not10.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i11
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !262
  call void @listDelNode(ptr noundef %i.ah, ptr noundef nonnull %i.ag) #31
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i11
  %i.ai = call ptr @listNext(ptr noundef nonnull %4) #31 ; 2 uses
  %.not.i12 = icmp eq ptr %i.ai, null
  br i1 %.not.i12, label %moduleUnregisterUsedAPI.exit, label %.lr.ph.i11, !llvm.loop !585

moduleUnregisterUsedAPI.exit:                     ; preds = %bb.h, %moduleUnsubscribeNotifications.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.aj = call i32 @moduleUnregisterFilters(ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.ak = load ptr, ptr @RedisModule_EventListeners, align 8, !tbaa !392
  call void @listRewind(ptr noundef %i.ak, ptr noundef nonnull %3) #31
  %i.al = call ptr @listNext(ptr noundef nonnull %3) #31 ; 2 uses
  %.not5.i13 = icmp eq ptr %i.al, null
  br i1 %.not5.i13, label %moduleUnsubscribeAllServerEvents.exit, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %moduleUnregisterUsedAPI.exit, %bb.j
  %i.am = phi ptr [ %i.as, %bb.j ], [ %i.al, %moduleUnregisterUsedAPI.exit ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !141 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !613
  %i.aq = icmp eq ptr %i.ap, %0
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i14
  %i.ar = load ptr, ptr @RedisModule_EventListeners, align 8, !tbaa !392
  call void @listDelNode(ptr noundef %i.ar, ptr noundef nonnull %i.am) #31
  call void @zfree(ptr noundef nonnull %i.ao) #31
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i14
  %i.as = call ptr @listNext(ptr noundef nonnull %3) #31 ; 2 uses
  %.not.i15 = icmp eq ptr %i.as, null
  br i1 %.not.i15, label %moduleUnsubscribeAllServerEvents.exit, label %.lr.ph.i14, !llvm.loop !635

moduleUnsubscribeAllServerEvents.exit:            ; preds = %bb.j, %moduleUnregisterUsedAPI.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !265
  call void @listRewind(ptr noundef %i.au, ptr noundef nonnull %2) #31
  %i.av = call ptr @listNext(ptr noundef nonnull %2) #31 ; 2 uses
  %.not7.i16 = icmp eq ptr %i.av, null
  br i1 %.not7.i16, label %moduleRemoveConfigs.exit, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %moduleUnsubscribeAllServerEvents.exit, %bb.l
  %i.aw = phi ptr [ %i.bc, %bb.l ], [ %i.av, %moduleUnsubscribeAllServerEvents.exit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !141 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !256
  call void @removeConfig(ptr noundef %i.az) #31
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !258 ; 2 uses
  %.not6.i = icmp eq ptr %i.bb, null
  br i1 %.not6.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i17
  call void @removeConfig(ptr noundef nonnull %i.bb) #31
end_hunk_1
begin_hunk_2_@RM_GetDbIdFromDefragCtx:bb.a
}

declare void @listTypeResetIterator(ptr noundef) local_unnamed_addr #1

declare ptr @callReplyCreate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @moduleValidateCommandArgs(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 24
  %i.c = load ptr, ptr %0, align 8, !tbaa !234    ; 2 uses
  %.not73 = icmp eq ptr %i.c, null
  br i1 %.not73, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.w
  %i.d = phi ptr [ %i.au, %bb.w ], [ %i.c, %.preheader ] ; 6 uses
  %i.e = phi ptr [ %i.at, %bb.w ], [ %0, %.preheader ] ; 8 uses
  %.03574 = phi i64 [ %i.aq, %bb.w ], [ 0, %.preheader ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !237  ; 4 uses
  %i.h = icmp ult i32 %i.g, 9
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105
  %i.j = icmp sgt i32 %i.i, 3
  br i1 %i.j, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.586, ptr noundef nonnull %i.d, i32 noundef %i.g) #31
  br label %.critedge

bb.d:                                             ; preds = %.lr.ph
  switch i32 %i.g, label %.thread [
    i32 6, label %bb.e
    i32 3, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !241
  %.not41 = icmp eq ptr %i.l, null
  br i1 %.not41, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105
  %i.n = icmp sgt i32 %i.m, 3
  br i1 %i.n, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.03574
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !234
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.587, ptr noundef %i.p) #31
  br label %.critedge

bb.h:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !239
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %.thread104

bb.i:                                             ; preds = %bb.h
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105
  %i.u = icmp sgt i32 %i.t, 3
  br i1 %i.u, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.588, ptr noundef nonnull %i.d) #31
  br label %.critedge

.thread:                                          ; preds = %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !239
  %.off = add i32 %i.w, -1
  %switch = icmp ult i32 %.off, -2
  br i1 %switch, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.thread
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105
  %i.y = icmp sgt i32 %i.x, 3
  br i1 %i.y, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.589, ptr noundef nonnull %i.d) #31
  br label %.critedge

bb.m:                                             ; preds = %.thread
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !251
  %.not44 = icmp ult i32 %i.aa, 8
  br i1 %.not44, label %bb.p, label %bb.n

.thread104:                                       ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !251
  %.not44105 = icmp ult i32 %i.ac, 8
  br i1 %.not44105, label %.thread106, label %bb.n

bb.n:                                             ; preds = %.thread104, %bb.m
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105
  %i.ae = icmp sgt i32 %i.ad, 3
  br i1 %i.ae, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.590, ptr noundef nonnull %i.d) #31
  br label %.critedge

bb.p:                                             ; preds = %bb.m
  %i.af = icmp samesign ugt i32 %i.g, 6
  br i1 %i.af, label %bb.q, label %.thread106

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !253 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105
  %i.ak = icmp sgt i32 %i.aj, 3
  br i1 %i.ak, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.591, ptr noundef nonnull %i.d) #31
  br label %.critedge

bb.t:                                             ; preds = %bb.q
  %i.al = tail call fastcc i32 @moduleValidateCommandArgs(ptr noundef nonnull %i.ah, ptr noundef %1)
  %.not46 = icmp eq i32 %i.al, 0
  br i1 %.not46, label %.critedge, label %bb.w

.thread106:                                       ; preds = %.thread104, %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !253
  %.not45 = icmp eq ptr %i.an, null
  br i1 %.not45, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.thread106
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105
  %i.ap = icmp sgt i32 %i.ao, 3
  br i1 %i.ap, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.592, ptr noundef nonnull %i.d) #31
  br label %.critedge

bb.w:                                             ; preds = %.thread106, %bb.t
  %i.aq = add i64 %.03574, 1                      ; 2 uses
  %.val49 = load i64, ptr %i.b, align 8, !tbaa !233
  %sext = shl i64 %i.aq, 32
  %i.ar = ashr exact i64 %sext, 32
  %i.as = mul i64 %i.ar, %.val49
  %i.at = getelementptr inbounds i8, ptr %0, i64 %i.as ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !234 ; 2 uses
  %.not = icmp eq ptr %i.au, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !731

.critedge:                                        ; preds = %bb.w, %bb.t, %.preheader, %bb.c, %bb.g, %bb.l, %bb.o, %bb.s, %bb.j, %bb.b, %bb.f, %bb.i, %bb.k, %bb.n, %bb.r, %bb.u, %bb.v, %bb.a
  %.3 = phi i32 [ 1, %bb.a ], [ 0, %bb.g ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.r ], [ 0, %bb.n ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.b ], [ 0, %bb.j ], [ 0, %bb.c ], [ 0, %bb.s ], [ 0, %bb.o ], [ 0, %bb.l ], [ 1, %.preheader ], [ 1, %bb.w ], [ 0, %bb.t ]
  ret i32 %.3
}

declare i64 @rdbWriteRaw(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i16 @crc16(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @kvobjGetKey(ptr noundef) local_unnamed_addr #1

declare i32 @entryIsExpired(ptr noundef) local_unnamed_addr #1

declare ptr @entryGetValue(ptr noundef) local_unnamed_addr #1

declare ptr @createStringObjectFromLongDouble(x86_fp80 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i3 @llvm.bitreverse.i3(i3) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #28

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nounwind willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind }
attributes #32 = { nounwind allocsize(0) }
attributes #33 = { nounwind allocsize(1) }
attributes #34 = { noreturn nounwind }
attributes #35 = { nounwind willreturn memory(read) }
attributes #36 = { nounwind willreturn memory(none) }
attributes #37 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !22, i64 96}
!14 = !{!"RedisModuleCtx", !15, i64 0, !16, i64 8, !17, i64 16, !18, i64 24, !19, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !20, i64 56, !10, i64 64, !15, i64 72, !21, i64 80, !15, i64 88, !22, i64 96, !23, i64 104, !24, i64 112}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"p1 _ZTS11RedisModule", !15, i64 0}
!17 = !{!"p1 _ZTS6client", !15, i64 0}
!18 = !{!"p1 _ZTS24RedisModuleBlockedClient", !15, i64 0}
!19 = !{!"p1 _ZTS12AutoMemEntry", !15, i64 0}
!20 = !{!"any p2 pointer", !15, i64 0}
!21 = !{!"p1 _ZTS11redisObject", !15, i64 0}
!22 = !{!"p1 _ZTS25RedisModulePoolAllocBlock", !15, i64 0}
!23 = !{!"long long", !11, i64 0}
!24 = !{!"p1 _ZTS15RedisModuleUser", !15, i64 0}
!25 = !{!22, !22, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = distinct !{!28, !27}
!29 = !{!30, !30, i64 0}
!30 = !{!"long", !11, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"p2 _ZTS6client", !20, i64 0}
!33 = !{!17, !17, i64 0}
!34 = !{!35, !30, i64 8}
!35 = !{!"client", !30, i64 0, !30, i64 8, !36, i64 16, !11, i64 24, !11, i64 25, !11, i64 26, !11, i64 27, !10, i64 28, !37, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !38, i64 64, !30, i64 72, !30, i64 80, !10, i64 88, !39, i64 96, !10, i64 104, !10, i64 108, !39, i64 112, !30, i64 120, !40, i64 128, !41, i64 152, !42, i64 160, !10, i64 168, !39, i64 176, !10, i64 184, !10, i64 188, !43, i64 192, !43, i64 200, !43, i64 208, !43, i64 216, !15, i64 224, !10, i64 232, !10, i64 236, !30, i64 240, !44, i64 248, !23, i64 256, !44, i64 264, !30, i64 272, !30, i64 280, !30, i64 288, !10, i64 296, !10, i64 300, !45, i64 304, !30, i64 312, !30, i64 320, !30, i64 328, !23, i64 336, !23, i64 344, !10, i64 352, !10, i64 356, !10, i64 360, !10, i64 364, !30, i64 368, !30, i64 376, !38, i64 384, !23, i64 392, !23, i64 400, !23, i64 408, !23, i64 416, !23, i64 424, !23, i64 432, !23, i64 440, !23, i64 448, !23, i64 456, !23, i64 464, !23, i64 472, !11, i64 480, !10, i64 524, !38, i64 528, !10, i64 536, !10, i64 540, !30, i64 544, !46, i64 552, !48, i64 592, !23, i64 664, !44, i64 672, !49, i64 680, !49, i64 688, !49, i64 696, !38, i64 704, !38, i64 712, !50, i64 720, !50, i64 728, !50, i64 736, !15, i64 744, !15, i64 752, !15, i64 760, !15, i64 768, !15, i64 776, !30, i64 784, !51, i64 792, !30, i64 800, !10, i64 808, !50, i64 816, !15, i64 824, !50, i64 832, !30, i64 840, !50, i64 848, !30, i64 856, !50, i64 864, !30, i64 872, !52, i64 880, !52, i64 904, !30, i64 928, !30, i64 936, !30, i64 944, !23, i64 952, !30, i64 960, !30, i64 968, !38, i64 976, !11, i64 984, !53, i64 992, !23, i64 1000, !23, i64 1008, !23, i64 1016, !54, i64 1024, !38, i64 1032, !11, i64 1040}
!36 = !{!"p1 _ZTS10connection", !15, i64 0}
!37 = !{!"p1 _ZTS7redisDb", !15, i64 0}
!38 = !{!"p1 omnipotent char", !15, i64 0}
!39 = !{!"p2 _ZTS11redisObject", !20, i64 0}
!40 = !{!"pendingCommandList", !41, i64 0, !41, i64 8, !10, i64 16, !10, i64 20}
!41 = !{!"p1 _ZTS14pendingCommand", !15, i64 0}
!42 = !{!"p1 _ZTS14deferredObject", !15, i64 0}
!43 = !{!"p1 _ZTS12redisCommand", !15, i64 0}
!44 = !{!"p1 _ZTS4list", !15, i64 0}
!45 = !{!"p1 _ZTS9dictEntry", !15, i64 0}
!46 = !{!"multiState", !47, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !30, i64 24, !10, i64 32}
!47 = !{!"p2 _ZTS14pendingCommand", !20, i64 0}
!48 = !{!"blockingState", !10, i64 0, !23, i64 8, !10, i64 16, !49, i64 24, !10, i64 32, !10, i64 36, !23, i64 40, !15, i64 48, !15, i64 56, !30, i64 64}
!49 = !{!"p1 _ZTS4dict", !15, i64 0}
!50 = !{!"p1 _ZTS8listNode", !15, i64 0}
!51 = !{!"p1 _ZTS3rax", !15, i64 0}
!52 = !{!"listNode", !50, i64 0, !50, i64 8, !15, i64 16}
!53 = !{!"p1 _ZTS13payloadHeader", !15, i64 0}
!54 = !{!"p1 _ZTS7asmTask", !15, i64 0}
!55 = !{!35, !15, i64 224}
!56 = !{!35, !44, i64 248}
!57 = !{!35, !23, i64 256}
!58 = !{!35, !30, i64 288}
!59 = !{!35, !30, i64 120}
!60 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!61 = !{!35, !30, i64 960}
!62 = !{!35, !15, i64 648}
!63 = !{!64, !17, i64 32}
!64 = !{!"RedisModuleAsyncRMCallPromise", !30, i64 0, !15, i64 8, !16, i64 16, !15, i64 24, !17, i64 32, !65, i64 40}
!65 = !{!"p1 _ZTS14RedisModuleCtx", !15, i64 0}
!66 = !{!64, !30, i64 0}
!67 = !{!68, !10, i64 40}
!68 = !{!"RedisModuleKey", !65, i64 0, !37, i64 8, !21, i64 16, !21, i64 24, !15, i64 32, !10, i64 40, !11, i64 48}
!69 = !{!68, !21, i64 24}
!70 = !{!21, !21, i64 0}
!71 = !{!68, !37, i64 8}
!72 = !{!68, !21, i64 16}
!73 = !{!11, !11, i64 0}
!74 = !{!68, !15, i64 32}
!75 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!76 = !{!77, !49, i64 272}
!77 = !{!"redisServer", !10, i64 0, !30, i64 8, !38, i64 16, !38, i64 24, !78, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !37, i64 64, !49, i64 72, !49, i64 80, !79, i64 88, !51, i64 96, !10, i64 104, !10, i64 108, !11, i64 112, !11, i64 116, !23, i64 120, !11, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !38, i64 144, !10, i64 152, !10, i64 156, !11, i64 160, !10, i64 204, !30, i64 208, !10, i64 216, !10, i64 220, !10, i64 224, !38, i64 232, !38, i64 240, !10, i64 248, !10, i64 252, !30, i64 256, !11, i64 264, !49, i64 272, !49, i64 280, !49, i64 288, !44, i64 296, !11, i64 304, !10, i64 312, !10, i64 316, !11, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !11, i64 336, !10, i64 464, !38, i64 472, !38, i64 480, !10, i64 488, !11, i64 496, !10, i64 1328, !80, i64 1336, !44, i64 1440, !44, i64 1448, !44, i64 1456, !44, i64 1464, !44, i64 1472, !44, i64 1480, !44, i64 1488, !17, i64 1496, !17, i64 1504, !15, i64 1512, !51, i64 1520, !10, i64 1528, !51, i64 1536, !10, i64 1544, !44, i64 1552, !11, i64 1560, !11, i64 1624, !49, i64 1880, !11, i64 1888, !10, i64 1896, !10, i64 1900, !11, i64 1904, !10, i64 2416, !10, i64 2420, !82, i64 2424, !10, i64 2448, !23, i64 2456, !10, i64 2464, !10, i64 2468, !10, i64 2472, !10, i64 2476, !10, i64 2480, !30, i64 2488, !30, i64 2496, !30, i64 2504, !30, i64 2512, !30, i64 2520, !30, i64 2528, !23, i64 2536, !23, i64 2544, !23, i64 2552, !23, i64 2560, !23, i64 2568, !23, i64 2576, !83, i64 2584, !23, i64 2592, !23, i64 2600, !23, i64 2608, !23, i64 2616, !23, i64 2624, !23, i64 2632, !30, i64 2640, !23, i64 2648, !23, i64 2656, !23, i64 2664, !23, i64 2672, !23, i64 2680, !23, i64 2688, !23, i64 2696, !23, i64 2704, !30, i64 2712, !30, i64 2720, !30, i64 2728, !23, i64 2736, !23, i64 2744, !23, i64 2752, !23, i64 2760, !23, i64 2768, !83, i64 2776, !23, i64 2784, !23, i64 2792, !23, i64 2800, !23, i64 2808, !23, i64 2816, !44, i64 2824, !23, i64 2832, !23, i64 2840, !30, i64 2848, !84, i64 2856, !11, i64 2944, !11, i64 2952, !11, i64 2960, !11, i64 2968, !30, i64 2976, !30, i64 2984, !30, i64 2992, !30, i64 3000, !30, i64 3008, !30, i64 3016, !30, i64 3024, !30, i64 3032, !83, i64 3040, !11, i64 3048, !30, i64 3080, !23, i64 3088, !23, i64 3096, !23, i64 3104, !11, i64 3112, !11, i64 4136, !11, i64 5160, !23, i64 5168, !23, i64 5176, !23, i64 5184, !23, i64 5192, !11, i64 5200, !23, i64 6264, !23, i64 6272, !30, i64 6280, !23, i64 6288, !23, i64 6296, !30, i64 6304, !11, i64 6312, !85, i64 6408, !10, i64 6416, !10, i64 6420, !10, i64 6424, !10, i64 6428, !10, i64 6432, !10, i64 6436, !10, i64 6440, !10, i64 6444, !10, i64 6448, !10, i64 6452, !10, i64 6456, !10, i64 6460, !10, i64 6464, !30, i64 6472, !10, i64 6480, !10, i64 6484, !10, i64 6488, !10, i64 6492, !30, i64 6496, !30, i64 6504, !10, i64 6512, !10, i64 6516, !10, i64 6520, !10, i64 6524, !10, i64 6528, !10, i64 6532, !38, i64 6536, !11, i64 6544, !10, i64 6616, !10, i64 6620, !10, i64 6624, !86, i64 6632, !10, i64 6640, !10, i64 6644, !10, i64 6648, !10, i64 6652, !10, i64 6656, !10, i64 6660, !10, i64 6664, !10, i64 6668, !10, i64 6672, !38, i64 6680, !38, i64 6688, !10, i64 6696, !10, i64 6700, !30, i64 6704, !30, i64 6712, !30, i64 6720, !30, i64 6728, !30, i64 6736, !10, i64 6744, !10, i64 6748, !38, i64 6752, !10, i64 6760, !10, i64 6764, !23, i64 6768, !23, i64 6776, !30, i64 6784, !30, i64 6792, !30, i64 6800, !10, i64 6808, !10, i64 6812, !30, i64 6816, !10, i64 6824, !10, i64 6828, !10, i64 6832, !10, i64 6836, !10, i64 6840, !30, i64 6848, !10, i64 6856, !11, i64 6860, !11, i64 6864, !15, i64 6872, !10, i64 6880, !23, i64 6888, !23, i64 6896, !23, i64 6904, !23, i64 6912, !10, i64 6920, !87, i64 6928, !10, i64 6936, !38, i64 6944, !10, i64 6952, !10, i64 6956, !10, i64 6960, !30, i64 6968, !30, i64 6976, !30, i64 6984, !30, i64 6992, !10, i64 7000, !10, i64 7004, !10, i64 7008, !10, i64 7012, !10, i64 7016, !10, i64 7020, !88, i64 7024, !10, i64 7032, !10, i64 7036, !38, i64 7040, !10, i64 7048, !10, i64 7052, !10, i64 7056, !11, i64 7060, !10, i64 7068, !89, i64 7072, !10, i64 7088, !38, i64 7096, !10, i64 7104, !38, i64 7112, !10, i64 7120, !10, i64 7124, !10, i64 7128, !10, i64 7132, !10, i64 7136, !10, i64 7140, !10, i64 7144, !11, i64 7148, !11, i64 7189, !23, i64 7232, !23, i64 7240, !11, i64 7248, !23, i64 7256, !10, i64 7264, !10, i64 7268, !91, i64 7272, !23, i64 7280, !23, i64 7288, !92, i64 7296, !30, i64 7344, !30, i64 7352, !10, i64 7360, !10, i64 7364, !10, i64 7368, !10, i64 7372, !10, i64 7376, !10, i64 7380, !10, i64 7384, !10, i64 7388, !10, i64 7392, !30, i64 7400, !44, i64 7408, !30, i64 7416, !38, i64 7424, !38, i64 7432, !38, i64 7440, !10, i64 7448, !10, i64 7452, !17, i64 7456, !17, i64 7464, !10, i64 7472, !10, i64 7476, !10, i64 7480, !10, i64 7484, !30, i64 7488, !30, i64 7496, !30, i64 7504, !30, i64 7512, !30, i64 7520, !36, i64 7528, !36, i64 7536, !10, i64 7544, !38, i64 7552, !30, i64 7560, !10, i64 7568, !10, i64 7572, !10, i64 7576, !30, i64 7584, !30, i64 7592, !10, i64 7600, !10, i64 7604, !10, i64 7608, !10, i64 7612, !38, i64 7616, !10, i64 7624, !10, i64 7628, !11, i64 7632, !23, i64 7680, !10, i64 7688, !44, i64 7696, !10, i64 7704, !23, i64 7712, !23, i64 7720, !30, i64 7728, !30, i64 7736, !10, i64 7744, !23, i64 7752, !30, i64 7760, !10, i64 7768, !10, i64 7772, !10, i64 7776, !10, i64 7780, !10, i64 7784, !23, i64 7792, !11, i64 7800, !10, i64 7812, !10, i64 7816, !10, i64 7820, !11, i64 7824, !44, i64 7872, !44, i64 7880, !10, i64 7888, !30, i64 7896, !44, i64 7904, !44, i64 7912, !10, i64 7920, !10, i64 7924, !10, i64 7928, !10, i64 7932, !30, i64 7936, !30, i64 7944, !30, i64 7952, !30, i64 7960, !30, i64 7968, !30, i64 7976, !30, i64 7984, !30, i64 7992, !30, i64 8000, !23, i64 8008, !23, i64 8016, !23, i64 8024, !10, i64 8032, !10, i64 8036, !11, i64 8040, !30, i64 8048, !11, i64 8056, !23, i64 8064, !23, i64 8072, !10, i64 8080, !30, i64 8088, !23, i64 8096, !30, i64 8104, !23, i64 8112, !93, i64 8120, !49, i64 8128, !10, i64 8136, !93, i64 8144, !10, i64 8152, !10, i64 8156, !10, i64 8160, !10, i64 8164, !23, i64 8168, !23, i64 8176, !38, i64 8184, !23, i64 8192, !23, i64 8200, !23, i64 8208, !10, i64 8216, !94, i64 8224, !10, i64 8232, !10, i64 8236, !10, i64 8240, !10, i64 8244, !10, i64 8248, !38, i64 8256, !38, i64 8264, !38, i64 8272, !10, i64 8280, !10, i64 8284, !10, i64 8288, !10, i64 8292, !10, i64 8296, !10, i64 8300, !10, i64 8304, !10, i64 8308, !23, i64 8312, !10, i64 8320, !10, i64 8324, !10, i64 8328, !23, i64 8336, !10, i64 8344, !10, i64 8348, !10, i64 8352, !10, i64 8356, !10, i64 8360, !10, i64 8364, !10, i64 8368, !10, i64 8372, !10, i64 8376, !23, i64 8384, !49, i64 8392, !38, i64 8400, !30, i64 8408, !38, i64 8416, !10, i64 8424, !95, i64 8432, !10, i64 8472, !30, i64 8480, !10, i64 8488, !10, i64 8492, !10, i64 8496, !96, i64 8504, !38, i64 8624, !38, i64 8632, !38, i64 8640, !38, i64 8648, !97, i64 8656, !23, i64 8664, !10, i64 8672, !38, i64 8680, !10, i64 8688, !10, i64 8692, !10, i64 8696, !30, i64 8704, !10, i64 8712, !10, i64 8716, !38, i64 8720, !10, i64 8728, !10, i64 8732}
!78 = !{!"p2 omnipotent char", !20, i64 0}
!79 = !{!"p1 _ZTS11aeEventLoop", !15, i64 0}
!80 = !{!"connListener", !11, i64 0, !10, i64 64, !78, i64 72, !10, i64 80, !10, i64 84, !81, i64 88, !15, i64 96}
!81 = !{!"p1 _ZTS14ConnectionType", !15, i64 0}
!82 = !{!"pendingCommandPool", !47, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!83 = !{!"double", !11, i64 0}
!84 = !{!"malloc_stats", !30, i64 0, !30, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !30, i64 48, !30, i64 56, !30, i64 64, !30, i64 72, !30, i64 80}
!85 = !{!"p1 _ZTS11hotkeyStats", !15, i64 0}
!86 = !{!"p1 double", !15, i64 0}
!87 = !{!"p1 _ZTS9saveparam", !15, i64 0}
!88 = !{!"p2 _ZTS10connection", !20, i64 0}
!89 = !{!"redisOpArray", !90, i64 0, !10, i64 8, !10, i64 12}
!90 = !{!"p1 _ZTS7redisOp", !15, i64 0}
!91 = !{!"p1 _ZTS11replBacklog", !15, i64 0}
!92 = !{!"replDataBuf", !44, i64 0, !30, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !30, i64 40}
!93 = !{!"p1 _ZTS8_kvstore", !15, i64 0}
!94 = !{!"p1 _ZTS12clusterState", !15, i64 0}
!95 = !{!"aclInfo", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32}
!96 = !{!"redisTLSContextConfig", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !10, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !38, i64 88, !38, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116}
!97 = !{!"p1 _ZTS14sentinelConfig", !15, i64 0}
!98 = !{!15, !15, i64 0}
!99 = !{!77, !10, i64 1528}
!100 = !{!77, !10, i64 224}
!101 = !{!77, !17, i64 1496}
!102 = !{!14, !10, i64 48}
!103 = !{!14, !20, i64 56}
!104 = !{!14, !10, i64 64}
!105 = !{!77, !10, i64 6416}
!106 = !{!14, !16, i64 8}
!107 = !{!108, !38, i64 8}
!108 = !{!"RedisModule", !15, i64 0, !38, i64 8, !10, i64 16, !10, i64 20, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !109, i64 128, !10, i64 136, !10, i64 140, !30, i64 144}
!109 = !{!"p1 _ZTS20moduleLoadQueueEntry", !15, i64 0}
!110 = !{!14, !17, i64 16}
!111 = !{!14, !10, i64 44}
!112 = !{!14, !19, i64 32}
!113 = !{!114, !15, i64 0}
!114 = !{!"AutoMemEntry", !15, i64 0, !10, i64 8}
!115 = !{!114, !10, i64 8}
!116 = !{!117, !51, i64 0}
!117 = !{!"RedisModuleDict", !51, i64 0}
!118 = !{!119, !51, i64 0}
!119 = !{!"RedisModuleServerInfoData", !51, i64 0}
!120 = !{!121, !122, i64 0}
!121 = !{!"RedisModuleConfigIterator", !122, i64 0, !38, i64 8, !10, i64 16}
!122 = !{!"p1 _ZTS12dictIterator", !15, i64 0}
!123 = !{!121, !38, i64 8}
!124 = distinct !{!124, !27}
!125 = !{!64, !15, i64 24}
!126 = !{!64, !16, i64 16}
!127 = !{!14, !15, i64 0}
!128 = !{!77, !10, i64 2476}
!129 = !{ptr @moduleCreateContext}
!130 = !{!77, !10, i64 52}
!131 = !{!77, !23, i64 8336}
!132 = !{!14, !23, i64 104}
!133 = !{!35, !37, i64 32}
!134 = !{!135, !10, i64 72}
!135 = !{!"redisDb", !93, i64 0, !93, i64 8, !136, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !10, i64 72, !23, i64 80, !30, i64 88}
!136 = !{!"p1 _ZTS7_estore", !15, i64 0}
!137 = !{!35, !38, i64 976}
!138 = !{!139, !30, i64 40}
!139 = !{!"list", !50, i64 0, !50, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !30, i64 40}
!140 = !{!139, !50, i64 0}
!141 = !{!52, !15, i64 16}
!142 = distinct !{!142, !27}
!143 = !{!35, !44, i64 264}
!144 = !{!108, !10, i64 68}
!145 = !{!64, !15, i64 8}
!146 = !{!35, !43, i64 192}
!147 = !{!148, !152, i64 304}
!148 = !{!"redisCommand", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !10, i64 32, !38, i64 40, !38, i64 48, !10, i64 56, !15, i64 64, !10, i64 72, !78, i64 80, !10, i64 88, !15, i64 96, !10, i64 104, !30, i64 112, !30, i64 120, !15, i64 128, !10, i64 136, !15, i64 144, !10, i64 152, !43, i64 160, !149, i64 168, !23, i64 176, !23, i64 184, !23, i64 192, !23, i64 200, !10, i64 208, !38, i64 216, !150, i64 224, !151, i64 232, !49, i64 288, !43, i64 296, !152, i64 304}
!149 = !{!"p1 _ZTS15redisCommandArg", !15, i64 0}
!150 = !{!"p1 _ZTS13hdr_histogram", !15, i64 0}
!151 = !{!"", !38, i64 0, !30, i64 8, !10, i64 16, !11, i64 24, !10, i64 40, !11, i64 44}
!152 = !{!"p1 _ZTS18RedisModuleCommand", !15, i64 0}
!153 = !{!154, !16, i64 0}
!154 = !{!"RedisModuleCommand", !16, i64 0, !15, i64 8, !43, i64 16}
!155 = !{!154, !15, i64 8}
end_hunk_2
begin_hunk_3_@llvm.umin.i64/@llvm.usub.sat.i32
!390 = !{!16, !16, i64 0}
!391 = !{!65, !65, i64 0}
!392 = !{!44, !44, i64 0}
!393 = !{!394, !39, i64 0}
!394 = !{!"RedisModuleCommandFilterCtx", !39, i64 0, !10, i64 8, !10, i64 12, !17, i64 16}
!395 = !{!394, !10, i64 8}
!396 = !{!394, !10, i64 12}
!397 = !{!394, !17, i64 16}
!398 = !{!399, !10, i64 16}
!399 = !{!"RedisModuleCommandFilter", !16, i64 0, !15, i64 8, !10, i64 16}
!400 = !{!399, !16, i64 0}
!401 = distinct !{!401, !27}
!402 = !{!399, !15, i64 8}
!403 = !{!35, !43, i64 208}
!404 = !{!35, !41, i64 152}
!405 = !{!406, !39, i64 8}
!406 = !{!"pendingCommand", !10, i64 0, !10, i64 4, !39, i64 8, !30, i64 16, !23, i64 24, !43, i64 32, !161, i64 40, !23, i64 104, !10, i64 112, !10, i64 116, !11, i64 120, !41, i64 128, !41, i64 136}
!407 = !{!406, !10, i64 0}
!408 = !{!406, !10, i64 4}
!409 = !{!406, !43, i64 32}
!410 = !{!406, !10, i64 116}
!411 = !{!406, !10, i64 112}
!412 = distinct !{!412, !27}
!413 = distinct !{!413, !27}
!414 = !{!415, !416, i64 8}
!415 = !{!"", !30, i64 0, !416, i64 8}
!416 = !{!"p1 _ZTS15RedisModuleType", !15, i64 0}
!417 = !{!415, !30, i64 0}
!418 = !{!419, !30, i64 24}
!419 = !{!"RedisModuleType", !420, i64 0, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !10, i64 168}
!420 = !{!"ModuleEntityId", !16, i64 0, !11, i64 8, !30, i64 24}
!421 = distinct !{!421, !27}
!422 = !{!419, !16, i64 0}
!423 = !{!424, !416, i64 0}
!424 = !{!"moduleValue", !416, i64 0, !15, i64 8}
!425 = !{!419, !15, i64 96}
!426 = !{!419, !15, i64 152}
!427 = !{!424, !15, i64 8}
!428 = !{!429, !30, i64 0}
!429 = !{!"typemethods", !30, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !430, i64 56, !431, i64 80, !431, i64 112, !432, i64 144}
!430 = !{!"", !15, i64 0, !15, i64 8, !10, i64 16}
!431 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!432 = !{!"", !15, i64 0}
!433 = !{!429, !10, i64 72}
!434 = !{!419, !10, i64 168}
!435 = !{!429, !15, i64 144}
!436 = !{!419, !15, i64 160}
!437 = !{!438, !440, i64 16}
!438 = !{!"RedisModuleIO", !30, i64 0, !439, i64 8, !440, i64 16, !10, i64 24, !65, i64 32, !21, i64 40, !10, i64 48, !38, i64 56}
!439 = !{!"p1 _ZTS4_rio", !15, i64 0}
!440 = !{!"p1 _ZTS14ModuleEntityId", !15, i64 0}
!441 = !{!420, !16, i64 0}
!442 = !{!438, !10, i64 24}
!443 = !{!438, !30, i64 0}
!444 = !{!438, !21, i64 40}
!445 = distinct !{!445, !27}
!446 = distinct !{!446, !27}
!447 = !{!438, !38, i64 56}
!448 = !{!438, !439, i64 8}
!449 = !{!450, !450, i64 0}
!450 = !{!"long double", !11, i64 0}
!451 = !{!419, !15, i64 120}
!452 = distinct !{!452, !27}
!453 = distinct !{!453, !27}
!454 = !{!438, !10, i64 48}
!455 = !{!438, !65, i64 32}
!456 = !{!419, !15, i64 32}
!457 = !{ptr @RM_LoadDataTypeFromStringEncver}
!458 = !{!419, !15, i64 40}
!459 = !{!460, !21, i64 40}
!460 = !{!"RedisModuleDigest", !11, i64 0, !11, i64 20, !21, i64 40, !10, i64 48}
!461 = !{!460, !10, i64 48}
!462 = distinct !{!462, !27}
!463 = !{!77, !23, i64 8384}
!464 = !{!35, !15, i64 640}
!465 = !{!271, !10, i64 88}
!466 = !{!271, !15, i64 40}
!467 = !{!271, !16, i64 8}
!468 = !{!271, !15, i64 56}
!469 = !{!14, !15, i64 72}
!470 = !{!271, !17, i64 0}
!471 = !{!271, !10, i64 84}
!472 = !{!108, !10, i64 80}
!473 = !{!271, !15, i64 16}
!474 = !{!271, !15, i64 24}
!475 = !{!271, !15, i64 32}
!476 = !{!271, !15, i64 48}
!477 = !{!271, !17, i64 64}
!478 = !{!271, !10, i64 80}
!479 = !{!35, !15, i64 752}
!480 = !{!35, !23, i64 600}
!481 = !{!482, !16, i64 0}
!482 = !{!"RedisModuleAuthCtx", !16, i64 0, !15, i64 8}
!483 = !{!482, !15, i64 8}
!484 = distinct !{!484, !27}
!485 = distinct !{!485, !27}
!486 = !{!35, !15, i64 744}
!487 = !{!14, !21, i64 80}
!488 = !{ptr @moduleInvokeFreePrivDataCallback}
!489 = !{!148, !23, i64 176}
!490 = !{!35, !10, i64 352}
!491 = !{!271, !10, i64 112}
!492 = !{!77, !23, i64 3096}
!493 = !{!77, !23, i64 7232}
!494 = !{!35, !23, i64 664}
!495 = !{!77, !44, i64 1456}
!496 = distinct !{!496, !27}
!497 = !{!35, !10, i64 592}
!498 = !{!499, !16, i64 0}
!499 = !{!"RedisModuleKeyspaceSubscriber", !16, i64 0, !15, i64 8, !10, i64 16, !10, i64 20}
!500 = !{!499, !10, i64 16}
!501 = !{!499, !15, i64 8}
!502 = !{!499, !10, i64 20}
!503 = distinct !{!503, !27}
!504 = distinct !{!504, !27}
!505 = !{!506, !16, i64 0}
!506 = !{!"RedisModulePostExecUnitJob", !16, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !10, i64 32}
!507 = !{!506, !10, i64 32}
!508 = !{!506, !15, i64 8}
!509 = !{!506, !15, i64 16}
!510 = !{!506, !15, i64 24}
!511 = distinct !{!511, !27}
!512 = !{!77, !10, i64 8136}
!513 = distinct !{!513, !27}
!514 = distinct !{!514, !27}
!515 = !{!516, !516, i64 0}
!516 = !{!"p1 _ZTS21moduleClusterReceiver", !15, i64 0}
!517 = !{!518, !30, i64 0}
!518 = !{!"moduleClusterReceiver", !30, i64 0, !15, i64 8, !16, i64 16, !516, i64 24}
!519 = !{!518, !16, i64 16}
!520 = !{!518, !15, i64 8}
!521 = distinct !{!521, !27}
!522 = distinct !{!522, !27}
!523 = !{!518, !516, i64 24}
!524 = distinct !{!524, !27}
!525 = !{!77, !10, i64 8296}
!526 = !{!77, !10, i64 8300}
!527 = distinct !{!527, !27}
!528 = !{!"branch_weights", !"expected", i32 2145486172, i32 1997476}
!529 = distinct !{!529, !27}
!530 = !{!"branch_weights", !"expected", i32 2145933805, i32 1549843}
!531 = distinct !{!531, !27}
!532 = !{!51, !51, i64 0}
!533 = !{!534, !38, i64 16}
!534 = !{!"raxIterator", !10, i64 0, !51, i64 8, !38, i64 16, !15, i64 24, !30, i64 32, !30, i64 40, !11, i64 48, !535, i64 176, !536, i64 184, !15, i64 472, !15, i64 480}
!535 = !{!"p1 _ZTS7raxNode", !15, i64 0}
!536 = !{!"raxStack", !20, i64 0, !30, i64 8, !30, i64 16, !11, i64 24, !10, i64 280}
!537 = !{!534, !15, i64 24}
!538 = !{!539, !16, i64 0}
!539 = !{!"RedisModuleTimer", !16, i64 0, !15, i64 8, !15, i64 16, !10, i64 24}
!540 = !{!539, !10, i64 24}
!541 = !{!539, !15, i64 8}
!542 = !{!539, !15, i64 16}
!543 = !{!534, !30, i64 32}
!544 = !{!77, !79, i64 88}
!545 = !{!546, !15, i64 16}
!546 = !{!"EventLoopData", !15, i64 0, !15, i64 8, !15, i64 16}
!547 = !{!546, !15, i64 0}
!548 = !{!546, !15, i64 8}
!549 = !{!550, !15, i64 0}
!550 = !{!"EventLoopOneShot", !15, i64 0, !15, i64 8}
!551 = !{!550, !15, i64 8}
!552 = !{!35, !15, i64 760}
!553 = !{!35, !15, i64 768}
!554 = !{ptr @moduleNotifyUserChanged}
!555 = !{!556, !15, i64 0}
!556 = !{!"RedisModuleUser", !15, i64 0, !10, i64 8}
!557 = !{!556, !10, i64 8}
!558 = !{!300, !11, i64 8}
!559 = distinct !{null, ptr @moduleNotifyUserChanged}
!560 = !{!35, !15, i64 776}
!561 = !{ptr @revokeClientAuthentication, ptr @moduleNotifyUserChanged}
!562 = !{!308, !15, i64 232}
!563 = distinct !{null}
!564 = !{!565, !566, i64 0}
!565 = !{!"RedisModuleDictIter", !566, i64 0, !534, i64 8}
!566 = !{!"p1 _ZTS15RedisModuleDict", !15, i64 0}
!567 = !{!565, !30, i64 40}
!568 = !{!565, !15, i64 32}
!569 = !{!565, !38, i64 24}
!570 = !{!571, !16, i64 0}
!571 = !{!"RedisModuleInfoCtx", !16, i64 0, !49, i64 8, !38, i64 16, !10, i64 24, !10, i64 28, !10, i64 32}
!572 = !{!571, !10, i64 32}
!573 = !{!571, !38, i64 16}
!574 = !{!571, !49, i64 8}
!575 = !{!571, !10, i64 28}
!576 = !{!571, !10, i64 24}
!577 = !{!108, !15, i64 88}
!578 = distinct !{!578, !27}
!579 = distinct !{!579, !27}
!580 = !{!581, !16, i64 8}
!581 = !{!"RedisModuleSharedAPI", !15, i64 0, !16, i64 8}
!582 = !{!581, !15, i64 0}
!583 = !{!77, !49, i64 280}
!584 = distinct !{!584, !27}
!585 = distinct !{!585, !27}
!586 = distinct !{!586, !27}
!587 = distinct !{!587, !27, !588, !589}
!588 = !{!"llvm.loop.isvectorized", i32 1}
!589 = !{!"llvm.loop.unroll.runtime.disable"}
!590 = distinct !{!590, !27, !588}
!591 = !{!592, !23, i64 0}
!592 = !{!"RedisModuleScanCursor", !23, i64 0, !10, i64 8}
!593 = !{!592, !10, i64 8}
!594 = !{!595, !65, i64 0}
!595 = !{!"", !65, i64 0, !15, i64 8, !15, i64 16}
!596 = !{!595, !15, i64 8}
!597 = !{!595, !15, i64 16}
!598 = !{!361, !49, i64 0}
!599 = !{!600, !601, i64 0}
!600 = !{!"", !601, i64 0, !15, i64 8, !15, i64 16}
!601 = !{!"p1 _ZTS14RedisModuleKey", !15, i64 0}
!602 = !{!600, !15, i64 8}
!603 = !{!600, !15, i64 16}
!604 = distinct !{!604, !27}
!605 = distinct !{!605, !27}
!606 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!607 = !{!608, !15, i64 0}
!608 = !{!"RedisModuleForkInfo", !15, i64 0, !15, i64 8}
!609 = !{!608, !15, i64 8}
!610 = !{!77, !10, i64 316}
!611 = !{!77, !10, i64 312}
!612 = distinct !{!612, !27}
!613 = !{!614, !16, i64 0}
!614 = !{!"RedisModuleEventListener", !16, i64 0, !615, i64 8, !15, i64 24}
!615 = !{!"RedisModuleEvent", !30, i64 0, !30, i64 8}
!616 = !{!614, !30, i64 8}
!617 = distinct !{!617, !27}
!618 = !{!614, !15, i64 24}
!619 = !{!614, !30, i64 16}
!620 = !{!108, !10, i64 72}
!621 = !{!622, !30, i64 0}
!622 = !{!"RedisModuleKeyInfo", !30, i64 0, !601, i64 8}
!623 = !{!622, !601, i64 8}
!624 = !{!625, !10, i64 12}
!625 = !{!"RedisModuleFlushInfo", !30, i64 0, !10, i64 8, !10, i64 12}
!626 = !{!627, !30, i64 0}
!627 = !{!"RedisModuleModuleChange", !30, i64 0, !38, i64 8, !10, i64 16}
!628 = !{!627, !38, i64 8}
!629 = !{!627, !10, i64 16}
!630 = !{!631, !10, i64 0}
!631 = !{!"KeyInfo", !10, i64 0, !21, i64 8, !21, i64 16, !10, i64 24}
!632 = !{!631, !21, i64 8}
!633 = !{!631, !21, i64 16}
!634 = !{!631, !10, i64 24}
!635 = distinct !{!635, !27}
!636 = !{!77, !30, i64 2488}
!637 = !{!77, !30, i64 2504}
!638 = !{!639, !30, i64 0}
!639 = !{!"RedisModuleLoadingProgressInfo", !30, i64 0, !10, i64 8, !10, i64 12}
!640 = !{!639, !10, i64 8}
!641 = !{!639, !10, i64 12}
!642 = !{!419, !15, i64 144}
!643 = !{!419, !15, i64 88}
!644 = !{!419, !15, i64 136}
!645 = !{!419, !15, i64 80}
!646 = !{!419, !15, i64 128}
!647 = !{!419, !15, i64 56}
!648 = !{!77, !49, i64 288}
!649 = !{!77, !11, i64 320}
!650 = distinct !{!650, !27}
!651 = !{!652, !38, i64 0}
!652 = !{!"moduleLoadQueueEntry", !38, i64 0, !10, i64 8, !39, i64 16}
!653 = !{!652, !10, i64 8}
!654 = !{!652, !39, i64 16}
!655 = distinct !{!655, !27}
!656 = distinct !{!656, !27}
!657 = !{!108, !15, i64 0}
!658 = !{!108, !109, i64 128}
!659 = distinct !{!659, !27}
!660 = !{!108, !10, i64 64}
!661 = distinct !{!661, !27}
!662 = !{!77, !10, i64 6420}
!663 = distinct !{!663, !27}
!664 = !{!665, !10, i64 24}
!665 = !{!"stat", !30, i64 0, !30, i64 8, !30, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !30, i64 40, !30, i64 48, !30, i64 56, !30, i64 64, !666, i64 72, !666, i64 88, !666, i64 104, !11, i64 120}
!666 = !{!"timespec", !30, i64 0, !30, i64 8}
!667 = distinct !{!667, !27}
!668 = distinct !{!668, !27}
!669 = distinct !{!669, !27}
!670 = !{!148, !38, i64 48}
!671 = !{!148, !150, i64 224}
!672 = distinct !{!672, !27}
!673 = distinct !{!673, !27}
!674 = distinct !{!674, !27}
!675 = distinct !{!675, !27}
!676 = !{!77, !44, i64 1440}
!677 = distinct !{!677, !27}
!678 = distinct !{null, ptr @revokeClientAuthentication, ptr @moduleNotifyUserChanged}
!679 = distinct !{!679, !27}
!680 = distinct !{null}
!681 = distinct !{!681, !27}
!682 = distinct !{!682, !27}
!683 = distinct !{!683, !27}
!684 = !{!139, !50, i64 8}
!685 = distinct !{!685, !27}
!686 = distinct !{!686, !27}
!687 = distinct !{!687, !27}
!688 = !{!257, !10, i64 16}
!689 = !{!257, !15, i64 24}
!690 = distinct !{!690, !27}
!691 = distinct !{!691, !27}
!692 = !{!257, !15, i64 48}
!693 = distinct !{!693, !27}
!694 = !{!257, !16, i64 56}
!695 = distinct !{!695, !27}
!696 = !{!697, !38, i64 0}
!697 = !{!"configEnum", !38, i64 0, !10, i64 8}
!698 = !{!697, !10, i64 8}
!699 = distinct !{!699, !27}
!700 = !{!701, !10, i64 0}
!701 = !{!"RedisModuleRdbStream", !10, i64 0, !11, i64 8}
!702 = !{!121, !10, i64 16}
!703 = !{!289, !21, i64 0}
!704 = distinct !{!704, !27, !588, !589}
!705 = distinct !{!705, !27, !589, !588}
!706 = distinct !{!706, !27}
!707 = !{!108, !15, i64 96}
!708 = !{!108, !15, i64 104}
!709 = !{!108, !15, i64 112}
!710 = !{!108, !15, i64 120}
!711 = !{!712, !10, i64 48}
!712 = !{!"RedisModuleDefragCtx", !30, i64 0, !713, i64 8, !21, i64 16, !10, i64 24, !23, i64 32, !23, i64 40, !10, i64 48}
!713 = !{!"p1 long", !15, i64 0}
!714 = !{!712, !30, i64 0}
!715 = !{!77, !23, i64 2664}
!716 = !{!712, !23, i64 32}
!717 = !{!77, !23, i64 2672}
!718 = !{!712, !23, i64 40}
!719 = !{!712, !713, i64 8}
!720 = !{!535, !535, i64 0}
!721 = !{!534, !15, i64 472}
!722 = !{ptr @RM_DefragShouldStop}
!723 = !{!534, !535, i64 176}
!724 = !{!712, !21, i64 16}
!725 = !{!712, !10, i64 24}
!726 = !{!419, !15, i64 104}
!727 = !{ptr @moduleGetFreeEffort}
!728 = !{!77, !30, i64 6496}
!729 = distinct !{!729, !27}
!730 = distinct !{!730, !27}
!731 = distinct !{!731, !27}
end_hunk_3
