Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_haptic?download=true
inline.NumInlined: 14
inline.NumDeleted: 5
begin_hunk_0_@SDL_OpenHapticFromMouse_REAL:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @SDL_OpenHaptic_REAL(i32 noundef %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.d, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_IsJoystickHaptic_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_LockJoysticks_REAL() #8
  %i.a = tail call zeroext i1 @SDL_IsJoystickValid(ptr noundef %0) #8
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef nonnull @.str.3, i1 noundef zeroext false) #8
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @SDL_GetJoystickID_REAL(ptr noundef %0) #8
  %i.d = tail call zeroext i1 @SDL_IsGamepad_REAL(i32 noundef %i.c) #8
  br i1 %i.d, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = tail call zeroext i1 @SDL_SYS_JoystickIsHaptic(ptr noundef %0) #8
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call zeroext i1 @SDL_HIDAPI_JoystickIsHaptic(ptr noundef %0) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.d ], [ %i.f, %bb.e ]
  tail call void @SDL_UnlockJoysticks_REAL() #8
  ret i1 %.0
}

declare void @SDL_LockJoysticks_REAL() local_unnamed_addr #1

declare zeroext i1 @SDL_IsJoystickValid(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare zeroext i1 @SDL_IsGamepad_REAL(i32 noundef) local_unnamed_addr #1

declare i32 @SDL_GetJoystickID_REAL(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @SDL_SYS_JoystickIsHaptic(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @SDL_HIDAPI_JoystickIsHaptic(ptr noundef) local_unnamed_addr #1

declare void @SDL_UnlockJoysticks_REAL() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_OpenHapticFromJoystick_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.SDL_Haptic_VIDPID_Naxes, align 2 ; 8 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  tail call void @SDL_LockJoysticks_REAL() #8
  %i.b = tail call zeroext i1 @SDL_IsJoystickHaptic_REAL(ptr noundef %0)
  br i1 %i.b, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.063.a = load ptr, ptr @SDL_haptics, align 8   ; 2 uses
  %.not64 = icmp eq ptr %.063.a, null
  br i1 %.not64, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4) #8 ; 0 uses
  tail call void @SDL_UnlockJoysticks_REAL() #8
  br label %SDL_SetHapticAutocenter_REAL.exit

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.065 = phi ptr [ %.0, %bb.e ], [ %.063.a, %.preheader ] ; 5 uses
  %i.d = tail call zeroext i1 @SDL_SYS_JoystickSameHaptic(ptr noundef nonnull %.065, ptr noundef %0) #8
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.e = tail call zeroext i1 @SDL_HIDAPI_JoystickSameHaptic(ptr noundef nonnull %.065, ptr noundef %0) #8
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.065, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8
  tail call void @SDL_UnlockJoysticks_REAL() #8
  br label %SDL_SetHapticAutocenter_REAL.exit

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.065, i64 128
  %.0 = load ptr, ptr %i.i, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.j = tail call noalias dereferenceable_or_null(136) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 136) #9 ; 25 uses
  %.not47 = icmp eq ptr %i.j, null
  br i1 %.not47, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  tail call void @SDL_UnlockJoysticks_REAL() #8
  br label %SDL_SetHapticAutocenter_REAL.exit

bb.g:                                             ; preds = %._crit_edge
  tail call void @SDL_SetObjectValid(ptr noundef nonnull %i.j, i32 noundef 6, i1 noundef zeroext true) #8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  store i32 -1, ptr %i.k, align 4
  %i.l = tail call zeroext i1 @SDL_HIDAPI_JoystickIsHaptic(ptr noundef %0) #8
  br i1 %i.l, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.m = tail call zeroext i1 @SDL_HIDAPI_HapticOpenFromJoystick(ptr noundef nonnull %i.j, ptr noundef %0) #8
  br i1 %i.m, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.5) #8 ; 0 uses
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.j) #8
  tail call void @SDL_UnlockJoysticks_REAL() #8
  br label %SDL_SetHapticAutocenter_REAL.exit

