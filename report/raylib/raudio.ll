Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 302
begin_hunk_0_@InitAudioDevice:bb.a

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
  %i.a = alloca [2 x i8], align 1                 ; 8 uses
  %i.b = alloca [4096 x i8], align 16             ; 9 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca [1024 x float], align 16          ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.i = load i32, ptr %i.h, align 8
  %i.j = mul i32 %i.i, %3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.l = load i32, ptr %i.k, align 4
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4
  %i.p = mul i32 %i.j, %i.o
  %i.q = zext i32 %i.p to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.q, i1 false)
  %i.r = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %.05597 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4864), align 8 ; 2 uses
  %.not98 = icmp eq ptr %.05597, null
  br i1 %.not98, label %.preheader, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.not59150.not = icmp eq i32 %3, 0
  br label %bb.b

.preheader:                                       ; preds = %.loopexit71, %bb.a
  %.0103 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4888), align 8 ; 2 uses
  %.not58104 = icmp eq ptr %.0103, null
  br i1 %.not58104, label %._crit_edge107, label %.lr.ph106

bb.b:                                             ; preds = %.lr.ph102, %.loopexit71
  %.05599 = phi ptr [ %.05597, %.lr.ph102 ], [ %.055, %.loopexit71 ] ; 25 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05599, i64 356 ; 5 uses
  %i.u = load i8, ptr %i.t, align 4, !range !66, !noundef !53
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %.loopexit71

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.05599, i64 357 ; 5 uses
  %i.x = load i8, ptr %i.w, align 1, !range !66, !noundef !53
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.loopexit71, label %.preheader70

.preheader70:                                     ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.05599, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05599, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %.05599, i64 320 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05599, i64 312 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05599, i64 136
  %i.ae = getelementptr inbounds nuw i8, ptr %.05599, i64 140
  %i.af = getelementptr inbounds nuw i8, ptr %.05599, i64 328
  %i.ag = getelementptr inbounds nuw i8, ptr %.05599, i64 376 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05599, i64 368 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05599, i64 372 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05599, i64 364 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05599, i64 365 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.05599, i64 360
  %i.am = getelementptr inbounds nuw i8, ptr %.05599, i64 384 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05599, i64 358 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.05599, i64 336
  %i.ap = getelementptr inbounds nuw i8, ptr %.05599, i64 344
  %i.aq = getelementptr inbounds nuw i8, ptr %.05599, i64 352
  br i1 %.not59150.not, label %.loopexit71, label %.lr.ph152

.lr.ph152:                                        ; preds = %.preheader70, %.backedge
  %.050151 = phi i32 [ %.050.be, %.backedge ], [ 0, %.preheader70 ] ; 3 uses
  %i.ar = sub nuw i32 %3, %.050151                ; 2 uses
  %.not6092 = icmp eq i32 %i.ar, 0
  br i1 %.not6092, label %.backedge, label %.lr.ph96

.lr.ph96:                                         ; preds = %.lr.ph152, %StopAudioBufferInLockedState.exit
  %.04994 = phi i32 [ %.1, %StopAudioBufferInLockedState.exit ], [ %i.ar, %.lr.ph152 ] ; 3 uses
  %.15193 = phi i32 [ %.252, %StopAudioBufferInLockedState.exit ], [ %.050151, %.lr.ph152 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.g, i8 0, i64 4096, i1 false)
  %spec.store.select = call i32 @llvm.umin.i32(i32 %.04994, i32 512) ; 3 uses
  %i.as = load i32, ptr %.05599, align 8
  %i.at = load i32, ptr %i.z, align 8
  %i.au = zext i32 %i.as to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = mul i32 %i.aw, %i.at                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.b, i8 0, i64 4096, i1 false)
  %i.ay = zext i32 %i.ax to i64                   ; 4 uses
  %i.az = udiv i32 4096, %i.ax
  %.not88.i.us70.not.i = icmp ugt i32 %i.ax, 4096
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph96, %.backedge.i
  %.051.i88 = phi i32 [ 0, %.lr.ph96 ], [ %.051.be.i, %.backedge.i ] ; 4 uses
  %i.ba = load i32, ptr %i.aa, align 4
  %i.bb = mul i32 %i.ba, %.051.i88
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bc ; 2 uses
  %i.be = sub nuw nsw i32 %spec.store.select, %.051.i88 ; 2 uses
  %i.bf = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bg = load i32, ptr %i.ab, align 8            ; 2 uses
  %.not.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i, label %bb.e, label %select.unfold.i

bb.e:                                             ; preds = %bb.d
  %i.bh = load i32, ptr %i.ad, align 8
  %i.bi = uitofp i32 %i.bh to float
  %i.bj = load i32, ptr %i.ae, align 4
  %i.bk = uitofp i32 %i.bj to float
  %i.bl = fdiv float %i.bi, %i.bk
  %i.bm = uitofp nneg i32 %i.be to float
  %i.bn = fmul float %i.bl, %i.bm
  %i.bo = fptoui float %i.bn to i32
  %spec.store.select.i = call i32 @llvm.umax.i32(i32 %i.bo, i32 1)
  %spec.select.i = call i32 @llvm.umin.i32(i32 %spec.store.select.i, i32 %i.az) ; 13 uses
  %i.bp = load i8, ptr %i.t, align 4, !range !66, !noundef !53
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.f, label %ReadAudioBufferFramesInInternalFormat.exit.i

bb.f:                                             ; preds = %bb.e
  %i.br = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void %i.br(ptr noundef nonnull %i.b, i32 noundef range(i32 0, 4097) %spec.select.i) #61, !inline_history !1133
  %i.bs = load i32, ptr %i.ag, align 8
  %i.bt = add i32 %i.bs, %spec.select.i
  store i32 %i.bt, ptr %i.ag, align 8
  br label %ReadAudioBufferFramesInInternalFormat.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bu = load i32, ptr %i.ah, align 8            ; 3 uses
  %i.bv = icmp ugt i32 %i.bu, 1
  %i.bw = zext i1 %i.bv to i32
  %i.bx = lshr i32 %i.bu, %i.bw                   ; 2 uses
  %i.by = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.bz = udiv i32 %i.by, %i.bx                   ; 4 uses
  %i.ca = icmp ugt i32 %i.bz, 1
  br i1 %i.ca, label %ReadAudioBufferFramesInInternalFormat.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.cb = load i8, ptr %i.aj, align 4, !range !66, !noundef !53
  store i8 %i.cb, ptr %i.a, align 1
  %i.cc = load i8, ptr %i.ak, align 1, !range !66, !noundef !53
  store i8 %i.cc, ptr %i.s, align 1
  %i.cd = load i32, ptr %.05599, align 8
  %i.ce = load i32, ptr %i.z, align 8
  %i.cf = zext i32 %i.cd to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = mul i32 %i.ch, %i.ce                    ; 8 uses
  %i.cj = load i32, ptr %i.al, align 8
  %i.ck = icmp eq i32 %i.cj, 0                    ; 3 uses
  br i1 %i.ck, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.i
  br i1 %.not88.i.us70.not.i, label %StopAudioBufferInLockedState.exit.thread.i.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.split.us.i
  %.pre83.i = load ptr, ptr %i.am, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %StopAudioBufferInLockedState.exit.i.us.i, %.lr.ph.preheader.i
  %i.cl = phi i32 [ %i.dh, %StopAudioBufferInLockedState.exit.i.us.i ], [ %i.bu, %.lr.ph.preheader.i ] ; 3 uses
  %i.cm = phi ptr [ %i.di, %StopAudioBufferInLockedState.exit.i.us.i ], [ %.pre83.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.cn = phi i32 [ %i.dj, %StopAudioBufferInLockedState.exit.i.us.i ], [ %i.by, %.lr.ph.preheader.i ] ; 3 uses
  %.074.i.us72.i = phi i32 [ %i.da, %StopAudioBufferInLockedState.exit.i.us.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.078.i.us71.i = phi i32 [ %.381.i.us.i, %StopAudioBufferInLockedState.exit.i.us.i ], [ %i.bz, %.lr.ph.preheader.i ] ; 3 uses
  %i.co = sub nuw nsw i32 %spec.select.i, %.074.i.us72.i ; 2 uses
  %i.cp = sub i32 %i.cl, %i.cn                    ; 2 uses
  %spec.select.i.us.i = call i32 @llvm.umin.i32(i32 %i.co, i32 %i.cp) ; 3 uses
  %i.cq = mul i32 %.074.i.us72.i, %i.ci
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cr
  %i.ct = mul i32 %i.cn, %i.ci
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cu
  %i.cw = mul i32 %spec.select.i.us.i, %i.ci
  %i.cx = zext i32 %i.cw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cs, ptr align 1 %i.cv, i64 %i.cx, i1 false)
  %i.cy = add i32 %spec.select.i.us.i, %i.cn
  %i.cz = urem i32 %i.cy, %i.cl                   ; 2 uses
  store i32 %i.cz, ptr %i.ai, align 4
  %i.da = add nuw nsw i32 %spec.select.i.us.i, %.074.i.us72.i ; 4 uses
  %.not96.i.us.i = icmp ugt i32 %i.cp, %i.co
  br i1 %.not96.i.us.i, label %StopAudioBufferInLockedState.exit.i.us.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.db = zext nneg i32 %.078.i.us71.i to i64     ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.db
  store i8 1, ptr %i.dc, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.db
  store i8 1, ptr %i.dd, align 1
  %i.de = xor i32 %.078.i.us71.i, 1
  %i.df = load i8, ptr %i.an, align 2, !range !66, !noundef !53
  %i.dg = trunc nuw i8 %i.df to i1
  %.pre.i = load i32, ptr %i.ah, align 8
  %.pre80.i = load i32, ptr %i.ai, align 4
  %.pre82.i = load ptr, ptr %i.am, align 8
  br i1 %i.dg, label %StopAudioBufferInLockedState.exit.i.us.i, label %IsAudioBufferPlayingInLockedState.exit.i.i.i

StopAudioBufferInLockedState.exit.i.us.i:         ; preds = %bb.j, %.lr.ph.i
  %i.dh = phi i32 [ %.pre.i, %bb.j ], [ %i.cl, %.lr.ph.i ]
  %i.di = phi ptr [ %.pre82.i, %bb.j ], [ %i.cm, %.lr.ph.i ]
  %i.dj = phi i32 [ %.pre80.i, %bb.j ], [ %i.cz, %.lr.ph.i ]
  %.381.i.us.i = phi i32 [ %i.de, %bb.j ], [ %.078.i.us71.i, %.lr.ph.i ]
  %.not88.i.us.i = icmp samesign ult i32 %i.da, %spec.select.i
  br i1 %.not88.i.us.i, label %.lr.ph.i, label %StopAudioBufferInLockedState.exit.thread.i.i

.split.i:                                         ; preds = %bb.i
  %i.dk = zext nneg i32 %i.bz to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !range !66, !noundef !53
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %StopAudioBufferInLockedState.exit.thread.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %.split.i, %StopAudioBufferInLockedState.exit.i.i
  %.074.i68.i = phi i32 [ %i.ef, %StopAudioBufferInLockedState.exit.i.i ], [ 0, %.split.i ] ; 4 uses
  %.078.i67.i = phi i32 [ %.381.i.i, %StopAudioBufferInLockedState.exit.i.i ], [ %i.bz, %.split.i ] ; 4 uses
  %i.do = icmp eq i32 %spec.select.i, %.074.i68.i
  br i1 %i.do, label %StopAudioBufferInLockedState.exit.thread.i.thread.i, label %bb.k

bb.k:                                             ; preds = %.thread.i.i
  %i.dp = sub i32 %spec.select.i, %.074.i68.i     ; 2 uses
  %i.dq = load i32, ptr %i.ai, align 4            ; 3 uses
  %i.dr = add nuw nsw i32 %.078.i67.i, 1
  %.neg.i.i = mul i32 %i.dr, %i.bx
  %i.ds = sub i32 %.neg.i.i, %i.dq                ; 2 uses
  %spec.select.i.i = call i32 @llvm.umin.i32(i32 %i.dp, i32 %i.ds) ; 3 uses
  %i.dt = mul i32 %.074.i68.i, %i.ci
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.du
  %i.dw = load ptr, ptr %i.am, align 8
  %i.dx = mul i32 %i.dq, %i.ci
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dy
  %i.ea = mul i32 %spec.select.i.i, %i.ci
  %i.eb = zext i32 %i.ea to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dv, ptr align 1 %i.dz, i64 %i.eb, i1 false)
  %i.ec = add i32 %spec.select.i.i, %i.dq
  %i.ed = load i32, ptr %i.ah, align 8
  %i.ee = urem i32 %i.ec, %i.ed
  store i32 %i.ee, ptr %i.ai, align 4
  %i.ef = add i32 %spec.select.i.i, %.074.i68.i   ; 3 uses
  %.not96.i.i = icmp ugt i32 %i.ds, %i.dp
  br i1 %.not96.i.i, label %StopAudioBufferInLockedState.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eg = zext nneg i32 %.078.i67.i to i64        ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.eg
  store i8 1, ptr %i.eh, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eg
  store i8 1, ptr %i.ei, align 1
  %i.ej = xor i32 %.078.i67.i, 1
  %i.ek = load i8, ptr %i.an, align 2, !range !66, !noundef !53
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %StopAudioBufferInLockedState.exit.i.i, label %IsAudioBufferPlayingInLockedState.exit.i.i.i

