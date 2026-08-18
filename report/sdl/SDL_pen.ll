inline.NumInlined: 14
inline.NumDeleted: 3
begin_hunk_0_@SDL_SendPenProximity:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %0, ptr %i.v, align 8
  %.not33 = icmp eq ptr %2, null
  br i1 %.not33, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load i32, ptr %2, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.x = phi i32 [ %i.w, %bb.j ], [ 0, %bb.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %1, ptr %i.z, align 4
  %i.aa = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %5) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.l

.critedge:                                        ; preds = %FindPenByInstanceId.exit.thread, %bb.h
  %i.ab = load ptr, ptr @pen_device_rwlock, align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.ab) #7
  br label %bb.l

.critedge37:                                      ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i8 0, ptr %i.ac, align 8
  %i.ad = load ptr, ptr @pen_device_rwlock, align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.ad) #7
  br label %bb.l

bb.l:                                             ; preds = %.critedge37, %.critedge, %bb.k, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_RemovePenDevice(i64 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %UpdateTouchEmulationDevicePresence.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  tail call void @SDL_SendPenProximity(i64 noundef %0, i32 noundef %2, ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext true)
  %i.a = load ptr, ptr @pen_device_rwlock, align 8
  tail call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.a) #7
  %i.b = load i32, ptr @pen_device_count, align 4 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %FindPenByInstanceId.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.d = load ptr, ptr @pen_devices, align 8
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %FindPenByInstanceId.exit.thread, label %bb.c, !llvm.loop !9

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %indvars.iv.i ; 3 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, %2
  br i1 %i.g, label %FindPenByInstanceId.exit, label %bb.b

FindPenByInstanceId.exit.thread:                  ; preds = %bb.b, %.preheader.i
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2) #7 ; 0 uses
  br label %bb.i

FindPenByInstanceId.exit:                         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.j) #7
  %i.k = load ptr, ptr @pen_devices, align 8      ; 5 uses
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 96                  ; 2 uses
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = load i32, ptr @pen_device_count, align 4 ; 2 uses
  %i.r = add nsw i32 %i.q, -1                     ; 4 uses
  %i.s = icmp sgt i32 %i.r, %i.p
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %FindPenByInstanceId.exit
  %sext = shl i64 %i.o, 32                        ; 2 uses
  %i.t = ashr exact i64 %sext, 32
  %i.u = getelementptr inbounds [96 x i8], ptr %i.k, i64 %i.t
  %sext18 = add i64 %sext, 4294967296
  %i.v = ashr exact i64 %sext18, 32
  %i.w = getelementptr inbounds [96 x i8], ptr %i.k, i64 %i.v
  %i.x = xor i32 %i.p, -1
  %i.y = add i32 %i.q, %i.x
  %i.z = sext i32 %i.y to i64
  %i.aa = mul nsw i64 %i.z, 96
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.u, ptr align 8 %i.w, i64 %i.aa, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %FindPenByInstanceId.exit, %bb.d
  store i32 %i.r, ptr @pen_device_count, align 4
  %.not19 = icmp eq i32 %i.r, 0
  br i1 %.not19, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = sext i32 %i.r to i64
  %i.ac = mul nsw i64 %i.ab, 96
  %i.ad = tail call ptr @SDL_realloc_REAL(ptr noundef %i.k, i64 noundef %i.ac) #8 ; 2 uses
  %.not20 = icmp eq ptr %i.ad, null
  br i1 %.not20, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.ad, ptr @pen_devices, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  tail call void @SDL_free_REAL(ptr noundef %i.k) #7
  store ptr null, ptr @pen_devices, align 8
  br label %bb.i

bb.i:                                             ; preds = %FindPenByInstanceId.exit.thread, %bb.h, %bb.g, %bb.f
  %i.ae = load ptr, ptr @pen_device_rwlock, align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.ae) #7
  %i.af = tail call ptr @SDL_GetMouse() #7        ; 2 uses
  %i.ag = load ptr, ptr @pen_device_rwlock, align 8
  tail call void @SDL_LockRWLockForReading_REAL(ptr noundef %i.ag) #7
  %i.ah = load i32, ptr @pen_device_count, align 4
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = load ptr, ptr @pen_device_rwlock, align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.aj) #7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 239
  %i.al = load i8, ptr %i.ak, align 1, !range !6, !noundef !7
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond.i = select i1 %i.am, i1 %i.ai, i1 false
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 242 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 2, !range !6, !noundef !7
  %i.ap = trunc nuw i8 %i.ao to i1                ; 2 uses
  br i1 %or.cond.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.ap, label %bb.k, label %UpdateTouchEmulationDevicePresence.exit

