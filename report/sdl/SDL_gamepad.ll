Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_gamepad?download=true
inline.NumInlined: 83
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@SDL_GetGamepadMappings_REAL:bb.a

bb.h:                                             ; preds = %._crit_edge108
  store i32 %.053.lcssa, ptr %0, align 4
  br label %bb.i

.thread87:                                        ; preds = %._crit_edge
  tail call void @SDL_UnlockJoysticks_REAL() #9
  br label %bb.j

bb.i:                                             ; preds = %.thread85, %._crit_edge108, %bb.h, %._crit_edge101
  %.069 = phi ptr [ %i.u, %._crit_edge108 ], [ null, %.thread85 ], [ null, %._crit_edge101 ], [ %i.u, %bb.h ]
  %.not114 = icmp eq i32 %.053.lcssa, 0
  br i1 %.not114, label %._crit_edge112, label %.lr.ph111.preheader

.lr.ph111.preheader:                              ; preds = %bb.i
  %wide.trip.count119 = zext i32 %.053.lcssa to i64
  br label %.lr.ph111

._crit_edge112:                                   ; preds = %.lr.ph111, %bb.i
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.c) #9
  br label %bb.j

.lr.ph111:                                        ; preds = %.lr.ph111.preheader, %.lr.ph111
  %indvars.iv116 = phi i64 [ 0, %.lr.ph111.preheader ], [ %indvars.iv.next117, %.lr.ph111 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv116
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.ai) #9
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count119
  br i1 %exitcond120.not, label %._crit_edge112, label %.lr.ph111, !llvm.loop !27

bb.j:                                             ; preds = %.thread87, %._crit_edge112
  %.06989 = phi ptr [ null, %.thread87 ], [ %.069, %._crit_edge112 ]
  ret ptr %.06989
}

declare i32 @SDL_memcmp_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare noalias ptr @SDL_calloc_REAL(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @CreateMappingString(ptr nofree noundef readonly captures(none) %0, i64 %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  tail call void @SDL_AssertJoysticksLocked() #9
  call void @SDL_GUIDToString_REAL(i64 %1, i64 %2, ptr noundef nonnull %i.a, i32 noundef 33) #9
  %i.b = call i64 @SDL_strlen_REAL(ptr noundef nonnull %i.a) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call i64 @SDL_strlen_REAL(ptr noundef %i.d) #9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call i64 @SDL_strlen_REAL(ptr noundef %i.g) #9
  %i.i = add i64 %i.b, 2
  %i.j = add i64 %i.i, %i.e
  %i.k = add i64 %i.j, %i.h                       ; 2 uses
  %i.l = add i64 %i.k, 1                          ; 2 uses
  %i.m = load ptr, ptr %i.f, align 8
  %i.n = call ptr @SDL_strstr_REAL(ptr noundef %i.m, ptr noundef nonnull @.str.1) #9
  %.not = icmp eq ptr %i.n, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.p = call i64 @SDL_strlen_REAL(ptr noundef %i.o) #9
  %i.q = getelementptr i8, ptr %i.o, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1
  %.not38 = icmp eq i8 %i.s, 44
  %i.t = add i64 %i.k, 2
  %spec.select = select i1 %.not38, i64 %i.l, i64 %i.t
  %i.u = call ptr @SDL_GetPlatform_REAL() #9      ; 2 uses
  %i.v = call i64 @SDL_strlen_REAL(ptr noundef nonnull @.str.1) #9
  %i.w = call i64 @SDL_strlen_REAL(ptr noundef %i.u) #9
  %i.x = add i64 %i.v, 1
  %i.y = add i64 %i.x, %spec.select
  %i.z = add i64 %i.y, %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i64 [ %i.l, %bb.a ], [ %i.z, %bb.b ]  ; 6 uses
  %.0 = phi ptr [ null, %bb.a ], [ %i.u, %bb.b ]
  %i.aa = call noalias ptr @SDL_malloc_REAL(i64 noundef %.1) #9 ; 8 uses
  %.not39 = icmp eq ptr %i.aa, null
  br i1 %.not39, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.c, align 8
  %i.ac = load ptr, ptr %i.f, align 8
  %i.ad = call i32 (ptr, i64, ptr, ...) @SDL_snprintf_REAL(ptr noundef nonnull %i.aa, i64 noundef %.1, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a, ptr noundef %i.ab, ptr noundef %i.ac) #9 ; 0 uses
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.af = call i64 @SDL_strlen_REAL(ptr noundef %i.ae) #9
  %i.ag = getelementptr i8, ptr %i.ae, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  %i.ai = load i8, ptr %i.ah, align 1
  %.not40 = icmp eq i8 %i.ai, 44
  br i1 %.not40, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.75, i64 noundef %.1) #9 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ak = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.1, i64 noundef %.1) #9 ; 0 uses
  %i.al = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.aa, ptr noundef %.0, i64 noundef %.1) #9 ; 0 uses
  %i.am = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.75, i64 noundef %.1) #9 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.an = call ptr @SDL_strstr_REAL(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.1) #9 ; 2 uses
  %.not41 = icmp eq ptr %i.an, null
  br i1 %.not41, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ap = call ptr @SDL_strstr_REAL(ptr noundef nonnull %i.ao, ptr noundef nonnull @.str.1) #9 ; 2 uses
  %.not42 = icmp eq ptr %i.ap, null
  br i1 %.not42, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.ap, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %i.aa
}

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #2

