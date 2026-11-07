Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_audio?download=true
inline.NumInlined: 91
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@SDL_QuitAudio:bb.a
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 112), align 16
  tail call void %i.b() #11
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 160), align 16 ; 2 uses
  %.not1719 = icmp eq ptr %i.c, null
  br i1 %.not1719, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.b
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.d) #11
  %i.e = tail call i32 @SDL_SetAtomicInt_REAL(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @current_audio, i64 208), i32 noundef 1) #11 ; 0 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 144), align 16 ; 2 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 152), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @current_audio, i64 144), i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 184), align 8 ; 2 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 184), align 8
  %i.i = tail call i32 @SDL_SetAtomicInt_REAL(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @current_audio, i64 200), i32 noundef 0) #11 ; 0 uses
  %i.j = tail call i32 @SDL_SetAtomicInt_REAL(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @current_audio, i64 204), i32 noundef 0) #11 ; 0 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.k) #11
  %.not1821 = icmp eq ptr %i.h, null
  br i1 %.not1821, label %._crit_edge25, label %.lr.ph24

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %.01620 = phi ptr [ %i.m, %bb.f ], [ %i.c, %bb.b ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01620, i64 224
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01620, i64 184
  %i.o = load i8, ptr %i.n, align 8, !range !4, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.01620, i64 8
  %i.r = load i32, ptr %i.q, align 8
  %i.s = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %i.r, ptr noundef nonnull @.str.11, i1 noundef zeroext true) #11
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %.lr.ph
  tail call void @SDL_DestroyAudioStream_REAL(ptr noundef nonnull %.01620) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.01620, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.not17 = icmp eq ptr %i.m, null
  br i1 %.not17, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge25:                                    ; preds = %.lr.ph24, %._crit_edge
  %i.u = tail call zeroext i1 @SDL_IterateHashTable(ptr noundef %i.f, ptr noundef nonnull @DestroyOnePhysicalAudioDevice, ptr noundef null) #11 ; 0 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 120), align 8
  tail call void %i.v() #11
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_DestroyRWLock_REAL(ptr noundef %i.w) #11
  tail call void @SDL_DestroyHashTable(ptr noundef %i.f) #11
  tail call void @SDL_DestroyHashTable(ptr noundef %i.g) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @current_audio, i8 0, i64 216, i1 false)
  br label %bb.g

.lr.ph24:                                         ; preds = %._crit_edge, %.lr.ph24
  %.022 = phi ptr [ %i.y, %.lr.ph24 ], [ %i.h, %._crit_edge ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.022, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  tail call void @SDL_free_REAL(ptr noundef nonnull %.022) #11
  %.not18 = icmp eq ptr %i.y, null
  br i1 %.not18, label %._crit_edge25, label %.lr.ph24, !llvm.loop !10

bb.g:                                             ; preds = %bb.a, %._crit_edge25
  ret void
}

declare void @SDL_ChooseAudioConverters() local_unnamed_addr #2

declare void @SDL_SetupAudioResampler() local_unnamed_addr #2

declare ptr @SDL_CreateRWLock_REAL() local_unnamed_addr #2

declare ptr @SDL_CreateHashTable(i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 0, 1073741824) i32 @HashAudioDeviceID(ptr nofree readnone captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 2
  ret i32 %i.c
}

declare zeroext i1 @SDL_KeyMatchID(ptr noundef, ptr noundef, ptr noundef) #2

declare void @SDL_DestroyRWLock_REAL(ptr noundef) local_unnamed_addr #2

declare void @SDL_DestroyHashTable(ptr noundef) local_unnamed_addr #2

declare noalias ptr @SDL_strdup_REAL(ptr noundef) local_unnamed_addr #2

