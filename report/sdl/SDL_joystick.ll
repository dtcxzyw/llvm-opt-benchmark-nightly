Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_joystick?download=true
inline.NumInlined: 273
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@SDL_GetGamepadTypeFromVIDPID:bb.a
  br label %SDL_IsJoystickGameCube.exit

bb.z:                                             ; preds = %SDL_IsJoystickGameCube.exit.thread
  %. = select i1 %3, i32 5, i32 1
  br label %SDL_IsJoystickGameCube.exit

bb.aa:                                            ; preds = %bb.c, %bb.d, %bb.e, %SDL_IsJoystickGameCube.exit.thread, %SDL_IsJoystickGameCube.exit.thread
  br label %SDL_IsJoystickGameCube.exit

bb.ab:                                            ; preds = %SDL_IsJoystickGameCube.exit.thread
  %.57 = select i1 %3, i32 7, i32 2
  br label %SDL_IsJoystickGameCube.exit

SDL_IsJoystickGameCube.exit.fold.split:           ; preds = %bb.h, %bb.h
  br label %SDL_IsJoystickGameCube.exit

SDL_IsJoystickGameCube.exit:                      ; preds = %bb.t, %bb.h, %bb.h, %SDL_IsJoystickGameCube.exit.fold.split, %bb.ab, %bb.z, %bb.n, %bb.m, %bb.j, %bb.f, %bb.k, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.aa, %SDL_IsJoystickGameCube.exit.thread, %bb.b, %bb.e
  %.0 = phi i32 [ 8, %bb.h ], [ 1, %bb.e ], [ 1, %bb.b ], [ %.57, %bb.ab ], [ 1, %bb.f ], [ 8, %bb.h ], [ 9, %bb.k ], [ 1, %bb.j ], [ 8, %bb.m ], [ 7, %bb.aa ], [ 10, %bb.n ], [ 10, %SDL_IsJoystickGameCube.exit.fold.split ], [ 1, %SDL_IsJoystickGameCube.exit.thread ], [ 2, %bb.u ], [ 3, %bb.v ], [ 4, %bb.w ], [ 5, %bb.x ], [ 6, %bb.y ], [ %., %bb.z ], [ 11, %bb.t ]
  ret i32 %.0
}

declare i32 @SDL_strcmp_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SDL_strstr_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @SDL_IsJoystickGameCube(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #10 {
bb.a:
  %i.a = zext i16 %0 to i32
  %i.b = shl nuw i32 %i.a, 16
  %i.c = zext i16 %1 to i32
  %i.d = or disjoint i32 %i.b, %i.c               ; 2 uses
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @gamecube_devices, i64 32), align 8 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @gamecube_devices, i64 40), align 8
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.c, !llvm.loop !11

.preheader.i:                                     ; preds = %bb.b, %bb.a
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @gamecube_devices, i64 8), align 8 ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph18.i, label %SDL_VIDPIDInList.exit

.lr.ph18.i:                                       ; preds = %.preheader.i
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @gamecube_devices, i64 16), align 8
  %wide.trip.count26.i = zext nneg i32 %i.h to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.d, %i.l
  br i1 %i.m, label %SDL_VIDPIDInList.exit, label %bb.b

bb.d:                                             ; preds = %bb.d, %.lr.ph18.i
  %indvars.iv23.i = phi i64 [ 0, %.lr.ph18.i ], [ %indvars.iv.next24.i, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv23.i
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.d, %i.o                   ; 2 uses
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %exitcond27.not.i = icmp eq i64 %indvars.iv.next24.i, %wide.trip.count26.i
  %or.cond = select i1 %i.p, i1 true, i1 %exitcond27.not.i
  br i1 %or.cond, label %SDL_VIDPIDInList.exit, label %bb.d, !llvm.loop !12

SDL_VIDPIDInList.exit:                            ; preds = %bb.c, %bb.d, %.preheader.i
  %.014.i = phi i1 [ false, %.preheader.i ], [ %i.p, %bb.d ], [ false, %bb.c ]
  ret i1 %.014.i
}

