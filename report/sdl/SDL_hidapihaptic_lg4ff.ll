inline.NumInlined: 69
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@SDL_HIDAPI_HapticDriverLg4ff_RunEffect
define internal noundef zeroext i1 @SDL_HIDAPI_HapticDriverLg4ff_RunEffect(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2944 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.d) #8
  %or.cond.i = icmp ugt i32 %1, 15
  br i1 %or.cond.i, label %lg4ff_effect_slot_valid_active.exit.thread, label %lg4ff_effect_slot_valid_active.exit

lg4ff_effect_slot_valid_active.exit:              ; preds = %bb.a
  %i.e = zext nneg i32 %1 to i64                  ; 2 uses
  %i.f = getelementptr inbounds nuw [152 x i8], ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 156
  %i.h = load i8, ptr %i.g, align 4, !range !3, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %lg4ff_effect_slot_valid_active.exit.thread

lg4ff_effect_slot_valid_active.exit.thread:       ; preds = %bb.a, %lg4ff_effect_slot_valid_active.exit
  %i.j = load ptr, ptr %i.c, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.j) #8
  %i.k = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.10) #8 ; 0 uses
  br label %bb.h

bb.b:                                             ; preds = %lg4ff_effect_slot_valid_active.exit
  %i.l = tail call i64 @SDL_GetTicks_REAL() #8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw [152 x i8], ptr %i.m, i64 %i.e ; 3 uses
  %i.o = icmp sgt i32 %2, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 96 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %i.r = and i32 %i.q, 1
  %.not14.i = icmp eq i32 %i.r, 0                 ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %.not14.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 2632 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 8
  %i.v = or disjoint i32 %i.q, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = phi i32 [ %i.v, %bb.d ], [ 1, %bb.c ]
  store i32 %i.w, ptr %i.p, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store i64 %i.l, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  store i32 %2, ptr %i.y, align 8
  br label %lg4ff_play_effect.exit

bb.f:                                             ; preds = %bb.b
  br i1 %.not14.i, label %lg4ff_play_effect.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.p, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 2632 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = add nsw i32 %i.aa, -1
  store i32 %i.ab, ptr %i.z, align 8
  br label %lg4ff_play_effect.exit

lg4ff_play_effect.exit:                           ; preds = %bb.e, %bb.f, %bb.g
  %i.ac = load ptr, ptr %i.c, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ac) #8
  br label %bb.h

bb.h:                                             ; preds = %lg4ff_play_effect.exit, %lg4ff_effect_slot_valid_active.exit.thread
  %.0.i11 = phi i1 [ true, %lg4ff_play_effect.exit ], [ false, %lg4ff_effect_slot_valid_active.exit.thread ]
  ret i1 %.0.i11
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @SDL_HIDAPI_HapticDriverLg4ff_StopEffect(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2944 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.d) #8
  %or.cond.i.i = icmp ugt i32 %1, 15
  br i1 %or.cond.i.i, label %lg4ff_effect_slot_valid_active.exit.thread.i, label %lg4ff_effect_slot_valid_active.exit.i

lg4ff_effect_slot_valid_active.exit.i:            ; preds = %bb.a
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr inbounds nuw [152 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 156
  %i.h = load i8, ptr %i.g, align 4, !range !3, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %lg4ff_effect_slot_valid_active.exit.thread.i

lg4ff_effect_slot_valid_active.exit.thread.i:     ; preds = %lg4ff_effect_slot_valid_active.exit.i, %bb.a
  %i.j = load ptr, ptr %i.c, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.j) #8
  %i.k = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.10) #8 ; 0 uses
  br label %SDL_HIDAPI_HapticDriverLg4ff_RunEffect.exit

bb.b:                                             ; preds = %lg4ff_effect_slot_valid_active.exit.i
  %i.l = tail call i64 @SDL_GetTicks_REAL() #8    ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 1
  %.not14.i.i = icmp eq i32 %i.o, 0
  br i1 %.not14.i.i, label %lg4ff_play_effect.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 2632 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = add nsw i32 %i.q, -1
  store i32 %i.r, ptr %i.p, align 8
  br label %lg4ff_play_effect.exit.i

lg4ff_play_effect.exit.i:                         ; preds = %bb.c, %bb.b
  %i.s = load ptr, ptr %i.c, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.s) #8
  br label %SDL_HIDAPI_HapticDriverLg4ff_RunEffect.exit

SDL_HIDAPI_HapticDriverLg4ff_RunEffect.exit:      ; preds = %lg4ff_effect_slot_valid_active.exit.thread.i, %lg4ff_play_effect.exit.i
  %.0.i11.i = phi i1 [ true, %lg4ff_play_effect.exit.i ], [ false, %lg4ff_effect_slot_valid_active.exit.thread.i ]
  ret i1 %.0.i11.i
}

; Function Attrs: nounwind uwtable
define internal void @SDL_HIDAPI_HapticDriverLg4ff_DestroyEffect(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2944 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.d) #8
  %or.cond.i = icmp ugt i32 %1, 15
  br i1 %or.cond.i, label %lg4ff_effect_slot_valid_active.exit.thread, label %lg4ff_effect_slot_valid_active.exit

lg4ff_effect_slot_valid_active.exit:              ; preds = %bb.a
  %i.e = zext nneg i32 %1 to i64                  ; 2 uses
  %i.f = getelementptr inbounds nuw [152 x i8], ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 156
  %i.h = load i8, ptr %i.g, align 4, !range !3, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %lg4ff_effect_slot_valid_active.exit.thread

bb.b:                                             ; preds = %lg4ff_effect_slot_valid_active.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = getelementptr inbounds nuw [152 x i8], ptr %i.j, i64 %i.e ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 148
  store i8 0, ptr %i.m, align 4
  br label %lg4ff_effect_slot_valid_active.exit.thread

lg4ff_effect_slot_valid_active.exit.thread:       ; preds = %lg4ff_effect_slot_valid_active.exit, %bb.a, %bb.b
  %i.n = load ptr, ptr %i.c, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.n) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @SDL_HIDAPI_HapticDriverLg4ff_GetEffectStatus(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2944 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.d) #8
  %or.cond.i = icmp ugt i32 %1, 15
  br i1 %or.cond.i, label %lg4ff_effect_slot_valid_active.exit.thread, label %lg4ff_effect_slot_valid_active.exit

