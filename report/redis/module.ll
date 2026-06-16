inline.NumInlined: 700
inline.NumDeleted: 31
begin_hunk_0_@moduleUnregisterSharedAPI:bb.a
  %.1 = phi i32 [ %i.k, %bb.b ], [ %.09, %.lr.ph ] ; 2 uses
  %i.l = call ptr @dictNext(ptr noundef nonnull %1) #31 ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !584

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.c ]
  call void @dictResetIterator(ptr noundef nonnull %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret i32 %.0.lcssa
}

declare void @dictInitSafeIterator(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @dictGetKey(ptr noundef) local_unnamed_addr #1

declare i32 @dictDelete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @moduleUnregisterUsedAPI(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
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
  %i.c = load i32, ptr %i.b, align 4, !tbaa !396  ; 3 uses
  %i.d = icmp sgt i32 %1, %i.c
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !395
  %3 = add nuw nsw i32 %i.c, 1                    ; 3 uses
  %4 = icmp slt i32 %i.f, %3
  %.pre28.pre = load ptr, ptr %0, align 8, !tbaa !393 ; 2 uses
  br i1 %4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %3, ptr %i.e, align 8, !tbaa !395
  %i.g = zext nneg i32 %3 to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  %i.i = tail call ptr @zrealloc(ptr noundef %.pre28.pre, i64 noundef %i.h) #33 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !393
  %.pre = load i32, ptr %i.b, align 4, !tbaa !396
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre28 = phi ptr [ %i.i, %bb.d ], [ %.pre28.pre, %bb.c ] ; 3 uses
  %i.j = phi i32 [ %.pre, %bb.d ], [ %i.c, %bb.c ] ; 3 uses
  %i.k = icmp sgt i32 %i.j, %1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.l = zext i32 %i.j to i64                     ; 5 uses
  %i.m = zext nneg i32 %1 to i64                  ; 2 uses
  %i.n = add nsw i64 %i.l, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.m)
  %i.o = sub nsw i64 %i.l, %umin                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.o, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.o, -4                       ; 3 uses
  %i.p = sub nsw i64 %i.l, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = sub i64 %i.l, %index
  %i.r = getelementptr [8 x i8], ptr %.pre28, i64 %i.q ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -16
  %i.t = getelementptr i8, ptr %i.r, i64 -32
  %wide.load = load <2 x ptr>, ptr %i.s, align 8, !tbaa !70
  %wide.load32 = load <2 x ptr>, ptr %i.t, align 8, !tbaa !70
  %i.u = getelementptr i8, ptr %i.r, i64 -8
  %i.v = getelementptr i8, ptr %i.r, i64 -24
  store <2 x ptr> %wide.load, ptr %i.u, align 8, !tbaa !70
  store <2 x ptr> %wide.load32, ptr %i.v, align 8, !tbaa !70
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !587

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.l, %.lr.ph ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %.pre28, i64 %indvars.iv ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !70
  store ptr %i.z, ptr %i.x, align 8, !tbaa !70
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.aa = icmp samesign ugt i64 %indvars.iv.next, %i.m
  br i1 %i.aa, label %scalar.ph, label %._crit_edge, !llvm.loop !590

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.e
  %i.ab = zext nneg i32 %1 to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.pre28, i64 %i.ab
  store ptr %2, ptr %i.ac, align 8, !tbaa !70
  %i.ad = add nsw i32 %i.j, 1
  store i32 %i.ad, ptr %i.b, align 4, !tbaa !396
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
  %i.e = zext nneg i32 %1 to i64                  ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  tail call void @decrRefCount(ptr noundef %i.g) #31
  %i.h = load i32, ptr %i.b, align 4, !tbaa !396  ; 2 uses
  %i.i = add nsw i32 %i.h, -1                     ; 3 uses
  %i.j = icmp slt i32 %1, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !393    ; 4 uses
  %i.l = add i32 %i.h, -2
  %i.m = sub i32 %i.l, %1                         ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.m, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.o, 8589934588               ; 3 uses
  %i.p = add nuw nsw i64 %n.vec, %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = add i64 %index, %i.e                     ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %wide.load = load <2 x ptr>, ptr %i.s, align 8, !tbaa !70
  %wide.load20 = load <2 x ptr>, ptr %i.t, align 8, !tbaa !70
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.q ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x ptr> %wide.load, ptr %i.u, align 8, !tbaa !70
  store <2 x ptr> %wide.load20, ptr %i.v, align 8, !tbaa !70
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !591

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.e, %.lr.ph ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !70
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store ptr %i.y, ptr %i.z, align 8, !tbaa !70
  %i.aa = trunc nuw i64 %indvars.iv.next to i32
  %i.ab = icmp sgt i32 %i.i, %i.aa
  br i1 %i.ab, label %scalar.ph, label %._crit_edge, !llvm.loop !592

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.c
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

end_hunk_0
