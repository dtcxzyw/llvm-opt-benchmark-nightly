Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_hidapi_ps4?download=true
inline.NumInlined: 36
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@HIDAPI_DriverPS4_RumbleJoystick:bb.a
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = lshr i16 %2, 8
  %i.h = trunc nuw i16 %i.g to i8                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i8 %i.h, ptr %i.i, align 4
  %i.j = lshr i16 %3, 8
  %i.k = trunc nuw i16 %i.j to i8                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 101
  store i8 %i.k, ptr %i.l, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.m, i8 0, i64 17, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 %i.h, ptr %i.n, align 1
  store i8 %i.k, ptr %4, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.p = load i8, ptr %i.o, align 4, !range !3, !noundef !4
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %HIDAPI_DriverPS4_UpdateEffects.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 102
  %i.s = load i8, ptr %i.r, align 2, !range !3, !noundef !4
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 103
  %i.v = load i8, ptr %i.u, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %i.v, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.y = load i8, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 3
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 105
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ac = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, -1
  br i1 %i.ad, label %bb.g, label %SetLedsForPlayerIndex.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ae = urem i32 %i.ac, 7
  %i.af = zext nneg i32 %i.ae to i64
  br label %SetLedsForPlayerIndex.exit.i

SetLedsForPlayerIndex.exit.i:                     ; preds = %bb.g, %bb.f
  %.0.i.i = phi i64 [ %i.af, %bb.g ], [ 0, %bb.f ]
  %i.ag = getelementptr inbounds nuw [3 x i8], ptr @SetLedsForPlayerIndex.colors, i64 %.0.i.i ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 3
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %SetLedsForPlayerIndex.exit.i, %bb.e
  %.sink.in.i = phi ptr [ %i.aa, %bb.e ], [ %i.am, %SetLedsForPlayerIndex.exit.i ]
  %.sink.i = load i8, ptr %.sink.in.i, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 %.sink.i, ptr %i.an, align 1
  br label %HIDAPI_DriverPS4_UpdateEffects.exit

HIDAPI_DriverPS4_UpdateEffects.exit:              ; preds = %bb.c, %.sink.split.i
  %i.ao = call fastcc zeroext i1 @HIDAPI_DriverPS4_InternalSendJoystickEffect(ptr noundef nonnull %i.b, ptr noundef nonnull %4, i32 noundef 19, i32 noundef 1, i1 noundef zeroext true), !inline_history !5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.h