bb.k:                                             ; preds = %bb.j
  tail call void @SDL_DelTouch(i64 noundef -2) #7
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.i
  br i1 %i.ap, label %UpdateTouchEmulationDevicePresence.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = tail call i32 @SDL_AddTouch(i64 noundef -2, i32 noundef 0, ptr noundef nonnull @.str.3) #7 ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.m, %bb.k
  %.sink.i = phi i8 [ 1, %bb.m ], [ 0, %bb.k ]
  store i8 %.sink.i, ptr %i.an, align 2
  br label %UpdateTouchEmulationDevicePresence.exit

UpdateTouchEmulationDevicePresence.exit:          ; preds = %.sink.split.i, %bb.l, %bb.j, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden void @SDL_SendPenTouch(i64 noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %union.SDL_Event, align 8           ; 12 uses
  %i.a = zext i1 %3 to i8
  %i.b = zext i1 %4 to i8
  %i.c = load ptr, ptr @pen_device_rwlock, align 8
  tail call void @SDL_LockRWLockForReading_REAL(ptr noundef %i.c) #7
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.d = load i32, ptr @pen_device_count, align 4 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %.critedge

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.f = load ptr, ptr @pen_devices, align 8
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge, label %bb.c, !llvm.loop !9

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %indvars.iv.i ; 4 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, %1
  br i1 %i.i, label %FindPenByInstanceId.exit, label %bb.b

FindPenByInstanceId.exit:                         ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 76 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4              ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.m = load <2 x float>, ptr %i.l, align 4      ; 4 uses
  %i.n = and i32 %i.k, 1
  %i.o = icmp eq i32 %i.n, 0                      ; 2 uses
  %or.cond81.a = select i1 %4, i1 %i.o, i1 false
  br i1 %or.cond81.a, label %6, label %8

6:                                                ; preds = %FindPenByInstanceId.exit
  %7 = or disjoint i32 %i.k, 1
  br label %10

8:                                                ; preds = %FindPenByInstanceId.exit
  %or.cond79 = select i1 %4, i1 true, i1 %i.o
  %9 = and i32 %i.k, -2
  %spec.select84 = select i1 %4, i32 %i.k, i32 %9
  br label %10

10:                                               ; preds = %8, %6
  %.063.not = phi i1 [ false, %6 ], [ %or.cond79, %8 ]
  %.062 = phi i32 [ %7, %6 ], [ %spec.select84, %8 ] ; 4 uses
  %11 = and i32 %.062, 1073741824
  %12 = icmp eq i32 %11, 0                        ; 2 uses
  %or.cond81 = select i1 %3, i1 %12, i1 false
  br i1 %or.cond81, label %.thread, label %bb.d

.thread:                                          ; preds = %10
  %i.p = or disjoint i32 %.062, 1073741824        ; 2 uses
  store i32 %i.p, ptr %i.j, align 4
  %i.q = load ptr, ptr @pen_device_rwlock, align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.q) #7
  br label %bb.e

bb.d:                                             ; preds = %10
  %or.cond82 = select i1 %3, i1 true, i1 %12
  %i.r = and i32 %.062, -1073741825
  %spec.select85.not = select i1 %or.cond82, i1 %.063.not, i1 false
  %spec.select86 = select i1 %3, i32 %.062, i32 %i.r ; 2 uses
  store i32 %spec.select86, ptr %i.j, align 4
  %i.s = load ptr, ptr @pen_device_rwlock, align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.s) #7
  br i1 %spec.select85.not, label %bb.w, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %.16291 = phi i32 [ %i.p, %.thread ], [ %spec.select86, %bb.d ]
  %i.t = select i1 %4, i32 4866, i32 4867         ; 2 uses
  %i.u = tail call zeroext i1 @SDL_EventEnabled_REAL(i32 noundef %i.t) #7
  br i1 %i.u, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 128, i1 false)
  store i32 %i.t, ptr %5, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %0, ptr %i.v, align 8
  %.not73 = icmp eq ptr %2, null
  br i1 %.not73, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i32, ptr %2, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.x = phi i32 [ %i.w, %bb.g ], [ 0, %bb.f ]
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %1, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.16291, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 28
  store <2 x float> %i.m, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i8 %i.a, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 37
  store i8 %i.b, ptr %i.ad, align 1
  %i.ae = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %5) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.af = call ptr @SDL_GetMouse() #7             ; 3 uses
  %i.ag = icmp ne ptr %i.af, null
  %i.ah = icmp ne ptr %2, null
  %or.cond = and i1 %i.ah, %i.ag
  br i1 %or.cond, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 238
  %i.aj = load i8, ptr %i.ai, align 2, !range !6, !noundef !7
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.al = load i32, ptr @pen_touching, align 4    ; 2 uses
  br i1 %4, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %.not74 = icmp eq i32 %i.al, 0
  br i1 %.not74, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.am = extractelement <2 x float> %i.m, i64 0
  %i.an = extractelement <2 x float> %i.m, i64 1
  call void @SDL_SendMouseMotion(i64 noundef %0, ptr noundef nonnull %2, i32 noundef -2, i1 noundef zeroext false, float noundef %i.am, float noundef %i.an) #7
  br label %.sink.split