declare i64 @SDL_strlcpy_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_GetGamepadMappingForGUID_REAL(i64 %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_LockJoysticks_REAL() #9
  %i.a = tail call fastcc ptr @SDL_PrivateGetGamepadMappingForGUID(i64 %0, i64 %1, i1 noundef zeroext false) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @CreateMappingString(ptr noundef nonnull %i.a, i64 %0, i64 %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.3) #9 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.c ]
  tail call void @SDL_UnlockJoysticks_REAL() #9
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @SDL_PrivateGetGamepadMappingForGUID(i64 %0, i64 %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca [1024 x i8], align 16             ; 5 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %i.d = alloca [1024 x i8], align 16             ; 51 uses
  %i.e = alloca i16, align 2                      ; 22 uses
  %i.f = alloca i16, align 2                      ; 24 uses
  %i.g = alloca i16, align 2                      ; 4 uses
  %.fr = freeze i64 %1                            ; 18 uses
  %i.h = tail call fastcc ptr @SDL_PrivateMatchGamepadMappingForGUID(i64 %0, i64 %.fr, i1 noundef zeroext true, i1 noundef zeroext true) ; 2 uses
  %.not = icmp ne ptr %i.h, null
  %brmerge = or i1 %2, %.not
  br i1 %brmerge, label %bb.cr, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call fastcc ptr @SDL_PrivateMatchGamepadMappingForGUID(i64 %0, i64 %.fr, i1 noundef zeroext true, i1 noundef zeroext false) ; 2 uses
  %.not39 = icmp eq ptr %i.i, null
  br i1 %.not39, label %bb.c, label %bb.cr

bb.c:                                             ; preds = %bb.b
  %i.j = tail call zeroext i1 @SDL_JoystickGUIDUsesVersion(i64 %0, i64 %.fr) #9
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = tail call fastcc ptr @SDL_PrivateMatchGamepadMappingForGUID(i64 %0, i64 %.fr, i1 noundef zeroext false, i1 noundef zeroext true) ; 2 uses
  %.not40 = icmp eq ptr %i.k, null
  br i1 %.not40, label %bb.e, label %bb.cr

bb.e:                                             ; preds = %bb.d
  %i.l = tail call fastcc ptr @SDL_PrivateMatchGamepadMappingForGUID(i64 %0, i64 %.fr, i1 noundef zeroext false, i1 noundef zeroext false) ; 2 uses
  %.not41 = icmp eq ptr %i.l, null
  br i1 %.not41, label %bb.f, label %bb.cr

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.m = tail call zeroext i1 @SDL_IsJoystickHIDAPI(i64 %0, i64 %.fr) #9
  br i1 %i.m, label %bb.g, label %bb.cm

bb.g:                                             ; preds = %bb.f
  %.sroa.8.8.extract.shift.i = lshr i64 %.fr, 56  ; 4 uses
  %.sroa.8.8.extract.trunc.i = trunc nuw i64 %.sroa.8.8.extract.shift.i to i8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  %i.n = call i64 @SDL_strlcpy_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.77, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  call void @SDL_GetJoystickGUIDInfo_REAL(i64 %0, i64 %.fr, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef null) #9, !inline_history !28
  %i.o = load i16, ptr %i.e, align 2
  %i.p = load i16, ptr %i.f, align 2
  %i.q = call zeroext i1 @SDL_IsJoystickWheel(i16 noundef zeroext %i.o, i16 noundef zeroext %i.p) #9, !inline_history !28
  br i1 %i.q, label %SDL_CreateMappingForHIDAPIGamepad.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load i16, ptr %i.e, align 2              ; 4 uses
  %i.s = icmp eq i16 %i.r, 1406                   ; 7 uses
  %i.t = load i16, ptr %i.f, align 2              ; 10 uses
  %i.u = icmp eq i16 %i.t, 823
  %or.cond.i = select i1 %i.s, i1 %i.u, i1 false
  br i1 %or.cond.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = icmp eq i16 %i.r, 121
  br i1 %i.v, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  switch i16 %i.t, label %.thread51 [
    i16 6214, label %bb.k
    i16 6212, label %bb.k
    i16 6211, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.h
  %i.w = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.78, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.l:                                             ; preds = %bb.i
  %i.x = icmp eq i16 %i.t, 8307
  %or.cond11.i = select i1 %i.s, i1 %i.x, i1 false
  br i1 %or.cond11.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.y = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.79, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.n:                                             ; preds = %bb.l
  %i.z = icmp eq i16 %i.t, 8297
  %or.cond14.i = select i1 %i.s, i1 %i.z, i1 false
  br i1 %or.cond14.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aa = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.80, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i16 %i.t, 8295
  %or.cond17.i = select i1 %i.s, i1 %i.ab, i1 false
  br i1 %or.cond17.i, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ac = call zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef nonnull @.str.81, i1 noundef zeroext false) #9, !inline_history !28
  br i1 %i.ac, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ad = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.82, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.s:                                             ; preds = %bb.q
  %i.ae = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.83, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.t:                                             ; preds = %bb.p
  %i.af = icmp eq i16 %i.t, 8294
  %or.cond20.i = select i1 %i.s, i1 %i.af, i1 false
  br i1 %or.cond20.i, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ag = call zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef nonnull @.str.81, i1 noundef zeroext false) #9, !inline_history !28
  br i1 %i.ag, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ah = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.84, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.w:                                             ; preds = %bb.u
  %i.ai = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.85, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.x:                                             ; preds = %bb.t
  %i.aj = icmp eq i16 %i.t, 8296
  %or.cond23.i = select i1 %i.s, i1 %i.aj, i1 false
  br i1 %or.cond23.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ak = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.86, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.z:                                             ; preds = %bb.x
  br i1 %i.s, label %bb.aa, label %bb.ar

bb.aa:                                            ; preds = %bb.z
  %i.al = icmp slt i64 %.fr, -9079256848778919936
  %i.am = icmp eq i64 %.sroa.8.8.extract.shift.i, 1 ; 2 uses
  br i1 %i.al, label %bb.ab, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.aa
  switch i8 %.sroa.8.8.extract.trunc.i, label %.thread51 [
    i8 7, label %bb.ac
    i8 8, label %bb.ad
    i8 9, label %bb.ae
    i8 10, label %bb.ae
    i8 11, label %bb.af
    i8 12, label %bb.ag
    i8 13, label %bb.ah
    i8 1, label %bb.ak
    i8 2, label %bb.ak
  ]

bb.ab:                                            ; preds = %bb.aa
  switch i8 %.sroa.8.8.extract.trunc.i, label %bb.ak [
    i8 7, label %bb.ac
    i8 8, label %bb.ad
    i8 9, label %bb.ae
    i8 10, label %bb.ae
    i8 11, label %bb.af
    i8 12, label %bb.ag
    i8 13, label %bb.ah
    i8 -128, label %bb.ai
    i8 -127, label %bb.aj
  ]

bb.ac:                                            ; preds = %switch.early.test.i, %bb.ab
  %i.an = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.87, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.ad:                                            ; preds = %switch.early.test.i, %bb.ab
  %i.ao = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.88, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.ae:                                            ; preds = %switch.early.test.i, %switch.early.test.i, %bb.ab, %bb.ab
  %i.ap = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.87, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.af:                                            ; preds = %switch.early.test.i, %bb.ab
  %i.aq = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.89, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.ag:                                            ; preds = %switch.early.test.i, %bb.ab
  %i.ar = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.90, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.ah:                                            ; preds = %switch.early.test.i, %bb.ab
  %i.as = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.91, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.ai:                                            ; preds = %bb.ab
  %i.at = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.92, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.aj:                                            ; preds = %bb.ab
  %i.au = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.93, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.ak:                                            ; preds = %switch.early.test.i, %switch.early.test.i, %bb.ab
  %i.av = call zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef nonnull @.str.81, i1 noundef zeroext false) #9, !inline_history !28
  br i1 %i.av, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  br i1 %i.am, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.aw = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.94, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.an:                                            ; preds = %bb.al
  %i.ax = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.95, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.ao:                                            ; preds = %bb.ak
  br i1 %i.am, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ay = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.96, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.aq:                                            ; preds = %bb.ao
  %i.az = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.97, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.ar:                                            ; preds = %bb.z
  %i.ba = icmp eq i16 %i.r, 11720
  br i1 %i.ba, label %bb.as, label %.thread51

