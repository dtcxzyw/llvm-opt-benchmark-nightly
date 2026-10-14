Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@InitAudioDevice:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 1, ptr %i.j, align 1
  %i.k = call i32 @ma_device_init(ptr noundef nonnull @AUDIO, ptr noundef nonnull %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1024))
  %.not3 = icmp eq i32 %i.k, 0
  br i1 %.not3, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.222) #61
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 8), align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call i32 %i.l(ptr noundef nonnull @AUDIO) #61, !inline_history !34 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = call i32 @pthread_mutex_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 320)) #61 ; 0 uses
  %i.o = call i32 @pthread_mutex_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 360)) #61 ; 0 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 416), align 8 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %ma_free.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 312), align 8 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.r, null
  br i1 %.not9.i.i, label %ma_free.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 288), align 8
  call void %i.r(ptr noundef nonnull %i.p, ptr noundef %i.s) #61, !inline_history !35
  br label %ma_free.exit.i

ma_free.exit.i:                                   ; preds = %bb.h, %bb.g, %bb.f
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 112), align 8
  %i.u = icmp eq ptr %i.t, getelementptr inbounds nuw (i8, ptr @AUDIO, i64 120)
  br i1 %i.u, label %bb.i, label %ma_context_uninit.exit

bb.i:                                             ; preds = %ma_free.exit.i
  %i.v = call i32 @pthread_mutex_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 224)) #61 ; 0 uses
  br label %ma_context_uninit.exit

bb.j:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800), i8 0, i64 40, i1 false)
  %i.w = call i32 @pthread_mutex_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800), ptr noundef null) #61 ; 2 uses
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %ma_mutex_init.exit.thread, label %ma_mutex_init.exit

ma_mutex_init.exit:                               ; preds = %bb.j
  %i.x = call fastcc i32 @ma_result_from_errno(i32 noundef %i.w)
  %.not4 = icmp eq i32 %i.x, 0
  br i1 %.not4, label %ma_mutex_init.exit.thread, label %bb.k

bb.k:                                             ; preds = %ma_mutex_init.exit
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.223) #61
  call void @ma_device_uninit(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1024))
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 8), align 8 ; 2 uses
  %.not.i6 = icmp eq ptr %i.y, null
  br i1 %.not.i6, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = call i32 %i.y(ptr noundef nonnull @AUDIO) #61, !inline_history !34 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aa = call i32 @pthread_mutex_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 320)) #61 ; 0 uses
  %i.ab = call i32 @pthread_mutex_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 360)) #61 ; 0 uses
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 416), align 8 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %ma_free.exit.i8, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 312), align 8 ; 2 uses
  %.not9.i.i7 = icmp eq ptr %i.ae, null
  br i1 %.not9.i.i7, label %ma_free.exit.i8, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 288), align 8
  call void %i.ae(ptr noundef nonnull %i.ac, ptr noundef %i.af) #61, !inline_history !35
  br label %ma_free.exit.i8

ma_free.exit.i8:                                  ; preds = %bb.o, %bb.n, %bb.m
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 112), align 8
  %i.ah = icmp eq ptr %i.ag, getelementptr inbounds nuw (i8, ptr @AUDIO, i64 120)
  br i1 %i.ah, label %bb.p, label %ma_context_uninit.exit

bb.p:                                             ; preds = %ma_free.exit.i8
  %i.ai = call i32 @pthread_mutex_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 224)) #61 ; 0 uses
  br label %ma_context_uninit.exit

ma_mutex_init.exit.thread:                        ; preds = %bb.j, %ma_mutex_init.exit
  %i.aj = call i32 @ma_device_start(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1024))
  %.not5 = icmp eq i32 %i.aj, 0
  br i1 %.not5, label %bb.w, label %bb.q

bb.q:                                             ; preds = %ma_mutex_init.exit.thread
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.224) #61
  call void @ma_device_uninit(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1024))
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 8), align 8 ; 2 uses
  %.not.i11 = icmp eq ptr %i.ak, null
  br i1 %.not.i11, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = call i32 %i.ak(ptr noundef nonnull @AUDIO) #61, !inline_history !34 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.am = call i32 @pthread_mutex_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 320)) #61 ; 0 uses
  %i.an = call i32 @pthread_mutex_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 360)) #61 ; 0 uses
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 416), align 8 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %ma_free.exit.i13, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 312), align 8 ; 2 uses
  %.not9.i.i12 = icmp eq ptr %i.aq, null
  br i1 %.not9.i.i12, label %ma_free.exit.i13, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 288), align 8
  call void %i.aq(ptr noundef nonnull %i.ao, ptr noundef %i.ar) #61, !inline_history !35
  br label %ma_free.exit.i13