declare ptr @SDL_strchr_REAL(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SDL_strcasecmp_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #2

declare void @SDL_DebugLogBackend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @SDL_DestroyAudioStream_REAL(ptr noundef) local_unnamed_addr #2

declare i32 @SDL_SetAtomicInt_REAL(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_IterateHashTable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @DestroyOnePhysicalAudioDevice(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3) #0 {
bb.a:
  tail call fastcc void @DestroyPhysicalAudioDevice(ptr noundef %3)
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @SDL_AudioThreadFinalize(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_PlaybackAudioThreadSetup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 32), align 16
  tail call void %i.a(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_PlaybackAudioThreadIterate(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %1 = alloca %struct.SDL_AudioSpec, align 4      ; 5 uses
  %i.b = load ptr, ptr %0, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.d = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %i.c) #11
  %.not = icmp eq i32 %i.d, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.e) #11
  br label %bb.ai

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.g = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %i.f) #11
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %._crit_edge156.a

._crit_edge156.a:                                 ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @ZombieWaitDevice, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @ZombieGetDeviceBuf, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @ZombiePlayDevice, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @ZombieWaitDevice, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @ZombieRecordDevice, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @ZombieFlushRecording, ptr %i.n, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge156.a, %bb.d
  %i.o = phi ptr [ %.pre, %._crit_edge156.a ], [ @ZombieGetDeviceBuf, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.q = load i32, ptr %i.p, align 4
  store i32 %i.q, ptr %i.a, align 4
  %i.r = call ptr %i.o(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #11 ; 10 uses
  %i.s = load i32, ptr %i.a, align 4              ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.thread141, label %bb.f

.thread141:                                       ; preds = %bb.e
  %i.u = load ptr, ptr %0, align 8
  call void @SDL_UnlockMutex_REAL(ptr noundef %i.u) #11
  br label %bb.ah

bb.f:                                             ; preds = %bb.e
  %.not119 = icmp eq ptr %i.r, null
  br i1 %.not119, label %.thread140, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.w = load i8, ptr %i.v, align 1, !range !4, !noundef !5
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %i.ac) #11
  %.not126 = icmp eq i32 %i.ad, 0
  br i1 %.not126, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ae = load i32, ptr %i.a, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = call i32 @SDL_GetAudioStreamDataAdjustGain(ptr noundef %i.ab, ptr noundef nonnull %i.r, i32 noundef %i.ae, float noundef %i.ag) #11 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.thread132, label %.thread

.thread132:                                       ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = trunc i32 %i.ak to i8
  %i.am = load i32, ptr %i.a, align 4
  %i.an = sext i32 %i.am to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 %i.al, i64 %i.an, i1 false)
  br label %SDL_AudioChannelMapsEqual.exit.thread

.thread:                                          ; preds = %bb.h, %bb.i
  %i.ao = phi i32 [ %i.ah, %bb.i ], [ 0, %bb.h ]  ; 5 uses
  %i.ap = load i32, ptr %i.a, align 4             ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread
  %i.ar = zext nneg i32 %i.ao to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.au = load i32, ptr %i.at, align 8
  %i.av = trunc i32 %i.au to i8
  %i.aw = sub nuw nsw i32 %i.ap, %i.ao
  %i.ax = zext nneg i32 %i.aw to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.as, i8 %i.av, i64 %i.ax, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %.not143 = icmp eq i32 %i.ao, 0
  br i1 %.not143, label %SDL_AudioChannelMapsEqual.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 4 uses
  %i.be = icmp eq ptr %i.bb, %i.bd
  br i1 %i.be, label %SDL_AudioChannelMapsEqual.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = icmp ne ptr %i.bb, null                 ; 2 uses
  %i.bg = icmp eq ptr %i.bd, null
  %.not.i = xor i1 %i.bf, %i.bg
  br i1 %.not.i, label %bb.n, label %SDL_AudioChannelMapsEqual.exit

bb.n:                                             ; preds = %bb.m
  br i1 %i.bf, label %bb.o, label %SDL_AudioChannelMapsEqual.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bh = sext i32 %i.az to i64
  %i.bi = shl nsw i64 %i.bh, 2
  %i.bj = call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.bb, ptr noundef %i.bd, i64 noundef %i.bi) #11
  %.not10.i = icmp eq i32 %i.bj, 0
  br i1 %.not10.i, label %SDL_AudioChannelMapsEqual.exit.thread, label %.SDL_AudioChannelMapsEqual.exit_crit_edge

.SDL_AudioChannelMapsEqual.exit_crit_edge:        ; preds = %bb.o
  %.pre159.a = load i32, ptr %i.ay, align 4
  %.pre160 = load ptr, ptr %i.bc, align 8
  br label %SDL_AudioChannelMapsEqual.exit

