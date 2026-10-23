Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_audio?download=true
inline.NumInlined: 91
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@SDL_AudioStreamDevicePaused_REAL:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.e, null
  br i1 %.not9.i, label %SDL_GetAudioStreamDevice_REAL.exit.thread8, label %SDL_GetAudioStreamDevice_REAL.exit

SDL_GetAudioStreamDevice_REAL.exit.thread8:       ; preds = %bb.b
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.27) #11 ; 0 uses
  %i.g = load ptr, ptr %0, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.g) #11
  br label %bb.e

SDL_GetAudioStreamDevice_REAL.exit:               ; preds = %bb.b
  %i.h = load i32, ptr %i.e, align 8              ; 2 uses
  %i.i = load ptr, ptr %0, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.i) #11
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %SDL_GetAudioStreamDevice_REAL.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8
  %i.j = call fastcc ptr @ObtainLogicalAudioDevice(i32 noundef %i.h, ptr noundef %i.a) ; 2 uses
  %.not.i4 = icmp eq ptr %i.j, null
  br i1 %.not.i4, label %SDL_AudioDevicePaused_REAL.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %i.k) #11
  %.not4.i = icmp ne i32 %i.l, 0
  br label %SDL_AudioDevicePaused_REAL.exit

SDL_AudioDevicePaused_REAL.exit:                  ; preds = %bb.c, %bb.d
  %.0.i5 = phi i1 [ false, %bb.c ], [ %.not4.i, %bb.d ]
  %i.m = load ptr, ptr %i.a, align 8
  tail call fastcc void @ReleaseAudioDevice(ptr noundef %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.e

bb.e:                                             ; preds = %SDL_GetAudioStreamDevice_REAL.exit.thread8, %SDL_GetAudioStreamDevice_REAL.exit.thread, %SDL_GetAudioStreamDevice_REAL.exit, %SDL_AudioDevicePaused_REAL.exit
  %.0 = phi i1 [ %.0.i5, %SDL_AudioDevicePaused_REAL.exit ], [ false, %SDL_GetAudioStreamDevice_REAL.exit ], [ false, %SDL_GetAudioStreamDevice_REAL.exit.thread ], [ false, %SDL_GetAudioStreamDevice_REAL.exit.thread8 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @SDL_ClosestAudioFormats(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 8, label %bb.c
    i32 32776, label %.fold.split
    i32 32784, label %.fold.split12
    i32 36880, label %.fold.split13
    i32 32800, label %.fold.split14
    i32 36896, label %.fold.split15
    i32 33056, label %.fold.split16
    i32 37152, label %.fold.split17
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

.fold.split:                                      ; preds = %bb.a
  br label %bb.c

.fold.split12:                                    ; preds = %bb.a
  br label %bb.c

.fold.split13:                                    ; preds = %bb.a
  br label %bb.c

.fold.split14:                                    ; preds = %bb.a
  br label %bb.c

.fold.split15:                                    ; preds = %bb.a
  br label %bb.c

.fold.split16:                                    ; preds = %bb.a
  br label %bb.c

.fold.split17:                                    ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.fold.split17, %.fold.split16, %.fold.split15, %.fold.split14, %.fold.split13, %.fold.split12, %.fold.split, %bb.b
  %i.a = phi ptr [ @format_list, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @format_list, i64 32), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @format_list, i64 108), %.fold.split13 ], [ getelementptr inbounds nuw (i8, ptr @format_list, i64 216), %.fold.split16 ], [ getelementptr inbounds nuw (i8, ptr @format_list, i64 36), %.fold.split ], [ getelementptr inbounds nuw (i8, ptr @format_list, i64 144), %.fold.split14 ], [ getelementptr inbounds nuw (i8, ptr @format_list, i64 72), %.fold.split12 ], [ getelementptr inbounds nuw (i8, ptr @format_list, i64 180), %.fold.split15 ], [ getelementptr inbounds nuw (i8, ptr @format_list, i64 252), %.fold.split17 ]
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @SDL_GetAudioFormatName_REAL(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  switch i32 %0, label %bb.i [
    i32 8, label %bb.j
    i32 32776, label %bb.b
    i32 32784, label %bb.c
    i32 36880, label %bb.d
    i32 32800, label %bb.e
    i32 36896, label %bb.f
    i32 33056, label %bb.g
    i32 37152, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ @.str.36, %bb.i ], [ @.str.35, %bb.h ], [ @.str.29, %bb.b ], [ @.str.30, %bb.c ], [ @.str.31, %bb.d ], [ @.str.32, %bb.e ], [ @.str.33, %bb.f ], [ @.str.34, %bb.g ], [ @.str.28, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_DefaultAudioDeviceChanged(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %1 = alloca %struct.SDL_PendingAudioDeviceEvent, align 8 ; 9 uses
  %2 = alloca %struct.SDL_AudioSpec, align 4      ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.c = load i8, ptr %i.b, align 4, !range !4, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1                  ; 3 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.e) #11
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 172), align 4
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 168), align 8
  %i.h = select i1 %i.d, i32 %i.f, i32 %i.g       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load i32, ptr %i.i, align 8              ; 3 uses
  %i.k = icmp eq i32 %i.j, %i.h
  br i1 %i.k, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.j, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 172), align 4
  br label %ObtainPhysicalAudioDeviceObj.exit