IsAudioBufferPlayingInLockedState.exit.i.i.i:     ; preds = %bb.l, %bb.j
  %.us-phi64.i = phi i32 [ %i.da, %bb.j ], [ %i.ef, %bb.l ] ; 2 uses
  %i.em = load i8, ptr %i.w, align 1, !range !66, !noundef !53
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %StopAudioBufferInLockedState.exit.thread.i.i, label %bb.m

bb.m:                                             ; preds = %IsAudioBufferPlayingInLockedState.exit.i.i.i
  store i8 0, ptr %i.t, align 4
  store i8 0, ptr %i.w, align 1
  store i32 0, ptr %i.ai, align 4
  store i32 0, ptr %i.ag, align 8
  store i8 1, ptr %i.aj, align 4
  store i8 1, ptr %i.ak, align 1
  br label %StopAudioBufferInLockedState.exit.thread.i.i

StopAudioBufferInLockedState.exit.i.i:            ; preds = %bb.l, %bb.k
  %.381.i.i = phi i32 [ %i.ej, %bb.l ], [ %.078.i67.i, %bb.k ] ; 2 uses
  %i.eo = zext nneg i32 %.381.i.i to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !range !66, !noundef !53
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %StopAudioBufferInLockedState.exit.thread.i.i, label %.thread.i.i

StopAudioBufferInLockedState.exit.thread.i.i:     ; preds = %StopAudioBufferInLockedState.exit.i.i, %StopAudioBufferInLockedState.exit.i.us.i, %bb.m, %IsAudioBufferPlayingInLockedState.exit.i.i.i, %.split.i, %.split.us.i
  %i.es = phi i1 [ %i.ck, %IsAudioBufferPlayingInLockedState.exit.i.i.i ], [ %i.ck, %bb.m ], [ true, %.split.us.i ], [ false, %.split.i ], [ true, %StopAudioBufferInLockedState.exit.i.us.i ], [ false, %StopAudioBufferInLockedState.exit.i.i ]
  %.2.i.i = phi i32 [ %.us-phi64.i, %IsAudioBufferPlayingInLockedState.exit.i.i.i ], [ %.us-phi64.i, %bb.m ], [ 0, %.split.us.i ], [ 0, %.split.i ], [ %i.da, %StopAudioBufferInLockedState.exit.i.us.i ], [ %i.ef, %StopAudioBufferInLockedState.exit.i.i ] ; 4 uses
  %.not89.i.i = icmp eq i32 %spec.select.i, %.2.i.i
  br i1 %.not89.i.i, label %StopAudioBufferInLockedState.exit.thread.i.thread.i, label %bb.n

bb.n:                                             ; preds = %StopAudioBufferInLockedState.exit.thread.i.i
  %i.et = sub i32 %spec.select.i, %.2.i.i
  %i.eu = mul i32 %.2.i.i, %i.ci
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ev
  %i.ex = mul i32 %i.et, %i.ci
  %i.ey = zext i32 %i.ex to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ew, i8 0, i64 %i.ey, i1 false)
  %spec.select91.i.i = select i1 %i.es, i32 %.2.i.i, i32 %spec.select.i
  br label %StopAudioBufferInLockedState.exit.thread.i.thread.i

StopAudioBufferInLockedState.exit.thread.i.thread.i: ; preds = %.thread.i.i, %bb.n, %StopAudioBufferInLockedState.exit.thread.i.i
  %.3.i.i = phi i32 [ %spec.select.i, %StopAudioBufferInLockedState.exit.thread.i.i ], [ %spec.select91.i.i, %bb.n ], [ %spec.select.i, %.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %ReadAudioBufferFramesInInternalFormat.exit.i

ReadAudioBufferFramesInInternalFormat.exit.i:     ; preds = %StopAudioBufferInLockedState.exit.thread.i.thread.i, %bb.h, %bb.g, %bb.e
  %.1.i.i = phi i32 [ %spec.select.i, %bb.g ], [ 0, %bb.e ], [ %.3.i.i, %StopAudioBufferInLockedState.exit.thread.i.thread.i ], [ 0, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #61
  %i.ez = zext i32 %.1.i.i to i64                 ; 3 uses
  store i64 %i.ez, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #61
  store i64 %i.bf, ptr %i.f, align 8
  %i.fa = call i32 @ma_data_converter_process_pcm_frames(ptr noundef nonnull %.05599, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.f) ; 0 uses
  %i.fb = load i64, ptr %i.f, align 8
  %i.fc = load i64, ptr %i.e, align 8             ; 3 uses
  %i.fd = icmp ult i64 %i.fc, %i.ez
  br i1 %i.fd, label %bb.o, label %.split93.i

bb.o:                                             ; preds = %ReadAudioBufferFramesInInternalFormat.exit.i
  %i.fe = sub nuw nsw i64 %i.ez, %i.fc
  %spec.store.select1.i = call i64 @llvm.umin.i64(i64 %i.fe, i64 8) ; 2 uses
  %i.ff = load ptr, ptr %i.ac, align 8
  %i.fg = mul nuw i64 %i.fc, %i.ay
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fg
  %i.fi = mul nuw nsw i64 %spec.store.select1.i, %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ff, ptr nonnull align 1 %i.fh, i64 %i.fi, i1 false)
  %i.fj = trunc nuw nsw i64 %spec.store.select1.i to i32
  store i32 %i.fj, ptr %i.ab, align 8
  br label %.split93.i

.split93.i:                                       ; preds = %bb.o, %ReadAudioBufferFramesInInternalFormat.exit.i
  %.not57.not.i = icmp ult i32 %.1.i.i, %spec.select.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #61
  %.pn94.i = trunc i64 %i.fb to i32
  %.295.i = add i32 %.051.i88, %.pn94.i           ; 2 uses
  br i1 %.not57.not.i, label %ReadAudioBufferFramesInMixingFormat.exit, label %.backedge.i

.backedge.i:                                      ; preds = %select.unfold.i, %.split93.i
  %.051.be.i = phi i32 [ %.2.i, %select.unfold.i ], [ %.295.i, %.split93.i ] ; 3 uses
  %i.fk = icmp ult i32 %.051.be.i, %spec.store.select
  br i1 %i.fk, label %bb.d, label %ReadAudioBufferFramesInMixingFormat.exit

select.unfold.i:                                  ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  %i.fl = zext i32 %i.bg to i64
  store i64 %i.fl, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #61
  store i64 %i.bf, ptr %i.d, align 8
  %i.fm = load ptr, ptr %i.ac, align 8
  %i.fn = call i32 @ma_data_converter_process_pcm_frames(ptr noundef nonnull %.05599, ptr noundef %i.fm, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.d) ; 0 uses
  %i.fo = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.fp = load i64, ptr %i.c, align 8             ; 2 uses
  %i.fq = mul i64 %i.fp, %i.ay
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fq
  %i.fs = sub i64 8, %i.fp
  %i.ft = mul i64 %i.fs, %i.ay
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.fo, ptr align 1 %i.fr, i64 %i.ft, i1 false)
  %i.fu = load i64, ptr %i.c, align 8
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = load i32, ptr %i.ab, align 8
  %i.fx = sub i32 %i.fw, %i.fv
  store i32 %i.fx, ptr %i.ab, align 8
  %i.fy = load i64, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  %.pn.i = trunc i64 %i.fy to i32
  %.2.i = add i32 %.051.i88, %.pn.i
  br label %.backedge.i

ReadAudioBufferFramesInMixingFormat.exit:         ; preds = %.backedge.i, %.split93.i
  %.3.i = phi i32 [ %.295.i, %.split93.i ], [ %.051.be.i, %.backedge.i ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  %.not61 = icmp eq i32 %.3.i, 0
  br i1 %.not61, label %bb.r, label %bb.p

bb.p:                                             ; preds = %ReadAudioBufferFramesInMixingFormat.exit
  %i.fz = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2144), align 8 ; 2 uses
  %i.ga = mul i32 %i.fz, %.15193
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gb ; 4 uses
  %.04889 = load ptr, ptr %i.ao, align 8          ; 2 uses
  %.not6290 = icmp eq ptr %.04889, null
  br i1 %.not6290, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %.lr.ph
  %.04891 = phi ptr [ %.048, %.lr.ph ], [ %.04889, %bb.p ] ; 2 uses
  %i.gd = load ptr, ptr %.04891, align 8
  call void %i.gd(ptr noundef nonnull %i.g, i32 noundef %.3.i) #61
  %i.ge = getelementptr inbounds nuw i8, ptr %.04891, i64 8
  %.048 = load ptr, ptr %i.ge, align 8            ; 2 uses
  %.not62 = icmp eq ptr %.048, null
  br i1 %.not62, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2144), align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.p
  %i.gf = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.fz, %bb.p ] ; 4 uses
  %i.gg = load float, ptr %i.ap, align 8          ; 3 uses
  switch i32 %i.gf, label %.preheader.preheader.i [
    i32 2, label %bb.q
    i32 0, label %MixAudioFrames.exit
  ]

.preheader.preheader.i:                           ; preds = %._crit_edge
  %wide.trip.count56.i = zext i32 %.3.i to i64
  %wide.trip.count.i = zext i32 %i.gf to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %i.gf, 8
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gg, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.preheader.i