SDL_AudioChannelMapsEqual.exit:                   ; preds = %.SDL_AudioChannelMapsEqual.exit_crit_edge, %bb.m
  %i.bk = phi ptr [ %.pre160, %.SDL_AudioChannelMapsEqual.exit_crit_edge ], [ %i.bd, %bb.m ]
  %i.bl = phi i32 [ %.pre159.a, %.SDL_AudioChannelMapsEqual.exit_crit_edge ], [ %i.az, %bb.m ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bn = load i32, ptr %i.bm, align 8            ; 3 uses
  %i.bo = lshr i32 %i.bn, 3
  %i.bp = and i32 %i.bo, 31
  %i.bq = mul i32 %i.bp, %i.bl
  %i.br = udiv i32 %i.ao, %i.bq
  call void @ConvertAudio(i32 noundef %i.br, ptr noundef nonnull %i.r, i32 noundef %i.bn, i32 noundef %i.bl, ptr noundef null, ptr noundef nonnull %i.r, i32 noundef %i.bn, i32 noundef %i.bl, ptr noundef %i.bk, ptr noundef null, float noundef 1.000000e+00) #11
  br label %SDL_AudioChannelMapsEqual.exit.thread

bb.p:                                             ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.bt = load i32, ptr %i.bs, align 8            ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 33056
  br i1 %i.bu, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bw = load ptr, ptr %i.bv, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.bx = phi ptr [ %i.bw, %bb.q ], [ %i.r, %bb.p ] ; 5 uses
  %i.by = lshr i32 %i.bt, 3
  %i.bz = and i32 %i.by, 31
  %i.ca = udiv i32 %i.s, %i.bz                    ; 2 uses
  %i.cb = shl i32 %i.ca, 2                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %i.bs, i64 12, i1 false)
  store i32 33056, ptr %1, align 4
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.bx, i8 0, i64 %i.cc, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.0109149 = load ptr, ptr %i.cd, align 8        ; 2 uses
  %.not120150 = icmp eq ptr %.0109149, null
  br i1 %.not120150, label %._crit_edge155, label %.lr.ph154

.lr.ph154:                                        ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br label %bb.s

._crit_edge155:                                   ; preds = %bb.ae, %bb.r
  %.1.lcssa = phi i1 [ false, %bb.r ], [ %.5, %bb.ae ]
  %.not121 = icmp eq ptr %i.bx, %i.r
  br i1 %.not121, label %bb.ag, label %bb.af

bb.s:                                             ; preds = %.lr.ph154, %bb.ae
  %.0109152 = phi ptr [ %.0109149, %.lr.ph154 ], [ %.0109, %bb.ae ] ; 6 uses
  %.1151 = phi i1 [ false, %.lr.ph154 ], [ %.5, %bb.ae ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0109152, i64 16
  %i.cj = call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %i.ci) #11
  %.not122 = icmp eq i32 %i.cj, 0
  br i1 %.not122, label %bb.t, label %bb.ae