bb.e:                                             ; preds = %bb.c
  store i32 %i.j, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 168), align 8
  br label %ObtainPhysicalAudioDeviceObj.exit

.critedge:                                        ; preds = %bb.b
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.l) #11
  br label %bb.al

ObtainPhysicalAudioDeviceObj.exit:                ; preds = %bb.e, %bb.d
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.m) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.o, i32 noundef 1) #11 ; 0 uses
  %i.q = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.o, i32 noundef 1) #11 ; 0 uses
  %i.r = load ptr, ptr %0, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.r) #11
  %i.s = tail call fastcc ptr @ObtainPhysicalAudioDevice(i32 noundef %i.h) ; 16 uses
  %.not99 = icmp eq ptr %i.s, null
  br i1 %.not99, label %.thread113, label %bb.f

.thread113:                                       ; preds = %ObtainPhysicalAudioDeviceObj.exit
  tail call fastcc void @ReleaseAudioDevice(ptr noundef nonnull %0)
  br label %UnrefPhysicalAudioDevice.exit111

bb.f:                                             ; preds = %ObtainPhysicalAudioDeviceObj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 208 ; 5 uses
  %.083129 = load ptr, ptr %i.t, align 8          ; 2 uses
  %.not100130 = icmp eq ptr %.083129, null
  br i1 %.not100130, label %.thread, label %.lr.ph134

.lr.ph134:                                        ; preds = %bb.f
  %.v = select i1 %i.d, i64 60, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.g

._crit_edge:                                      ; preds = %.loopexit
  store <2 x i32> %9, ptr %i.u, align 4
  store i32 %.lcssa119131, ptr %2, align 4
  br i1 %.1, label %bb.i, label %.thread

