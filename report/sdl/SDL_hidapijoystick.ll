Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_hidapijoystick?download=true
inline.NumInlined: 43
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@HIDAPI_UpdateDeviceProperties:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4
  %i.i = tail call ptr @SDL_GetJoystickFromID_REAL(i32 noundef %i.h) #8 ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @SDL_GetJoystickProperties_REAL(ptr noundef nonnull %i.i) #8 ; 5 uses
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i32 %i.m(ptr noundef nonnull %0, ptr noundef nonnull %i.i) #8, !inline_history !1 ; 5 uses
  %.not.i = trunc i32 %i.n to i1
  %i.o = tail call zeroext i1 @SDL_SetBooleanProperty_REAL(i32 noundef %i.j, ptr noundef nonnull @.str.7, i1 noundef zeroext %.not.i) #8 ; 0 uses
  %i.p = and i32 %i.n, 2
  %.not18.i = icmp ne i32 %i.p, 0
  %i.q = tail call zeroext i1 @SDL_SetBooleanProperty_REAL(i32 noundef %i.j, ptr noundef nonnull @.str.8, i1 noundef zeroext %.not18.i) #8 ; 0 uses
  %i.r = and i32 %i.n, 4
  %.not19.i = icmp ne i32 %i.r, 0
  %i.s = tail call zeroext i1 @SDL_SetBooleanProperty_REAL(i32 noundef %i.j, ptr noundef nonnull @.str.9, i1 noundef zeroext %.not19.i) #8 ; 0 uses
  %i.t = and i32 %i.n, 16
  %.not20.i = icmp ne i32 %i.t, 0
  %i.u = tail call zeroext i1 @SDL_SetBooleanProperty_REAL(i32 noundef %i.j, ptr noundef nonnull @.str.10, i1 noundef zeroext %.not20.i) #8 ; 0 uses
  %i.v = and i32 %i.n, 32
  %.not21.i = icmp ne i32 %i.v, 0
  %i.w = tail call zeroext i1 @SDL_SetBooleanProperty_REAL(i32 noundef %i.j, ptr noundef nonnull @.str.11, i1 noundef zeroext %.not21.i) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = load i32, ptr %i.a, align 4
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %bb.b, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.d, %bb.a
  tail call void @SDL_UnlockJoysticks_REAL() #8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @HIDAPI_IsDeviceTypePresent(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @HIDAPI_JoystickInit()
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @SDL_CompareAndSwapAtomicInt_REAL(ptr noundef nonnull @SDL_HIDAPI_updating_devices, i32 noundef 0, i32 noundef 1) #8
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @HIDAPI_UpdateDeviceList()
  %i.c = tail call i32 @SDL_SetAtomicInt_REAL(ptr noundef nonnull @SDL_HIDAPI_updating_devices, i32 noundef 0) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @SDL_LockJoysticks_REAL() #8
  %.069 = load ptr, ptr @SDL_HIDAPI_devices, align 8 ; 2 uses
  %.not10.not = icmp eq ptr %.069, null
  br i1 %.not10.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.0611 = phi ptr [ %.06, %bb.f ], [ %.069, %bb.d ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0611, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  %.not8 = icmp eq ptr %i.e, null
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.0611, i64 92
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, %0
  br i1 %i.h, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.0611, i64 184
  %.06 = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.not = icmp eq ptr %.06, null
  br i1 %.not.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.f, %bb.e, %bb.d
  %.not.lcssa = phi i1 [ false, %bb.d ], [ true, %bb.e ], [ false, %bb.f ]
  tail call void @SDL_UnlockJoysticks_REAL() #8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %._crit_edge
  %.07 = phi i1 [ %.not.lcssa, %._crit_edge ], [ false, %bb.a ]
  ret i1 %.07
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_JoystickInit() #0 {
bb.a:
  %.b = load i1, ptr @initialized, align 1
  br i1 %.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @SDL_hid_init_REAL() #8
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverGameCube, i64 16), align 8
  tail call void %i.c(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverGameCube) #8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverLuna, i64 16), align 8
  tail call void %i.d(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverLuna) #8
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverShield, i64 16), align 8
  tail call void %i.e(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverShield) #8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverPS3, i64 16), align 8
  tail call void %i.f(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverPS3) #8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverPS3ThirdParty, i64 16), align 8
  tail call void %i.g(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverPS3ThirdParty) #8
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverPS3SonySixaxis, i64 16), align 8
  tail call void %i.h(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverPS3SonySixaxis) #8
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverPS4, i64 16), align 8
  tail call void %i.i(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverPS4) #8
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverPS5, i64 16), align 8
  tail call void %i.j(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverPS5) #8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverStadia, i64 16), align 8
  tail call void %i.k(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverStadia) #8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSteam, i64 16), align 8
  tail call void %i.l(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverSteam) #8
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSteamHori, i64 16), align 8
  tail call void %i.m(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverSteamHori) #8
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSteamDeck, i64 16), align 8
  tail call void %i.n(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverSteamDeck) #8
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSteamTriton, i64 16), align 8
  tail call void %i.o(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverSteamTriton) #8
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverNintendoClassic, i64 16), align 8
  tail call void %i.p(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverNintendoClassic) #8
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverJoyCons, i64 16), align 8
  tail call void %i.q(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverJoyCons) #8
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSwitch, i64 16), align 8
  tail call void %i.r(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverSwitch) #8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverWii, i64 16), align 8
  tail call void %i.s(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverWii) #8
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverXbox360, i64 16), align 8
  tail call void %i.t(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverXbox360) #8
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverXbox360W, i64 16), align 8
  tail call void %i.u(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverXbox360W) #8
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverGIP, i64 16), align 8
  tail call void %i.v(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverGIP) #8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverXboxOne, i64 16), align 8
  tail call void %i.w(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverXboxOne) #8
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverLg4ff, i64 16), align 8
  tail call void %i.x(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverLg4ff) #8
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_Driver8BitDo, i64 16), align 8
  tail call void %i.y(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_Driver8BitDo) #8
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverFlydigi, i64 16), align 8
  tail call void %i.z(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverFlydigi) #8
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSInput, i64 16), align 8
  tail call void %i.aa(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverSInput) #8
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverZUIKI, i64 16), align 8
  tail call void %i.ab(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverZUIKI) #8
  %i.ac = tail call zeroext i1 @SDL_AddHintCallback_REAL(ptr noundef nonnull @.str.13, ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef null) #8 ; 0 uses
  %i.ad = tail call zeroext i1 @SDL_AddHintCallback_REAL(ptr noundef nonnull @.str.14, ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef null) #8 ; 0 uses
  %i.ae = tail call i32 @SDL_hid_device_change_count_REAL() #8
  store i32 %i.ae, ptr @SDL_HIDAPI_change_count, align 4
  tail call fastcc void @HIDAPI_UpdateDeviceList()
  tail call void @HIDAPI_UpdateDevices()
  store i1 true, ptr @initialized, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.af = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.12) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.preheader.preheader, %bb.c
  %.0 = phi i1 [ true, %.preheader.preheader ], [ %i.af, %bb.c ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @HIDAPI_UpdateDeviceList() unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 9 uses
  %i.b = alloca i16, align 2                      ; 9 uses
  %0 = alloca %struct.SDL_hid_device_info, align 8 ; 12 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  tail call void @SDL_LockJoysticks_REAL() #8
  %.b = load i1, ptr @SDL_HIDAPI_hints_changed, align 1
  br i1 %.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  tail call void @SDL_AssertJoysticksLocked() #8
  store i32 0, ptr @SDL_HIDAPI_numdrivers, align 4
  %1 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverGameCube, i64 32), align 8
  %2 = tail call zeroext i1 %1() #8, !inline_history !21 ; 2 uses
  %3 = zext i1 %2 to i8
  store i8 %3, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverGameCube, i64 8), align 8
  br i1 %2, label %4, label %7

4:                                                ; preds = %bb.b
  %5 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %7

7:                                                ; preds = %4, %bb.b
  %8 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverLuna, i64 32), align 8
  %9 = tail call zeroext i1 %8() #8, !inline_history !21 ; 2 uses
  %10 = zext i1 %9 to i8
  store i8 %10, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverLuna, i64 8), align 8
  br i1 %9, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %14

14:                                               ; preds = %11, %7
  %15 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverShield, i64 32), align 8
  %16 = tail call zeroext i1 %15() #8, !inline_history !21 ; 2 uses
  %17 = zext i1 %16 to i8
  store i8 %17, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverShield, i64 8), align 8
  br i1 %16, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %21

21:                                               ; preds = %18, %14
  %22 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverPS3, i64 32), align 8
  %23 = tail call zeroext i1 %22() #8, !inline_history !21 ; 2 uses
  %24 = zext i1 %23 to i8
  store i8 %24, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverPS3, i64 8), align 8
  br i1 %23, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverPS3ThirdParty, i64 32), align 8
  %30 = tail call zeroext i1 %29() #8, !inline_history !21 ; 2 uses
  %31 = zext i1 %30 to i8
  store i8 %31, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverPS3ThirdParty, i64 8), align 8
  br i1 %30, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %35

35:                                               ; preds = %32, %28
  %36 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverPS3SonySixaxis, i64 32), align 8
  %37 = tail call zeroext i1 %36() #8, !inline_history !21 ; 2 uses
  %38 = zext i1 %37 to i8
  store i8 %38, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverPS3SonySixaxis, i64 8), align 8
  br i1 %37, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverPS4, i64 32), align 8
  %44 = tail call zeroext i1 %43() #8, !inline_history !21 ; 2 uses
  %45 = zext i1 %44 to i8
  store i8 %45, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverPS4, i64 8), align 8
  br i1 %44, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %49

49:                                               ; preds = %46, %42
  %50 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverPS5, i64 32), align 8
  %51 = tail call zeroext i1 %50() #8, !inline_history !21 ; 2 uses
  %52 = zext i1 %51 to i8
  store i8 %52, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverPS5, i64 8), align 8
  br i1 %51, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %56

56:                                               ; preds = %53, %49
  %57 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverStadia, i64 32), align 8
  %58 = tail call zeroext i1 %57() #8, !inline_history !21 ; 2 uses
  %59 = zext i1 %58 to i8
  store i8 %59, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverStadia, i64 8), align 8
  br i1 %58, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %63

63:                                               ; preds = %60, %56
  %64 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSteam, i64 32), align 8
  %65 = tail call zeroext i1 %64() #8, !inline_history !21 ; 2 uses
  %66 = zext i1 %65 to i8
  store i8 %66, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSteam, i64 8), align 8
  br i1 %65, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %70

70:                                               ; preds = %67, %63
  %71 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSteamHori, i64 32), align 8
  %72 = tail call zeroext i1 %71() #8, !inline_history !21 ; 2 uses
  %73 = zext i1 %72 to i8
  store i8 %73, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSteamHori, i64 8), align 8
  br i1 %72, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %77

77:                                               ; preds = %74, %70
  %78 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSteamDeck, i64 32), align 8
  %79 = tail call zeroext i1 %78() #8, !inline_history !21 ; 2 uses
  %80 = zext i1 %79 to i8
  store i8 %80, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSteamDeck, i64 8), align 8
  br i1 %79, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %84

84:                                               ; preds = %81, %77
  %85 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSteamTriton, i64 32), align 8
  %86 = tail call zeroext i1 %85() #8, !inline_history !21 ; 2 uses
  %87 = zext i1 %86 to i8
  store i8 %87, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSteamTriton, i64 8), align 8
  br i1 %86, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %91

91:                                               ; preds = %88, %84
  %92 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverNintendoClassic, i64 32), align 8
  %93 = tail call zeroext i1 %92() #8, !inline_history !21 ; 2 uses
  %94 = zext i1 %93 to i8
  store i8 %94, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverNintendoClassic, i64 8), align 8
  br i1 %93, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %98

98:                                               ; preds = %95, %91
  %99 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverJoyCons, i64 32), align 8
  %100 = tail call zeroext i1 %99() #8, !inline_history !21 ; 2 uses
  %101 = zext i1 %100 to i8
  store i8 %101, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverJoyCons, i64 8), align 8
  br i1 %100, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %105

105:                                              ; preds = %102, %98
  %106 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSwitch, i64 32), align 8
  %107 = tail call zeroext i1 %106() #8, !inline_history !21 ; 2 uses
  %108 = zext i1 %107 to i8
  store i8 %108, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSwitch, i64 8), align 8
  br i1 %107, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %112

112:                                              ; preds = %109, %105
  %113 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverWii, i64 32), align 8
  %114 = tail call zeroext i1 %113() #8, !inline_history !21 ; 2 uses
  %115 = zext i1 %114 to i8
  store i8 %115, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverWii, i64 8), align 8
  br i1 %114, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %119

119:                                              ; preds = %116, %112
  %120 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverXbox360, i64 32), align 8
  %121 = tail call zeroext i1 %120() #8, !inline_history !21 ; 2 uses
  %122 = zext i1 %121 to i8
  store i8 %122, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverXbox360, i64 8), align 8
  br i1 %121, label %123, label %126

123:                                              ; preds = %119
  %124 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %126

