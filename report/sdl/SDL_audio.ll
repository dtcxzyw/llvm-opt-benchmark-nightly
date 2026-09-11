Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_audio?download=true
inline.NumInlined: 91
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@SDL_BindAudioStreams_REAL:bb.a
.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge ] ; 5 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8              ; 5 uses
  %.not65 = icmp eq ptr %i.n, null                ; 2 uses
  br i1 %.not65, label %.critedge81, label %bb.j

.critedge81:                                      ; preds = %.lr.ph
  %i.o = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.p = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.23, i32 noundef %i.o) #11 ; 0 uses
  br label %.preheader

bb.j:                                             ; preds = %.lr.ph
  %i.q = load ptr, ptr %i.n, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.q) #11
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  %i.s = load ptr, ptr %i.r, align 8
  %.not66 = icmp eq ptr %i.s, null
  br i1 %.not66, label %bb.k, label %.split128

.split128:                                        ; preds = %bb.j
  %i.t = trunc nuw nsw i64 %indvars.iv to i32
  %i.u = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.24, i32 noundef %i.t) #11
  br i1 %i.u, label %.critedge, label %.preheader.loopexit

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 184
  %i.w = load i8, ptr %i.v, align 8, !range !4, !noundef !5
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.y = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #11
  br i1 %i.y, label %.critedge, label %.preheader.loopexit

.preheader.loopexit:                              ; preds = %.split128, %bb.l
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.critedge81
  %.05389103 = phi i32 [ %i.z, %.preheader.loopexit ], [ %i.o, %.critedge81 ] ; 2 uses
  %.not94 = icmp eq i32 %.05389103, 0
  br i1 %.not94, label %._crit_edge, label %.lr.ph91.preheader

.lr.ph91.preheader:                               ; preds = %.preheader
  %wide.trip.count108 = zext i32 %.05389103 to i64
  br label %.lr.ph91

.lr.ph91:                                         ; preds = %.lr.ph91.preheader, %.lr.ph91
  %indvars.iv105 = phi i64 [ 0, %.lr.ph91.preheader ], [ %indvars.iv.next106, %.lr.ph91 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv105
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ac) #11
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge, label %.lr.ph91, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph91, %.preheader
  br i1 %.not65, label %.thread73, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.ad = load ptr, ptr %i.n, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ad) #11
  br label %.thread73

.critedge:                                        ; preds = %.split128, %bb.k, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph93, label %.lr.ph, !llvm.loop !19

.lr.ph93:                                         ; preds = %.critedge, %.split
  %i.ae = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 148
  %i.ag = load i8, ptr %i.af, align 4, !range !4, !noundef !5
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 96 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 4 uses
  %wide.trip.count119 = zext nneg i32 %2 to i64   ; 2 uses
  br i1 %i.ah, label %.lr.ph93.split.us, label %.lr.ph93.split

.lr.ph93.split.us:                                ; preds = %.lr.ph93, %bb.s
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %bb.s ], [ 0, %.lr.ph93 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv115
  %i.al = load ptr, ptr %i.ak, align 8            ; 8 uses
  %.not67.us = icmp eq ptr %i.al, null
  br i1 %.not67.us, label %bb.s, label %bb.n

bb.n:                                             ; preds = %.lr.ph93.split.us
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 60 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.am, ptr noundef nonnull align 8 dereferenceable(12) %i.ai, i64 12, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 192
  store ptr %i.h, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 208
  store ptr null, ptr %i.aq, align 8
  %i.ar = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 200
  store ptr %i.ar, ptr %i.as, align 8
  %.not68.us = icmp eq ptr %i.ar, null
  br i1 %.not68.us, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 208
  store ptr %i.al, ptr %i.at, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store ptr %i.al, ptr %i.aj, align 8
  %i.au = load ptr, ptr %i.al, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.au) #11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph93.split.us
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count119
  br i1 %exitcond120.not, label %.thread73, label %.lr.ph93.split.us, !llvm.loop !20

.lr.ph93.split:                                   ; preds = %.lr.ph93, %bb.x
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %bb.x ], [ 0, %.lr.ph93 ] ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv110
  %i.aw = load ptr, ptr %i.av, align 8            ; 8 uses
  %.not67 = icmp eq ptr %i.aw, null
  br i1 %.not67, label %bb.x, label %.critedge70

.critedge70:                                      ; preds = %.lr.ph93.split
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.critedge70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ax, ptr noundef nonnull align 8 dereferenceable(12) %i.ai, i64 12, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %.critedge70, %bb.t
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 192
  store ptr %i.h, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 208
  store ptr null, ptr %i.bb, align 8
  %i.bc = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 200
  store ptr %i.bc, ptr %i.bd, align 8
  %.not68 = icmp eq ptr %i.bc, null
  br i1 %.not68, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 208
  store ptr %i.aw, ptr %i.be, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store ptr %i.aw, ptr %i.aj, align 8
  %i.bf = load ptr, ptr %i.aw, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.bf) #11
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph93.split
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count119
  br i1 %exitcond114.not, label %.thread73, label %.lr.ph93.split, !llvm.loop !20