ma_free.exit.i13:                                 ; preds = %bb.u, %bb.t, %bb.s
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 112), align 8
  %i.at = icmp eq ptr %i.as, getelementptr inbounds nuw (i8, ptr @AUDIO, i64 120)
  br i1 %i.at, label %bb.v, label %ma_context_uninit.exit

bb.v:                                             ; preds = %ma_free.exit.i13
  %i.au = call i32 @pthread_mutex_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 224)) #61 ; 0 uses
  br label %ma_context_uninit.exit

bb.w:                                             ; preds = %ma_mutex_init.exit.thread
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.225) #61
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 104), align 8 ; 2 uses
  %i.aw = icmp ugt i32 %i.av, 14
  br i1 %i.aw, label %ma_get_backend_name.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ax = zext nneg i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr @gBackendInfo, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  br label %ma_get_backend_name.exit

ma_get_backend_name.exit:                         ; preds = %bb.w, %bb.x
  %.0.i16 = phi ptr [ %i.ba, %bb.x ], [ @.str.9, %bb.w ]
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.226, ptr noundef %.0.i16) #61
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2140), align 4 ; 2 uses
  %i.bc = icmp ult i32 %i.bb, 6
  br i1 %i.bc, label %switch.lookup, label %ma_get_format_name.exit

switch.lookup:                                    ; preds = %ma_get_backend_name.exit
  %i.bd = zext nneg i32 %i.bb to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ma_device_init__pulse.57, i64 %i.bd
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %ma_get_format_name.exit

ma_get_format_name.exit:                          ; preds = %ma_get_backend_name.exit, %switch.lookup
  %.0.i17 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.168, %ma_get_backend_name.exit ]
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2404), align 4 ; 2 uses
  %i.bf = icmp ult i32 %i.be, 6
  br i1 %i.bf, label %switch.lookup32, label %ma_get_format_name.exit19

switch.lookup32:                                  ; preds = %ma_get_format_name.exit
  %i.bg = zext nneg i32 %i.be to i64
  %switch.gep33 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ma_device_init__pulse.57, i64 %i.bg
  %switch.load34 = load ptr, ptr %switch.gep33, align 8
  br label %ma_get_format_name.exit19

ma_get_format_name.exit19:                        ; preds = %ma_get_format_name.exit, %switch.lookup32
  %.0.i18 = phi ptr [ %switch.load34, %switch.lookup32 ], [ @.str.168, %ma_get_format_name.exit ]
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.227, ptr noundef nonnull %.0.i17, ptr noundef nonnull %.0.i18) #61
  %i.bh = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2144), align 8
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2408), align 8
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.228, i32 noundef %i.bh, i32 noundef %i.bi) #61
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1036), align 4
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2412), align 4
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.229, i32 noundef %i.bj, i32 noundef %i.bk) #61
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2672), align 8
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2676), align 4
  %i.bn = mul i32 %i.bm, %i.bl
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.230, i32 noundef %i.bn) #61
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4840), align 8
  br label %ma_context_uninit.exit

ma_context_uninit.exit:                           ; preds = %bb.v, %ma_free.exit.i13, %bb.p, %ma_free.exit.i8, %bb.i, %ma_free.exit.i, %ma_get_format_name.exit19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #61
  br label %bb.y

bb.y:                                             ; preds = %ma_context_uninit.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #61
  ret void
}

declare void @TraceLog(i32 noundef, ptr noundef, ...) local_unnamed_addr #54

; Function Attrs: nounwind uwtable
define internal void @OnSendAudioDataToDevice(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca [1024 x float], align 16          ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.h = load i32, ptr %i.g, align 8
  %i.i = mul i32 %i.h, %3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.k = load i32, ptr %i.j, align 4
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4
  %i.o = mul i32 %i.i, %i.n
  %i.p = zext i32 %i.o to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.p, i1 false)
  %i.q = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %.05597 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4864), align 8 ; 2 uses
  %.not98 = icmp eq ptr %.05597, null
  br i1 %.not98, label %.preheader, label %.lr.ph102.a

.lr.ph102.a:                                      ; preds = %bb.a
  %.not59150.not = icmp eq i32 %3, 0
  br label %bb.b

.preheader:                                       ; preds = %.loopexit71, %bb.a
  %.0103 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4888), align 8 ; 2 uses
  %.not58104 = icmp eq ptr %.0103, null
  br i1 %.not58104, label %._crit_edge107, label %.lr.ph106

bb.b:                                             ; preds = %.lr.ph102.a, %.loopexit71
  %.05599 = phi ptr [ %.055, %.loopexit71 ], [ %.05597, %.lr.ph102.a ] ; 25 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05599, i64 356 ; 5 uses
  %i.s = load i8, ptr %i.r, align 4, !range !66, !noundef !53
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.loopexit71

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.05599, i64 357 ; 5 uses
  %i.v = load i8, ptr %i.u, align 1, !range !66, !noundef !53
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %.loopexit71, label %.preheader70

