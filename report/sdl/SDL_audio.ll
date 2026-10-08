Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_audio?download=true
inline.NumInlined: 91
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@SDL_ResumeAudioDevice_REAL:bb.a
  %i.b = call fastcc ptr @ObtainLogicalAudioDevice(i32 noundef %0, ptr noundef %i.a) ; 2 uses
  %i.c = icmp ne ptr %i.b, null                   ; 2 uses
  br i1 %i.c, label %bb.b, label %SetLogicalAudioDevicePauseState.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = tail call i32 @SDL_SetAtomicInt_REAL(ptr noundef nonnull %i.d, i32 noundef 0) #11 ; 0 uses
  br label %SetLogicalAudioDevicePauseState.exit

SetLogicalAudioDevicePauseState.exit:             ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr %i.a, align 8
  tail call fastcc void @ReleaseAudioDevice(ptr noundef %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_AudioDevicePaused_REAL(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8
  %i.b = call fastcc ptr @ObtainLogicalAudioDevice(i32 noundef %0, ptr noundef %i.a) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %i.c) #11
  %.not4 = icmp ne i32 %i.d, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %.not4, %bb.b ]
  %i.e = load ptr, ptr %i.a, align 8
  tail call fastcc void @ReleaseAudioDevice(ptr noundef %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden float @SDL_GetAudioDeviceGain_REAL(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8
  %i.b = call fastcc ptr @ObtainLogicalAudioDevice(i32 noundef %0, ptr noundef %i.a) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load float, ptr %i.c, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi float [ %i.d, %bb.b ], [ -1.000000e+00, %bb.a ]
  %i.f = load ptr, ptr %i.a, align 8
  tail call fastcc void @ReleaseAudioDevice(ptr noundef %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret float %i.e
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SetAudioDeviceGain_REAL(i32 noundef %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = fcmp olt float %1, 0.000000e+00
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.18) #11
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8
  %i.d = call fastcc ptr @ObtainLogicalAudioDevice(i32 noundef %0, ptr noundef %i.a) ; 2 uses
  %.not = icmp ne ptr %i.d, null                  ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store float %1, ptr %i.e, align 4
  tail call fastcc void @UpdateAudioStreamFormatsPhysical(ptr noundef %.pre)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call fastcc void @ReleaseAudioDevice(ptr noundef %.pre)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.06 = phi i1 [ %i.c, %bb.b ], [ %.not, %bb.e ]
  ret i1 %.06
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_SetAudioPostmixCallback_REAL(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8
  %i.b = call fastcc ptr @ObtainLogicalAudioDevice(i32 noundef %0, ptr noundef %i.a) ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre15 = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not9 = icmp eq ptr %1, null
  %.pre.pre = load ptr, ptr %i.a, align 8         ; 4 uses
  br i1 %.not9, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @SDL_GetSIMDAlignment_REAL() #11
  %i.f = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 176
  %i.g = load i32, ptr %i.f, align 8
  %i.h = sext i32 %i.g to i64
  %i.i = tail call noalias ptr @SDL_aligned_alloc_REAL(i64 noundef %i.e, i64 noundef %i.h) #11 ; 2 uses
  store ptr %i.i, ptr %i.c, align 8
  %.not11.not = icmp eq ptr %i.i, null
  br i1 %.not11.not, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %2, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %.013 = phi i1 [ true, %.thread ], [ false, %bb.d ]
  tail call fastcc void @UpdateAudioStreamFormatsPhysical(ptr noundef %.pre.pre)
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.l = phi ptr [ %.pre.pre, %bb.e ], [ %.pre15, %._crit_edge ]
  %.1 = phi i1 [ %.013, %bb.e ], [ false, %._crit_edge ]
  tail call fastcc void @ReleaseAudioDevice(ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i1 %.1
}

declare noalias ptr @SDL_aligned_alloc_REAL(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @SDL_GetSIMDAlignment_REAL() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_BindAudioStreams_REAL(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %2, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.19) #11
  br label %bb.y

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #11
  br label %bb.y

bb.f:                                             ; preds = %bb.d
  %i.f = and i32 %0, 2
  %.not79 = icmp eq i32 %i.f, 0
  br i1 %.not79, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #11
  br label %bb.y

bb.h:                                             ; preds = %bb.f
  %i.h = call fastcc ptr @ObtainLogicalAudioDevice(i32 noundef %0, ptr noundef %i.a) ; 5 uses
  %.not64 = icmp eq ptr %i.h, null
  br i1 %.not64, label %.thread73, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 33
  %i.j = load i8, ptr %i.i, align 1, !range !4, !noundef !5
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.split:                                           ; preds = %bb.i
  %3 = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.22) #11
  br i1 %3, label %.lr.ph93, label %.thread73

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge ] ; 5 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8              ; 5 uses
  %.not65 = icmp eq ptr %i.m, null                ; 2 uses
  br i1 %.not65, label %.critedge81, label %bb.j

.critedge81:                                      ; preds = %.lr.ph
  %i.n = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.o = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.23, i32 noundef %i.n) #11 ; 0 uses
  br label %.preheader

bb.j:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.m, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.p) #11
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.r = load ptr, ptr %i.q, align 8
  %.not66 = icmp eq ptr %i.r, null
  br i1 %.not66, label %bb.k, label %.split128

.split128:                                        ; preds = %bb.j
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  %i.t = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.24, i32 noundef %i.s) #11
  br i1 %i.t, label %.critedge, label %.preheader.loopexit

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  %i.v = load i8, ptr %i.u, align 8, !range !4, !noundef !5
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.x = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #11
  br i1 %i.x, label %.critedge, label %.preheader.loopexit