bb.g:                                             ; preds = %.lr.ph134, %.loopexit
  %.083133 = phi ptr [ %.083129, %.lr.ph134 ], [ %.083, %.loopexit ] ; 3 uses
  %.084132 = phi i1 [ false, %.lr.ph134 ], [ %.1, %.loopexit ]
  %3 = phi i32 [ 0, %.lr.ph134 ], [ %spec.store.select119.lcssa127, %.loopexit ] ; 3 uses
  %spec.store.select119.lcssa128131 = phi i32 [ 0, %.lr.ph134 ], [ %.lcssa119131, %.loopexit ] ; 3 uses
  %4 = phi <2 x i32> [ zeroinitializer, %.lr.ph134 ], [ %i.ak, %.loopexit ] ; 3 uses
  %i.v = phi <2 x i32> [ zeroinitializer, %.lr.ph134 ], [ %9, %.loopexit ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.083133, i64 32
  %i.x = load i8, ptr %i.w, align 8, !range !4, !noundef !5
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.083133, i64 24
  %.082120 = load ptr, ptr %i.z, align 8          ; 2 uses
  %.not108121 = icmp eq ptr %.082120, null
  br i1 %.not108121, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %.082123 = phi ptr [ %.082, %.lr.ph ], [ %.082120, %bb.h ] ; 2 uses
  %5 = phi i32 [ %spec.store.select, %.lr.ph ], [ %3, %bb.h ] ; 2 uses
  %spec.store.select119122 = phi i32 [ %spec.select, %.lr.ph ], [ %spec.store.select119.lcssa128131, %bb.h ]
  %6 = phi <2 x i32> [ %i.ai, %.lr.ph ], [ %4, %bb.h ] ; 2 uses
  %i.aa = phi <2 x i32> [ %8, %.lr.ph ], [ %i.v, %bb.h ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.082123, i64 %.v ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4            ; 3 uses
  %i.ad = and i32 %i.ac, 255
  %i.ae = and i32 %5, 255
  %i.af = icmp samesign ugt i32 %i.ad, %i.ae      ; 2 uses
  %spec.select = select i1 %i.af, i32 %i.ac, i32 %spec.store.select119122 ; 2 uses
  %spec.store.select = select i1 %i.af, i32 %i.ac, i32 %5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ah = load <2 x i32>, ptr %i.ag, align 4      ; 3 uses
  %7 = icmp sgt <2 x i32> %i.ah, %6
  %8 = select <2 x i1> %7, <2 x i32> %i.ah, <2 x i32> %i.aa ; 2 uses
  %i.ai = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ah, <2 x i32> %6) ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.082123, i64 200
  %.082 = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not108 = icmp eq ptr %.082, null
  br i1 %.not108, label %.loopexit, label %.lr.ph, !llvm.loop !24

.loopexit:                                        ; preds = %.lr.ph, %bb.h, %bb.g
  %.lcssa119131 = phi i32 [ %spec.store.select119.lcssa128131, %bb.g ], [ %spec.store.select119.lcssa128131, %bb.h ], [ %spec.select, %.lr.ph ] ; 2 uses
  %spec.store.select119.lcssa127 = phi i32 [ %3, %bb.g ], [ %3, %bb.h ], [ %spec.store.select, %.lr.ph ]
  %.1 = phi i1 [ %.084132, %bb.g ], [ true, %bb.h ], [ true, %.lr.ph ] ; 2 uses
  %9 = phi <2 x i32> [ %i.v, %bb.g ], [ %i.v, %bb.h ], [ %8, %.lr.ph ] ; 2 uses
  %i.ak = phi <2 x i32> [ %4, %bb.g ], [ %4, %bb.h ], [ %i.ai, %.lr.ph ]
  %i.al = getelementptr inbounds nuw i8, ptr %.083133, i64 56
  %.083 = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not100 = icmp eq ptr %.083, null
  br i1 %.not100, label %._crit_edge, label %bb.g, !llvm.loop !25

bb.i:                                             ; preds = %._crit_edge
  %i.am = call fastcc zeroext i1 @OpenPhysicalAudioDevice(ptr noundef nonnull %0, ptr noundef nonnull %2)
  br i1 %i.am, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ap = load i32, ptr %i.an, align 8
  %i.aq = load i32, ptr %i.ao, align 8
  %.not.i109 = icmp eq i32 %i.ap, %i.aq
  br i1 %.not.i109, label %bb.k, label %SDL_AudioSpecsEqual.exit

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 100
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.au = load i32, ptr %i.at, align 4
  %.not15.i = icmp eq i32 %i.as, %i.au
  br i1 %.not15.i, label %bb.l, label %SDL_AudioSpecsEqual.exit

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ay = load i32, ptr %i.ax, align 8
  %.not16.i = icmp eq i32 %i.aw, %i.ay
  br label %SDL_AudioSpecsEqual.exit

SDL_AudioSpecsEqual.exit:                         ; preds = %bb.l, %bb.j, %bb.k
  %.0.i = phi i1 [ %.not16.i, %bb.l ], [ false, %bb.j ], [ false, %bb.k ]
  %i.az = load ptr, ptr %i.t, align 8             ; 2 uses
  %.not101144 = icmp eq ptr %i.az, null
  br i1 %.not101144, label %._crit_edge148, label %.lr.ph147

.lr.ph147:                                        ; preds = %SDL_AudioSpecsEqual.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 148
  br label %bb.m

._crit_edge148:                                   ; preds = %bb.ae, %SDL_AudioSpecsEqual.exit
  %.085.lcssa = phi ptr [ %1, %SDL_AudioSpecsEqual.exit ], [ %.287, %bb.ae ] ; 2 uses
  call fastcc void @UpdateAudioStreamFormatsPhysical(ptr noundef nonnull %i.s)
  call fastcc void @UpdateAudioStreamFormatsPhysical(ptr noundef nonnull %0)
  %i.be = load ptr, ptr %i.t, align 8
  %.not102 = icmp eq ptr %i.be, null
  br i1 %.not102, label %bb.af, label %.thread

bb.m:                                             ; preds = %.lr.ph147, %bb.ae
  %.0146 = phi ptr [ %i.az, %.lr.ph147 ], [ %i.bg, %bb.ae ] ; 11 uses
  %.085145 = phi ptr [ %1, %.lr.ph147 ], [ %.287, %bb.ae ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0146, i64 56 ; 5 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0146, i64 32
  %i.bi = load i8, ptr %i.bh, align 8, !range !4, !noundef !5
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.n, label %bb.ae

bb.n:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.bk) #11
  %i.bl = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not104 = icmp eq ptr %i.bl, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0146, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  br i1 %.not104, label %._crit_edge151, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  store ptr %.pre, ptr %i.bm, align 8
  br label %._crit_edge151

._crit_edge151:                                   ; preds = %bb.n, %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %.0146, i64 64
  %.not105 = icmp eq ptr %.pre, null
  br i1 %.not105, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge151
  %i.bo = load ptr, ptr %i.bf, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  store ptr %i.bo, ptr %i.bp, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge151
  %i.bq = load ptr, ptr %i.t, align 8
  %i.br = icmp eq ptr %i.bq, %.0146
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bs = load ptr, ptr %i.bf, align 8
  store ptr %i.bs, ptr %i.t, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %.0146, i64 8
  store ptr %0, ptr %i.bt, align 8
  store ptr null, ptr %i.bn, align 8
  %i.bu = load ptr, ptr %i.ba, align 8            ; 3 uses
  store ptr %i.bu, ptr %i.bf, align 8
  %.not106 = icmp eq ptr %i.bu, null
  br i1 %.not106, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  store ptr %.0146, ptr %i.bv, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr %.0146, ptr %i.ba, align 8
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  call void @SDL_UnlockRWLock_REAL(ptr noundef %i.bw) #11
  %i.bx = call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.o, i32 noundef 1) #11 ; 0 uses
  %i.by = call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.bb, i32 noundef -1) #11
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.v, label %UnrefPhysicalAudioDevice.exit