declare i32 @GuessControllerType(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_GetGamepadTypeFromGUID(i64 %0, i64 %1, ptr noundef %2) local_unnamed_addr #1 {
SDL_GetJoystickGUIDInfo_REAL.exit:
  %.sroa.0.0.extract.trunc.i = trunc i64 %0 to i32
  %.sroa.4.0.extract.shift.i = lshr i64 %0, 32
  %.sroa.4.0.extract.trunc.i = trunc i64 %.sroa.4.0.extract.shift.i to i16
  %.sroa.6.8.extract.trunc.i = trunc i64 %1 to i16
  %i.a = and i32 %.sroa.0.0.extract.trunc.i, 65535 ; 2 uses
  %i.b = icmp samesign ult i32 %i.a, 32
  %i.c = icmp eq i32 %i.a, 255
  %or.cond.i = or i1 %i.b, %i.c
  %i.d = icmp ult i64 %0, 281474976710656
  %or.cond61.i = and i1 %i.d, %or.cond.i
  %i.e = and i64 %1, 4294901760
  %i.f = icmp eq i64 %i.e, 0
  %or.cond63.i = select i1 %or.cond61.i, i1 %i.f, i1 false ; 2 uses
  %spec.select = select i1 %or.cond63.i, i16 %.sroa.4.0.extract.trunc.i, i16 0
  %spec.select12 = select i1 %or.cond63.i, i16 %.sroa.6.8.extract.trunc.i, i16 0
  %i.g = tail call i32 @SDL_GetGamepadTypeFromVIDPID(i16 noundef zeroext %spec.select, i16 noundef zeroext %spec.select12, ptr noundef %2, i1 noundef zeroext true) ; 2 uses
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.a, label %bb.c

bb.a:                                             ; preds = %SDL_GetJoystickGUIDInfo_REAL.exit
  %i.i = and i64 %1, 71776119061217280
  switch i64 %i.i, label %.fold.split [
    i64 33776997205278720, label %bb.c
    i64 29273397577908224, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @HIDAPI_GetGamepadTypeFromGUID(i64 %0, i64 %1) #12
  br label %bb.c

.fold.split:                                      ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.fold.split, %SDL_GetJoystickGUIDInfo_REAL.exit, %bb.b
  %.0 = phi i32 [ 3, %bb.a ], [ %i.j, %bb.b ], [ %i.g, %SDL_GetJoystickGUIDInfo_REAL.exit ], [ 1, %.fold.split ]
  ret i32 %.0
}

declare i32 @HIDAPI_GetGamepadTypeFromGUID(i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden zeroext i1 @SDL_JoystickGUIDUsesVersion(i64 %0, i64 %1) local_unnamed_addr #4 {
bb.a:
  %i.a = and i64 %1, 71776119061217280
  %i.b = icmp eq i64 %i.a, 30680772461461504
  br i1 %i.b, label %bb.b, label %SDL_GetJoystickGUIDInfo_REAL.exit

SDL_GetJoystickGUIDInfo_REAL.exit:                ; preds = %bb.a
  %.sroa.0.0.extract.trunc.i = trunc i64 %0 to i32
  %i.c = and i32 %.sroa.0.0.extract.trunc.i, 65535 ; 2 uses
  %i.d = icmp samesign ult i32 %i.c, 32
  %i.e = icmp eq i32 %i.c, 255
  %or.cond.i = or i1 %i.d, %i.e
  %i.f = icmp ult i64 %0, 281474976710656
  %or.cond61.i = and i1 %i.f, %or.cond.i
  %i.g = and i64 %1, 4294901760
  %i.h = icmp eq i64 %i.g, 0
  %or.cond63.i = and i1 %i.h, %or.cond61.i
  %i.i = and i64 %0, 281470681743360
  %i.j = icmp ne i64 %i.i, 0
  %i.k = select i1 %or.cond63.i, i1 %i.j, i1 false
  %i.l = and i64 %1, 65535
  %i.m = icmp ne i64 %i.l, 0
  %or.cond = and i1 %i.m, %i.k
  br label %bb.b

bb.b:                                             ; preds = %SDL_GetJoystickGUIDInfo_REAL.exit, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %or.cond, %SDL_GetJoystickGUIDInfo_REAL.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden zeroext i1 @SDL_IsJoystickMFI(i64 %0, i64 %1) local_unnamed_addr #4 {
bb.a:
  %i.a = and i64 %1, 71776119061217280
  %i.b = icmp eq i64 %i.a, 30680772461461504
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_IsJoystickXboxOne(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i16 %0 to i32
  %i.b = zext i16 %1 to i32
  %i.c = tail call i32 @GuessControllerType(i32 noundef %i.a, i32 noundef %i.b) #12
  %i.d = icmp eq i32 %i.c, 32
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @SDL_IsJoystickXboxOneElite(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i16 %0, 1118
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i16 %1, label %bb.c [
    i16 2850, label %bb.d
    i16 2821, label %bb.d
    i16 2816, label %bb.d
    i16 739, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @SDL_IsJoystickXboxSeriesX(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #10 {
bb.a:
  %i.a = zext i16 %0 to i32
  %i.b = shl nuw i32 %i.a, 16
  %i.c = zext i16 %1 to i32
  %i.d = or disjoint i32 %i.b, %i.c               ; 2 uses
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @old_xboxone_controllers, i64 32), align 8 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @old_xboxone_controllers, i64 40), align 8
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.c, !llvm.loop !11

.preheader.i:                                     ; preds = %bb.b, %bb.a
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @old_xboxone_controllers, i64 8), align 8 ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph18.i, label %SDL_VIDPIDInList.exit

.lr.ph18.i:                                       ; preds = %.preheader.i
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @old_xboxone_controllers, i64 16), align 8
  %wide.trip.count26.i = zext nneg i32 %i.h to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.d, %i.l
  br i1 %i.m, label %SDL_VIDPIDInList.exit, label %bb.b

bb.d:                                             ; preds = %bb.d, %.lr.ph18.i
  %indvars.iv23.i = phi i64 [ 0, %.lr.ph18.i ], [ %indvars.iv.next24.i, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv23.i
  %i.o = load i32, ptr %i.n, align 4
  %.not = icmp ne i32 %i.d, %i.o                  ; 2 uses
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %exitcond27.not.i = icmp ne i64 %indvars.iv.next24.i, %wide.trip.count26.i
  %or.cond.not = select i1 %.not, i1 %exitcond27.not.i, i1 false
  br i1 %or.cond.not, label %bb.d, label %SDL_VIDPIDInList.exit, !llvm.loop !12

SDL_VIDPIDInList.exit:                            ; preds = %bb.c, %bb.d, %.preheader.i
  %.0 = phi i1 [ true, %.preheader.i ], [ %.not, %bb.d ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @SDL_VIDPIDInList(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = zext i16 %0 to i32
  %i.b = shl nuw i32 %i.a, 16
  %i.c = zext i16 %1 to i32
  %i.d = or disjoint i32 %i.b, %i.c               ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.c, !llvm.loop !11

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %wide.trip.count26 = zext nneg i32 %i.k to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.d, %i.p
  br i1 %i.q, label %.loopexit, label %bb.b

bb.d:                                             ; preds = %bb.d, %.lr.ph18
  %indvars.iv23 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next24, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv23
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.d, %i.s                   ; 2 uses
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond27.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count26
  %or.cond = select i1 %i.t, i1 true, i1 %exitcond27.not
  br i1 %or.cond, label %.loopexit, label %bb.d, !llvm.loop !12

.loopexit:                                        ; preds = %bb.c, %bb.d, %.preheader
  %.014 = phi i1 [ false, %.preheader ], [ %i.t, %bb.d ], [ false, %bb.c ]
  ret i1 %.014
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @SDL_IsJoystickBluetoothXboxOne(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i16 %0, 1118
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i16 %1, label %bb.c [
    i16 2850, label %bb.d
    i16 2849, label %bb.d
    i16 2848, label %bb.d
    i16 2835, label %bb.d
    i16 2828, label %bb.d
    i16 2821, label %bb.d
    i16 765, label %bb.d
    i16 736, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_IsJoystickPS4(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i16 %0 to i32
  %i.b = zext i16 %1 to i32
  %i.c = tail call i32 @GuessControllerType(i32 noundef %i.a, i32 noundef %i.b) #12
  %i.d = icmp eq i32 %i.c, 34
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_IsJoystickPS5(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i16 %0 to i32
  %i.b = zext i16 %1 to i32
  %i.c = tail call i32 @GuessControllerType(i32 noundef %i.a, i32 noundef %i.b) #12
  %i.d = icmp eq i32 %i.c, 45
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @SDL_IsJoystickDualSenseEdge(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i16 %0, 1356
  %i.b = icmp eq i16 %1, 3570
  %or.cond = and i1 %i.a, %i.b
  ret i1 %or.cond
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_IsJoystickNintendoSwitchPro(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i16 %0 to i32
  %i.b = zext i16 %1 to i32
  %i.c = tail call i32 @GuessControllerType(i32 noundef %i.a, i32 noundef %i.b) #12 ; 2 uses
  %i.d = icmp eq i32 %i.c, 38
  %i.e = icmp eq i32 %i.c, 42
  %i.f = or i1 %i.d, %i.e
  ret i1 %i.f
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_IsJoystickNintendoSwitchProInputOnly(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i16 %0 to i32
  %i.b = zext i16 %1 to i32
  %i.c = tail call i32 @GuessControllerType(i32 noundef %i.a, i32 noundef %i.b) #12
  %i.d = icmp eq i32 %i.c, 42
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_IsJoystickNintendoSwitchJoyCon(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i16 %0 to i32
  %i.b = zext i16 %1 to i32
  %i.c = tail call i32 @GuessControllerType(i32 noundef %i.a, i32 noundef %i.b) #12
  %i.d = add i32 %i.c, -39
  %i.e = icmp ult i32 %i.d, 2
  ret i1 %i.e
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_IsJoystickNintendoSwitchJoyConLeft(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i16 %0 to i32
  %i.b = zext i16 %1 to i32
  %i.c = tail call i32 @GuessControllerType(i32 noundef %i.a, i32 noundef %i.b) #12
  %i.d = icmp eq i32 %i.c, 39
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_IsJoystickNintendoSwitchJoyConRight(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i16 %0 to i32
  %i.b = zext i16 %1 to i32
  %i.c = tail call i32 @GuessControllerType(i32 noundef %i.a, i32 noundef %i.b) #12
  %i.d = icmp eq i32 %i.c, 40
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @SDL_IsJoystickNintendoSwitchJoyConGrip(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i16 %0, 1406
  %i.b = icmp eq i16 %1, 8206
  %i.c = and i1 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @SDL_IsJoystickNintendoSwitchJoyConPair(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i16 %0, 1406
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i16 %1, 8200
  %i.c = icmp eq i16 %1, 8296
  %i.d = or i1 %i.b, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i1 [ false, %bb.a ], [ %i.d, %bb.b ]
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @SDL_IsJoystickAmazonLunaController(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i16 %0, 6473
  %i.b = icmp eq i16 %1, 1049                     ; 2 uses
  %or.cond = and i1 %i.a, %i.b
end_hunk_0