.preheader.loopexit:                              ; preds = %.split128, %bb.l
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.critedge81
  %.05389103 = phi i32 [ %i.y, %.preheader.loopexit ], [ %i.n, %.critedge81 ] ; 2 uses
  %.not94 = icmp eq i32 %.05389103, 0
  br i1 %.not94, label %._crit_edge, label %.lr.ph91.preheader

.lr.ph91.preheader:                               ; preds = %.preheader
  %wide.trip.count108 = zext i32 %.05389103 to i64
  br label %.lr.ph91

.lr.ph91:                                         ; preds = %.lr.ph91.preheader, %.lr.ph91
  %indvars.iv105 = phi i64 [ 0, %.lr.ph91.preheader ], [ %indvars.iv.next106, %.lr.ph91 ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv105
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ab) #11
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge, label %.lr.ph91, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph91, %.preheader
  br i1 %.not65, label %.thread73, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.ac = load ptr, ptr %i.m, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ac) #11
  br label %.thread73

.critedge:                                        ; preds = %.split128, %bb.k, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph93, label %.lr.ph, !llvm.loop !19

.lr.ph93:                                         ; preds = %.critedge, %.split
  %i.ad = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 148
  %i.af = load i8, ptr %i.ae, align 4, !range !4, !noundef !5
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 96 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 4 uses
  %wide.trip.count119 = zext nneg i32 %2 to i64   ; 2 uses
  br i1 %i.ag, label %.lr.ph93.split.us, label %.lr.ph93.split

.lr.ph93.split.us:                                ; preds = %.lr.ph93, %bb.s
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %bb.s ], [ 0, %.lr.ph93 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv115
  %i.ak = load ptr, ptr %i.aj, align 8            ; 8 uses
  %.not67.us = icmp eq ptr %i.ak, null
  br i1 %.not67.us, label %bb.s, label %bb.n

bb.n:                                             ; preds = %.lr.ph93.split.us
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 60 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 8 dereferenceable(12) %i.ah, i64 12, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 192
  store ptr %i.h, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 208
  store ptr null, ptr %i.ap, align 8
  %i.aq = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 200
  store ptr %i.aq, ptr %i.ar, align 8
  %.not68.us = icmp eq ptr %i.aq, null
  br i1 %.not68.us, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 208
  store ptr %i.ak, ptr %i.as, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store ptr %i.ak, ptr %i.ai, align 8
  %i.at = load ptr, ptr %i.ak, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.at) #11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph93.split.us
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count119
  br i1 %exitcond120.not, label %.thread73, label %.lr.ph93.split.us, !llvm.loop !20

.lr.ph93.split:                                   ; preds = %.lr.ph93, %bb.x
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %bb.x ], [ 0, %.lr.ph93 ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv110
  %i.av = load ptr, ptr %i.au, align 8            ; 8 uses
  %.not67 = icmp eq ptr %i.av, null
  br i1 %.not67, label %bb.x, label %.critedge70

.critedge70:                                      ; preds = %.lr.ph93.split
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.critedge70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aw, ptr noundef nonnull align 8 dereferenceable(12) %i.ah, i64 12, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %.critedge70, %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 192
  store ptr %i.h, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  store ptr null, ptr %i.ba, align 8
  %i.bb = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 200
  store ptr %i.bb, ptr %i.bc, align 8
  %.not68 = icmp eq ptr %i.bb, null
  br i1 %.not68, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 208
  store ptr %i.av, ptr %i.bd, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store ptr %i.av, ptr %i.ai, align 8
  %i.be = load ptr, ptr %i.av, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.be) #11
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph93.split
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count119
  br i1 %exitcond114.not, label %.thread73, label %.lr.ph93.split, !llvm.loop !20