.preheader70:                                     ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.05599, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05599, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %.05599, i64 320 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05599, i64 312 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05599, i64 136
  %i.ac = getelementptr inbounds nuw i8, ptr %.05599, i64 140
  %i.ad = getelementptr inbounds nuw i8, ptr %.05599, i64 328
  %i.ae = getelementptr inbounds nuw i8, ptr %.05599, i64 376 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05599, i64 368 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05599, i64 372 ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05599, i64 364 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05599, i64 365 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05599, i64 360
  %i.ak = getelementptr inbounds nuw i8, ptr %.05599, i64 384 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.05599, i64 358 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05599, i64 336
  %i.an = getelementptr inbounds nuw i8, ptr %.05599, i64 344
  %i.ao = getelementptr inbounds nuw i8, ptr %.05599, i64 352
  br i1 %.not59150.not, label %.loopexit71, label %.lr.ph152

.lr.ph152:                                        ; preds = %.preheader70, %.backedge
  %.050151 = phi i32 [ %.050.be, %.backedge ], [ 0, %.preheader70 ] ; 3 uses
  %i.ap = sub nuw i32 %3, %.050151                ; 2 uses
  %.not6092 = icmp eq i32 %i.ap, 0
  br i1 %.not6092, label %.backedge, label %.lr.ph96

.lr.ph96:                                         ; preds = %.lr.ph152, %StopAudioBufferInLockedState.exit
  %.04994 = phi i32 [ %.1, %StopAudioBufferInLockedState.exit ], [ %i.ap, %.lr.ph152 ] ; 3 uses
  %.15193 = phi i32 [ %.252, %StopAudioBufferInLockedState.exit ], [ %.050151, %.lr.ph152 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.f, i8 0, i64 4096, i1 false)
  %spec.store.select = call i32 @llvm.umin.i32(i32 %.04994, i32 512) ; 3 uses
  %i.aq = load i32, ptr %.05599, align 8
  %i.ar = load i32, ptr %i.x, align 8
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4
  %i.av = mul i32 %i.au, %i.ar                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  %i.aw = zext i32 %i.av to i64                   ; 4 uses
  %i.ax = udiv i32 4096, %i.av
  %.not88.i.us70.not.i = icmp ugt i32 %i.av, 4096
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph96, %.backedge.i
  %.051.i88 = phi i32 [ 0, %.lr.ph96 ], [ %.051.be.i, %.backedge.i ] ; 4 uses
  %i.ay = load i32, ptr %i.y, align 4
  %i.az = mul i32 %i.ay, %.051.i88
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ba ; 2 uses
  %i.bc = sub nuw nsw i32 %spec.store.select, %.051.i88 ; 2 uses
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.be = load i32, ptr %i.z, align 8             ; 2 uses
  %.not.i = icmp eq i32 %i.be, 0
  br i1 %.not.i, label %bb.e, label %select.unfold.i

bb.e:                                             ; preds = %bb.d
  %i.bf = load i32, ptr %i.ab, align 8
  %i.bg = uitofp i32 %i.bf to float
  %i.bh = load i32, ptr %i.ac, align 4
  %i.bi = uitofp i32 %i.bh to float
  %i.bj = fdiv float %i.bg, %i.bi
  %i.bk = uitofp nneg i32 %i.bc to float
  %i.bl = fmul float %i.bj, %i.bk
  %i.bm = fptoui float %i.bl to i32
  %spec.store.select.i = call i32 @llvm.umax.i32(i32 %i.bm, i32 1)
  %spec.select.i = call i32 @llvm.umin.i32(i32 %spec.store.select.i, i32 %i.ax) ; 13 uses
  %i.bn = load i8, ptr %i.r, align 4, !range !66, !noundef !53
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.f, label %ReadAudioBufferFramesInInternalFormat.exit.i