bb.q:                                             ; preds = %._crit_edge
  %i.gh = load float, ptr %i.aq, align 8
  %i.gi = fadd float %i.gh, 1.000000e+00
  %i.gj = fmul float %i.gi, 5.000000e-01          ; 2 uses
  %i.gk = fsub float 1.000000e+00, %i.gj
  %i.gl = fmul float %i.gg, 5.000000e-01
  %i.gm = insertelement <2 x float> poison, float %i.gl, i64 0
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.go = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.gp = insertelement <2 x float> %i.go, float %i.gj, i64 1 ; 3 uses
  %i.gq = fmul <2 x float> %i.gn, %i.gp
  %i.gr = fneg <2 x float> %i.gp
  %i.gs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.gp, <2 x float> splat (float 3.000000e+00))
  %i.gt = fmul <2 x float> %i.gq, %i.gs           ; 3 uses
  %i.gu = zext i32 %.3.i to i64                   ; 2 uses
  %min.iters.check157 = icmp ult i32 %.3.i, 4
  br i1 %min.iters.check157, label %scalar.ph156.preheader, label %vector.ph158

vector.ph158:                                     ; preds = %bb.q
  %n.vec159 = and i64 %i.gu, 4294967292           ; 4 uses
  %i.gv = trunc nuw i64 %n.vec159 to i32
  %i.gw = shl nuw nsw i64 %n.vec159, 3            ; 2 uses
  %i.gx = getelementptr i8, ptr %i.g, i64 %i.gw
  %i.gy = getelementptr i8, ptr %i.gc, i64 %i.gw
  %broadcast.splat161 = shufflevector <2 x float> %i.gt, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat163 = shufflevector <2 x float> %i.gt, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph158
  %index165 = phi i64 [ 0, %vector.ph158 ], [ %index.next171, %vector.body164 ] ; 2 uses
  %i.gz = shl i64 %index165, 3                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.gz
  %next.gep166 = getelementptr i8, ptr %i.gc, i64 %i.gz ; 2 uses
  %wide.vec = load <8 x float>, ptr %next.gep, align 16 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec167 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec168 = load <8 x float>, ptr %next.gep166, align 4 ; 2 uses
  %strided.vec169 = shufflevector <8 x float> %wide.vec168, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec170 = shufflevector <8 x float> %wide.vec168, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ha = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec, <4 x float> %broadcast.splat161, <4 x float> %strided.vec169)
  %i.hb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec167, <4 x float> %broadcast.splat163, <4 x float> %strided.vec170)
  %interleaved.vec = shufflevector <4 x float> %i.ha, <4 x float> %i.hb, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %next.gep166, align 4
  %index.next171 = add nuw i64 %index165, 4       ; 2 uses
  %i.hc = icmp eq i64 %index.next171, %n.vec159
  br i1 %i.hc, label %middle.block172, label %vector.body164, !llvm.loop !1134

middle.block172:                                  ; preds = %vector.body164
  %cmp.n173 = icmp eq i64 %n.vec159, %i.gu
  br i1 %cmp.n173, label %MixAudioFrames.exit, label %scalar.ph156.preheader

scalar.ph156.preheader:                           ; preds = %bb.q, %middle.block172
  %.04050.i.ph = phi i32 [ 0, %bb.q ], [ %i.gv, %middle.block172 ]
  %.04149.i.ph = phi ptr [ %i.g, %bb.q ], [ %i.gx, %middle.block172 ]
  %.04248.i.ph = phi ptr [ %i.gc, %bb.q ], [ %i.gy, %middle.block172 ]
  br label %scalar.ph156

scalar.ph156:                                     ; preds = %scalar.ph156.preheader, %scalar.ph156
  %.04050.i = phi i32 [ %i.hi, %scalar.ph156 ], [ %.04050.i.ph, %scalar.ph156.preheader ]
  %.04149.i = phi ptr [ %i.hh, %scalar.ph156 ], [ %.04149.i.ph, %scalar.ph156.preheader ] ; 2 uses
  %.04248.i = phi ptr [ %i.hg, %scalar.ph156 ], [ %.04248.i.ph, %scalar.ph156.preheader ] ; 3 uses
  %i.hd = load <2 x float>, ptr %.04149.i, align 4
  %i.he = load <2 x float>, ptr %.04248.i, align 4
  %i.hf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hd, <2 x float> %i.gt, <2 x float> %i.he)
  store <2 x float> %i.hf, ptr %.04248.i, align 4
  %i.hg = getelementptr inbounds nuw i8, ptr %.04248.i, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %.04149.i, i64 8
  %i.hi = add nuw i32 %.04050.i, 1                ; 2 uses
  %exitcond58.not.i = icmp eq i32 %i.hi, %.3.i
  br i1 %exitcond58.not.i, label %MixAudioFrames.exit, label %scalar.ph156, !llvm.loop !1135

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv53.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next54.i, %._crit_edge.i ] ; 2 uses
  %i.hj = trunc nuw i64 %indvars.iv53.i to i32
  %i.hk = mul i32 %i.gf, %i.hj
  %i.hl = zext i32 %i.hk to i64                   ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.hl ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.hl ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 3 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %index ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %wide.load = load <4 x float>, ptr %i.ho, align 4
  %wide.load153 = load <4 x float>, ptr %i.hp, align 4
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %index ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16 ; 2 uses
  %wide.load154 = load <4 x float>, ptr %i.hq, align 4
  %wide.load155 = load <4 x float>, ptr %i.hr, align 4
  %i.hs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load154)
  %i.ht = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load153, <4 x float> %broadcast.splat, <4 x float> %wide.load155)
  store <4 x float> %i.hs, ptr %i.hq, align 4
  store <4 x float> %i.ht, ptr %i.hr, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hu = icmp eq i64 %index.next, %n.vec
  br i1 %i.hu, label %middle.block, label %vector.body, !llvm.loop !1136

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond57.not.i = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count56.i
  br i1 %exitcond57.not.i, label %MixAudioFrames.exit, label %.preheader.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv.i
  %i.hw = load float, ptr %i.hv, align 4
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.i ; 2 uses
  %i.hy = load float, ptr %i.hx, align 4
  %i.hz = call float @llvm.fmuladd.f32(float %i.hw, float %i.gg, float %i.hy)
  store float %i.hz, ptr %i.hx, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1137

MixAudioFrames.exit:                              ; preds = %scalar.ph156, %._crit_edge.i, %middle.block172, %._crit_edge
  %i.ia = sub i32 %.04994, %.3.i
  %i.ib = add i32 %.3.i, %.15193
  br label %bb.r

bb.r:                                             ; preds = %MixAudioFrames.exit, %ReadAudioBufferFramesInMixingFormat.exit
  %.252 = phi i32 [ %i.ib, %MixAudioFrames.exit ], [ %.15193, %ReadAudioBufferFramesInMixingFormat.exit ] ; 4 uses
  %.1 = phi i32 [ %i.ia, %MixAudioFrames.exit ], [ %.04994, %ReadAudioBufferFramesInMixingFormat.exit ] ; 3 uses
  %i.ic = load i8, ptr %i.t, align 4, !range !66, !noundef !53
  %i.id = trunc nuw i8 %i.ic to i1
  br i1 %i.id, label %bb.s, label %StopAudioBufferInLockedState.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.ie = icmp ult i32 %.3.i, %spec.store.select
  br i1 %i.ie, label %bb.t, label %StopAudioBufferInLockedState.exit

bb.t:                                             ; preds = %bb.s
  %i.if = load i8, ptr %i.an, align 2, !range !66, !noundef !53
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %bb.v, label %IsAudioBufferPlayingInLockedState.exit.i

IsAudioBufferPlayingInLockedState.exit.i:         ; preds = %bb.t
  %i.ih = load i8, ptr %i.w, align 1, !range !66, !noundef !53
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %StopAudioBufferInLockedState.exit.thread, label %bb.u

bb.u:                                             ; preds = %IsAudioBufferPlayingInLockedState.exit.i
  store i8 0, ptr %i.t, align 4
  store i8 0, ptr %i.w, align 1
  store i32 0, ptr %i.ai, align 4
  store i32 0, ptr %i.ag, align 8
  store i8 1, ptr %i.aj, align 4
  store i8 1, ptr %i.ak, align 1
  br label %StopAudioBufferInLockedState.exit.thread

bb.v:                                             ; preds = %bb.t
  store i32 0, ptr %i.ai, align 4
  br label %StopAudioBufferInLockedState.exit

StopAudioBufferInLockedState.exit.thread:         ; preds = %bb.r, %IsAudioBufferPlayingInLockedState.exit.i, %bb.u
  %.3.ph = phi i32 [ %.252, %bb.u ], [ %.252, %IsAudioBufferPlayingInLockedState.exit.i ], [ %3, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #61
  %i.ij = icmp eq i32 %.1, 0
  br i1 %i.ij, label %.backedge, label %.loopexit71

.backedge:                                        ; preds = %StopAudioBufferInLockedState.exit, %.lr.ph152, %StopAudioBufferInLockedState.exit.thread
  %.050.be = phi i32 [ %.3.ph, %StopAudioBufferInLockedState.exit.thread ], [ %.050151, %.lr.ph152 ], [ %.252, %StopAudioBufferInLockedState.exit ] ; 2 uses
  %.not59 = icmp ult i32 %.050.be, %3
  br i1 %.not59, label %.lr.ph152, label %.loopexit71

StopAudioBufferInLockedState.exit:                ; preds = %bb.s, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #61
  %.not60 = icmp eq i32 %.1, 0
  br i1 %.not60, label %.backedge, label %.lr.ph96

.loopexit71:                                      ; preds = %StopAudioBufferInLockedState.exit.thread, %.backedge, %.preheader70, %bb.b, %bb.c
  %i.ik = getelementptr inbounds nuw i8, ptr %.05599, i64 392
  %.055 = load ptr, ptr %i.ik, align 8            ; 2 uses
  %.not = icmp eq ptr %.055, null
  br i1 %.not, label %.preheader, label %bb.b

.lr.ph106:                                        ; preds = %.preheader, %.lr.ph106
  %.0105 = phi ptr [ %.0, %.lr.ph106 ], [ %.0103, %.preheader ] ; 2 uses
  %i.il = load ptr, ptr %.0105, align 8
  call void %i.il(ptr noundef %1, i32 noundef %3) #61
  %i.im = getelementptr inbounds nuw i8, ptr %.0105, i64 8
  %.0 = load ptr, ptr %i.im, align 8              ; 2 uses
  %.not58 = icmp eq ptr %.0, null
  br i1 %.not58, label %._crit_edge107, label %.lr.ph106

._crit_edge107:                                   ; preds = %.lr.ph106, %.preheader
  %i.in = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @CloseAudioDevice() local_unnamed_addr #8 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4840), align 8, !range !66, !noundef !53
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  tail call void @ma_device_uninit(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1024))
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 8), align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 %i.d(ptr noundef nonnull @AUDIO) #61, !inline_history !34 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 320)) #61 ; 0 uses
  %i.g = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 360)) #61 ; 0 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 416), align 8 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %ma_free.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 312), align 8 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.j, null
  br i1 %.not9.i.i, label %ma_free.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 288), align 8
  tail call void %i.j(ptr noundef nonnull %i.h, ptr noundef %i.k) #61, !inline_history !35
  br label %ma_free.exit.i

ma_free.exit.i:                                   ; preds = %bb.f, %bb.e, %bb.d
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 112), align 8
  %i.m = icmp eq ptr %i.l, getelementptr inbounds nuw (i8, ptr @AUDIO, i64 120)
  br i1 %i.m, label %bb.g, label %ma_context_uninit.exit

bb.g:                                             ; preds = %ma_free.exit.i
  %i.n = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 224)) #61 ; 0 uses
  br label %ma_context_uninit.exit