.thread73:                                        ; preds = %bb.x, %bb.s, %bb.m, %._crit_edge, %bb.h, %.split
  %.375 = phi i1 [ false, %bb.h ], [ false, %bb.m ], [ false, %.split ], [ false, %._crit_edge ], [ true, %bb.s ], [ true, %bb.x ]
  %i.bf = load ptr, ptr %i.a, align 8             ; 2 uses
  tail call fastcc void @UpdateAudioStreamFormatsPhysical(ptr noundef %i.bf)
  tail call fastcc void @ReleaseAudioDevice(ptr noundef %i.bf)
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %.thread73, %bb.g, %bb.e, %bb.c
  %.056 = phi i1 [ %i.e, %bb.e ], [ %i.d, %bb.c ], [ %i.g, %bb.g ], [ %.375, %.thread73 ], [ true, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i1 %.056
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_BindAudioStream_REAL(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = call zeroext i1 @SDL_BindAudioStreams_REAL(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 1)
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_UnbindAudioStreams_REAL(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  %i.b = icmp ne ptr %0, null
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %.preheader74.preheader, label %.loopexit

.preheader74.preheader:                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  br label %.preheader74

.preheader74:                                     ; preds = %.preheader74.preheader, %.thread
  %indvars.iv = phi i64 [ 0, %.preheader74.preheader ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %.not69 = icmp eq ptr %i.d, null
  br i1 %.not69, label %.thread, label %.preheader73

.preheader73:                                     ; preds = %.preheader74
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.preheader73
  %i.f = load ptr, ptr %i.d, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.f) #11
  %i.g = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.h = load ptr, ptr %i.d, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.h) #11
  %.not70 = icmp eq ptr %i.g, null                ; 2 uses
  br i1 %.not70, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.k) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load ptr, ptr %i.d, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.l) #11
  %i.m = load ptr, ptr %i.e, align 8
  %i.n = icmp eq ptr %i.g, %i.m
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.d, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.o) #11
  br i1 %.not70, label %.backedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.r) #11
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.e
  br label %bb.b

.thread:                                          ; preds = %bb.d, %.preheader74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph, label %.preheader74, !llvm.loop !21

.lr.ph78.preheader:                               ; preds = %bb.o
  %wide.trip.count88 = zext nneg i32 %1 to i64
  br label %.lr.ph78

.lr.ph:                                           ; preds = %.thread, %bb.o
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %bb.o ], [ 0, %.thread ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv80
  %i.t = load ptr, ptr %i.s, align 8              ; 7 uses
  %.not65 = icmp eq ptr %i.t, null
  br i1 %.not65, label %bb.o, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %.not66 = icmp eq ptr %i.v, null
  br i1 %.not66, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 33
  %i.x = load i8, ptr %i.w, align 1, !range !4, !noundef !5
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.aa, %i.t
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  %i.ad = load ptr, ptr %i.ac, align 8
  store ptr %i.ad, ptr %i.z, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 208 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not67 = icmp eq ptr %i.af, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  br i1 %.not67, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 200
  store ptr %.pre, ptr %i.ag, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  %.not68 = icmp eq ptr %.pre, null
  br i1 %.not68, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.ai = load ptr, ptr %i.ae, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre, i64 208
  store ptr %i.ai, ptr %i.aj, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h, %bb.g, %.lr.ph
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count
  br i1 %exitcond84.not, label %.lr.ph78.preheader, label %.lr.ph, !llvm.loop !22

.lr.ph78:                                         ; preds = %.lr.ph78.preheader, %bb.r
  %indvars.iv85 = phi i64 [ 0, %.lr.ph78.preheader ], [ %indvars.iv.next86, %bb.r ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv85
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph78
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 192 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  store ptr null, ptr %i.am, align 8
  %i.ao = load ptr, ptr %i.al, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ao) #11
  %.not64 = icmp eq ptr %i.an, null
  br i1 %.not64, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call fastcc void @UpdateAudioStreamFormatsPhysical(ptr noundef %i.aq)
  %i.ar = load ptr, ptr %i.ap, align 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.as) #11
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %.lr.ph78
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count88
  br i1 %exitcond89.not, label %.loopexit, label %.lr.ph78, !llvm.loop !23

.loopexit:                                        ; preds = %bb.r, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_UnbindAudioStream_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  call void @SDL_UnbindAudioStreams_REAL(ptr noundef nonnull %i.a, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_GetAudioStreamDevice_REAL(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
end_hunk_0
