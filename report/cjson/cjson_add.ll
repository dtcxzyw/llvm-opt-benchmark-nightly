Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cjson/original/cjson_add?download=true
inline.NumInlined: 222
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@cJSON_AddObjectToObject:bb.a
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_CreateObject() local_unnamed_addr #8 {
bb.a:
  %global_hooks.val = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val(i64 noundef 64) #30, !inline_history !1 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %cJSON_New_Item.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_New_Item.exit.thread

cJSON_New_Item.exit.thread:                       ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_AddArrayToObject(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !9 ; 17 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateArray.exit.thread, label %cJSON_CreateArray.exit

cJSON_CreateArray.exit:                           ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i32 32, ptr %i.b, align 8, !tbaa !46
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.c, %i.d
  %i.e = icmp eq ptr %0, %i.a
  %or.cond34.i = or i1 %or.cond.i, %i.e
  br i1 %or.cond34.i, label %cJSON_CreateArray.exit.thread, label %bb.b

bb.b:                                             ; preds = %cJSON_CreateArray.exit
  %i.f = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.g = add i64 %i.f, 1                          ; 2 uses
  %i.h = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.i = tail call ptr %i.h(i64 noundef %i.g) #30, !inline_history !2 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %cJSON_CreateArray.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %1, i64 %i.g, i1 false)
  %i.k = load i32, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.l = and i32 %i.k, -513
  %i.m = and i32 %i.k, 512
  %.not32.i = icmp eq i32 %i.m, 0
  br i1 %.not32.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54   ; 2 uses
  %.not33.i = icmp eq ptr %i.o, null
  br i1 %.not33.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  tail call void %i.p(ptr noundef nonnull %i.o) #30, !inline_history !3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %i.q, align 8, !tbaa !54
  store i32 %i.l, ptr %i.b, align 8, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.a, ptr %i.r, align 8, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.a, ptr %i.u, align 8, !tbaa !73
  store ptr null, ptr %i.a, align 8, !tbaa !52
  br label %add_item_to_object.exit

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73   ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.w, null
  br i1 %.not.i.i6, label %add_item_to_object.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.a, ptr %i.w, align 8, !tbaa !52
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !73
  store ptr %i.a, ptr %i.v, align 8, !tbaa !73
  br label %add_item_to_object.exit

cJSON_CreateArray.exit.thread:                    ; preds = %bb.a, %cJSON_CreateArray.exit, %bb.b
  tail call void @cJSON_Delete(ptr noundef %i.a)
  br label %add_item_to_object.exit

add_item_to_object.exit:                          ; preds = %bb.i, %bb.h, %bb.g, %cJSON_CreateArray.exit.thread
  %.0 = phi ptr [ null, %cJSON_CreateArray.exit.thread ], [ %i.a, %bb.g ], [ %i.a, %bb.h ], [ %i.a, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_CreateArray() local_unnamed_addr #8 {
bb.a:
  %global_hooks.val = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val(i64 noundef 64) #30, !inline_history !1 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %cJSON_New_Item.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 32, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_New_Item.exit.thread

cJSON_New_Item.exit.thread:                       ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @cJSON_DetachItemViaPointer(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address, ret: address, provenance) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %.not = icmp eq ptr %1, %i.d
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.g, label %.thread.thread

.thread:                                          ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !52     ; 3 uses
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %bb.d, label %.thread30

.thread.thread:                                   ; preds = %bb.c
  %i.i = load ptr, ptr %1, align 8, !tbaa !52     ; 3 uses
  store ptr %i.i, ptr %i.f, align 8, !tbaa !52
  %.not2932 = icmp eq ptr %i.i, null
  br i1 %.not2932, label %bb.e, label %.thread31

.thread30:                                        ; preds = %.thread
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !73
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !73
  br label %bb.d

.thread31:                                        ; preds = %.thread.thread
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.f, ptr %i.m, align 8, !tbaa !73
  br label %bb.f

bb.d:                                             ; preds = %.thread30, %.thread
  store ptr %i.h, ptr %i.c, align 8, !tbaa !53
  br label %bb.f

bb.e:                                             ; preds = %.thread.thread
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.f, ptr %i.n, align 8, !tbaa !73
  br label %bb.f

bb.f:                                             ; preds = %.thread31, %bb.e, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.c, %bb.f
  %.0 = phi ptr [ %1, %bb.f ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @cJSON_DetachItemFromArray(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %cJSON_DetachItemViaPointer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.07.i = phi i64 [ %i.c, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %.0.in.i = phi ptr [ %i.d, %bb.b ], [ %.0.i, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !85 ; 10 uses
  %i.e = icmp ne ptr %.0.i, null
  %i.f = icmp ne i64 %.07.i, 0
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  %i.h = add nsw i64 %.07.i, -1
  br i1 %i.g, label %bb.c, label %get_array_item.exit

get_array_item.exit:                              ; preds = %bb.c
  %2 = icmp eq ptr %.0.i, null
  br i1 %2, label %cJSON_DetachItemViaPointer.exit, label %bb.d

bb.d:                                             ; preds = %get_array_item.exit
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %i.i
  br i1 %.not.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !73   ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %cJSON_DetachItemViaPointer.exit, label %.thread.thread.i

.thread.i:                                        ; preds = %bb.d
  %i.m = load ptr, ptr %.0.i, align 8, !tbaa !52  ; 3 uses
  %.not29.i = icmp eq ptr %i.m, null
  br i1 %.not29.i, label %bb.f, label %.thread30.i

.thread.thread.i:                                 ; preds = %bb.e
  %i.n = load ptr, ptr %.0.i, align 8, !tbaa !52  ; 3 uses
  store ptr %i.n, ptr %i.k, align 8, !tbaa !52
  %.not2932.i = icmp eq ptr %i.n, null
  br i1 %.not2932.i, label %bb.g, label %.thread31.i

.thread30.i:                                      ; preds = %.thread.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !73
  br label %bb.f

.thread31.i:                                      ; preds = %.thread.thread.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.k, ptr %i.r, align 8, !tbaa !73
  br label %bb.h

bb.f:                                             ; preds = %.thread30.i, %.thread.i
  store ptr %i.m, ptr %i.d, align 8, !tbaa !53
  br label %bb.h

bb.g:                                             ; preds = %.thread.thread.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.s, align 8, !tbaa !73
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread31.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i, i8 0, i64 16, i1 false)
  br label %cJSON_DetachItemViaPointer.exit

cJSON_DetachItemViaPointer.exit:                  ; preds = %bb.h, %bb.e, %get_array_item.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.0.i, %bb.h ], [ null, %bb.e ], [ null, %get_array_item.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @cJSON_DeleteItemFromArray(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = icmp eq ptr %0, null
  %or.cond.i = or i1 %i.b, %i.a
  br i1 %or.cond.i, label %cJSON_DetachItemFromArray.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.07.i.i = phi i64 [ %i.c, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %.0.in.i.i = phi ptr [ %i.d, %bb.b ], [ %.0.i.i, %bb.c ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !85 ; 10 uses
  %i.e = icmp ne ptr %.0.i.i, null
  %i.f = icmp ne i64 %.07.i.i, 0
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  %i.h = add nsw i64 %.07.i.i, -1
  br i1 %i.g, label %bb.c, label %get_array_item.exit.i

get_array_item.exit.i:                            ; preds = %bb.c
  %2 = icmp eq ptr %.0.i.i, null
  br i1 %2, label %cJSON_DetachItemFromArray.exit, label %bb.d

bb.d:                                             ; preds = %get_array_item.exit.i
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, %i.i
  br i1 %.not.i.i, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !73   ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %cJSON_DetachItemFromArray.exit, label %.thread.thread.i.i

.thread.i.i:                                      ; preds = %bb.d
  %i.m = load ptr, ptr %.0.i.i, align 8, !tbaa !52 ; 3 uses
  %.not29.i.i = icmp eq ptr %i.m, null
  br i1 %.not29.i.i, label %bb.f, label %.thread30.i.i

.thread.thread.i.i:                               ; preds = %bb.e
  %i.n = load ptr, ptr %.0.i.i, align 8, !tbaa !52 ; 3 uses
  store ptr %i.n, ptr %i.k, align 8, !tbaa !52
  %.not2932.i.i = icmp eq ptr %i.n, null
  br i1 %.not2932.i.i, label %bb.g, label %.thread31.i.i

.thread30.i.i:                                    ; preds = %.thread.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !73
  br label %bb.f

.thread31.i.i:                                    ; preds = %.thread.thread.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.k, ptr %i.r, align 8, !tbaa !73
  br label %bb.h

bb.f:                                             ; preds = %.thread30.i.i, %.thread.i.i
  store ptr %i.m, ptr %i.d, align 8, !tbaa !53
  br label %bb.h

bb.g:                                             ; preds = %.thread.thread.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.s, align 8, !tbaa !73
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread31.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i, i8 0, i64 16, i1 false)
  br label %cJSON_DetachItemFromArray.exit

cJSON_DetachItemFromArray.exit:                   ; preds = %bb.a, %get_array_item.exit.i, %bb.e, %bb.h
  %.0.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %bb.h ], [ null, %bb.e ], [ null, %get_array_item.exit.i ]
  tail call void @cJSON_Delete(ptr noundef %.0.i)
  ret void
}

; Function Attrs: nofree nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @cJSON_DetachItemFromObject(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i.i = or i1 %i.a, %i.b
  br i1 %or.cond.i.i, label %cJSON_DetachItemViaPointer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 4 uses
  %.not2349.i.i = icmp eq ptr %i.d, null
  br i1 %.not2349.i.i, label %cJSON_DetachItemViaPointer.exit, label %.lr.ph51.i.i

.lr.ph51.i.i:                                     ; preds = %bb.b, %case_insensitive_strcmp.exit.thread30.i.i
  %.150.i.i = phi ptr [ %i.ag, %case_insensitive_strcmp.exit.thread30.i.i ], [ %i.d, %bb.b ] ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.150.i.i, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54   ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %case_insensitive_strcmp.exit.thread30.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph51.i.i
  %i.h = icmp eq ptr %1, %i.f
  br i1 %i.h, label %cJSON_GetObjectItem.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.i = tail call ptr @__ctype_tolower_loc() #32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87   ; 4 uses
  %i.k = load i8, ptr %1, align 1, !tbaa !63      ; 2 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !88
  %i.o = load i8, ptr %i.f, align 1, !tbaa !63
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !88
  %i.s = icmp eq i32 %i.n, %i.r
  br i1 %i.s, label %.lr.ph.i.i.i, label %case_insensitive_strcmp.exit.thread30.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.d
  %i.t = phi i8 [ %i.x, %bb.d ], [ %i.k, %.preheader.i.i.i ]
  %.02030.i.i.i = phi ptr [ %i.v, %bb.d ], [ %1, %.preheader.i.i.i ]
  %.02129.i.i.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %.preheader.i.i.i ]
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %cJSON_GetObjectItem.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.02030.i.i.i, i64 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02129.i.i.i, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.v, align 1, !tbaa !63    ; 2 uses
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !88
  %i.ab = load i8, ptr %i.w, align 1, !tbaa !63
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !88
  %i.af = icmp eq i32 %i.aa, %i.ae
  br i1 %i.af, label %.lr.ph.i.i.i, label %case_insensitive_strcmp.exit.thread30.i.i

case_insensitive_strcmp.exit.thread30.i.i:        ; preds = %bb.d, %.preheader.i.i.i, %.lr.ph51.i.i
  %i.ag = load ptr, ptr %.150.i.i, align 8, !tbaa !52 ; 2 uses
  %.not23.i.i = icmp eq ptr %i.ag, null
  br i1 %.not23.i.i, label %cJSON_DetachItemViaPointer.exit, label %.lr.ph51.i.i

cJSON_GetObjectItem.exit:                         ; preds = %bb.c, %.lr.ph.i.i.i
  %.not.i = icmp eq ptr %.150.i.i, %i.d
  br i1 %.not.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %cJSON_GetObjectItem.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.150.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !73 ; 4 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %cJSON_DetachItemViaPointer.exit, label %.thread.thread.i

.thread.i:                                        ; preds = %cJSON_GetObjectItem.exit
  %i.ak = load ptr, ptr %.150.i.i, align 8, !tbaa !52 ; 3 uses
  %.not29.i = icmp eq ptr %i.ak, null
  br i1 %.not29.i, label %bb.f, label %.thread30.i

.thread.thread.i:                                 ; preds = %bb.e
  %i.al = load ptr, ptr %.150.i.i, align 8, !tbaa !52 ; 3 uses
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !52
  %.not2932.i = icmp eq ptr %i.al, null
  br i1 %.not2932.i, label %bb.g, label %.thread31.i

.thread30.i:                                      ; preds = %.thread.i
  %i.am = getelementptr inbounds nuw i8, ptr %.150.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !73
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !73
  br label %bb.f

.thread31.i:                                      ; preds = %.thread.thread.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ai, ptr %i.ap, align 8, !tbaa !73
  br label %bb.h

bb.f:                                             ; preds = %.thread30.i, %.thread.i
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !53
  br label %bb.h

bb.g:                                             ; preds = %.thread.thread.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ai, ptr %i.aq, align 8, !tbaa !73
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread31.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.150.i.i, i8 0, i64 16, i1 false)
  br label %cJSON_DetachItemViaPointer.exit

cJSON_DetachItemViaPointer.exit:                  ; preds = %case_insensitive_strcmp.exit.thread30.i.i, %bb.a, %bb.b, %bb.e, %bb.h
  %.0.i = phi ptr [ %.150.i.i, %bb.h ], [ null, %bb.e ], [ null, %bb.a ], [ null, %bb.b ], [ null, %case_insensitive_strcmp.exit.thread30.i.i ]
  ret ptr %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @cJSON_DetachItemFromObjectCaseSensitive(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i.i = or i1 %i.a, %i.b
  br i1 %or.cond.i.i, label %cJSON_DetachItemViaPointer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 4 uses
  %.not2349.i.i = icmp eq ptr %i.d, null
  br i1 %.not2349.i.i, label %cJSON_DetachItemViaPointer.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.048.i.i = phi ptr [ %i.h, %bb.d ], [ %i.d, %bb.b ] ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54   ; 2 uses
  %.not26.i.i = icmp eq ptr %i.f, null
  br i1 %.not26.i.i, label %cJSON_DetachItemViaPointer.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.g = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.f) #31
  %.not27.i.i = icmp eq i32 %i.g, 0
  br i1 %.not27.i.i, label %cJSON_GetObjectItemCaseSensitive.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %.048.i.i, align 8, !tbaa !52 ; 2 uses
  %.not25.i.i = icmp eq ptr %i.h, null
  br i1 %.not25.i.i, label %cJSON_DetachItemViaPointer.exit, label %.lr.ph.i.i
end_hunk_0
begin_hunk_1_@cJSON_DeleteItemFromObject:bb.a
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %case_insensitive_strcmp.exit.thread30.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph51.i.i.i
  %i.h = icmp eq ptr %1, %i.f
  br i1 %i.h, label %cJSON_GetObjectItem.exit.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.c
  %i.i = tail call ptr @__ctype_tolower_loc() #32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87   ; 4 uses
  %i.k = load i8, ptr %1, align 1, !tbaa !63      ; 2 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !88
  %i.o = load i8, ptr %i.f, align 1, !tbaa !63
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !88
  %i.s = icmp eq i32 %i.n, %i.r
  br i1 %i.s, label %.lr.ph.i.i.i.i, label %case_insensitive_strcmp.exit.thread30.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %i.t = phi i8 [ %i.x, %bb.d ], [ %i.k, %.preheader.i.i.i.i ]
  %.02030.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ %1, %.preheader.i.i.i.i ]
  %.02129.i.i.i.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %.preheader.i.i.i.i ]
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %cJSON_GetObjectItem.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.02030.i.i.i.i, i64 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02129.i.i.i.i, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.v, align 1, !tbaa !63    ; 2 uses
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !88
  %i.ab = load i8, ptr %i.w, align 1, !tbaa !63
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !88
  %i.af = icmp eq i32 %i.aa, %i.ae
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %case_insensitive_strcmp.exit.thread30.i.i.i

case_insensitive_strcmp.exit.thread30.i.i.i:      ; preds = %bb.d, %.preheader.i.i.i.i, %.lr.ph51.i.i.i
  %i.ag = load ptr, ptr %.150.i.i.i, align 8, !tbaa !52 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not23.i.i.i, label %cJSON_DetachItemFromObject.exit, label %.lr.ph51.i.i.i

cJSON_GetObjectItem.exit.i:                       ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.not.i.i = icmp eq ptr %.150.i.i.i, %i.d
  br i1 %.not.i.i, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %cJSON_GetObjectItem.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.150.i.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !73 ; 4 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %cJSON_DetachItemFromObject.exit, label %.thread.thread.i.i

.thread.i.i:                                      ; preds = %cJSON_GetObjectItem.exit.i
  %i.ak = load ptr, ptr %.150.i.i.i, align 8, !tbaa !52 ; 3 uses
  %.not29.i.i = icmp eq ptr %i.ak, null
  br i1 %.not29.i.i, label %bb.f, label %.thread30.i.i

.thread.thread.i.i:                               ; preds = %bb.e
  %i.al = load ptr, ptr %.150.i.i.i, align 8, !tbaa !52 ; 3 uses
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !52
  %.not2932.i.i = icmp eq ptr %i.al, null
  br i1 %.not2932.i.i, label %bb.g, label %.thread31.i.i

.thread30.i.i:                                    ; preds = %.thread.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.150.i.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !73
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !73
  br label %bb.f

.thread31.i.i:                                    ; preds = %.thread.thread.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ai, ptr %i.ap, align 8, !tbaa !73
  br label %bb.h

bb.f:                                             ; preds = %.thread30.i.i, %.thread.i.i
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !53
  br label %bb.h

bb.g:                                             ; preds = %.thread.thread.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ai, ptr %i.aq, align 8, !tbaa !73
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread31.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.150.i.i.i, i8 0, i64 16, i1 false)
  br label %cJSON_DetachItemFromObject.exit

cJSON_DetachItemFromObject.exit:                  ; preds = %case_insensitive_strcmp.exit.thread30.i.i.i, %bb.a, %bb.b, %bb.e, %bb.h
  %.0.i.i = phi ptr [ %.150.i.i.i, %bb.h ], [ null, %bb.e ], [ null, %bb.a ], [ null, %bb.b ], [ null, %case_insensitive_strcmp.exit.thread30.i.i.i ]
  tail call void @cJSON_Delete(ptr noundef %.0.i.i)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @cJSON_DeleteItemFromObjectCaseSensitive(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i.i.i = or i1 %i.a, %i.b
  br i1 %or.cond.i.i.i, label %cJSON_DetachItemFromObjectCaseSensitive.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 4 uses
  %.not2349.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not2349.i.i.i, label %cJSON_DetachItemFromObjectCaseSensitive.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.d
  %.048.i.i.i = phi ptr [ %i.h, %bb.d ], [ %i.d, %bb.b ] ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54   ; 2 uses
  %.not26.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not26.i.i.i, label %cJSON_DetachItemFromObjectCaseSensitive.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.g = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.f) #31
  %.not27.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not27.i.i.i, label %cJSON_GetObjectItemCaseSensitive.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %.048.i.i.i, align 8, !tbaa !52 ; 2 uses
  %.not25.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not25.i.i.i, label %cJSON_DetachItemFromObjectCaseSensitive.exit, label %.lr.ph.i.i.i

cJSON_GetObjectItemCaseSensitive.exit.i:          ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.048.i.i.i, %i.d
  br i1 %.not.i.i, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %cJSON_GetObjectItemCaseSensitive.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73   ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %cJSON_DetachItemFromObjectCaseSensitive.exit, label %.thread.thread.i.i

.thread.i.i:                                      ; preds = %cJSON_GetObjectItemCaseSensitive.exit.i
  %i.l = load ptr, ptr %.048.i.i.i, align 8, !tbaa !52 ; 3 uses
  %.not29.i.i = icmp eq ptr %i.l, null
  br i1 %.not29.i.i, label %bb.f, label %.thread30.i.i

.thread.thread.i.i:                               ; preds = %bb.e
  %i.m = load ptr, ptr %.048.i.i.i, align 8, !tbaa !52 ; 3 uses
  store ptr %i.m, ptr %i.j, align 8, !tbaa !52
  %.not2932.i.i = icmp eq ptr %i.m, null
  br i1 %.not2932.i.i, label %bb.g, label %.thread31.i.i

.thread30.i.i:                                    ; preds = %.thread.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !73
  br label %bb.f

.thread31.i.i:                                    ; preds = %.thread.thread.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.j, ptr %i.q, align 8, !tbaa !73
  br label %bb.h

bb.f:                                             ; preds = %.thread30.i.i, %.thread.i.i
  store ptr %i.l, ptr %i.c, align 8, !tbaa !53
  br label %bb.h

bb.g:                                             ; preds = %.thread.thread.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.j, ptr %i.r, align 8, !tbaa !73
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread31.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.048.i.i.i, i8 0, i64 16, i1 false)
  br label %cJSON_DetachItemFromObjectCaseSensitive.exit

