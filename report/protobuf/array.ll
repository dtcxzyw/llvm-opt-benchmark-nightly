inline.NumInlined: 57
inline.NumDeleted: 27
begin_hunk_0_@upb_Array_Set:bb.a
  %i.j = shl nuw nsw i32 1, %i.g
  %i.k = zext nneg i32 %i.j to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0, i64 %i.k, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @upb_Array_Append(ptr noundef captures(none) %0, ptr %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.i = alloca %struct.upb_StringView, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %upb_Array_Reserve.exit.i, label %bb.b

upb_Array_Reserve.exit.i:                         ; preds = %bb.a
  %i.g = tail call zeroext i1 @_upb_Array_Realloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0, i64 noundef %i.c, ptr noundef %3)
  br i1 %i.g, label %bb.b, label %_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit

bb.b:                                             ; preds = %bb.a, %upb_Array_Reserve.exit.i
  store i64 %i.c, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store ptr %1, ptr %.sroa.0.i, align 8
  %.sroa.0.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 8
  store i64 %2, ptr %.sroa.0.i.8.i.8.i.8..sroa_idx, align 8
  %.val6.i = load i64, ptr %0, align 8, !tbaa !14 ; 2 uses
  %i.h = and i64 %.val6.i, -8
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = and i64 %.val6.i, 3                      ; 2 uses
  %i.k = icmp ne i64 %i.j, 0
  %i.l = zext i1 %i.k to i64
  %i.m = add nuw nsw i64 %i.j, %i.l               ; 2 uses
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl i64 %i.b, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.o
  %i.q = shl nuw nsw i32 1, %i.n
  %i.r = zext nneg i32 %i.q to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.i, i64 %i.r, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit

_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit: ; preds = %upb_Array_Reserve.exit.i, %bb.b
  %.0.i6.i7 = phi i1 [ true, %bb.b ], [ false, %upb_Array_Reserve.exit.i ]
  ret i1 %.0.i6.i7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @upb_Array_Move(ptr noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.a = and i64 %.val, 3                         ; 2 uses
  %i.b = icmp ne i64 %i.a, 0
  %i.c = zext i1 %i.b to i64
  %i.d = add nuw nsw i64 %i.a, %i.c               ; 3 uses
  %i.e = and i64 %.val, -8
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = shl i64 %1, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.i = shl i64 %2, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.k = shl i64 %3, %i.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.j, i64 %i.k, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @upb_Array_Insert(ptr noundef captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = add i64 %i.b, %2                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %upb_Array_Reserve.exit.i, label %bb.b

upb_Array_Reserve.exit.i:                         ; preds = %bb.a
  %i.g = tail call zeroext i1 @_upb_Array_Realloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0, i64 noundef %i.c, ptr noundef %3)
  br i1 %i.g, label %bb.b, label %_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit

bb.b:                                             ; preds = %bb.a, %upb_Array_Reserve.exit.i
  store i64 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.h = add i64 %2, %1
  %i.i = sub i64 %i.b, %1
  %.val.i = load i64, ptr %0, align 8, !tbaa !14  ; 2 uses
  %i.j = and i64 %.val.i, 3                       ; 2 uses
  %i.k = icmp ne i64 %i.j, 0
  %i.l = zext i1 %i.k to i64
  %i.m = add nuw nsw i64 %i.j, %i.l               ; 3 uses
  %i.n = and i64 %.val.i, -8
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = shl i64 %i.h, %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = shl i64 %1, %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  %i.t = shl i64 %i.i, %i.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.s, i64 %i.t, i1 false)
  br label %_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit

_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit: ; preds = %upb_Array_Reserve.exit.i, %bb.b
  %.0.i6.i12 = phi i1 [ true, %bb.b ], [ false, %upb_Array_Reserve.exit.i ]
  ret i1 %.0.i6.i12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @upb_Array_Delete(ptr noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %2, %1                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17
  %i.d = sub i64 %i.c, %i.a
  %.val.i = load i64, ptr %0, align 8, !tbaa !14  ; 2 uses
  %i.e = and i64 %.val.i, 3                       ; 2 uses
  %i.f = icmp ne i64 %i.e, 0
  %i.g = zext i1 %i.f to i64
  %i.h = add nuw nsw i64 %i.e, %i.g               ; 3 uses
  %i.i = and i64 %.val.i, -8
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = shl i64 %1, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = shl i64 %i.a, %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m
  %i.o = shl i64 %i.d, %i.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.n, i64 %i.o, i1 false)
  %i.p = load i64, ptr %i.b, align 8, !tbaa !17
  %i.q = sub i64 %i.p, %2
  store i64 %i.q, ptr %i.b, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @upb_Array_Resize(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18
  %i.e = icmp ult i64 %i.d, %1
  br i1 %i.e, label %upb_Array_Reserve.exit.i, label %bb.b

upb_Array_Reserve.exit.i:                         ; preds = %bb.a
  %i.f = tail call zeroext i1 @_upb_Array_Realloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2)
  br i1 %i.f, label %bb.b, label %_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit, !prof !19