ma_context_uninit.exit:                           ; preds = %ma_free.exit.i, %bb.g
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4840), align 8
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4856), align 8
  tail call void @free(ptr noundef %i.o) #61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4848), i8 0, i64 16, i1 false)
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.231) #61
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.232) #61
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %ma_context_uninit.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @IsAudioDeviceReady() local_unnamed_addr #55 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4840), align 8, !range !66, !noundef !53
  %i.b = trunc nuw i8 %i.a to i1
  ret i1 %i.b
}

; Function Attrs: norecurse nounwind uwtable
define void @SetMasterVolume(float noundef %0) local_unnamed_addr #15 {
bb.a:
  %i.a = fcmp olt float %0, 0.000000e+00
  br i1 %i.a, label %ma_device_set_master_volume.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = bitcast float %0 to i32
  store atomic volatile i32 %i.b, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1428) seq_cst, align 4
  br label %ma_device_set_master_volume.exit

ma_device_set_master_volume.exit:                 ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define float @GetMasterVolume() local_unnamed_addr #15 {
bb.a:
  %i.a = load atomic volatile i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1428) seq_cst, align 4
  %i.b = bitcast i32 %i.a to float
  ret float %i.b
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @LoadAudioBuffer(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #8 {
bb.a:
  %5 = alloca %struct.ma_data_converter_heap_layout, align 8 ; 5 uses
  %6 = alloca %struct.ma_data_converter_config, align 8 ; 14 uses
  %i.a = tail call noalias dereferenceable_or_null(408) ptr @calloc(i64 noundef 1, i64 noundef 408) #80 ; 22 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.233) #61
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = mul i32 %3, %1
  %i.d = zext i32 %0 to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4
  %i.g = mul i32 %i.c, %i.f
  %i.h = zext i32 %i.g to i64
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 1) #80
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #61
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1036), align 4
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.l, i8 0, i64 96, i1 false)
  store i32 1, ptr %i.n, align 8, !alias.scope !1142
  store i32 %0, ptr %6, align 8, !alias.scope !1143
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 5, ptr %i.o, align 4, !alias.scope !1143
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %1, ptr %i.p, align 8, !alias.scope !1143
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 2, ptr %i.q, align 4, !alias.scope !1143
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %2, ptr %i.r, align 8, !alias.scope !1143
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %i.k, ptr %i.s, align 4, !alias.scope !1143
  store i32 1, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #61
  %i.t = call fastcc i32 @ma_data_converter_get_heap_layout(ptr noundef nonnull readonly %6, ptr noundef %5)
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %bb.f, label %ma_data_converter_get_heap_size.exit.i

ma_data_converter_get_heap_size.exit.i:           ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #61
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %5, align 8                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #61
  %.not18.i = icmp eq i64 %i.u, 0
  br i1 %.not18.i, label %.thread.i, label %bb.g
end_hunk_0
begin_hunk_1_@UnloadAudioBuffer:bb.a
bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 400
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.k = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 299
  %i.m = load i8, ptr %i.l, align 1
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %ma_resampler_uninit.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %ma_resampler_uninit.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %ma_resampler_uninit.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load ptr, ptr %i.n, align 8
  tail call void %i.s(ptr noundef %i.v, ptr noundef %i.w, ptr noundef null) #61, !inline_history !37
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.y = load i32, ptr %i.x, align 8
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %ma_resampler_uninit.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %ma_resampler_uninit.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.aa) #61
  br label %ma_resampler_uninit.exit.i

ma_resampler_uninit.exit.i:                       ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = load i32, ptr %i.ac, align 8
  %.not.i10.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i10.i, label %ma_channel_converter_uninit.exit.i, label %bb.n

bb.n:                                             ; preds = %ma_resampler_uninit.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %ma_channel_converter_uninit.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %i.af) #61
  br label %ma_channel_converter_uninit.exit.i

ma_channel_converter_uninit.exit.i:               ; preds = %bb.o, %bb.n, %ma_resampler_uninit.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 301
  %i.ai = load i8, ptr %i.ah, align 1
  %.not9.i = icmp eq i8 %i.ai, 0
  br i1 %.not9.i, label %ma_data_converter_uninit.exit, label %bb.p

bb.p:                                             ; preds = %ma_channel_converter_uninit.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %ma_data_converter_uninit.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.ak) #61
  br label %ma_data_converter_uninit.exit

ma_data_converter_uninit.exit:                    ; preds = %ma_channel_converter_uninit.exit.i, %bb.p, %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.an = load ptr, ptr %i.am, align 8
  tail call void @free(ptr noundef %i.an) #61
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void @free(ptr noundef %i.ap) #61
  tail call void @free(ptr noundef nonnull %0) #61
  br label %bb.r

bb.r:                                             ; preds = %ma_data_converter_uninit.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @UntrackAudioBuffer(ptr nofree noundef captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.f, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4864), align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  store ptr %i.f, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = icmp eq ptr %i.f, null
  %i.i = load ptr, ptr %i.b, align 8              ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4872), align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 400
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @IsAudioBufferPlaying(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %IsAudioBufferPlayingInLockedState.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.c = load i8, ptr %i.b, align 4, !range !66, !noundef !53
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %IsAudioBufferPlayingInLockedState.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 357
  %i.f = load i8, ptr %i.e, align 1, !range !66, !noundef !53
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  br label %IsAudioBufferPlayingInLockedState.exit

IsAudioBufferPlayingInLockedState.exit:           ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.h, %bb.c ]
  %i.i = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden void @PlayAudioBuffer(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i8 1, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 357
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 372
  store i32 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 364
  store i8 1, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 365
  store i8 1, ptr %i.g, align 1
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @StopAudioBuffer(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %StopAudioBufferInLockedState.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !range !66, !noundef !53
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %IsAudioBufferPlayingInLockedState.exit.i, label %StopAudioBufferInLockedState.exit

IsAudioBufferPlayingInLockedState.exit.i:         ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 357 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !66, !noundef !53
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %StopAudioBufferInLockedState.exit, label %bb.c

bb.c:                                             ; preds = %IsAudioBufferPlayingInLockedState.exit.i
  store i8 0, ptr %i.b, align 4
  store i8 0, ptr %i.e, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 372
  store i32 0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 364
  store i8 1, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 365
  store i8 1, ptr %i.k, align 1
  br label %StopAudioBufferInLockedState.exit

StopAudioBufferInLockedState.exit:                ; preds = %bb.a, %bb.b, %IsAudioBufferPlayingInLockedState.exit.i, %bb.c
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @PauseAudioBuffer(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 357
  store i8 1, ptr %i.b, align 1
  %i.c = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @ResumeAudioBuffer(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 357
  store i8 0, ptr %i.b, align 1
  %i.c = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SetAudioBufferVolume(ptr nofree noundef writeonly captures(address_is_null) %0, float noundef %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344
  store float %1, ptr %i.b, align 8
  %i.c = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SetAudioBufferPitch(ptr nofree noundef captures(address_is_null) %0, float noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = fcmp ogt float %1, 0.000000e+00
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1036), align 4
  %i.e = uitofp i32 %i.d to float
  %i.f = fdiv float %i.e, %1
  %i.g = fptoui float %i.f to i32                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 299
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %ma_data_converter_set_rate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = icmp eq i32 %i.i, 0
  %i.o = icmp eq i32 %i.g, 0
  %or.cond.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i, label %ma_data_converter_set_rate.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %ma_data_converter_set_rate.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %ma_data_converter_set_rate.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.m, align 8
  %i.y = tail call i32 %i.t(ptr noundef %i.w, ptr noundef %i.x, i32 noundef %i.i, i32 noundef %i.g) #61, !inline_history !1144
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %bb.g, label %ma_data_converter_set_rate.exit

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.i, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.g, ptr %i.aa, align 4
  br label %ma_data_converter_set_rate.exit

ma_data_converter_set_rate.exit:                  ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 348
  store float %1, ptr %i.ab, align 4
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %ma_data_converter_set_rate.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SetAudioBufferPan(ptr nofree noundef writeonly captures(address_is_null) %0, float noundef %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = fcmp olt float %1, -1.000000e+00
  %i.b = fcmp ogt float %1, 1.000000e+00
  %spec.store.select = select i1 %i.b, float 1.000000e+00, float %1
  %.0 = select i1 %i.a, float -1.000000e+00, float %spec.store.select
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  store float %.0, ptr %i.d, align 8
  %i.e = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @LoadWave(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Wave) align 8 captures(none) initializes((0, 24)) %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  store i32 0, ptr %i.a, align 4
  %i.b = call ptr @LoadFileData(ptr noundef %1, ptr noundef nonnull %i.a) #61 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call ptr @GetFileExtension(ptr noundef %1) #61
  %i.d = load i32, ptr %i.a, align 4
  call void @LoadWaveFromMemory(ptr dead_on_unwind nonnull writable sret(%struct.Wave) align 8 %0, ptr noundef %i.c, ptr noundef nonnull %i.b, i32 noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @UnloadFileData(ptr noundef %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret void
}

declare ptr @LoadFileData(ptr noundef, ptr noundef) local_unnamed_addr #54

; Function Attrs: nounwind uwtable
define void @LoadWaveFromMemory(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Wave) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.drmp3, align 8              ; 10 uses
  %5 = alloca %struct.drwav, align 8              ; 20 uses
  %6 = alloca %struct.drmp3_config, align 8       ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %7 = alloca %struct.qoa_desc, align 4           ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.235) #73
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.236) #73
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %5, i8 0, i64 408, i1 false)
  %i.f = icmp eq ptr %2, null
  %i.g = icmp eq i32 %3, 0
end_hunk_1
begin_hunk_2_@LoadSoundAlias:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1036), align 4
  %i.e = tail call ptr @LoadAudioBuffer(i32 noundef 5, i32 noundef 2, i32 noundef %i.d, i32 noundef 0, i32 noundef 0) ; 6 uses
  %.not7 = icmp eq ptr %i.e, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  store i32 %i.g, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 384
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  store <2 x float> splat (float 1.000000e+00), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  store float 0.000000e+00, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i32, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.n, ptr %i.o, align 8
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1036), align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 32, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.s, align 8
  store ptr %i.e, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.251) #61
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @IsSoundValid(ptr nofree noundef readonly byval(%struct.Sound) align 8 captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load <5 x i32>, ptr %i.c, align 8
  %i.e = shufflevector <5 x i32> %i.d, <5 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.fr = freeze <4 x i32> %i.e
  %i.f = icmp eq <4 x i32> %.fr, zeroinitializer
  %i.g = bitcast <4 x i1> %i.f to i4
  %i.h = icmp eq i4 %i.g, 0
  %op.rdx = select i1 %i.h, i1 %i.b, i1 false
  ret i1 %op.rdx
}

; Function Attrs: nounwind uwtable
define void @UnloadSound(ptr nofree noundef readonly byval(%struct.Sound) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @UnloadAudioBuffer(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind uwtable
define void @UnloadSoundAlias(ptr nofree noundef readonly byval(%struct.Sound) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 14 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 392 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4864), align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 392
  store ptr %i.g, ptr %i.h, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = icmp eq ptr %i.g, null
  %i.j = load ptr, ptr %i.c, align 8              ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.j, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4872), align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 299
  %i.n = load i8, ptr %i.m, align 1
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %ma_resampler_uninit.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %ma_resampler_uninit.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %ma_resampler_uninit.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.o, align 8
  tail call void %i.t(ptr noundef %i.w, ptr noundef %i.x, ptr noundef null) #61, !inline_history !37
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.z = load i32, ptr %i.y, align 8
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %ma_resampler_uninit.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %ma_resampler_uninit.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.ab) #61
  br label %ma_resampler_uninit.exit.i

ma_resampler_uninit.exit.i:                       ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ae = load i32, ptr %i.ad, align 8
  %.not.i10.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i10.i, label %ma_channel_converter_uninit.exit.i, label %bb.n

bb.n:                                             ; preds = %ma_resampler_uninit.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %ma_channel_converter_uninit.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %i.ag) #61
  br label %ma_channel_converter_uninit.exit.i