bb.as:                                            ; preds = %bb.ar
  switch i16 %i.t, label %bb.aw [
    i16 24833, label %bb.at
    i16 24832, label %bb.at
    i16 24585, label %bb.at
    i16 24582, label %bb.at
    i16 24579, label %bb.at
    i16 24577, label %bb.at
    i16 24576, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as
  %i.bb = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.98, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  %i.bc = load i16, ptr %i.f, align 2
  switch i16 %i.bc, label %bb.cl [
    i16 24582, label %bb.au
    i16 24579, label %bb.au
    i16 24585, label %bb.av
  ]

bb.au:                                            ; preds = %bb.at, %bb.at
  %i.bd = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.99, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.av:                                            ; preds = %bb.at
  %i.be = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.100, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.aw:                                            ; preds = %bb.as
  %i.bf = and i16 %i.t, -257
  %or.cond97.i = icmp eq i16 %i.bf, 24576
  br i1 %or.cond97.i, label %bb.ax, label %.thread51

bb.ax:                                            ; preds = %bb.aw
  %i.bg = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.101, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

.thread51:                                        ; preds = %switch.early.test.i, %bb.ar, %bb.j, %bb.aw
  %i.bh = call zeroext i1 @SDL_IsJoystickSInputController(i16 noundef zeroext %i.r, i16 noundef zeroext %i.t) #9, !inline_history !28
  br i1 %i.bh, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.thread51
  %i.bi = lshr i64 %.fr, 61
  %i.bj = trunc nuw nsw i64 %i.bi to i8
  %i.bk = load i16, ptr %i.g, align 2
  call fastcc void @SDL_CreateMappingStringForSInputGamepad(i16 noundef zeroext %i.bk, i8 noundef zeroext %i.bj, ptr noundef %i.d)
  br label %bb.cl

bb.az:                                            ; preds = %.thread51
  %i.bl = load i16, ptr %i.e, align 2
  %i.bm = load i16, ptr %i.f, align 2
  %i.bn = call zeroext i1 @SDL_IsJoystickGameCube(i16 noundef zeroext %i.bl, i16 noundef zeroext %i.bm) #9, !inline_history !28
  %.str.102..str.103 = select i1 %i.bn, ptr @.str.102, ptr @.str.103
  %i.bo = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull %.str.102..str.103, i64 noundef 1024) #9 ; 0 uses
  %i.bp = load i16, ptr %i.e, align 2
  %i.bq = load i16, ptr %i.f, align 2
  %i.br = call zeroext i1 @SDL_IsJoystickSteamController(i16 noundef zeroext %i.bp, i16 noundef zeroext %i.bq) #9, !inline_history !28
  br i1 %i.br, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.bs = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.104, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.bb:                                            ; preds = %bb.az
  %i.bt = load i16, ptr %i.e, align 2
  %i.bu = load i16, ptr %i.f, align 2
  %i.bv = call zeroext i1 @SDL_IsJoystickSteamDeck(i16 noundef zeroext %i.bt, i16 noundef zeroext %i.bu) #9, !inline_history !28
  br i1 %i.bv, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.bw = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.105, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.bd:                                            ; preds = %bb.bb
  %i.bx = load i16, ptr %i.e, align 2
  %i.by = load i16, ptr %i.f, align 2
  %i.bz = call zeroext i1 @SDL_IsJoystickSteamTriton(i16 noundef zeroext %i.bx, i16 noundef zeroext %i.by) #9, !inline_history !28
  br i1 %i.bz, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ca = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.106, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.bf:                                            ; preds = %bb.bd
  %i.cb = load i16, ptr %i.e, align 2
  %i.cc = load i16, ptr %i.f, align 2
  %i.cd = call zeroext i1 @SDL_IsJoystickNintendoSwitchPro(i16 noundef zeroext %i.cb, i16 noundef zeroext %i.cc) #9, !inline_history !28
  br i1 %i.cd, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ce = load i16, ptr %i.e, align 2
  %i.cf = load i16, ptr %i.f, align 2
  %i.cg = call zeroext i1 @SDL_IsJoystickNintendoSwitchProInputOnly(i16 noundef zeroext %i.ce, i16 noundef zeroext %i.cf) #9, !inline_history !28
  br i1 %i.cg, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.ch = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.107, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.bi:                                            ; preds = %bb.bg
  %i.ci = load i16, ptr %i.e, align 2
  %i.cj = load i16, ptr %i.f, align 2
  %i.ck = call zeroext i1 @SDL_IsJoystickNintendoSwitchJoyConPair(i16 noundef zeroext %i.ci, i16 noundef zeroext %i.cj) #9, !inline_history !28
  br i1 %i.ck, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.cl = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.108, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.bk:                                            ; preds = %bb.bi
  %i.cm = load i16, ptr %i.e, align 2
  %i.cn = load i16, ptr %i.f, align 2
  %i.co = call zeroext i1 @SDL_IsJoystickAmazonLunaController(i16 noundef zeroext %i.cm, i16 noundef zeroext %i.cn) #9, !inline_history !28
  br i1 %i.co, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.cp = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.107, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
  br label %bb.cl