bb.h:                                             ; preds = %HIDAPI_DriverPS4_UpdateEffects.exit, %bb.b
  %.0 = phi i1 [ %i.ao, %HIDAPI_DriverPS4_UpdateEffects.exit ], [ %i.f, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverPS4_RumbleJoystickTriggers(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i16 zeroext %2, i16 zeroext %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4) #8
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 19) i32 @HIDAPI_DriverPS4_GetJoystickCapabilities(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 34
  %i.d = load i8, ptr %i.c, align 2, !range !3, !noundef !4
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.g = load i8, ptr %i.f, align 4, !range !3, !noundef !4
  %i.h = shl nuw nsw i8 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  %i.j = load i8, ptr %i.i, align 1, !range !3, !noundef !4
  %i.k = shl nuw nsw i8 %i.j, 4
  %spec.select67 = or disjoint i8 %i.k, %i.h
  %spec.select6 = zext nneg i8 %spec.select67 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %spec.select6, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverPS4_SetJoystickLED(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #0 {
bb.a:
  %5 = alloca %struct.DS4EffectsState_t, align 1  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i8, ptr %i.c, align 4, !range !3, !noundef !4
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4) #8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 102
  store i8 1, ptr %i.g, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 103
  store i8 %2, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i8 %3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 105
  store i8 %4, ptr %i.j, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %5, i8 0, i64 19, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  %i.l = load i8, ptr %i.k, align 1, !range !3, !noundef !4
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %HIDAPI_DriverPS4_UpdateEffects.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.o = load i8, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.o, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 101
  %i.r = load i8, ptr %i.q, align 1
  store i8 %i.r, ptr %5, align 1
  br label %HIDAPI_DriverPS4_UpdateEffects.exit

HIDAPI_DriverPS4_UpdateEffects.exit:              ; preds = %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %2, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 3
  store i8 %3, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 %4, ptr %i.u, align 1
  %i.v = call fastcc zeroext i1 @HIDAPI_DriverPS4_InternalSendJoystickEffect(ptr noundef nonnull %i.b, ptr noundef nonnull %5, i32 noundef 19, i32 noundef 2, i1 noundef zeroext true), !inline_history !5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.e

bb.e:                                             ; preds = %HIDAPI_DriverPS4_UpdateEffects.exit, %bb.b
  %.0 = phi i1 [ %i.v, %HIDAPI_DriverPS4_UpdateEffects.exit ], [ %i.f, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverPS4_SendJoystickEffect(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.e = load i8, ptr %i.d, align 4, !range !3, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.h = load i8, ptr %i.g, align 2, !range !3, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.split7, label %.split

.split:                                           ; preds = %bb.a, %bb.b
  br label %.split7

.split7:                                          ; preds = %bb.b, %.split
  %.sink = phi i32 [ 7, %.split ], [ 3, %bb.b ]
  %i.j = tail call fastcc zeroext i1 @HIDAPI_DriverPS4_InternalSendJoystickEffect(ptr noundef nonnull %i.b, ptr noundef %2, i32 noundef %3, i32 noundef %.sink, i1 noundef zeroext true)
  ret i1 %i.j
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverPS4_SetJoystickSensorsEnabled(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i1 noundef zeroext %2) #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 52 uses
  %3 = alloca %struct.DS4EffectsState_t, align 1  ; 11 uses
  %i.b = zext i1 %2 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.b, label %HIDAPI_DriverPS4_UpdateEnhancedModeOnApplicationUsage.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @HIDAPI_DriverPS4_SetEnhancedModeAvailable(ptr noundef nonnull %i.d), !inline_history !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 33 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !range !3, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %HIDAPI_DriverPS4_SetEnhancedReportHint.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.h, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %3, i8 0, i64 19, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 21
  %i.l = load i8, ptr %i.k, align 1, !range !3, !noundef !4
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.o = load i8, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.o, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 101
  %i.r = load i8, ptr %i.q, align 1
  store i8 %i.r, ptr %3, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.t = load i8, ptr %i.s, align 4, !range !3, !noundef !4
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %HIDAPI_DriverPS4_UpdateEffects.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 102
  %i.w = load i8, ptr %i.v, align 2, !range !3, !noundef !4
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 103
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.z, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.ac = load i8, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 105
  br label %HIDAPI_DriverPS4_UpdateEffects.exit.sink.split.i.i

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.ag = load i32, ptr %i.af, align 8            ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, -1
  br i1 %i.ah, label %bb.i, label %SetLedsForPlayerIndex.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ai = urem i32 %i.ag, 7
  %i.aj = zext nneg i32 %i.ai to i64
  br label %SetLedsForPlayerIndex.exit.i.i.i

SetLedsForPlayerIndex.exit.i.i.i:                 ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i64 [ %i.aj, %bb.i ], [ 0, %bb.h ]
  %i.ak = getelementptr inbounds nuw [3 x i8], ptr @SetLedsForPlayerIndex.colors, i64 %.0.i.i.i.i ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.al, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %i.ao, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  br label %HIDAPI_DriverPS4_UpdateEffects.exit.sink.split.i.i

HIDAPI_DriverPS4_UpdateEffects.exit.sink.split.i.i: ; preds = %SetLedsForPlayerIndex.exit.i.i.i, %bb.g
  %.sink.in.i.i = phi ptr [ %i.ae, %bb.g ], [ %i.aq, %SetLedsForPlayerIndex.exit.i.i.i ]
  %.sink.i.i = load i8, ptr %.sink.in.i.i, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 %.sink.i.i, ptr %i.ar, align 1
  br label %HIDAPI_DriverPS4_UpdateEffects.exit.i.i

HIDAPI_DriverPS4_UpdateEffects.exit.i.i:          ; preds = %HIDAPI_DriverPS4_UpdateEffects.exit.sink.split.i.i, %bb.e
  %i.as = call fastcc zeroext i1 @HIDAPI_DriverPS4_InternalSendJoystickEffect(ptr noundef nonnull %i.d, ptr noundef nonnull %3, i32 noundef 19, i32 noundef 0, i1 noundef zeroext false), !inline_history !11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %HIDAPI_DriverPS4_SetEnhancedReportHint.exit.i

HIDAPI_DriverPS4_SetEnhancedReportHint.exit.i:    ; preds = %HIDAPI_DriverPS4_UpdateEffects.exit.i.i, %bb.b
  store i32 1, ptr %i.e, align 4
  br label %HIDAPI_DriverPS4_UpdateEnhancedModeOnApplicationUsage.exit

HIDAPI_DriverPS4_UpdateEnhancedModeOnApplicationUsage.exit: ; preds = %bb.a, %HIDAPI_DriverPS4_SetEnhancedReportHint.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 19
  %i.au = load i8, ptr %i.at, align 1, !range !3, !noundef !4
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.j, label %bb.l

bb.j:                                             ; preds = %HIDAPI_DriverPS4_UpdateEnhancedModeOnApplicationUsage.exit
  br i1 %2, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  %i.ax = load i8, ptr %i.aw, align 1, !range !3, !noundef !4
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %.thread, label %.thread10

bb.l:                                             ; preds = %HIDAPI_DriverPS4_UpdateEnhancedModeOnApplicationUsage.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 25
  %i.ba = load i8, ptr %i.az, align 1, !range !3, !noundef !4
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.n, label %bb.m

.thread10:                                        ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 25
  %i.bd = load i8, ptr %i.bc, align 1, !range !3, !noundef !4
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %.thread, label %bb.m

bb.m:                                             ; preds = %.thread10, %bb.l
  %i.bf = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4) #8
  br label %bb.bw

bb.n:                                             ; preds = %bb.l
  br i1 %2, label %.thread, label %.critedge

.thread:                                          ; preds = %.thread10, %bb.k, %bb.n
  %i.bg = load ptr, ptr %i.c, align 8             ; 45 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 18
  %i.bi = load i8, ptr %i.bh, align 2, !range !3, !noundef !4
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %.preheader.i.i, label %HIDAPI_DriverPS4_LoadOfficialCalibrationData.exit.i

.preheader.i.i:                                   ; preds = %.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 10 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 6 uses
  %i.bm = load ptr, ptr %i.bk, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  store i8 2, ptr %i.a, align 16
  %i.bn = call i32 @SDL_hid_get_feature_report_REAL(ptr noundef %i.bm, ptr noundef nonnull %i.a, i64 noundef 64) #8 ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 35
  br i1 %i.bo, label %HIDAPI_DriverPS4_LoadOfficialCalibrationData.exit.i, label %bb.o

bb.o:                                             ; preds = %.preheader.i.i
  %i.bp = load i8, ptr %i.bl, align 4, !range !3, !noundef !4
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.p, label %.lr.ph.preheader.i.i

bb.p:                                             ; preds = %bb.o
  %i.br = load ptr, ptr %i.bk, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  store i8 5, ptr %i.a, align 16
  %i.bs = call i32 @SDL_hid_get_feature_report_REAL(ptr noundef %i.br, ptr noundef nonnull %i.a, i64 noundef 64) #8 ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 35
  br i1 %i.bt, label %HIDAPI_DriverPS4_LoadOfficialCalibrationData.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.p, %bb.o
  %.089.i.i = phi i32 [ %i.bs, %bb.p ], [ %i.bn, %bb.o ]
  %wide.trip.count.i.i = zext nneg i32 %.089.i.i to i64
  br label %.lr.ph.i.i

bb.q:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !12

.lr.ph.i.i:                                       ; preds = %bb.q, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.q ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i
  %i.bv = load i8, ptr %i.bu, align 1
  %.not.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i, label %bb.q, label %.thread.i.i

._crit_edge.i.i:                                  ; preds = %bb.q
  call void @SDL_Delay_REAL(i32 noundef 2) #8
  %i.bw = load ptr, ptr %i.bk, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  store i8 2, ptr %i.a, align 16
  %i.bx = call i32 @SDL_hid_get_feature_report_REAL(ptr noundef %i.bw, ptr noundef nonnull %i.a, i64 noundef 64) #8 ; 2 uses
  %i.by = icmp slt i32 %i.bx, 35
  br i1 %i.by, label %HIDAPI_DriverPS4_LoadOfficialCalibrationData.exit.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.bz = load i8, ptr %i.bl, align 4, !range !3, !noundef !4
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.s, label %.lr.ph.preheader.1.i.i

bb.s:                                             ; preds = %bb.r
  %i.cb = load ptr, ptr %i.bk, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  store i8 5, ptr %i.a, align 16
  %i.cc = call i32 @SDL_hid_get_feature_report_REAL(ptr noundef %i.cb, ptr noundef nonnull %i.a, i64 noundef 64) #8 ; 2 uses
  %i.cd = icmp slt i32 %i.cc, 35
  br i1 %i.cd, label %HIDAPI_DriverPS4_LoadOfficialCalibrationData.exit.i, label %.lr.ph.preheader.1.i.i

.lr.ph.preheader.1.i.i:                           ; preds = %bb.s, %bb.r
  %.089.1.i.i = phi i32 [ %i.cc, %bb.s ], [ %i.bx, %bb.r ]
  %wide.trip.count.1.i.i = zext nneg i32 %.089.1.i.i to i64
  br label %.lr.ph.1.i.i

.lr.ph.1.i.i:                                     ; preds = %bb.t, %.lr.ph.preheader.1.i.i
  %indvars.iv.1.i.i = phi i64 [ 0, %.lr.ph.preheader.1.i.i ], [ %indvars.iv.next.1.i.i, %bb.t ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.1.i.i
  %i.cf = load i8, ptr %i.ce, align 1
  %.not.1.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not.1.i.i, label %bb.t, label %.thread.i.i

bb.t:                                             ; preds = %.lr.ph.1.i.i
  %indvars.iv.next.1.i.i = add nuw nsw i64 %indvars.iv.1.i.i, 1 ; 2 uses
  %exitcond.1.not.i.i = icmp eq i64 %indvars.iv.next.1.i.i, %wide.trip.count.1.i.i
  br i1 %exitcond.1.not.i.i, label %._crit_edge.1.i.i, label %.lr.ph.1.i.i, !llvm.loop !12

._crit_edge.1.i.i:                                ; preds = %bb.t
  call void @SDL_Delay_REAL(i32 noundef 2) #8
  %i.cg = load ptr, ptr %i.bk, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  store i8 2, ptr %i.a, align 16
  %i.ch = call i32 @SDL_hid_get_feature_report_REAL(ptr noundef %i.cg, ptr noundef nonnull %i.a, i64 noundef 64) #8 ; 2 uses
  %i.ci = icmp slt i32 %i.ch, 35
  br i1 %i.ci, label %HIDAPI_DriverPS4_LoadOfficialCalibrationData.exit.i, label %bb.u

bb.u:                                             ; preds = %._crit_edge.1.i.i
  %i.cj = load i8, ptr %i.bl, align 4, !range !3, !noundef !4
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.v, label %.lr.ph.preheader.2.i.i

bb.v:                                             ; preds = %bb.u
  %i.cl = load ptr, ptr %i.bk, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  store i8 5, ptr %i.a, align 16
  %i.cm = call i32 @SDL_hid_get_feature_report_REAL(ptr noundef %i.cl, ptr noundef nonnull %i.a, i64 noundef 64) #8 ; 2 uses
  %i.cn = icmp slt i32 %i.cm, 35
  br i1 %i.cn, label %HIDAPI_DriverPS4_LoadOfficialCalibrationData.exit.i, label %.lr.ph.preheader.2.i.i

.lr.ph.preheader.2.i.i:                           ; preds = %bb.v, %bb.u
  %.089.2.i.i = phi i32 [ %i.cm, %bb.v ], [ %i.ch, %bb.u ]
  %wide.trip.count.2.i.i = zext nneg i32 %.089.2.i.i to i64
  br label %.lr.ph.2.i.i

.lr.ph.2.i.i:                                     ; preds = %bb.w, %.lr.ph.preheader.2.i.i
  %indvars.iv.2.i.i = phi i64 [ 0, %.lr.ph.preheader.2.i.i ], [ %indvars.iv.next.2.i.i, %bb.w ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.2.i.i
  %i.cp = load i8, ptr %i.co, align 1
  %.not.2.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not.2.i.i, label %bb.w, label %.thread.i.i

bb.w:                                             ; preds = %.lr.ph.2.i.i
  %indvars.iv.next.2.i.i = add nuw nsw i64 %indvars.iv.2.i.i, 1 ; 2 uses
  %exitcond.2.not.i.i = icmp eq i64 %indvars.iv.next.2.i.i, %wide.trip.count.2.i.i
  br i1 %exitcond.2.not.i.i, label %._crit_edge.2.i.i, label %.lr.ph.2.i.i, !llvm.loop !12

._crit_edge.2.i.i:                                ; preds = %bb.w
  call void @SDL_Delay_REAL(i32 noundef 2) #8
  %i.cq = load ptr, ptr %i.bk, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  store i8 2, ptr %i.a, align 16
  %i.cr = call i32 @SDL_hid_get_feature_report_REAL(ptr noundef %i.cq, ptr noundef nonnull %i.a, i64 noundef 64) #8 ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 35
  br i1 %i.cs, label %HIDAPI_DriverPS4_LoadOfficialCalibrationData.exit.i, label %bb.x

bb.x:                                             ; preds = %._crit_edge.2.i.i
  %i.ct = load i8, ptr %i.bl, align 4, !range !3, !noundef !4
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.y, label %.lr.ph.preheader.3.i.i

bb.y:                                             ; preds = %bb.x
  %i.cv = load ptr, ptr %i.bk, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  store i8 5, ptr %i.a, align 16
  %i.cw = call i32 @SDL_hid_get_feature_report_REAL(ptr noundef %i.cv, ptr noundef nonnull %i.a, i64 noundef 64) #8 ; 2 uses
  %i.cx = icmp slt i32 %i.cw, 35
  br i1 %i.cx, label %HIDAPI_DriverPS4_LoadOfficialCalibrationData.exit.i, label %.lr.ph.preheader.3.i.i

.lr.ph.preheader.3.i.i:                           ; preds = %bb.y, %bb.x
  %.089.3.i.i = phi i32 [ %i.cw, %bb.y ], [ %i.cr, %bb.x ]
  %wide.trip.count.3.i.i = zext nneg i32 %.089.3.i.i to i64
  br label %.lr.ph.3.i.i

.lr.ph.3.i.i:                                     ; preds = %bb.z, %.lr.ph.preheader.3.i.i
  %indvars.iv.3.i.i = phi i64 [ 0, %.lr.ph.preheader.3.i.i ], [ %indvars.iv.next.3.i.i, %bb.z ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.3.i.i
  %i.cz = load i8, ptr %i.cy, align 1
  %.not.3.i.i = icmp eq i8 %i.cz, 0
  br i1 %.not.3.i.i, label %bb.z, label %.thread.i.i

bb.z:                                             ; preds = %.lr.ph.3.i.i
  %indvars.iv.next.3.i.i = add nuw nsw i64 %indvars.iv.3.i.i, 1 ; 2 uses
  %exitcond.3.not.i.i = icmp eq i64 %indvars.iv.next.3.i.i, %wide.trip.count.3.i.i
  br i1 %exitcond.3.not.i.i, label %._crit_edge.3.i.i, label %.lr.ph.3.i.i, !llvm.loop !12

._crit_edge.3.i.i:                                ; preds = %bb.z
  call void @SDL_Delay_REAL(i32 noundef 2) #8
  %i.da = load ptr, ptr %i.bk, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  store i8 2, ptr %i.a, align 16
  %i.db = call i32 @SDL_hid_get_feature_report_REAL(ptr noundef %i.da, ptr noundef nonnull %i.a, i64 noundef 64) #8 ; 2 uses
  %i.dc = icmp slt i32 %i.db, 35
  br i1 %i.dc, label %HIDAPI_DriverPS4_LoadOfficialCalibrationData.exit.i, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.3.i.i
  %i.dd = load i8, ptr %i.bl, align 4, !range !3, !noundef !4
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.ab, label %.lr.ph.preheader.4.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.df = load ptr, ptr %i.bk, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  store i8 5, ptr %i.a, align 16
  %i.dg = call i32 @SDL_hid_get_feature_report_REAL(ptr noundef %i.df, ptr noundef nonnull %i.a, i64 noundef 64) #8 ; 2 uses
  %i.dh = icmp slt i32 %i.dg, 35
  br i1 %i.dh, label %HIDAPI_DriverPS4_LoadOfficialCalibrationData.exit.i, label %.lr.ph.preheader.4.i.i

.lr.ph.preheader.4.i.i:                           ; preds = %bb.ab, %bb.aa
  %.089.4.i.i = phi i32 [ %i.dg, %bb.ab ], [ %i.db, %bb.aa ]
  %wide.trip.count.4.i.i = zext nneg i32 %.089.4.i.i to i64
  br label %.lr.ph.4.i.i

.lr.ph.4.i.i:                                     ; preds = %bb.ac, %.lr.ph.preheader.4.i.i
  %indvars.iv.4.i.i = phi i64 [ 0, %.lr.ph.preheader.4.i.i ], [ %indvars.iv.next.4.i.i, %bb.ac ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.4.i.i
  %i.dj = load i8, ptr %i.di, align 1
  %.not.4.i.i = icmp eq i8 %i.dj, 0
  br i1 %.not.4.i.i, label %bb.ac, label %.thread.i.i

bb.ac:                                            ; preds = %.lr.ph.4.i.i
  %indvars.iv.next.4.i.i = add nuw nsw i64 %indvars.iv.4.i.i, 1 ; 2 uses
  %exitcond.4.not.i.i = icmp eq i64 %indvars.iv.next.4.i.i, %wide.trip.count.4.i.i
  br i1 %exitcond.4.not.i.i, label %._crit_edge.4.i.i, label %.lr.ph.4.i.i, !llvm.loop !12

._crit_edge.4.i.i:                                ; preds = %bb.ac
  call void @SDL_Delay_REAL(i32 noundef 2) #8
  br label %.loopexit.i.i

.thread.i.i:                                      ; preds = %.lr.ph.i.i, %.lr.ph.1.i.i, %.lr.ph.2.i.i, %.lr.ph.3.i.i, %.lr.ph.4.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.dl = load i16, ptr %i.dk, align 1            ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.dn = load i16, ptr %i.dm, align 1            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.dp = load i16, ptr %i.do, align 1            ; 2 uses
  %i.dq = load i8, ptr %i.bl, align 4, !range !3, !noundef !4
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.thread.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.dt = load i8, ptr %i.ds, align 8, !range !3, !noundef !4
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %.thread.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.dw = load i16, ptr %i.dv, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %4 = load <4 x i16>, ptr %i.dx, align 1
  %5 = shufflevector <4 x i16> %4, <4 x i16> poison, <4 x i32> <i32 2, i32 0, i32 3, i32 1>
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.dz = load i16, ptr %i.dy, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %6 = load <4 x i16>, ptr %i.ea, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.093.i.i = phi i16 [ %i.dw, %bb.ae ], [ %i.dz, %bb.af ]
  %7 = phi <4 x i16> [ %5, %bb.ae ], [ %6, %bb.af ] ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.ec = load i16, ptr %i.eb, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %i.ee = load i16, ptr %i.ed, align 1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %i.eg = load i16, ptr %i.ef, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.ei = load i16, ptr %i.eh, align 1            ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.ek = load i16, ptr %i.ej, align 1
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 27 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %i.en = load <4 x i16>, ptr %i.el, align 1      ; 2 uses
  %i.eo = load i16, ptr %i.em, align 1
  %i.ep = load i16, ptr %i.el, align 1
  %i.eq = sext i16 %i.ee to i32
  %i.er = sext i16 %i.eg to i32
  %i.es = add nsw i32 %i.er, %i.eq
  %i.et = sitofp i32 %i.es to float
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bg, i64 106
  %i.ev = load <2 x i16>, ptr %i.eu, align 2
  %i.ew = uitofp <2 x i16> %i.ev to <2 x float>   ; 2 uses
  %i.ex = extractelement <2 x float> %i.ew, i64 1
  %i.ey = fmul nnan float %i.ex, %i.et
  %i.ez = extractelement <2 x float> %i.ew, i64 0
  %i.fa = fdiv float %i.ey, %i.ez                 ; 3 uses
  %i.fb = sext i16 %.093.i.i to i32
  %i.fc = sext i16 %i.dl to i32                   ; 2 uses
  %i.fd = sub nsw i32 %i.fb, %i.fc
  %i.fe = call i32 @SDL_abs_REAL(i32 noundef %i.fd) #8
  %8 = extractelement <4 x i16> %7, i64 0
  %i.ff = sext i16 %8 to i32
  %i.fg = sub nsw i32 %i.ff, %i.fc
  %i.fh = call i32 @SDL_abs_REAL(i32 noundef %i.fg) #8
  %i.fi = add nsw i32 %i.fh, %i.fe                ; 2 uses
  %.not103.i.i = icmp eq i32 %i.fi, 0
  br i1 %.not103.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fj = sitofp i32 %i.fi to float
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i16 %i.dl, ptr %i.fk, align 8
  %i.fl = fdiv float %i.fa, %i.fj
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  store float %i.fl, ptr %i.fm, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %9 = extractelement <4 x i16> %7, i64 1
  %i.fn = sext i16 %9 to i32
  %i.fo = sext i16 %i.dn to i32                   ; 2 uses
  %i.fp = sub nsw i32 %i.fn, %i.fo
  %i.fq = call i32 @SDL_abs_REAL(i32 noundef %i.fp) #8
  %10 = extractelement <4 x i16> %7, i64 2
  %i.fr = sext i16 %10 to i32
  %i.fs = sub nsw i32 %i.fr, %i.fo
  %i.ft = call i32 @SDL_abs_REAL(i32 noundef %i.fs) #8
  %i.fu = add nsw i32 %i.ft, %i.fq                ; 2 uses
  %.not104.i.i = icmp eq i32 %i.fu, 0
  br i1 %.not104.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fv = sitofp i32 %i.fu to float
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store i16 %i.dn, ptr %i.fw, align 8
  %i.fx = fdiv float %i.fa, %i.fv
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bg, i64 52
  store float %i.fx, ptr %i.fy, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %11 = extractelement <4 x i16> %7, i64 3
  %i.fz = sext i16 %11 to i32
  %i.ga = sext i16 %i.dp to i32                   ; 2 uses
  %i.gb = sub nsw i32 %i.fz, %i.ga
  %i.gc = call i32 @SDL_abs_REAL(i32 noundef %i.gb) #8
  %i.gd = sext i16 %i.ec to i32
  %i.ge = sub nsw i32 %i.gd, %i.ga
  %i.gf = call i32 @SDL_abs_REAL(i32 noundef %i.ge) #8
  %i.gg = add nsw i32 %i.gf, %i.gc                ; 2 uses
  %.not105.i.i = icmp eq i32 %i.gg, 0
  br i1 %.not105.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gh = sitofp i32 %i.gg to float
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  store i16 %i.dp, ptr %i.gi, align 8
  %i.gj = fdiv float %i.fa, %i.gh
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bg, i64 60
  store float %i.gj, ptr %i.gk, align 4
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.gl = sub i16 %i.ei, %i.ek                    ; 2 uses
  %i.gm = sdiv i16 %i.gl, -2
  %i.gn = add i16 %i.gm, %i.ei
  %i.go = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bg, i64 64 ; 2 uses
  store i16 %i.gn, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bg, i64 110
  %i.gr = load <2 x i16>, ptr %i.gq, align 2
  %i.gs = uitofp <2 x i16> %i.gr to <2 x float>   ; 2 uses
  %i.gt = extractelement <2 x float> %i.gs, i64 1
  %i.gu = fmul nnan float %i.gt, 2.000000e+00
  %i.gv = extractelement <2 x float> %i.gs, i64 0
  %i.gw = fdiv float %i.gu, %i.gv                 ; 2 uses
  %i.gx = sitofp i16 %i.gl to float
  %i.gy = fdiv float %i.gw, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bg, i64 68 ; 2 uses
  store float %i.gy, ptr %i.gz, align 4
  %i.ha = shufflevector <4 x i16> %i.en, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.hb = shufflevector <4 x i16> %i.en, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.hc = sub <2 x i16> %i.ha, %i.hb              ; 3 uses
  %i.hd = extractelement <2 x i16> %i.hc, i64 0
  %i.he = sdiv i16 %i.hd, -2
  %i.hf = add i16 %i.he, %i.ep
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bg, i64 72 ; 2 uses
  store i16 %i.hf, ptr %i.hg, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bg, i64 76 ; 2 uses
  %i.hi = extractelement <2 x i16> %i.hc, i64 1
  %i.hj = sdiv i16 %i.hi, -2
  %i.hk = add i16 %i.hj, %i.eo
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bg, i64 80 ; 2 uses
  store i16 %i.hk, ptr %i.hl, align 8
  %i.hm = sitofp <2 x i16> %i.hc to <2 x float>
  %i.hn = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.ho = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hp = fdiv <2 x float> %i.ho, %i.hm           ; 2 uses
  %i.hq = extractelement <2 x float> %i.hp, i64 0
  store float %i.hq, ptr %i.hh, align 4
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bg, i64 84 ; 2 uses
  %i.hs = extractelement <2 x float> %i.hp, i64 1
  store float %i.hs, ptr %i.hr, align 4
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bg, i64 39 ; 7 uses
  store i8 1, ptr %i.ht, align 1
  %i.hu = load i16, ptr %i.go, align 8
  %i.hv = sext i16 %i.hu to i32
  %i.hw = call i32 @SDL_abs_REAL(i32 noundef %i.hv) #8
  %i.hx = icmp sgt i32 %i.hw, 1024
  br i1 %i.hx, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hy = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  %i.hz = load float, ptr %i.hy, align 4
  %i.ia = fsub float 1.000000e+00, %i.hz
  %i.ib = call float @SDL_fabsf_REAL(float noundef %i.ia) #8
  %i.ic = fcmp ogt float %i.ib, 5.000000e-01
  br i1 %i.ic, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.am
  store i8 0, ptr %i.ht, align 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.id = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.ie = load i16, ptr %i.id, align 8
  %i.if = sext i16 %i.ie to i32
  %i.ig = call i32 @SDL_abs_REAL(i32 noundef %i.if) #8
  %i.ih = icmp sgt i32 %i.ig, 1024
  br i1 %i.ih, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ii = getelementptr inbounds nuw i8, ptr %i.bg, i64 52
  %i.ij = load float, ptr %i.ii, align 4
  %i.ik = fsub float 1.000000e+00, %i.ij
  %i.il = call float @SDL_fabsf_REAL(float noundef %i.ik) #8
  %i.im = fcmp ogt float %i.il, 5.000000e-01
  br i1 %i.im, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  store i8 0, ptr %i.ht, align 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.in = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.io = load i16, ptr %i.in, align 8
  %i.ip = sext i16 %i.io to i32
  %i.iq = call i32 @SDL_abs_REAL(i32 noundef %i.ip) #8
  %i.ir = icmp sgt i32 %i.iq, 1024
  br i1 %i.ir, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.is = getelementptr inbounds nuw i8, ptr %i.bg, i64 60
  %i.it = load float, ptr %i.is, align 4
  %i.iu = fsub float 1.000000e+00, %i.it
  %i.iv = call float @SDL_fabsf_REAL(float noundef %i.iu) #8
  %i.iw = fcmp ogt float %i.iv, 5.000000e-01
  br i1 %i.iw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at, %bb.as
  store i8 0, ptr %i.ht, align 1
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ix = load i16, ptr %i.gp, align 8
  %i.iy = sext i16 %i.ix to i32
  %i.iz = call i32 @SDL_abs_REAL(i32 noundef %i.iy) #8
  %i.ja = icmp sgt i32 %i.iz, 1024
  br i1 %i.ja, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jb = load float, ptr %i.gz, align 4
  %i.jc = fsub float 1.000000e+00, %i.jb
  %i.jd = call float @SDL_fabsf_REAL(float noundef %i.jc) #8
  %i.je = fcmp ogt float %i.jd, 5.000000e-01
  br i1 %i.je, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store i8 0, ptr %i.ht, align 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.jf = load i16, ptr %i.hg, align 8
  %i.jg = sext i16 %i.jf to i32
  %i.jh = call i32 @SDL_abs_REAL(i32 noundef %i.jg) #8
  %i.ji = icmp sgt i32 %i.jh, 1024
  br i1 %i.ji, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jj = load float, ptr %i.hh, align 4
  %i.jk = fsub float 1.000000e+00, %i.jj
  %i.jl = call float @SDL_fabsf_REAL(float noundef %i.jk) #8
  %i.jm = fcmp ogt float %i.jl, 5.000000e-01
  br i1 %i.jm, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.ay
  store i8 0, ptr %i.ht, align 1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.jn = load i16, ptr %i.hl, align 8
  %i.jo = sext i16 %i.jn to i32
  %i.jp = call i32 @SDL_abs_REAL(i32 noundef %i.jo) #8
  %i.jq = icmp sgt i32 %i.jp, 1024
  br i1 %i.jq, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jr = load float, ptr %i.hr, align 4
  %i.js = fsub float 1.000000e+00, %i.jr
  %i.jt = call float @SDL_fabsf_REAL(float noundef %i.js) #8
  %i.ju = fcmp ogt float %i.jt, 5.000000e-01
  br i1 %i.ju, label %bb.bd, label %.loopexit.i.i

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  store i8 0, ptr %i.ht, align 1
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.bd, %bb.bc, %._crit_edge.4.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.bg, i64 39
  %i.jw = load i8, ptr %i.jv, align 1, !range !3, !noundef !4
  %i.jx = trunc nuw i8 %i.jw to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br i1 %i.jx, label %.loopexit.i..loopexit_crit_edge.i, label %.preheader.i

.loopexit.i..loopexit_crit_edge.i:                ; preds = %.loopexit.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4
  %i.jy = fpext float %.pre.i to double
  br label %bb.be

HIDAPI_DriverPS4_LoadOfficialCalibrationData.exit.i: ; preds = %bb.ab, %._crit_edge.3.i.i, %bb.y, %._crit_edge.2.i.i, %bb.v, %._crit_edge.1.i.i, %bb.s, %._crit_edge.i.i, %bb.p, %.preheader.i.i, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.preheader.i

.preheader.i:                                     ; preds = %HIDAPI_DriverPS4_LoadOfficialCalibrationData.exit.i, %.loopexit.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i16 0, ptr %i.jz, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  store float 1.000000e+00, ptr %i.ka, align 4
  %i.kb = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store i16 0, ptr %i.kb, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.bg, i64 52
  store float 1.000000e+00, ptr %i.kc, align 4
end_hunk_0
begin_hunk_1_@HIDAPI_DriverPS4_HandleStatePacket:bb.a
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = icmp sgt i8 %i.ai, -1                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 39
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = shl nuw nsw i32 %i.ap, 8
  %i.ar = and i32 %i.aq, 3840
  %i.as = or disjoint i32 %i.ar, %i.am
  %i.at = lshr i32 %i.ap, 4
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 41
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 4
  %i.ay = or disjoint i32 %i.ax, %i.at
  %i.az = uitofp nneg i32 %i.as to float
  %i.ba = fmul nnan float %i.az, f0x3A088889
  %i.bb = uitofp nneg i32 %i.ay to float
  %i.bc = fmul nnan float %i.bb, f0x3A8E7835
  %i.bd = select i1 %i.aj, float 1.000000e+00, float 0.000000e+00
  tail call void @SDL_SendJoystickTouchpad(i64 noundef %i.c, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 1, i1 noundef zeroext %i.aj, float noundef %i.ba, float noundef %i.bc, float noundef %i.bd) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bf = load i8, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1             ; 3 uses
  %.not = icmp eq i8 %i.bf, %i.bh
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = lshr i8 %i.bh, 4                        ; 2 uses
  %i.bj = zext nneg i8 %i.bi to i32               ; 2 uses
  %i.bk = trunc i8 %i.bi to i1
  tail call void @SDL_SendJoystickButton(i64 noundef %i.c, ptr noundef nonnull %0, i8 noundef zeroext 2, i1 noundef zeroext %i.bk) #8
  %i.bl = and i32 %i.bj, 2
  %i.bm = icmp ne i32 %i.bl, 0
  tail call void @SDL_SendJoystickButton(i64 noundef %i.c, ptr noundef nonnull %0, i8 noundef zeroext 0, i1 noundef zeroext %i.bm) #8
  %i.bn = and i32 %i.bj, 4
  %i.bo = icmp ne i32 %i.bn, 0
  tail call void @SDL_SendJoystickButton(i64 noundef %i.c, ptr noundef nonnull %0, i8 noundef zeroext 1, i1 noundef zeroext %i.bo) #8
  %i.bp = icmp slt i8 %i.bh, 0
  tail call void @SDL_SendJoystickButton(i64 noundef %i.c, ptr noundef nonnull %0, i8 noundef zeroext 3, i1 noundef zeroext %i.bp) #8
  %i.bq = load i8, ptr %i.bg, align 1
  %i.br = and i8 %i.bq, 15                        ; 2 uses
  %i.bs = icmp samesign ult i8 %i.br, 8
  %i.bt = shl nuw nsw i8 %i.br, 3
  %switch.shiftamt = zext nneg i8 %i.bt to i64
  %switch.downshift = lshr i64 650783357575234305, %switch.shiftamt
  %switch.masked = trunc i64 %switch.downshift to i8
  %.0181.a = select i1 %i.bs, i8 %switch.masked, i8 0
  tail call void @SDL_SendJoystickHat(i64 noundef %i.c, ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext %.0181.a) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 137
  %i.bv = load i8, ptr %i.bu, align 1             ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1             ; 4 uses
  %.not193 = icmp eq i8 %i.bv, %i.bx
  br i1 %.not193, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.by = zext i8 %i.bx to i32                    ; 4 uses
  %i.bz = trunc i8 %i.bx to i1
  tail call void @SDL_SendJoystickButton(i64 noundef %i.c, ptr noundef nonnull %0, i8 noundef zeroext 9, i1 noundef zeroext %i.bz) #8
  %i.ca = and i32 %i.by, 2
  %i.cb = icmp ne i32 %i.ca, 0
  tail call void @SDL_SendJoystickButton(i64 noundef %i.c, ptr noundef nonnull %0, i8 noundef zeroext 10, i1 noundef zeroext %i.cb) #8
  %i.cc = and i32 %i.by, 16
  %i.cd = icmp ne i32 %i.cc, 0
  tail call void @SDL_SendJoystickButton(i64 noundef %i.c, ptr noundef nonnull %0, i8 noundef zeroext 4, i1 noundef zeroext %i.cd) #8
  %i.ce = and i32 %i.by, 32
  %i.cf = icmp ne i32 %i.ce, 0
  tail call void @SDL_SendJoystickButton(i64 noundef %i.c, ptr noundef nonnull %0, i8 noundef zeroext 6, i1 noundef zeroext %i.cf) #8
  %i.cg = and i32 %i.by, 64
  %i.ch = icmp ne i32 %i.cg, 0
  tail call void @SDL_SendJoystickButton(i64 noundef %i.c, ptr noundef nonnull %0, i8 noundef zeroext 7, i1 noundef zeroext %i.ch) #8
  %i.ci = icmp slt i8 %i.bx, 0
  tail call void @SDL_SendJoystickButton(i64 noundef %i.c, ptr noundef nonnull %0, i8 noundef zeroext 8, i1 noundef zeroext %i.ci) #8
  %.pre = load i8, ptr %i.bw, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cj = phi i8 [ %.pre, %bb.h ], [ %i.bv, %bb.g ]
  %i.ck = zext i8 %i.cj to i32                    ; 3 uses
  %i.cl = and i32 %i.ck, 12
  %.not194 = icmp eq i32 %i.cl, 0
  br i1 %.not194, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  %i.cm = and i32 %i.ck, 4
  %.not195 = icmp eq i32 %i.cm, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 7
  %.pre1 = load i8, ptr %.phi.trans.insert, align 1 ; 2 uses
  %i.cn = icmp ne i8 %.pre1, 0
  %i.co = select i1 %.not195, i1 true, i1 %i.cn
  %i.cp = select i1 %i.co, i8 %.pre1, i8 -1
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %i.cp, ptr %i.cq, align 1
  %i.cr = and i32 %i.ck, 8
  %.not196 = icmp eq i32 %i.cr, 0
  %.phi.trans.insert3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre4 = load i8, ptr %.phi.trans.insert3, align 1 ; 2 uses
  %i.cs = icmp ne i8 %.pre4, 0
  %i.ct = select i1 %.not196, i1 true, i1 %i.cs
  %i.cu = select i1 %i.ct, i8 %.pre4, i8 -1
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.cu, ptr %i.cv, align 1
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 138
  %i.cx = load i8, ptr %i.cw, align 2
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.cz = load i8, ptr %i.cy, align 1             ; 3 uses
  %.not197 = icmp eq i8 %i.cx, %i.cz
  br i1 %.not197, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.da = trunc i8 %i.cz to i1
  tail call void @SDL_SendJoystickButton(i64 noundef %i.c, ptr noundef nonnull %0, i8 noundef zeroext 5, i1 noundef zeroext %i.da) #8
  %i.db = and i8 %i.cz, 2
  %i.dc = icmp ne i8 %i.db, 0
  tail call void @SDL_SendJoystickButton(i64 noundef %i.c, ptr noundef nonnull %0, i8 noundef zeroext 11, i1 noundef zeroext %i.dc) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = zext i8 %i.de to i16
  %i.dg = mul nuw i16 %i.df, 257
  %i.dh = xor i16 %i.dg, -32768
  tail call void @SDL_SendJoystickAxis(i64 noundef %i.c, ptr noundef nonnull %0, i8 noundef zeroext 4, i16 noundef signext %i.dh) #8
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = zext i8 %i.dj to i16
  %i.dl = mul nuw i16 %i.dk, 257
  %i.dm = xor i16 %i.dl, -32768
  tail call void @SDL_SendJoystickAxis(i64 noundef %i.c, ptr noundef nonnull %0, i8 noundef zeroext 5, i16 noundef signext %i.dm) #8
  %i.dn = load i8, ptr %2, align 1
  %i.do = zext i8 %i.dn to i16
  %i.dp = mul nuw i16 %i.do, 257
  %i.dq = xor i16 %i.dp, -32768
  tail call void @SDL_SendJoystickAxis(i64 noundef %i.c, ptr noundef nonnull %0, i8 noundef zeroext 0, i16 noundef signext %i.dq) #8
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = zext i8 %i.ds to i16
  %i.du = mul nuw i16 %i.dt, 257
  %i.dv = xor i16 %i.du, -32768
  tail call void @SDL_SendJoystickAxis(i64 noundef %i.c, ptr noundef nonnull %0, i8 noundef zeroext 1, i16 noundef signext %i.dv) #8
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = zext i8 %i.dx to i16
  %i.dz = mul nuw i16 %i.dy, 257
  %i.ea = xor i16 %i.dz, -32768
  tail call void @SDL_SendJoystickAxis(i64 noundef %i.c, ptr noundef nonnull %0, i8 noundef zeroext 2, i16 noundef signext %i.ea) #8
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = zext i8 %i.ec to i16
  %i.ee = mul nuw i16 %i.ed, 257
  %i.ef = xor i16 %i.ee, -32768
  tail call void @SDL_SendJoystickAxis(i64 noundef %i.c, ptr noundef nonnull %0, i8 noundef zeroext 3, i16 noundef signext %i.ef) #8
  br i1 %i.d, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.eh = load i8, ptr %i.eg, align 2, !range !3, !noundef !4
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ek = load i8, ptr %i.ej, align 8, !range !3, !noundef !4
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 29
  %i.en = load i8, ptr %i.em, align 1             ; 2 uses
  %i.eo = and i8 %i.en, 15                        ; 4 uses
  %i.ep = and i8 %i.en, 16
  %.not198 = icmp eq i8 %i.ep, 0
  br i1 %.not198, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eq = icmp samesign ult i8 %i.eo, 11
  br i1 %i.eq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %narrow200 = mul nuw nsw i8 %i.eo, 10
  %i.er = tail call i8 @llvm.umin.i8(i8 %narrow200, i8 95)
  %narrow201 = add nuw nsw i8 %i.er, 5
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.es = icmp eq i8 %i.eo, 11                    ; 2 uses
  %. = select i1 %i.es, i32 4, i32 0
  %.204 = select i1 %i.es, i8 100, i8 0
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %narrow = mul nuw i8 %i.eo, 10
  %i.et = tail call i8 @llvm.umin.i8(i8 %narrow, i8 95)
  %narrow199 = add nuw nsw i8 %i.et, 5
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.s
  %.0182 = phi i32 [ 3, %bb.q ], [ %., %bb.r ], [ 1, %bb.s ]
  %.0181.shrunk = phi i8 [ %narrow201, %bb.q ], [ %.204, %bb.r ], [ %narrow199, %bb.s ]
  %.0183 = zext nneg i8 %.0181.shrunk to i32
  tail call void @SDL_SendJoystickPowerInfo(ptr noundef nonnull %0, i32 noundef %.0182, i32 noundef %.0183) #8
  br label %bb.u

bb.u:                                             ; preds = %bb.m, %bb.n, %bb.t
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ev = load i8, ptr %i.eu, align 4, !range !3, !noundef !4
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ey = load i16, ptr %i.ex, align 1            ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.fa = load i16, ptr %i.ez, align 8
  %.0 = sub i16 %i.ey, %i.fa
  %i.fb = zext i16 %.0 to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = add i64 %i.fd, %i.fb                    ; 2 uses
  store i64 %i.fe, ptr %i.fc, align 8
  store i16 %i.ey, ptr %i.ez, align 8
  %i.ff = mul i64 %i.fe, 16000
  %i.fg = udiv i64 %i.ff, 3                       ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fj = load i16, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.fl = load float, ptr %i.fk, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fn = load i16, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.fp = load float, ptr %i.fo, align 4
  %i.fq = load <2 x i16>, ptr %i.fh, align 1
  %i.fr = sitofp <2 x i16> %i.fq to <2 x float>
  %i.fs = insertelement <2 x i16> poison, i16 %i.fj, i64 0
  %i.ft = insertelement <2 x i16> %i.fs, i16 %i.fn, i64 1
  %i.fu = sitofp <2 x i16> %i.ft to <2 x float>
  %i.fv = fsub nnan <2 x float> %i.fr, %i.fu
  %i.fw = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.fp, i64 1
  %i.fy = fmul <2 x float> %i.fx, %i.fv
  store <2 x float> %i.fy, ptr %i.a, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ga = load i16, ptr %i.fz, align 1
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gc = sitofp i16 %i.ga to float
  %i.gd = load i16, ptr %i.gb, align 8
  %i.ge = sitofp i16 %i.gd to float
  %i.gf = fsub nnan float %i.gc, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.gh = load float, ptr %i.gg, align 4
  %i.gi = fmul float %i.gh, %i.gf
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store float %i.gi, ptr %i.gj, align 8
  call void @SDL_SendJoystickSensor(i64 noundef %i.c, ptr noundef nonnull %0, i32 noundef 2, i64 noundef %i.fg, ptr noundef nonnull %i.a, i32 noundef 3) #8
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gm = load i16, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.go = load float, ptr %i.gn, align 4
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gq = load i16, ptr %i.gp, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.gs = load float, ptr %i.gr, align 4
  %i.gt = load <2 x i16>, ptr %i.gk, align 1
  %i.gu = sitofp <2 x i16> %i.gt to <2 x float>
  %i.gv = insertelement <2 x i16> poison, i16 %i.gm, i64 0
  %i.gw = insertelement <2 x i16> %i.gv, i16 %i.gq, i64 1
  %i.gx = sitofp <2 x i16> %i.gw to <2 x float>
  %i.gy = fsub nnan <2 x float> %i.gu, %i.gx
  %i.gz = insertelement <2 x float> poison, float %i.go, i64 0
  %i.ha = insertelement <2 x float> %i.gz, float %i.gs, i64 1
  %i.hb = fmul <2 x float> %i.ha, %i.gy
  store <2 x float> %i.hb, ptr %i.a, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.hd = load i16, ptr %i.hc, align 1
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.hf = sitofp i16 %i.hd to float
  %i.hg = load i16, ptr %i.he, align 8
  %i.hh = sitofp i16 %i.hg to float
  %i.hi = fsub nnan float %i.hf, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.hk = load float, ptr %i.hj, align 4
  %i.hl = fmul float %i.hk, %i.hi
  store float %i.hl, ptr %i.gj, align 8
  call void @SDL_SendJoystickSensor(i64 noundef %i.c, ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.fg, ptr noundef nonnull %i.a, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.v, %bb.u
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hn = load i8, ptr %i.hm, align 8, !range !3, !noundef !4
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.critedge
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 43
  %i.hq = load i8, ptr %i.hp, align 1
  %i.hr = zext i8 %i.hq to i16
  %i.hs = mul nuw i16 %i.hr, 257
  %i.ht = xor i16 %i.hs, -32768
  call void @SDL_SendJoystickAxis(i64 noundef %i.c, ptr noundef nonnull %0, i8 noundef zeroext 2, i16 noundef signext %i.ht) #8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.critedge
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.hv = load i8, ptr %i.hu, align 2, !range !3, !noundef !4
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 42
  %i.hy = load i8, ptr %i.hx, align 1             ; 2 uses
  %i.hz = icmp ult i8 %i.hy, 5
  br i1 %i.hz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ia = zext nneg i8 %i.hy to i64
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr @HIDAPI_DriverPS4_HandleStatePacket.effects_mappings, i64 %i.ia
  %i.ic = load i16, ptr %i.ib, align 2
  call void @SDL_SendJoystickAxis(i64 noundef %i.c, ptr noundef nonnull %0, i8 noundef zeroext 3, i16 noundef signext %i.ic) #8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.ie = load i8, ptr %i.id, align 1, !range !3, !noundef !4
  %i.if = trunc nuw i8 %i.ie to i1
  br i1 %i.if, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1
  %i.ii = uitofp i8 %i.ih to float
  %i.ij = fdiv nnan float %i.ii, 2.550000e+02
  %i.ik = fmul nnan float %i.ij, 9.806650e+00
  store float %i.ik, ptr %i.b, align 4
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store <2 x float> zeroinitializer, ptr %i.il, align 4
  call void @SDL_SendJoystickSensor(i64 noundef %i.c, ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.c, ptr noundef nonnull %i.b, i32 noundef 3) #8
  %i.im = load i8, ptr %i.ig, align 1
  %i.in = icmp ugt i8 %i.im, -16
  call void @SDL_SendJoystickButton(i64 noundef %i.c, ptr noundef nonnull %0, i8 noundef zeroext 10, i1 noundef zeroext %i.in) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(54) %i.io, ptr noundef nonnull align 1 dereferenceable(54) %2, i64 54, i1 false)
  ret void
}

declare void @HIDAPI_JoystickDisconnected(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @SDL_memcmp_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @SDL_GetTicksNS_REAL() local_unnamed_addr #3

declare void @SDL_SendJoystickTouchpad(i64 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @SDL_SendJoystickButton(i64 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare void @SDL_SendJoystickHat(i64 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @SDL_SendJoystickAxis(i64 noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #3

declare void @SDL_SendJoystickPowerInfo(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @SDL_SendJoystickSensor(i64 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_HIDAPI_LockRumble() local_unnamed_addr #3

declare i32 @SDL_HIDAPI_SendRumbleAndUnlock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @SDL_AssertJoysticksLocked() local_unnamed_addr #3

declare i32 @SDL_GetJoystickPlayerIndex_REAL(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @SDL_PS4ReportIntervalHintChanged(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca %struct.DS4EffectsState_t, align 1  ; 11 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @SDL_atoi_REAL(ptr noundef nonnull %3) #8
  %switch.tableidx = add i32 %i.a, -1             ; 2 uses
  %i.b = icmp ult i32 %switch.tableidx, 4
  br i1 %i.b, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.c = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.SDL_PS4ReportIntervalHintChanged, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b, %bb.a
end_hunk_1
