Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_gamepad?download=true
inline.NumInlined: 83
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@SDL_GetGamepadAxis_REAL:bb.a
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %.not88 = icmp eq i32 %i.ab, %i.ai
  %or.cond121 = select i1 %.not87, i1 %.not88, i1 false
  br i1 %or.cond121, label %bb.m, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %i.aj = sub nsw i32 %i.x, %i.z
  %i.ak = sitofp i32 %i.aj to float
  %i.al = sub nsw i32 %i.ab, %i.z
  %i.am = sitofp i32 %i.al to float
  %i.an = fdiv float %i.ak, %i.am
  %i.ao = sub nsw i32 %i.ai, %i.ag
  %i.ap = sitofp i32 %i.ao to float
  %i.aq = fmul float %i.an, %i.ap
  %i.ar = fptosi float %i.aq to i32
  %i.as = add nsw i32 %i.ag, %i.ar
  br label %bb.m

bb.i:                                             ; preds = %bb.e
  %i.at = load ptr, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = tail call zeroext i1 @SDL_GetJoystickButton_REAL(ptr noundef %i.at, i32 noundef %i.av) #9
  br i1 %i.aw, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.ay = load i32, ptr %i.ax, align 4
  br label %bb.m

bb.k:                                             ; preds = %bb.e
  %i.az = load ptr, ptr %0, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = tail call zeroext i8 @SDL_GetJoystickHat_REAL(ptr noundef %i.az, i32 noundef %i.bb) #9
  %i.bd = zext i8 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = and i32 %i.bf, %i.bd
  %.not = icmp eq i32 %i.bg, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.bi = load i32, ptr %i.bh, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %.split, %bb.k, %bb.l, %bb.e, %bb.g, %bb.j, %bb.i, %._crit_edge
  %.168 = phi i32 [ %i.as, %._crit_edge ], [ %i.x, %bb.h ], [ 0, %bb.e ], [ %i.ay, %bb.j ], [ 0, %bb.i ], [ 0, %bb.g ], [ %i.bi, %bb.l ], [ 0, %bb.k ], [ 0, %.split ] ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.bk = load i32, ptr %i.bj, align 4            ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.bm = load i32, ptr %i.bl, align 4            ; 3 uses
  %i.bn = icmp slt i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.not90 = icmp sge i32 %.168, %i.bk
  %i.bo = icmp sle i32 %.168, %i.bm
  %spec.select92 = and i1 %.not90, %i.bo
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %.not89 = icmp sge i32 %.168, %i.bm
  %i.bp = icmp sle i32 %.168, %i.bk
  %spec.select93 = and i1 %i.bp, %.not89
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.065 = phi i1 [ %spec.select92, %bb.n ], [ %spec.select93, %bb.o ]
  %i.bq = icmp ne i32 %.168, 0
  %or.cond = select i1 %i.bq, i1 %.065, i1 false
  br i1 %or.cond, label %.split.loop.exit, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.p
  %.pre110 = load i32, ptr %i.f, align 8
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.c, %bb.d
  %i.br = phi i32 [ %.pre110, %..thread_crit_edge ], [ %i.j, %bb.c ], [ %i.j, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i64 %indvars.iv.next, %i.bs
  br i1 %i.bt, label %bb.c, label %.split.loop.exit106, !llvm.loop !52

SDL_ObjectValid.exit.thread96:                    ; preds = %bb.a, %SDL_ObjectValid.exit, %SDL_ObjectValid.exit.thread
  %i.bu = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9 ; 0 uses
  br label %.split.loop.exit106

.split.loop.exit:                                 ; preds = %bb.p
  %i.bv = trunc i32 %.168 to i16
  br label %.split.loop.exit106

.split.loop.exit106:                              ; preds = %.thread, %.split.loop.exit, %.preheader, %SDL_ObjectValid.exit.thread96
  %.1 = phi i16 [ 0, %SDL_ObjectValid.exit.thread96 ], [ %i.bv, %.split.loop.exit ], [ 0, %.preheader ], [ 0, %.thread ]
  tail call void @SDL_UnlockJoysticks_REAL() #9
  ret i16 %.1
}