lg4ff_effect_slot_valid_active.exit:              ; preds = %bb.a
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr [152 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 156
  %i.h = load i8, ptr %i.g, align 4, !range !3, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %lg4ff_effect_slot_valid_active.exit.thread

bb.b:                                             ; preds = %lg4ff_effect_slot_valid_active.exit
  %i.j = getelementptr i8, ptr %i.f, i64 104
  %i.k = load i32, ptr %i.j, align 8
  %.not = trunc i32 %i.k to i1
  br label %lg4ff_effect_slot_valid_active.exit.thread

lg4ff_effect_slot_valid_active.exit.thread:       ; preds = %lg4ff_effect_slot_valid_active.exit, %bb.a, %bb.b
  %.09 = phi i1 [ %.not, %bb.b ], [ false, %bb.a ], [ false, %lg4ff_effect_slot_valid_active.exit ]
  %i.l = load ptr, ptr %i.c, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.l) #8
  ret i1 %.09
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @SDL_HIDAPI_HapticDriverLg4ff_SetGain(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.d = tail call i32 @llvm.umin.i32(i32 %i.c, i32 100)
  %i.e = mul nuw nsw i32 %i.d, 13107
  %i.f = udiv i32 %i.e, 20
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2640
  store i32 %i.f, ptr %i.g, align 8
  ret i1 true
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @SDL_HIDAPI_HapticDriverLg4ff_SetAutocenter(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca [7 x i8], align 4                 ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.a, i8 0, i64 7, i1 false)
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %spec.store.select2 = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 100) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2944 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.e) #8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 2952
  %i.g = load i8, ptr %i.f, align 8, !range !3, !noundef !4
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = trunc nuw nsw i32 %spec.store.select2 to i16
  %.lhs.trunc = mul nuw nsw i16 %i.i, 9
  %i.j = udiv i16 %.lhs.trunc, 10
  store <4 x i8> <i8 -2, i8 3, i8 0, i8 0>, ptr %i.a, align 4
  %i.k = trunc nuw nsw i16 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.k, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 2664
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call zeroext i1 @SDL_SendJoystickEffect_REAL(ptr noundef %i.n, ptr noundef nonnull %i.a, i32 noundef 7) #8
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8
  call void @SDL_UnlockMutex_REAL(ptr noundef %i.p) #8
  %i.q = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11) #8 ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %i.r = mul nuw nsw i32 %spec.store.select2, 13107
  %i.s = udiv i32 %i.r, 20                        ; 3 uses
  store i8 -11, ptr %i.a, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 2664 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call zeroext i1 @SDL_SendJoystickEffect_REAL(ptr noundef %i.u, ptr noundef nonnull %i.a, i32 noundef 7) #8
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.d, align 8
  call void @SDL_UnlockMutex_REAL(ptr noundef %i.w) #8
  %i.x = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.12) #8 ; 0 uses
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.y = icmp slt i32 %1, 1
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.d, align 8
  call void @SDL_UnlockMutex_REAL(ptr noundef %i.z) #8
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.aa = icmp samesign ult i32 %1, 67
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = mul nuw nsw i32 %i.s, 12
  %i.ac = shl nuw nsw i32 %i.s, 7
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.s, -43690                ; 2 uses
  %i.ae = mul nuw nsw i32 %i.ad, 6
  %i.af = add nuw nsw i32 %i.ae, 524280
  %i.ag = mul nsw i32 %i.ad, 255
  %i.ah = add nuw nsw i32 %i.ag, 5592320
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.039 = phi i32 [ %i.ab, %bb.i ], [ %i.af, %bb.j ]
  %.038 = phi i32 [ %i.ac, %bb.i ], [ %i.ah, %bb.j ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i16 0, ptr %i.ai, align 1
  store i8 -2, ptr %i.a, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 13, ptr %i.aj, align 1
  %i.ak = udiv i32 %.039, 87380
  %i.al = trunc nuw nsw i32 %i.ak to i8           ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.al, ptr %i.am, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.al, ptr %i.an, align 1
  %i.ao = udiv i32 %.038, 43690
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.ap, ptr %i.aq, align 4
  %i.ar = load ptr, ptr %i.t, align 8
  %i.as = call zeroext i1 @SDL_SendJoystickEffect_REAL(ptr noundef %i.ar, ptr noundef nonnull %i.a, i32 noundef 7) #8
  br i1 %i.as, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.d, align 8
  call void @SDL_UnlockMutex_REAL(ptr noundef %i.at) #8
  %i.au = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.13) #8 ; 0 uses
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.av, i8 0, i64 6, i1 false)
  store i8 20, ptr %i.a, align 4
  %i.aw = load ptr, ptr %i.t, align 8
  %i.ax = call zeroext i1 @SDL_SendJoystickEffect_REAL(ptr noundef %i.aw, ptr noundef nonnull %i.a, i32 noundef 7) #8
  br i1 %i.ax, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = load ptr, ptr %i.d, align 8
  call void @SDL_UnlockMutex_REAL(ptr noundef %i.ay) #8
  %i.az = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.14) #8 ; 0 uses
  br label %.thread

.critedge:                                        ; preds = %bb.m, %bb.b
  %i.ba = load ptr, ptr %i.d, align 8
  call void @SDL_UnlockMutex_REAL(ptr noundef %i.ba) #8
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.n, %bb.e, %bb.g, %bb.c, %.critedge
  %.2 = phi i1 [ true, %.critedge ], [ false, %bb.c ], [ false, %bb.l ], [ false, %bb.n ], [ false, %bb.e ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @SDL_HIDAPI_HapticDriverLg4ff_Pause(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.15) #8
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @SDL_HIDAPI_HapticDriverLg4ff_Resume(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.15) #8
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @SDL_HIDAPI_HapticDriverLg4ff_StopEffects(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2944 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 560
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 712
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 864
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1016
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1168
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1320
  store i32 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1472
  store i32 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1624
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1776
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1928
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 2080
  store i32 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 2232
  store i32 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 2384
  store i32 0, ptr %i.t, align 8
  %i.u = load ptr, ptr %i.c, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.u) #8
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare zeroext i16 @SDL_GetJoystickVendor_REAL(ptr noundef) local_unnamed_addr #4

declare zeroext i16 @SDL_GetJoystickProduct_REAL(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #4

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #4

declare zeroext i1 @SDL_OutOfMemory_REAL() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #4

declare ptr @SDL_CreateMutex_REAL() local_unnamed_addr #4

declare zeroext i16 @SDL_GetJoystickProductVersion_REAL(ptr noundef) local_unnamed_addr #4

declare i32 @SDL_snprintf_REAL(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @SDL_GetJoystickID_REAL(ptr noundef) local_unnamed_addr #4

declare ptr @SDL_CreateThreadRuntime_REAL(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @SDL_HIDAPI_HapticDriverLg4ff_ThreadFunction(ptr noundef %0) #0 {
bb.a:
  %1 = alloca [4 x %struct.lg4ff_effect_parameters], align 16 ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2672 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !3, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2944 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2636
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2644
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2648
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2652
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2656 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2664 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2480 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2468
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2488
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2528 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2516
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2576 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2564
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2584
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2624 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2612
  br label %bb.b

._crit_edge:                                      ; preds = %lg4ff_timer.exit, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %lg4ff_timer.exit
  %i.an = load ptr, ptr %i.d, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.an) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.ao = tail call i64 @SDL_GetTicks_REAL() #8   ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %1, i8 0, i64 96, i1 false)
  %i.ap = load i32, ptr %i.e, align 4
  %i.aq = load i32, ptr %i.f, align 8
  %i.ar = mul i32 %i.aq, %i.ap
  %i.as = udiv i32 %i.ar, 65535
  %i.at = load i32, ptr %i.g, align 8             ; 2 uses
  %.not130.i = icmp eq i32 %i.at, 0
  br i1 %.not130.i, label %bb.ch, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %lg4ff_update_state.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %lg4ff_update_state.exit.i ], [ 0, %bb.b ] ; 3 uses
  %i.au = phi i32 [ %i.vp, %lg4ff_update_state.exit.i ], [ 0, %bb.b ] ; 10 uses
  %i.av = phi i32 [ %i.vq, %lg4ff_update_state.exit.i ], [ 0, %bb.b ] ; 10 uses
  %i.aw = phi i32 [ %i.vr, %lg4ff_update_state.exit.i ], [ 0, %bb.b ] ; 10 uses
  %i.ax = phi i32 [ %i.vs, %lg4ff_update_state.exit.i ], [ 0, %bb.b ] ; 10 uses
  %i.ay = phi i32 [ %i.vt, %lg4ff_update_state.exit.i ], [ 0, %bb.b ] ; 10 uses
  %i.az = phi i32 [ %i.vu, %lg4ff_update_state.exit.i ], [ 0, %bb.b ] ; 10 uses
  %i.ba = phi i32 [ %i.vv, %lg4ff_update_state.exit.i ], [ 0, %bb.b ] ; 10 uses
  %i.bb = phi i32 [ %i.vw, %lg4ff_update_state.exit.i ], [ 0, %bb.b ] ; 10 uses
  %i.bc = phi i32 [ %i.vx, %lg4ff_update_state.exit.i ], [ 0, %bb.b ] ; 10 uses
  %i.bd = phi i32 [ %i.vy, %lg4ff_update_state.exit.i ], [ 0, %bb.b ] ; 10 uses
  %i.be = phi i32 [ %i.vz, %lg4ff_update_state.exit.i ], [ 0, %bb.b ] ; 10 uses
  %.0103.i = phi i32 [ %.1.i, %lg4ff_update_state.exit.i ], [ %i.at, %bb.b ] ; 2 uses
  %i.bf = phi i32 [ %i.wa, %lg4ff_update_state.exit.i ], [ 0, %bb.b ] ; 11 uses
  %i.bg = getelementptr inbounds nuw [152 x i8], ptr %i.h, i64 %indvars.iv.i ; 106 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 96 ; 10 uses
  %i.bi = load i32, ptr %i.bh, align 8            ; 2 uses
  %i.bj = and i32 %i.bi, 1
  %.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i, label %lg4ff_update_state.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.bk = add nsw i32 %.0103.i, -1                ; 10 uses
  %i.bl = and i32 %i.bi, 2
  %.not71.i = icmp eq i32 %i.bl, 0
  %.val.i.i.pre.i = load i16, ptr %i.bg, align 8  ; 3 uses
  %.pre.i = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %.val.i.i.pre.i)
  %i.bm = icmp eq i16 %.pre.i, 1                  ; 2 uses
  br i1 %.not71.i, label %get_effect_replay_length.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.bm, label %.split.i.i.i, label %get_effect_direction.exit.i.i

.split.i.i.i:                                     ; preds = %bb.d
  %i.bn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.val.i.i.pre.i, i1 true) ; 6 uses
  %.off.i.i.i = add nsw i16 %i.bn, -1             ; 5 uses
  %switch.i.i.i = icmp ult i16 %.off.i.i.i, 5
  br i1 %switch.i.i.i, label %bb.e, label %effect_is_periodic.exit.split.i.i