126:                                              ; preds = %123, %119
  %127 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverXbox360W, i64 32), align 8
  %128 = tail call zeroext i1 %127() #8, !inline_history !21 ; 2 uses
  %129 = zext i1 %128 to i8
  store i8 %129, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverXbox360W, i64 8), align 8
  br i1 %128, label %130, label %133

130:                                              ; preds = %126
  %131 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %133

133:                                              ; preds = %130, %126
  %134 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverGIP, i64 32), align 8
  %135 = tail call zeroext i1 %134() #8, !inline_history !21 ; 2 uses
  %136 = zext i1 %135 to i8
  store i8 %136, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverGIP, i64 8), align 8
  br i1 %135, label %137, label %140

137:                                              ; preds = %133
  %138 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %140

140:                                              ; preds = %137, %133
  %141 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverXboxOne, i64 32), align 8
  %142 = tail call zeroext i1 %141() #8, !inline_history !21 ; 2 uses
  %143 = zext i1 %142 to i8
  store i8 %143, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverXboxOne, i64 8), align 8
  br i1 %142, label %144, label %147

144:                                              ; preds = %140
  %145 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %147

147:                                              ; preds = %144, %140
  %148 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverLg4ff, i64 32), align 8
  %149 = tail call zeroext i1 %148() #8, !inline_history !21 ; 2 uses
  %150 = zext i1 %149 to i8
  store i8 %150, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverLg4ff, i64 8), align 8
  br i1 %149, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %154

154:                                              ; preds = %151, %147
  %155 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_Driver8BitDo, i64 32), align 8
  %156 = tail call zeroext i1 %155() #8, !inline_history !21 ; 2 uses
  %157 = zext i1 %156 to i8
  store i8 %157, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_Driver8BitDo, i64 8), align 8
  br i1 %156, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %161

161:                                              ; preds = %158, %154
  %162 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverFlydigi, i64 32), align 8
  %163 = tail call zeroext i1 %162() #8, !inline_history !21 ; 2 uses
  %164 = zext i1 %163 to i8
  store i8 %164, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverFlydigi, i64 8), align 8
  br i1 %163, label %165, label %bb.c

165:                                              ; preds = %161
  %166 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %bb.c

bb.c:                                             ; preds = %165, %161
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSInput, i64 32), align 8
  %i.e = tail call zeroext i1 %i.d() #8, !inline_history !21 ; 2 uses
  %i.f = zext i1 %i.e to i8
  store i8 %i.f, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSInput, i64 8), align 8
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %168 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverZUIKI, i64 32), align 8
  %169 = tail call zeroext i1 %168() #8, !inline_history !21 ; 2 uses
  %170 = zext i1 %169 to i8
  store i8 %170, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverZUIKI, i64 8), align 8
  br i1 %169, label %171, label %bb.f

171:                                              ; preds = %bb.e
  %172 = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, ptr @SDL_HIDAPI_numdrivers, align 4
  br label %bb.f

bb.f:                                             ; preds = %171, %bb.e
  store i8 0, ptr %i.c, align 1
  %i.i = load ptr, ptr @SDL_HIDAPI_devices, align 8 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %SDL_HIDAPI_UpdateDrivers.exit, label %.split.i

.splitthread-pre-split.i.loopexit:                ; preds = %.lr.ph.i
  %.013.pr.i.pre = load ptr, ptr @SDL_HIDAPI_devices, align 8
  br label %.split.i.backedge

.split.i.backedge:                                ; preds = %.splitthread-pre-split.i.loopexit, %._crit_edge.i
  %.013.pr.i120.be = phi ptr [ null, %._crit_edge.i ], [ %.013.pr.i.pre, %.splitthread-pre-split.i.loopexit ]
  br label %.split.i, !llvm.loop !22

.split.i:                                         ; preds = %bb.f, %.split.i.backedge
  %.013.pr.i120 = phi ptr [ %.013.pr.i120.be, %.split.i.backedge ], [ %i.i, %bb.f ] ; 2 uses
  %i.k = phi i1 [ true, %.split.i.backedge ], [ false, %bb.f ]
  %.not14.i = icmp eq ptr %.013.pr.i120, null
  br i1 %.not14.i, label %._crit_edge.i, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.015.i, i64 184
  %.0.i = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %SDL_HIDAPI_UpdateDrivers.exit, label %.lr.ph.i, !llvm.loop !23

.lr.ph.i:                                         ; preds = %.split.i, %bb.g
  %.015.i = phi ptr [ %.0.i, %bb.g ], [ %.013.pr.i120, %.split.i ] ; 2 uses
  call fastcc void @HIDAPI_SetupDeviceDriver(ptr noundef %.015.i, ptr noundef %i.c)
  %i.m = load i8, ptr %i.c, align 1, !range !7, !noundef !8
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.splitthread-pre-split.i.loopexit, label %bb.g

._crit_edge.i:                                    ; preds = %.split.i
  br i1 %i.k, label %.split.i.backedge, label %SDL_HIDAPI_UpdateDrivers.exit

SDL_HIDAPI_UpdateDrivers.exit:                    ; preds = %._crit_edge.i, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  store i1 false, ptr @SDL_HIDAPI_hints_changed, align 1
  br label %bb.h

bb.h:                                             ; preds = %SDL_HIDAPI_UpdateDrivers.exit, %bb.a
  %.04295 = load ptr, ptr @SDL_HIDAPI_devices, align 8 ; 2 uses
  %.not96 = icmp eq ptr %.04295, null
  br i1 %.not96, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.j
  %.04297 = phi ptr [ %.042, %bb.j ], [ %.04295, %bb.h ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.04297, i64 176
  %i.p = load ptr, ptr %i.o, align 8
  %.not59 = icmp eq ptr %i.p, null
  br i1 %.not59, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.04297, i64 152
  store i8 0, ptr %i.q, align 8
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.04297, i64 184
  %.042 = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not = icmp eq ptr %.042, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.j, %bb.h
  %i.s = load i32, ptr @SDL_HIDAPI_numdrivers, align 4
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.k, label %bb.y

bb.k:                                             ; preds = %._crit_edge
  %i.u = tail call ptr @SDL_hid_enumerate_REAL(i16 noundef zeroext 0, i16 noundef zeroext 0) #8 ; 3 uses
  %.not48 = icmp eq ptr %i.u, null
  br i1 %.not48, label %bb.y, label %.preheader85

.preheader85:                                     ; preds = %bb.k, %HIDAPI_SetDeviceSerialW.exit
  %.04198 = phi ptr [ %i.ca, %HIDAPI_SetDeviceSerialW.exit ], [ %i.u, %bb.k ] ; 6 uses
  %i.v = load ptr, ptr %.04198, align 8           ; 2 uses
  %.not57 = icmp eq ptr %i.v, null
  br i1 %.not57, label %HIDAPI_SetDeviceSerialW.exit, label %bb.l

bb.l:                                             ; preds = %.preheader85
  %i.w = getelementptr inbounds nuw i8, ptr %.04198, i64 8
  %i.x = load i16, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.04198, i64 10
  %i.z = load i16, ptr %i.y, align 2
  tail call void @SDL_AssertJoysticksLocked() #8
  %.08.i = load ptr, ptr @SDL_HIDAPI_devices, align 8 ; 2 uses
  %.not9.i = icmp eq ptr %.08.i, null
  br i1 %.not9.i, label %.loopexit84, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.l, %bb.o
  %.010.i = phi ptr [ %.0.i61, %bb.o ], [ %.08.i, %bb.l ] ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.010.i, i64 32
  %i.ab = load i16, ptr %i.aa, align 8
  %i.ac = icmp eq i16 %i.ab, %i.x
  br i1 %i.ac, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph.i60
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i, i64 34
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = icmp eq i16 %i.ae, %i.z
  br i1 %i.af, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call i32 @SDL_strcmp_REAL(ptr noundef %i.ah, ptr noundef nonnull %i.v) #8
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %HIDAPI_GetJoystickByInfo.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.lr.ph.i60
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i, i64 184
  %.0.i61 = load ptr, ptr %i.ak, align 8          ; 2 uses
  %.not.i62 = icmp eq ptr %.0.i61, null
  br i1 %.not.i62, label %.loopexit84, label %.lr.ph.i60, !llvm.loop !25

HIDAPI_GetJoystickByInfo.exit:                    ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i, i64 152
  store i8 1, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %.010.i, i64 40   ; 4 uses
  %.val = load ptr, ptr %i.am, align 8            ; 5 uses
  %.not.i64 = icmp eq ptr %.val, null             ; 2 uses
  br i1 %.not.i64, label %HIDAPI_SerialIsEmpty.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %HIDAPI_GetJoystickByInfo.exit, %.preheader.i
  %.0.i65 = phi ptr [ %i.ao, %.preheader.i ], [ %.val, %HIDAPI_GetJoystickByInfo.exit ] ; 2 uses
  %i.an = load i8, ptr %.0.i65, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i65, i64 1
  switch i8 %i.an, label %HIDAPI_SetDeviceSerialW.exit [
    i8 48, label %.preheader.i
    i8 0, label %HIDAPI_SerialIsEmpty.exit.thread
  ]

HIDAPI_SerialIsEmpty.exit.thread:                 ; preds = %.preheader.i, %HIDAPI_GetJoystickByInfo.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.04198, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8            ; 7 uses
  %.not.i66 = icmp eq ptr %i.aq, null
  br i1 %.not.i66, label %HIDAPI_SetDeviceSerialW.exit, label %bb.p

bb.p:                                             ; preds = %HIDAPI_SerialIsEmpty.exit.thread
  %i.ar = load i32, ptr %i.aq, align 4            ; 2 uses
  %.not10.i67 = icmp eq i32 %i.ar, 0
  br i1 %.not10.i67, label %HIDAPI_SetDeviceSerialW.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i64, label %wcstrcmp.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = load i8, ptr %.val, align 1
  %i.at = sext i8 %i.as to i32
  %.not8.i.not.i = icmp eq i32 %i.ar, %i.at
  br i1 %.not8.i.not.i, label %.lr.ph.i.i, label %wcstrcmp.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.r, %.lr.ph.i.i
  %.011.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %.val, %bb.r ]
  %.0610.i.i = phi ptr [ %i.au, %.lr.ph.i.i ], [ %i.aq, %bb.r ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 1 ; 2 uses
  %i.aw = load i32, ptr %i.au, align 4            ; 2 uses
  %i.ax = load i8, ptr %i.av, align 1
  %i.ay = sext i8 %i.ax to i32
  %.not.i.i = icmp ne i32 %i.aw, %i.ay            ; 2 uses
  %i.az = icmp eq i32 %i.aw, 0
  %or.cond.i.i = or i1 %i.az, %.not.i.i
  br i1 %or.cond.i.i, label %wcstrcmp.exit.i, label %.lr.ph.i.i

wcstrcmp.exit.i:                                  ; preds = %.lr.ph.i.i
  br i1 %.not.i.i, label %wcstrcmp.exit.thread.i, label %HIDAPI_SetDeviceSerialW.exit

wcstrcmp.exit.thread.i:                           ; preds = %wcstrcmp.exit.i, %bb.r, %bb.q
  tail call void @SDL_free_REAL(ptr noundef %.val) #8
  %i.ba = tail call i64 @SDL_wcslen_REAL(ptr noundef nonnull %i.aq) #8
  %i.bb = shl i64 %i.ba, 2
  %i.bc = add i64 %i.bb, 4
  %i.bd = tail call ptr @SDL_iconv_string_REAL(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.aq, i64 noundef %i.bc) #8 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bd, null
  br i1 %.not9.i.i, label %bb.s, label %HIDAPI_ConvertString.exit.i

bb.s:                                             ; preds = %wcstrcmp.exit.thread.i
  %i.be = tail call i64 @SDL_wcslen_REAL(ptr noundef nonnull %i.aq) #8
  %i.bf = shl i64 %i.be, 2
  %i.bg = add i64 %i.bf, 4
  %i.bh = tail call ptr @SDL_iconv_string_REAL(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.aq, i64 noundef %i.bg) #8
  br label %HIDAPI_ConvertString.exit.i

HIDAPI_ConvertString.exit.i:                      ; preds = %bb.s, %wcstrcmp.exit.thread.i
  %.0.i.i = phi ptr [ %i.bd, %wcstrcmp.exit.thread.i ], [ %i.bh, %bb.s ]
  store ptr %.0.i.i, ptr %i.am, align 8
  tail call void @SDL_AssertJoysticksLocked() #8
  %i.bi = getelementptr inbounds nuw i8, ptr %.010.i, i64 140 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i14.i, label %HIDAPI_SetDeviceSerialW.exit

.lr.ph.i14.i:                                     ; preds = %HIDAPI_ConvertString.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.010.i, i64 144
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.lr.ph.i14.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i14.i ], [ %indvars.iv.next.i.i, %bb.w ] ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.i.i
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = tail call ptr @SDL_GetJoystickFromID_REAL(i32 noundef %i.bo) #8 ; 2 uses
  %.not.i15.i = icmp eq ptr %i.bp, null
  br i1 %.not.i15.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = load ptr, ptr %i.am, align 8
  %.not10.i.i = icmp eq ptr %i.bq, null
  br i1 %.not10.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 24 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.bs) #8
  %i.bt = load ptr, ptr %i.am, align 8
  %i.bu = tail call noalias ptr @SDL_strdup_REAL(ptr noundef %i.bt) #8
  store ptr %i.bu, ptr %i.br, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bv = load i32, ptr %i.bi, align 4
  %i.bw = sext i32 %i.bv to i64
  %i.bx = icmp slt i64 %indvars.iv.next.i.i, %i.bw
  br i1 %i.bx, label %bb.t, label %HIDAPI_SetDeviceSerialW.exit, !llvm.loop !0