bb.f:                                             ; preds = %bb.e
  %i.bp = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void %i.bp(ptr noundef nonnull %i.a, i32 noundef range(i32 0, 4097) %spec.select.i) #61, !inline_history !1136
  %i.bq = load i32, ptr %i.ae, align 8
  %i.br = add i32 %i.bq, %spec.select.i
  store i32 %i.br, ptr %i.ae, align 8
  br label %ReadAudioBufferFramesInInternalFormat.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bs = load i32, ptr %i.af, align 8            ; 3 uses
  %i.bt = icmp ugt i32 %i.bs, 1
  %i.bu = zext i1 %i.bt to i32
  %i.bv = lshr i32 %i.bs, %i.bu                   ; 2 uses
  %i.bw = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.bx = udiv i32 %i.bw, %i.bv                   ; 4 uses
  %i.by = icmp ugt i32 %i.bx, 1
  br i1 %i.by, label %ReadAudioBufferFramesInInternalFormat.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = load i32, ptr %.05599, align 8
  %i.ca = load i32, ptr %i.x, align 8
  %i.cb = zext i32 %i.bz to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = mul i32 %i.cd, %i.ca                    ; 8 uses
  %i.cf = load i32, ptr %i.aj, align 8
  %i.cg = icmp eq i32 %i.cf, 0                    ; 3 uses
  br i1 %i.cg, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.i
  br i1 %.not88.i.us70.not.i, label %StopAudioBufferInLockedState.exit.thread.i.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.split.us.i
  %.pre83.i = load ptr, ptr %i.ak, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %StopAudioBufferInLockedState.exit.i.us.i, %.lr.ph.preheader.i
  %i.ch = phi i32 [ %i.dc, %StopAudioBufferInLockedState.exit.i.us.i ], [ %i.bs, %.lr.ph.preheader.i ] ; 3 uses
  %i.ci = phi ptr [ %i.dd, %StopAudioBufferInLockedState.exit.i.us.i ], [ %.pre83.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.cj = phi i32 [ %i.de, %StopAudioBufferInLockedState.exit.i.us.i ], [ %i.bw, %.lr.ph.preheader.i ] ; 3 uses
  %.074.i.us72.i = phi i32 [ %i.cw, %StopAudioBufferInLockedState.exit.i.us.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.078.i.us71.i = phi i32 [ %.381.i.us.i, %StopAudioBufferInLockedState.exit.i.us.i ], [ %i.bx, %.lr.ph.preheader.i ] ; 3 uses
  %i.ck = sub nuw nsw i32 %spec.select.i, %.074.i.us72.i ; 2 uses
  %i.cl = sub i32 %i.ch, %i.cj                    ; 2 uses
  %spec.select.i.us.i = call i32 @llvm.umin.i32(i32 %i.ck, i32 %i.cl) ; 3 uses
  %i.cm = mul i32 %.074.i.us72.i, %i.ce
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cn
  %i.cp = mul i32 %i.cj, %i.ce
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cq
  %i.cs = mul i32 %spec.select.i.us.i, %i.ce
  %i.ct = zext i32 %i.cs to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.co, ptr align 1 %i.cr, i64 %i.ct, i1 false)
  %i.cu = add i32 %spec.select.i.us.i, %i.cj
  %i.cv = urem i32 %i.cu, %i.ch                   ; 2 uses
  store i32 %i.cv, ptr %i.ag, align 4
  %i.cw = add nuw nsw i32 %spec.select.i.us.i, %.074.i.us72.i ; 4 uses
  %.not96.i.us.i = icmp ugt i32 %i.cl, %i.ck
  br i1 %.not96.i.us.i, label %StopAudioBufferInLockedState.exit.i.us.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.cx = zext nneg i32 %.078.i.us71.i to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cx
  store i8 1, ptr %i.cy, align 1
  %i.cz = xor i32 %.078.i.us71.i, 1
  %i.da = load i8, ptr %i.al, align 2, !range !66, !noundef !53
  %i.db = trunc nuw i8 %i.da to i1
  %.pre.i = load i32, ptr %i.af, align 8
  %.pre80.i = load i32, ptr %i.ag, align 4
  %.pre82.i = load ptr, ptr %i.ak, align 8
  br i1 %i.db, label %StopAudioBufferInLockedState.exit.i.us.i, label %IsAudioBufferPlayingInLockedState.exit.i.i.i

StopAudioBufferInLockedState.exit.i.us.i:         ; preds = %bb.j, %.lr.ph.i
  %i.dc = phi i32 [ %.pre.i, %bb.j ], [ %i.ch, %.lr.ph.i ]
  %i.dd = phi ptr [ %.pre82.i, %bb.j ], [ %i.ci, %.lr.ph.i ]
  %i.de = phi i32 [ %.pre80.i, %bb.j ], [ %i.cv, %.lr.ph.i ]
  %.381.i.us.i = phi i32 [ %i.cz, %bb.j ], [ %.078.i.us71.i, %.lr.ph.i ]
  %.not88.i.us.i = icmp samesign ult i32 %i.cw, %spec.select.i
  br i1 %.not88.i.us.i, label %.lr.ph.i, label %StopAudioBufferInLockedState.exit.thread.i.i

.split.i:                                         ; preds = %bb.i
  %4 = load i8, ptr %i.ai, align 1, !range !66, !noundef !53 ; 2 uses
  %5 = load i8, ptr %i.ah, align 4, !range !66, !noundef !53 ; 2 uses
  %.sroa.idx.i67.i = icmp eq i32 %i.bx, 1
  %.sroa.speculated.i68.i = select i1 %.sroa.idx.i67.i, i8 %4, i8 %5
  %i.df = trunc nuw i8 %.sroa.speculated.i68.i to i1
  br i1 %i.df, label %StopAudioBufferInLockedState.exit.thread.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %.split.i, %StopAudioBufferInLockedState.exit.i.i
  %.074.i68.i = phi i32 [ %i.dx, %StopAudioBufferInLockedState.exit.i.i ], [ 0, %.split.i ] ; 4 uses
  %.sroa.6.0.i71.i = phi i8 [ %.sroa.6.3.i.i, %StopAudioBufferInLockedState.exit.i.i ], [ %4, %.split.i ] ; 2 uses
  %.sroa.0.0.i70.i = phi i8 [ %.sroa.0.3.i.i, %StopAudioBufferInLockedState.exit.i.i ], [ %5, %.split.i ] ; 2 uses
  %.078.i67.i = phi i32 [ %.381.i.i, %StopAudioBufferInLockedState.exit.i.i ], [ %i.bx, %.split.i ] ; 5 uses
  %i.dg = icmp eq i32 %spec.select.i, %.074.i68.i
  br i1 %i.dg, label %ReadAudioBufferFramesInInternalFormat.exit.i, label %bb.k

bb.k:                                             ; preds = %.thread.i.i
  %i.dh = sub i32 %spec.select.i, %.074.i68.i     ; 2 uses
  %i.di = load i32, ptr %i.ag, align 4            ; 3 uses
  %i.dj = add nuw nsw i32 %.078.i67.i, 1
  %.neg.i.i = mul i32 %i.dj, %i.bv
  %i.dk = sub i32 %.neg.i.i, %i.di                ; 2 uses
  %spec.select.i.i = call i32 @llvm.umin.i32(i32 %i.dh, i32 %i.dk) ; 3 uses
  %i.dl = mul i32 %.074.i68.i, %i.ce
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dm
  %i.do = load ptr, ptr %i.ak, align 8
  %i.dp = mul i32 %i.di, %i.ce
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dq
  %i.ds = mul i32 %spec.select.i.i, %i.ce
  %i.dt = zext i32 %i.ds to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr align 1 %i.dr, i64 %i.dt, i1 false)
  %i.du = add i32 %spec.select.i.i, %i.di
  %i.dv = load i32, ptr %i.af, align 8
  %i.dw = urem i32 %i.du, %i.dv
  store i32 %i.dw, ptr %i.ag, align 4
  %i.dx = add i32 %spec.select.i.i, %.074.i68.i   ; 3 uses
  %.not96.i.i = icmp ugt i32 %i.dk, %i.dh
  br i1 %.not96.i.i, label %StopAudioBufferInLockedState.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dy = zext nneg i32 %.078.i67.i to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.dy
  store i8 1, ptr %i.dz, align 1
  %.sroa.idx27.i.i = icmp eq i32 %.078.i67.i, 1   ; 2 uses
  %.sroa.0.0..i.i = select i1 %.sroa.idx27.i.i, i8 %.sroa.0.0.i70.i, i8 1
  %..sroa.6.0.i.i = select i1 %.sroa.idx27.i.i, i8 1, i8 %.sroa.6.0.i71.i
  %i.ea = xor i32 %.078.i67.i, 1
  %i.eb = load i8, ptr %i.al, align 2, !range !66, !noundef !53
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %StopAudioBufferInLockedState.exit.i.i, label %IsAudioBufferPlayingInLockedState.exit.i.i.i