effect_is_periodic.exit.split.i.i:                ; preds = %.split.i.i.i
  switch i16 %i.bn, label %.split.i.i.i.i [
    i16 7, label %bb.e
    i16 8, label %bb.e
    i16 10, label %bb.e
    i16 0, label %bb.e
    i16 6, label %bb.e
  ]

bb.e:                                             ; preds = %effect_is_periodic.exit.split.i.i, %effect_is_periodic.exit.split.i.i, %effect_is_periodic.exit.split.i.i, %effect_is_periodic.exit.split.i.i, %effect_is_periodic.exit.split.i.i, %.split.i.i.i
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %.0.i.i = load i32, ptr %.0.in.i.i, align 4
  %.0.fr.i.i = freeze i32 %.0.i.i
  %.0.fr.i.off.i = add i32 %.0.fr.i.i, -1
  %switch.i = icmp ult i32 %.0.fr.i.off.i, -2
  br i1 %switch.i, label %bb.f, label %.split.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %.not73.i = icmp ult i64 %i.ao, %i.bp
  br i1 %.not73.i, label %.split.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.bh, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 128 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = add i32 %i.br, -1                       ; 2 uses
  store i32 %i.bs, ptr %i.bq, align 8
  %.not74.i = icmp eq i32 %i.bs, 0
  br i1 %.not74.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bt = load i32, ptr %i.g, align 8
  %i.bu = add nsw i32 %i.bt, -1
  store i32 %i.bu, ptr %i.g, align 8
  br label %lg4ff_update_state.exit.i

bb.i:                                             ; preds = %bb.g
  store i32 1, ptr %i.bh, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  store i64 %i.bp, ptr %i.bv, align 8
  br label %.split.i.i.i.i

get_effect_replay_length.exit.thread.i:           ; preds = %bb.c
  br i1 %i.bm, label %get_effect_replay_length.exit.thread.i..split.i.i.i.i_crit_edge, label %get_effect_direction.exit.i.i

get_effect_replay_length.exit.thread.i..split.i.i.i.i_crit_edge: ; preds = %get_effect_replay_length.exit.thread.i
  %.pre = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.val.i.i.pre.i, i1 true) ; 2 uses
  %.pre29 = add nsw i16 %.pre, -1
  br label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %get_effect_replay_length.exit.thread.i..split.i.i.i.i_crit_edge, %bb.i, %bb.f, %bb.e, %effect_is_periodic.exit.split.i.i
  %.off.i.i.i.i.pre-phi = phi i16 [ %.pre29, %get_effect_replay_length.exit.thread.i..split.i.i.i.i_crit_edge ], [ %.off.i.i.i, %bb.i ], [ %.off.i.i.i, %bb.f ], [ %.off.i.i.i, %bb.e ], [ %.off.i.i.i, %effect_is_periodic.exit.split.i.i ]
  %.pre-phi = phi i16 [ %.pre, %get_effect_replay_length.exit.thread.i..split.i.i.i.i_crit_edge ], [ %i.bn, %bb.i ], [ %i.bn, %bb.f ], [ %i.bn, %bb.e ], [ %i.bn, %effect_is_periodic.exit.split.i.i ]
  %switch.i.i.i.i = icmp ult i16 %.off.i.i.i.i.pre-phi, 5
  br i1 %switch.i.i.i.i, label %bb.j, label %effect_is_periodic.exit.split.i.i.i

bb.j:                                             ; preds = %.split.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bx = load i8, ptr %i.bw, align 4
  switch i8 %i.bx, label %bb.ap [
    i8 0, label %bb.k
    i8 2, label %bb.l
    i8 1, label %bb.m
    i8 3, label %get_effect_direction.exit.i.i
  ]

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = srem i32 %i.bz, 36000
  %i.cb = shl nsw i32 %i.ca, 11
  %i.cc = sdiv i32 %i.cb, 1125
  %i.cd = trunc i32 %i.cc to i16
  br label %get_effect_direction.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = add nsw i32 %i.cf, 9000
  %i.ch = srem i32 %i.cg, 36000
  %i.ci = shl nsw i32 %i.ch, 15
  %i.cj = udiv i32 %i.ci, 18000
  %i.ck = trunc i32 %i.cj to i16
  br label %get_effect_direction.exit.i.i

bb.m:                                             ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.cn = load i32, ptr %i.cm, align 4            ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.cn, 0
  %i.co = load i32, ptr %i.cl, align 8            ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cp = icmp sgt i32 %i.co, -1
  %i.cq = select i1 %i.cp, i16 16384, i16 -16384
  br label %get_effect_direction.exit.i.i