bb.t:                                             ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %.0109152, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %.not123 = icmp eq ptr %i.cl, null              ; 2 uses
  br i1 %.not123, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = load ptr, ptr %i.ce, align 8            ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.cm, i8 0, i64 %i.cc, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0107 = phi ptr [ %i.cm, %bb.u ], [ %i.bx, %bb.t ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0109152, i64 24
  %.0144 = load ptr, ptr %i.cn, align 8           ; 2 uses
  %.not124145 = icmp eq ptr %.0144, null
  br i1 %.not124145, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.co = getelementptr inbounds nuw i8, ptr %.0109152, i64 20
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.ac
  %.0146 = phi ptr [ %.0144, %.lr.ph ], [ %.0, %bb.ac ] ; 3 uses
  %i.cp = load ptr, ptr %i.cf, align 8
  %i.cq = load float, ptr %i.co, align 4
  %i.cr = call i32 @SDL_GetAudioStreamDataAdjustGain(ptr noundef nonnull %.0146, ptr noundef %i.cp, i32 noundef %i.cb, float noundef %i.cq) #11 ; 4 uses
  %i.cs = icmp sgt i32 %i.cr, -1
  br i1 %i.cs, label %bb.x, label %._crit_edge

bb.x:                                             ; preds = %bb.w
  %.not125 = icmp eq i32 %i.cr, 0
  br i1 %.not125, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ct = load i32, ptr %i.cg, align 4            ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0146, i64 80
  %i.cv = load ptr, ptr %i.cu, align 8            ; 3 uses
  %i.cw = load ptr, ptr %i.ch, align 8            ; 4 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %SDL_AudioChannelMapsEqual.exit130.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cy = icmp ne ptr %i.cv, null                 ; 2 uses
  %i.cz = icmp eq ptr %i.cw, null
  %.not.i127 = xor i1 %i.cy, %i.cz
  br i1 %.not.i127, label %bb.aa, label %SDL_AudioChannelMapsEqual.exit130

bb.aa:                                            ; preds = %bb.z
  br i1 %i.cy, label %bb.ab, label %SDL_AudioChannelMapsEqual.exit130.thread

bb.ab:                                            ; preds = %bb.aa
  %i.da = sext i32 %i.ct to i64
  %i.db = shl nsw i64 %i.da, 2
  %i.dc = call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.cv, ptr noundef %i.cw, i64 noundef %i.db) #11
  %.not10.i129 = icmp eq i32 %i.dc, 0
  br i1 %.not10.i129, label %SDL_AudioChannelMapsEqual.exit130.thread, label %.SDL_AudioChannelMapsEqual.exit130_crit_edge

.SDL_AudioChannelMapsEqual.exit130_crit_edge:     ; preds = %bb.ab
  %.pre157 = load i32, ptr %i.cg, align 4
  %.pre158 = load ptr, ptr %i.ch, align 8
  br label %SDL_AudioChannelMapsEqual.exit130

SDL_AudioChannelMapsEqual.exit130:                ; preds = %.SDL_AudioChannelMapsEqual.exit130_crit_edge, %bb.z
  %i.dd = phi ptr [ %.pre158, %.SDL_AudioChannelMapsEqual.exit130_crit_edge ], [ %i.cw, %bb.z ]
  %i.de = phi i32 [ %.pre157, %.SDL_AudioChannelMapsEqual.exit130_crit_edge ], [ %i.ct, %bb.z ] ; 3 uses
  %i.df = load i32, ptr %i.bs, align 8            ; 3 uses
  %i.dg = lshr i32 %i.df, 3
  %i.dh = and i32 %i.dg, 31
  %i.di = mul i32 %i.dh, %i.de
  %i.dj = udiv i32 %i.cr, %i.di
  %i.dk = load ptr, ptr %i.cf, align 8            ; 2 uses
  call void @ConvertAudio(i32 noundef %i.dj, ptr noundef %i.dk, i32 noundef %i.df, i32 noundef %i.de, ptr noundef null, ptr noundef %i.dk, i32 noundef %i.df, i32 noundef %i.de, ptr noundef %i.dd, ptr noundef null, float noundef 1.000000e+00) #11
  br label %SDL_AudioChannelMapsEqual.exit130.thread

