Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cjson/original/cJSON_Utils?download=true
inline.NumInlined: 38
inline.NumDeleted: 11
begin_hunk_0_@cJSONUtils_GeneratePatchesCaseSensitive:bb.a
; Function Attrs: nofree nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @cJSONUtils_SortObject(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %sort_object.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = tail call fastcc ptr @sort_list(ptr noundef %i.c, i32 noundef 0)
  store ptr %i.d, ptr %i.b, align 8, !tbaa !19
  br label %sort_object.exit

sort_object.exit:                                 ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @cJSONUtils_SortObjectCaseSensitive(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %sort_object.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = tail call fastcc ptr @sort_list(ptr noundef %i.c, i32 noundef 1)
  store ptr %i.d, ptr %i.b, align 8, !tbaa !19
  br label %sort_object.exit

sort_object.exit:                                 ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define ptr @cJSONUtils_MergePatch(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @merge_patch(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @merge_patch(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @cJSON_IsObject(ptr noundef %1) #12
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @cJSON_Delete(ptr noundef %0) #12
  %i.b = tail call ptr @cJSON_Duplicate(ptr noundef %1, i32 noundef 1) #12
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @cJSON_IsObject(ptr noundef %0) #12
  %.not35 = icmp eq i32 %i.c, 0
  br i1 %.not35, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @cJSON_Delete(ptr noundef %0) #12
  %i.d = tail call ptr @cJSON_CreateObject() #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.032 = phi ptr [ %0, %bb.c ], [ %i.d, %bb.d ]  ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03041 = load ptr, ptr %i.e, align 8, !tbaa !10 ; 3 uses
  %.not3642 = icmp eq ptr %.03041, null
  br i1 %.not3642, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.not38 = icmp eq i32 %2, 0
  br i1 %.not38, label %.lr.ph.split.us.split.us, label %.lr.ph.split.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph, %bb.h
  %.03043.us.us = phi ptr [ %.030.us.us, %bb.h ], [ %.03041, %.lr.ph ] ; 4 uses
  %i.f = tail call i32 @cJSON_IsNull(ptr noundef nonnull %.03043.us.us) #12
  %.not37.us.us = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %.03043.us.us, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  br i1 %.not37.us.us, label %.split34.us.us, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us.split.us
  tail call void @cJSON_DeleteItemFromObject(ptr noundef %.032, ptr noundef %i.h) #12
  br label %bb.h

.split34.us.us:                                   ; preds = %.lr.ph.split.us.split.us
  %i.i = tail call ptr @cJSON_DetachItemFromObject(ptr noundef %.032, ptr noundef %i.h) #12
  %i.j = tail call fastcc ptr @merge_patch(ptr noundef %i.i, ptr noundef nonnull %.03043.us.us, i32 noundef 0) ; 2 uses
  %.not39.us.us = icmp eq ptr %i.j, null
  br i1 %.not39.us.us, label %.thread, label %bb.g

bb.g:                                             ; preds = %.split34.us.us
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.l = tail call i32 @cJSON_AddItemToObject(ptr noundef %.032, ptr noundef %i.k, ptr noundef nonnull %i.j) #12 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.030.us.us = load ptr, ptr %.03043.us.us, align 8, !tbaa !10 ; 2 uses
  %.not36.us.us = icmp eq ptr %.030.us.us, null
  br i1 %.not36.us.us, label %.loopexit, label %.lr.ph.split.us.split.us

.lr.ph.split.split:                               ; preds = %.lr.ph, %bb.k
  %.03043 = phi ptr [ %.030, %bb.k ], [ %.03041, %.lr.ph ] ; 4 uses
  %i.m = tail call i32 @cJSON_IsNull(ptr noundef nonnull %.03043) #12
  %.not37 = icmp eq i32 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %.03043, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  br i1 %.not37, label %.split, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.split
  tail call void @cJSON_DeleteItemFromObjectCaseSensitive(ptr noundef %.032, ptr noundef %i.o) #12
  br label %bb.k

.split:                                           ; preds = %.lr.ph.split.split
  %i.p = tail call ptr @cJSON_DetachItemFromObjectCaseSensitive(ptr noundef %.032, ptr noundef %i.o) #12
  %i.q = tail call fastcc ptr @merge_patch(ptr noundef %i.p, ptr noundef nonnull %.03043, i32 noundef 1) ; 2 uses
  %.not39 = icmp eq ptr %i.q, null
  br i1 %.not39, label %.thread, label %bb.j

.thread:                                          ; preds = %.split, %.split34.us.us
  tail call void @cJSON_Delete(ptr noundef %.032) #12
  br label %.loopexit

bb.j:                                             ; preds = %.split
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.s = tail call i32 @cJSON_AddItemToObject(ptr noundef %.032, ptr noundef %i.r, ptr noundef nonnull %i.q) #12 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.030 = load ptr, ptr %.03043, align 8, !tbaa !10 ; 2 uses
  %.not36 = icmp eq ptr %.030, null
  br i1 %.not36, label %.loopexit, label %.lr.ph.split.split

.loopexit:                                        ; preds = %bb.k, %bb.h, %bb.e, %.thread, %bb.b
  %.3 = phi ptr [ null, %.thread ], [ %i.b, %bb.b ], [ %.032, %bb.e ], [ %.032, %bb.h ], [ %.032, %bb.k ]
  ret ptr %.3
}

; Function Attrs: nounwind sspstrong uwtable
define ptr @cJSONUtils_MergePatchCaseSensitive(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @merge_patch(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define ptr @cJSONUtils_GenerateMergePatch(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @generate_merge_patch(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @generate_merge_patch(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @cJSON_CreateNull() #12
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @cJSON_IsObject(ptr noundef nonnull %1) #12
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @cJSON_IsObject(ptr noundef %0) #12
  %.not43 = icmp eq i32 %i.d, 0
  br i1 %.not43, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = tail call ptr @cJSON_Duplicate(ptr noundef nonnull %1, i32 noundef 1) #12
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %sort_object.exit48, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.i = tail call fastcc ptr @sort_list(ptr noundef %i.h, i32 noundef range(i32 0, 2) %2)
  store ptr %i.i, ptr %i.g, align 8, !tbaa !19
  br label %sort_object.exit48

sort_object.exit48:                               ; preds = %bb.f, %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = tail call fastcc ptr @sort_list(ptr noundef %i.k, i32 noundef range(i32 0, 2) %2) ; 3 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19   ; 2 uses
  %i.o = tail call ptr @cJSON_CreateObject() #12  ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.r, label %.preheader

.preheader:                                       ; preds = %sort_object.exit48
  %i.q = icmp ne ptr %i.n, null
  %i.r = icmp ne ptr %i.l, null
  %i.s = select i1 %i.q, i1 true, i1 %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.p
  %.03850 = phi ptr [ %.1, %bb.p ], [ %i.l, %.preheader ] ; 10 uses
  %.03949 = phi ptr [ %.140, %bb.p ], [ %i.n, %.preheader ] ; 8 uses
  %.not46 = icmp eq ptr %.03949, null             ; 2 uses
  %.not47 = icmp eq ptr %.03850, null
  %i.t = select i1 %.not46, i1 true, i1 %.not47
  %.mux = select i1 %.not46, i32 1, i32 -1
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.03949, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %.03850, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(1) %i.x) #13
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %.0 = phi i32 [ %i.y, %bb.h ], [ %.mux, %.lr.ph ] ; 2 uses
  %i.z = icmp slt i32 %.0, 0
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.03949, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ac = tail call ptr @cJSON_CreateNull() #12
  %i.ad = tail call i32 @cJSON_AddItemToObject(ptr noundef nonnull %i.o, ptr noundef %i.ab, ptr noundef %i.ac) #12 ; 0 uses
  %i.ae = load ptr, ptr %.03949, align 8, !tbaa !20
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %.not44 = icmp eq i32 %.0, 0
  br i1 %.not44, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %.03850, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.ah = tail call ptr @cJSON_Duplicate(ptr noundef %.03850, i32 noundef 1) #12
  %i.ai = tail call i32 @cJSON_AddItemToObject(ptr noundef nonnull %i.o, ptr noundef %i.ag, ptr noundef %i.ah) #12 ; 0 uses
  %i.aj = load ptr, ptr %.03850, align 8, !tbaa !20
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.ak = tail call fastcc i32 @compare_json(ptr noundef %.03949, ptr noundef %.03850, i32 noundef %2)
  %.not45 = icmp eq i32 %i.ak, 0
  br i1 %.not45, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %.03850, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !14
  %i.an = tail call fastcc ptr @generate_merge_patch(ptr noundef %.03949, ptr noundef %.03850, i32 noundef 0), !inline_history !28
  %i.ao = tail call i32 @cJSON_AddItemToObject(ptr noundef nonnull %i.o, ptr noundef %i.am, ptr noundef %i.an) #12 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ap = load ptr, ptr %.03949, align 8, !tbaa !20
  %i.aq = load ptr, ptr %.03850, align 8, !tbaa !20
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o, %bb.j
  %.140 = phi ptr [ %i.ae, %bb.j ], [ %.03949, %bb.l ], [ %i.ap, %bb.o ] ; 2 uses
  %.1 = phi ptr [ %.03850, %bb.j ], [ %i.aj, %bb.l ], [ %i.aq, %bb.o ] ; 2 uses
  %i.ar = icmp ne ptr %.140, null
  %i.as = icmp ne ptr %.1, null
  %i.at = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %i.at, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !19
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge
  tail call void @cJSON_Delete(ptr noundef nonnull %i.o) #12
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %sort_object.exit48, %bb.q, %bb.e, %bb.b
  %.041 = phi ptr [ %i.b, %bb.b ], [ %i.e, %bb.e ], [ null, %bb.q ], [ null, %sort_object.exit48 ], [ %i.o, %._crit_edge ]
  ret ptr %.041
}

; Function Attrs: nounwind sspstrong uwtable
define ptr @cJSONUtils_GenerateMergePatchCaseSensitive(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @generate_merge_patch(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @decode_array_index_from_pointer(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !15      ; 4 uses
  %i.b = icmp eq i8 %i.a, 48
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !15
  switch i8 %i.d, label %bb.e [
    i8 0, label %.lr.ph.preheader
    i8 47, label %.lr.ph.preheader
  ]

bb.c:                                             ; preds = %bb.a
  %i.e = add i8 %i.a, -48
  %or.cond25 = icmp ult i8 %i.e, 10
  br i1 %or.cond25, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.b, %bb.b, %bb.c
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.f = phi i8 [ %i.m, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %.027 = phi i64 [ %i.k, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.01726 = phi i64 [ %i.j, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = zext nneg i8 %i.f to i64
  %i.h = mul i64 %.01726, 10
  %i.i = add i64 %i.h, -48
  %i.j = add i64 %i.i, %i.g                       ; 2 uses
  %i.k = add i64 %.027, 1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !15    ; 3 uses
  %i.n = add i8 %i.m, -48
  %or.cond = icmp ult i8 %i.n, 10
  br i1 %or.cond, label %.lr.ph, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.c
  %.017.lcssa = phi i64 [ 0, %bb.c ], [ %i.j, %.lr.ph ]
  %.lcssa = phi i8 [ %i.a, %bb.c ], [ %i.m, %.lr.ph ]
  switch i8 %.lcssa, label %bb.e [
    i8 0, label %bb.d
    i8 47, label %bb.d
  ]

bb.d:                                             ; preds = %.critedge, %.critedge
  store i64 %.017.lcssa, ptr %1, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.b, %bb.d
  %.018 = phi i32 [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %.critedge ]
  ret i32 %.018
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @get_object_item(ptr noundef nonnull %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @cJSON_GetObjectItemCaseSensitive(ptr noundef nonnull %0, ptr noundef %1) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @cJSON_GetObjectItem(ptr noundef nonnull %0, ptr noundef %1) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ]
  ret ptr %.0
}

declare i32 @cJSON_IsString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @compare_json(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24
  %i.e = and i32 %i.d, 255                        ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !24
  %i.h = and i32 %i.g, 255
  %.not = icmp eq i32 %i.e, %i.h
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.i = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.e)
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %.split, label %.thread

.split:                                           ; preds = %bb.c
  %i.k = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.e, i1 true)
  switch i32 %i.k, label %.thread [
    i32 3, label %bb.d
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %sort_object.exit67
  ]

bb.d:                                             ; preds = %.split
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !25
  %.not62 = icmp eq i32 %i.m, %i.o
  br i1 %.not62, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load double, ptr %i.p, align 8, !tbaa !26 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load double, ptr %i.r, align 8, !tbaa !26 ; 2 uses
  %i.t = tail call double @llvm.fabs.f64(double %i.q) ; 2 uses
  %i.u = tail call double @llvm.fabs.f64(double %i.s) ; 2 uses
  %i.v = fcmp ogt double %i.t, %i.u
  %..i = select i1 %i.v, double %i.t, double %i.u
  %i.w = fsub double %i.q, %i.s
  %i.x = tail call double @llvm.fabs.f64(double %i.w)
  %i.y = fmul double %..i, f0x3CB0000000000000
  %i.z = fcmp ole double %i.x, %i.y
  br label %.thread

bb.f:                                             ; preds = %.split
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(1) %i.ad) #13
  %.not61 = icmp eq i32 %i.ae, 0
  br label %.thread

bb.g:                                             ; preds = %.split
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.053.in = phi ptr [ %i.af, %bb.g ], [ %.053, %bb.i ]
  %.051.in = phi ptr [ %i.ag, %bb.g ], [ %.051, %bb.i ]
  %.051 = load ptr, ptr %.051.in, align 8, !tbaa !10 ; 3 uses
  %.053 = load ptr, ptr %.053.in, align 8, !tbaa !10 ; 3 uses
  %i.ah = icmp ne ptr %.053, null                 ; 2 uses
  %i.ai = icmp ne ptr %.051, null                 ; 2 uses
  %i.aj = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = tail call fastcc i32 @compare_json(ptr noundef nonnull %.053, ptr noundef nonnull %.051, i32 noundef %2)
  %.not60.not = icmp eq i32 %i.ak, 0
  br i1 %.not60.not, label %.thread, label %bb.h

bb.j:                                             ; preds = %bb.h
  %or.cond3 = select i1 %i.ah, i1 true, i1 %i.ai
  %not.or.cond3 = xor i1 %or.cond3, true
  br label %.thread

sort_object.exit67:                               ; preds = %.split
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !19
  %i.an = tail call fastcc ptr @sort_list(ptr noundef %i.am, i32 noundef range(i32 0, 2) %2)
end_hunk_0
begin_hunk_1_@detach_path:bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #13
  %i.b = add i64 %i.a, 1                          ; 2 uses
  %i.c = tail call ptr @cJSON_malloc(i64 noundef %i.b) #12 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %detach_item_from_array.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr nonnull readonly align 1 %1, i64 %i.b, i1 false)
  %i.e = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.c, i32 noundef 47) #13 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %detach_item_from_array.exit.thread34, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.e, align 1, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 5 uses
  %i.h = tail call fastcc ptr @get_item_from_pointer(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %2) ; 4 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %bb.g
  %.012.i = phi ptr [ %i.n, %bb.g ], [ %i.g, %bb.c ] ; 3 uses
  %.0.i = phi ptr [ %i.m, %bb.g ], [ %i.g, %bb.c ] ; 4 uses
  %i.i = load i8, ptr %.012.i, align 1, !tbaa !15
  switch i8 %i.i, label %bb.g [
    i8 0, label %bb.h
    i8 126, label %bb.d
  ]

bb.d:                                             ; preds = %.preheader.i
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i, i64 1 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !15
  switch i8 %i.k, label %decode_pointer_inplace.exit [
    i8 48, label %bb.e
    i8 49, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  store i8 126, ptr %.0.i, align 1, !tbaa !15
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 47, ptr %i.l, align 1, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.preheader.i
  %.1.i = phi ptr [ %.012.i, %.preheader.i ], [ %i.j, %bb.f ], [ %i.j, %bb.e ]
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br label %.preheader.i

bb.h:                                             ; preds = %.preheader.i
  store i8 0, ptr %.0.i, align 1, !tbaa !15
  br label %decode_pointer_inplace.exit

decode_pointer_inplace.exit:                      ; preds = %bb.d, %bb.h
  %i.o = tail call i32 @cJSON_IsArray(ptr noundef %i.h) #12
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.s, label %bb.i

bb.i:                                             ; preds = %decode_pointer_inplace.exit
  %i.p = load i8, ptr %i.g, align 1, !tbaa !15    ; 4 uses
  %i.q = icmp eq i8 %i.p, 48
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !15
  switch i8 %i.s, label %detach_item_from_array.exit.thread34 [
    i8 0, label %.lr.ph.i.preheader
    i8 47, label %.lr.ph.i.preheader
  ]

bb.k:                                             ; preds = %bb.i
  %i.t = add i8 %i.p, -48
  %or.cond25.i = icmp ult i8 %i.t, 10
  br i1 %or.cond25.i, label %.lr.ph.i.preheader, label %.critedge.i

.lr.ph.i.preheader:                               ; preds = %bb.k, %bb.j, %bb.j
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.u = phi i8 [ %i.ab, %.lr.ph.i ], [ %i.p, %.lr.ph.i.preheader ]
  %.027.i = phi i64 [ %i.z, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %.01726.i = phi i64 [ %i.y, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.v = zext nneg i8 %i.u to i64
  %i.w = mul i64 %.01726.i, 10
  %i.x = add nsw i64 %i.v, -48
  %i.y = add i64 %i.x, %i.w                       ; 2 uses
  %i.z = add i64 %.027.i, 1                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !15  ; 3 uses
  %i.ac = add i8 %i.ab, -48
  %or.cond.i = icmp ult i8 %i.ac, 10
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i, %bb.k
  %.017.lcssa.i = phi i64 [ 0, %bb.k ], [ %i.y, %.lr.ph.i ]
  %.lcssa.i = phi i8 [ %i.p, %bb.k ], [ %i.ab, %.lr.ph.i ]
  switch i8 %.lcssa.i, label %detach_item_from_array.exit.thread34 [
    i8 0, label %decode_array_index_from_pointer.exit
    i8 47, label %decode_array_index_from_pointer.exit
  ]

decode_array_index_from_pointer.exit:             ; preds = %.critedge.i, %.critedge.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %decode_array_index_from_pointer.exit
  %.023.i = phi i64 [ %.017.lcssa.i, %decode_array_index_from_pointer.exit ], [ %i.ah, %bb.l ] ; 2 uses
  %.0.in.i = phi ptr [ %i.ad, %decode_array_index_from_pointer.exit ], [ %.0.i28, %bb.l ]
  %.0.i28 = load ptr, ptr %.0.in.i, align 8, !tbaa !10 ; 8 uses
  %i.ae = icmp ne ptr %.0.i28, null               ; 2 uses
  %i.af = icmp ne i64 %.023.i, 0
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  %i.ah = add i64 %.023.i, -1
  br i1 %i.ag, label %bb.l, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.ae, label %bb.n, label %detach_item_from_array.exit.thread34

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp eq ptr %.0.i28, %i.ai
  %i.aj = load ptr, ptr %.0.i28, align 8, !tbaa !20 ; 6 uses
  br i1 %.not.i, label %bb.o, label %.thread29.i

bb.o:                                             ; preds = %bb.n
  %.not27.i = icmp eq ptr %i.aj, null
  br i1 %.not27.i, label %bb.p, label %.thread.i

.thread29.i:                                      ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i28, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !27 ; 3 uses
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !20
  %.not2730.i = icmp eq ptr %i.aj, null
  br i1 %.not2730.i, label %bb.q, label %.thread28.i

.thread.i:                                        ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i28, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !27
  br label %bb.p

.thread28.i:                                      ; preds = %.thread29.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.al, ptr %i.ap, align 8, !tbaa !27
  br label %bb.r

bb.p:                                             ; preds = %.thread.i, %bb.o
  store ptr %i.aj, ptr %i.ad, align 8, !tbaa !19
  br label %bb.r

bb.q:                                             ; preds = %.thread29.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.al, ptr %i.aq, align 8, !tbaa !27
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.thread28.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i28, i8 0, i64 16, i1 false)
  br label %detach_item_from_array.exit.thread34

bb.s:                                             ; preds = %decode_pointer_inplace.exit
  %i.ar = tail call i32 @cJSON_IsObject(ptr noundef %i.h) #12
  %.not25 = icmp eq i32 %i.ar, 0
  br i1 %.not25, label %detach_item_from_array.exit.thread34, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = tail call ptr @cJSON_DetachItemFromObject(ptr noundef %i.h, ptr noundef nonnull %i.g) #12
  br label %detach_item_from_array.exit.thread34

detach_item_from_array.exit.thread34:             ; preds = %bb.s, %bb.t, %bb.r, %bb.m, %bb.j, %.critedge.i, %bb.b
  %.136 = phi ptr [ null, %bb.b ], [ %.0.i28, %bb.r ], [ null, %bb.m ], [ null, %bb.s ], [ %i.as, %bb.t ], [ null, %bb.j ], [ null, %.critedge.i ]
  tail call void @cJSON_free(ptr noundef nonnull %i.c) #12
  br label %detach_item_from_array.exit.thread

detach_item_from_array.exit.thread:               ; preds = %bb.a, %detach_item_from_array.exit.thread34
  %.133 = phi ptr [ %.136, %detach_item_from_array.exit.thread34 ], [ null, %bb.a ]
  ret ptr %.133
}

declare void @cJSON_Delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @cJSON_AddItemToArray(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @insert_item_in_array(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.022 = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ]  ; 2 uses
  %.0.in = phi ptr [ %i.a, %bb.a ], [ %.0, %bb.b ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !10  ; 6 uses
  %i.b = icmp ne ptr %.0, null
  %i.c = icmp ne i64 %.022, 0                     ; 2 uses
  %i.d = select i1 %i.b, i1 %i.c, i1 false
  %i.e = add i64 %.022, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 @cJSON_AddItemToArray(ptr noundef nonnull %0, ptr noundef %2) #12 ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  store ptr %.0, ptr %2, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !27
  store ptr %2, ptr %i.g, align 8, !tbaa !27
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.k = icmp eq ptr %.0, %i.j
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %2, ptr %i.a, align 8, !tbaa !19
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !27
  store ptr %2, ptr %i.l, align 8, !tbaa !20
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.c, %bb.e
  %.021 = phi i32 [ 0, %bb.c ], [ 1, %bb.e ], [ 1, %bb.h ], [ 1, %bb.g ]
  ret i32 %.021
}

declare void @cJSON_DeleteItemFromObjectCaseSensitive(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @cJSON_DeleteItemFromObject(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cJSON_AddItemToObject(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @cJSON_GetObjectItemCaseSensitive(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @cJSON_GetObjectItem(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

declare ptr @cJSON_DetachItemFromObject(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @cJSON_CreateObject() local_unnamed_addr #2

declare ptr @cJSON_CreateString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @sort_list(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not.i = icmp eq i32 %1, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader.split.us.preheader, label %.preheader.split.preheader

.preheader.split.usthread-pre-split:              ; preds = %._crit_edge.i.us
  %.pr = load ptr, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %.not79.us = icmp eq ptr %.pr, null
  br i1 %.not79.us, label %.critedge.thread, label %.preheader.split.us.preheader

.preheader.split.us.preheader:                    ; preds = %.preheader, %.preheader.split.usthread-pre-split
  %.067.us204 = phi ptr [ %i.d, %.preheader.split.usthread-pre-split ], [ %0, %.preheader ]
  %i.d = phi ptr [ %.pr, %.preheader.split.usthread-pre-split ], [ %i.b, %.preheader ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.067.us204, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 4 uses
  %i.i = icmp eq ptr %i.f, null
  %i.j = icmp eq ptr %i.h, null
  %or.cond.i.us = or i1 %i.i, %i.j
  %i.k = icmp eq ptr %i.f, %i.h
  %or.cond.us = or i1 %i.k, %or.cond.i.us
  br i1 %or.cond.us, label %.critedge.preheader, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.split.us.preheader
  %i.l = tail call ptr @__ctype_tolower_loc() #14
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17   ; 4 uses
  %i.n = load i8, ptr %i.f, align 1, !tbaa !15    ; 2 uses
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !18   ; 2 uses
  %i.r = load i8, ptr %i.h, align 1, !tbaa !15
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !18   ; 2 uses
  %i.v = icmp eq i32 %i.q, %i.u
  br i1 %i.v, label %.lr.ph.i.us, label %._crit_edge.i.us

.lr.ph.i.us:                                      ; preds = %.preheader.i.us, %bb.c
  %i.w = phi i8 [ %i.aa, %bb.c ], [ %i.n, %.preheader.i.us ]
  %.02333.i.us = phi ptr [ %i.y, %bb.c ], [ %i.f, %.preheader.i.us ]
  %.02432.i.us = phi ptr [ %i.z, %bb.c ], [ %i.h, %.preheader.i.us ]
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %.critedge.preheader, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.y = getelementptr inbounds nuw i8, ptr %.02333.i.us, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02432.i.us, i64 1 ; 2 uses
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !15   ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !18 ; 2 uses
  %i.ae = load i8, ptr %i.z, align 1, !tbaa !15
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !18 ; 2 uses
  %i.ai = icmp eq i32 %i.ad, %i.ah
  br i1 %i.ai, label %.lr.ph.i.us, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %bb.c, %.preheader.i.us
  %.lcssa30.i.us = phi i32 [ %i.q, %.preheader.i.us ], [ %i.ad, %bb.c ]
  %.lcssa.i.us = phi i32 [ %i.u, %.preheader.i.us ], [ %i.ah, %bb.c ]
  %i.aj = icmp slt i32 %.lcssa30.i.us, %.lcssa.i.us
  br i1 %i.aj, label %.preheader.split.usthread-pre-split, label %.critedge.preheader

.preheader.splitthread-pre-split:                 ; preds = %compare_strings.exit
  %.pr149 = load ptr, ptr %i.ak, align 8, !tbaa !20 ; 2 uses
  %.not79 = icmp eq ptr %.pr149, null
  br i1 %.not79, label %.critedge.thread, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader, %.preheader.splitthread-pre-split
  %.067203 = phi ptr [ %i.ak, %.preheader.splitthread-pre-split ], [ %0, %.preheader ]
  %i.ak = phi ptr [ %.pr149, %.preheader.splitthread-pre-split ], [ %i.b, %.preheader ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.067203, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !14 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !14 ; 3 uses
  %i.ap = icmp eq ptr %i.am, null
  %i.aq = icmp eq ptr %i.ao, null
  %or.cond.i = or i1 %i.ap, %i.aq
  %i.ar = icmp eq ptr %i.am, %i.ao
  %or.cond = or i1 %i.ar, %or.cond.i
  br i1 %or.cond, label %.critedge.preheader, label %compare_strings.exit

compare_strings.exit:                             ; preds = %.preheader.split.preheader
  %i.as = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.am, ptr noundef nonnull readonly dereferenceable(1) %i.ao) #13
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %.preheader.splitthread-pre-split, label %.critedge.preheader

.critedge.preheader:                              ; preds = %compare_strings.exit, %.preheader.split.preheader, %._crit_edge.i.us, %.preheader.split.us.preheader, %.lr.ph.i.us
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %bb.d
  %.168106 = phi ptr [ %i.aw, %bb.d ], [ %0, %.critedge.preheader ]
  %.069105 = phi ptr [ %i.au, %bb.d ], [ %0, %.critedge.preheader ]
  %i.au = load ptr, ptr %.069105, align 8, !tbaa !20 ; 4 uses
  %i.av = load ptr, ptr %.168106, align 8, !tbaa !20 ; 2 uses
  %.not83 = icmp eq ptr %i.av, null
  br i1 %.not83, label %.thread, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !20 ; 2 uses
  %.not80 = icmp eq ptr %i.aw, null
  br i1 %.not80, label %.thread, label %.critedge

.thread:                                          ; preds = %.critedge, %bb.d
  %.not81 = icmp eq ptr %i.au, null
  br i1 %.not81, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  %.not82 = icmp eq ptr %i.ay, null
  br i1 %.not82, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.ay, align 8, !tbaa !20
  store ptr null, ptr %i.ax, align 8, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.thread
  %i.az = tail call fastcc ptr @sort_list(ptr noundef nonnull %0, i32 noundef %1) ; 3 uses
  %i.ba = tail call fastcc ptr @sort_list(ptr noundef %i.au, i32 noundef %1) ; 3 uses
  %i.bb = icmp ne ptr %i.az, null                 ; 2 uses
  %i.bc = icmp ne ptr %i.ba, null                 ; 2 uses
  %i.bd = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %i.bd, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.g, %bb.o
  %.064112 = phi ptr [ %i.cm, %bb.o ], [ null, %bb.g ] ; 2 uses
  %.065111 = phi ptr [ %.166, %bb.o ], [ null, %bb.g ] ; 2 uses
  %.170108 = phi ptr [ %.271, %bb.o ], [ %i.ba, %bb.g ] ; 6 uses
  %.072107 = phi ptr [ %.173, %bb.o ], [ %i.az, %bb.g ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.072107, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !14 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.170108, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !14 ; 5 uses
  %i.bi = icmp eq ptr %i.bf, null
  %i.bj = icmp eq ptr %i.bh, null
  %or.cond.i84 = or i1 %i.bi, %i.bj
  %i.bk = icmp eq ptr %i.bf, %i.bh
end_hunk_1
