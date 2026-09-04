Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_keyboard?download=true
inline.NumInlined: 12
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@SDL_InitKeyboard
define hidden noundef zeroext i1 @SDL_InitKeyboard() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @SDL_AddHintCallback_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @SDL_KeycodeOptionsChanged, ptr noundef nonnull @SDL_keyboard) #12 ; 0 uses
  %i.b = tail call ptr @SDL_CreateHashTable(i32 noundef 0, i1 noundef zeroext true, ptr noundef nonnull @SDL_HashID, ptr noundef nonnull @SDL_KeyMatchID, ptr noundef nonnull @SDL_DestroyHashValue, ptr noundef null) #12
  store ptr %i.b, ptr @SDL_keyboard_names, align 8
  ret i1 true
}

declare zeroext i1 @SDL_AddHintCallback_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @SDL_KeycodeOptionsChanged(ptr nofree noundef captures(none) initializes((1048, 1052)) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3) #0 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %3, align 1
  %.not12 = icmp eq i8 %i.a, 0
  br i1 %.not12, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 7 uses
  store i32 0, ptr %i.b, align 8
  %i.c = tail call ptr @SDL_strstr_REAL(ptr noundef nonnull %3, ptr noundef nonnull @.str.5) #12
  %.not13 = icmp eq ptr %i.c, null
  br i1 %.not13, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @SDL_strstr_REAL(ptr noundef nonnull %3, ptr noundef nonnull @.str.6) #12
  %.not14 = icmp eq ptr %i.d, null
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load i32, ptr %i.b, align 8
  %i.f = or i32 %i.e, 1
  store i32 %i.f, ptr %i.b, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = tail call ptr @SDL_strstr_REAL(ptr noundef nonnull %3, ptr noundef nonnull @.str.7) #12
  %.not15 = icmp eq ptr %i.g, null
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = load i32, ptr %i.b, align 8
  %i.i = or i32 %i.h, 2
  store i32 %i.i, ptr %i.b, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.j = tail call ptr @SDL_strstr_REAL(ptr noundef nonnull %3, ptr noundef nonnull @.str.8) #12
  %.not16 = icmp eq ptr %i.j, null
  br i1 %.not16, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = load i32, ptr %i.b, align 8
  %i.l = or i32 %i.k, 4
  store i32 %i.l, ptr %i.b, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i32 6, ptr %i.m, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.i, %bb.h, %bb.j
  ret void
}