.thread73:                                        ; preds = %bb.x, %bb.s, %bb.m, %._crit_edge, %bb.h, %.split
  %.375 = phi i1 [ false, %bb.h ], [ false, %bb.m ], [ false, %.split ], [ false, %._crit_edge ], [ true, %bb.s ], [ true, %bb.x ]
  %i.bg = load ptr, ptr %i.a, align 8             ; 2 uses
  tail call fastcc void @UpdateAudioStreamFormatsPhysical(ptr noundef %i.bg)
  tail call fastcc void @ReleaseAudioDevice(ptr noundef %i.bg)
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
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.26) #11 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %i.d, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.27) #11 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.e, %bb.d ], [ 0, %bb.e ]
  %i.g = load ptr, ptr %0, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.g) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.06 = phi i32 [ %.0, %bb.f ], [ 0, %bb.b ]
  ret i32 %.06
}

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_OpenAudioDeviceStream_REAL(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %struct.SDL_AudioSpec, align 4      ; 5 uses
  %i.b = tail call i32 @SDL_OpenAudioDevice_REAL(i32 noundef %0, ptr noundef %1) ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8
  %i.c = call fastcc ptr @ObtainLogicalAudioDevice(i32 noundef %i.b, ptr noundef %i.a) ; 5 uses
  %.not37 = icmp eq ptr %i.c, null
  br i1 %.not37, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8
  tail call fastcc void @ReleaseAudioDevice(ptr noundef %i.d)
  br label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = tail call i32 @SDL_SetAtomicInt_REAL(ptr noundef nonnull %i.e, i32 noundef 1) #11 ; 0 uses
  %i.g = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 148
  %i.i = load i8, ptr %i.h, align 4, !range !4, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %.not38 = icmp eq ptr %1, null
  br i1 %.not38, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.k, i64 12, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.032 = phi ptr [ %1, %bb.c ], [ %4, %bb.d ]    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 2 uses
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = call ptr @SDL_CreateAudioStream_REAL(ptr noundef nonnull %i.l, ptr noundef nonnull %.032) #11
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.n = call ptr @SDL_CreateAudioStream_REAL(ptr noundef nonnull %.032, ptr noundef nonnull %i.l) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi ptr [ %i.m, %bb.f ], [ %i.n, %bb.g ]  ; 7 uses
  %.not39 = icmp eq ptr %.0, null
  br i1 %.not39, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  store i8 1, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.0, i64 192
  store ptr %i.c, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 184
  store i8 1, ptr %i.r, align 8
  call fastcc void @UpdateAudioStreamFormatsPhysical(ptr noundef nonnull %i.g)
  %.not40 = icmp eq ptr %2, null
  br i1 %.not40, label %.thread44, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.j, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.s = call zeroext i1 @SDL_SetAudioStreamPutCallback_REAL(ptr noundef nonnull %.0, ptr noundef nonnull %2, ptr noundef %3) #11 ; 0 uses
  br label %.thread44

bb.l:                                             ; preds = %bb.j
  %i.t = call zeroext i1 @SDL_SetAudioStreamGetCallback_REAL(ptr noundef nonnull %.0, ptr noundef nonnull %2, ptr noundef %3) #11 ; 0 uses
  br label %.thread44

.thread44:                                        ; preds = %bb.i, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call fastcc void @ReleaseAudioDevice(ptr noundef nonnull %i.g)
  br label %bb.o

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call fastcc void @ReleaseAudioDevice(ptr noundef nonnull %i.g)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread
  call void @SDL_DestroyAudioStream_REAL(ptr noundef null) #11
  call void @SDL_CloseAudioDevice_REAL(i32 noundef %i.b)
  br label %bb.o

bb.o:                                             ; preds = %.thread44, %bb.n
  %.2 = phi ptr [ null, %bb.n ], [ %.0, %.thread44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o
  %.031 = phi ptr [ %.2, %bb.o ], [ null, %bb.a ]
  ret ptr %.031
}

declare ptr @SDL_CreateAudioStream_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SetAudioStreamPutCallback_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SetAudioStreamGetCallback_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_PauseAudioStreamDevice_REAL(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_GetAudioStreamDevice_REAL.exit.thread, label %bb.b

SDL_GetAudioStreamDevice_REAL.exit.thread:        ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.26) #11 ; 0 uses
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.e, null
  br i1 %.not9.i, label %SDL_GetAudioStreamDevice_REAL.exit.thread6, label %SDL_GetAudioStreamDevice_REAL.exit

SDL_GetAudioStreamDevice_REAL.exit.thread6:       ; preds = %bb.b
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
  %i.k = icmp ne ptr %i.j, null                   ; 2 uses
  br i1 %i.k, label %bb.d, label %SDL_PauseAudioDevice_REAL.exit
end_hunk_0