ma_channel_converter_uninit.exit.i:               ; preds = %bb.o, %bb.n, %ma_resampler_uninit.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 301
  %i.aj = load i8, ptr %i.ai, align 1
  %.not9.i = icmp eq i8 %i.aj, 0
  br i1 %.not9.i, label %ma_data_converter_uninit.exit, label %bb.p

bb.p:                                             ; preds = %ma_channel_converter_uninit.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %ma_data_converter_uninit.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.al) #61
  br label %ma_data_converter_uninit.exit

ma_data_converter_uninit.exit:                    ; preds = %ma_channel_converter_uninit.exit.i, %bb.p, %bb.q
  tail call void @free(ptr noundef nonnull %i.a) #61
  br label %bb.r

bb.r:                                             ; preds = %ma_data_converter_uninit.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @UpdateSound(ptr nofree noundef readonly byval(%struct.Sound) align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 10 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 356 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !range !66, !noundef !53
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %IsAudioBufferPlayingInLockedState.exit.i.i, label %StopAudioBuffer.exit

IsAudioBufferPlayingInLockedState.exit.i.i:       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 357 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !66, !noundef !53
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %StopAudioBuffer.exit, label %bb.c

bb.c:                                             ; preds = %IsAudioBufferPlayingInLockedState.exit.i.i
  store i8 0, ptr %i.c, align 4
  store i8 0, ptr %i.f, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 372
  store i32 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 364
  store i8 1, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 365
  store i8 1, ptr %i.l, align 1
  br label %StopAudioBuffer.exit

StopAudioBuffer.exit:                             ; preds = %bb.b, %IsAudioBufferPlayingInLockedState.exit.i.i, %bb.c
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i32, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i32, ptr %i.q, align 8
  %i.s = zext i32 %i.p to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4
  %i.v = mul i32 %i.r, %2
  %i.w = mul i32 %i.v, %i.u
  %i.x = zext i32 %i.w to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %1, i64 %i.x, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %StopAudioBuffer.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @ExportWave(ptr nofree noundef readonly byval(%struct.Wave) align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %struct.drwav, align 8              ; 25 uses
  %3 = alloca %struct.drwav_data_format, align 4  ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %4 = alloca %struct.qoa_desc, align 4           ; 7 uses
  %i.d = tail call zeroext i1 @IsFileExtension(ptr noundef %1, ptr noundef nonnull @.str.235) #61
  br i1 %i.d, label %drwav_init_memory_write__internal.exit, label %bb.f

drwav_init_memory_write__internal.exit:           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #61
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %3, align 4
  %i.f = load i32, ptr %i.e, align 8              ; 4 uses
  %i.g = icmp eq i32 %i.f, 32
  %spec.select = select i1 %i.g, i32 3, i32 1     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %spec.select, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.j, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.f, ptr %i.o, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  store ptr null, ptr %i.b, align 8
  store i64 0, ptr %i.c, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %2, i8 0, i64 408, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr @drwav__on_write_memory, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @drwav__on_seek_memory_write, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %2, ptr %i.r, align 8
  %.sroa.5.0..sroa_idx55.i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr @drwav__malloc_default, ptr %.sroa.5.0..sroa_idx55.i.i, align 8
  %.sroa.6.0..sroa_idx56.i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @drwav__realloc_default, ptr %.sroa.6.0..sroa_idx56.i.i, align 8
  %.sroa.7.0..sroa_idx57.i.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr @drwav__free_default, ptr %.sroa.7.0..sroa_idx57.i.i, align 8
  %i.s = trunc nuw nsw i32 %spec.select to i16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 76
  store i16 %i.s, ptr %i.t, align 4
  %i.u = trunc i32 %i.j to i16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 78
  store i16 %i.u, ptr %i.v, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i32 %i.m, ptr %i.w, align 8
  %i.x = mul i32 %i.j, %i.f                       ; 2 uses
  %i.y = mul i32 %i.x, %i.m
  %i.z = lshr i32 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 84
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = lshr i32 %i.x, 3
  %i.ac = trunc i32 %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i16 %i.ac, ptr %i.ad, align 8
  %i.ae = trunc i32 %i.f to i16
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 90
  store i16 %i.ae, ptr %i.af, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 176
  store i32 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 224
  store ptr %i.b, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 232
  store ptr %i.c, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %i.ak = call fastcc i32 @drwav_init_write__internal(ptr noundef nonnull %2, ptr noundef nonnull readonly %3, i64 noundef 0)
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %drwav_init_memory_write__internal.exit.thread, label %bb.b

bb.b:                                             ; preds = %drwav_init_memory_write__internal.exit
  %i.al = load i32, ptr %0, align 8               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = icmp eq i32 %i.al, 0
  %i.ap = icmp eq ptr %i.an, null
  %or.cond3.i.i = or i1 %i.ao, %i.ap
  br i1 %or.cond3.i.i, label %drwav_init_memory_write__internal.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = zext i32 %i.al to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 122 ; 2 uses
  %i.at = load i16, ptr %i.ar, align 8
  %i.au = zext i16 %i.at to i64                   ; 2 uses
  %i.av = mul nuw nsw i64 %i.au, %i.aq
  %i.aw = load i16, ptr %i.as, align 2
  %i.ax = zext i16 %i.aw to i64                   ; 2 uses
  %i.ay = mul nuw i64 %i.av, %i.ax
  %i.az = lshr i64 %i.ay, 3                       ; 2 uses
  %.not43.i.i = icmp eq i64 %i.az, 0
  br i1 %.not43.i.i, label %.thread.i.i, label %drwav_write_raw.exit.lr.ph.i.i

drwav_write_raw.exit.lr.ph.i.i:                   ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  br label %drwav_write_raw.exit.i.i

drwav_write_raw.exit.i.i:                         ; preds = %bb.d, %drwav_write_raw.exit.lr.ph.i.i
  %.02746.i.i = phi ptr [ %i.an, %drwav_write_raw.exit.lr.ph.i.i ], [ %i.bj, %bb.d ] ; 2 uses
  %.02845.i.i = phi i64 [ 0, %drwav_write_raw.exit.lr.ph.i.i ], [ %i.bi, %bb.d ] ; 2 uses
  %.03044.i.i = phi i64 [ %i.az, %drwav_write_raw.exit.lr.ph.i.i ], [ %i.bh, %bb.d ] ; 2 uses
  %i.bb = load ptr, ptr %i.p, align 8
  %i.bc = load ptr, ptr %i.r, align 8
  %i.bd = call i64 %i.bb(ptr noundef %i.bc, ptr noundef nonnull %.02746.i.i, i64 noundef %.03044.i.i) #61, !inline_history !1151 ; 5 uses
  %i.be = load i64, ptr %i.ba, align 8
  %i.bf = add i64 %i.be, %i.bd
  store i64 %i.bf, ptr %i.ba, align 8
  %i.bg = icmp eq i64 %i.bd, 0
  br i1 %i.bg, label %.thread.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %drwav_write_raw.exit.i.i
  %i.bh = sub i64 %.03044.i.i, %i.bd              ; 2 uses
  %i.bi = add i64 %i.bd, %.02845.i.i              ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02746.i.i, i64 %i.bd
  %.not.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i, label %.thread.loopexit.i.i, label %drwav_write_raw.exit.i.i

.thread.loopexit.i.i:                             ; preds = %bb.d, %drwav_write_raw.exit.i.i
  %.028.lcssa.ph.i.i = phi i64 [ %i.bi, %bb.d ], [ %.02845.i.i, %drwav_write_raw.exit.i.i ]
  %.pre.i.i = load i16, ptr %i.as, align 2
  %.pre48.i.i = load i16, ptr %i.ar, align 8
  %.pre49.i.i = zext i16 %.pre.i.i to i64
  %.pre50.i.i = zext i16 %.pre48.i.i to i64
  %i.bk = shl i64 %.028.lcssa.ph.i.i, 3
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.loopexit.i.i, %bb.c
  %.pre-phi51.i.i = phi i64 [ %.pre50.i.i, %.thread.loopexit.i.i ], [ %i.au, %bb.c ]
  %.pre-phi.i.i = phi i64 [ %.pre49.i.i, %.thread.loopexit.i.i ], [ %i.ax, %bb.c ]
  %.028.lcssa.i.i = phi i64 [ %i.bk, %.thread.loopexit.i.i ], [ 0, %bb.c ]
  %i.bl = mul nuw nsw i64 %.pre-phi.i.i, %.pre-phi51.i.i
  %i.bm = udiv i64 %.028.lcssa.i.i, %i.bl
  %i.bn = and i64 %i.bm, 4294967295
  %i.bo = icmp ne i64 %i.bn, 0
  br label %drwav_init_memory_write__internal.exit.thread

drwav_init_memory_write__internal.exit.thread:    ; preds = %.thread.i.i, %bb.b, %drwav_init_memory_write__internal.exit
  %.0 = phi i1 [ false, %bb.b ], [ false, %drwav_init_memory_write__internal.exit ], [ %i.bo, %.thread.i.i ]
  %i.bp = call i32 @drwav_uninit(ptr noundef nonnull %2)
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.e, label %.split

bb.e:                                             ; preds = %drwav_init_memory_write__internal.exit.thread
  %i.br = load ptr, ptr %i.b, align 8
  %i.bs = load i64, ptr %i.c, align 8
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = call zeroext i1 @SaveFileData(ptr noundef %1, ptr noundef %i.br, i32 noundef %i.bt) #61 ; 0 uses
  br label %.split

.split:                                           ; preds = %bb.e, %drwav_init_memory_write__internal.exit.thread
  %i.bv = load ptr, ptr %i.b, align 8
  call void @free(ptr noundef %i.bv) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #61
  br i1 %.0, label %bb.n, label %.thread

bb.f:                                             ; preds = %bb.a
end_hunk_2
begin_hunk_3_@ExportWaveAsCode:bb.a
  %i.az = load i8, ptr %i.ay, align 1             ; 2 uses
  %.not = icmp eq i8 %i.az, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge
  %i.ba = lshr exact i32 %i.h, 5                  ; 3 uses
  %i.bb = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.au, ptr noundef nonnull dereferenceable(1) @.str.268, ptr noundef nonnull %i.a, i32 noundef %i.ba) #61
  %i.bc = add nsw i32 %i.bb, %i.ar                ; 2 uses
  %i.bd = icmp ugt i32 %i.h, 32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  br i1 %i.bd, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %bb.d
  %umax117 = call i32 @llvm.umax.i32(i32 %i.ba, i32 2)
  %wide.trip.count118 = zext nneg i32 %umax117 to i64
  br label %bb.e

._crit_edge108:                                   ; preds = %bb.e, %bb.d
  %.093.lcssa = phi i32 [ %i.bc, %bb.d ], [ %i.bz, %bb.e ]
  %i.bg = sext i32 %.093.lcssa to i64
  %i.bh = getelementptr inbounds i8, ptr %i.m, i64 %i.bg
  %i.bi = zext nneg i32 %i.ba to i64
  %i.bj = getelementptr [4 x i8], ptr %i.bf, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -4
  %i.bl = load float, ptr %i.bk, align 4
  %i.bm = fpext float %i.bl to double
  %i.bn = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bh, ptr noundef nonnull dereferenceable(1) @.str.271, double noundef %i.bm) #61 ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph107, %bb.e
  %indvars.iv114 = phi i64 [ 1, %.lr.ph107 ], [ %indvars.iv.next115, %bb.e ] ; 3 uses
  %.093104 = phi i32 [ %i.bc, %.lr.ph107 ], [ %i.bz, %bb.e ] ; 2 uses
  %i.bo = sext i32 %.093104 to i64
  %i.bp = getelementptr inbounds i8, ptr %i.m, i64 %i.bo
  %i.bq = trunc nuw nsw i64 %indvars.iv114 to i32
  %i.br = urem i32 %i.bq, 20
  %i.bs = icmp eq i32 %i.br, 0
  %i.bt = select i1 %i.bs, ptr @.str.269, ptr @.str.270
  %i.bu = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv114
  %i.bv = getelementptr i8, ptr %i.bu, i64 -4
  %i.bw = load float, ptr %i.bv, align 4
  %i.bx = fpext float %i.bw to double
  %i.by = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bp, ptr noundef nonnull dereferenceable(1) %i.bt, double noundef %i.bx) #61
  %i.bz = add nsw i32 %i.by, %.093104             ; 2 uses
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count118
  br i1 %exitcond119.not, label %._crit_edge108, label %bb.e