declare signext i16 @SDL_GetJoystickAxis_REAL(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_GetJoystickButton_REAL(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @SDL_GetJoystickHat_REAL(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_GamepadHasButton_REAL(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_LockJoysticks_REAL() #9
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread19, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !8, !noundef !9
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 5) #9
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread19

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.d = load ptr, ptr %0, align 8
  %i.e = tail call zeroext i1 @SDL_IsJoystickValid(ptr noundef %i.d) #9
  br i1 %i.e, label %.preheader, label %SDL_ObjectValid.exit.thread19

.preheader:                                       ; preds = %SDL_ObjectValid.exit.thread
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, %1
  br i1 %i.q, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !53

SDL_ObjectValid.exit.thread19:                    ; preds = %bb.a, %SDL_ObjectValid.exit, %SDL_ObjectValid.exit.thread
  %i.r = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9 ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.d, %.preheader, %SDL_ObjectValid.exit.thread19
  %.117 = phi i1 [ false, %SDL_ObjectValid.exit.thread19 ], [ false, %.preheader ], [ false, %bb.e ], [ true, %bb.d ]
  tail call void @SDL_UnlockJoysticks_REAL() #9
  ret i1 %.117
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_GetGamepadButton_REAL(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_LockJoysticks_REAL() #9
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread59, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !8, !noundef !9
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 5) #9
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread59

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.d = load ptr, ptr %0, align 8
  %i.e = tail call zeroext i1 @SDL_IsJoystickValid(ptr noundef %i.d) #9
  br i1 %i.e, label %.preheader, label %SDL_ObjectValid.exit.thread59

.preheader:                                       ; preds = %SDL_ObjectValid.exit.thread
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %.04864 = phi i8 [ 0, %.lr.ph ], [ %.2, %bb.m ] ; 9 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %indvars.iv ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, %1
  br i1 %i.q, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %i.k, align 4
  switch i32 %i.r, label %bb.m [
    i32 2, label %bb.f
    i32 1, label %bb.k
    i32 3, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.u = load i32, ptr %i.t, align 4
  %i.v = tail call signext i16 @SDL_GetJoystickAxis_REAL(ptr noundef %i.s, i32 noundef %i.u) #9
  %i.w = sext i16 %i.v to i32                     ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.y = load i32, ptr %i.x, align 4              ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.aa = load i32, ptr %i.z, align 4             ; 4 uses
  %i.ab = sub nsw i32 %i.aa, %i.y
  %i.ac = sdiv i32 %i.ab, 2
  %i.ad = add nsw i32 %i.ac, %i.y                 ; 2 uses
  %i.ae = icmp slt i32 %i.y, %i.aa
  br i1 %i.ae, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.not56 = icmp sle i32 %i.y, %i.w
  %i.af = icmp sge i32 %i.aa, %i.w
  %spec.select = and i1 %.not56, %i.af
  br i1 %spec.select, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ag = icmp sle i32 %i.ad, %i.w
  %2 = zext i1 %i.ag to i8
  %3 = or i8 %.04864, %2
  br label %bb.m

bb.i:                                             ; preds = %bb.f
  %.not = icmp sle i32 %i.aa, %i.w
  %i.ah = icmp sge i32 %i.y, %i.w
  %spec.select57 = and i1 %i.ah, %.not
  br i1 %spec.select57, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp sge i32 %i.ad, %i.w
  %4 = zext i1 %i.ai to i8
  %5 = or i8 %.04864, %4
  br label %bb.m

bb.k:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = tail call zeroext i1 @SDL_GetJoystickButton_REAL(ptr noundef %i.aj, i32 noundef %i.al) #9
  %6 = zext i1 %i.am to i8
  %7 = or i8 %.04864, %6
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = tail call zeroext i8 @SDL_GetJoystickHat_REAL(ptr noundef %i.an, i32 noundef %i.ap) #9
  %i.ar = zext i8 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.at = load i32, ptr %i.as, align 4
  %i.au = and i32 %i.at, %i.ar
  %i.av = icmp ne i32 %i.au, 0
  %8 = zext i1 %i.av to i8
  %9 = or i8 %.04864, %8
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.j, %bb.i, %bb.l, %bb.k, %bb.d, %bb.c
  %.2 = phi i8 [ %.04864, %bb.c ], [ %7, %bb.k ], [ %9, %bb.l ], [ %.04864, %bb.e ], [ %.04864, %bb.d ], [ %3, %bb.h ], [ %.04864, %bb.g ], [ %5, %bb.j ], [ %.04864, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = load i32, ptr %i.f, align 8
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !54

SDL_ObjectValid.exit.thread59:                    ; preds = %bb.a, %SDL_ObjectValid.exit, %SDL_ObjectValid.exit.thread
  %i.az = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9 ; 0 uses
  br label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.m
  %10 = trunc nuw i8 %.2 to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %._crit_edge.loopexit, %SDL_ObjectValid.exit.thread59
  %.1 = phi i1 [ false, %SDL_ObjectValid.exit.thread59 ], [ false, %.preheader ], [ %10, %._crit_edge.loopexit ]
  tail call void @SDL_UnlockJoysticks_REAL() #9
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 9) i32 @SDL_GetGamepadButtonLabelForType_REAL(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %1, 4                       ; 4 uses
  switch i32 %0, label %bb.b [
    i32 4, label %SDL_GetGamepadFaceStyleForGamepadType.exit
    i32 5, label %SDL_GetGamepadFaceStyleForGamepadType.exit
    i32 6, label %SDL_GetGamepadFaceStyleForGamepadType.exit
    i32 7, label %bb.d
    i32 8, label %bb.d
    i32 9, label %bb.d
    i32 10, label %bb.d
    i32 11, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %switch.offset.i = add nuw nsw i32 %1, 1
  %spec.select.i = select i1 %i.a, i32 %switch.offset.i, i32 0
  br label %SDL_GetGamepadButtonLabelForFaceStyle.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.a, label %switch.lookup, label %SDL_GetGamepadButtonLabelForFaceStyle.exit

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br i1 %i.a, label %switch.lookup8, label %SDL_GetGamepadButtonLabelForFaceStyle.exit

SDL_GetGamepadFaceStyleForGamepadType.exit:       ; preds = %bb.a, %bb.a, %bb.a
  %switch.offset7.i = add nuw nsw i32 %1, 5
  %spec.select8.i = select i1 %i.a, i32 %switch.offset7.i, i32 0
  br label %SDL_GetGamepadButtonLabelForFaceStyle.exit

switch.lookup:                                    ; preds = %bb.c
  %i.b = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.SDL_GetGamepadButtonLabel_REAL, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %SDL_GetGamepadButtonLabelForFaceStyle.exit

switch.lookup8:                                   ; preds = %bb.d
  %i.c = zext nneg i32 %1 to i64
  %switch.gep9 = getelementptr inbounds nuw i8, ptr @switch.table.SDL_GetGamepadButtonLabel_REAL.3, i64 %i.c
  %switch.load10 = load i8, ptr %switch.gep9, align 1
  %switch.ext11 = zext i8 %switch.load10 to i32
  br label %SDL_GetGamepadButtonLabelForFaceStyle.exit

SDL_GetGamepadButtonLabelForFaceStyle.exit:       ; preds = %switch.lookup8, %bb.d, %switch.lookup, %bb.c, %bb.b, %SDL_GetGamepadFaceStyleForGamepadType.exit
  %.0.i2 = phi i32 [ %switch.ext11, %switch.lookup8 ], [ 0, %bb.d ], [ %switch.ext, %switch.lookup ], [ 0, %bb.c ], [ %spec.select8.i, %SDL_GetGamepadFaceStyleForGamepadType.exit ], [ %spec.select.i, %bb.b ]
  ret i32 %.0.i2
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 9) i32 @SDL_GetGamepadButtonLabel_REAL(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_LockJoysticks_REAL() #9
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread7, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !8, !noundef !9
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 5) #9
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread7

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.d = load ptr, ptr %0, align 8
  %i.e = tail call zeroext i1 @SDL_IsJoystickValid(ptr noundef %i.d) #9
  br i1 %i.e, label %bb.c, label %SDL_ObjectValid.exit.thread7

SDL_ObjectValid.exit.thread7:                     ; preds = %bb.a, %SDL_ObjectValid.exit.thread, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9 ; 0 uses
  tail call void @SDL_UnlockJoysticks_REAL() #9
  br label %SDL_GetGamepadButtonLabelForFaceStyle.exit

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4
  tail call void @SDL_UnlockJoysticks_REAL() #9
  switch i32 %i.h, label %SDL_GetGamepadButtonLabelForFaceStyle.exit [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult i32 %1, 4
  %switch.offset.i = add nuw nsw i32 %1, 1
  %spec.select.i = select i1 %i.i, i32 %switch.offset.i, i32 0
  br label %SDL_GetGamepadButtonLabelForFaceStyle.exit

bb.e:                                             ; preds = %bb.c
  %i.j = icmp ult i32 %1, 4
  br i1 %i.j, label %switch.lookup, label %SDL_GetGamepadButtonLabelForFaceStyle.exit

bb.f:                                             ; preds = %bb.c
  %i.k = icmp ult i32 %1, 4
  br i1 %i.k, label %switch.lookup10, label %SDL_GetGamepadButtonLabelForFaceStyle.exit

bb.g:                                             ; preds = %bb.c
  %i.l = icmp ult i32 %1, 4
  %switch.offset7.i = add nuw nsw i32 %1, 5
  %spec.select8.i = select i1 %i.l, i32 %switch.offset7.i, i32 0
  br label %SDL_GetGamepadButtonLabelForFaceStyle.exit

switch.lookup:                                    ; preds = %bb.e
  %i.m = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.SDL_GetGamepadButtonLabel_REAL, i64 %i.m
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %SDL_GetGamepadButtonLabelForFaceStyle.exit

switch.lookup10:                                  ; preds = %bb.f
  %i.n = zext nneg i32 %1 to i64
  %switch.gep11 = getelementptr inbounds nuw i8, ptr @switch.table.SDL_GetGamepadButtonLabel_REAL.3, i64 %i.n
  %switch.load12 = load i8, ptr %switch.gep11, align 1
  %switch.ext13 = zext i8 %switch.load12 to i32
  br label %SDL_GetGamepadButtonLabelForFaceStyle.exit

SDL_GetGamepadButtonLabelForFaceStyle.exit:       ; preds = %switch.lookup10, %bb.f, %switch.lookup, %bb.e, %bb.g, %bb.d, %bb.c, %SDL_ObjectValid.exit.thread7
  %.0 = phi i32 [ 0, %SDL_ObjectValid.exit.thread7 ], [ 0, %bb.c ], [ 0, %bb.f ], [ %switch.ext13, %switch.lookup10 ], [ %switch.ext, %switch.lookup ], [ %spec.select8.i, %bb.g ], [ %spec.select.i, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_GetNumGamepadTouchpads_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_LockJoysticks_REAL() #9
  tail call void @SDL_LockJoysticks_REAL() #9
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %SDL_GetGamepadJoystick_REAL.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !8, !noundef !9
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 5) #9
  br i1 %i.c, label %SDL_ObjectValid.exit.thread.i, label %SDL_GetGamepadJoystick_REAL.exit.thread

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.b
  %i.d = load ptr, ptr %0, align 8
  %i.e = tail call zeroext i1 @SDL_IsJoystickValid(ptr noundef %i.d) #9
  br i1 %i.e, label %SDL_GetGamepadJoystick_REAL.exit, label %SDL_GetGamepadJoystick_REAL.exit.thread

SDL_GetGamepadJoystick_REAL.exit.thread:          ; preds = %bb.a, %SDL_ObjectValid.exit.i, %SDL_ObjectValid.exit.thread.i
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9 ; 0 uses
  tail call void @SDL_UnlockJoysticks_REAL() #9
  br label %bb.d

SDL_GetGamepadJoystick_REAL.exit:                 ; preds = %SDL_ObjectValid.exit.thread.i
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  tail call void @SDL_UnlockJoysticks_REAL() #9
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %SDL_GetGamepadJoystick_REAL.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.i = load i32, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %SDL_GetGamepadJoystick_REAL.exit.thread, %bb.c, %SDL_GetGamepadJoystick_REAL.exit
  %.0 = phi i32 [ %i.i, %bb.c ], [ 0, %SDL_GetGamepadJoystick_REAL.exit ], [ 0, %SDL_GetGamepadJoystick_REAL.exit.thread ]
  tail call void @SDL_UnlockJoysticks_REAL() #9
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_GetGamepadJoystick_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_LockJoysticks_REAL() #9
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread6, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !8, !noundef !9
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 5) #9
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread6

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.d = load ptr, ptr %0, align 8
  %i.e = tail call zeroext i1 @SDL_IsJoystickValid(ptr noundef %i.d) #9
  br i1 %i.e, label %bb.c, label %SDL_ObjectValid.exit.thread6

SDL_ObjectValid.exit.thread6:                     ; preds = %bb.a, %SDL_ObjectValid.exit.thread, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread
end_hunk_0
begin_hunk_1_@SDL_GetGamepadPowerInfo_REAL:bb.a
SDL_ObjectValid.exit.i:                           ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 5) #9
  br i1 %i.c, label %SDL_ObjectValid.exit.thread.i, label %SDL_ObjectValid.exit.thread6.i

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.b
  %i.d = load ptr, ptr %0, align 8
  %i.e = tail call zeroext i1 @SDL_IsJoystickValid(ptr noundef %i.d) #9
  br i1 %i.e, label %bb.c, label %SDL_ObjectValid.exit.thread6.i

SDL_ObjectValid.exit.thread6.i:                   ; preds = %SDL_ObjectValid.exit.thread.i, %SDL_ObjectValid.exit.i, %bb.a
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9 ; 0 uses
  br label %SDL_GetGamepadJoystick_REAL.exit

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.g = load ptr, ptr %0, align 8
  br label %SDL_GetGamepadJoystick_REAL.exit

SDL_GetGamepadJoystick_REAL.exit:                 ; preds = %SDL_ObjectValid.exit.thread6.i, %bb.c
  %.0.i = phi ptr [ %i.g, %bb.c ], [ null, %SDL_ObjectValid.exit.thread6.i ] ; 2 uses
  tail call void @SDL_UnlockJoysticks_REAL() #9
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %SDL_GetGamepadJoystick_REAL.exit
  store i32 -1, ptr %1, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %SDL_GetGamepadJoystick_REAL.exit
  %.not8 = icmp eq ptr %.0.i, null
  br i1 %.not8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i32 @SDL_GetJoystickPowerInfo_REAL(ptr noundef nonnull %.0.i, ptr noundef %1) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi i32 [ %i.h, %bb.f ], [ -1, %bb.e ]
  ret i32 %.0
}

declare i32 @SDL_GetJoystickPowerInfo_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_GamepadConnected_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_LockJoysticks_REAL() #9
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %SDL_GetGamepadJoystick_REAL.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !8, !noundef !9
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 5) #9
  br i1 %i.c, label %SDL_ObjectValid.exit.thread.i, label %SDL_GetGamepadJoystick_REAL.exit.thread

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.b
  %i.d = load ptr, ptr %0, align 8
  %i.e = tail call zeroext i1 @SDL_IsJoystickValid(ptr noundef %i.d) #9
  br i1 %i.e, label %SDL_GetGamepadJoystick_REAL.exit, label %SDL_GetGamepadJoystick_REAL.exit.thread

SDL_GetGamepadJoystick_REAL.exit.thread:          ; preds = %bb.a, %SDL_ObjectValid.exit.i, %SDL_ObjectValid.exit.thread.i
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9 ; 0 uses
  tail call void @SDL_UnlockJoysticks_REAL() #9
  br label %bb.d

SDL_GetGamepadJoystick_REAL.exit:                 ; preds = %SDL_ObjectValid.exit.thread.i
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  tail call void @SDL_UnlockJoysticks_REAL() #9
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %SDL_GetGamepadJoystick_REAL.exit
  %i.h = tail call zeroext i1 @SDL_JoystickConnected_REAL(ptr noundef nonnull %i.g) #9
  br label %bb.d

bb.d:                                             ; preds = %SDL_GetGamepadJoystick_REAL.exit.thread, %SDL_GetGamepadJoystick_REAL.exit, %bb.c
  %.0 = phi i1 [ %i.h, %bb.c ], [ false, %SDL_GetGamepadJoystick_REAL.exit ], [ false, %SDL_GetGamepadJoystick_REAL.exit.thread ]
  ret i1 %.0
}

declare zeroext i1 @SDL_JoystickConnected_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_GetGamepadFromID_REAL(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_LockJoysticks_REAL() #9
  %.08 = load ptr, ptr @SDL_gamepads, align 8     ; 2 uses
  %.not9 = icmp eq ptr %.08, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.010 = phi ptr [ %.0, %bb.b ], [ %.08, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.010, align 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, %0
  br i1 %i.c, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.010, i64 80
  %.0 = load ptr, ptr %i.d, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.07 = phi ptr [ null, %bb.a ], [ %.010, %.lr.ph ], [ null, %bb.b ]
  tail call void @SDL_UnlockJoysticks_REAL() #9
  ret ptr %.07
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_GetGamepadFromPlayerIndex_REAL(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_LockJoysticks_REAL() #9
  %i.a = tail call ptr @SDL_GetJoystickFromPlayerIndex_REAL(i32 noundef %0) #9 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8
  tail call void @SDL_LockJoysticks_REAL() #9
  %.08.i = load ptr, ptr @SDL_gamepads, align 8   ; 2 uses
  %.not9.i = icmp eq ptr %.08.i, null
  br i1 %.not9.i, label %SDL_GetGamepadFromID_REAL.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.010.i = phi ptr [ %.0.i, %bb.c ], [ %.08.i, %bb.b ] ; 3 uses
  %i.c = load ptr, ptr %.010.i, align 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, %i.b
  br i1 %i.e, label %SDL_GetGamepadFromID_REAL.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.010.i, i64 80
  %.0.i = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %SDL_GetGamepadFromID_REAL.exit, label %.lr.ph.i, !llvm.loop !1

SDL_GetGamepadFromID_REAL.exit:                   ; preds = %.lr.ph.i, %bb.c, %bb.b
  %.07.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %.010.i, %.lr.ph.i ]
  tail call void @SDL_UnlockJoysticks_REAL() #9
  br label %bb.d

bb.d:                                             ; preds = %SDL_GetGamepadFromID_REAL.exit, %bb.a
  %.0 = phi ptr [ %.07.i, %SDL_GetGamepadFromID_REAL.exit ], [ null, %bb.a ]
  tail call void @SDL_UnlockJoysticks_REAL() #9
  ret ptr %.0
}

declare ptr @SDL_GetJoystickFromPlayerIndex_REAL(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_GetGamepadBindings_REAL(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @SDL_LockJoysticks_REAL() #9
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread33, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !8, !noundef !9
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 5) #9
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread33

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.d = load ptr, ptr %0, align 8
  %i.e = tail call zeroext i1 @SDL_IsJoystickValid(ptr noundef %i.d) #9
  br i1 %i.e, label %bb.e, label %SDL_ObjectValid.exit.thread33

SDL_ObjectValid.exit.thread33:                    ; preds = %bb.c, %SDL_ObjectValid.exit.thread, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = add nsw i32 %i.h, 1
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 3                      ; 2 uses
  %i.l = sext i32 %i.h to i64
  %i.m = shl nsw i64 %i.l, 5
  %i.n = add nsw i64 %i.k, %i.m
  %i.o = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.n) #9 ; 9 uses
  %.not31 = icmp eq ptr %i.o, null
  br i1 %.not31, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.g, align 8              ; 7 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = icmp eq i32 %i.p, 1
  br i1 %i.u, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %2 = and i32 %i.p, 2147483646
  %unroll_iter = zext nneg i32 %2 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.g ] ; 4 uses
  %.02735 = phi ptr [ %i.r, %.lr.ph.new ], [ %i.aa, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  store ptr %.02735, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.02735, ptr noundef nonnull align 4 dereferenceable(32) %i.w, i64 32, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.02735, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %indvars.iv.next
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.x, ptr noundef nonnull align 4 dereferenceable(32) %i.z, i64 32, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.02735, i64 64 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !60

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = trunc i32 %i.p to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %._crit_edge.loopexit

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.02735.epil.init = phi ptr [ %i.r, %.lr.ph ], [ %i.aa, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod42 = trunc i32 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod42)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.epil.init
  store ptr %.02735.epil.init, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %indvars.iv.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.02735.epil.init, ptr noundef nonnull align 4 dereferenceable(32) %i.ac, i64 32, i1 false)
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.epil.preheader
  %i.ad = zext nneg i32 %i.p to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %._crit_edge.loopexit
  %.0.lcssa = phi i64 [ %i.ad, %._crit_edge.loopexit ], [ 0, %bb.f ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0.lcssa
  store ptr null, ptr %i.ae, align 8
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  store i32 %i.p, ptr %1, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %._crit_edge, %SDL_ObjectValid.exit.thread33
  %.028 = phi ptr [ null, %SDL_ObjectValid.exit.thread33 ], [ %i.o, %._crit_edge ], [ %i.o, %bb.h ], [ %i.o, %bb.e ]
  tail call void @SDL_UnlockJoysticks_REAL() #9
  ret ptr %.028
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_RumbleGamepad_REAL(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_LockJoysticks_REAL() #9
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %SDL_GetGamepadJoystick_REAL.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !8, !noundef !9
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 5) #9
  br i1 %i.c, label %SDL_ObjectValid.exit.thread.i, label %SDL_GetGamepadJoystick_REAL.exit.thread

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.b
  %i.d = load ptr, ptr %0, align 8
  %i.e = tail call zeroext i1 @SDL_IsJoystickValid(ptr noundef %i.d) #9
  br i1 %i.e, label %SDL_GetGamepadJoystick_REAL.exit, label %SDL_GetGamepadJoystick_REAL.exit.thread

SDL_GetGamepadJoystick_REAL.exit.thread:          ; preds = %bb.a, %SDL_ObjectValid.exit.i, %SDL_ObjectValid.exit.thread.i
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9 ; 0 uses
  tail call void @SDL_UnlockJoysticks_REAL() #9
  br label %bb.d

SDL_GetGamepadJoystick_REAL.exit:                 ; preds = %SDL_ObjectValid.exit.thread.i
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  tail call void @SDL_UnlockJoysticks_REAL() #9
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %SDL_GetGamepadJoystick_REAL.exit
  %i.h = tail call zeroext i1 @SDL_RumbleJoystick_REAL(ptr noundef nonnull %i.g, i16 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3) #9
  br label %bb.d

bb.d:                                             ; preds = %SDL_GetGamepadJoystick_REAL.exit.thread, %SDL_GetGamepadJoystick_REAL.exit, %bb.c
  %.0 = phi i1 [ %i.h, %bb.c ], [ false, %SDL_GetGamepadJoystick_REAL.exit ], [ false, %SDL_GetGamepadJoystick_REAL.exit.thread ]
  ret i1 %.0
}

declare zeroext i1 @SDL_RumbleJoystick_REAL(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_RumbleGamepadTriggers_REAL(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_LockJoysticks_REAL() #9
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %SDL_GetGamepadJoystick_REAL.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !8, !noundef !9
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 5) #9
  br i1 %i.c, label %SDL_ObjectValid.exit.thread.i, label %SDL_GetGamepadJoystick_REAL.exit.thread

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.b
  %i.d = load ptr, ptr %0, align 8
  %i.e = tail call zeroext i1 @SDL_IsJoystickValid(ptr noundef %i.d) #9
  br i1 %i.e, label %SDL_GetGamepadJoystick_REAL.exit, label %SDL_GetGamepadJoystick_REAL.exit.thread

SDL_GetGamepadJoystick_REAL.exit.thread:          ; preds = %bb.a, %SDL_ObjectValid.exit.i, %SDL_ObjectValid.exit.thread.i
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9 ; 0 uses
  tail call void @SDL_UnlockJoysticks_REAL() #9
  br label %bb.d

SDL_GetGamepadJoystick_REAL.exit:                 ; preds = %SDL_ObjectValid.exit.thread.i
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  tail call void @SDL_UnlockJoysticks_REAL() #9
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %SDL_GetGamepadJoystick_REAL.exit
  %i.h = tail call zeroext i1 @SDL_RumbleJoystickTriggers_REAL(ptr noundef nonnull %i.g, i16 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3) #9
  br label %bb.d

bb.d:                                             ; preds = %SDL_GetGamepadJoystick_REAL.exit.thread, %SDL_GetGamepadJoystick_REAL.exit, %bb.c
  %.0 = phi i1 [ %i.h, %bb.c ], [ false, %SDL_GetGamepadJoystick_REAL.exit ], [ false, %SDL_GetGamepadJoystick_REAL.exit.thread ]
  ret i1 %.0
}

declare zeroext i1 @SDL_RumbleJoystickTriggers_REAL(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SetGamepadLED_REAL(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_LockJoysticks_REAL() #9
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %SDL_GetGamepadJoystick_REAL.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !8, !noundef !9
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 5) #9
  br i1 %i.c, label %SDL_ObjectValid.exit.thread.i, label %SDL_GetGamepadJoystick_REAL.exit.thread

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.b
  %i.d = load ptr, ptr %0, align 8
  %i.e = tail call zeroext i1 @SDL_IsJoystickValid(ptr noundef %i.d) #9
  br i1 %i.e, label %SDL_GetGamepadJoystick_REAL.exit, label %SDL_GetGamepadJoystick_REAL.exit.thread

SDL_GetGamepadJoystick_REAL.exit.thread:          ; preds = %bb.a, %SDL_ObjectValid.exit.i, %SDL_ObjectValid.exit.thread.i
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9 ; 0 uses
  tail call void @SDL_UnlockJoysticks_REAL() #9
  br label %bb.d

SDL_GetGamepadJoystick_REAL.exit:                 ; preds = %SDL_ObjectValid.exit.thread.i
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  tail call void @SDL_UnlockJoysticks_REAL() #9
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %SDL_GetGamepadJoystick_REAL.exit
  %i.h = tail call zeroext i1 @SDL_SetJoystickLED_REAL(ptr noundef nonnull %i.g, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #9
  br label %bb.d

bb.d:                                             ; preds = %SDL_GetGamepadJoystick_REAL.exit.thread, %SDL_GetGamepadJoystick_REAL.exit, %bb.c
  %.0 = phi i1 [ %i.h, %bb.c ], [ false, %SDL_GetGamepadJoystick_REAL.exit ], [ false, %SDL_GetGamepadJoystick_REAL.exit.thread ]
  ret i1 %.0
}

declare zeroext i1 @SDL_SetJoystickLED_REAL(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SendGamepadEffect_REAL(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_LockJoysticks_REAL() #9
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %SDL_GetGamepadJoystick_REAL.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !8, !noundef !9
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 5) #9
  br i1 %i.c, label %SDL_ObjectValid.exit.thread.i, label %SDL_GetGamepadJoystick_REAL.exit.thread

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.b
  %i.d = load ptr, ptr %0, align 8
  %i.e = tail call zeroext i1 @SDL_IsJoystickValid(ptr noundef %i.d) #9
  br i1 %i.e, label %SDL_GetGamepadJoystick_REAL.exit, label %SDL_GetGamepadJoystick_REAL.exit.thread

SDL_GetGamepadJoystick_REAL.exit.thread:          ; preds = %bb.a, %SDL_ObjectValid.exit.i, %SDL_ObjectValid.exit.thread.i
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9 ; 0 uses
  tail call void @SDL_UnlockJoysticks_REAL() #9
  br label %bb.d

SDL_GetGamepadJoystick_REAL.exit:                 ; preds = %SDL_ObjectValid.exit.thread.i
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  tail call void @SDL_UnlockJoysticks_REAL() #9
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %SDL_GetGamepadJoystick_REAL.exit
  %i.h = tail call zeroext i1 @SDL_SendJoystickEffect_REAL(ptr noundef nonnull %i.g, ptr noundef %1, i32 noundef %2) #9
  br label %bb.d

bb.d:                                             ; preds = %SDL_GetGamepadJoystick_REAL.exit.thread, %SDL_GetGamepadJoystick_REAL.exit, %bb.c
  %.0 = phi i1 [ %i.h, %bb.c ], [ false, %SDL_GetGamepadJoystick_REAL.exit ], [ false, %SDL_GetGamepadJoystick_REAL.exit.thread ]
  ret i1 %.0
end_hunk_1