bb.bm:                                            ; preds = %bb.bk
  %i.cq = load i16, ptr %i.e, align 2
  %i.cr = load i16, ptr %i.f, align 2
  %i.cs = call zeroext i1 @SDL_IsJoystickGoogleStadiaController(i16 noundef zeroext %i.cq, i16 noundef zeroext %i.cr) #9, !inline_history !28
  br i1 %i.cs, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ct = call i64 @SDL_strlcat_REAL(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.109, i64 noundef 1024) #9, !inline_history !28 ; 0 uses
end_hunk_0
begin_hunk_1_@SDL_GetGamepadAxis_REAL:bb.a
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
  %.04864 = phi i1 [ false, %.lr.ph ], [ %.2, %bb.m ] ; 9 uses
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
  %2 = or i1 %.04864, %i.ag
  br label %bb.m

bb.i:                                             ; preds = %bb.f
  %.not = icmp sle i32 %i.aa, %i.w
  %i.ah = icmp sge i32 %i.y, %i.w
  %spec.select57 = and i1 %i.ah, %.not
  br i1 %spec.select57, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp sge i32 %i.ad, %i.w
  %3 = or i1 %.04864, %i.ai
  br label %bb.m

bb.k:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = tail call zeroext i1 @SDL_GetJoystickButton_REAL(ptr noundef %i.aj, i32 noundef %i.al) #9
  %4 = or i1 %.04864, %i.am
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
  %5 = or i1 %.04864, %i.av
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.j, %bb.i, %bb.l, %bb.k, %bb.d, %bb.c
  %.2 = phi i1 [ %.04864, %bb.c ], [ %4, %bb.k ], [ %5, %bb.l ], [ %.04864, %bb.e ], [ %.04864, %bb.d ], [ %2, %bb.h ], [ %.04864, %bb.g ], [ %3, %bb.j ], [ %.04864, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = load i32, ptr %i.f, align 8
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %bb.c, label %._crit_edge, !llvm.loop !54

SDL_ObjectValid.exit.thread59:                    ; preds = %bb.a, %SDL_ObjectValid.exit, %SDL_ObjectValid.exit.thread
  %i.az = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9 ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %.preheader, %SDL_ObjectValid.exit.thread59
  %.1 = phi i1 [ false, %SDL_ObjectValid.exit.thread59 ], [ false, %.preheader ], [ %.2, %bb.m ]
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
end_hunk_1