bb.f:                                             ; preds = %._crit_edge
  %i.ca = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.au, ptr noundef nonnull dereferenceable(1) @.str.272, ptr noundef nonnull %i.a, i32 noundef %i.i) #61
  %i.cb = add nsw i32 %i.ca, %i.ar                ; 2 uses
  %i.cc = icmp ugt i32 %i.h, 15
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  br i1 %i.cc, label %.lr.ph102, label %._crit_edge103

.lr.ph102:                                        ; preds = %bb.f
  %umax = call i32 @llvm.umax.i32(i32 %i.i, i32 2)
  %wide.trip.count = zext nneg i32 %umax to i64
  br label %bb.g

._crit_edge103:                                   ; preds = %bb.g, %bb.f
  %.1.lcssa = phi i32 [ %i.cb, %bb.f ], [ %i.cy, %bb.g ]
  %i.cf = sext i32 %.1.lcssa to i64
  %i.cg = getelementptr inbounds i8, ptr %i.m, i64 %i.cf
  %i.ch = zext nneg i32 %i.i to i64
  %i.ci = getelementptr i8, ptr %i.ce, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 -1
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = zext i8 %i.ck to i32
  %i.cm = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.cg, ptr noundef nonnull dereferenceable(1) @.str.275, i32 noundef %i.cl) #61 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph102, %bb.g
  %indvars.iv111 = phi i64 [ 1, %.lr.ph102 ], [ %indvars.iv.next112, %bb.g ] ; 3 uses
  %.199 = phi i32 [ %i.cb, %.lr.ph102 ], [ %i.cy, %bb.g ] ; 2 uses
  %i.cn = sext i32 %.199 to i64
  %i.co = getelementptr inbounds i8, ptr %i.m, i64 %i.cn
  %i.cp = trunc nuw nsw i64 %indvars.iv111 to i32
  %i.cq = urem i32 %i.cp, 20
  %i.cr = icmp eq i32 %i.cq, 0
  %i.cs = select i1 %i.cr, ptr @.str.273, ptr @.str.274
  %i.ct = getelementptr i8, ptr %i.ce, i64 %indvars.iv111
  %i.cu = getelementptr i8, ptr %i.ct, i64 -1
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = zext i8 %i.cv to i32
  %i.cx = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.cs, i32 noundef %i.cw) #61
  %i.cy = add nsw i32 %i.cx, %.199                ; 2 uses
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge103, label %bb.g

bb.h:                                             ; preds = %._crit_edge103, %._crit_edge108
  %i.cz = call zeroext i1 @SaveFileText(ptr noundef %1, ptr noundef nonnull %i.m) #61 ; 2 uses
  call void @free(ptr noundef nonnull %i.m) #61
  br i1 %i.cz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.276, ptr noundef %1) #61
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.277, ptr noundef %1) #61
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i1 %i.cz
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #57

declare ptr @GetFileNameWithoutExt(ptr noundef) local_unnamed_addr #54

declare zeroext i1 @SaveFileText(ptr noundef, ptr noundef) local_unnamed_addr #54

; Function Attrs: nounwind uwtable
define void @PlaySound(ptr nofree noundef readonly byval(%struct.Sound) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %PlayAudioBuffer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 356
  store i8 1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 357
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 372
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 364
  store i8 1, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 365
  store i8 1, ptr %i.h, align 1
  %i.i = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %PlayAudioBuffer.exit

PlayAudioBuffer.exit:                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @PauseSound(ptr nofree noundef readonly byval(%struct.Sound) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %PauseAudioBuffer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 357
  store i8 1, ptr %i.c, align 1
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %PauseAudioBuffer.exit

PauseAudioBuffer.exit:                            ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @ResumeSound(ptr nofree noundef readonly byval(%struct.Sound) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %ResumeAudioBuffer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 357
  store i8 0, ptr %i.c, align 1
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %ResumeAudioBuffer.exit

ResumeAudioBuffer.exit:                           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @StopSound(ptr nofree noundef readonly byval(%struct.Sound) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %StopAudioBuffer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 356 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !range !66, !noundef !53
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %IsAudioBufferPlayingInLockedState.exit.i.i, label %StopAudioBuffer.exit

IsAudioBufferPlayingInLockedState.exit.i.i:       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 357 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !66, !noundef !53
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %StopAudioBuffer.exit, label %bb.c

bb.c:                                             ; preds = %IsAudioBufferPlayingInLockedState.exit.i.i
  store i8 0, ptr %i.c, align 4
  store i8 0, ptr %i.f, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 372
  store i32 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 364
  store i8 1, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 365
  store i8 1, ptr %i.l, align 1
  br label %StopAudioBuffer.exit

StopAudioBuffer.exit:                             ; preds = %bb.a, %bb.b, %IsAudioBufferPlayingInLockedState.exit.i.i, %bb.c
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @IsSoundPlaying(ptr nofree noundef readonly byval(%struct.Sound) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %IsAudioBufferPlaying.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 356
  %i.d = load i8, ptr %i.c, align 4, !range !66, !noundef !53
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %IsAudioBufferPlaying.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 357
  %i.g = load i8, ptr %i.f, align 1, !range !66, !noundef !53
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = xor i1 %i.h, true
  br label %IsAudioBufferPlaying.exit

IsAudioBufferPlaying.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.i, %bb.c ]
  %i.j = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  ret i1 %.0.i.i
}

; Function Attrs: nounwind uwtable
define void @SetSoundVolume(ptr nofree noundef readonly byval(%struct.Sound) align 8 captures(none) %0, float noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %SetAudioBufferVolume.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store float %1, ptr %i.c, align 8
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %SetAudioBufferVolume.exit

SetAudioBufferVolume.exit:                        ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @SetSoundPitch(ptr nofree noundef readonly byval(%struct.Sound) align 8 captures(none) %0, float noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 9 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = fcmp ogt float %1, 0.000000e+00
  %or.cond.i = and i1 %i.c, %i.b
  br i1 %or.cond.i, label %bb.b, label %SetAudioBufferPitch.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1036), align 4
  %i.f = uitofp i32 %i.e to float
  %i.g = fdiv float %i.f, %1
  %i.h = fptoui float %i.g to i32                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i32, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 299
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %ma_data_converter_set_rate.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.o = icmp eq i32 %i.j, 0
  %i.p = icmp eq i32 %i.h, 0
  %or.cond.i.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %ma_data_converter_set_rate.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %ma_data_converter_set_rate.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %ma_data_converter_set_rate.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.n, align 8
  %i.z = tail call i32 %i.u(ptr noundef %i.x, ptr noundef %i.y, i32 noundef %i.j, i32 noundef %i.h) #61, !inline_history !67
  %.not.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i, label %bb.g, label %ma_data_converter_set_rate.exit.i

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i32 %i.j, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  store i32 %i.h, ptr %i.ab, align 4
  br label %ma_data_converter_set_rate.exit.i

ma_data_converter_set_rate.exit.i:                ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 348
  store float %1, ptr %i.ac, align 4
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %SetAudioBufferPitch.exit

SetAudioBufferPitch.exit:                         ; preds = %bb.a, %ma_data_converter_set_rate.exit.i
  ret void
}

; Function Attrs: nounwind uwtable
define void @SetSoundPan(ptr nofree noundef readonly byval(%struct.Sound) align 8 captures(none) %0, float noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %SetAudioBufferPan.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt float %1, -1.000000e+00
  %i.c = fcmp ogt float %1, 1.000000e+00
  %spec.store.select.i = select i1 %i.c, float 1.000000e+00, float %1
  %.0.i = select i1 %i.b, float -1.000000e+00, float %spec.store.select.i
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store float %.0.i, ptr %i.e, align 8
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %SetAudioBufferPan.exit

SetAudioBufferPan.exit:                           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @WaveFormat(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.ma_data_converter_config, align 8 ; 18 uses
  %5 = alloca %struct.ma_data_converter_config, align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i32 %i.b, 8
  %i.d = icmp eq i32 %i.b, 16
  %i.e = select i1 %i.d, i32 2, i32 5
  %i.f = select i1 %i.c, i32 1, i32 %i.e          ; 2 uses
  %i.g = icmp eq i32 %2, 8
  %i.h = icmp eq i32 %2, 16
  %i.i = select i1 %i.h, i32 2, i32 5
  %i.j = select i1 %i.g, i32 1, i32 %i.i          ; 2 uses
  %i.k = load i32, ptr %0, align 8
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #61
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.11.0..sroa_idx.i, i8 0, i64 20, i1 false)
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.12.0..sroa_idx.i, i8 0, i64 20, i1 false)
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.13.0..sroa_idx.i, i8 0, i64 20, i1 false)
  store i32 %i.f, ptr %5, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.j, ptr %.sroa.4.0..sroa_idx.i, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.n, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %3, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.p, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %1, ptr %.sroa.8.0..sroa_idx.i, align 4
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 0, ptr %.sroa.10.0..sroa_idx.i, align 8
  %.sroa.119.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 0, ptr %.sroa.119.0..sroa_idx.i, align 8
  %.sroa.1210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i32 0, ptr %.sroa.1210.0..sroa_idx.i, align 8
  %.sroa.1311.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 112
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 116
  store i32 0, ptr %.sroa.14.0..sroa_idx.i, align 4
  store i32 4, ptr %.sroa.1311.0..sroa_idx.i, align 8
  %i.q = call i64 @ma_convert_frames_ex(ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef %i.l, ptr noundef nonnull %5) ; 2 uses
end_hunk_3
begin_hunk_4_@UnloadMusicStream:bb.a
bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8
  switch i32 %i.m, label %stb_vorbis_close.exit [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 4, label %bb.i
    i32 5, label %bb.o
    i32 6, label %jar_xm_free_context.exit
    i32 7, label %bb.q
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 @drwav_uninit(ptr noundef nonnull %i.k) ; 0 uses
  br label %stb_vorbis_close.exit

bb.g:                                             ; preds = %bb.e
  tail call fastcc void @vorbis_deinit(ptr noundef nonnull %i.k)
  %i.o = getelementptr i8, ptr %i.k, i64 128
  %.val.i = load ptr, ptr %i.o, align 8
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %bb.h, label %stb_vorbis_close.exit

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.k) #61
  br label %stb_vorbis_close.exit

bb.i:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 22936
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.q, @drmp3__on_read_stdio
  br i1 %i.r, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 22960 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call i32 @fclose(ptr noundef nonnull %i.t) ; 0 uses
  store ptr null, ptr %i.s, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 32336
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 22976
  %i.y = icmp eq ptr %i.w, null
  br i1 %i.y, label %drmp3_uninit.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 23000
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i2, label %drmp3_uninit.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = load ptr, ptr %i.x, align 8
  tail call void %i.aa(ptr noundef nonnull %i.w, ptr noundef %i.ab) #61, !inline_history !16
  br label %drmp3_uninit.exit

drmp3_uninit.exit:                                ; preds = %bb.l, %bb.m, %bb.n
  tail call void @free(ptr noundef nonnull %i.k) #61
  br label %stb_vorbis_close.exit

bb.o:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i3 = icmp eq ptr %i.ad, null
  br i1 %.not.i3, label %qoaplay_close.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = tail call i32 @fclose(ptr noundef nonnull %i.ad) ; 0 uses
  br label %qoaplay_close.exit

qoaplay_close.exit:                               ; preds = %bb.o, %bb.p
  tail call void @free(ptr noundef nonnull %i.k) #61
  br label %stb_vorbis_close.exit

jar_xm_free_context.exit:                         ; preds = %bb.e
  %i.af = load ptr, ptr %i.k, align 8
  tail call void @free(ptr noundef %i.af) #61
  br label %stb_vorbis_close.exit

bb.q:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 7048
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not8.i = icmp eq ptr %i.ah, null
  br i1 %.not8.i, label %vector.ph, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.ah) #61
  br label %vector.ph

vector.ph:                                        ; preds = %bb.r, %bb.q
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 4730
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr @periodtable, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.aj, align 16 ; 6 uses
  %i.ak = sext <8 x i16> %wide.load to <8 x i32>
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %wide.load14 = load <8 x i16>, ptr %i.al, align 2
  %i.am = sext <8 x i16> %wide.load14 to <8 x i32>
  %i.an = sub nsw <8 x i32> %i.ak, %i.am
  %i.ao = sdiv <8 x i32> %i.an, splat (i32 -8)
  %i.ap = trunc nsw <8 x i32> %i.ao to <8 x i16>  ; 6 uses
  %i.aq = shl nuw nsw i64 %index, 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aq
  %i.as = add <8 x i16> %wide.load, %i.ap
  %i.at = shl nsw <8 x i16> %i.ap, splat (i16 1)
  %i.au = mul nsw <8 x i16> %i.ap, splat (i16 3)
  %i.av = shl nsw <8 x i16> %i.ap, splat (i16 2)
  %i.aw = mul <8 x i16> %i.ap, splat (i16 5)
  %i.ax = shufflevector <8 x i16> %wide.load, <8 x i16> %i.as, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ay = shufflevector <8 x i16> %i.at, <8 x i16> %i.au, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.az = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ba = add <16 x i16> %i.ay, %i.az
  %i.bb = shufflevector <8 x i16> %i.av, <8 x i16> %i.aw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bc = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bd = add <16 x i16> %i.bb, %i.bc
  %i.be = shufflevector <8 x i16> %i.ap, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bf = mul <16 x i16> %i.be, <i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7>
  %i.bg = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bh = add <16 x i16> %i.bf, %i.bg
  %i.bi = shufflevector <16 x i16> %i.ax, <16 x i16> %i.ba, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bj = shufflevector <16 x i16> %i.bd, <16 x i16> %i.bh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x i16> %i.bi, <32 x i16> %i.bj, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec, ptr %i.ar, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, 136
  br i1 %i.bk, label %.preheader.i.i.i, label %vector.body, !llvm.loop !1186

.preheader.i.i.i:                                 ; preds = %vector.body
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 6906
  store <8 x i16> splat (i16 11), ptr %i.bl, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 6922
  store <8 x i16> splat (i16 10), ptr %i.bm, align 2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 6938
  store <8 x i16> splat (i16 9), ptr %i.bn, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 6954
  store <8 x i16> splat (i16 9), ptr %i.bo, align 2
  %i.bp = getelementptr inbounds nuw i8, ptr %i.k, i64 6970
  store <8 x i16> splat (i16 8), ptr %i.bp, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 6986
  store <8 x i16> splat (i16 8), ptr %i.bq, align 2
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 7002
  store <8 x i16> splat (i16 7), ptr %i.br, align 2
  tail call void @free(ptr noundef nonnull %i.k) #61
  br label %stb_vorbis_close.exit

stb_vorbis_close.exit:                            ; preds = %bb.h, %bb.g, %bb.e, %bb.f, %drmp3_uninit.exit, %jar_xm_free_context.exit, %.preheader.i.i.i, %qoaplay_close.exit, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @IsMusicStreamPlaying(ptr nofree noundef readonly byval(%struct.Music) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i.i.i, label %IsAudioStreamPlaying.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 356
  %i.c = load i8, ptr %i.b, align 4, !range !66, !noundef !53
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %IsAudioStreamPlaying.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 357
  %i.f = load i8, ptr %i.e, align 1, !range !66, !noundef !53
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  br label %IsAudioStreamPlaying.exit

IsAudioStreamPlaying.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.h, %bb.c ]
  %i.i = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  ret i1 %.0.i.i.i
}