bb.j:                                             ; preds = %bb.g
  %i.o = tail call zeroext i1 @SDL_SYS_HapticOpenFromJoystick(ptr noundef nonnull %i.j, ptr noundef %0) #8
  br i1 %i.o, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.6) #8 ; 0 uses
  tail call void @SDL_SetObjectValid(ptr noundef nonnull %i.j, i32 noundef 6, i1 noundef zeroext false) #8
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.j) #8
  tail call void @SDL_UnlockJoysticks_REAL() #8
  br label %SDL_SetHapticAutocenter_REAL.exit

bb.l:                                             ; preds = %bb.h, %bb.j
  tail call void @SDL_UnlockJoysticks_REAL() #8
  %i.q = tail call zeroext i16 @SDL_GetJoystickVendor_REAL(ptr noundef %0) #8
  %i.r = tail call zeroext i16 @SDL_GetJoystickProduct_REAL(ptr noundef %0) #8
  %i.s = tail call i32 @SDL_GetNumJoystickAxes_REAL(ptr noundef %0) #8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4
  %i.t = tail call ptr @SDL_GetHint_REAL(ptr noundef nonnull @.str.22) #8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %SDL_Haptic_Load_Axes_List.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.w = call i32 (ptr, ptr, ...) @SDL_sscanf_REAL(ptr noundef nonnull %i.t, ptr noundef nonnull @.str.23, ptr noundef nonnull %1, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef nonnull %i.a) #8
  %i.x = icmp eq i32 %i.w, 3
  br i1 %i.x, label %.lr.ph.i.i, label %SDL_Haptic_Load_Axes_List.exit.thread.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.thread.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.thread.i.i ], [ 0, %.preheader.i.i ] ; 4 uses
  %.034.i = phi ptr [ %.135.i, %.thread.i.i ], [ null, %.preheader.i.i ] ; 3 uses
  %.01419.i.i = phi ptr [ %spec.select.i.i, %.thread.i.i ], [ %i.t, %.preheader.i.i ]
  %i.y = load i32, ptr %i.a, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %.01419.i.i, i64 %i.z ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.ab = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.ac = and i32 %i.ab, 7
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %.thread.i.i

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.ae = mul nuw nsw i64 %indvars.iv.i, 6
  %i.af = add nuw i64 %i.ae, 48
  %i.ag = call ptr @SDL_realloc_REAL(ptr noundef %.034.i, i64 noundef %i.af) #10 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.ag, null
  br i1 %.not17.i.i, label %SDL_Haptic_Load_Axes_List.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.m, %.lr.ph.i.i
  %.135.i = phi ptr [ %.034.i, %.lr.ph.i.i ], [ %i.ag, %bb.m ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [6 x i8], ptr %.135.i, i64 %indvars.iv.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.ah, ptr noundef nonnull align 2 dereferenceable(6) %1, i64 6, i1 false)
  %i.ai = load i8, ptr %i.aa, align 1
  %i.aj = icmp eq i8 %i.ai, 44
  %spec.select.idx.i.i = zext i1 %i.aj to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 %spec.select.idx.i.i ; 2 uses
  %i.ak = call i32 (ptr, ptr, ...) @SDL_sscanf_REAL(ptr noundef nonnull %spec.select.i.i, ptr noundef nonnull @.str.23, ptr noundef nonnull %1, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef nonnull %i.a) #8
  %i.al = icmp eq i32 %i.ak, 3
  br i1 %i.al, label %.lr.ph.i.i, label %SDL_Haptic_Load_Axes_List.exit.split.loop.exit55.i, !llvm.loop !11

SDL_Haptic_Load_Axes_List.exit.thread.i:          ; preds = %.preheader.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %SDL_Haptic_Get_Naxes.exit.thread