IsAudioBufferPlayingInLockedState.exit.i.i.i:     ; preds = %bb.l, %bb.j
  %.us-phi64.i = phi i32 [ %i.cw, %bb.j ], [ %i.dx, %bb.l ] ; 2 uses
  %i.ed = load i8, ptr %i.u, align 1, !range !66, !noundef !53
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %StopAudioBufferInLockedState.exit.thread.i.i, label %bb.m

bb.m:                                             ; preds = %IsAudioBufferPlayingInLockedState.exit.i.i.i
  store i8 0, ptr %i.r, align 4
  store i8 0, ptr %i.u, align 1
  store i32 0, ptr %i.ag, align 4
  store i32 0, ptr %i.ae, align 8
  store i8 1, ptr %i.ah, align 4
  store i8 1, ptr %i.ai, align 1
  br label %StopAudioBufferInLockedState.exit.thread.i.i

StopAudioBufferInLockedState.exit.i.i:            ; preds = %bb.l, %bb.k
  %.381.i.i = phi i32 [ %i.ea, %bb.l ], [ %.078.i67.i, %bb.k ] ; 2 uses
  %.sroa.0.3.i.i = phi i8 [ %.sroa.0.0..i.i, %bb.l ], [ %.sroa.0.0.i70.i, %bb.k ] ; 2 uses
  %.sroa.6.3.i.i = phi i8 [ %..sroa.6.0.i.i, %bb.l ], [ %.sroa.6.0.i71.i, %bb.k ] ; 2 uses
  %.sroa.idx.i.i = icmp eq i32 %.381.i.i, 1
  %.sroa.speculated.i.i = select i1 %.sroa.idx.i.i, i8 %.sroa.6.3.i.i, i8 %.sroa.0.3.i.i
  %i.ef = trunc nuw i8 %.sroa.speculated.i.i to i1
  br i1 %i.ef, label %StopAudioBufferInLockedState.exit.thread.i.i, label %.thread.i.i