.loopexit84:                                      ; preds = %bb.o, %bb.l
  %i.by = tail call fastcc ptr @HIDAPI_AddDevice(ptr noundef %.04198, i32 noundef 0, ptr noundef null) ; 0 uses
  br label %HIDAPI_SetDeviceSerialW.exit

HIDAPI_SetDeviceSerialW.exit:                     ; preds = %.preheader.i, %bb.w, %HIDAPI_ConvertString.exit.i, %wcstrcmp.exit.i, %bb.p, %HIDAPI_SerialIsEmpty.exit.thread, %.loopexit84, %.preheader85
  %i.bz = getelementptr inbounds nuw i8, ptr %.04198, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %.not49 = icmp eq ptr %i.ca, null
  br i1 %.not49, label %bb.x, label %.preheader85, !llvm.loop !26

bb.x:                                             ; preds = %HIDAPI_SetDeviceSerialW.exit
  tail call void @SDL_hid_free_enumeration_REAL(ptr noundef nonnull %i.u) #8
  br label %bb.y

bb.y:                                             ; preds = %bb.k, %bb.x, %._crit_edge
  %i.cb = load ptr, ptr @SDL_HIDAPI_devices, align 8 ; 2 uses
  %.not50161164 = icmp eq ptr %i.cb, null
  br i1 %.not50161164, label %.preheader, label %.lr.ph163

.loopexit.loopexit:                               ; preds = %bb.ai, %._crit_edge101
  %i.cc = load ptr, ptr @SDL_HIDAPI_devices, align 8 ; 2 uses
  %.not50161 = icmp eq ptr %i.cc, null
  br i1 %.not50161, label %.preheader, label %.lr.ph163.backedge

.preheader:                                       ; preds = %bb.aj, %.loopexit.loopexit, %bb.y
  tail call void @SDL_AssertJoysticksLocked() #8
  %i.cd = load i8, ptr @SDL_HIDAPI_combine_joycons, align 1, !range !7, !noundef !8
  %i.ce = trunc nuw i8 %i.cd to i1
  %.02957.i102 = load ptr, ptr @SDL_HIDAPI_devices, align 8 ; 2 uses
  %.not58.i103 = icmp ne ptr %.02957.i102, null
  %or.cond.not.i104 = select i1 %i.ce, i1 %.not58.i103, i1 false
  br i1 %or.cond.not.i104, label %.lr.ph.i69.preheader.lr.ph, label %HIDAPI_CreateCombinedJoyCons.exit.thread

.lr.ph.i69.preheader.lr.ph:                       ; preds = %.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 68
  br label %.lr.ph.i69

.lr.ph163:                                        ; preds = %bb.y, %.lr.ph163.backedge
  %.1162 = phi ptr [ %.1162.be, %.lr.ph163.backedge ], [ %i.cb, %bb.y ] ; 10 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.1162, i64 184
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.1162, i64 152
  %i.cp = load i8, ptr %i.co, align 8, !range !7, !noundef !8
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %.lr.ph163
  %i.cr = getelementptr inbounds nuw i8, ptr %.1162, i64 104
  %i.cs = load ptr, ptr %i.cr, align 8
  %.not51 = icmp eq ptr %i.cs, null
  br i1 %.not51, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ct = getelementptr inbounds nuw i8, ptr %.1162, i64 176
  %i.cu = load ptr, ptr %i.ct, align 8
  %.not52 = icmp eq ptr %i.cu, null
  br i1 %.not52, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cv = getelementptr inbounds nuw i8, ptr %.1162, i64 140
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.cy = getelementptr inbounds nuw i8, ptr %.1162, i64 128
  %i.cz = load ptr, ptr %i.cy, align 8
  %.not53 = icmp eq ptr %i.cz, null
  br i1 %.not53, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac, %.lr.ph163
  %i.da = getelementptr inbounds nuw i8, ptr %.1162, i64 160
  %i.db = load ptr, ptr %i.da, align 8            ; 4 uses
  %.not54 = icmp eq ptr %i.db, null
  br i1 %.not54, label %bb.af, label %.preheader82

.preheader82:                                     ; preds = %bb.ad
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 168 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %.lr.ph100, label %._crit_edge101

.lr.ph100:                                        ; preds = %.preheader82
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 176
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph100, %bb.ae
  %indvars.iv = phi i64 [ 0, %.lr.ph100 ], [ %indvars.iv.next, %bb.ae ] ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv
  %i.di = load ptr, ptr %i.dh, align 8
  tail call fastcc void @HIDAPI_DelDevice(ptr noundef %i.di)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dj = load i32, ptr %i.dc, align 8
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv.next, %i.dk
  br i1 %i.dl, label %bb.ae, label %._crit_edge101, !llvm.loop !27

._crit_edge101:                                   ; preds = %bb.ae, %.preheader82
  tail call fastcc void @HIDAPI_DelDevice(ptr noundef nonnull %i.db)
  store i32 0, ptr @SDL_HIDAPI_change_count, align 4
  br label %.loopexit.loopexit

bb.af:                                            ; preds = %bb.ad
  tail call fastcc void @HIDAPI_DelDevice(ptr noundef nonnull %.1162)
  store i32 0, ptr @SDL_HIDAPI_change_count, align 4
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.dm = getelementptr inbounds nuw i8, ptr %.1162, i64 154
  %i.dn = load i8, ptr %i.dm, align 2, !range !7, !noundef !8
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.dp = getelementptr inbounds nuw i8, ptr %.1162, i64 160
  %i.dq = load ptr, ptr %i.dp, align 8            ; 2 uses
  %.not56 = icmp eq ptr %i.dq, null
  br i1 %.not56, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call fastcc void @HIDAPI_DelDevice(ptr noundef nonnull %i.dq)
  br label %.loopexit.loopexit

bb.aj:                                            ; preds = %bb.af, %bb.ag, %bb.ah
  %.not50 = icmp eq ptr %i.cn, null
  br i1 %.not50, label %.preheader, label %.lr.ph163.backedge

.lr.ph163.backedge:                               ; preds = %bb.aj, %.loopexit.loopexit
  %.1162.be = phi ptr [ %i.cn, %bb.aj ], [ %i.cc, %.loopexit.loopexit ]
  br label %.lr.ph163

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.backedge, %.lr.ph.i69.preheader.lr.ph
  %.02961.i = phi ptr [ %.02957.i102, %.lr.ph.i69.preheader.lr.ph ], [ %.02961.i.be, %.lr.ph.i69.backedge ] ; 11 uses
  %.sroa.8.060.i = phi ptr [ null, %.lr.ph.i69.preheader.lr.ph ], [ %.sroa.8.060.i.be, %.lr.ph.i69.backedge ] ; 5 uses
  %.sroa.0.059.i = phi ptr [ null, %.lr.ph.i69.preheader.lr.ph ], [ %.sroa.0.059.i.be, %.lr.ph.i69.backedge ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.dr = getelementptr inbounds nuw i8, ptr %.02961.i, i64 104
  %i.ds = load ptr, ptr %i.dr, align 8
  %.not34.i = icmp eq ptr %i.ds, null
  br i1 %.not34.i, label %.thread.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i69
  %i.dt = getelementptr inbounds nuw i8, ptr %.02961.i, i64 160
  %i.du = load ptr, ptr %i.dt, align 8
  %.not35.i = icmp eq ptr %i.du, null
  br i1 %.not35.i, label %bb.al, label %.thread.i

bb.al:                                            ; preds = %bb.ak
  %i.dv = getelementptr inbounds nuw i8, ptr %.02961.i, i64 154
  %i.dw = load i8, ptr %i.dv, align 2, !range !7, !noundef !8
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dy = getelementptr inbounds nuw i8, ptr %.02961.i, i64 48
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %.02961.i, i64 56
  %i.eb = load i64, ptr %i.ea, align 8
  call void @SDL_GetJoystickGUIDInfo_REAL(i64 %i.dz, i64 %i.eb, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null) #8
  %.not36.i = icmp eq ptr %.sroa.0.059.i, null
  br i1 %.not36.i, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.ec = load i16, ptr %i.a, align 2
  %i.ed = load i16, ptr %i.b, align 2
  %i.ee = call zeroext i1 @SDL_IsJoystickNintendoSwitchJoyConLeft(i16 noundef zeroext %i.ec, i16 noundef zeroext %i.ed) #8
  br i1 %i.ee, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ef = load i16, ptr %i.a, align 2
  %i.eg = load i16, ptr %i.b, align 2
  %i.eh = call zeroext i1 @SDL_IsJoystickNintendoSwitchJoyConGrip(i16 noundef zeroext %i.ef, i16 noundef zeroext %i.eg) #8
  br i1 %i.eh, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ei = load ptr, ptr %.02961.i, align 8
  %i.ej = call ptr @SDL_strstr_REAL(ptr noundef %i.ei, ptr noundef nonnull @.str.25) #8
  %.not37.i = icmp eq ptr %i.ej, null
  br i1 %.not37.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am
  %i.ek = phi ptr [ %.sroa.0.059.i, %bb.am ], [ %.02961.i, %bb.aq ], [ null, %bb.ap ], [ null, %bb.ao ] ; 6 uses
  %.not38.i = icmp eq ptr %.sroa.8.060.i, null
  br i1 %.not38.i, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.el = load i16, ptr %i.a, align 2
  %i.em = load i16, ptr %i.b, align 2
  %i.en = call zeroext i1 @SDL_IsJoystickNintendoSwitchJoyConRight(i16 noundef zeroext %i.el, i16 noundef zeroext %i.em) #8
  br i1 %i.en, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eo = load i16, ptr %i.a, align 2
  %i.ep = load i16, ptr %i.b, align 2
  %i.eq = call zeroext i1 @SDL_IsJoystickNintendoSwitchJoyConGrip(i16 noundef zeroext %i.eo, i16 noundef zeroext %i.ep) #8
  br i1 %i.eq, label %bb.au, label %.thread.i

bb.au:                                            ; preds = %bb.at
  %i.er = load ptr, ptr %.02961.i, align 8
  %i.es = call ptr @SDL_strstr_REAL(ptr noundef %i.er, ptr noundef nonnull @.str.26) #8
  %.not39.i = icmp eq ptr %i.es, null
  br i1 %.not39.i, label %.thread.i, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.as, %bb.ar
  %.sroa.8.1.i = phi ptr [ %.sroa.8.060.i, %bb.ar ], [ %.02961.i, %bb.au ], [ %.02961.i, %bb.as ] ; 3 uses
  %.not56.i = icmp eq ptr %i.ek, null
  br i1 %.not56.i, label %.thread.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #8
  %i.et = call noalias ptr @SDL_malloc_REAL(i64 noundef 16) #8 ; 5 uses
  %.not40.i = icmp eq ptr %i.et, null
  br i1 %.not40.i, label %HIDAPI_CreateCombinedJoyCons.exit.thread79, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store ptr %i.ek, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %.sroa.8.1.i, ptr %i.eu, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cf, i8 0, i64 72, i1 false)
  store ptr @.str.27, ptr %0, align 8
  store i16 1406, ptr %i.cf, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ek, i64 34
  %i.ew = load i16, ptr %i.ev, align 2
  %i.ex = icmp eq i16 %i.ew, 8198
  %spec.select.i = select i1 %i.ex, i16 8200, i16 8296
  store i16 %spec.select.i, ptr %i.cg, align 2
  store i32 -1, ptr %i.ch, align 4
  store i16 1, ptr %i.ci, align 8
  store i16 5, ptr %i.cj, align 2
  store <2 x ptr> <ptr @.str.28, ptr @.str.29>, ptr %i.ck, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 84
  %i.ez = load i8, ptr %i.ey, align 4, !range !7, !noundef !8
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.8.1.i, i64 84
  %i.fc = load i8, ptr %i.fb, align 4, !range !7, !noundef !8
  %i.fd = trunc nuw i8 %i.fc to i1
  %spec.select67.i = select i1 %i.fd, i32 2, i32 1
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sink.i = phi i32 [ 2, %bb.ax ], [ %spec.select67.i, %bb.ay ]
  store i32 %.sink.i, ptr %i.cl, align 4
  %i.fe = call fastcc ptr @HIDAPI_AddDevice(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.et) ; 3 uses
  %.not41.i = icmp eq ptr %i.fe, null
  br i1 %.not41.i, label %.critedge.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 104
  %i.fg = load ptr, ptr %i.ff, align 8
  %.not42.i = icmp eq ptr %i.fg, null
  br i1 %.not42.i, label %bb.bb, label %HIDAPI_CreateCombinedJoyCons.exit

bb.bb:                                            ; preds = %bb.ba
  call fastcc void @HIDAPI_DelDevice(ptr noundef nonnull %i.fe)
  br label %HIDAPI_CreateCombinedJoyCons.exit.thread79

