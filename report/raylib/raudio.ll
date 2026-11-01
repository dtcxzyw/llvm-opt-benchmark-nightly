Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 302
begin_hunk_0_@SetSoundPitch:bb.a
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
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #61
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.278) #61
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.t = sdiv i32 %2, 8
  %i.u = mul i32 %i.t, %3
  %i.v = mul i32 %i.u, %i.r
  %i.w = zext i32 %i.v to i64
  %i.x = call noalias ptr @malloc(i64 noundef %i.w) #74 ; 3 uses
  %i.y = and i64 %i.q, 4294967295
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load i32, ptr %i.m, align 4
  %i.ac = load i32, ptr %i.o, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #61
  %.sroa.9.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i40, i8 0, i64 16, i1 false)
  %.sroa.11.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %4, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.11.0..sroa_idx.i41, i8 0, i64 20, i1 false)
  %.sroa.12.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %4, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.12.0..sroa_idx.i42, i8 0, i64 20, i1 false)
  %.sroa.13.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %4, i64 92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.13.0..sroa_idx.i43, i8 0, i64 20, i1 false)
  store i32 %i.f, ptr %4, align 8
  %.sroa.4.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.j, ptr %.sroa.4.0..sroa_idx.i44, align 4
  %.sroa.5.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ab, ptr %.sroa.5.0..sroa_idx.i45, align 8
  %.sroa.6.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %3, ptr %.sroa.6.0..sroa_idx.i46, align 4
  %.sroa.7.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.ac, ptr %.sroa.7.0..sroa_idx.i47, align 8
  %.sroa.8.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %1, ptr %.sroa.8.0..sroa_idx.i48, align 4
  %.sroa.10.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %.sroa.10.0..sroa_idx.i49, align 8
  %.sroa.119.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 0, ptr %.sroa.119.0..sroa_idx.i50, align 8
  %.sroa.1210.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i32 0, ptr %.sroa.1210.0..sroa_idx.i51, align 8
  %.sroa.1311.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %.sroa.14.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %4, i64 116
  store i32 0, ptr %.sroa.14.0..sroa_idx.i53, align 4
  store i32 4, ptr %.sroa.1311.0..sroa_idx.i52, align 8
  %i.ad = call i64 @ma_convert_frames_ex(ptr noundef %i.x, i64 noundef %i.y, ptr noundef %i.aa, i64 noundef %i.l, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef %i.x) #61
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.279) #61
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 %i.ae, ptr %0, align 8
  store i32 %2, ptr %i.a, align 8
  store i32 %1, ptr %i.o, align 4
  store i32 %3, ptr %i.m, align 4
  %i.ag = load ptr, ptr %i.z, align 8
  call void @free(ptr noundef %i.ag) #61
  store ptr %i.x, ptr %i.z, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @WaveCopy(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Wave) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.Wave) align 8 captures(none) %1) local_unnamed_addr #50 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = mul i32 %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = mul i32 %i.d, %i.f
  %i.h = lshr i32 %i.g, 3
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #74 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.k, align 8
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.m, i64 %i.i, i1 false)
  store i32 %i.a, ptr %0, align 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %3, ptr %4, align 4
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.f, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.c, ptr %6, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @WaveCrop(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  %i.b = icmp slt i32 %1, %2
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8
  %.not = icmp ugt i32 %2, %i.c
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = sub nuw nsw i32 %2, %1                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = mul i32 %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = mul i32 %i.g, %i.i
  %i.k = lshr i32 %i.j, 3
  %i.l = zext nneg i32 %i.k to i64
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #74 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = load i32, ptr %i.e, align 4
  %i.q = load i32, ptr %i.h, align 8
  %i.r = mul i32 %i.q, %i.p                       ; 2 uses
  %i.s = mul i32 %i.r, %1
  %i.t = lshr i32 %i.s, 3
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.u
  %i.w = mul i32 %i.r, %i.d
  %i.x = lshr i32 %i.w, 3
  %i.y = zext nneg i32 %i.x to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.v, i64 %i.y, i1 false)
  tail call void @free(ptr noundef %i.o) #61
  store ptr %i.m, ptr %i.n, align 8
  store i32 %i.d, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.280) #61
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @LoadWaveSamples(ptr nofree noundef readonly byval(%struct.Wave) align 8 captures(none) %0) local_unnamed_addr #49 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4
  %i.d = mul i32 %i.c, %i.a                       ; 4 uses
  %i.e = zext i32 %i.d to i64                     ; 7 uses
  %i.f = shl nuw nsw i64 %i.e, 2                  ; 2 uses
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #74 ; 6 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 5 uses
  switch i32 %i.i, label %._crit_edge [
    i32 8, label %.lr.ph.split.us.preheader
    i32 16, label %.lr.ph.split.us13.preheader
    i32 32, label %.lr.ph.split.us15.preheader
  ]