StopAudioBufferInLockedState.exit.thread.i.i:     ; preds = %StopAudioBufferInLockedState.exit.i.i, %StopAudioBufferInLockedState.exit.i.us.i, %bb.m, %IsAudioBufferPlayingInLockedState.exit.i.i.i, %.split.i, %.split.us.i
  %i.eg = phi i1 [ %i.cg, %IsAudioBufferPlayingInLockedState.exit.i.i.i ], [ %i.cg, %bb.m ], [ true, %.split.us.i ], [ false, %.split.i ], [ true, %StopAudioBufferInLockedState.exit.i.us.i ], [ false, %StopAudioBufferInLockedState.exit.i.i ]
  %.2.i.i = phi i32 [ %.us-phi64.i, %IsAudioBufferPlayingInLockedState.exit.i.i.i ], [ %.us-phi64.i, %bb.m ], [ 0, %.split.us.i ], [ 0, %.split.i ], [ %i.cw, %StopAudioBufferInLockedState.exit.i.us.i ], [ %i.dx, %StopAudioBufferInLockedState.exit.i.i ] ; 4 uses
  %.not89.i.i = icmp eq i32 %spec.select.i, %.2.i.i
  br i1 %.not89.i.i, label %ReadAudioBufferFramesInInternalFormat.exit.i, label %bb.n

bb.n:                                             ; preds = %StopAudioBufferInLockedState.exit.thread.i.i
  %i.eh = sub i32 %spec.select.i, %.2.i.i
  %i.ei = mul i32 %.2.i.i, %i.ce
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ej
  %i.el = mul i32 %i.eh, %i.ce
  %i.em = zext i32 %i.el to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ek, i8 0, i64 %i.em, i1 false)
  %spec.select91.i.i = select i1 %i.eg, i32 %.2.i.i, i32 %spec.select.i
  br label %ReadAudioBufferFramesInInternalFormat.exit.i

ReadAudioBufferFramesInInternalFormat.exit.i:     ; preds = %.thread.i.i, %bb.n, %StopAudioBufferInLockedState.exit.thread.i.i, %bb.h, %bb.g, %bb.e
  %.1.i.i = phi i32 [ %spec.select.i, %bb.g ], [ 0, %bb.e ], [ 0, %bb.h ], [ %spec.select.i, %StopAudioBufferInLockedState.exit.thread.i.i ], [ %spec.select91.i.i, %bb.n ], [ %spec.select.i, %.thread.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #61
  %i.en = zext i32 %.1.i.i to i64                 ; 3 uses
  store i64 %i.en, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #61
  store i64 %i.bd, ptr %i.e, align 8
  %i.eo = call i32 @ma_data_converter_process_pcm_frames(ptr noundef nonnull %.05599, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.e) ; 0 uses
  %i.ep = load i64, ptr %i.e, align 8
  %i.eq = load i64, ptr %i.d, align 8             ; 3 uses
  %i.er = icmp ult i64 %i.eq, %i.en
  br i1 %i.er, label %bb.o, label %.split93.i

bb.o:                                             ; preds = %ReadAudioBufferFramesInInternalFormat.exit.i
  %i.es = sub nuw nsw i64 %i.en, %i.eq
  %spec.store.select1.i = call i64 @llvm.umin.i64(i64 %i.es, i64 8) ; 2 uses
  %i.et = load ptr, ptr %i.aa, align 8
  %i.eu = mul nuw i64 %i.eq, %i.aw
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eu
  %i.ew = mul nuw nsw i64 %spec.store.select1.i, %i.aw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.et, ptr nonnull align 1 %i.ev, i64 %i.ew, i1 false)
  %i.ex = trunc nuw nsw i64 %spec.store.select1.i to i32
  store i32 %i.ex, ptr %i.z, align 8
  br label %.split93.i