SDL_AudioChannelMapsEqual.exit130.thread:         ; preds = %bb.aa, %bb.ab, %bb.y, %SDL_AudioChannelMapsEqual.exit130
  %i.dl = load ptr, ptr %i.cf, align 8
  %i.dm = call zeroext i1 @SDL_MixAudio_REAL(ptr noundef %.0107, ptr noundef %i.dl, i32 noundef 33056, i32 noundef %i.cr, float noundef 1.000000e+00) #11 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %SDL_AudioChannelMapsEqual.exit130.thread, %bb.x
  %i.dn = getelementptr inbounds nuw i8, ptr %.0146, i64 200
  %.0 = load ptr, ptr %i.dn, align 8              ; 2 uses
  %.not124 = icmp eq ptr %.0, null
  br i1 %.not124, label %._crit_edge, label %bb.w, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.ac, %bb.w, %bb.v
  %.4 = phi i1 [ %.1151, %bb.v ], [ true, %bb.w ], [ %.1151, %bb.ac ] ; 2 uses
  br i1 %.not123, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw i8, ptr %.0109152, i64 48
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.cl(ptr noundef %i.dp, ptr noundef nonnull %1, ptr noundef %.0107, i32 noundef %i.cb) #11
  %i.dq = call zeroext i1 @SDL_MixAudio_REAL(ptr noundef %i.bx, ptr noundef %.0107, i32 noundef 33056, i32 noundef %i.cb, float noundef 1.000000e+00) #11 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge, %bb.ad, %bb.s
  %.5 = phi i1 [ %.1151, %bb.s ], [ %.4, %bb.ad ], [ %.4, %._crit_edge ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0109152, i64 56
  %.0109 = load ptr, ptr %i.dr, align 8           ; 2 uses
  %.not120 = icmp eq ptr %.0109, null
  br i1 %.not120, label %._crit_edge155, label %bb.s, !llvm.loop !12

bb.af:                                            ; preds = %._crit_edge155
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.dt = load i32, ptr %i.ds, align 4            ; 3 uses
  %i.du = sdiv i32 %i.ca, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = load i32, ptr %i.bs, align 8
  call void @ConvertAudio(i32 noundef %i.du, ptr noundef %i.bx, i32 noundef 33056, i32 noundef %i.dt, ptr noundef null, ptr noundef %i.dw, i32 noundef %i.dx, i32 noundef %i.dt, ptr noundef null, ptr noundef null, float noundef 1.000000e+00) #11
  %i.dy = load ptr, ptr %i.dv, align 8
  %i.dz = load i32, ptr %i.a, align 4
  %i.ea = sext i32 %i.dz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.dy, i64 %i.ea, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge155
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %SDL_AudioChannelMapsEqual.exit.thread

SDL_AudioChannelMapsEqual.exit.thread:            ; preds = %bb.n, %bb.o, %bb.l, %.thread132, %bb.k, %SDL_AudioChannelMapsEqual.exit, %bb.ag
  %.6 = phi i1 [ %.1.lcssa, %bb.ag ], [ false, %SDL_AudioChannelMapsEqual.exit ], [ true, %.thread132 ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.o ], [ false, %bb.n ]
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = load i32, ptr %i.a, align 4
  %i.ee = call zeroext i1 %i.ec(ptr noundef %0, ptr noundef nonnull %i.r, i32 noundef %i.ed) #11
  br i1 %i.ee, label %3, label %.thread140

.thread140:                                       ; preds = %SDL_AudioChannelMapsEqual.exit.thread, %bb.f
  %2 = load ptr, ptr %0, align 8
  call void @SDL_UnlockMutex_REAL(ptr noundef %2) #11
  br label %SDL_AudioDeviceDisconnected.exit

3:                                                ; preds = %SDL_AudioChannelMapsEqual.exit.thread
  %4 = load ptr, ptr %0, align 8
  call void @SDL_UnlockMutex_REAL(ptr noundef %4) #11
  br i1 %.6, label %SDL_AudioDeviceDisconnected.exit, label %bb.ah

SDL_AudioDeviceDisconnected.exit:                 ; preds = %.thread140, %3
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eg = call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.ef, i32 noundef 1) #11 ; 0 uses
  %i.eh = call zeroext i1 @SDL_CompareAndSwapAtomicInt_REAL(ptr noundef nonnull %i.f, i32 noundef 0, i32 noundef 1) #11 ; 0 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ej = load i32, ptr %i.ei, align 8
  %i.ek = zext i32 %i.ej to i64
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = call zeroext i1 @SDL_RunOnMainThread_REAL(ptr noundef nonnull @SDL_AudioDeviceDisconnected_OnMainThread, ptr noundef %i.el, i1 noundef zeroext false) #11 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %.thread141, %SDL_AudioDeviceDisconnected.exit, %3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.b
  ret i1 %.not
}

declare void @SDL_LockMutex_REAL(ptr noundef) local_unnamed_addr #2

declare i32 @SDL_GetAtomicInt_REAL(ptr noundef) local_unnamed_addr #2

declare void @SDL_UnlockMutex_REAL(ptr noundef) local_unnamed_addr #2