bb.o:                                             ; preds = %bb.m
  %.not17.i.i.i.i = icmp eq i32 %i.co, 0
  br i1 %.not17.i.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.inv.i.i.i.i = icmp slt i32 %i.cn, 0
  %i.cr = select i1 %.inv.i.i.i.i, i16 0, i16 -32768
  br label %get_effect_direction.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.cs = sitofp i32 %i.cn to double
  %i.ct = sitofp i32 %i.co to double
  %i.cu = tail call double @SDL_atan2_REAL(double noundef %i.cs, double noundef %i.ct) #8
  %i.cv = fptrunc double %i.cu to float
  %i.cw = fpext float %i.cv to double
  %i.cx = fmul double %i.cw, 1.800000e+04
  %i.cy = fdiv double %i.cx, f0x400921FB54442D18
  %i.cz = fptosi double %i.cy to i32
  %i.da = add nsw i32 %i.cz, 45000
  %i.db = srem i32 %i.da, 36000
  %i.dc = shl nsw i32 %i.db, 15
  %i.dd = udiv i32 %i.dc, 18000
  %i.de = trunc i32 %i.dd to i16
  br label %get_effect_direction.exit.i.i

effect_is_periodic.exit.split.i.i.i:              ; preds = %.split.i.i.i.i
  switch i16 %.pre-phi, label %get_effect_direction.exit.i.i [
    i16 7, label %bb.r
    i16 8, label %bb.r
    i16 10, label %bb.r
    i16 0, label %bb.z
    i16 6, label %bb.ah
  ]

bb.r:                                             ; preds = %effect_is_periodic.exit.split.i.i.i, %effect_is_periodic.exit.split.i.i.i, %effect_is_periodic.exit.split.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.dg = load i8, ptr %i.df, align 4
  switch i8 %i.dg, label %bb.ap [
    i8 0, label %bb.s
    i8 2, label %bb.t
    i8 1, label %bb.u
    i8 3, label %get_effect_direction.exit.i.i
  ]

bb.s:                                             ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.di = load i32, ptr %i.dh, align 8
  %i.dj = srem i32 %i.di, 36000
  %i.dk = shl nsw i32 %i.dj, 11
  %i.dl = sdiv i32 %i.dk, 1125
  %i.dm = trunc i32 %i.dl to i16
  br label %get_effect_direction.exit.i.i

bb.t:                                             ; preds = %bb.r
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = add nsw i32 %i.do, 9000
  %i.dq = srem i32 %i.dp, 36000
  %i.dr = shl nsw i32 %i.dq, 15
  %i.ds = udiv i32 %i.dr, 18000
  %i.dt = trunc i32 %i.ds to i16
  br label %get_effect_direction.exit.i.i

bb.u:                                             ; preds = %bb.r
  %i.du = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.dw = load i32, ptr %i.dv, align 4            ; 3 uses
  %.not.i9.i.i.i = icmp eq i32 %i.dw, 0
  %i.dx = load i32, ptr %i.du, align 8            ; 3 uses
  br i1 %.not.i9.i.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dy = icmp sgt i32 %i.dx, -1
  %i.dz = select i1 %i.dy, i16 16384, i16 -16384
  br label %get_effect_direction.exit.i.i

bb.w:                                             ; preds = %bb.u
  %.not17.i10.i.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not17.i10.i.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %.inv.i11.i.i.i = icmp slt i32 %i.dw, 0
  %i.ea = select i1 %.inv.i11.i.i.i, i16 0, i16 -32768
  br label %get_effect_direction.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.eb = sitofp i32 %i.dw to double
  %i.ec = sitofp i32 %i.dx to double
  %i.ed = tail call double @SDL_atan2_REAL(double noundef %i.eb, double noundef %i.ec) #8
  %i.ee = fptrunc double %i.ed to float
  %i.ef = fpext float %i.ee to double
  %i.eg = fmul double %i.ef, 1.800000e+04
  %i.eh = fdiv double %i.eg, f0x400921FB54442D18
  %i.ei = fptosi double %i.eh to i32
  %i.ej = add nsw i32 %i.ei, 45000
  %i.ek = srem i32 %i.ej, 36000
  %i.el = shl nsw i32 %i.ek, 15
  %i.em = udiv i32 %i.el, 18000
  %i.en = trunc i32 %i.em to i16
  br label %get_effect_direction.exit.i.i

bb.z:                                             ; preds = %effect_is_periodic.exit.split.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.ep = load i8, ptr %i.eo, align 4
  switch i8 %i.ep, label %bb.ap [
    i8 0, label %bb.aa
    i8 2, label %bb.ab
    i8 1, label %bb.ac
    i8 3, label %get_effect_direction.exit.i.i
  ]

bb.aa:                                            ; preds = %bb.z
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.er = load i32, ptr %i.eq, align 8
  %i.es = srem i32 %i.er, 36000
  %i.et = shl nsw i32 %i.es, 11
  %i.eu = sdiv i32 %i.et, 1125
  %i.ev = trunc i32 %i.eu to i16
  br label %get_effect_direction.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.ex = load i32, ptr %i.ew, align 8
  %i.ey = add nsw i32 %i.ex, 9000
  %i.ez = srem i32 %i.ey, 36000
  %i.fa = shl nsw i32 %i.ez, 15
  %i.fb = udiv i32 %i.fa, 18000
  %i.fc = trunc i32 %i.fb to i16
  br label %get_effect_direction.exit.i.i

bb.ac:                                            ; preds = %bb.z
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.ff = load i32, ptr %i.fe, align 4            ; 3 uses
  %.not.i14.i.i.i = icmp eq i32 %i.ff, 0
  %i.fg = load i32, ptr %i.fd, align 8            ; 3 uses
  br i1 %.not.i14.i.i.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fh = icmp sgt i32 %i.fg, -1
  %i.fi = select i1 %i.fh, i16 16384, i16 -16384
  br label %get_effect_direction.exit.i.i

bb.ae:                                            ; preds = %bb.ac
  %.not17.i15.i.i.i = icmp eq i32 %i.fg, 0
  br i1 %.not17.i15.i.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.inv.i16.i.i.i = icmp slt i32 %i.ff, 0
  %i.fj = select i1 %.inv.i16.i.i.i, i16 0, i16 -32768
  br label %get_effect_direction.exit.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.fk = sitofp i32 %i.ff to double
  %i.fl = sitofp i32 %i.fg to double
  %i.fm = tail call double @SDL_atan2_REAL(double noundef %i.fk, double noundef %i.fl) #8
  %i.fn = fptrunc double %i.fm to float
  %i.fo = fpext float %i.fn to double
  %i.fp = fmul double %i.fo, 1.800000e+04
  %i.fq = fdiv double %i.fp, f0x400921FB54442D18
  %i.fr = fptosi double %i.fq to i32
  %i.fs = add nsw i32 %i.fr, 45000
  %i.ft = srem i32 %i.fs, 36000
  %i.fu = shl nsw i32 %i.ft, 15
  %i.fv = udiv i32 %i.fu, 18000
  %i.fw = trunc i32 %i.fv to i16
  br label %get_effect_direction.exit.i.i