.critedge.i:                                      ; preds = %bb.az
  call void @SDL_free_REAL(ptr noundef nonnull %i.et) #8
  br label %HIDAPI_CreateCombinedJoyCons.exit.thread79

.thread.i:                                        ; preds = %bb.av, %bb.au, %bb.at, %bb.al, %bb.ak, %.lr.ph.i69
  %.sroa.0.2.ph.i = phi ptr [ %.sroa.0.059.i, %.lr.ph.i69 ], [ null, %bb.av ], [ %.sroa.0.059.i, %bb.al ], [ %.sroa.0.059.i, %bb.ak ], [ %i.ek, %bb.au ], [ %i.ek, %bb.at ]
  %.sroa.8.2.ph.i = phi ptr [ %.sroa.8.060.i, %.lr.ph.i69 ], [ %.sroa.8.1.i, %bb.av ], [ %.sroa.8.060.i, %bb.al ], [ %.sroa.8.060.i, %bb.ak ], [ null, %bb.au ], [ null, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.fh = getelementptr inbounds nuw i8, ptr %.02961.i, i64 184
  %.029.i = load ptr, ptr %i.fh, align 8          ; 2 uses
  %.not.i70 = icmp eq ptr %.029.i, null
  br i1 %.not.i70, label %HIDAPI_CreateCombinedJoyCons.exit.thread, label %.lr.ph.i69.backedge

.lr.ph.i69.backedge:                              ; preds = %.thread.i, %HIDAPI_CreateCombinedJoyCons.exit
  %.02961.i.be = phi ptr [ %.029.i, %.thread.i ], [ %.02957.i, %HIDAPI_CreateCombinedJoyCons.exit ]
  %.sroa.8.060.i.be = phi ptr [ %.sroa.8.2.ph.i, %.thread.i ], [ null, %HIDAPI_CreateCombinedJoyCons.exit ]
  %.sroa.0.059.i.be = phi ptr [ %.sroa.0.2.ph.i, %.thread.i ], [ null, %HIDAPI_CreateCombinedJoyCons.exit ]
  br label %.lr.ph.i69, !llvm.loop !28

HIDAPI_CreateCombinedJoyCons.exit.thread79:       ; preds = %bb.aw, %.critedge.i, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %HIDAPI_CreateCombinedJoyCons.exit.thread

HIDAPI_CreateCombinedJoyCons.exit:                ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @SDL_AssertJoysticksLocked() #8
  %i.fi = load i8, ptr @SDL_HIDAPI_combine_joycons, align 1, !range !7, !noundef !8
  %i.fj = trunc nuw i8 %i.fi to i1
  %.02957.i = load ptr, ptr @SDL_HIDAPI_devices, align 8 ; 2 uses
  %.not58.i = icmp ne ptr %.02957.i, null
  %or.cond.not.i = select i1 %i.fj, i1 %.not58.i, i1 false
  br i1 %or.cond.not.i, label %.lr.ph.i69.backedge, label %HIDAPI_CreateCombinedJoyCons.exit.thread

HIDAPI_CreateCombinedJoyCons.exit.thread:         ; preds = %HIDAPI_CreateCombinedJoyCons.exit, %.thread.i, %.preheader, %HIDAPI_CreateCombinedJoyCons.exit.thread79
  call void @SDL_UnlockJoysticks_REAL() #8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @HIDAPI_IsDevicePresent(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 @HIDAPI_JoystickInit()
  br i1 %i.a, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @SDL_GetGamepadTypeFromVIDPID(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr noundef %3, i1 noundef zeroext false) #8
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %.critedge.i ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @SDL_HIDAPI_drivers, i64 %indvars.iv.i
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i8, ptr %i.e, align 8, !range !7, !noundef !8
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call zeroext i1 %i.i(ptr noundef null, ptr noundef %3, i32 noundef %i.b, i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef -1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8, !inline_history !30
  br i1 %i.j, label %.critedge, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 26
  br i1 %exitcond.not.i, label %HIDAPI_IsDeviceSupported.exit, label %bb.c, !llvm.loop !31

HIDAPI_IsDeviceSupported.exit:                    ; preds = %.critedge.i
  %i.k = tail call ptr @SDL_strstr_REAL(ptr noundef %3, ptr noundef nonnull @.str.4) #8
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.e, label %.critedge

bb.e:                                             ; preds = %HIDAPI_IsDeviceSupported.exit
  %i.l = tail call ptr @SDL_strstr_REAL(ptr noundef %3, ptr noundef nonnull @.str.5) #8
  %.not21 = icmp eq ptr %i.l, null
  br i1 %.not21, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @SDL_strstr_REAL(ptr noundef %3, ptr noundef nonnull @.str.6) #8
  %.not22.not = icmp eq ptr %i.m, null
  br i1 %.not22.not, label %bb.h, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.f, %HIDAPI_IsDeviceSupported.exit, %bb.e
  %i.n = tail call zeroext i1 @SDL_CompareAndSwapAtomicInt_REAL(ptr noundef nonnull @SDL_HIDAPI_updating_devices, i32 noundef 0, i32 noundef 1) #8
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge
  tail call fastcc void @HIDAPI_UpdateDeviceList()
  %i.o = tail call i32 @SDL_SetAtomicInt_REAL(ptr noundef nonnull @SDL_HIDAPI_updating_devices, i32 noundef 0) #8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.critedge, %bb.g
  tail call void @SDL_LockJoysticks_REAL() #8
  %.01929 = load ptr, ptr @SDL_HIDAPI_devices, align 8 ; 4 uses
  %.not2330.not = icmp eq ptr %.01929, null
  br i1 %.not2330.not, label %HIDAPI_IsEquivalentToDevice.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.p = icmp eq i16 %0, 1118
  br i1 %i.p, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %HIDAPI_IsEquivalentToDevice.exit.us
  %.01931.us = phi ptr [ %.019.us, %HIDAPI_IsEquivalentToDevice.exit.us ], [ %.01929, %.lr.ph ] ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01931.us, i64 32
  %i.r = load i16, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq i16 %i.r, 14295
  %i.t = getelementptr inbounds nuw i8, ptr %.01931.us, i64 104
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.us
  %i.v = icmp eq ptr %i.u, @SDL_HIDAPI_DriverFlydigi
  %.not24.us69 = icmp eq ptr %i.u, null
  %or.cond78 = or i1 %i.v, %.not24.us69
  br i1 %or.cond78, label %HIDAPI_IsEquivalentToDevice.exit.us, label %.thread70

bb.j:                                             ; preds = %.lr.ph.split.us
  %.not24.us = icmp eq ptr %i.u, null
  br i1 %.not24.us, label %HIDAPI_IsEquivalentToDevice.exit.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = icmp eq i16 %i.r, 1118
  br i1 %i.w, label %bb.l, label %.thread70

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.01931.us, i64 34
  %i.y = load i16, ptr %i.x, align 2
  %i.z = icmp eq i16 %1, %i.y
  br i1 %i.z, label %HIDAPI_IsEquivalentToDevice.exit.thread, label %.thread70

.thread70:                                        ; preds = %bb.i, %bb.l, %bb.k
  switch i16 %1, label %HIDAPI_IsEquivalentToDevice.exit.us [
    i16 673, label %bb.n
    i16 767, label %bb.m
  ]

bb.m:                                             ; preds = %.thread70
  %i.aa = getelementptr inbounds nuw i8, ptr %.01931.us, i64 92
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp eq i32 %i.ab, 3
  br i1 %i.ac, label %HIDAPI_IsEquivalentToDevice.exit.thread, label %HIDAPI_IsEquivalentToDevice.exit.us

bb.n:                                             ; preds = %.thread70
  %i.ad = getelementptr inbounds nuw i8, ptr %.01931.us, i64 34
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = icmp eq i16 %i.ae, 1817
  br i1 %i.af, label %HIDAPI_IsEquivalentToDevice.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %.01931.us, i64 92
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = and i32 %i.ah, -2
  %switch.i.us = icmp eq i32 %i.ai, 2
  br i1 %switch.i.us, label %HIDAPI_IsEquivalentToDevice.exit.thread, label %HIDAPI_IsEquivalentToDevice.exit.us

HIDAPI_IsEquivalentToDevice.exit.us:              ; preds = %bb.o, %bb.m, %.thread70, %bb.j, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.01931.us, i64 184
  %.019.us = load ptr, ptr %i.aj, align 8         ; 2 uses
  %.not23.us.not = icmp eq ptr %.019.us, null
  br i1 %.not23.us.not, label %HIDAPI_IsEquivalentToDevice.exit.thread, label %.lr.ph.split.us, !llvm.loop !32

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ak = icmp eq i16 %0, 2389
  %i.al = icmp eq i16 %1, -19456
  %or.cond.i = and i1 %i.ak, %i.al
  br i1 %or.cond.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %HIDAPI_IsEquivalentToDevice.exit.us50
  %.01931.us48 = phi ptr [ %.019.us51, %HIDAPI_IsEquivalentToDevice.exit.us50 ], [ %.01929, %.lr.ph.split ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01931.us48, i64 32
  %i.an = load i16, ptr %i.am, align 8            ; 2 uses
  %i.ao = icmp eq i16 %i.an, 14295
  %i.ap = getelementptr inbounds nuw i8, ptr %.01931.us48, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  br i1 %i.ao, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.split.split.us
  %i.ar = icmp eq ptr %i.aq, @SDL_HIDAPI_DriverFlydigi
  %.not24.us4972 = icmp eq ptr %i.aq, null
  %or.cond79 = or i1 %i.ar, %.not24.us4972
  br i1 %or.cond79, label %HIDAPI_IsEquivalentToDevice.exit.us50, label %.thread73

bb.q:                                             ; preds = %.lr.ph.split.split.us
  %.not24.us49 = icmp eq ptr %i.aq, null
  br i1 %.not24.us49, label %HIDAPI_IsEquivalentToDevice.exit.us50, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = icmp eq i16 %i.an, 2389
  br i1 %i.as, label %bb.s, label %.thread73

bb.s:                                             ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %.01931.us48, i64 34
  %i.au = load i16, ptr %i.at, align 2
  %i.av = icmp eq i16 %i.au, -19456
  br i1 %i.av, label %HIDAPI_IsEquivalentToDevice.exit.thread, label %.thread73

.thread73:                                        ; preds = %bb.p, %bb.s, %bb.r
  %i.aw = tail call zeroext i1 @SDL_IsJoystickNVIDIASHIELDController(i16 noundef zeroext 2389, i16 noundef zeroext -19456) #8
  br i1 %i.aw, label %HIDAPI_IsEquivalentToDevice.exit.thread, label %HIDAPI_IsEquivalentToDevice.exit.us50

HIDAPI_IsEquivalentToDevice.exit.us50:            ; preds = %.thread73, %bb.q, %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %.01931.us48, i64 184
  %.019.us51 = load ptr, ptr %i.ax, align 8       ; 2 uses
  %.not23.us52.not = icmp eq ptr %.019.us51, null
  br i1 %.not23.us52.not, label %HIDAPI_IsEquivalentToDevice.exit.thread, label %.lr.ph.split.split.us, !llvm.loop !32

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %HIDAPI_IsEquivalentToDevice.exit
  %.01931 = phi ptr [ %.019, %HIDAPI_IsEquivalentToDevice.exit ], [ %.01929, %.lr.ph.split ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01931, i64 32
  %i.az = load i16, ptr %i.ay, align 8            ; 2 uses
  %i.ba = icmp eq i16 %i.az, 14295
  %i.bb = getelementptr inbounds nuw i8, ptr %.01931, i64 104
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = icmp eq ptr %i.bc, @SDL_HIDAPI_DriverFlydigi
  %or.cond80 = select i1 %i.ba, i1 %i.bd, i1 false
  br i1 %or.cond80, label %HIDAPI_IsEquivalentToDevice.exit, label %.lr.ph.split.split._crit_edge

.lr.ph.split.split._crit_edge:                    ; preds = %.lr.ph.split.split
  %.not24 = icmp ne ptr %i.bc, null
  %i.be = icmp eq i16 %0, %i.az
  %or.cond = and i1 %.not24, %i.be
  br i1 %or.cond, label %bb.t, label %HIDAPI_IsEquivalentToDevice.exit

bb.t:                                             ; preds = %.lr.ph.split.split._crit_edge
  %i.bf = getelementptr inbounds nuw i8, ptr %.01931, i64 34
  %i.bg = load i16, ptr %i.bf, align 2
  %i.bh = icmp eq i16 %1, %i.bg
  br i1 %i.bh, label %HIDAPI_IsEquivalentToDevice.exit.thread, label %HIDAPI_IsEquivalentToDevice.exit

HIDAPI_IsEquivalentToDevice.exit:                 ; preds = %.lr.ph.split.split, %bb.t, %.lr.ph.split.split._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %.01931, i64 184
  %.019 = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not23.not = icmp eq ptr %.019, null
  br i1 %.not23.not, label %HIDAPI_IsEquivalentToDevice.exit.thread, label %.lr.ph.split.split, !llvm.loop !32

HIDAPI_IsEquivalentToDevice.exit.thread:          ; preds = %HIDAPI_IsEquivalentToDevice.exit, %bb.t, %HIDAPI_IsEquivalentToDevice.exit.us50, %bb.s, %.thread73, %HIDAPI_IsEquivalentToDevice.exit.us, %bb.l, %bb.n, %bb.m, %bb.o, %bb.h
  %.not23.lcssa = phi i1 [ false, %bb.h ], [ false, %HIDAPI_IsEquivalentToDevice.exit.us50 ], [ true, %bb.o ], [ true, %bb.m ], [ true, %bb.n ], [ true, %bb.l ], [ false, %HIDAPI_IsEquivalentToDevice.exit.us ], [ true, %.thread73 ], [ true, %bb.s ], [ true, %bb.t ], [ false, %HIDAPI_IsEquivalentToDevice.exit ]
  tail call void @SDL_UnlockJoysticks_REAL() #8
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %HIDAPI_IsEquivalentToDevice.exit.thread
  %.020 = phi i1 [ %.not23.lcssa, %HIDAPI_IsEquivalentToDevice.exit.thread ], [ false, %bb.a ]
  ret i1 %.020
}

declare ptr @SDL_strstr_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noalias ptr @HIDAPI_GetDeviceProductName(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_LockJoysticks_REAL() #8
  %.0812 = load ptr, ptr @SDL_HIDAPI_devices, align 8 ; 2 uses
  %.not13 = icmp eq ptr %.0812, null
  br i1 %.not13, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.0814 = phi ptr [ %.08, %bb.e ], [ %.0812, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0814, i64 32
  %i.b = load i16, ptr %i.a, align 8
  %i.c = icmp eq i16 %0, %i.b
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.0814, i64 34
  %i.e = load i16, ptr %i.d, align 2
  %i.f = icmp eq i16 %1, %i.e
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.0814, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.h, null
  br i1 %.not10, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noalias ptr @SDL_strdup_REAL(ptr noundef nonnull %i.h) #8
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.0814, i64 184
  %.08 = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not = icmp eq ptr %.08, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !33

.loopexit:                                        ; preds = %bb.e, %bb.a, %bb.c, %bb.d
  %.0 = phi ptr [ %i.i, %bb.d ], [ null, %bb.c ], [ null, %bb.a ], [ null, %bb.e ]
  tail call void @SDL_UnlockJoysticks_REAL() #8
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @HIDAPI_GetDeviceManufacturerName(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_LockJoysticks_REAL() #8
  %.0812 = load ptr, ptr @SDL_HIDAPI_devices, align 8 ; 2 uses
  %.not13 = icmp eq ptr %.0812, null
  br i1 %.not13, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.0814 = phi ptr [ %.08, %bb.e ], [ %.0812, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0814, i64 32
  %i.b = load i16, ptr %i.a, align 8
  %i.c = icmp eq i16 %0, %i.b
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.0814, i64 34
  %i.e = load i16, ptr %i.d, align 2
  %i.f = icmp eq i16 %1, %i.e
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.0814, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.h, null
  br i1 %.not10, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noalias ptr @SDL_strdup_REAL(ptr noundef nonnull %i.h) #8
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.0814, i64 184
  %.08 = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not = icmp eq ptr %.08, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !34

.loopexit:                                        ; preds = %bb.e, %bb.a, %bb.c, %bb.d
  %.0 = phi ptr [ %i.i, %bb.d ], [ null, %bb.c ], [ null, %bb.a ], [ null, %bb.e ]
  tail call void @SDL_UnlockJoysticks_REAL() #8
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @HIDAPI_GetJoystickTypeFromGUID(i64 %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.SDL_GUID, align 8           ; 3 uses
  store i64 %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8
  tail call void @SDL_LockJoysticks_REAL() #8
  %.046 = load ptr, ptr @SDL_HIDAPI_devices, align 8 ; 2 uses
  %.not7 = icmp eq ptr %.046, null
  br i1 %.not7, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.048 = phi ptr [ %.04, %bb.c ], [ %.046, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.048, i64 48
  %i.c = call i32 @SDL_memcmp_REAL(ptr noundef nonnull %2, ptr noundef nonnull %i.b, i64 noundef 16) #8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.048, i64 88
  %i.f = load i32, ptr %i.e, align 8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.048, i64 184
  %.04 = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %.04, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !35

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ]
  call void @SDL_UnlockJoysticks_REAL() #8
  ret i32 %.0
}

declare i32 @SDL_memcmp_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @HIDAPI_GetGamepadTypeFromGUID(i64 %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.SDL_GUID, align 8           ; 3 uses
  store i64 %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8
  tail call void @SDL_LockJoysticks_REAL() #8
  %.046 = load ptr, ptr @SDL_HIDAPI_devices, align 8 ; 2 uses
  %.not7 = icmp eq ptr %.046, null
  br i1 %.not7, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.048 = phi ptr [ %.04, %bb.c ], [ %.046, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.048, i64 48
  %i.c = call i32 @SDL_memcmp_REAL(ptr noundef nonnull %2, ptr noundef nonnull %i.b, i64 noundef 16) #8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.048, i64 92
  %i.f = load i32, ptr %i.e, align 4
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.048, i64 184
  %.04 = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %.04, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !36

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 1, %bb.a ], [ 1, %bb.c ]
  call void @SDL_UnlockJoysticks_REAL() #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @HIDAPI_UpdateDevices() local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_AssertJoysticksLocked() #8
  %i.a = tail call zeroext i1 @SDL_CompareAndSwapAtomicInt_REAL(ptr noundef nonnull @SDL_HIDAPI_updating_devices, i32 noundef 0, i32 noundef 1) #8
  br i1 %i.a, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a
  %.012 = load ptr, ptr @SDL_HIDAPI_devices, align 8 ; 2 uses
  %.not13 = icmp eq ptr %.012, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.014 = phi ptr [ %.0, %bb.e ], [ %.012, %.preheader ] ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  %.not10 = icmp eq ptr %i.c, null
  br i1 %.not10, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.014, i64 104 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not11 = icmp eq ptr %i.e, null
  br i1 %.not11, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.014, i64 120 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call zeroext i1 @SDL_TryLockMutex_REAL(ptr noundef %i.g) #8
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.014, i64 153 ; 2 uses
  store i8 1, ptr %i.i, align 1
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call zeroext i1 %i.l(ptr noundef nonnull %.014) #8 ; 0 uses
  store i8 0, ptr %i.i, align 1
  %i.n = load ptr, ptr %i.f, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.n) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.014, i64 184
  %.0 = load ptr, ptr %i.o, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.p = tail call i32 @SDL_SetAtomicInt_REAL(ptr noundef nonnull @SDL_HIDAPI_updating_devices, i32 noundef 0) #8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

declare zeroext i1 @SDL_TryLockMutex_REAL(ptr noundef) local_unnamed_addr #2

declare void @SDL_UnlockMutex_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @HIDAPI_JoystickGetCount() #4 {
bb.a:
  %i.a = load i32, ptr @SDL_HIDAPI_numjoysticks, align 4
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal void @HIDAPI_JoystickDetect() #0 {
bb.a:
  %i.a = tail call zeroext i1 @SDL_CompareAndSwapAtomicInt_REAL(ptr noundef nonnull @SDL_HIDAPI_updating_devices, i32 noundef 0, i32 noundef 1) #8
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @SDL_hid_device_change_count_REAL() #8 ; 2 uses
  %i.c = load i32, ptr @SDL_HIDAPI_change_count, align 4
  %.not = icmp eq i32 %i.c, %i.b
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.b, ptr @SDL_HIDAPI_change_count, align 4
  tail call fastcc void @HIDAPI_UpdateDeviceList()
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = tail call i32 @SDL_SetAtomicInt_REAL(ptr noundef nonnull @SDL_HIDAPI_updating_devices, i32 noundef 0) #8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @HIDAPI_JoystickGetDeviceName(i32 noundef %0) #0 {
bb.a:
  tail call void @SDL_AssertJoysticksLocked() #8
  %.024.i = load ptr, ptr @SDL_HIDAPI_devices, align 8 ; 2 uses
  %.not25.i = icmp eq ptr %.024.i, null
  br i1 %.not25.i, label %HIDAPI_GetDeviceByIndex.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.f
  %.027.i = phi ptr [ %.0.i, %bb.f ], [ %.024.i, %bb.a ] ; 6 uses
  %.01526.i = phi i32 [ %.1.i, %bb.f ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.027.i, i64 160
  %i.b = load ptr, ptr %i.a, align 8
  %.not18.i = icmp eq ptr %i.b, null
  br i1 %.not18.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %.027.i, i64 154
  %i.d = load i8, ptr %i.c, align 2, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.027.i, i64 104
  %i.g = load ptr, ptr %i.f, align 8
  %.not19.i = icmp eq ptr %i.g, null
  br i1 %.not19.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.027.i, i64 140
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp slt i32 %.01526.i, %i.i
  br i1 %i.j, label %HIDAPI_GetDeviceByIndex.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = sub nsw i32 %.01526.i, %i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b, %.lr.ph.i
  %.1.i = phi i32 [ %.01526.i, %.lr.ph.i ], [ %.01526.i, %bb.b ], [ %i.k, %bb.e ], [ %.01526.i, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %.027.i, i64 184
  %.0.i = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %HIDAPI_GetDeviceByIndex.exit.thread, label %.lr.ph.i, !llvm.loop !2

HIDAPI_GetDeviceByIndex.exit:                     ; preds = %bb.d
  %i.m = load ptr, ptr %.027.i, align 8
  br label %HIDAPI_GetDeviceByIndex.exit.thread

HIDAPI_GetDeviceByIndex.exit.thread:              ; preds = %bb.f, %bb.a, %HIDAPI_GetDeviceByIndex.exit
  %.0 = phi ptr [ %i.m, %HIDAPI_GetDeviceByIndex.exit ], [ null, %bb.a ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @HIDAPI_JoystickGetDevicePath(i32 noundef %0) #0 {
bb.a:
  tail call void @SDL_AssertJoysticksLocked() #8
  %.024.i = load ptr, ptr @SDL_HIDAPI_devices, align 8 ; 2 uses
  %.not25.i = icmp eq ptr %.024.i, null
  br i1 %.not25.i, label %HIDAPI_GetDeviceByIndex.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.f
  %.027.i = phi ptr [ %.0.i, %bb.f ], [ %.024.i, %bb.a ] ; 6 uses
  %.01526.i = phi i32 [ %.1.i, %bb.f ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.027.i, i64 160
  %i.b = load ptr, ptr %i.a, align 8
  %.not18.i = icmp eq ptr %i.b, null
  br i1 %.not18.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %.027.i, i64 154
  %i.d = load i8, ptr %i.c, align 2, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.027.i, i64 104
  %i.g = load ptr, ptr %i.f, align 8
  %.not19.i = icmp eq ptr %i.g, null
  br i1 %.not19.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.027.i, i64 140
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp slt i32 %.01526.i, %i.i
  br i1 %i.j, label %HIDAPI_GetDeviceByIndex.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = sub nsw i32 %.01526.i, %i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b, %.lr.ph.i
  %.1.i = phi i32 [ %.01526.i, %.lr.ph.i ], [ %.01526.i, %bb.b ], [ %i.k, %bb.e ], [ %.01526.i, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %.027.i, i64 184
  %.0.i = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %HIDAPI_GetDeviceByIndex.exit.thread, label %.lr.ph.i, !llvm.loop !2

HIDAPI_GetDeviceByIndex.exit:                     ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.027.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  br label %HIDAPI_GetDeviceByIndex.exit.thread

HIDAPI_GetDeviceByIndex.exit.thread:              ; preds = %bb.f, %bb.a, %HIDAPI_GetDeviceByIndex.exit
  %.0 = phi ptr [ %i.n, %HIDAPI_GetDeviceByIndex.exit ], [ null, %bb.a ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @HIDAPI_JoystickGetDeviceSteamVirtualGamepadSlot(i32 noundef %0) #0 {
bb.a:
  tail call void @SDL_AssertJoysticksLocked() #8
  %.024.i = load ptr, ptr @SDL_HIDAPI_devices, align 8 ; 2 uses
  %.not25.i = icmp eq ptr %.024.i, null
  br i1 %.not25.i, label %HIDAPI_GetDeviceByIndex.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.f
  %.027.i = phi ptr [ %.0.i, %bb.f ], [ %.024.i, %bb.a ] ; 6 uses
  %.01526.i = phi i32 [ %.1.i, %bb.f ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.027.i, i64 160
  %i.b = load ptr, ptr %i.a, align 8
  %.not18.i = icmp eq ptr %i.b, null
  br i1 %.not18.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %.027.i, i64 154
  %i.d = load i8, ptr %i.c, align 2, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.027.i, i64 104
  %i.g = load ptr, ptr %i.f, align 8
  %.not19.i = icmp eq ptr %i.g, null
  br i1 %.not19.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.027.i, i64 140
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp slt i32 %.01526.i, %i.i
  br i1 %i.j, label %HIDAPI_GetDeviceByIndex.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = sub nsw i32 %.01526.i, %i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b, %.lr.ph.i
  %.1.i = phi i32 [ %.01526.i, %.lr.ph.i ], [ %.01526.i, %bb.b ], [ %i.k, %bb.e ], [ %.01526.i, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %.027.i, i64 184
  %.0.i = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %HIDAPI_GetDeviceByIndex.exit.thread, label %.lr.ph.i, !llvm.loop !2

HIDAPI_GetDeviceByIndex.exit:                     ; preds = %bb.d
end_hunk_0
begin_hunk_1_@HIDAPI_JoystickSetLED:bb.a
; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_JoystickSendEffect(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  tail call void @SDL_AssertJoysticksLocked() #8
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread12.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.b, null
  br i1 %.not9.i, label %SDL_ObjectValid.exit.thread12.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %SDL_ObjectValid.exit.thread12.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i8, ptr @SDL_object_validation, align 1, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.d
  %i.f = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %i.c, i32 noundef 9) #8
  br i1 %i.f, label %SDL_ObjectValid.exit.thread.i, label %SDL_ObjectValid.exit.thread12.i

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not10.i = icmp eq ptr %i.h, null
  br i1 %.not10.i, label %SDL_ObjectValid.exit.thread12.i, label %HIDAPI_GetJoystickDevice.exit

HIDAPI_GetJoystickDevice.exit:                    ; preds = %SDL_ObjectValid.exit.thread.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call zeroext i1 %i.j(ptr noundef nonnull %i.c, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #8
  br label %bb.e

SDL_ObjectValid.exit.thread12.i:                  ; preds = %SDL_ObjectValid.exit.thread.i, %SDL_ObjectValid.exit.i, %bb.c, %bb.b, %bb.a
  %i.l = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.34) #8
  br label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread12.i, %HIDAPI_GetJoystickDevice.exit
  %.0.in = phi i1 [ %i.k, %HIDAPI_GetJoystickDevice.exit ], [ %i.l, %SDL_ObjectValid.exit.thread12.i ]
  ret i1 %.0.in
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_JoystickSetSensorsEnabled(ptr noundef %0, i1 noundef zeroext %1) #0 {
bb.a:
  tail call void @SDL_AssertJoysticksLocked() #8
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread12.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.b, null
  br i1 %.not9.i, label %SDL_ObjectValid.exit.thread12.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %SDL_ObjectValid.exit.thread12.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i8, ptr @SDL_object_validation, align 1, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.d
  %i.f = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %i.c, i32 noundef 9) #8
  br i1 %i.f, label %SDL_ObjectValid.exit.thread.i, label %SDL_ObjectValid.exit.thread12.i

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not10.i = icmp eq ptr %i.h, null
  br i1 %.not10.i, label %SDL_ObjectValid.exit.thread12.i, label %HIDAPI_GetJoystickDevice.exit

HIDAPI_GetJoystickDevice.exit:                    ; preds = %SDL_ObjectValid.exit.thread.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call zeroext i1 %i.j(ptr noundef nonnull %i.c, ptr noundef nonnull %0, i1 noundef zeroext %1) #8
  br label %bb.e

SDL_ObjectValid.exit.thread12.i:                  ; preds = %SDL_ObjectValid.exit.thread.i, %SDL_ObjectValid.exit.i, %bb.c, %bb.b, %bb.a
  %i.l = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.35) #8
  br label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread12.i, %HIDAPI_GetJoystickDevice.exit
  %.0.in = phi i1 [ %i.k, %HIDAPI_GetJoystickDevice.exit ], [ %i.l, %SDL_ObjectValid.exit.thread12.i ]
  ret i1 %.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @HIDAPI_JoystickUpdate(ptr nofree readnone captures(none) %0) #3 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @HIDAPI_JoystickQuit() #0 {
bb.a:
  tail call void @SDL_AssertJoysticksLocked() #8
  store i1 true, ptr @shutting_down, align 1
  tail call void @SDL_HIDAPI_QuitRumble() #8
  %i.a = load ptr, ptr @SDL_HIDAPI_devices, align 8 ; 2 uses
  %.not19 = icmp eq ptr %i.a, null
  br i1 %.not19, label %.preheader, label %.lr.ph21

.preheader:                                       ; preds = %._crit_edge, %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverGameCube, i64 24), align 8
  tail call void %i.b(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverGameCube) #8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverLuna, i64 24), align 8
  tail call void %i.c(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverLuna) #8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverShield, i64 24), align 8
  tail call void %i.d(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverShield) #8
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverPS3, i64 24), align 8
  tail call void %i.e(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverPS3) #8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverPS3ThirdParty, i64 24), align 8
  tail call void %i.f(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverPS3ThirdParty) #8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverPS3SonySixaxis, i64 24), align 8
  tail call void %i.g(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverPS3SonySixaxis) #8
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverPS4, i64 24), align 8
  tail call void %i.h(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverPS4) #8
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverPS5, i64 24), align 8
  tail call void %i.i(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverPS5) #8
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverStadia, i64 24), align 8
  tail call void %i.j(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverStadia) #8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSteam, i64 24), align 8
  tail call void %i.k(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverSteam) #8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSteamHori, i64 24), align 8
  tail call void %i.l(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverSteamHori) #8
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSteamDeck, i64 24), align 8
  tail call void %i.m(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverSteamDeck) #8
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSteamTriton, i64 24), align 8
  tail call void %i.n(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverSteamTriton) #8
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverNintendoClassic, i64 24), align 8
  tail call void %i.o(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverNintendoClassic) #8
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverJoyCons, i64 24), align 8
  tail call void %i.p(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverJoyCons) #8
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSwitch, i64 24), align 8
  tail call void %i.q(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverSwitch) #8
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverWii, i64 24), align 8
  tail call void %i.r(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverWii) #8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverXbox360, i64 24), align 8
  tail call void %i.s(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverXbox360) #8
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverXbox360W, i64 24), align 8
  tail call void %i.t(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverXbox360W) #8
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverGIP, i64 24), align 8
  tail call void %i.u(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverGIP) #8
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverXboxOne, i64 24), align 8
  tail call void %i.v(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverXboxOne) #8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverLg4ff, i64 24), align 8
  tail call void %i.w(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverLg4ff) #8
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_Driver8BitDo, i64 24), align 8
  tail call void %i.x(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_Driver8BitDo) #8
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverFlydigi, i64 24), align 8
  tail call void %i.y(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverFlydigi) #8
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverSInput, i64 24), align 8
  tail call void %i.z(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverSInput) #8
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_HIDAPI_DriverZUIKI, i64 24), align 8
  tail call void %i.aa(ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef nonnull @SDL_HIDAPI_DriverZUIKI) #8
  tail call void @SDL_RemoveHintCallback_REAL(ptr noundef nonnull @.str.13, ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef null) #8
  tail call void @SDL_RemoveHintCallback_REAL(ptr noundef nonnull @.str.14, ptr noundef nonnull @SDL_HIDAPIDriverHintChanged, ptr noundef null) #8
  %i.ab = tail call i32 @SDL_hid_exit_REAL() #8   ; 0 uses
  store i32 0, ptr @SDL_HIDAPI_change_count, align 4
  store i1 false, ptr @shutting_down, align 1
  store i1 false, ptr @initialized, align 1
  ret void

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %i.ac = phi ptr [ %i.ap, %._crit_edge ], [ %i.a, %bb.a ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 160
  %i.ae = load ptr, ptr %i.ad, align 8            ; 5 uses
  %.not16 = icmp eq ptr %i.ae, null
  br i1 %.not16, label %._crit_edge, label %.preheader17

.preheader17:                                     ; preds = %.lr.ph21
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 168 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader17
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 176
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = load ptr, ptr %i.ak, align 8
  tail call fastcc void @HIDAPI_DelDevice(ptr noundef %i.al)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = load i32, ptr %i.af, align 8
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.b, %.lr.ph21, %.preheader17
  %.sink = phi ptr [ %i.ae, %.preheader17 ], [ %i.ac, %.lr.ph21 ], [ %i.ae, %bb.b ]
  tail call fastcc void @HIDAPI_DelDevice(ptr noundef nonnull %.sink)
  %i.ap = load ptr, ptr @SDL_HIDAPI_devices, align 8 ; 2 uses
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %.preheader, label %.lr.ph21, !llvm.loop !39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @HIDAPI_JoystickGetGamepadMapping(i32 %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  ret i1 false
}

; Function Attrs: allocsize(1)
declare ptr @SDL_realloc_REAL(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i32 @SDL_GetJoystickProperties_REAL(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SetBooleanProperty_REAL(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @SDL_hid_init_REAL() local_unnamed_addr #2

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @SDL_HIDAPIDriverHintChanged(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @SDL_strcmp_REAL(ptr noundef %1, ptr noundef nonnull @.str.13) #8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @SDL_GetStringBoolean(ptr noundef %3, i1 noundef zeroext true) #8
  %i.d = zext i1 %i.c to i8
  store i8 %i.d, ptr @SDL_HIDAPI_combine_joycons, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i1 true, ptr @SDL_HIDAPI_hints_changed, align 1
  store i32 0, ptr @SDL_HIDAPI_change_count, align 4
  ret void
}

declare zeroext i1 @SDL_AddHintCallback_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SDL_hid_device_change_count_REAL() local_unnamed_addr #2

declare zeroext i1 @SDL_GetStringBoolean(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @SDL_CompareAndSwapAtomicInt_REAL(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @SDL_hid_enumerate_REAL(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @HIDAPI_AddDevice(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 0, 3) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  tail call void @SDL_AssertJoysticksLocked() #8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0111.in = phi ptr [ @SDL_HIDAPI_devices, %bb.a ], [ %i.b, %bb.b ]
  %.0110 = phi ptr [ null, %bb.a ], [ %.0111, %bb.b ] ; 2 uses
  %.0111 = load ptr, ptr %.0111.in, align 8       ; 3 uses
  %.not = icmp eq ptr %.0111, null
  %i.b = getelementptr inbounds nuw i8, ptr %.0111, i64 184
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !40

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8
  %i.d = tail call noalias ptr @SDL_strdup_REAL(ptr noundef %i.c) #8 ; 3 uses
  %.not119 = icmp eq ptr %i.d, null
  br i1 %.not119, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call zeroext i1 @SDL_OutOfMemory_REAL() #8 ; 0 uses
  br label %bb.z

bb.e:                                             ; preds = %bb.c
  %i.f = tail call noalias dereferenceable_or_null(192) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 192) #10 ; 39 uses
  %.not120 = icmp eq ptr %i.f, null
  br i1 %.not120, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.d) #8
  br label %bb.z

bb.g:                                             ; preds = %bb.e
  tail call void @SDL_SetObjectValid(ptr noundef nonnull %i.f, i32 noundef 9, i1 noundef zeroext true) #8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  store i8 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 34 ; 4 uses
  %i.l = load <2 x i16>, ptr %i.i, align 8
  store <2 x i16> %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i16, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 36 ; 3 uses
  store i16 %i.n, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 68 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 76 ; 2 uses
  %i.u = load <4 x i32>, ptr %i.p, align 4
  store <4 x i32> %i.u, ptr %i.q, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 82
  %i.y = load <2 x i16>, ptr %i.v, align 8
  store <2 x i16> %i.y, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = icmp eq i32 %i.aa, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 84 ; 2 uses
  %i.ad = zext i1 %i.ab to i8
  store i8 %i.ad, ptr %i.ac, align 4
  %i.ae = tail call ptr @SDL_CreateMutex_REAL() #8
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8            ; 5 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %HIDAPI_ConvertString.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call i64 @SDL_wcslen_REAL(ptr noundef nonnull %i.ah) #8
  %i.aj = shl i64 %i.ai, 2
  %i.ak = add i64 %i.aj, 4
  %i.al = tail call ptr @SDL_iconv_string_REAL(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.ah, i64 noundef %i.ak) #8 ; 2 uses
  %.not9.i = icmp eq ptr %i.al, null
  br i1 %.not9.i, label %bb.i, label %HIDAPI_ConvertString.exit

bb.i:                                             ; preds = %bb.h
  %i.am = tail call i64 @SDL_wcslen_REAL(ptr noundef nonnull %i.ah) #8
  %i.an = shl i64 %i.am, 2
  %i.ao = add i64 %i.an, 4
  %i.ap = tail call ptr @SDL_iconv_string_REAL(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.ah, i64 noundef %i.ao) #8
  br label %HIDAPI_ConvertString.exit

HIDAPI_ConvertString.exit:                        ; preds = %bb.g, %bb.h, %bb.i
  %.0.i = phi ptr [ %i.al, %bb.h ], [ %i.ap, %bb.i ], [ null, %bb.g ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8            ; 5 uses
  %.not.i129 = icmp eq ptr %i.ar, null
  br i1 %.not.i129, label %HIDAPI_ConvertString.exit132, label %bb.j

bb.j:                                             ; preds = %HIDAPI_ConvertString.exit
  %i.as = tail call i64 @SDL_wcslen_REAL(ptr noundef nonnull %i.ar) #8
  %i.at = shl i64 %i.as, 2
  %i.au = add i64 %i.at, 4
  %i.av = tail call ptr @SDL_iconv_string_REAL(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.ar, i64 noundef %i.au) #8 ; 2 uses
  %.not9.i130 = icmp eq ptr %i.av, null
  br i1 %.not9.i130, label %bb.k, label %HIDAPI_ConvertString.exit132

bb.k:                                             ; preds = %bb.j
  %i.aw = tail call i64 @SDL_wcslen_REAL(ptr noundef nonnull %i.ar) #8
  %i.ax = shl i64 %i.aw, 2
  %i.ay = add i64 %i.ax, 4
  %i.az = tail call ptr @SDL_iconv_string_REAL(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.ar, i64 noundef %i.ay) #8
  br label %HIDAPI_ConvertString.exit132

HIDAPI_ConvertString.exit132:                     ; preds = %HIDAPI_ConvertString.exit, %bb.j, %bb.k
  %.0.i131 = phi ptr [ %i.av, %bb.j ], [ %i.az, %bb.k ], [ null, %HIDAPI_ConvertString.exit ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  store ptr %.0.i131, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8            ; 5 uses
  %.not.i133 = icmp eq ptr %i.bc, null
  br i1 %.not.i133, label %HIDAPI_ConvertString.exit136, label %bb.l

bb.l:                                             ; preds = %HIDAPI_ConvertString.exit132
  %i.bd = tail call i64 @SDL_wcslen_REAL(ptr noundef nonnull %i.bc) #8
  %i.be = shl i64 %i.bd, 2
  %i.bf = add i64 %i.be, 4
  %i.bg = tail call ptr @SDL_iconv_string_REAL(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.bc, i64 noundef %i.bf) #8 ; 2 uses
  %.not9.i134 = icmp eq ptr %i.bg, null
  br i1 %.not9.i134, label %bb.m, label %HIDAPI_ConvertString.exit136

bb.m:                                             ; preds = %bb.l
  %i.bh = tail call i64 @SDL_wcslen_REAL(ptr noundef nonnull %i.bc) #8
  %i.bi = shl i64 %i.bh, 2
  %i.bj = add i64 %i.bi, 4
  %i.bk = tail call ptr @SDL_iconv_string_REAL(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.bc, i64 noundef %i.bj) #8
  br label %HIDAPI_ConvertString.exit136

HIDAPI_ConvertString.exit136:                     ; preds = %HIDAPI_ConvertString.exit132, %bb.l, %bb.m
  %.0.i135 = phi ptr [ %i.bg, %bb.l ], [ %i.bk, %bb.m ], [ null, %HIDAPI_ConvertString.exit132 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %.0.i135, ptr %i.bl, align 8
  %i.bm = load i16, ptr %i.j, align 8
  %i.bn = load i16, ptr %i.k, align 2
  %i.bo = load ptr, ptr %i.ba, align 8
  %i.bp = tail call ptr @SDL_CreateJoystickName(i16 noundef zeroext %i.bm, i16 noundef zeroext %i.bn, ptr noundef %i.bo, ptr noundef %.0.i135) #8 ; 2 uses
  store ptr %i.bp, ptr %i.f, align 8
  %.not121 = icmp eq ptr %.0.i, null
  br i1 %.not121, label %bb.p, label %bb.n

bb.n:                                             ; preds = %HIDAPI_ConvertString.exit136
  %i.bq = load i8, ptr %.0.i, align 1
  %.not122 = icmp eq i8 %i.bq, 0
  br i1 %.not122, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %.0.i, ptr %i.br, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %HIDAPI_ConvertString.exit136
  tail call void @SDL_free_REAL(ptr noundef %.0.i) #8
  %.pre = load ptr, ptr %i.f, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bs = phi ptr [ %.pre, %bb.p ], [ %i.bp, %bb.o ]
  %.not123.not = icmp eq ptr %i.bs, null
  br i1 %.not123.not, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.bt = load ptr, ptr %i.ba, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.bt) #8
  %i.bu = load ptr, ptr %i.bl, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.bu) #8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.bw) #8
  %i.bx = load ptr, ptr %i.g, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.bx) #8
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.f) #8
  br label %bb.z

.critedge:                                        ; preds = %bb.q
  %i.by = load i32, ptr %i.z, align 4
  %i.bz = icmp eq i32 %i.by, 2
  %. = select i1 %i.bz, i16 5, i16 3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.cb = load i16, ptr %i.j, align 8
  %i.cc = load i16, ptr %i.k, align 2
  %i.cd = load i16, ptr %i.o, align 4
  %i.ce = load ptr, ptr %i.ba, align 8
  %i.cf = load ptr, ptr %i.bl, align 8
  %i.cg = tail call { i64, i64 } @SDL_CreateJoystickGUID(i16 noundef zeroext %., i16 noundef zeroext %i.cb, i16 noundef zeroext %i.cc, i16 noundef zeroext %i.cd, ptr noundef %i.ce, ptr noundef %i.cf, i8 noundef zeroext 104, i8 noundef zeroext 0) #8 ; 2 uses
  %i.ch = extractvalue { i64, i64 } %i.cg, 0
  %i.ci = extractvalue { i64, i64 } %i.cg, 1
  store i64 %i.ch, ptr %i.ca, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %i.ci, ptr %.sroa.4.0..sroa_idx, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store i32 1, ptr %i.cj, align 8
  %i.ck = load ptr, ptr %i.f, align 8
  %i.cl = load i16, ptr %i.j, align 8
  %i.cm = load i16, ptr %i.k, align 2
  %i.cn = load i32, ptr %i.q, align 8
  %i.co = load i32, ptr %i.r, align 4
  %i.cp = load i32, ptr %i.s, align 8
  %i.cq = load i32, ptr %i.t, align 4
  %i.cr = tail call fastcc i32 @SDL_GetJoystickGameControllerProtocol(ptr noundef %i.ck, i16 noundef zeroext %i.cl, i16 noundef zeroext %i.cm, i32 noundef %i.cn, i32 noundef %i.co, i32 noundef %i.cp, i32 noundef %i.cq)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 92
  store i32 %i.cr, ptr %i.cs, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i32 -1, ptr %i.ct, align 8
  %.not124 = icmp eq i32 %1, 0
  br i1 %.not124, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  store i32 %1, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  store ptr %2, ptr %i.cv, align 8
  %i.cw = load ptr, ptr %2, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 160
  store ptr %i.f, ptr %i.cx, align 8
  %exitcond.not = icmp eq i32 %1, 1
  br i1 %exitcond.not, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 160
  store ptr %i.f, ptr %i.da, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %bb.t, %.critedge
  %.not125 = icmp eq ptr %.0110, null
  br i1 %.not125, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.db = getelementptr inbounds nuw i8, ptr %.0110, i64 184
  store ptr %i.f, ptr %i.db, align 8
  br label %bb.w

bb.v:                                             ; preds = %.loopexit
  store ptr %i.f, ptr @SDL_HIDAPI_devices, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call fastcc void @HIDAPI_SetupDeviceDriver(ptr noundef %i.f, ptr noundef %i.a)
  %i.dc = load i8, ptr %i.a, align 1, !range !7, !noundef !8
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = load ptr, ptr %i.f, align 8
  %i.df = load i16, ptr %i.j, align 8
  %i.dg = zext i16 %i.df to i32
  %i.dh = load i16, ptr %i.k, align 2
  %i.di = zext i16 %i.dh to i32
  %i.dj = load i8, ptr %i.ac, align 4, !range !7, !noundef !8
  %i.dk = zext nneg i8 %i.dj to i32
  %i.dl = load i16, ptr %i.o, align 4
  %i.dm = zext i16 %i.dl to i32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %.not126 = icmp eq ptr %i.do, null
  %spec.select = select i1 %.not126, ptr @.str.20, ptr %i.do
  %i.dp = load i32, ptr %i.q, align 8
  %i.dq = load i32, ptr %i.r, align 4
  %i.dr = load i32, ptr %i.s, align 8
  %i.ds = load i32, ptr %i.t, align 4
  %i.dt = load i16, ptr %i.w, align 8
  %i.du = zext i16 %i.dt to i32
  %i.dv = load i16, ptr %i.x, align 2
  %i.dw = zext i16 %i.dv to i32
  %i.dx = load ptr, ptr %i.g, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.dz = load ptr, ptr %i.dy, align 8            ; 3 uses
  %.not127 = icmp eq ptr %i.dz, null
  br i1 %.not127, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = load i8, ptr %i.eb, align 8, !range !7, !noundef !8
  %i.ed = trunc nuw i8 %i.ec to i1
  %i.ee = select i1 %i.ed, ptr @.str.21, ptr @.str.22
  br label %.thread

.thread:                                          ; preds = %bb.x, %bb.y
  %i.ef = phi ptr [ %i.ea, %bb.y ], [ @.str.20, %bb.x ]
  %i.eg = phi ptr [ %i.ee, %bb.y ], [ @.str.22, %bb.x ]
  tail call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 7, ptr noundef nonnull @.str.19, ptr noundef %i.de, i32 noundef %i.dg, i32 noundef %i.di, i32 noundef %i.dk, i32 noundef %i.dm, ptr noundef nonnull %spec.select, i32 noundef %i.dp, i32 noundef %i.dq, i32 noundef %i.dr, i32 noundef %i.ds, i32 noundef %i.du, i32 noundef %i.dw, ptr noundef %i.dx, ptr noundef %i.ef, ptr noundef nonnull %i.eg) #8
  br label %bb.z

bb.z:                                             ; preds = %bb.r, %bb.w, %.thread, %bb.f, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ %i.f, %.thread ], [ null, %bb.r ], [ null, %bb.f ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.1
}

declare void @SDL_hid_free_enumeration_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @HIDAPI_DelDevice(ptr noundef %0) unnamed_addr #0 {
bb.a:
  tail call void @SDL_AssertJoysticksLocked() #8
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i16, ptr %i.b, align 8
  %i.d = zext i16 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.f = load i16, ptr %i.e, align 2
  %i.g = zext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.i = load i8, ptr %i.h, align 4, !range !7, !noundef !8
  %i.j = zext nneg i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.l = load i16, ptr %i.k, align 4
  %i.m = zext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not = icmp eq ptr %i.o, null
  %spec.select = select i1 %.not, ptr @.str.20, ptr %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load i32, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load i32, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.w = load i32, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = load i16, ptr %i.x, align 8
  %i.z = zext i16 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = zext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %.not48 = icmp eq ptr %i.ag, null
  br i1 %.not48, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !range !7, !noundef !8
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = select i1 %i.ak, ptr @.str.21, ptr @.str.22
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.am = phi ptr [ %i.ah, %bb.b ], [ @.str.20, %bb.a ]
  %i.an = phi ptr [ %i.al, %bb.b ], [ @.str.22, %bb.a ]
  tail call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 7, ptr noundef nonnull @.str.24, ptr noundef %i.a, i32 noundef %i.d, i32 noundef %i.g, i32 noundef %i.j, i32 noundef %i.m, ptr noundef nonnull %spec.select, i32 noundef %i.q, i32 noundef %i.s, i32 noundef %i.u, i32 noundef %i.w, i32 noundef %i.z, i32 noundef %i.ac, ptr noundef %i.ae, ptr noundef %i.am, ptr noundef nonnull %i.an) #8
  %.04354 = load ptr, ptr @SDL_HIDAPI_devices, align 8 ; 4 uses
  %.not5055 = icmp eq ptr %.04354, null
  br i1 %.not5055, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread
  %i.ao = icmp eq ptr %.04354, %0
  br i1 %i.ao, label %.lr.ph._crit_edge, label %.lr.ph70

.lr.ph:                                           ; preds = %.lr.ph70
  %i.ap = icmp eq ptr %.043, %0
  br i1 %i.ap, label %.lr.ph._crit_edge, label %.lr.ph70, !llvm.loop !41

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.04357.lcssa = phi ptr [ %.04354, %.lr.ph.preheader ], [ %.043, %.lr.ph ]
  %.04256.lcssa = phi ptr [ null, %.lr.ph.preheader ], [ %.0435769, %.lr.ph ] ; 2 uses
  %.not51 = icmp eq ptr %.04256.lcssa, null
  %i.aq = getelementptr inbounds nuw i8, ptr %.04357.lcssa, i64 184
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  br i1 %.not51, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %.04256.lcssa, i64 184
  store ptr %i.ar, ptr %i.as, align 8
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph._crit_edge
  store ptr %i.ar, ptr @SDL_HIDAPI_devices, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call fastcc void @HIDAPI_CleanupDeviceDriver(ptr noundef %0)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.au = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %i.at) #8
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph58, label %.preheader

