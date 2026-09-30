Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_waylandevents?download=true
inline.NumInlined: 237
inline.NumDeleted: 124
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@pointer_handle_axis_value120:bb.a
  %.pre35.i = load float, ptr %.phi.trans.insert34.i, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %i.e, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge33.i
  %i.g = phi float [ %.pre35.i, %._crit_edge33.i ], [ 0.000000e+00, %bb.d ]
  %i.h = sext i32 %i.a to i64
  %i.i = add nsw i64 %i.h, 4807592602218004480
  %i.j = bitcast i64 %i.i to double
  %i.k = fadd double %i.j, f0xC2B8000000000000
  %i.l = fptrunc double %i.k to float
  %i.m = fsub float 0.000000e+00, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.o = fadd float %i.m, %i.g
  store float %i.o, ptr %i.n, align 8
  br label %pointer_handle_axis_common.exit

bb.f:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %.not30.i = icmp eq i32 %i.q, 2
  br i1 %.not30.i, label %._crit_edge.i, label %bb.g

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %i.p, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %i.r = phi float [ %.pre.i, %._crit_edge.i ], [ 0.000000e+00, %bb.g ]
  %i.s = sext i32 %i.a to i64
  %i.t = add nsw i64 %i.s, 4807592602218004480
  %i.u = bitcast i64 %i.t to double
  %i.v = fadd double %i.u, f0xC2B8000000000000
  %i.w = fptrunc double %i.v to float
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.y = fadd float %i.r, %i.w
  store float %i.y, ptr %i.x, align 8
  br label %pointer_handle_axis_common.exit

pointer_handle_axis_common.exit:                  ; preds = %bb.a, %bb.b, %bb.e, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @pointer_handle_axis_relative_direction(ptr nofree noundef writeonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, i32 noundef %3) #5 {
bb.a:
  %switch = icmp ult i32 %3, 2
  br i1 %switch, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 428
  store i32 %3, ptr %i.a, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.sink.split
  ret void
}