bb.ah:                                            ; preds = %effect_is_periodic.exit.split.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.fy = load i8, ptr %i.fx, align 4
  switch i8 %i.fy, label %bb.ap [
    i8 0, label %bb.ai
    i8 2, label %bb.aj
    i8 1, label %bb.ak
    i8 3, label %get_effect_direction.exit.i.i
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.ga = load i32, ptr %i.fz, align 8
  %i.gb = srem i32 %i.ga, 36000
  %i.gc = shl nsw i32 %i.gb, 11
  %i.gd = sdiv i32 %i.gc, 1125
  %i.ge = trunc i32 %i.gd to i16
  br label %get_effect_direction.exit.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.gg = load i32, ptr %i.gf, align 8
  %i.gh = add nsw i32 %i.gg, 9000
  %i.gi = srem i32 %i.gh, 36000
  %i.gj = shl nsw i32 %i.gi, 15
  %i.gk = udiv i32 %i.gj, 18000
  %i.gl = trunc i32 %i.gk to i16
  br label %get_effect_direction.exit.i.i

bb.ak:                                            ; preds = %bb.ah
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.go = load i32, ptr %i.gn, align 4            ; 3 uses
  %.not.i19.i.i.i = icmp eq i32 %i.go, 0
  %i.gp = load i32, ptr %i.gm, align 8            ; 3 uses
  br i1 %.not.i19.i.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gq = icmp sgt i32 %i.gp, -1
  %i.gr = select i1 %i.gq, i16 16384, i16 -16384
  br label %get_effect_direction.exit.i.i

bb.am:                                            ; preds = %bb.ak
  %.not17.i20.i.i.i = icmp eq i32 %i.gp, 0
  br i1 %.not17.i20.i.i.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.inv.i21.i.i.i = icmp slt i32 %i.go, 0
  %i.gs = select i1 %.inv.i21.i.i.i, i16 0, i16 -32768
  br label %get_effect_direction.exit.i.i

bb.ao:                                            ; preds = %bb.am
  %i.gt = sitofp i32 %i.go to double
  %i.gu = sitofp i32 %i.gp to double
  %i.gv = tail call double @SDL_atan2_REAL(double noundef %i.gt, double noundef %i.gu) #8
  %i.gw = fptrunc double %i.gv to float
  %i.gx = fpext float %i.gw to double
  %i.gy = fmul double %i.gx, 1.800000e+04
  %i.gz = fdiv double %i.gy, f0x400921FB54442D18
  %i.ha = fptosi double %i.gz to i32
  %i.hb = add nsw i32 %i.ha, 45000
  %i.hc = srem i32 %i.hb, 36000
  %i.hd = shl nsw i32 %i.hc, 15
  %i.he = udiv i32 %i.hd, 18000
  %i.hf = trunc i32 %i.he to i16
  br label %get_effect_direction.exit.i.i

bb.ap:                                            ; preds = %bb.ah, %bb.z, %bb.r, %bb.j
  br label %get_effect_direction.exit.i.i

get_effect_direction.exit.i.i:                    ; preds = %bb.ap, %bb.ao, %bb.an, %bb.al, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.v, %bb.t, %bb.s, %bb.r, %effect_is_periodic.exit.split.i.i.i, %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.j, %get_effect_replay_length.exit.thread.i, %bb.d
  %.0.i.i.i = phi i16 [ 16384, %bb.z ], [ 16384, %bb.j ], [ 0, %effect_is_periodic.exit.split.i.i.i ], [ 16384, %bb.r ], [ 0, %get_effect_replay_length.exit.thread.i ], [ %i.cd, %bb.k ], [ %i.ck, %bb.l ], [ %i.de, %bb.q ], [ %i.cr, %bb.p ], [ %i.cq, %bb.n ], [ 16384, %bb.ah ], [ %i.dm, %bb.s ], [ %i.dt, %bb.t ], [ %i.en, %bb.y ], [ %i.ea, %bb.x ], [ %i.dz, %bb.v ], [ %i.gr, %bb.al ], [ %i.ev, %bb.aa ], [ %i.fc, %bb.ab ], [ %i.fw, %bb.ag ], [ %i.fj, %bb.af ], [ %i.fi, %bb.ad ], [ 0, %bb.ap ], [ %i.ge, %bb.ai ], [ %i.gl, %bb.aj ], [ %i.hf, %bb.ao ], [ %i.gs, %bb.an ], [ 0, %bb.d ] ; 2 uses
  %i.hg = load i32, ptr %i.bh, align 8            ; 2 uses
  %i.hh = and i32 %i.hg, 2
  %.not.i.i = icmp eq i32 %i.hh, 0
  %.pr.pre.pre.i.i = load i16, ptr %i.bg, align 8 ; 3 uses
  br i1 %.not.i.i, label %bb.aq, label %get_effect_replay_length.exit.thread.i.i

bb.aq:                                            ; preds = %get_effect_direction.exit.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.hj = load i64, ptr %i.hi, align 8
  %i.hk = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %.pr.pre.pre.i.i)
  %i.hl = icmp eq i16 %i.hk, 1
  br i1 %i.hl, label %.split.i.i85.i.i, label %get_effect_replay_delay.exit.i.i

.split.i.i85.i.i:                                 ; preds = %bb.aq
  %i.hm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.pr.pre.pre.i.i, i1 true) ; 2 uses
  %.off.i.i86.i.i = add nsw i16 %i.hm, -1
  %switch.i.i87.i.i = icmp ult i16 %.off.i.i86.i.i, 5
  br i1 %switch.i.i87.i.i, label %effect_is_periodic.exit.sink.split.i.i.i, label %effect_is_periodic.exit.split.i88.i.i

effect_is_periodic.exit.split.i88.i.i:            ; preds = %.split.i.i85.i.i
  switch i16 %i.hm, label %get_effect_replay_delay.exit.i.i [
    i16 7, label %effect_is_periodic.exit.sink.split.i.i.i
    i16 8, label %effect_is_periodic.exit.sink.split.i.i.i
    i16 10, label %effect_is_periodic.exit.sink.split.i.i.i
    i16 0, label %effect_is_periodic.exit.sink.split.i.i.i
    i16 6, label %effect_is_periodic.exit.sink.split.i.i.i
  ]

effect_is_periodic.exit.sink.split.i.i.i:         ; preds = %effect_is_periodic.exit.split.i88.i.i, %effect_is_periodic.exit.split.i88.i.i, %effect_is_periodic.exit.split.i88.i.i, %effect_is_periodic.exit.split.i88.i.i, %effect_is_periodic.exit.split.i88.i.i, %.split.i.i85.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.ho = load i16, ptr %i.hn, align 8
  %i.hp = zext i16 %i.ho to i64
  br label %get_effect_replay_delay.exit.i.i

get_effect_replay_delay.exit.i.i:                 ; preds = %effect_is_periodic.exit.sink.split.i.i.i, %effect_is_periodic.exit.split.i88.i.i, %bb.aq
  %.0.i84.i.i = phi i64 [ 0, %effect_is_periodic.exit.split.i88.i.i ], [ 0, %bb.aq ], [ %i.hp, %effect_is_periodic.exit.sink.split.i.i.i ]
  %i.hq = add i64 %.0.i84.i.i, %i.hj              ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bg, i64 80 ; 3 uses
  store i64 %i.hq, ptr %i.hr, align 8
  %i.hs = and i32 %i.hg, 8
  %.not72.i.i = icmp eq i32 %i.hs, 0
  br i1 %.not72.i.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %get_effect_replay_delay.exit.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bg, i64 112
  store i64 %i.hq, ptr %i.ht, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %get_effect_replay_delay.exit.i.i
  %i.hu = zext i16 %.0.i.i.i to i32
  %i.hv = mul nuw nsw i32 %i.hu, 45
  %i.hw = lshr i32 %i.hv, 13
  %i.hx = uitofp nneg i32 %i.hw to double
  %i.hy = fmul nnan double %i.hx, f0x400921FB54442D18
  %i.hz = fdiv double %i.hy, 1.800000e+02
  %i.ia = tail call double @SDL_sin_REAL(double noundef %i.hz) #8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bg, i64 136
  store double %i.ia, ptr %i.ib, align 8
  %.val82.i.i = load i16, ptr %i.bg, align 8      ; 7 uses
  %i.ic = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %.val82.i.i)
  %i.id = icmp eq i16 %i.ic, 1
  br i1 %i.id, label %.split.i.i76.i, label %get_effect_replay_length.exit.thread.i.i