bb.b:                                             ; preds = %bb.a, %upb_Array_Reserve.exit.i
  store i64 %1, ptr %i.a, align 8, !tbaa !17
  %i.g = icmp ugt i64 %1, %i.b
  br i1 %i.g, label %bb.c, label %_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit

bb.c:                                             ; preds = %bb.b
  %.val = load i64, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.h = and i64 %.val, 3                         ; 2 uses
  %i.i = icmp ne i64 %i.h, 0
  %i.j = zext i1 %i.i to i64
  %i.k = add nuw nsw i64 %i.h, %i.j               ; 2 uses
  %i.l = and i64 %.val, -8
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = shl i64 %i.b, %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = sub nuw i64 %1, %i.b
  %i.q = shl i64 %i.p, %i.k
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.o, i8 0, i64 %i.q, i1 false)
  br label %_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit

_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit: ; preds = %upb_Array_Reserve.exit.i, %bb.b, %bb.c
  %.0.i6.i19 = phi i1 [ true, %bb.b ], [ true, %bb.c ], [ false, %upb_Array_Reserve.exit.i ]
  ret i1 %.0.i6.i19
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @_upb_Array_Realloc_dont_copy_me__upb_internal_use_only(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.b, i64 4)
  %.val = load i64, ptr %0, align 8, !tbaa !14    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.021 = phi i64 [ %spec.select, %bb.a ], [ %i.d, %bb.b ] ; 4 uses
  %i.c = icmp ult i64 %.021, %1
  %i.d = shl i64 %.021, 1
  br i1 %i.c, label %bb.b, label %bb.c, !llvm.loop !20

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %.val, 3                         ; 2 uses
  %i.f = icmp ne i64 %i.e, 0
  %i.g = zext i1 %i.f to i64
  %i.h = add nuw nsw i64 %i.e, %i.g               ; 4 uses
  %i.i = shl i64 %i.b, %i.h                       ; 5 uses
  %i.j = and i64 %.val, -8                        ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr                 ; 6 uses
  %i.l = shl i64 %.021, %i.h                      ; 5 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.upb_Arena_TryExtend.exit.thread_crit_edge.i, label %bb.d

.upb_Arena_TryExtend.exit.thread_crit_edge.i:     ; preds = %bb.c
  %.val.i42.pre.i = load ptr, ptr %2, align 8, !tbaa !8
  %.pre.i = add i64 %i.l, 7
  %.pre49.i = and i64 %.pre.i, -8
  br label %upb_Arena_TryExtend.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %.not40.i = icmp ugt i64 %i.l, %i.i
  br i1 %.not40.i, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.m = add i64 %i.l, 7
  %i.n = and i64 %i.m, -8                         ; 3 uses
  %i.o = add i64 %i.i, 7
  %i.p = and i64 %i.o, -8                         ; 2 uses
  %i.q = sub i64 %i.n, %i.p                       ; 2 uses
  %.val14.i.i = load ptr, ptr %2, align 8, !tbaa !8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p ; 2 uses
  %i.s = icmp eq ptr %i.r, %.val14.i.i
  br i1 %i.s, label %bb.f, label %upb_Arena_TryExtend.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %2, i64 8
  %.val13.i.i = load ptr, ptr %i.t, align 8, !tbaa !12
  %i.u = ptrtoint ptr %.val13.i.i to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  %.not.i.i = icmp ult i64 %i.w, %i.q
  br i1 %.not.i.i, label %upb_Arena_TryExtend.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 %i.q
  store ptr %i.x, ptr %2, align 8, !tbaa !8
  br label %upb_Arena_Realloc.exit.thread

.critedge.i:                                      ; preds = %bb.d
  %.val.i = load ptr, ptr %2, align 8, !tbaa !8   ; 2 uses
  %i.y = add i64 %i.i, 7
  %i.z = and i64 %i.y, -8                         ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.z
  %i.ab = icmp eq ptr %i.aa, %.val.i
  br i1 %i.ab, label %upb_Arena_ShrinkLast.exit.i, label %upb_Arena_Realloc.exit.thread

upb_Arena_ShrinkLast.exit.i:                      ; preds = %.critedge.i
  %i.ac = add i64 %i.l, 7
  %i.ad = and i64 %i.ac, -8
  %.neg.i.i = sub i64 %i.ad, %i.z
  %i.ae = getelementptr inbounds i8, ptr %.val.i, i64 %.neg.i.i
  store ptr %i.ae, ptr %2, align 8, !tbaa !8
  br label %upb_Arena_Realloc.exit.thread

upb_Arena_TryExtend.exit.thread.i:                ; preds = %bb.f, %bb.e, %.upb_Arena_TryExtend.exit.thread_crit_edge.i
  %.pre-phi50.i = phi i64 [ %.pre49.i, %.upb_Arena_TryExtend.exit.thread_crit_edge.i ], [ %i.n, %bb.e ], [ %i.n, %bb.f ] ; 3 uses
  %.val.i42.i = phi ptr [ %.val.i42.pre.i, %.upb_Arena_TryExtend.exit.thread_crit_edge.i ], [ %.val14.i.i, %bb.e ], [ %.val14.i.i, %bb.f ] ; 4 uses
  %i.af = getelementptr i8, ptr %2, i64 8
  %.val11.i.i = load ptr, ptr %i.af, align 8, !tbaa !12
  %i.ag = ptrtoint ptr %.val11.i.i to i64
  %i.ah = ptrtoint ptr %.val.i42.i to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ult i64 %i.ai, %.pre-phi50.i
  br i1 %i.aj, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %upb_Arena_TryExtend.exit.thread.i
  %i.ak = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %2, i64 noundef %.pre-phi50.i) #8
  br label %upb_Arena_Malloc.exit.i