declare void @SDL_SetMouseFocus(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @pointer_dispatch_absolute_motion(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load ptr, ptr %i.a, align 8              ; 12 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.f = load <2 x i32>, ptr %i.d, align 4
  %i.g = sext <2 x i32> %i.f to <2 x i64>
  %i.h = add nsw <2 x i64> %i.g, splat (i64 4807592602218004480)
  %i.i = bitcast <2 x i64> %i.h to <2 x double>
  %i.j = fadd <2 x double> %i.i, splat (double f0xC2B8000000000000)
  %i.k = load <2 x double>, ptr %i.e, align 8
  %i.l = fmul <2 x double> %i.k, %i.j
  %i.m = fptrunc <2 x double> %i.l to <2 x float> ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.q = load i32, ptr %i.p, align 4
  %i.r = extractelement <2 x float> %i.m, i64 0   ; 2 uses
  %i.s = extractelement <2 x float> %i.m, i64 1   ; 2 uses
  tail call void @SDL_SendMouseMotion(i64 noundef %i.o, ptr noundef %i.c, i32 noundef %i.q, i1 noundef zeroext false, float noundef %i.r, float noundef %i.s) #12
  %i.t = tail call float @SDL_floorf_REAL(float noundef %i.r) #12
  %i.u = fptosi float %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  store i32 %i.u, ptr %i.v, align 8
  %i.w = tail call float @SDL_floorf_REAL(float noundef %i.s) #12
  %i.x = fptosi float %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 372
  store i32 %i.x, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = icmp slt i32 %i.aa, 1
  br i1 %i.ab, label %SDL_RectEmpty.exit.thread, label %SDL_RectEmpty.exit

SDL_RectEmpty.exit:                               ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 348
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %SDL_RectEmpty.exit.thread, label %bb.c

bb.c:                                             ; preds = %SDL_RectEmpty.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ag = load i8, ptr %i.af, align 8, !range !32, !noundef !33
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %SDL_RectEmpty.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @Wayland_SeatUpdatePointerGrab(ptr noundef nonnull %0)
  br label %SDL_RectEmpty.exit.thread

SDL_RectEmpty.exit.thread:                        ; preds = %bb.b, %bb.d, %bb.c, %SDL_RectEmpty.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not54 = icmp eq ptr %i.aj, null
  br i1 %.not54, label %.critedge, label %bb.e

bb.e:                                             ; preds = %SDL_RectEmpty.exit.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call i32 %i.aj(ptr noundef nonnull %i.c, ptr noundef nonnull %i.v, ptr noundef %i.al) #12 ; 2 uses
  switch i32 %i.am, label %bb.r [
    i32 2, label %bb.f
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.k
    i32 6, label %bb.l
    i32 7, label %bb.n
    i32 8, label %bb.o
    i32 9, label %bb.q
  ]

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.ao = load i32, ptr %i.an, align 4            ; 3 uses
  %i.ap = and i32 %i.ao, 5
  %or.cond.not = icmp eq i32 %i.ap, 5
  br i1 %or.cond.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = and i32 %i.ao, 1
  %i.ar = and i32 %i.ao, 4
  %.not71 = icmp eq i32 %i.ar, 0
  %spec.select = or disjoint i32 %i.aq, 2
  %spec.select86 = select i1 %.not71, i32 %spec.select, i32 9
  br label %bb.r

bb.h:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.at = load i32, ptr %i.as, align 4
  %i.au = and i32 %i.at, 4
  %.not70 = icmp eq i32 %i.au, 0
  %spec.select76 = select i1 %.not70, i32 3, i32 0
  br label %bb.r

bb.i:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.aw = load i32, ptr %i.av, align 4            ; 3 uses
  %i.ax = and i32 %i.aw, 6
  %or.cond77.not = icmp eq i32 %i.ax, 6
  br i1 %or.cond77.not, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = and i32 %i.aw, 2
  %.not67 = icmp eq i32 %i.ay, 0
  %i.az = and i32 %i.aw, 4
  %.not66 = icmp eq i32 %i.az, 0
  %spec.select78 = select i1 %.not67, i32 4, i32 3
  %spec.select87 = select i1 %.not66, i32 %spec.select78, i32 5
  br label %bb.r

bb.k:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = and i32 %i.bb, 2
  %.not65 = icmp eq i32 %i.bc, 0
  %spec.select79 = select i1 %.not65, i32 5, i32 0
  br label %bb.r

bb.l:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.be = load i32, ptr %i.bd, align 4            ; 3 uses
  %i.bf = and i32 %i.be, 10
  %or.cond80.not = icmp eq i32 %i.bf, 10
  br i1 %or.cond80.not, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = and i32 %i.be, 8
  %.not62 = icmp eq i32 %i.bg, 0
  %1 = lshr i32 %i.be, 1
  %2 = and i32 %1, 1
  %spec.select81 = or disjoint i32 %2, 6
  %spec.select88 = select i1 %.not62, i32 %spec.select81, i32 5
  br label %bb.r

bb.n:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = and i32 %i.bi, 8
  %.not60 = icmp eq i32 %i.bj, 0
  %spec.select82 = select i1 %.not60, i32 7, i32 0
  br label %bb.r

bb.o:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.bl = load i32, ptr %i.bk, align 4            ; 3 uses
  %i.bm = and i32 %i.bl, 9
  %or.cond83.not = icmp eq i32 %i.bm, 9
  br i1 %or.cond83.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = and i32 %i.bl, 1
  %i.bo = and i32 %i.bl, 8
  %.not56 = icmp eq i32 %i.bo, 0
  %spec.select84 = sub nuw nsw i32 8, %i.bn
  %spec.select89 = select i1 %.not56, i32 %spec.select84, i32 9
  br label %bb.r

bb.q:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = and i32 %i.bq, 1
  %.not55 = icmp eq i32 %i.br, 0
  %spec.select85 = select i1 %.not55, i32 9, i32 0
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.m, %bb.j, %bb.g, %bb.q, %bb.n, %bb.k, %bb.h, %bb.o, %bb.l, %bb.i, %bb.f, %bb.e
  %.0 = phi i32 [ %i.am, %bb.e ], [ 0, %bb.l ], [ 0, %bb.f ], [ %spec.select79, %bb.k ], [ %spec.select85, %bb.q ], [ 0, %bb.o ], [ %spec.select82, %bb.n ], [ %spec.select76, %bb.h ], [ 0, %bb.i ], [ %spec.select87, %bb.j ], [ %spec.select88, %bb.m ], [ %spec.select86, %bb.g ], [ %spec.select89, %bb.p ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 408 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8
  %.not75 = icmp eq i32 %.0, %i.bt
  br i1 %.not75, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %.0, ptr %i.bs, align 8
  tail call void @Wayland_SeatUpdatePointerCursor(ptr noundef nonnull %0) #12
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %SDL_RectEmpty.exit.thread, %bb.s, %bb.r
  ret void
}

declare void @SDL_SendMouseMotion(i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, float noundef, float noundef) local_unnamed_addr #2

declare float @SDL_floorf_REAL(float noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @SDL_SendMouseButton(i64 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare void @SDL_SendMouseWheel(i64 noundef, ptr noundef, i32 noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare ptr @SDL_GetMouse() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @touch_handler_down(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
bb.a:
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %5 to i64
  %i.b = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 40) #12 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store i64 %i.a, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %6, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %7, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %4, ptr %i.f, align 8
  %i.g = load ptr, ptr @WAYLAND_wl_list_insert, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 544
  tail call void %i.g(ptr noundef nonnull %i.h, ptr noundef nonnull %i.c) #12, !inline_history !131
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp ugt i32 %2, %i.j
  br i1 %i.k, label %bb.c, label %Wayland_UpdateImplicitGrabSerial.exit

bb.c:                                             ; preds = %bb.b
  store i32 %2, ptr %i.i, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 280
  store ptr %0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @Wayland_data_device_set_serial(ptr noundef %i.o, i32 noundef %2) #12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @Wayland_primary_selection_device_set_serial(ptr noundef %i.q, i32 noundef %2) #12
  br label %Wayland_UpdateImplicitGrabSerial.exit

Wayland_UpdateImplicitGrabSerial.exit:            ; preds = %bb.b, %bb.c
  %i.r = tail call ptr @Wayland_GetWindowDataForOwnedSurface(ptr noundef nonnull %4) #12 ; 6 uses
  %.not28 = icmp eq ptr %i.r, null
  br i1 %.not28, label %bb.q, label %bb.d

bb.d:                                             ; preds = %Wayland_UpdateImplicitGrabSerial.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 312
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp slt i32 %i.t, 2
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = sext i32 %6 to i64
  %i.w = add nsw i64 %i.v, 4807592602218004480
  %i.x = bitcast i64 %i.w to double
  %i.y = fadd double %i.x, f0xC2B8000000000000
  %i.z = fptrunc double %i.y to float
  %i.aa = add nsw i32 %i.t, -1
  %i.ab = uitofp nneg i32 %i.aa to float
  %i.ac = fdiv float %i.z, %i.ab
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.025 = phi float [ %i.ac, %bb.e ], [ 5.000000e-01, %bb.d ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 316
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = icmp slt i32 %i.ae, 2
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = sext i32 %7 to i64
  %i.ah = add nsw i64 %i.ag, 4807592602218004480
  %i.ai = bitcast i64 %i.ah to double
  %i.aj = fadd double %i.ai, f0xC2B8000000000000
  %i.ak = fptrunc double %i.aj to float
  %i.al = add nsw i32 %i.ae, -1
  %i.am = uitofp nneg i32 %i.al to float
  %i.an = fdiv float %i.ak, %i.am
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0 = phi float [ %i.an, %bb.g ], [ 5.000000e-01, %bb.f ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 276 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 4
  %i.ar = load ptr, ptr %i.r, align 8
  tail call void @SDL_SetMouseFocus(ptr noundef %i.ar) #12
  %i.as = zext i32 %3 to i64
  %i.at = mul nuw nsw i64 %i.as, 1000000
  %i.au = load i64, ptr @Wayland_EventTimestampMSToNS.timestamp_offset, align 8 ; 3 uses
  %i.av = add i64 %i.au, %i.at                    ; 4 uses
  %i.aw = load i32, ptr @Wayland_EventTimestampMSToNS.last, align 4 ; 3 uses
  %.not.i.i = icmp ult i32 %3, %i.aw
  br i1 %.not.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = icmp ne i64 %i.au, 0
  %i.ay = icmp ult i32 %i.aw, 268435455
  %or.cond.i.i = and i1 %i.ax, %i.ay
  %i.az = icmp ugt i32 %3, -268435471
  %or.cond3.i.i = and i1 %i.az, %or.cond.i.i
  br i1 %or.cond3.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = add i64 %i.av, -4294967296000000
  br label %Wayland_EventTimestampMSToNS.exit.i

bb.k:                                             ; preds = %bb.i
  store i32 %3, ptr @Wayland_EventTimestampMSToNS.last, align 4
  br label %Wayland_EventTimestampMSToNS.exit.i

bb.l:                                             ; preds = %bb.h
  %i.bb = icmp ult i32 %3, 268435455
  %i.bc = icmp ugt i32 %i.aw, -268435471
  %or.cond5.i.i = and i1 %i.bb, %i.bc
  br i1 %or.cond5.i.i, label %bb.m, label %Wayland_EventTimestampMSToNS.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bd = add i64 %i.au, 4294967296000000
  store i64 %i.bd, ptr @Wayland_EventTimestampMSToNS.timestamp_offset, align 8
  %i.be = add i64 %i.av, 4294967296000000
  store i32 %3, ptr @Wayland_EventTimestampMSToNS.last, align 4
  br label %Wayland_EventTimestampMSToNS.exit.i

Wayland_EventTimestampMSToNS.exit.i:              ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.0.i.i = phi i64 [ %i.ba, %bb.j ], [ %i.av, %bb.k ], [ %i.be, %bb.m ], [ %i.av, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bg = load ptr, ptr %i.bf, align 8
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %Wayland_EventTimestampMSToNS.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.bi = load i64, ptr %i.bh, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %Wayland_EventTimestampMSToNS.exit.i
  %i.bj = phi i64 [ %i.bi, %bb.n ], [ %.0.i.i, %Wayland_EventTimestampMSToNS.exit.i ] ; 2 uses
  %i.bk = tail call i64 @SDL_GetTicksNS_REAL() #12 ; 3 uses
end_hunk_0