declare i32 @SDL_GetAudioStreamDataAdjustGain(ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare void @ConvertAudio(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @SDL_PlaybackAudioThreadShutdown(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %i.g) #11
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = lshr i32 %i.d, 3
  %i.j = and i32 %i.i, 31
  %i.k = mul i32 %i.j, %i.f
  %i.l = udiv i32 %i.b, %i.k
  %i.m = mul nsw i32 %i.l, 1000
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load i32, ptr %i.n, align 8
  %i.p = sdiv i32 %i.m, %i.o
  %i.q = shl nsw i32 %i.p, 1
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.q, i32 100)
  tail call void @SDL_Delay_REAL(i32 noundef %spec.store.select) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 40), align 8
  tail call void %i.r(ptr noundef nonnull %0) #11
  ret void
}

declare void @SDL_Delay_REAL(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @SDL_RecordingAudioThreadSetup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 32), align 16
  tail call void %i.a(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_RecordingAudioThreadIterate(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.SDL_AudioSpec, align 4      ; 6 uses
  %i.a = load ptr, ptr %0, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.c = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %i.b) #11
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.d) #11
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.f = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %i.e) #11
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @ZombieWaitDevice, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @ZombieGetDeviceBuf, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @ZombiePlayDevice, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @ZombieWaitDevice, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @ZombieRecordDevice, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @ZombieFlushRecording, ptr %i.m, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %.not73 = icmp eq ptr %i.o, null
  br i1 %.not73, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull %0) #11
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.w = load i32, ptr %i.v, align 4
  %i.x = tail call i32 %i.s(ptr noundef nonnull %0, ptr noundef %i.u, i32 noundef %i.w) #11 ; 3 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %.critedge81, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not74 = icmp eq i32 %i.x, 0
  br i1 %.not74, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.h
  %.06588 = load ptr, ptr %i.n, align 8           ; 2 uses
  %.not7589 = icmp eq ptr %.06588, null
  br i1 %.not7589, label %.critedge94, label %.lr.ph93

.lr.ph93:                                         ; preds = %.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %bb.i

._crit_edge:                                      ; preds = %.loopexit
  %i.af = load ptr, ptr %0, align 8
  call void @SDL_UnlockMutex_REAL(ptr noundef %i.af) #11
  br i1 %.4, label %SDL_AudioDeviceDisconnected.exit, label %bb.t

bb.i:                                             ; preds = %.lr.ph93, %.loopexit
  %.06592 = phi ptr [ %.06588, %.lr.ph93 ], [ %.065, %.loopexit ] ; 7 uses
  %.06691 = phi i32 [ %i.x, %.lr.ph93 ], [ %.2, %.loopexit ] ; 3 uses
  %.06790 = phi i1 [ false, %.lr.ph93 ], [ %.4, %.loopexit ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.06592, i64 16
  %i.ah = call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %i.ag) #11
  %.not76 = icmp eq i32 %i.ah, 0
  br i1 %.not76, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.06592, i64 40 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %.not77 = icmp eq ptr %i.aj, null
  %.pre = load ptr, ptr %i.t, align 8             ; 2 uses
  br i1 %.not77, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.06592, i64 20
  %i.al = load float, ptr %i.ak, align 4
  %i.am = fcmp une float %i.al, 1.000000e+00
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %i.z, i64 12, i1 false)
  store i32 33056, ptr %1, align 4
  %i.an = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ao = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ap = lshr i32 %i.ao, 3
  %i.aq = and i32 %i.ap, 31
  %i.ar = load i32, ptr %i.ab, align 4
  %i.as = mul i32 %i.aq, %i.ar
  %i.at = udiv i32 %.06691, %i.as                 ; 2 uses
  %i.au = load i32, ptr %i.ac, align 4            ; 3 uses
  %i.av = shl i32 %i.au, 2
  %i.aw = mul i32 %i.av, %i.at                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.06592, i64 20
  %i.ay = load float, ptr %i.ax, align 4
  call void @ConvertAudio(i32 noundef %i.at, ptr noundef %.pre, i32 noundef %i.ao, i32 noundef %i.au, ptr noundef null, ptr noundef %i.an, i32 noundef 33056, i32 noundef %i.au, ptr noundef null, ptr noundef null, float noundef %i.ay) #11
  %i.az = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not78 = icmp eq ptr %i.az, null
  br i1 %.not78, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %.06592, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = load ptr, ptr %i.aa, align 8
  call void %i.az(ptr noundef %i.bb, ptr noundef nonnull %1, ptr noundef %i.bc, i32 noundef %i.aw) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.1 = phi i32 [ %i.aw, %bb.n ], [ %.06691, %bb.k ] ; 5 uses