.split.i.i76.i:                                   ; preds = %bb.as
  %i.ie = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.val82.i.i, i1 true) ; 3 uses
  %.off.i.i77.i = add nsw i16 %i.ie, -1
  %switch.i.i78.i = icmp ult i16 %.off.i.i77.i, 5
  br i1 %switch.i.i78.i, label %.thread.i.i, label %effect_is_periodic.exit.split.i93.i.i

effect_is_periodic.exit.split.i93.i.i:            ; preds = %.split.i.i76.i
  switch i16 %i.ie, label %get_effect_replay_length.exit.thread.i.i [
    i16 7, label %bb.at
    i16 8, label %bb.at
    i16 10, label %bb.at
    i16 0, label %bb.at
    i16 6, label %bb.at
  ]

bb.at:                                            ; preds = %effect_is_periodic.exit.split.i93.i.i, %effect_is_periodic.exit.split.i93.i.i, %effect_is_periodic.exit.split.i93.i.i, %effect_is_periodic.exit.split.i93.i.i, %effect_is_periodic.exit.split.i93.i.i
  %.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %.0.i94.i.i = load i32, ptr %.0.in.i.i.i, align 4
  %.0.fr.i.i.i = freeze i32 %.0.i94.i.i           ; 6 uses
  %.0.fr.i.off.i.i = add i32 %.0.fr.i.i.i, -1
  %switch.i.i = icmp ult i32 %.0.fr.i.off.i.i, -2
  br i1 %switch.i.i, label %.split.i.i96.i.i, label %get_effect_replay_length.exit.thread.i.i

.thread.i.i:                                      ; preds = %.split.i.i76.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.bg, i64 36
  %i.ig = load i16, ptr %i.if, align 4
  %i.ih = zext i16 %i.ig to i32
  %i.ii = mul nuw nsw i32 %i.ih, 360
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bg, i64 30
  %i.ik = load i16, ptr %i.ij, align 2
  %i.il = zext i16 %i.ik to i32
  %i.im = udiv i32 %i.ii, %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.bg, i64 124
  store i32 %i.im, ptr %i.in, align 4
  %.0.in.i172.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %.0.i94173.i.i = load i32, ptr %.0.in.i172.i.i, align 4
  %.0.fr.i174.i.i = freeze i32 %.0.i94173.i.i     ; 2 uses
  %.0.fr.i.off175.i.i = add i32 %.0.fr.i174.i.i, -1
  %switch176.i.i = icmp ult i32 %.0.fr.i.off175.i.i, -2
  br i1 %switch176.i.i, label %.split.i.i96.thread.i.i, label %get_effect_replay_length.exit.thread.i.i

.split.i.i96.thread.i.i:                          ; preds = %.thread.i.i
  %i.io = load i64, ptr %i.hr, align 8
  br label %bb.au

.split.i.i96.i.i:                                 ; preds = %bb.at
  %i.ip = load i64, ptr %i.hr, align 8            ; 6 uses
  switch i16 %i.ie, label %get_effect_replay_length.exit104.i.i [
    i16 7, label %bb.au
    i16 8, label %bb.au
    i16 10, label %bb.au
    i16 0, label %bb.au
    i16 6, label %bb.au
  ]

bb.au:                                            ; preds = %.split.i.i96.i.i, %.split.i.i96.i.i, %.split.i.i96.i.i, %.split.i.i96.i.i, %.split.i.i96.i.i, %.split.i.i96.thread.i.i
  %i.iq = phi i64 [ %i.io, %.split.i.i96.thread.i.i ], [ %i.ip, %.split.i.i96.i.i ], [ %i.ip, %.split.i.i96.i.i ], [ %i.ip, %.split.i.i96.i.i ], [ %i.ip, %.split.i.i96.i.i ], [ %i.ip, %.split.i.i96.i.i ]
  %.0.fr.i177179.i.i = phi i32 [ %.0.fr.i174.i.i, %.split.i.i96.thread.i.i ], [ %.0.fr.i.i.i, %.split.i.i96.i.i ], [ %.0.fr.i.i.i, %.split.i.i96.i.i ], [ %.0.fr.i.i.i, %.split.i.i96.i.i ], [ %.0.fr.i.i.i, %.split.i.i96.i.i ], [ %.0.fr.i.i.i, %.split.i.i96.i.i ]
  %i.ir = zext i32 %.0.fr.i177179.i.i to i64
  br label %get_effect_replay_length.exit104.i.i

get_effect_replay_length.exit104.i.i:             ; preds = %bb.au, %.split.i.i96.i.i
  %i.is = phi i64 [ %i.ip, %.split.i.i96.i.i ], [ %i.iq, %bb.au ]
  %i.it = phi i64 [ 0, %.split.i.i96.i.i ], [ %i.ir, %bb.au ]
  %i.iu = add i64 %i.it, %i.is
  %i.iv = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  store i64 %i.iu, ptr %i.iv, align 8
  br label %get_effect_replay_length.exit.thread.i.i

get_effect_replay_length.exit.thread.i.i:         ; preds = %get_effect_replay_length.exit104.i.i, %.thread.i.i, %bb.at, %effect_is_periodic.exit.split.i93.i.i, %bb.as, %get_effect_direction.exit.i.i
  %.pr.pre.i.i = phi i16 [ %.val82.i.i, %bb.at ], [ %.val82.i.i, %bb.as ], [ %.val82.i.i, %effect_is_periodic.exit.split.i93.i.i ], [ %.val82.i.i, %get_effect_replay_length.exit104.i.i ], [ %.pr.pre.pre.i.i, %get_effect_direction.exit.i.i ], [ %.val82.i.i, %.thread.i.i ] ; 3 uses
  %i.iw = load i32, ptr %i.bh, align 8            ; 2 uses
  %i.ix = or i32 %i.iw, 2                         ; 2 uses
  store i32 %i.ix, ptr %i.bh, align 8
  %i.iy = and i32 %i.iw, 8
  %.not74.i.i = icmp eq i32 %i.iy, 0
  br i1 %.not74.i.i, label %effect_is_periodic.exit136.i.i, label %bb.av

bb.av:                                            ; preds = %get_effect_replay_length.exit.thread.i.i
  %i.iz = and i32 %i.ix, -5
  store i32 %i.iz, ptr %i.bh, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.bg, i64 112 ; 3 uses
  %i.jb = load i64, ptr %i.ja, align 8
  %i.jc = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %.pr.pre.i.i)
  %i.jd = icmp eq i16 %i.jc, 1
  br i1 %i.jd, label %.split.i.i107.i.i, label %get_effect_replay_delay.exit112.i.i