bb.n:                                             ; preds = %bb.k
  %i.ao = icmp eq i32 %i.al, %1
  br i1 %i.ao, label %.sink.split, label %bb.o

.sink.split:                                      ; preds = %bb.n, %bb.m
  call void @SDL_SendMouseButton(i64 noundef %0, ptr noundef nonnull %2, i32 noundef -2, i8 noundef zeroext 1, i1 noundef zeroext %4) #7
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.l, %bb.n, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 239
  %i.aq = load i8, ptr %i.ap, align 1, !range !6, !noundef !7
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.as = load i32, ptr @pen_touching, align 4    ; 2 uses
  %.not75 = icmp eq i32 %i.as, 0
  %i.at = icmp eq i32 %i.as, %1
  %or.cond83 = or i1 %.not75, %i.at
  br i1 %or.cond83, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.av = load <2 x i32>, ptr %i.au, align 8
  %i.aw = sitofp <2 x i32> %i.av to <2 x float>
  %i.ax = fdiv <2 x float> %i.m, %i.aw            ; 2 uses
  %i.ay = select i1 %4, i32 1792, i32 1793
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ba = load float, ptr %i.az, align 8
  %i.bb = extractelement <2 x float> %i.ax, i64 0
  %i.bc = extractelement <2 x float> %i.ax, i64 1
  call void @SDL_SendTouch(i64 noundef %0, i64 noundef -2, i64 noundef 1, ptr noundef nonnull %2, i32 noundef %i.ay, float noundef %i.bb, float noundef %i.bc, float noundef %i.ba) #7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.i
  %i.bd = load i32, ptr @pen_touching, align 4    ; 2 uses
  br i1 %4, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %.not76 = icmp eq i32 %i.bd, 0
  br i1 %.not76, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  store i32 %1, ptr @pen_touching, align 4
  br label %bb.w

bb.u:                                             ; preds = %bb.r
  %i.be = icmp eq i32 %i.bd, %1
  br i1 %i.be, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr @pen_touching, align 4
  br label %bb.w

.critedge:                                        ; preds = %bb.b, %bb.a, %.preheader.i
  %i.bf = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2) #7 ; 0 uses
  %i.bg = load ptr, ptr @pen_device_rwlock, align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.bg) #7
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.s, %bb.v, %bb.u, %.critedge, %bb.d
  ret void
}

declare zeroext i1 @SDL_EventEnabled_REAL(i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_PushEvent_REAL(ptr noundef) local_unnamed_addr #2

declare ptr @SDL_GetMouse() local_unnamed_addr #2

declare void @SDL_SendMouseMotion(i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, float noundef, float noundef) local_unnamed_addr #2

declare void @SDL_SendMouseButton(i64 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare void @SDL_SendTouch(i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @SDL_SendPenAxis(i64 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %union.SDL_Event, align 8           ; 12 uses
  %i.a = load ptr, ptr @pen_device_rwlock, align 8
  tail call void @SDL_LockRWLockForReading_REAL(ptr noundef %i.a) #7
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %FindPenByInstanceId.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = load i32, ptr @pen_device_count, align 4 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %FindPenByInstanceId.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.d = load ptr, ptr @pen_devices, align 8
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %FindPenByInstanceId.exit.thread, label %bb.c, !llvm.loop !9

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %indvars.iv.i ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, %1
  br i1 %i.g, label %FindPenByInstanceId.exit, label %bb.b

FindPenByInstanceId.exit.thread:                  ; preds = %bb.b, %bb.a, %.preheader.i
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2) #7 ; 0 uses
  br label %.critedge

FindPenByInstanceId.exit:                         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.j = zext i32 %3 to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load float, ptr %i.k, align 4
  %i.m = fcmp une float %i.l, %4
  br i1 %i.m, label %bb.d, label %.critedge

bb.d:                                             ; preds = %FindPenByInstanceId.exit
  store float %4, ptr %i.k, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.q = load <2 x float>, ptr %i.p, align 4      ; 2 uses
  %i.r = load ptr, ptr @pen_device_rwlock, align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.r) #7
  %i.s = tail call zeroext i1 @SDL_EventEnabled_REAL(i32 noundef 4871) #7
  br i1 %i.s, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 128, i1 false)
  store i32 4871, ptr %5, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %0, ptr %i.t, align 8
  %i.u = icmp ne ptr %2, null                     ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g
end_hunk_0