end_hunk_0
begin_hunk_1_@SDL_DefaultAudioDeviceChanged:bb.a
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

bb.ad:                                            ; preds = %bb.ac
  store i32 4354, ptr %i.cz, align 8
  %i.da = load i32, ptr %.0146, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 %i.da, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr null, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.085145, i64 8
  store ptr %i.cz, ptr %i.dd, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %SDL_SetAudioPostmixCallback_REAL.exit, %bb.ad, %bb.ac, %bb.m
  %.287 = phi ptr [ %.085145, %bb.m ], [ %i.cz, %bb.ad ], [ %.085145, %bb.ac ], [ %.085145, %SDL_SetAudioPostmixCallback_REAL.exit ] ; 2 uses
  %.not101 = icmp eq ptr %i.bg, null
  br i1 %.not101, label %._crit_edge148, label %bb.m, !llvm.loop !26

bb.af:                                            ; preds = %._crit_edge148
  call fastcc void @ClosePhysicalAudioDevice(ptr noundef nonnull %i.s)
  br label %.thread

.thread:                                          ; preds = %bb.f, %._crit_edge, %bb.i, %._crit_edge148, %bb.af
  %.3 = phi ptr [ %.085.lcssa, %._crit_edge148 ], [ %.085.lcssa, %bb.af ], [ %1, %bb.i ], [ %1, %._crit_edge ], [ %1, %bb.f ] ; 2 uses
  call fastcc void @ReleaseAudioDevice(ptr noundef nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call fastcc void @ReleaseAudioDevice(ptr noundef nonnull %0)
  %i.de = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.df = call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.de, i32 noundef -1) #11
  %i.dg = icmp eq i32 %i.df, 1
  br i1 %i.dg, label %bb.ag, label %UnrefPhysicalAudioDevice.exit111

bb.ag:                                            ; preds = %.thread
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.dh) #11
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 144), align 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.dk = load i32, ptr %i.dj, align 8
  %i.dl = zext i32 %i.dk to i64
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = call zeroext i1 @SDL_RemoveFromHashTable(ptr noundef %i.di, ptr noundef %i.dm) #11
  br i1 %i.dn, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.do = getelementptr inbounds nuw i8, ptr %i.s, i64 148
  %i.dp = load i8, ptr %i.do, align 4, !range !4, !noundef !5
  %i.dq = trunc nuw i8 %i.dp to i1
  %i.dr = select i1 %i.dq, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 204), ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 200)
  %i.ds = call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.dr, i32 noundef -1) #11 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  call void @SDL_UnlockRWLock_REAL(ptr noundef %i.dt) #11
  call fastcc void @DestroyPhysicalAudioDevice(ptr noundef nonnull %i.s)
  br label %UnrefPhysicalAudioDevice.exit111

UnrefPhysicalAudioDevice.exit111:                 ; preds = %bb.ai, %.thread, %.thread113
  %.4115 = phi ptr [ %1, %.thread113 ], [ %.3, %.thread ], [ %.3, %bb.ai ]
  %i.du = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not103 = icmp eq ptr %i.du, null
  br i1 %.not103, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %UnrefPhysicalAudioDevice.exit111
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.dv) #11
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 192), align 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %i.du, ptr %i.dx, align 8
  store ptr %.4115, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 192), align 16
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  call void @SDL_UnlockRWLock_REAL(ptr noundef %i.dy) #11
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %UnrefPhysicalAudioDevice.exit111
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.critedge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ObtainPhysicalAudioDevice(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8
  %i.b = and i32 %0, 2
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc ptr @ObtainLogicalAudioDevice(i32 noundef %0, ptr noundef %i.a) ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @current_audio, align 16
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.12) #11 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  tail call void @SDL_LockRWLockForReading_REAL(ptr noundef %i.g) #11
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 144), align 16
  %i.i = zext i32 %0 to i64
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = call zeroext i1 @SDL_FindInHashTable(ptr noundef %i.h, ptr noundef %i.j, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_audio, i64 136), align 8
  call void @SDL_UnlockRWLock_REAL(ptr noundef %i.l) #11
  %i.m = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not3 = icmp eq ptr %i.m, null
  br i1 %.not3, label %bb.f, label %ObtainPhysicalAudioDeviceObj.exit