.split.i.i107.i.i:                                ; preds = %bb.av
  %i.je = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.pr.pre.i.i, i1 true) ; 2 uses
  %.off.i.i108.i.i = add nsw i16 %i.je, -1
  %switch.i.i109.i.i = icmp ult i16 %.off.i.i108.i.i, 5
  br i1 %switch.i.i109.i.i, label %effect_is_periodic.exit.sink.split.i111.i.i, label %effect_is_periodic.exit.split.i110.i.i

effect_is_periodic.exit.split.i110.i.i:           ; preds = %.split.i.i107.i.i
  switch i16 %i.je, label %get_effect_replay_delay.exit112.i.i [
    i16 7, label %effect_is_periodic.exit.sink.split.i111.i.i
    i16 8, label %effect_is_periodic.exit.sink.split.i111.i.i
    i16 10, label %effect_is_periodic.exit.sink.split.i111.i.i
    i16 0, label %effect_is_periodic.exit.sink.split.i111.i.i
    i16 6, label %effect_is_periodic.exit.sink.split.i111.i.i
  ]

effect_is_periodic.exit.sink.split.i111.i.i:      ; preds = %effect_is_periodic.exit.split.i110.i.i, %effect_is_periodic.exit.split.i110.i.i, %effect_is_periodic.exit.split.i110.i.i, %effect_is_periodic.exit.split.i110.i.i, %effect_is_periodic.exit.split.i110.i.i, %.split.i.i107.i.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.jg = load i16, ptr %i.jf, align 8
  %i.jh = zext i16 %i.jg to i64
  br label %get_effect_replay_delay.exit112.i.i

get_effect_replay_delay.exit112.i.i:              ; preds = %effect_is_periodic.exit.sink.split.i111.i.i, %effect_is_periodic.exit.split.i110.i.i, %bb.av
  %.0.i106.i.i = phi i64 [ 0, %effect_is_periodic.exit.split.i110.i.i ], [ 0, %bb.av ], [ %i.jh, %effect_is_periodic.exit.sink.split.i111.i.i ]
  %i.ji = add i64 %.0.i106.i.i, %i.jb
  %i.jj = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  store i64 %i.ji, ptr %i.jj, align 8
  %i.jk = zext i16 %.0.i.i.i to i32
  %i.jl = mul nuw nsw i32 %i.jk, 45
  %i.jm = lshr i32 %i.jl, 13
  %i.jn = uitofp nneg i32 %i.jm to double
  %i.jo = fmul nnan double %i.jn, f0x400921FB54442D18
  %i.jp = fdiv double %i.jo, 1.800000e+02
  %i.jq = tail call double @SDL_sin_REAL(double noundef %i.jp) #8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bg, i64 136
  store double %i.jq, ptr %i.jr, align 8
  %.val.i113.i.i = load i16, ptr %i.bg, align 8   ; 8 uses
  %i.js = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %.val.i113.i.i)
  %i.jt = icmp eq i16 %i.js, 1
  br i1 %i.jt, label %.split.i.i114.i.i, label %effect_is_periodic.exit136.i.i

.split.i.i114.i.i:                                ; preds = %get_effect_replay_delay.exit112.i.i
  %i.ju = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.val.i113.i.i, i1 true) ; 3 uses
  %.off.i.i115.i.i = add nsw i16 %i.ju, -1
  %switch.i.i116.i.i = icmp ult i16 %.off.i.i115.i.i, 5
  br i1 %switch.i.i116.i.i, label %.thread181.i.i, label %effect_is_periodic.exit.split.i117.i.i

effect_is_periodic.exit.split.i117.i.i:           ; preds = %.split.i.i114.i.i
  switch i16 %i.ju, label %effect_is_periodic.exit136.i.i [
    i16 7, label %bb.aw
    i16 8, label %bb.aw
    i16 10, label %bb.aw
    i16 0, label %bb.aw
    i16 6, label %bb.aw
  ]

bb.aw:                                            ; preds = %effect_is_periodic.exit.split.i117.i.i, %effect_is_periodic.exit.split.i117.i.i, %effect_is_periodic.exit.split.i117.i.i, %effect_is_periodic.exit.split.i117.i.i, %effect_is_periodic.exit.split.i117.i.i
  %.0.in.i118.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %.0.i119.i.i = load i32, ptr %.0.in.i118.i.i, align 4
  %.0.fr.i120.i.i = freeze i32 %.0.i119.i.i       ; 2 uses
  %.0.fr.i120.off.i.i = add i32 %.0.fr.i120.i.i, -1
  %switch158.i.i = icmp ult i32 %.0.fr.i120.off.i.i, -2
  br i1 %switch158.i.i, label %.split.i.i124.i.i, label %effect_is_periodic.exit136.i.i

.thread181.i.i:                                   ; preds = %.split.i.i114.i.i
  %.0.in.i118182.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %.0.i119183.i.i = load i32, ptr %.0.in.i118182.i.i, align 4
  %.0.fr.i120184.i.i = freeze i32 %.0.i119183.i.i ; 2 uses
  %.0.fr.i120.off185.i.i = add i32 %.0.fr.i120184.i.i, -1
  %switch158186.i.i = icmp ult i32 %.0.fr.i120.off185.i.i, -2
  br i1 %switch158186.i.i, label %.split.i133.i.thread95.i, label %.split.i133.thread.i.i

.split.i133.i.thread95.i:                         ; preds = %.thread181.i.i
  %i.jv = load i64, ptr %i.ja, align 8
  %i.jw = zext i32 %.0.fr.i120184.i.i to i64
  %i.jx = add i64 %i.jv, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  store i64 %i.jx, ptr %i.jy, align 8
  br label %.split.i133.thread.i.i

.split.i.i124.i.i:                                ; preds = %bb.aw
  %i.jz = load i64, ptr %i.ja, align 8            ; 2 uses
  switch i16 %i.ju, label %.split.i133.i.thread94.i [
    i16 7, label %.split.i133.i.thread97.i
    i16 8, label %.split.i133.i.thread97.i
    i16 10, label %.split.i133.i.thread97.i
    i16 0, label %.split.i133.i.thread97.i
    i16 6, label %.split.i133.i.thread97.i
  ]

.split.i133.i.thread94.i:                         ; preds = %.split.i.i124.i.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  store i64 %i.jz, ptr %i.ka, align 8
  br label %effect_is_periodic.exit136.i.i

.split.i133.i.thread97.i:                         ; preds = %.split.i.i124.i.i, %.split.i.i124.i.i, %.split.i.i124.i.i, %.split.i.i124.i.i, %.split.i.i124.i.i
  %i.kb = zext i32 %.0.fr.i120.i.i to i64
  %i.kc = add i64 %i.jz, %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  store i64 %i.kc, ptr %i.kd, align 8
  br label %effect_is_periodic.exit136.i.i

.split.i133.thread.i.i:                           ; preds = %.split.i133.i.thread95.i, %.thread181.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.bg, i64 120
  %i.kf = load i32, ptr %i.ke, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.bg, i64 124
  store i32 %i.kf, ptr %i.kg, align 4
  br label %effect_is_periodic.exit136.i.i