SDL_Haptic_Load_Axes_List.exit.split.loop.exit55.i: ; preds = %.thread.i.i
  %indvars.le.i = trunc i64 %indvars.iv.next.i to i32
  br label %SDL_Haptic_Load_Axes_List.exit.i

SDL_Haptic_Load_Axes_List.exit.i:                 ; preds = %bb.m, %SDL_Haptic_Load_Axes_List.exit.split.loop.exit55.i
  %.137.i = phi i32 [ %indvars.le.i, %SDL_Haptic_Load_Axes_List.exit.split.loop.exit55.i ], [ %i.ab, %bb.m ] ; 2 uses
  %.2.i = phi ptr [ %.135.i, %SDL_Haptic_Load_Axes_List.exit.split.loop.exit55.i ], [ %.034.i, %bb.m ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  %i.am = icmp ne i32 %.137.i, 0
  %i.an = icmp ne ptr %.2.i, null
  %or.cond.i = and i1 %i.am, %i.an
  br i1 %or.cond.i, label %.lr.ph.preheader.i.i, label %SDL_Haptic_Get_Naxes.exit.thread

.lr.ph.preheader.i.i:                             ; preds = %SDL_Haptic_Load_Axes_List.exit.i
  %wide.trip.count.i.i = zext nneg i32 %.137.i to i64 ; 2 uses
  br label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %bb.o, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.o ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [6 x i8], ptr %.2.i, i64 %indvars.iv.i.i ; 3 uses
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = icmp eq i16 %i.ap, -1
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i15.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = icmp eq i16 %i.as, -1
  br i1 %i.at, label %SDL_Haptic_Naxes_List_Index.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i15.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph.preheader.i19.i, label %.lr.ph.i15.i, !llvm.loop !12

SDL_Haptic_Naxes_List_Index.exit.i:               ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = zext i16 %i.av to i32
  br label %.lr.ph.preheader.i19.i

.lr.ph.preheader.i19.i:                           ; preds = %bb.o, %SDL_Haptic_Naxes_List_Index.exit.i
  %.0.i = phi i32 [ %i.aw, %SDL_Haptic_Naxes_List_Index.exit.i ], [ -1, %bb.o ]
  br label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %bb.q, %.lr.ph.preheader.i19.i
  %indvars.iv.i22.i = phi i64 [ 0, %.lr.ph.preheader.i19.i ], [ %indvars.iv.next.i23.i, %bb.q ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [6 x i8], ptr %.2.i, i64 %indvars.iv.i22.i ; 3 uses
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = icmp eq i16 %i.ay, %i.q
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i21.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = icmp eq i16 %i.bb, %i.r
  br i1 %i.bc, label %SDL_Haptic_Naxes_List_Index.exit26.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i21.i
  %indvars.iv.next.i23.i = add nuw nsw i64 %indvars.iv.i22.i, 1 ; 2 uses
  %exitcond.not.i24.i = icmp eq i64 %indvars.iv.next.i23.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i24.i, label %SDL_Haptic_Get_Naxes.exit, label %.lr.ph.i21.i, !llvm.loop !12

SDL_Haptic_Naxes_List_Index.exit26.i:             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = zext i16 %i.be to i32
  br label %SDL_Haptic_Get_Naxes.exit

SDL_Haptic_Get_Naxes.exit:                        ; preds = %bb.q, %SDL_Haptic_Naxes_List_Index.exit26.i
  %.1.i = phi i32 [ %i.bf, %SDL_Haptic_Naxes_List_Index.exit26.i ], [ %.0.i, %bb.q ] ; 4 uses
  call void @SDL_free_REAL(ptr noundef nonnull %.2.i) #8
  %i.bg = icmp sgt i32 %.1.i, 0
  br i1 %i.bg, label %bb.r, label %SDL_Haptic_Get_Naxes.exit.thread

bb.r:                                             ; preds = %SDL_Haptic_Get_Naxes.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i32 %.1.i, ptr %i.bh, align 4
  br label %SDL_Haptic_Get_Naxes.exit.thread

SDL_Haptic_Get_Naxes.exit.thread:                 ; preds = %SDL_Haptic_Load_Axes_List.exit.thread.i, %SDL_Haptic_Load_Axes_List.exit.i, %bb.r, %SDL_Haptic_Get_Naxes.exit
  %.09.i53 = phi i32 [ %.1.i, %SDL_Haptic_Get_Naxes.exit ], [ %.1.i, %bb.r ], [ -1, %SDL_Haptic_Load_Axes_List.exit.i ], [ -1, %SDL_Haptic_Load_Axes_List.exit.thread.i ]
  %i.bi = icmp sgt i32 %i.s, -1
  %i.bj = icmp sgt i32 %.09.i53, %i.s
  %or.cond = and i1 %i.bi, %i.bj
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %SDL_Haptic_Get_Naxes.exit.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i32 %i.s, ptr %i.bk, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %SDL_Haptic_Get_Naxes.exit.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 8
  %i.bo = load ptr, ptr @SDL_haptics, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store ptr %i.bo, ptr %i.bp, align 8
  store ptr %i.j, ptr @SDL_haptics, align 8
  call void @SDL_SetObjectValid(ptr noundef nonnull %i.j, i32 noundef 6, i1 noundef zeroext true) #8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8            ; 2 uses
  %i.bs = and i32 %i.br, 65536
  %.not48 = icmp eq i32 %i.bs, 0
  br i1 %.not48, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = call zeroext i1 @SDL_SetHapticGain_REAL(ptr noundef nonnull %i.j, i32 noundef 100) ; 0 uses
  %.pre = load i32, ptr %i.bq, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bu = phi i32 [ %.pre, %bb.u ], [ %i.br, %bb.t ] ; 2 uses
  %i.bv = and i32 %i.bu, 131072
  %.not49 = icmp eq i32 %i.bv, 0
  br i1 %.not49, label %SDL_SetHapticAutocenter_REAL.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = load i8, ptr @SDL_object_validation, align 1, !range !5, !noundef !6
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.w
  %i.by = call zeroext i1 @SDL_FindObject(ptr noundef nonnull %i.j, i32 noundef 6) #8
  br i1 %i.by, label %SDL_ObjectValid.exit.i.SDL_ObjectValid.exit.thread.i_crit_edge, label %SDL_ObjectValid.exit.thread12.i

SDL_ObjectValid.exit.i.SDL_ObjectValid.exit.thread.i_crit_edge: ; preds = %SDL_ObjectValid.exit.i
  %.pre73 = load i32, ptr %i.bq, align 8
  br label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.thread12.i:                  ; preds = %SDL_ObjectValid.exit.i
  %i.bz = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %SDL_SetHapticAutocenter_REAL.exit

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i.SDL_ObjectValid.exit.thread.i_crit_edge, %bb.w
  %i.ca = phi i32 [ %.pre73, %SDL_ObjectValid.exit.i.SDL_ObjectValid.exit.thread.i_crit_edge ], [ %i.bu, %bb.w ]
  %i.cb = and i32 %i.ca, 131072
  %.not.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.cc = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.16) #8 ; 0 uses
  br label %SDL_SetHapticAutocenter_REAL.exit

bb.y:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.cd = call zeroext i1 @SDL_HIDAPI_HapticIsHidapi(ptr noundef nonnull %i.j) #8
  br i1 %i.cd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ce = call zeroext i1 @SDL_HIDAPI_HapticSetAutocenter(ptr noundef nonnull %i.j, i32 noundef 0) #8 ; 0 uses
  br label %SDL_SetHapticAutocenter_REAL.exit

bb.aa:                                            ; preds = %bb.y
  %i.cf = call zeroext i1 @SDL_SYS_HapticSetAutocenter(ptr noundef nonnull %i.j, i32 noundef 0) #8 ; 0 uses
  br label %SDL_SetHapticAutocenter_REAL.exit

SDL_SetHapticAutocenter_REAL.exit:                ; preds = %bb.aa, %bb.z, %bb.x, %SDL_ObjectValid.exit.thread12.i, %bb.v, %bb.k, %bb.i, %bb.f, %bb.d, %bb.b
  %.043 = phi ptr [ %.065, %bb.d ], [ null, %bb.b ], [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.f ], [ %i.j, %bb.v ], [ %i.j, %SDL_ObjectValid.exit.thread12.i ], [ %i.j, %bb.x ], [ %i.j, %bb.z ], [ %i.j, %bb.aa ]
  ret ptr %.043
}