bb.f:                                             ; preds = %bb.e
  %i.n = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.14) #11 ; 0 uses
  br label %bb.g

ObtainPhysicalAudioDeviceObj.exit:                ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.o, i32 noundef 1) #11 ; 0 uses
  %i.q = load ptr, ptr %i.m, align 8
  call void @SDL_LockMutex_REAL(ptr noundef %i.q) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %ObtainPhysicalAudioDeviceObj.exit, %bb.f, %bb.b
  %i.r = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %i.r
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_AudioDeviceFormatChangedAlreadyLocked(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.SDL_PendingAudioDeviceEvent, align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = load i32, ptr %1, align 4
  %.not.i = icmp eq i32 %i.d, %i.e
  br i1 %.not.i, label %bb.b, label %SDL_AudioSpecsEqual.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %.not15.i = icmp eq i32 %i.g, %i.i
  br i1 %.not15.i, label %bb.c, label %SDL_AudioSpecsEqual.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 4
  %.not16.i = icmp eq i32 %i.k, %i.m
  br i1 %.not16.i, label %SDL_AudioSpecsEqual.exit, label %SDL_AudioSpecsEqual.exit.thread

SDL_AudioSpecsEqual.exit:                         ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %2, %i.o
  br i1 %i.p, label %bb.n, label %SDL_AudioSpecsEqual.exit.thread

SDL_AudioSpecsEqual.exit.thread:                  ; preds = %bb.c, %bb.b, %bb.a, %SDL_AudioSpecsEqual.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  tail call fastcc void @UpdateAudioStreamFormatsPhysical(ptr noundef nonnull %0)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %2, ptr %i.q, align 4
  %i.r = load i32, ptr %i.c, align 8              ; 2 uses
  %i.s = icmp eq i32 %i.r, 8
  %i.t = select i1 %i.s, i32 128, i32 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.t, ptr %i.u, align 8
  %i.v = lshr i32 %i.r, 3
  %i.w = and i32 %i.v, 31
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = mul i32 %i.w, %2
  %i.aa = mul i32 %i.z, %i.y                      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = shl i32 %2, 2
  %i.ad = mul i32 %i.ac, %i.y
  %..i = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 %i.ad) ; 2 uses
  store i32 %..i, ptr %i.a, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not = icmp ne ptr %i.af, null
  %i.ag = icmp sgt i32 %..i, %i.b
  %or.cond = select i1 %.not, i1 %i.ag, i1 false
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %SDL_AudioSpecsEqual.exit.thread
  tail call void @SDL_aligned_free_REAL(ptr noundef nonnull %i.af) #11
  %i.ah = tail call i64 @SDL_GetSIMDAlignment_REAL() #11
  %i.ai = load i32, ptr %i.a, align 8
  %i.aj = sext i32 %i.ai to i64
  %i.ak = tail call noalias ptr @SDL_aligned_alloc_REAL(i64 noundef %i.ah, i64 noundef %i.aj) #11 ; 2 uses
  store ptr %i.ak, ptr %i.ae, align 8
  %.not61 = icmp eq ptr %i.ak, null               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not62 = icmp eq ptr %i.am, null
  br i1 %.not62, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @SDL_aligned_free_REAL(ptr noundef nonnull %i.am) #11
  %i.an = tail call i64 @SDL_GetSIMDAlignment_REAL() #11
  %i.ao = load i32, ptr %i.a, align 8
  %i.ap = sext i32 %i.ao to i64
  %i.aq = tail call noalias ptr @SDL_aligned_alloc_REAL(i64 noundef %i.an, i64 noundef %i.ap) #11 ; 2 uses
  store ptr %i.aq, ptr %i.al, align 8
  %.not63 = icmp eq ptr %i.aq, null
  %spec.select = select i1 %.not63, i1 true, i1 %.not61
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.153 = phi i1 [ %spec.select, %bb.e ], [ %.not61, %bb.d ] ; 2 uses
end_hunk_1