effect_is_periodic.exit136.i.i:                   ; preds = %.split.i133.thread.i.i, %.split.i133.i.thread97.i, %.split.i133.i.thread94.i, %bb.aw, %effect_is_periodic.exit.split.i117.i.i, %get_effect_replay_delay.exit112.i.i, %get_effect_replay_length.exit.thread.i.i
  %.val.i = phi i16 [ %.val.i113.i.i, %get_effect_replay_delay.exit112.i.i ], [ %.pr.pre.i.i, %get_effect_replay_length.exit.thread.i.i ], [ %.val.i113.i.i, %.split.i133.thread.i.i ], [ %.val.i113.i.i, %.split.i133.i.thread97.i ], [ %.val.i113.i.i, %effect_is_periodic.exit.split.i117.i.i ], [ %.val.i113.i.i, %.split.i133.i.thread94.i ], [ %.val.i113.i.i, %bb.aw ] ; 7 uses
  %i.kh = load i32, ptr %i.bh, align 8            ; 2 uses
  %i.ki = and i32 %i.kh, -9                       ; 5 uses
  store i32 %i.ki, ptr %i.bh, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.bg, i64 144 ; 2 uses
  store i32 0, ptr %i.kj, align 8
  %i.kk = icmp eq i16 %.val.i, 64
  br i1 %i.kk, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %effect_is_periodic.exit136.i.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.km = load i32, ptr %i.kl, align 4            ; 3 uses
  %.not76.i.i = icmp eq i32 %i.km, 0
  br i1 %.not76.i.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kn = getelementptr inbounds nuw i8, ptr %i.bg, i64 34
  %i.ko = load i16, ptr %i.kn, align 2
  %i.kp = zext i16 %i.ko to i32
  %i.kq = getelementptr inbounds nuw i8, ptr %i.bg, i64 38
  %i.kr = load i16, ptr %i.kq, align 2
  %i.ks = zext i16 %i.kr to i32
  %i.kt = add nuw nsw i32 %i.ks, %i.kp            ; 2 uses
  %.not77.i.i = icmp eq i32 %i.km, %i.kt
  br i1 %.not77.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ku = sub i32 %i.km, %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.kw = load i16, ptr %i.kv, align 8
  %i.kx = zext i16 %i.kw to i32
  %i.ky = getelementptr inbounds nuw i8, ptr %i.bg, i64 30
  %i.kz = load i16, ptr %i.ky, align 2
  %i.la = zext i16 %i.kz to i32
  %i.lb = sub nsw i32 %i.kx, %i.la
  %i.lc = shl i32 %i.lb, 16
  %i.ld = udiv i32 %i.lc, %i.ku                   ; 2 uses
  store i32 %i.ld, ptr %i.kj, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %effect_is_periodic.exit136.i.i
  %i.le = phi i32 [ %i.ld, %bb.az ], [ 0, %bb.ay ], [ 0, %bb.ax ], [ 0, %effect_is_periodic.exit136.i.i ]
  %i.lf = and i32 %i.kh, 4
  %.not78.i.i = icmp eq i32 %i.lf, 0
  br i1 %.not78.i.i, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.lg = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.lh = load i64, ptr %i.lg, align 8
  %.not79.i.i = icmp ult i64 %i.ao, %i.lh
  br i1 %.not79.i.i, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.li = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %.val.i)
  %i.lj = icmp eq i16 %i.li, 1
  br i1 %i.lj, label %.split.i.i138.i.i, label %get_effect_replay_length.exit146.thread.i.i

.split.i.i138.i.i:                                ; preds = %bb.bc
  %i.lk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.val.i, i1 true) ; 2 uses
  %.off.i.i139.i.i = add nsw i16 %i.lk, -1
  %switch.i.i140.i.i = icmp ult i16 %.off.i.i139.i.i, 5
  br i1 %switch.i.i140.i.i, label %bb.bd, label %effect_is_periodic.exit.split.i141.i.i

effect_is_periodic.exit.split.i141.i.i:           ; preds = %.split.i.i138.i.i
  switch i16 %i.lk, label %get_effect_replay_length.exit146.thread.i.i [
    i16 7, label %bb.bd
    i16 8, label %bb.bd
    i16 10, label %bb.bd
    i16 0, label %bb.bd
    i16 6, label %bb.bd
  ]

bb.bd:                                            ; preds = %effect_is_periodic.exit.split.i141.i.i, %effect_is_periodic.exit.split.i141.i.i, %effect_is_periodic.exit.split.i141.i.i, %effect_is_periodic.exit.split.i141.i.i, %effect_is_periodic.exit.split.i141.i.i, %.split.i.i138.i.i
  %.0.in.i142.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %.0.i143.i.i = load i32, ptr %.0.in.i142.i.i, align 4
  %.0.fr.i144.i.i = freeze i32 %.0.i143.i.i
  %.0.fr.i144.off.i.i = add i32 %.0.fr.i144.i.i, -1
  %switch159.i.i = icmp ult i32 %.0.fr.i144.off.i.i, -2
  br i1 %switch159.i.i, label %bb.be, label %get_effect_replay_length.exit146.thread.i.i

bb.be:                                            ; preds = %bb.bd
  %i.ll = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  %i.lm = load i64, ptr %i.ll, align 8
  %i.ln = icmp ult i64 %i.ao, %i.lm
  br i1 %i.ln, label %get_effect_replay_length.exit146.thread.i.i, label %bb.bf

get_effect_replay_length.exit146.thread.i.i:      ; preds = %bb.be, %bb.bd, %effect_is_periodic.exit.split.i141.i.i, %bb.bc
  %i.lo = or disjoint i32 %i.ki, 4                ; 2 uses
  store i32 %i.lo, ptr %i.bh, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %get_effect_replay_length.exit146.thread.i.i, %bb.be, %bb.bb, %bb.ba
  %i.lp = phi i32 [ %i.lo, %get_effect_replay_length.exit146.thread.i.i ], [ %i.ki, %bb.be ], [ %i.ki, %bb.bb ], [ %i.ki, %bb.ba ]
  %i.lq = and i32 %i.lp, 4
  %.not80.i.i = icmp eq i32 %i.lq, 0
  br i1 %.not80.i.i, label %lg4ff_update_state.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lr = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.ls = load i64, ptr %i.lr, align 8
  %i.lt = sub i64 %i.ao, %i.ls                    ; 12 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.bg, i64 104
  store i64 %i.lt, ptr %i.lu, align 8
  %i.lv = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %.val.i)
  %i.lw = icmp eq i16 %i.lv, 1
  br i1 %i.lw, label %.split.i147.i.i, label %effect_is_periodic.exit.i

.split.i147.i.i:                                  ; preds = %bb.bg
  %i.lx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.val.i, i1 true)
  %.off.i148.i.i = add nsw i16 %i.lx, -1
  %switch.i149.i.i = icmp ult i16 %.off.i148.i.i, 5
  br i1 %switch.i149.i.i, label %bb.bh, label %effect_is_periodic.exit.i

bb.bh:                                            ; preds = %.split.i147.i.i
  %i.ly = getelementptr inbounds nuw i8, ptr %i.bg, i64 112
  %i.lz = load i64, ptr %i.ly, align 8
  %i.ma = sub i64 %i.ao, %i.lz
  %i.mb = getelementptr inbounds nuw i8, ptr %i.bg, i64 30
  %i.mc = load i16, ptr %i.mb, align 2            ; 2 uses
  %i.md = zext i16 %i.mc to i64
end_hunk_0