declare zeroext i1 @SDL_SYS_JoystickSameHaptic(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @SDL_HIDAPI_JoystickSameHaptic(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @SDL_HIDAPI_HapticOpenFromJoystick(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @SDL_SYS_HapticOpenFromJoystick(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i16 @SDL_GetJoystickVendor_REAL(ptr noundef) local_unnamed_addr #1

declare zeroext i16 @SDL_GetJoystickProduct_REAL(ptr noundef) local_unnamed_addr #1

declare i32 @SDL_GetNumJoystickAxes_REAL(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @SDL_CloseHaptic_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread29, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 6) #8
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread29

SDL_ObjectValid.exit.thread29:                    ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %bb.k

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = icmp sgt i32 %i.f, 1
  br i1 %i.h, label %bb.k, label %bb.c

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.i = tail call zeroext i1 @SDL_HIDAPI_HapticIsHidapi(ptr noundef nonnull %0) #8
  br i1 %i.i, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @SDL_HIDAPI_HapticClose(ptr noundef nonnull %0) #8
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %i.n = phi i32 [ %i.k, %.lr.ph ], [ %i.t, %bb.g ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.o = load ptr, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = load ptr, ptr %i.q, align 8
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @SDL_DestroyHapticEffect_REAL(ptr noundef nonnull %0, i32 noundef %i.s)
  %.pre = load i32, ptr %i.j, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.t = phi i32 [ %i.n, %bb.e ], [ %.pre, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %bb.e, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.g, %.preheader
  tail call void @SDL_SYS_HapticClose(ptr noundef nonnull %0) #8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.d
  tail call void @SDL_SetObjectValid(ptr noundef nonnull %0, i32 noundef 6, i1 noundef zeroext false) #8
  %.02334 = load ptr, ptr @SDL_haptics, align 8   ; 4 uses
  %.not2635 = icmp eq ptr %.02334, null
  br i1 %.not2635, label %.loopexit, label %.lr.ph39.preheader

.lr.ph39.preheader:                               ; preds = %bb.h
  %i.w = icmp eq ptr %0, %.02334
  br i1 %i.w, label %.lr.ph39._crit_edge, label %.lr.ph49

.lr.ph39:                                         ; preds = %.lr.ph49
  %i.x = icmp eq ptr %0, %.023
  br i1 %i.x, label %.lr.ph39._crit_edge, label %.lr.ph49, !llvm.loop !14

.lr.ph39._crit_edge:                              ; preds = %.lr.ph39, %.lr.ph39.preheader
  %.02337.lcssa = phi ptr [ %.02334, %.lr.ph39.preheader ], [ %.023, %.lr.ph39 ]
  %.036.lcssa = phi ptr [ null, %.lr.ph39.preheader ], [ %.0233748, %.lr.ph39 ] ; 2 uses
  %.not27 = icmp eq ptr %.036.lcssa, null
  br i1 %.not27, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph39._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %.02337.lcssa, i64 128
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.036.lcssa, i64 128
  store ptr %i.z, ptr %i.aa, align 8
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph39._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = load ptr, ptr %i.ab, align 8
  store ptr %i.ac, ptr @SDL_haptics, align 8
  br label %.loopexit

end_hunk_0