; Function Attrs: nounwind uwtable
define void @StopMusicStream(ptr nofree noundef readonly byval(%struct.Music) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i.i.i, label %StopAudioStream.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 356 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !range !66, !noundef !53
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %IsAudioBufferPlayingInLockedState.exit.i.i.i, label %StopAudioStream.exit

IsAudioBufferPlayingInLockedState.exit.i.i.i:     ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 357 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !66, !noundef !53
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %StopAudioStream.exit, label %bb.c

bb.c:                                             ; preds = %IsAudioBufferPlayingInLockedState.exit.i.i.i
  store i8 0, ptr %i.b, align 4
  store i8 0, ptr %i.e, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 372
  store i32 0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 376
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 364
  store i8 1, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 365
  store i8 1, ptr %i.k, align 1
  br label %StopAudioStream.exit

StopAudioStream.exit:                             ; preds = %bb.a, %bb.b, %IsAudioBufferPlayingInLockedState.exit.i.i.i, %bb.c
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i32, ptr %i.m, align 8
  switch i32 %i.n, label %drwav_seek_to_first_pcm_frame.exit [
    i32 1, label %bb.d
    i32 2, label %bb.j
    i32 4, label %bb.k
    i32 5, label %bb.p
    i32 6, label %bb.s
    i32 7, label %bb.u
  ]

bb.d:                                             ; preds = %StopAudioStream.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8              ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.e, label %drwav_seek_to_first_pcm_frame.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.x = load i64, ptr %i.w, align 8
  %i.y = trunc i64 %i.x to i32
  %i.z = tail call i32 %i.t(ptr noundef %i.v, i32 noundef %i.y, i32 noundef 0) #61, !inline_history !63
  %.not13.i = icmp eq i32 %i.z, 0
  br i1 %.not13.i, label %drwav_seek_to_first_pcm_frame.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 124
  %i.ab = load i16, ptr %i.aa, align 4
  switch i16 %i.ab, label %bb.i [
    i16 2, label %bb.g
    i16 17, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.ac, i8 0, i64 52, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 316
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.ad, i8 0, i64 88, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  store i64 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  store i64 %i.ag, ptr %i.ah, align 8
  br label %drwav_seek_to_first_pcm_frame.exit

bb.j:                                             ; preds = %StopAudioStream.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call i32 @stb_vorbis_seek_start(ptr noundef %i.aj) ; 0 uses
  br label %drwav_seek_to_first_pcm_frame.exit

bb.k:                                             ; preds = %StopAudioStream.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load ptr, ptr %i.al, align 8            ; 13 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32264
  %i.ao = load i64, ptr %i.an, align 8            ; 4 uses
  %i.ap = icmp ult i64 %i.ao, 2147483648
  br i1 %i.ap, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.aq = trunc nuw nsw i64 %i.ao to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 22944
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 22960
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call i32 %i.as(ptr noundef %i.au, i32 noundef range(i32 0, -2147483648) %i.aq, i32 noundef 0) #61, !inline_history !14
  %.not.i.i.i2 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i2, label %drwav_seek_to_first_pcm_frame.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 32248
  store i64 %i.ao, ptr %i.aw, align 8
  br label %drmp3__on_seek_64.exit.i

bb.n:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 22944 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 22960 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call i32 %i.ay(ptr noundef %i.ba, i32 noundef 2147483647, i32 noundef 0) #61, !inline_history !14
  %.not.i18.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i18.i.i, label %drwav_seek_to_first_pcm_frame.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 32248 ; 5 uses
  store i64 2147483647, ptr %i.bc, align 8
  %i.bd = add i64 %i.ao, -2147483647              ; 3 uses
  %i.be = icmp ult i64 %i.bd, 2147483648
  br i1 %i.be, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.o, %.lr.ph.i.i
  %.lcssa.i = phi i64 [ %i.bd, %.lr.ph.i.i ], [ %i.br, %bb.o ] ; 2 uses
  %i.bf = trunc nuw nsw i64 %.lcssa.i to i32
  %i.bg = load ptr, ptr %i.ax, align 8
  %i.bh = load ptr, ptr %i.az, align 8
  %i.bi = tail call i32 %i.bg(ptr noundef %i.bh, i32 noundef range(i32 0, -2147483648) %i.bf, i32 noundef 1) #61, !inline_history !14
  %.not.i21.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i21.i.i, label %drwav_seek_to_first_pcm_frame.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %._crit_edge.i
  %i.bj = load i64, ptr %i.bc, align 8
  %i.bk = add i64 %i.bj, %.lcssa.i
  store i64 %i.bk, ptr %i.bc, align 8
  br label %drmp3__on_seek_64.exit.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.o
  %i.bl = phi i64 [ %i.br, %bb.o ], [ %i.bd, %.lr.ph.i.i ]
  %i.bm = load ptr, ptr %i.ax, align 8
  %i.bn = load ptr, ptr %i.az, align 8
  %i.bo = tail call i32 %i.bm(ptr noundef %i.bn, i32 noundef 2147483647, i32 noundef 1) #61, !inline_history !14
  %.not.i24.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i24.i.i, label %drwav_seek_to_first_pcm_frame.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.bp = load i64, ptr %i.bc, align 8
  %i.bq = add i64 %i.bp, 2147483647
  store i64 %i.bq, ptr %i.bc, align 8
  %i.br = add i64 %i.bl, -2147483647              ; 3 uses
  %i.bs = icmp ult i64 %i.br, 2147483648
  br i1 %i.bs, label %._crit_edge.i, label %.lr.ph.i

drmp3__on_seek_64.exit.i:                         ; preds = %.thread.i.i, %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.am, i64 23016
  store i32 0, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.am, i64 23020
  store i32 0, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.am, i64 32240
  store i64 0, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.am, i64 32312
  store i64 0, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.am, i64 32344
  store i32 0, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.am, i64 6152
  store i8 0, ptr %i.by, align 8
  br label %drwav_seek_to_first_pcm_frame.exit

bb.p:                                             ; preds = %StopAudioStream.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8            ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 272
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.not.i3 = icmp eq ptr %i.cc, null
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 296
  %i.ce = load i32, ptr %i.cd, align 8            ; 2 uses
  br i1 %.not.i3, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = zext i32 %i.ce to i64
  %i.cg = tail call i32 @fseek(ptr noundef nonnull %i.cc, i64 noundef %i.cf, i32 noundef 0) ; 0 uses
  br label %qoaplay_rewind.exit

bb.r:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 292
  store i32 %i.ce, ptr %i.ch, align 4
  br label %qoaplay_rewind.exit

qoaplay_rewind.exit:                              ; preds = %bb.q, %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 300
  store i32 0, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 320
  store i32 0, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 324
  store i32 0, ptr %i.ck, align 4
  br label %drwav_seek_to_first_pcm_frame.exit

bb.s:                                             ; preds = %StopAudioStream.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8            ; 10 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 54 ; 2 uses
  %i.co = load i16, ptr %i.cn, align 2
  %.not.i4 = icmp eq i16 %i.co, 0
  br i1 %.not.i4, label %jar_xm_reset.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 416
end_hunk_4
begin_hunk_5_@StopMusicStream:bb.a
  %i.ec = mul nsw <8 x i16> %i.dx, splat (i16 3)
  %i.ed = shl nsw <8 x i16> %i.dx, splat (i16 2)
  %i.ee = mul <8 x i16> %i.dx, splat (i16 5)
  %i.ef = shufflevector <8 x i16> %wide.load, <8 x i16> %i.ea, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eg = shufflevector <8 x i16> %i.eb, <8 x i16> %i.ec, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eh = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ei = add <16 x i16> %i.eg, %i.eh
  %i.ej = shufflevector <8 x i16> %i.ed, <8 x i16> %i.ee, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ek = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.el = add <16 x i16> %i.ej, %i.ek
  %i.em = shufflevector <8 x i16> %i.dx, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.en = mul <16 x i16> %i.em, <i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7>
  %i.eo = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ep = add <16 x i16> %i.en, %i.eo
  %i.eq = shufflevector <16 x i16> %i.ef, <16 x i16> %i.ei, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.er = shufflevector <16 x i16> %i.el, <16 x i16> %i.ep, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x i16> %i.eq, <32 x i16> %i.er, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec, ptr %i.dz, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.es = icmp eq i64 %index.next, 136
  br i1 %i.es, label %.preheader.i.i.i, label %vector.body, !llvm.loop !1187

.preheader.i.i.i:                                 ; preds = %vector.body
  %i.et = getelementptr inbounds nuw i8, ptr %i.dh, i64 6906
  store <8 x i16> splat (i16 11), ptr %i.et, align 2
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dh, i64 6922
  store <8 x i16> splat (i16 10), ptr %i.eu, align 2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dh, i64 6938
  store <8 x i16> splat (i16 9), ptr %i.ev, align 2
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dh, i64 6954
  store <8 x i16> splat (i16 9), ptr %i.ew, align 2
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dh, i64 6970
  store <8 x i16> splat (i16 8), ptr %i.ex, align 2
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dh, i64 6986
  store <8 x i16> splat (i16 8), ptr %i.ey, align 2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dh, i64 7002
  store <8 x i16> splat (i16 7), ptr %i.ez, align 2
  %i.fa = trunc i64 %i.dl to i32
  %i.fb = tail call fastcc zeroext i1 @jar_mod_load(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.dj, i32 noundef %i.fa) ; 0 uses
  store ptr %i.dj, ptr %i.di, align 8
  store i64 %i.dl, ptr %i.dk, align 8
  store i16 %i.dn, ptr %i.dm, align 8
  br label %drwav_seek_to_first_pcm_frame.exit

drwav_seek_to_first_pcm_frame.exit:               ; preds = %.lr.ph.i, %.preheader.i.i.i, %bb.v, %bb.u, %drmp3__on_seek_64.exit.i, %._crit_edge.i, %bb.n, %bb.l, %bb.i, %bb.e, %bb.d, %StopAudioStream.exit, %jar_xm_reset.exit, %qoaplay_rewind.exit, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define void @UnloadAudioStream(ptr nofree noundef readonly byval(%struct.AudioStream) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @UnloadAudioBuffer(ptr noundef %i.a)
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.300) #61
  ret void
}

; Function Attrs: nounwind uwtable
define void @PlayMusicStream(ptr nofree noundef readonly byval(%struct.Music) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i.i, label %PlayAudioStream.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 356
  store i8 1, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 357
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 372
  store i32 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 376
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 364
  store i8 1, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 365
  store i8 1, ptr %i.g, align 1
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %PlayAudioStream.exit

PlayAudioStream.exit:                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @PlayAudioStream(ptr nofree noundef readonly byval(%struct.AudioStream) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %PlayAudioBuffer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 356
  store i8 1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 357
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 372
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 364
  store i8 1, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 365
  store i8 1, ptr %i.h, align 1
  %i.i = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %PlayAudioBuffer.exit

PlayAudioBuffer.exit:                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @PauseMusicStream(ptr nofree noundef readonly byval(%struct.Music) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i.i, label %PauseAudioStream.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 357
  store i8 1, ptr %i.b, align 1
  %i.c = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %PauseAudioStream.exit

PauseAudioStream.exit:                            ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @PauseAudioStream(ptr nofree noundef readonly byval(%struct.AudioStream) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %PauseAudioBuffer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 357
  store i8 1, ptr %i.c, align 1
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %PauseAudioBuffer.exit

PauseAudioBuffer.exit:                            ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @ResumeMusicStream(ptr nofree noundef readonly byval(%struct.Music) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i.i, label %ResumeAudioStream.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 357
  store i8 0, ptr %i.b, align 1
  %i.c = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %ResumeAudioStream.exit

ResumeAudioStream.exit:                           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @ResumeAudioStream(ptr nofree noundef readonly byval(%struct.AudioStream) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %ResumeAudioBuffer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 357
  store i8 0, ptr %i.c, align 1
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %ResumeAudioBuffer.exit

ResumeAudioBuffer.exit:                           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @StopAudioStream(ptr nofree noundef readonly byval(%struct.AudioStream) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %StopAudioBuffer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 356 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !range !66, !noundef !53
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %IsAudioBufferPlayingInLockedState.exit.i.i, label %StopAudioBuffer.exit

IsAudioBufferPlayingInLockedState.exit.i.i:       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 357 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !66, !noundef !53
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %StopAudioBuffer.exit, label %bb.c

bb.c:                                             ; preds = %IsAudioBufferPlayingInLockedState.exit.i.i
  store i8 0, ptr %i.c, align 4
  store i8 0, ptr %i.f, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 372
  store i32 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 364
  store i8 1, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 365
  store i8 1, ptr %i.l, align 1
  br label %StopAudioBuffer.exit

StopAudioBuffer.exit:                             ; preds = %bb.a, %bb.b, %IsAudioBufferPlayingInLockedState.exit.i.i, %bb.c
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @SeekMusicStream(ptr nofree noundef readonly byval(%struct.Music) align 8 captures(none) %0, float noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, -2
  %or.cond = icmp eq i32 %i.c, 6
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %i.f = uitofp i32 %i.e to float
  %i.g = fmul float %1, %i.f
  %i.h = fptoui float %i.g to i32                 ; 8 uses
  switch i32 %i.b, label %qoaplay_seek_frame.exit [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = zext i32 %i.h to i64
  %i.l = tail call i32 @drwav_seek_to_pcm_frame(ptr noundef %i.j, i64 noundef %i.k) ; 0 uses
  br label %qoaplay_seek_frame.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call i32 @stb_vorbis_seek_frame(ptr noundef %i.n, i32 noundef %i.h) ; 0 uses
  br label %qoaplay_seek_frame.exit

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = zext i32 %i.h to i64
  %i.s = tail call i32 @drmp3_seek_to_pcm_frame(ptr noundef %i.q, i64 noundef %i.r) ; 0 uses
  br label %qoaplay_seek_frame.exit

bb.f:                                             ; preds = %bb.b
  %i.t = udiv i32 %i.h, 5120
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8              ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8
  %i.y = udiv i32 %i.x, 5120
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.t, i32 %i.y) ; 2 uses
  %i.z = mul nuw nsw i32 %spec.select.i, 5120     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 300 ; 2 uses
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 320
  store i32 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 324
  store i32 0, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 296
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = load i32, ptr %i.v, align 8             ; 2 uses
  %i.ag = shl i32 %i.af, 4
  %i.ah = or disjoint i32 %i.ag, 8
  %i.ai = shl i32 %i.af, 11
  %i.aj = add i32 %i.ah, %i.ai
  %i.ak = mul i32 %i.aj, %spec.select.i
  %i.al = add i32 %i.ak, %i.ae                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 272
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = zext i32 %i.al to i64
  %i.ap = tail call i32 @fseek(ptr noundef nonnull %i.an, i64 noundef %i.ao, i32 noundef 0) ; 0 uses
  %.pre = load i32, ptr %i.aa, align 4
  br label %qoaplay_seek_frame.exit

bb.h:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 292
  store i32 %i.al, ptr %i.aq, align 4
  br label %qoaplay_seek_frame.exit

qoaplay_seek_frame.exit:                          ; preds = %bb.h, %bb.g, %bb.b, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.h, %bb.c ], [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %.pre, %bb.g ], [ %i.z, %bb.h ]
  %i.ar = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.as = load ptr, ptr %0, align 8               ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 376
  store i32 %.0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 364
  store i8 1, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 365
  store i8 1, ptr %i.av, align 1
  %i.aw = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %qoaplay_seek_frame.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @UpdateMusicStream(ptr nofree noundef readonly byval(%struct.Music) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [8192 x i16], align 16            ; 5 uses
  %i.b = load ptr, ptr %0, align 8                ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 356
  %i.e = load i8, ptr %i.d, align 4, !range !66, !noundef !53
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.ar

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 368 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8              ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4              ; 3 uses
  %i.o = mul i32 %i.n, %i.l
  %i.p = lshr i32 %i.o, 3                         ; 5 uses
  %i.q = mul i32 %i.p, %i.j
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4848), align 8
  %i.s = zext i32 %i.q to i64                     ; 3 uses
  %i.t = icmp ult i64 %i.r, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4856), align 8
  tail call void @free(ptr noundef %i.u) #61
  %i.v = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.s) #80
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4856), align 8
  store i64 %i.s, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4848), align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load i32, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 376 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.aa = load i8, ptr %i.z, align 4, !range !66
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 364 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load ptr, ptr %i.af, align 8            ; 34 uses
  %i.ah = icmp eq ptr %i.ag, null
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 22936
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 22928 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 32264
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 22944 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 22960 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 32248 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 23016
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 23020
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 32240
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 32312
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 32344
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 6152
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 144 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 124 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 316 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 264 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 160 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 136 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 152 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 365 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 372
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.bh = lshr i32 %i.n, 3
  %i.bi = mul i32 %i.bh, %i.l                     ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %UpdateAudioStreamInLockedState.exit
  %.not = phi i1 [ true, %bb.e ], [ false, %UpdateAudioStreamInLockedState.exit ]
  %indvars.iv = phi i64 [ 0, %bb.e ], [ 1, %UpdateAudioStreamInLockedState.exit ]
  %i.bj = load i32, ptr %i.y, align 8
  %i.bk = sub i32 %i.x, %i.bj                     ; 2 uses
end_hunk_5