.split93.i:                                       ; preds = %bb.o, %ReadAudioBufferFramesInInternalFormat.exit.i
  %.not57.not.i = icmp ult i32 %.1.i.i, %spec.select.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #61
  %.pn94.i = trunc i64 %i.ep to i32
  %.295.i = add i32 %.051.i88, %.pn94.i           ; 2 uses
  br i1 %.not57.not.i, label %ReadAudioBufferFramesInMixingFormat.exit, label %.backedge.i

.backedge.i:                                      ; preds = %select.unfold.i, %.split93.i
  %.051.be.i = phi i32 [ %.2.i, %select.unfold.i ], [ %.295.i, %.split93.i ] ; 3 uses
  %i.ey = icmp ult i32 %.051.be.i, %spec.store.select
  br i1 %i.ey, label %bb.d, label %ReadAudioBufferFramesInMixingFormat.exit

select.unfold.i:                                  ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  %i.ez = zext i32 %i.be to i64
  store i64 %i.ez, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  store i64 %i.bd, ptr %i.c, align 8
  %i.fa = load ptr, ptr %i.aa, align 8
  %i.fb = call i32 @ma_data_converter_process_pcm_frames(ptr noundef nonnull %.05599, ptr noundef %i.fa, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.c) ; 0 uses
  %i.fc = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.fd = load i64, ptr %i.b, align 8             ; 2 uses
  %i.fe = mul i64 %i.fd, %i.aw
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fe
  %i.fg = sub i64 8, %i.fd
  %i.fh = mul i64 %i.fg, %i.aw
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.fc, ptr align 1 %i.ff, i64 %i.fh, i1 false)
  %i.fi = load i64, ptr %i.b, align 8
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = load i32, ptr %i.z, align 8
  %i.fl = sub i32 %i.fk, %i.fj
  store i32 %i.fl, ptr %i.z, align 8
  %i.fm = load i64, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  %.pn.i = trunc i64 %i.fm to i32
  %.2.i = add i32 %.051.i88, %.pn.i
  br label %.backedge.i

ReadAudioBufferFramesInMixingFormat.exit:         ; preds = %.backedge.i, %.split93.i
  %.3.i = phi i32 [ %.295.i, %.split93.i ], [ %.051.be.i, %.backedge.i ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %.not61 = icmp eq i32 %.3.i, 0
  br i1 %.not61, label %bb.r, label %bb.p

bb.p:                                             ; preds = %ReadAudioBufferFramesInMixingFormat.exit
  %i.fn = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2144), align 8 ; 2 uses
  %i.fo = mul i32 %i.fn, %.15193
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fp ; 4 uses
  %.04889 = load ptr, ptr %i.am, align 8          ; 2 uses
  %.not6290 = icmp eq ptr %.04889, null
  br i1 %.not6290, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %.lr.ph
  %.04891 = phi ptr [ %.048, %.lr.ph ], [ %.04889, %bb.p ] ; 2 uses
  %i.fr = load ptr, ptr %.04891, align 8
  call void %i.fr(ptr noundef nonnull %i.f, i32 noundef %.3.i) #61
  %i.fs = getelementptr inbounds nuw i8, ptr %.04891, i64 8
  %.048 = load ptr, ptr %i.fs, align 8            ; 2 uses
  %.not62 = icmp eq ptr %.048, null
  br i1 %.not62, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2144), align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.p
  %i.ft = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.fn, %bb.p ] ; 4 uses
  %i.fu = load float, ptr %i.an, align 8          ; 3 uses
  switch i32 %i.ft, label %.preheader.preheader.i [
    i32 2, label %bb.q
    i32 0, label %MixAudioFrames.exit
  ]

.preheader.preheader.i:                           ; preds = %._crit_edge
  %wide.trip.count56.i = zext i32 %.3.i to i64
  %wide.trip.count.i = zext i32 %i.ft to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %i.ft, 8
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fu, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.preheader.i

bb.q:                                             ; preds = %._crit_edge
  %i.fv = load float, ptr %i.ao, align 8
  %i.fw = fadd float %i.fv, 1.000000e+00
  %i.fx = fmul float %i.fw, 5.000000e-01          ; 2 uses
  %i.fy = fsub float 1.000000e+00, %i.fx
  %i.fz = fmul float %i.fu, 5.000000e-01
  %i.ga = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = insertelement <2 x float> poison, float %i.fy, i64 0
  %i.gd = insertelement <2 x float> %i.gc, float %i.fx, i64 1 ; 3 uses
  %i.ge = fmul <2 x float> %i.gb, %i.gd
  %i.gf = fneg <2 x float> %i.gd
  %i.gg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.gd, <2 x float> splat (float 3.000000e+00))
  %i.gh = fmul <2 x float> %i.ge, %i.gg           ; 3 uses
  %i.gi = zext i32 %.3.i to i64                   ; 2 uses
  %min.iters.check157 = icmp ult i32 %.3.i, 4
  br i1 %min.iters.check157, label %scalar.ph156.preheader, label %vector.ph158