cJSON_DetachItemFromObjectCaseSensitive.exit:     ; preds = %.lr.ph.i.i.i, %bb.d, %bb.a, %bb.b, %bb.e, %bb.h
  %.0.i.i = phi ptr [ %.048.i.i.i, %bb.h ], [ null, %bb.e ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.d ], [ null, %.lr.ph.i.i.i ]
  tail call void @cJSON_Delete(ptr noundef %.0.i.i)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @cJSON_InsertItemInArray(ptr nofree noundef captures(address) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %0, null
  %or.cond30 = or i1 %i.c, %or.cond
  br i1 %or.cond30, label %add_item_to_array.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.07.i = phi i64 [ %i.d, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.0.in.i = phi ptr [ %i.e, %bb.b ], [ %.0.i, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !85 ; 8 uses
  %i.f = icmp ne ptr %.0.i, null
  %i.g = icmp ne i64 %.07.i, 0
  %i.h = select i1 %i.f, i1 %i.g, i1 false
  %i.i = add nsw i64 %.07.i, -1
  br i1 %i.h, label %bb.c, label %get_array_item.exit

get_array_item.exit:                              ; preds = %bb.c
  %3 = icmp eq ptr %.0.i, null
  br i1 %3, label %bb.d, label %bb.i

bb.d:                                             ; preds = %get_array_item.exit
  %i.j = icmp eq ptr %0, %2
  br i1 %i.j, label %add_item_to_array.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %2, ptr %i.e, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %2, ptr %i.m, align 8, !tbaa !73
  store ptr null, ptr %2, align 8, !tbaa !52
  br label %add_item_to_array.exit

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !73   ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %add_item_to_array.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %2, ptr %i.o, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !73
  store ptr %2, ptr %i.n, align 8, !tbaa !73
  br label %add_item_to_array.exit

bb.i:                                             ; preds = %get_array_item.exit
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !53
  %.not = icmp eq ptr %.0.i, %i.q
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %add_item_to_array.exit, label %bb.l

bb.k:                                             ; preds = %bb.i
  store ptr %.0.i, ptr %2, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !73
  store ptr %2, ptr %i.u, align 8, !tbaa !73
  store ptr %2, ptr %i.e, align 8, !tbaa !53
  br label %add_item_to_array.exit

bb.l:                                             ; preds = %bb.j
  store ptr %.0.i, ptr %2, align 8, !tbaa !52
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.x, align 8, !tbaa !73
  store ptr %2, ptr %i.r, align 8, !tbaa !73
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73
  store ptr %2, ptr %i.y, align 8, !tbaa !52
  br label %add_item_to_array.exit

add_item_to_array.exit:                           ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.k, %bb.l, %bb.j, %bb.a
  %.0 = phi i32 [ 0, %bb.j ], [ 1, %bb.k ], [ 0, %bb.a ], [ 1, %bb.l ], [ 0, %bb.d ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @cJSON_ReplaceItemViaPointer(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = icmp eq ptr %2, null
  %or.cond = or i1 %i.e, %i.d
  %i.f = icmp eq ptr %1, null
  %or.cond3 = or i1 %i.f, %or.cond
  br i1 %or.cond3, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %2, %1
  br i1 %i.g, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load <2 x ptr>, ptr %1, align 8, !tbaa !85
  %i.j = load ptr, ptr %1, align 8, !tbaa !52     ; 3 uses
  store <2 x ptr> %i.i, ptr %2, align 8, !tbaa !85
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %2, ptr %i.k, align 8, !tbaa !73
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = icmp eq ptr %i.c, %1
  br i1 %i.l, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.o = icmp eq ptr %i.n, %1
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %2, ptr %i.h, align 8, !tbaa !73
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr %2, ptr %i.b, align 8, !tbaa !53
  br label %bb.n

bb.j:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !73   ; 2 uses
  %.not39 = icmp eq ptr %i.p, null
  br i1 %.not39, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %2, ptr %i.p, align 8, !tbaa !52
  %.pre = load ptr, ptr %2, align 8, !tbaa !52
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.q = phi ptr [ %.pre, %bb.k ], [ %i.j, %bb.j ]
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.s, align 8, !tbaa !73
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  tail call void @cJSON_Delete(ptr noundef nonnull %1)
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.n
  %.0 = phi i32 [ 1, %bb.n ], [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @cJSON_ReplaceItemInArray(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %cJSON_ReplaceItemViaPointer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.07.i = phi i64 [ %i.c, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %.0.in.i = phi ptr [ %i.d, %bb.b ], [ %.0.i, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !85 ; 10 uses
  %i.e = icmp ne ptr %.0.i, null
  %i.f = icmp ne i64 %.07.i, 0
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  %i.h = add nsw i64 %.07.i, -1
  br i1 %i.g, label %bb.c, label %get_array_item.exit

get_array_item.exit:                              ; preds = %bb.c
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !53   ; 4 uses
  %3 = icmp eq ptr %i.i, null
  %4 = icmp eq ptr %2, null
  %or.cond.i = or i1 %4, %3
  %5 = icmp eq ptr %.0.i, null
  %or.cond3.i = or i1 %5, %or.cond.i
  br i1 %or.cond3.i, label %cJSON_ReplaceItemViaPointer.exit, label %bb.d

bb.d:                                             ; preds = %get_array_item.exit
  %i.j = icmp eq ptr %2, %.0.i
  br i1 %i.j, label %cJSON_ReplaceItemViaPointer.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = load <2 x ptr>, ptr %.0.i, align 8, !tbaa !85
  %i.m = load ptr, ptr %.0.i, align 8, !tbaa !52  ; 3 uses
  store <2 x ptr> %i.l, ptr %2, align 8, !tbaa !85
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %2, ptr %i.n, align 8, !tbaa !73
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = icmp eq ptr %i.i, %.0.i
  br i1 %i.o, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !73
  %i.r = icmp eq ptr %i.q, %.0.i
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %2, ptr %i.k, align 8, !tbaa !73
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %2, ptr %i.d, align 8, !tbaa !53
  br label %bb.o

bb.k:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !73   ; 2 uses
  %.not39.i = icmp eq ptr %i.s, null
  br i1 %.not39.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %2, ptr %i.s, align 8, !tbaa !52
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !52
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.t = phi ptr [ %.pre.i, %bb.l ], [ %i.m, %bb.k ]
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %i.v, align 8, !tbaa !73
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i, i8 0, i64 16, i1 false)
  tail call void @cJSON_Delete(ptr noundef nonnull %.0.i)
  br label %cJSON_ReplaceItemViaPointer.exit

cJSON_ReplaceItemViaPointer.exit:                 ; preds = %bb.o, %bb.d, %get_array_item.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.o ], [ 1, %bb.d ], [ 0, %get_array_item.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @cJSON_ReplaceItemInObject(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call fastcc i32 @replace_item_in_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @replace_item_in_object(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %cJSON_ReplaceItemViaPointer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46
  %i.e = and i32 %i.d, 512
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54   ; 2 uses
  %.not18 = icmp eq ptr %i.g, null
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  tail call void %i.h(ptr noundef nonnull %i.g) #30, !inline_history !56
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.j = add i64 %i.i, 1                          ; 2 uses
  %i.k = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.l = tail call ptr %i.k(i64 noundef %i.j) #30, !inline_history !0 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %cJSON_strdup.exit.thread, label %bb.f

cJSON_strdup.exit.thread:                         ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.n, align 8, !tbaa !54
  br label %cJSON_ReplaceItemViaPointer.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %i.j, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.l, ptr %i.o, align 8, !tbaa !54
  %i.p = load i32, ptr %i.c, align 8, !tbaa !46
  %i.q = and i32 %i.p, -513
  store i32 %i.q, ptr %i.c, align 8, !tbaa !46
  %i.r = icmp eq ptr %0, null
  br i1 %i.r, label %cJSON_ReplaceItemViaPointer.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !53   ; 7 uses
  %.not.i = icmp eq i32 %3, 0
  %.not2349.i = icmp eq ptr %i.t, null            ; 3 uses
  br i1 %.not.i, label %.preheader.i, label %.preheader41.i

.preheader41.i:                                   ; preds = %bb.g
  br i1 %.not2349.i, label %cJSON_ReplaceItemViaPointer.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.g
  br i1 %.not2349.i, label %cJSON_ReplaceItemViaPointer.exit, label %.lr.ph51.i

.lr.ph.i:                                         ; preds = %.preheader41.i, %bb.i
  %.048.i = phi ptr [ %i.x, %bb.i ], [ %i.t, %.preheader41.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.048.i, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54   ; 2 uses
  %.not26.i = icmp eq ptr %i.v, null
  br i1 %.not26.i, label %cJSON_ReplaceItemViaPointer.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.w = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.v) #31
  %.not27.i = icmp eq i32 %i.w, 0
  br i1 %.not27.i, label %get_object_item.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %.048.i, align 8, !tbaa !52 ; 2 uses
  %.not25.i = icmp eq ptr %i.x, null
  br i1 %.not25.i, label %cJSON_ReplaceItemViaPointer.exit, label %.lr.ph.i

.lr.ph51.i:                                       ; preds = %.preheader.i, %case_insensitive_strcmp.exit.thread30.i
  %.150.i = phi ptr [ %i.ba, %case_insensitive_strcmp.exit.thread30.i ], [ %i.t, %.preheader.i ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.150.i, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !54   ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %case_insensitive_strcmp.exit.thread30.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph51.i
  %i.ab = icmp eq ptr %1, %i.z
  br i1 %i.ab, label %get_object_item.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.j
  %i.ac = tail call ptr @__ctype_tolower_loc() #32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !87 ; 4 uses
  %i.ae = load i8, ptr %1, align 1, !tbaa !63     ; 2 uses
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !88
  %i.ai = load i8, ptr %i.z, align 1, !tbaa !63
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !88
  %i.am = icmp eq i32 %i.ah, %i.al
  br i1 %i.am, label %.lr.ph.i.i, label %case_insensitive_strcmp.exit.thread30.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.k
  %i.an = phi i8 [ %i.ar, %bb.k ], [ %i.ae, %.preheader.i.i ]
  %.02030.i.i = phi ptr [ %i.ap, %bb.k ], [ %1, %.preheader.i.i ]
  %.02129.i.i = phi ptr [ %i.aq, %bb.k ], [ %i.z, %.preheader.i.i ]
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %get_object_item.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.02030.i.i, i64 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02129.i.i, i64 1 ; 2 uses
  %i.ar = load i8, ptr %i.ap, align 1, !tbaa !63  ; 2 uses
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !88
  %i.av = load i8, ptr %i.aq, align 1, !tbaa !63
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !88
  %i.az = icmp eq i32 %i.au, %i.ay
  br i1 %i.az, label %.lr.ph.i.i, label %case_insensitive_strcmp.exit.thread30.i

case_insensitive_strcmp.exit.thread30.i:          ; preds = %bb.k, %.preheader.i.i, %.lr.ph51.i
  %i.ba = load ptr, ptr %.150.i, align 8, !tbaa !52 ; 2 uses
end_hunk_1