.preheader:                                       ; preds = %.lr.ph58, %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph60, label %._crit_edge

.lr.ph60:                                         ; preds = %.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %bb.f

.lr.ph58:                                         ; preds = %bb.e, %.lr.ph58
  tail call void @SDL_Delay_REAL(i32 noundef 10) #8
  %i.ba = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %i.at) #8
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph58, label %.preheader, !llvm.loop !42

bb.f:                                             ; preds = %.lr.ph60, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.bc = load ptr, ptr %i.az, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 160
  store ptr null, ptr %i.bf, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = load i32, ptr %i.aw, align 8
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv.next, %i.bh
  br i1 %i.bi, label %bb.f, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.f, %.preheader
  tail call void @SDL_SetObjectValid(ptr noundef nonnull %0, i32 noundef 9, i1 noundef zeroext false) #8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.bk) #8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.bm) #8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.bo) #8
  %i.bp = load ptr, ptr %i.n, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.bp) #8
  %i.bq = load ptr, ptr %0, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.bq) #8
  %i.br = load ptr, ptr %i.ad, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.br) #8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bt = load ptr, ptr %i.bs, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.bt) #8
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #8
  br label %.loopexit

.lr.ph70:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0435769 = phi ptr [ %.043, %.lr.ph ], [ %.04354, %.lr.ph.preheader ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0435769, i64 184
  %.043 = load ptr, ptr %i.bu, align 8            ; 4 uses
  %.not50 = icmp eq ptr %.043, null
  br i1 %.not50, label %.loopexit, label %.lr.ph, !llvm.loop !41

.loopexit:                                        ; preds = %.lr.ph70, %.thread, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @HIDAPI_SetupDeviceDriver(ptr noundef nonnull %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %1) unnamed_addr #0 {
bb.a:
  store i8 0, ptr %1, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i16, ptr %i.c, align 8
  %i.e = icmp eq i16 %i.d, 1406
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.g = load i16, ptr %i.f, align 2
  switch i16 %i.g, label %bb.d [
    i16 8200, label %bb.e
    i16 8296, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.d
  %.036.in = phi ptr [ %i.h, %bb.d ], [ @SDL_HIDAPI_combine_joycons, %bb.c ], [ @SDL_HIDAPI_combine_joycons, %bb.c ]
  %.036 = load i8, ptr %.036.in, align 1, !range !7, !noundef !8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not47 = icmp eq ptr %i.j, null
  br i1 %.not47, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %.lr.ph

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !44

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not48 = icmp eq ptr %i.q, null
  br i1 %.not48, label %.thread.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i8, ptr %i.r, align 8, !range !7, !noundef !8
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.f, label %.thread.thread

.thread:                                          ; preds = %bb.f, %.preheader, %bb.e
  %i.u = trunc nuw i8 %.036 to i1
  br i1 %i.u, label %bb.q, label %.thread.thread

.thread.thread:                                   ; preds = %bb.g, %.lr.ph, %.thread
  tail call fastcc void @HIDAPI_CleanupDeviceDriver(ptr noundef %0)
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.v = tail call fastcc ptr @HIDAPI_GetDeviceDriver(ptr noundef %0)
  %.not43 = icmp eq ptr %i.v, null
  br i1 %.not43, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.x = load i32, ptr %i.w, align 8
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  tail call void @SDL_Delay_REAL(i32 noundef 10) #8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call ptr @SDL_hid_open_path_REAL(ptr noundef %i.aa) #8 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %.thread52

.thread52:                                        ; preds = %bb.j
  %i.ad = tail call i32 @SDL_hid_set_nonblocking_REAL(ptr noundef nonnull %i.ab, i32 noundef 1) #8 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.ab, ptr %i.ae, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %i.z, align 8
  %i.ag = tail call ptr @SDL_GetError_REAL() #8
  tail call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 7, ptr noundef nonnull @.str.15, ptr noundef %i.af, ptr noundef %i.ag) #8
  br label %bb.q

bb.l:                                             ; preds = %.thread52, %bb.i
  %i.ah = tail call fastcc ptr @HIDAPI_GetDeviceDriver(ptr noundef %0) ; 3 uses
  store ptr %i.ah, ptr %i.a, align 8
  %.not44 = icmp eq ptr %i.ah, null
  br i1 %.not44, label %.thread53, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call zeroext i1 %i.aj(ptr noundef nonnull %0) #8
  br i1 %i.ak, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @HIDAPI_CleanupDeviceDriver(ptr noundef %0)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pr = load ptr, ptr %i.a, align 8
  %.not45 = icmp eq ptr %.pr, null
  br i1 %.not45, label %.thread53, label %bb.q

.thread53:                                        ; preds = %bb.l, %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not46 = icmp eq ptr %i.am, null
  br i1 %.not46, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread53
  %i.an = tail call i32 @SDL_hid_close_REAL(ptr noundef nonnull %i.am) #8 ; 0 uses
  store ptr null, ptr %i.al, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.k, %.thread, %.thread.thread, %bb.o, %.thread53, %bb.p, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @HIDAPI_CleanupDeviceDriver(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %.not1822 = icmp eq i32 %i.e, 0
  br i1 %.not1822, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not19 = icmp eq ptr %i.f, null
  br i1 %.not19, label %.critedge.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = load i32, ptr %i.f, align 4
  tail call void @HIDAPI_JoystickDisconnected(ptr noundef nonnull %0, i32 noundef %i.g)
  %i.h = load i32, ptr %i.d, align 4
  %.not18 = icmp eq i32 %i.h, 0
  br i1 %.not18, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !45

.critedge.loopexit:                               ; preds = %bb.b, %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %i.i = phi ptr [ %.pre, %.critedge.loopexit ], [ %i.b, %.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull %0) #8
  store ptr null, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.m) #8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not20 = icmp eq ptr %i.o, null
  br i1 %.not20, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.p = tail call i32 @SDL_hid_close_REAL(ptr noundef nonnull %i.o) #8 ; 0 uses
  store ptr null, ptr %i.n, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not21 = icmp eq ptr %i.r, null
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.r) #8
  store ptr null, ptr %i.q, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = load ptr, ptr %i.l, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.s) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @HIDAPI_GetDeviceDriver(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load i16, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.i = load i16, ptr %i.h, align 4
  %i.j = load ptr, ptr %0, align 8
  %i.k = tail call zeroext i1 @SDL_ShouldIgnoreJoystick(i16 noundef zeroext %i.e, i16 noundef zeroext %i.g, i16 noundef zeroext %i.i, ptr noundef %i.j) #8
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i16, ptr %i.d, align 8
  switch i16 %i.l, label %bb.d [
    i16 10462, label %bb.f
    i16 1204, label %bb.f
    i16 14295, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load i16, ptr %i.m, align 8
  %switch = icmp ult i16 %i.n, 2
  br i1 %switch, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.p = load i16, ptr %i.o, align 2
  switch i16 %i.p, label %.loopexit [
    i16 0, label %bb.f
    i16 4, label %bb.f
    i16 5, label %bb.f
    i16 8, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.c, %bb.c, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 76
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.f ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @SDL_HIDAPI_drivers, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i8, ptr %i.x, align 8, !range !7, !noundef !8
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = load i32, ptr %i.q, align 4
  %i.ae = load i16, ptr %i.d, align 8
  %i.af = load i16, ptr %i.f, align 2
  %i.ag = load i16, ptr %i.h, align 4
  %i.ah = load i32, ptr %i.r, align 8
  %i.ai = load i32, ptr %i.s, align 4
  %i.aj = load i32, ptr %i.t, align 8
  %i.ak = load i32, ptr %i.u, align 4
  %i.al = tail call zeroext i1 %i.ab(ptr noundef nonnull %0, ptr noundef %i.ac, i32 noundef %i.ad, i16 noundef zeroext %i.ae, i16 noundef zeroext %i.af, i16 noundef zeroext %i.ag, i32 noundef %i.ah, i32 noundef %i.ai, i32 noundef %i.aj, i32 noundef %i.ak) #8
  br i1 %i.al, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 26
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !46

.loopexit:                                        ; preds = %bb.h, %bb.i, %bb.d, %bb.e, %bb.b, %bb.a
  %.2 = phi ptr [ null, %bb.e ], [ @SDL_HIDAPI_DriverCombined, %bb.a ], [ null, %bb.b ], [ null, %bb.d ], [ %i.w, %bb.h ], [ null, %bb.i ]
  ret ptr %.2
}

declare void @SDL_Delay_REAL(i32 noundef) local_unnamed_addr #2

declare ptr @SDL_hid_open_path_REAL(ptr noundef) local_unnamed_addr #2

declare ptr @SDL_GetError_REAL() local_unnamed_addr #2

declare i32 @SDL_hid_set_nonblocking_REAL(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SDL_hid_close_REAL(ptr noundef) local_unnamed_addr #2

declare void @SDL_LockMutex_REAL(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_ShouldIgnoreJoystick(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare ptr @SDL_iconv_string_REAL(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @SDL_wcslen_REAL(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_OutOfMemory_REAL() local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare noalias ptr @SDL_calloc_REAL(i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @SDL_SetObjectValid(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @SDL_CreateMutex_REAL() local_unnamed_addr #2

declare ptr @SDL_CreateJoystickName(i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @SDL_GetJoystickGameControllerProtocol(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %4, 255                      ; 2 uses
  %i.b = icmp eq i32 %5, 93
  %i.c = and i32 %6, -129
  %or.cond3 = icmp eq i32 %i.c, 1
  %i.d = and i1 %i.b, %or.cond3
  %or.cond33 = and i1 %i.a, %i.d
  br i1 %or.cond33, label %.preheader35, label %.loopexit36

.preheader35:                                     ; preds = %bb.a
  switch i16 %1, label %.loopexit [
    i16 121, label %.thread
    i16 849, label %.thread
    i16 1103, label %.thread
    i16 1118, label %.thread
    i16 1133, label %.thread
    i16 1390, label %.thread
    i16 1699, label %.thread
    i16 1848, label %.thread
    i16 2047, label %.thread
    i16 3695, label %.thread
    i16 3853, label %.thread
    i16 4152, label %.thread
    i16 4553, label %.thread
    i16 4617, label %.thread
    i16 4779, label %.thread
    i16 5168, label %.thread
    i16 5227, label %.thread
    i16 5426, label %.thread
    i16 5604, label %.thread
    i16 5678, label %.thread
    i16 5769, label %.thread
    i16 6473, label %.thread
    i16 7085, label %.thread
    i16 8406, label %.thread
    i16 9414, label %.thread
    i16 11298, label %.thread
    i16 11720, label %.thread
    i16 13623, label %.thread
    i16 13905, label %.thread
    i16 14295, label %.thread
    i16 14680, label %.thread
    i16 -26490, label %.thread
  ]

.loopexit36:                                      ; preds = %bb.a
  %i.e = icmp eq i32 %3, 0
  %i.f = icmp eq i32 %5, 71
  %i.g = and i1 %i.e, %i.f
  %i.h = icmp eq i32 %6, 208
  %i.i = and i1 %i.g, %i.h
  %or.cond9 = and i1 %i.a, %i.i
  br i1 %or.cond9, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit36
  switch i16 %1, label %.loopexit [
    i16 849, label %.thread
    i16 1008, label %.thread
    i16 1103, label %.thread
    i16 1118, label %.thread
    i16 1848, label %.thread
    i16 2821, label %.thread
    i16 3695, label %.thread
    i16 3853, label %.thread
    i16 4341, label %.thread
    i16 4617, label %.thread
    i16 5426, label %.thread
    i16 8406, label %.thread
    i16 9414, label %.thread
    i16 10571, label %.thread
    i16 11720, label %.thread
    i16 11812, label %.thread
    i16 11925, label %.thread
    i16 12933, label %.thread
    i16 13623, label %.thread
    i16 13905, label %.thread
    i16 13932, label %.thread
    i16 14680, label %.thread
  ]

.loopexit:                                        ; preds = %.preheader, %.preheader35, %.loopexit36
  %i.j = tail call i32 @SDL_GetGamepadTypeFromVIDPID(i16 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef %0, i1 noundef zeroext false) #8
  br label %.thread

.thread:                                          ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.preheader35, %.loopexit
  %.4 = phi i32 [ %i.j, %.loopexit ], [ 3, %.preheader ], [ 3, %.preheader ], [ 3, %.preheader ], [ 3, %.preheader ], [ 3, %.preheader ], [ 3, %.preheader ], [ 3, %.preheader ], [ 3, %.preheader ], [ 3, %.preheader ], [ 3, %.preheader ], [ 3, %.preheader ], [ 3, %.preheader ], [ 3, %.preheader ], [ 3, %.preheader ], [ 3, %.preheader ], [ 3, %.preheader ], [ 3, %.preheader ], [ 3, %.preheader ], [ 3, %.preheader ], [ 3, %.preheader ], [ 3, %.preheader ], [ 3, %.preheader ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ], [ 2, %.preheader35 ]
  ret i32 %.4
}

declare i32 @SDL_GetAtomicInt_REAL(ptr noundef) local_unnamed_addr #2

declare void @SDL_DestroyMutex_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @SDL_GetJoystickGUIDInfo_REAL(i64, i64, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_IsJoystickNintendoSwitchJoyConLeft(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @SDL_IsJoystickNintendoSwitchJoyConGrip(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @SDL_IsJoystickNintendoSwitchJoyConRight(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

declare i32 @SDL_SetAtomicInt_REAL(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_IsJoystickNVIDIASHIELDController(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @SDL_FindObject(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @SDL_HIDAPI_QuitRumble() local_unnamed_addr #2

declare void @SDL_RemoveHintCallback_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SDL_hid_exit_REAL() local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(1) }
attributes #10 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !{!0, !6}
!1 = distinct !{null}
!2 = distinct !{!2, !6}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{null}
!22 = distinct !{!22, !6, !29}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = !{!"llvm.loop.unswitch.partial.disable"}
!30 = distinct !{null}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6}
!42 = distinct !{!42, !6}
!43 = distinct !{!43, !6}
!44 = distinct !{!44, !6}
!45 = distinct !{!45, !6}
!46 = distinct !{!46, !6}
end_hunk_1