declare ptr @SDL_CreateHashTable(i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @SDL_HashID(ptr noundef, ptr noundef) #1

declare zeroext i1 @SDL_KeyMatchID(ptr noundef, ptr noundef, ptr noundef) #1

declare void @SDL_DestroyHashValue(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @SDL_IsKeyboard(i16 noundef zeroext %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %2, -50
  %or.cond = icmp ult i32 %i.a, -49
  ret i1 %or.cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define hidden void @SDL_AddKeyboard(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %union.SDL_Event, align 8           ; 6 uses
  %i.a = load i32, ptr @SDL_keyboard_count, align 4 ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  %.pre = load ptr, ptr @SDL_keyboards, align 8   ; 2 uses
  br i1 %i.b, label %.lr.ph.i, label %SDL_GetKeyboardIndex.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.i
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %0, %i.d
  br i1 %i.e, label %SDL_GetKeyboardIndex.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %SDL_GetKeyboardIndex.exit.thread, label %bb.b, !llvm.loop !0

SDL_GetKeyboardIndex.exit.thread:                 ; preds = %bb.c, %bb.a
  %i.f = add nsw i32 %i.a, 1
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call ptr @SDL_realloc_REAL(ptr noundef %.pre, i64 noundef %i.h) #13 ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %SDL_GetKeyboardIndex.exit, label %bb.d

bb.d:                                             ; preds = %SDL_GetKeyboardIndex.exit.thread
  %i.j = load i32, ptr @SDL_keyboard_count, align 4 ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.k
  store i32 %0, ptr %i.l, align 4
  store ptr %i.i, ptr @SDL_keyboards, align 8
  %i.m = add nsw i32 %i.j, 1
  store i32 %i.m, ptr @SDL_keyboard_count, align 4
  %.not9 = icmp eq ptr %1, null
  %spec.store.select = select i1 %.not9, ptr @.str.1, ptr %1
  %i.n = load ptr, ptr @SDL_keyboard_names, align 8
  %i.o = zext i32 %0 to i64
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call noalias ptr @SDL_strdup_REAL(ptr noundef nonnull %spec.store.select) #12
  %i.r = tail call zeroext i1 @SDL_InsertIntoHashTable(ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.q, i1 noundef zeroext true) #12 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  store i32 773, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %0, ptr %i.s, align 8
  %i.t = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %2) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %SDL_GetKeyboardIndex.exit

SDL_GetKeyboardIndex.exit:                        ; preds = %bb.b, %bb.d, %SDL_GetKeyboardIndex.exit.thread
  ret void
}

; Function Attrs: allocsize(1)
declare ptr @SDL_realloc_REAL(ptr noundef, i64 noundef) local_unnamed_addr #4

declare zeroext i1 @SDL_InsertIntoHashTable(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noalias ptr @SDL_strdup_REAL(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare zeroext i1 @SDL_PushEvent_REAL(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @SDL_RemoveKeyboard(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %union.SDL_Event, align 8           ; 6 uses
  %i.a = load i32, ptr @SDL_keyboard_count, align 4 ; 4 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.i, label %SDL_GetKeyboardIndex.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load ptr, ptr @SDL_keyboards, align 8    ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 4 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %0, %i.e
  br i1 %i.f, label %SDL_GetKeyboardIndex.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %SDL_GetKeyboardIndex.exit.thread, label %bb.b, !llvm.loop !0

SDL_GetKeyboardIndex.exit:                        ; preds = %bb.b
  %i.g = trunc nuw nsw i64 %indvars.iv.i to i32   ; 2 uses
  %i.h = add nsw i32 %i.a, -1                     ; 2 uses
  %.not = icmp eq i32 %i.h, %i.g
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %SDL_GetKeyboardIndex.exit
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = xor i32 %i.g, -1
  %i.l = add i32 %i.a, %i.k
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull align 4 %i.j, i64 %i.n, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %SDL_GetKeyboardIndex.exit
  store i32 %i.h, ptr @SDL_keyboard_count, align 4
  %.b = load i1, ptr @SDL_keyboard_quitting, align 1
  br i1 %.b, label %SDL_GetKeyboardIndex.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  store i32 774, ptr %1, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %0, ptr %i.o, align 8
  %i.p = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %1) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %SDL_GetKeyboardIndex.exit.thread

SDL_GetKeyboardIndex.exit.thread:                 ; preds = %bb.c, %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @SDL_HasKeyboard_REAL() local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr @SDL_keyboard_count, align 4
  %i.b = icmp sgt i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_GetKeyboards_REAL(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @SDL_keyboard_count, align 4
  %i.b = add nsw i32 %i.a, 1
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2
  %i.e = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.d) #12 ; 4 uses
  %.not = icmp eq ptr %i.e, null
  %.not14 = icmp eq ptr %0, null                  ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.pre = load i32, ptr @SDL_keyboard_count, align 4 ; 4 uses
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %.pre, ptr %0, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = icmp sgt i32 %.pre, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.g = load ptr, ptr @SDL_keyboards, align 8
  %i.h = zext nneg i32 %.pre to i64
  %i.i = shl nuw nsw i64 %i.h, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.e, ptr align 4 %i.g, i64 %i.i, i1 false)
  %i.j = zext nneg i32 %.pre to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.0.lcssa = phi i64 [ 0, %bb.d ], [ %i.j, %.lr.ph ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.0.lcssa
  store i32 0, ptr %i.k, align 4
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %0, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %._crit_edge
  ret ptr %i.e
}

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_GetKeyboardNameForID_REAL(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8
  %cond = icmp eq i32 %0, 0
  br i1 %cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @SDL_keyboard_names, align 8
  %i.c = zext i32 %0 to i64
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = call zeroext i1 @SDL_FindInHashTable(ptr noundef %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #12
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, i32 noundef %0) #12 ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = call zeroext i1 @SDL_OutOfMemory_REAL() #12 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.e, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ %i.g, %bb.d ], [ @.str.1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.0
}

declare zeroext i1 @SDL_FindInHashTable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #1

declare zeroext i1 @SDL_OutOfMemory_REAL() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @SDL_ResetKeyboard_REAL() local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @SDL_keyboard, i64 522), i64 %indvars.iv
  %i.b = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = trunc nuw nsw i64 %indvars.iv to i32
  %i.e = tail call fastcc zeroext i1 @SDL_SendKeyboardKeyInternal(i64 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef %i.d, i1 noundef zeroext false) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !1

bb.e:                                             ; preds = %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SendKeyboardKey(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @SDL_SendKeyboardKeyInternal(i64 noundef %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @SDL_GetCurrentKeymap(i1 noundef zeroext %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_keyboard, i64 1040), align 8 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  %or.cond = select i1 %0, i1 true, i1 %.not
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i8, ptr %i.b, align 8, !range !6, !noundef !7
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @SDL_keyboard, i64 1048), align 8
  %i.f = and i32 %i.e, 4
  %.not10 = icmp eq i32 %i.f, 0
  br i1 %.not10, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.h = load i8, ptr %i.g, align 1, !range !6, !noundef !7
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.c, %bb.d, %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %.thread
  %.0 = phi ptr [ %i.a, %.thread ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_SetKeymap(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_keyboard, i64 1040), align 8 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@SDL_SendEditingText:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %2, ptr %i.j, align 4
  %i.k = tail call ptr @SDL_CreateTemporaryString(ptr noundef nonnull %0) #12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.k, ptr %i.l, align 8
  %.not13.not = icmp eq ptr %i.k, null
  br i1 %.not13.not, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %3) #12 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_SendEditingTextCandidates(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %union.SDL_Event, align 8           ; 10 uses
  %i.a = zext i1 %3 to i8
  %i.b = load ptr, ptr @SDL_keyboard, align 8     ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @SDL_TextInputActive_REAL(ptr noundef nonnull %i.b) #12
  br i1 %i.c, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i1 @SDL_EventEnabled_REAL(i32 noundef 775) #12
  br i1 %i.d, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store i32 775, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.e, align 8
  %i.f = load ptr, ptr @SDL_keyboard, align 8     ; 2 uses
  %.not18 = icmp eq ptr %i.f, null
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %i.f, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.h = phi i32 [ %i.g, %bb.e ], [ 0, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.h, ptr %i.i, align 8
  %i.j = icmp sgt i32 %1, 0
  br i1 %i.j, label %bb.g, label %.critedge20

bb.g:                                             ; preds = %bb.f
  %i.k = add nuw nsw i32 %1, 1
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 3
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.i = phi i64 [ 0, %bb.g ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %.02935.i = phi i64 [ %i.m, %bb.g ], [ %i.r, %bb.h ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i64 @SDL_strlen_REAL(ptr noundef %i.o) #12
  %i.q = add i64 %.02935.i, 1
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.i, label %bb.h, !llvm.loop !9

bb.i:                                             ; preds = %bb.h
  %i.s = tail call ptr @SDL_AllocateTemporaryMemory(i64 noundef %i.r) #12 ; 5 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.l
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %indvars.iv40.i = phi i64 [ 0, %bb.j ], [ %indvars.iv.next41.i, %bb.k ] ; 3 uses
  %.03037.i = phi ptr [ %i.t, %bb.j ], [ %i.aa, %bb.k ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv40.i ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i64 @SDL_strlen_REAL(ptr noundef %i.v) #12
  %i.x = add i64 %i.w, 1                          ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv40.i
  store ptr %.03037.i, ptr %i.y, align 8
  %i.z = load ptr, ptr %i.u, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03037.i, ptr align 1 %i.z, i64 %i.x, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.03037.i, i64 %i.x
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond44.not.i = icmp eq i64 %indvars.iv.next41.i, %wide.trip.count.i
  br i1 %exitcond44.not.i, label %bb.l, label %bb.k, !llvm.loop !10

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %wide.trip.count.i
  store ptr null, ptr %i.ab, align 8
  br label %.critedge20

.critedge20:                                      ; preds = %bb.f, %bb.l
  %.sink29 = phi ptr [ %i.s, %bb.l ], [ null, %bb.f ]
  %.sink27 = phi i32 [ %1, %bb.l ], [ 0, %bb.f ]
  %.sink25 = phi i32 [ %2, %bb.l ], [ -1, %bb.f ]
  %.sink = phi i8 [ %i.a, %bb.l ], [ 0, %bb.f ]
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.sink29, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %.sink27, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 %.sink25, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 %.sink, ptr %i.af, align 8
  %i.ag = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %4) #12 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %.critedge20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_QuitKeyboard() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %union.SDL_Event, align 8           ; 6 uses
  store i1 true, ptr @SDL_keyboard_quitting, align 1
  %i.a = load i32, ptr @SDL_keyboard_count, align 4 ; 4 uses
  %.not7 = icmp eq i32 %i.a, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.d = zext nneg i32 %i.a to i64
  %.pre12 = load ptr, ptr @SDL_keyboards, align 8
  br label %.lr.ph.split

._crit_edge:                                      ; preds = %SDL_RemoveKeyboard.exit, %.lr.ph, %bb.a
  %i.e = load ptr, ptr @SDL_keyboards, align 8
  call void @SDL_free_REAL(ptr noundef %i.e) #12
  store ptr null, ptr @SDL_keyboards, align 8
  %i.f = load ptr, ptr @SDL_keyboard_names, align 8
  call void @SDL_DestroyHashTable(ptr noundef %i.f) #12
  store ptr null, ptr @SDL_keyboard_names, align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_keyboard, i64 1040), align 8 ; 3 uses
  %.not3 = icmp eq ptr %i.g, null
  br i1 %.not3, label %bb.i, label %bb.g

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %SDL_RemoveKeyboard.exit
  %i.h = phi i32 [ %i.a, %.lr.ph.split.preheader ], [ %i.y, %SDL_RemoveKeyboard.exit ] ; 6 uses
  %i.i = phi ptr [ %.pre12, %.lr.ph.split.preheader ], [ %i.z, %SDL_RemoveKeyboard.exit ] ; 6 uses
  %indvars.iv = phi i64 [ %i.d, %.lr.ph.split.preheader ], [ %indvars.iv.next, %SDL_RemoveKeyboard.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = icmp sgt i32 %i.h, 0
  br i1 %i.l, label %.lr.ph.i.i, label %SDL_RemoveKeyboard.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.split
  %wide.trip.count.i.i = zext nneg i32 %i.h to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 4 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i.i
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.k, %i.n
  br i1 %i.o, label %SDL_GetKeyboardIndex.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %SDL_RemoveKeyboard.exit, label %bb.b, !llvm.loop !0

SDL_GetKeyboardIndex.exit.i:                      ; preds = %bb.b
  %i.p = trunc nuw nsw i64 %indvars.iv.i.i to i32 ; 2 uses
  %i.q = add nsw i32 %i.h, -1                     ; 3 uses
  %.not.i = icmp eq i32 %i.q, %i.p
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %SDL_GetKeyboardIndex.exit.i
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = xor i32 %i.p, -1
  %i.u = add i32 %i.h, %i.t
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.v, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 4 %i.s, i64 %i.w, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %SDL_GetKeyboardIndex.exit.i
  store i32 %i.q, ptr @SDL_keyboard_count, align 4
  %.b.i = load i1, ptr @SDL_keyboard_quitting, align 1
  br i1 %.b.i, label %SDL_RemoveKeyboard.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false)
  store i32 774, ptr %0, align 8
  store i32 %i.k, ptr %i.b, align 8
  %i.x = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %0) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  %.pre = load ptr, ptr @SDL_keyboards, align 8
  %.pre13 = load i32, ptr @SDL_keyboard_count, align 4
  br label %SDL_RemoveKeyboard.exit

SDL_RemoveKeyboard.exit:                          ; preds = %bb.c, %.lr.ph.split, %bb.e, %bb.f
  %i.y = phi i32 [ %.pre13, %bb.f ], [ %i.h, %.lr.ph.split ], [ %i.q, %bb.e ], [ %i.h, %bb.c ]
  %i.z = phi ptr [ %.pre, %bb.f ], [ %i.i, %.lr.ph.split ], [ %i.i, %bb.e ], [ %i.i, %bb.c ]
  %.not = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !11

bb.g:                                             ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.ab = load i8, ptr %i.aa, align 4, !range !6, !noundef !7
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @SDL_DestroyKeymap(ptr noundef nonnull %i.g) #12
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @SDL_keyboard, i64 1040), align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge
  call void @SDL_RemoveHintCallback_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @SDL_KeycodeOptionsChanged, ptr noundef nonnull @SDL_keyboard) #12
  store i1 false, ptr @SDL_keyboard_quitting, align 1
  ret void
}

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #1

declare void @SDL_DestroyHashTable(ptr noundef) local_unnamed_addr #1

declare void @SDL_RemoveHintCallback_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden nonnull ptr @SDL_GetKeyboardState_REAL(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 512, ptr %0, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr getelementptr inbounds nuw (i8, ptr @SDL_keyboard, i64 522)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @SDL_SetModState_REAL(i16 noundef zeroext %0) local_unnamed_addr #10 {
bb.a:
  store i16 %0, ptr getelementptr inbounds nuw (i8, ptr @SDL_keyboard, i64 8), align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @SDL_ToggleModState(i16 noundef zeroext %0, i1 noundef zeroext %1) local_unnamed_addr #11 {
bb.a:
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @SDL_keyboard, i64 8), align 8
  %i.b = or i16 %i.a, %0
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = xor i16 %0, -1
  %i.d = load i16, ptr getelementptr inbounds nuw (i8, ptr @SDL_keyboard, i64 8), align 8
  %i.e = and i16 %i.d, %i.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i16 [ %i.e, %bb.c ], [ %i.b, %bb.b ]
  store i16 %storemerge, ptr getelementptr inbounds nuw (i8, ptr @SDL_keyboard, i64 8), align 8
  ret void
}

declare ptr @SDL_strstr_REAL(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @SDL_FindObject(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @SDL_CreateKeymap(i1 noundef zeroext) local_unnamed_addr #1

declare i32 @SDL_GetKeymapNextReservedScancode(ptr noundef) local_unnamed_addr #1

declare void @SDL_SetKeymapEntry(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @SDL_MinimizeWindow_REAL(ptr noundef) local_unnamed_addr #1

declare ptr @SDL_AllocateTemporaryMemory(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(1) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !5}
!1 = distinct !{!1, !5}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5, !12}
!12 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_1