bb.v:                                             ; preds = %bb.u
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.ca) #11
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 144), align 16
  %i.cc = load i32, ptr %i.bc, align 8
  %i.cd = zext i32 %i.cc to i64
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = call zeroext i1 @SDL_RemoveFromHashTable(ptr noundef %i.cb, ptr noundef %i.ce) #11
  br i1 %i.cf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cg = load i8, ptr %i.bd, align 4, !range !4, !noundef !5
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = select i1 %i.ch, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 204), ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 200)
  %i.cj = call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.ci, i32 noundef -1) #11 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  call void @SDL_UnlockRWLock_REAL(ptr noundef %i.ck) #11
  call fastcc void @DestroyPhysicalAudioDevice(ptr noundef nonnull %i.s)
  br label %UnrefPhysicalAudioDevice.exit

UnrefPhysicalAudioDevice.exit:                    ; preds = %bb.u, %bb.x
  %i.cl = load i32, ptr %.0146, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.0146, i64 40 ; 2 uses
  %i.cn = load <2 x ptr>, ptr %i.cm, align 8
  %i.co = load ptr, ptr %i.cm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8
  %i.cp = call fastcc ptr @ObtainLogicalAudioDevice(i32 noundef %i.cl, ptr noundef %i.a) ; 2 uses
  %.not.i110 = icmp eq ptr %i.cp, null
  br i1 %.not.i110, label %._crit_edge.i, label %bb.y

._crit_edge.i:                                    ; preds = %UnrefPhysicalAudioDevice.exit
  %.pre15.i = load ptr, ptr %i.a, align 8
  br label %SDL_SetAudioPostmixCallback_REAL.exit

bb.y:                                             ; preds = %UnrefPhysicalAudioDevice.exit
  %.not9.i = icmp eq ptr %i.co, null
  %.pre.pre.i = load ptr, ptr %i.a, align 8       ; 4 uses
  br i1 %.not9.i, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 168 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  %.not10.i = icmp eq ptr %i.cr, null
  br i1 %.not10.i, label %bb.aa, label %.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.cs = call i64 @SDL_GetSIMDAlignment_REAL() #11
  %i.ct = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 176
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = sext i32 %i.cu to i64
  %i.cw = call noalias ptr @SDL_aligned_alloc_REAL(i64 noundef %i.cs, i64 noundef %i.cv) #11 ; 2 uses
  store ptr %i.cw, ptr %i.cq, align 8
  %.not11.not.i = icmp eq ptr %i.cw, null
  br i1 %.not11.not.i, label %bb.ab, label %.thread.i

.thread.i:                                        ; preds = %bb.aa, %bb.z, %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  store <2 x ptr> %i.cn, ptr %i.cx, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %.thread.i, %bb.aa
  call fastcc void @UpdateAudioStreamFormatsPhysical(ptr noundef %.pre.pre.i)
  br label %SDL_SetAudioPostmixCallback_REAL.exit

SDL_SetAudioPostmixCallback_REAL.exit:            ; preds = %._crit_edge.i, %bb.ab
  %i.cy = phi ptr [ %.pre.pre.i, %bb.ab ], [ %.pre15.i, %._crit_edge.i ]
  call fastcc void @ReleaseAudioDevice(ptr noundef %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %.0.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %SDL_SetAudioPostmixCallback_REAL.exit
  %i.cz = call noalias ptr @SDL_malloc_REAL(i64 noundef 16) #11 ; 6 uses
  %.not107 = icmp eq ptr %i.cz, null
  br i1 %.not107, label %bb.ae, label %bb.ad
end_hunk_0
