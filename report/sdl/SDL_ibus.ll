Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_ibus?download=true
inline.NumInlined: 14
inline.NumDeleted: 6
begin_hunk_0_@IBus_SetCapabilities:bb.a
  %i.c = tail call fastcc zeroext i1 @IBus_CheckConnection(ptr noundef %i.b)
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 8, ptr %i.a, align 4
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @SDL_strstr_REAL(ptr noundef nonnull %3, ptr noundef nonnull @.str.32) #7
  %.not5 = icmp eq ptr %i.d, null
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 9, ptr %i.a, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.e = tail call ptr @SDL_strstr_REAL(ptr noundef nonnull %3, ptr noundef nonnull @.str.33) #7 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.e
  %i.f = load ptr, ptr @ibus_conn, align 8
  %i.g = load ptr, ptr @ibus_service, align 8
  %i.h = load ptr, ptr @input_ctx_path, align 8
  %i.i = load ptr, ptr @ibus_input_interface, align 8
  %i.j = call zeroext i1 (ptr, ptr, ptr, ptr, ptr, ...) @SDL_DBus_CallVoidMethodOnConnection(ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef nonnull @.str.34, i32 noundef 117, ptr noundef nonnull %i.a, i32 noundef 0) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define hidden void @SDL_IBus_SetFocus(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = select i1 %0, ptr @.str.1, ptr @.str.2
  %i.b = tail call ptr @SDL_DBus_GetContext() #7, !inline_history !0
  %i.c = load ptr, ptr @input_ctx_path, align 8
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %IBus_SimpleMessage.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc zeroext i1 @IBus_CheckConnection(ptr noundef %i.b), !inline_history !0
  br i1 %i.d, label %bb.c, label %IBus_SimpleMessage.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @ibus_conn, align 8
  %i.f = load ptr, ptr @ibus_service, align 8
  %i.g = load ptr, ptr @input_ctx_path, align 8
  %i.h = load ptr, ptr @ibus_input_interface, align 8
  %i.i = tail call zeroext i1 (ptr, ptr, ptr, ptr, ptr, ...) @SDL_DBus_CallVoidMethodOnConnection(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef nonnull %i.a, i32 noundef 0) #7, !inline_history !0 ; 0 uses
  br label %IBus_SimpleMessage.exit

IBus_SimpleMessage.exit:                          ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_IBus_Reset() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SDL_DBus_GetContext() #7, !inline_history !0
  %i.b = load ptr, ptr @input_ctx_path, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %IBus_SimpleMessage.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @IBus_CheckConnection(ptr noundef %i.a), !inline_history !0
  br i1 %i.c, label %bb.c, label %IBus_SimpleMessage.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @ibus_conn, align 8
  %i.e = load ptr, ptr @ibus_service, align 8
  %i.f = load ptr, ptr @input_ctx_path, align 8
  %i.g = load ptr, ptr @ibus_input_interface, align 8
  %i.h = tail call zeroext i1 (ptr, ptr, ptr, ptr, ptr, ...) @SDL_DBus_CallVoidMethodOnConnection(ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef nonnull @.str.3, i32 noundef 0) #7, !inline_history !0 ; 0 uses
  br label %IBus_SimpleMessage.exit

IBus_SimpleMessage.exit:                          ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_IBus_ProcessKeyEvent(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  store i32 %0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 0, ptr %i.b, align 4
  %i.e = tail call ptr @SDL_DBus_GetContext() #7
  %i.f = tail call fastcc zeroext i1 @IBus_CheckConnection(ptr noundef %i.e)
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.g = tail call zeroext i16 @SDL_GetModState_REAL() #7 ; 2 uses
  %i.h = zext i16 %i.g to i32                     ; 7 uses
  %i.i = and i16 %i.g, 1
  %spec.select.i = zext nneg i16 %i.i to i32
  %i.j = lshr i32 %i.h, 12
  %i.k = and i32 %i.j, 2
  %.1.i = or disjoint i32 %i.k, %spec.select.i
  %i.l = lshr i32 %i.h, 4
  %i.m = and i32 %i.l, 4
  %.2.i = or disjoint i32 %.1.i, %i.m
  %i.n = lshr i32 %i.h, 5
  %i.o = and i32 %i.n, 8
  %.3.i = or disjoint i32 %.2.i, %i.o
  %i.p = lshr i32 %i.h, 8
  %i.q = and i32 %i.p, 16
  %.4.i = or disjoint i32 %.3.i, %i.q
  %i.r = lshr i32 %i.h, 7
  %i.s = and i32 %i.r, 128
  %.5.i = or i32 %.4.i, %i.s
  %i.t = shl nuw i32 %i.h, 16
  %i.u = and i32 %i.t, 67108864
  %.6.i = or i32 %.5.i, %i.u
  %i.v = shl i32 %i.h, 17
  %i.w = and i32 %i.v, 268435456
  %.7.i = or i32 %.6.i, %i.w                      ; 2 uses
  store i32 %.7.i, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.x = add i32 %1, -8
  store i32 %i.x, ptr %i.d, align 4
  br i1 %2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = or i32 %.7.i, 1073741824
  store i32 %i.y, ptr %i.c, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = load ptr, ptr @ibus_conn, align 8
  %i.aa = load ptr, ptr @ibus_service, align 8
  %i.ab = load ptr, ptr @input_ctx_path, align 8
  %i.ac = load ptr, ptr @ibus_input_interface, align 8
  %i.ad = call zeroext i1 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @SDL_DBus_CallMethodOnConnection(ptr noundef %i.z, ptr noundef null, ptr noundef %i.aa, ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef nonnull @.str.4, i32 noundef 117, ptr noundef nonnull %i.a, i32 noundef 117, ptr noundef nonnull %i.d, i32 noundef 117, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 98, ptr noundef nonnull %i.b, i32 noundef 0) #7
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.b, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.ae = call ptr @SDL_GetKeyboardFocus_REAL() #7
  call void @SDL_IBus_UpdateTextInputArea(ptr noundef %i.ae)
  %i.af = load i32, ptr %i.b, align 4
  %i.ag = icmp ne i32 %i.af, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i1 %i.ag
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @IBus_CheckConnection(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @ibus_conn, align 8        ; 2 uses
  %.not43 = icmp eq ptr %i.b, null
  br i1 %.not43, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 %i.d(ptr noundef nonnull %i.b) #7
  %.not44 = icmp eq i32 %i.e, 0
  br i1 %.not44, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = load i32, ptr @inotify_fd, align 4       ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  %i.h = load i32, ptr @inotify_wd, align 4
  %i.i = icmp sgt i32 %i.h, 0
  %or.cond = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.j = call i64 @read(i32 noundef %i.f, ptr noundef nonnull %i.a, i64 noundef 1024) #7 ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader, label %.sink.split

.preheader:                                       ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j
  br label %1

1:                                                ; preds = %.preheader, %3
  %.036 = phi ptr [ %.137, %3 ], [ %i.a, %.preheader ] ; 5 uses
  %.031 = phi i1 [ %.334, %3 ], [ false, %.preheader ] ; 2 uses
  %2 = icmp ult ptr %.036, %i.l
  br i1 %2, label %bb.f, label %5

bb.f:                                             ; preds = %1
  %i.m = getelementptr inbounds nuw i8, ptr %.036, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %.not45 = icmp eq i32 %i.n, 0
  br i1 %.not45, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @ibus_addr_file, align 8
  %i.p = call ptr @SDL_strrchr_REAL(ptr noundef %i.o, i32 noundef 47) #7 ; 2 uses
  %.not46 = icmp eq ptr %i.p, null
  br i1 %.not46, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %.036, i64 16
  %i.s = call i32 @SDL_strcmp_REAL(ptr noundef nonnull %i.q, ptr noundef nonnull %i.r) #7
  %.not71 = icmp eq i32 %i.s, 0
  br i1 %.not71, label %3, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre = load i32, ptr %i.m, align 4
  %i.t = zext i32 %.pre to i64
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %i.u = phi i64 [ %i.t, %._crit_edge ], [ 0, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %.036, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br label %3

3:                                                ; preds = %bb.h, %bb.i
  %.137 = phi ptr [ %i.w, %bb.i ], [ %.036, %bb.h ]
  %.334 = phi i1 [ %.031, %bb.i ], [ true, %bb.h ] ; 2 uses
  %4 = phi i1 [ true, %bb.i ], [ false, %bb.h ]
  br i1 %4, label %1, label %5

5:                                                ; preds = %3, %1
  %.435 = phi i1 [ %.334, %3 ], [ %.031, %1 ]
  br i1 %.435, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %5
  %i.x = load ptr, ptr @ibus_addr_file, align 8
  %i.y = call fastcc ptr @IBus_ReadAddressFromFile(ptr noundef %i.x) ; 3 uses
  %.not47 = icmp eq ptr %i.y, null
  br i1 %.not47, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = call fastcc zeroext i1 @IBus_SetupConnection(ptr noundef %0, ptr noundef %i.y)
  call void @SDL_free_REAL(ptr noundef nonnull %i.y) #7
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.k, %bb.j, %5, %bb.e
  %.10.ph = phi i1 [ false, %bb.j ], [ false, %bb.e ], [ false, %5 ], [ %i.z, %bb.k ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.d, %bb.c, %bb.a
  %.10 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %bb.d ], [ %.10.ph, %.sink.split ]
  ret i1 %.10
}

declare zeroext i1 @SDL_DBus_CallMethodOnConnection(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @SDL_IBus_UpdateTextInputArea(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 0, ptr %i.b, align 4
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.g = load i32, ptr %i.f, align 4
  %i.h = add nsw i32 %i.g, %i.e
  store i32 %i.h, ptr @ibus_cursor_rect, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.j = load i32, ptr %i.i, align 4
  store i32 %i.j, ptr getelementptr inbounds nuw (i8, ptr @ibus_cursor_rect, i64 4), align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  store i32 %i.l, ptr getelementptr inbounds nuw (i8, ptr @ibus_cursor_rect, i64 8), align 4
  store i32 %i.l, ptr getelementptr inbounds nuw (i8, ptr @ibus_cursor_rect, i64 12), align 4
  %i.m = call zeroext i1 @SDL_GetWindowPosition_REAL(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7 ; 0 uses
  %i.n = call i32 @SDL_GetWindowProperties_REAL(ptr noundef nonnull %0) #7 ; 3 uses
  %i.o = call ptr @SDL_GetPointerProperty_REAL(i32 noundef %i.n, ptr noundef nonnull @.str.5, ptr noundef null) #7 ; 3 uses
  %i.p = call i64 @SDL_GetNumberProperty_REAL(i32 noundef %i.n, ptr noundef nonnull @.str.6, i64 noundef 0) #7
  %i.q = call i64 @SDL_GetNumberProperty_REAL(i32 noundef %i.n, ptr noundef nonnull @.str.7, i64 noundef 0) #7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.r = icmp ne ptr %i.o, null
  %i.s = icmp ne i64 %i.q, 0
  %or.cond = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr @X11_XTranslateCoordinates, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  %i.v = load ptr, ptr %i.u, align 8
  %sext = shl i64 %i.p, 32
  %i.w = ashr exact i64 %sext, 25
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = call i32 %i.t(ptr noundef nonnull %i.o, i64 noundef %i.q, i64 noundef %i.z, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.ab = load i32, ptr @ibus_cursor_rect, align 4
  %i.ac = load i32, ptr %i.a, align 4
  %i.ad = add nsw i32 %i.ac, %i.ab
  store i32 %i.ad, ptr %i.a, align 4
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @ibus_cursor_rect, i64 4), align 4
  %i.af = load i32, ptr %i.b, align 4
  %i.ag = add nsw i32 %i.af, %i.ae
  store i32 %i.ag, ptr %i.b, align 4
  %i.ah = call ptr @SDL_DBus_GetContext() #7
  %i.ai = call fastcc zeroext i1 @IBus_CheckConnection(ptr noundef %i.ah)
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr @ibus_conn, align 8
  %i.ak = load ptr, ptr @ibus_service, align 8
  %i.al = load ptr, ptr @input_ctx_path, align 8
  %i.am = load ptr, ptr @ibus_input_interface, align 8
  %i.an = call zeroext i1 (ptr, ptr, ptr, ptr, ptr, ...) @SDL_DBus_CallVoidMethodOnConnection(ptr noundef %i.aj, ptr noundef %i.ak, ptr noundef %i.al, ptr noundef %i.am, ptr noundef nonnull @.str.8, i32 noundef 105, ptr noundef nonnull %i.a, i32 noundef 105, ptr noundef nonnull %i.b, i32 noundef 105, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ibus_cursor_rect, i64 8), i32 noundef 105, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ibus_cursor_rect, i64 12), i32 noundef 0) #7 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare ptr @SDL_GetKeyboardFocus_REAL() local_unnamed_addr #2

declare zeroext i1 @SDL_GetWindowPosition_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SDL_GetWindowProperties_REAL(ptr noundef) local_unnamed_addr #2

declare ptr @SDL_GetPointerProperty_REAL(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @SDL_GetNumberProperty_REAL(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_DBus_CallVoidMethodOnConnection(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @SDL_IBus_PumpEvents() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SDL_DBus_GetContext() #7  ; 3 uses
  %i.b = tail call fastcc zeroext i1 @IBus_CheckConnection(ptr noundef %i.a)
  br i1 %i.b, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr @ibus_conn, align 8
  %i.f = tail call i32 %i.d(ptr noundef %i.e, i32 noundef 0) #7 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr @ibus_conn, align 8
  %i.j = tail call i32 %i.h(ptr noundef %i.i) #7
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %.loopexit, !llvm.loop !8

.loopexit:                                        ; preds = %bb.c, %bb.a
  ret void
}

declare ptr @SDL_getenv_REAL(ptr noundef) local_unnamed_addr #2

declare i32 @SDL_strcmp_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @SDL_strlcpy_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SDL_snprintf_REAL(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @SDL_DBus_GetLocalMachineId() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @SDL_strncmp_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @SDL_strlen_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @IBus_MessageHandler(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %struct.DBusMessageIter, align 8    ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %struct.DBusMessageIter, align 8    ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %5 = alloca %struct.DBusMessageIter, align 8    ; 6 uses
  %6 = alloca %struct.DBusMessageIter, align 8    ; 11 uses
  %7 = alloca %struct.DBusMessageIter, align 8    ; 10 uses
  %8 = alloca %struct.DBusMessageIter, align 8    ; 9 uses
  %9 = alloca %struct.DBusMessageIter, align 8    ; 16 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %10 = alloca %struct.DBusMessageIter, align 8   ; 4 uses
  %11 = alloca %struct.DBusMessageIter, align 8   ; 11 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr @ibus_input_interface, align 8
  %i.k = tail call i32 %i.i(ptr noundef %1, ptr noundef %i.j, ptr noundef nonnull @.str.25) #7
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call i32 %i.m(ptr noundef %1, ptr noundef nonnull %10) #7 ; 0 uses
  %i.o = call fastcc ptr @IBus_GetVariantText(ptr noundef %10, ptr noundef nonnull %2)
  call void @SDL_SendKeyboardText(ptr noundef %i.o) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.h, align 8
  %i.q = load ptr, ptr @ibus_input_interface, align 8
  %i.r = tail call i32 %i.p(ptr noundef %1, ptr noundef %i.q, ptr noundef nonnull @.str.26) #7
  %.not33 = icmp eq i32 %i.r, 0
  br i1 %.not33, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call i32 %i.t(ptr noundef %1, ptr noundef nonnull %11) #7 ; 0 uses
  %i.v = call fastcc ptr @IBus_GetVariantText(ptr noundef %11, ptr noundef nonnull %2) ; 4 uses
  %.not35 = icmp eq ptr %i.v, null
  br i1 %.not35, label %bb.y, label %bb.e
end_hunk_0