.lr.ph.split.us13.preheader:                      ; preds = %.lr.ph
  %min.iters.check = icmp ult i32 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph.split.us13.preheader43, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us13.preheader
  %n.vec = and i64 %i.e, 4294967288               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %wide.load = load <4 x i16>, ptr %i.l, align 2
  %wide.load29 = load <4 x i16>, ptr %i.m, align 2
  %i.n = sitofp <4 x i16> %wide.load to <4 x float>
  %i.o = sitofp <4 x i16> %wide.load29 to <4 x float>
  %i.p = fmul nnan <4 x float> %i.n, splat (float f0x38000000)
  %i.q = fmul nnan <4 x float> %i.o, splat (float f0x38000000)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x float> %i.p, ptr %i.r, align 4
  store <4 x float> %i.q, ptr %i.s, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !1152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us13.preheader43

.lr.ph.split.us13.preheader43:                    ; preds = %.lr.ph.split.us13.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.us13.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split.us13

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %min.iters.check31 = icmp ult i32 %i.d, 8
  br i1 %min.iters.check31, label %.lr.ph.split.us.preheader42, label %vector.ph32

vector.ph32:                                      ; preds = %.lr.ph.split.us.preheader
  %n.vec33 = and i64 %i.e, 4294967288             ; 3 uses
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next38, %vector.body34 ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 %index35 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %wide.load36 = load <4 x i8>, ptr %i.u, align 1
  %wide.load37 = load <4 x i8>, ptr %i.v, align 1
  %i.w = zext <4 x i8> %wide.load36 to <4 x i32>
  %i.x = zext <4 x i8> %wide.load37 to <4 x i32>
  %i.y = add nsw <4 x i32> %i.w, splat (i32 -128)
  %i.z = add nsw <4 x i32> %i.x, splat (i32 -128)
  %i.aa = sitofp <4 x i32> %i.y to <4 x float>
  %i.ab = sitofp <4 x i32> %i.z to <4 x float>
  %i.ac = fmul nnan <4 x float> %i.aa, splat (float 7.812500e-03)
  %i.ad = fmul nnan <4 x float> %i.ab, splat (float 7.812500e-03)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index35 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x float> %i.ac, ptr %i.ae, align 4
  store <4 x float> %i.ad, ptr %i.af, align 4
  %index.next38 = add nuw i64 %index35, 8         ; 2 uses
  %i.ag = icmp eq i64 %index.next38, %n.vec33
  br i1 %i.ag, label %middle.block39, label %vector.body34, !llvm.loop !1153

middle.block39:                                   ; preds = %vector.body34
  %cmp.n40 = icmp eq i64 %n.vec33, %i.e
  br i1 %cmp.n40, label %._crit_edge, label %.lr.ph.split.us.preheader42

.lr.ph.split.us.preheader42:                      ; preds = %.lr.ph.split.us.preheader, %middle.block39
  %indvars.iv22.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.vec33, %middle.block39 ]
  br label %.lr.ph.split.us

.lr.ph.split.us15.preheader:                      ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.g, ptr align 4 %i.k, i64 %i.f, i1 false)
  br label %._crit_edge

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader42, %.lr.ph.split.us
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %.lr.ph.split.us ], [ %indvars.iv22.ph, %.lr.ph.split.us.preheader42 ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv22
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -128
  %i.al = sitofp i32 %i.ak to float
  %i.am = fmul nnan float %i.al, 7.812500e-03
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv22
  store float %i.am, ptr %i.an, align 4
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %exitcond26.not = icmp eq i64 %indvars.iv.next23, %i.e
  br i1 %exitcond26.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1154

.lr.ph.split.us13:                                ; preds = %.lr.ph.split.us13.preheader43, %.lr.ph.split.us13
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split.us13 ], [ %indvars.iv.ph, %.lr.ph.split.us13.preheader43 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = sitofp i16 %i.ap to float
  %i.ar = fmul nnan float %i.aq, f0x38000000
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store float %i.ar, ptr %i.as, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.us13, !llvm.loop !1155

._crit_edge:                                      ; preds = %.lr.ph.split.us13, %.lr.ph.split.us, %middle.block, %middle.block39, %.lr.ph, %.lr.ph.split.us15.preheader, %bb.a
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @UnloadWaveSamples(ptr noundef captures(none) %0) local_unnamed_addr #43 {
bb.a:
  tail call void @free(ptr noundef %0) #61
  ret void
}

; Function Attrs: nounwind uwtable
define void @LoadMusicStream(ptr dead_on_unwind noalias nofree writable sret(%struct.Music) align 8 captures(none) initializes((0, 56)) %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  %i.c = tail call zeroext i1 @IsFileExtension(ptr noundef %1, ptr noundef nonnull @.str.235) #61
end_hunk_0