vector.ph158:                                     ; preds = %bb.q
  %n.vec159 = and i64 %i.gi, 4294967292           ; 4 uses
  %i.gj = trunc nuw i64 %n.vec159 to i32
  %i.gk = shl nuw nsw i64 %n.vec159, 3            ; 2 uses
  %i.gl = getelementptr i8, ptr %i.f, i64 %i.gk
  %i.gm = getelementptr i8, ptr %i.fq, i64 %i.gk
  %broadcast.splat161 = shufflevector <2 x float> %i.gh, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat163 = shufflevector <2 x float> %i.gh, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph158
  %index165 = phi i64 [ 0, %vector.ph158 ], [ %index.next171, %vector.body164 ] ; 2 uses
  %i.gn = shl i64 %index165, 3                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.gn
  %next.gep166 = getelementptr i8, ptr %i.fq, i64 %i.gn ; 2 uses
  %wide.vec = load <8 x float>, ptr %next.gep, align 16 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec167 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec168 = load <8 x float>, ptr %next.gep166, align 4 ; 2 uses
  %strided.vec169 = shufflevector <8 x float> %wide.vec168, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec170 = shufflevector <8 x float> %wide.vec168, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.go = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec, <4 x float> %broadcast.splat161, <4 x float> %strided.vec169)
  %i.gp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec167, <4 x float> %broadcast.splat163, <4 x float> %strided.vec170)
  %interleaved.vec = shufflevector <4 x float> %i.go, <4 x float> %i.gp, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %next.gep166, align 4
  %index.next171 = add nuw i64 %index165, 4       ; 2 uses
  %i.gq = icmp eq i64 %index.next171, %n.vec159
  br i1 %i.gq, label %middle.block172, label %vector.body164, !llvm.loop !1137

middle.block172:                                  ; preds = %vector.body164
  %cmp.n173 = icmp eq i64 %n.vec159, %i.gi
  br i1 %cmp.n173, label %MixAudioFrames.exit, label %scalar.ph156.preheader

scalar.ph156.preheader:                           ; preds = %bb.q, %middle.block172
  %.04050.i.ph = phi i32 [ 0, %bb.q ], [ %i.gj, %middle.block172 ]
  %.04149.i.ph = phi ptr [ %i.f, %bb.q ], [ %i.gl, %middle.block172 ]
  %.04248.i.ph = phi ptr [ %i.fq, %bb.q ], [ %i.gm, %middle.block172 ]
  br label %scalar.ph156

scalar.ph156:                                     ; preds = %scalar.ph156.preheader, %scalar.ph156
  %.04050.i = phi i32 [ %i.gw, %scalar.ph156 ], [ %.04050.i.ph, %scalar.ph156.preheader ]
  %.04149.i = phi ptr [ %i.gv, %scalar.ph156 ], [ %.04149.i.ph, %scalar.ph156.preheader ] ; 2 uses
  %.04248.i = phi ptr [ %i.gu, %scalar.ph156 ], [ %.04248.i.ph, %scalar.ph156.preheader ] ; 3 uses
  %i.gr = load <2 x float>, ptr %.04149.i, align 4
  %i.gs = load <2 x float>, ptr %.04248.i, align 4
  %i.gt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.gh, <2 x float> %i.gs)
  store <2 x float> %i.gt, ptr %.04248.i, align 4
  %i.gu = getelementptr inbounds nuw i8, ptr %.04248.i, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %.04149.i, i64 8
  %i.gw = add nuw i32 %.04050.i, 1                ; 2 uses
  %exitcond58.not.i = icmp eq i32 %i.gw, %.3.i
  br i1 %exitcond58.not.i, label %MixAudioFrames.exit, label %scalar.ph156, !llvm.loop !1138

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv53.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next54.i, %._crit_edge.i ] ; 2 uses
  %i.gx = trunc nuw i64 %indvars.iv53.i to i32
  %i.gy = mul i32 %i.ft, %i.gx
  %i.gz = zext i32 %i.gy to i64                   ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.gz ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gz ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %index ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %wide.load = load <4 x float>, ptr %i.hc, align 4
  %wide.load153 = load <4 x float>, ptr %i.hd, align 4
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %index ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16 ; 2 uses
  %wide.load154 = load <4 x float>, ptr %i.he, align 4
  %wide.load155 = load <4 x float>, ptr %i.hf, align 4
  %i.hg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load154)
end_hunk_0