bb.i:                                             ; preds = %upb_Arena_TryExtend.exit.thread.i
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i42.i, i64 %.pre-phi50.i
  store ptr %i.al, ptr %2, align 8, !tbaa !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i42.i) ]
  br label %upb_Arena_Malloc.exit.i

upb_Arena_Malloc.exit.i:                          ; preds = %bb.i, %bb.h
  %.0.i43.i = phi ptr [ %i.ak, %bb.h ], [ %.val.i42.i, %bb.i ] ; 5 uses
  %i.am = icmp ne ptr %.0.i43.i, null
  %i.an = icmp ne i64 %i.i, 0
  %or.cond.i = and i1 %i.an, %i.am
  br i1 %or.cond.i, label %bb.j, label %upb_Arena_Realloc.exit

bb.j:                                             ; preds = %upb_Arena_Malloc.exit.i
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.l)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i43.i, ptr readonly align 8 %i.k, i64 %i.ao, i1 false)
  br label %upb_Arena_Realloc.exit.thread

upb_Arena_Realloc.exit:                           ; preds = %upb_Arena_Malloc.exit.i
  %.not.not = icmp eq ptr %.0.i43.i, null
  br i1 %.not.not, label %bb.k, label %upb_Arena_Realloc.exit.thread

upb_Arena_Realloc.exit.thread:                    ; preds = %upb_Arena_ShrinkLast.exit.i, %.critedge.i, %bb.g, %bb.j, %upb_Arena_Realloc.exit
  %.034.i27 = phi ptr [ %.0.i43.i, %upb_Arena_Realloc.exit ], [ %i.k, %upb_Arena_ShrinkLast.exit.i ], [ %i.k, %.critedge.i ], [ %i.k, %bb.g ], [ %.0.i43.i, %bb.j ]
  %i.ap = icmp ne i64 %i.h, 0
  %.neg.i = sext i1 %i.ap to i64
  %i.aq = add nsw i64 %i.h, %.neg.i
  %i.ar = ptrtoint ptr %.034.i27 to i64
  %i.as = or i64 %i.aq, %i.ar
  store i64 %i.as, ptr %0, align 8, !tbaa !14
  store i64 %.021, ptr %i.a, align 8, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %upb_Arena_Realloc.exit, %upb_Arena_Realloc.exit.thread
  %.not28 = phi i1 [ false, %upb_Arena_Realloc.exit ], [ true, %upb_Arena_Realloc.exit.thread ]
  ret i1 %.not28
}

; Function Attrs: nounwind uwtable
define hidden void @upb_Array_Freeze(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.i = alloca %struct.upb_StringView, align 8 ; 4 uses
  %.val = load i64, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.a = and i64 %.val, 4
  %.not11 = icmp eq i64 %i.a, 0
  br i1 %.not11, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = or disjoint i64 %.val, 4
  store i64 %i.b, ptr %0, align 8, !tbaa !14
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val10 = load i64, ptr %i.c, align 8, !tbaa !17 ; 2 uses
  %.not13 = icmp eq i64 %.val10, 0
  br i1 %.not13, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.012 = phi i64 [ %i.o, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %.val6.i = load i64, ptr %0, align 8, !tbaa !14 ; 2 uses
  %i.d = and i64 %.val6.i, -8
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = and i64 %.val6.i, 3                      ; 2 uses
  %i.g = icmp ne i64 %i.f, 0
  %i.h = zext i1 %i.g to i64
  %i.i = add nuw nsw i64 %i.f, %i.h               ; 2 uses
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = shl i64 %.012, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.m = shl nuw nsw i32 1, %i.j
  %i.n = zext nneg i32 %i.m to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(1) %i.l, i64 %i.n, i1 false)
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i = load ptr, ptr %.sroa.0.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  tail call void @upb_Message_Freeze(ptr noundef %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i, ptr noundef nonnull %1) #8
  %i.o = add nuw i64 %.012, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %.val10
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !22

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.a, %bb.b
  ret void
}

declare void @upb_Message_Freeze(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !10, i64 0}
!9 = !{!"upb_Arena", !10, i64 0, !10, i64 8}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!9, !10, i64 8}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!15, !16, i64 0}
!15 = !{!"upb_Array", !16, i64 0, !16, i64 8, !16, i64 16}
!16 = !{!"long", !5, i64 0}
!17 = !{!15, !16, i64 8}
!18 = !{!15, !16, i64 16}
!19 = !{!"branch_weights", i32 2146410443, i32 1073205}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
end_hunk_0
