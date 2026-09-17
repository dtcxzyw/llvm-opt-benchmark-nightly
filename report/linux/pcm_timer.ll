Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/pcm_timer?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer_id = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [66 x i8] c"pcm timer resolution out of range (rate = %u, period_size = %lu)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PCM\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"PCM %s %i-%i-%i\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Playback\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Capture\00", align 1
@snd_pcm_timer = internal unnamed_addr constant { i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 5, [4 x i8] zeroinitializer, i64 0, i64 0, i64 0, i64 1, ptr null, ptr null, ptr @snd_pcm_timer_resolution, ptr @snd_pcm_timer_start, ptr @snd_pcm_timer_stop, ptr null, ptr null }, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @snd_pcm_timer_resolution_change(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 108
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 120
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %.not38 = icmp eq i64 %i.f, 0
  br i1 %.not38, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = zext i32 %i.d to i64                     ; 2 uses
  %i.h = tail call i64 @gcd(i64 noundef 1000000000, i64 noundef %i.g) #10 ; 2 uses
  %i.i = udiv i64 %i.g, %i.h                      ; 3 uses
  %i.j = udiv i64 1000000000, %i.h                ; 2 uses
  %i.k = tail call i64 @gcd(i64 noundef %i.i, i64 noundef %i.f) #10 ; 3 uses
  %i.l = udiv i64 %i.f, %i.k                      ; 2 uses
  %mul40 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.l, i64 %i.j) ; 2 uses
  %mul.ov41 = extractvalue { i64, i1 } %mul40, 1
  br i1 %mul.ov41, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.043 = phi i64 [ %i.m, %.lr.ph ], [ %i.j, %bb.c ]
  %.03642 = phi i64 [ %i.n, %.lr.ph ], [ 1, %bb.c ]
  %i.m = lshr i64 %.043, 1                        ; 2 uses
  %i.n = shl i64 %.03642, 1                       ; 2 uses
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.l, i64 %i.m) ; 2 uses
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov, label %.lr.ph, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %mul.lcssa = phi { i64, i1 } [ %mul40, %bb.c ], [ %mul, %.lr.ph ]
  %.036.lcssa = phi i64 [ 1, %bb.c ], [ %i.n, %.lr.ph ]
  %i.o = icmp ugt i64 %i.k, %i.i
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.p = load ptr, ptr %0, align 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 632
  %i.s = load ptr, ptr %i.r, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.s, ptr noundef nonnull @.str, i32 noundef %i.d, i64 noundef %i.f) #11
  br label %.sink.split

bb.e:                                             ; preds = %._crit_edge
  %mul.val.le = extractvalue { i64, i1 } %mul.lcssa, 0
  %.lhs.trunc = trunc nuw i64 %i.i to i32
  %.rhs.trunc = trunc i64 %i.k to i32
  %1 = udiv i32 %.lhs.trunc, %.rhs.trunc
  %.zext = zext i32 %1 to i64
  %i.t = udiv i64 %mul.val.le, %.zext
  %i.u = mul i64 %i.t, %.036.lcssa
  %i.v = trunc i64 %i.u to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.sink = phi i32 [ %i.v, %bb.e ], [ -1, %bb.d ]
  %i.w = getelementptr i8, ptr %i.b, i64 728
  store i32 %.sink, ptr %i.w, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(none)
declare dso_local i64 @gcd(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @snd_pcm_timer_init(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.snd_timer_id, align 4       ; 8 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !annotation !12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.b, align 4
  store i32 3, ptr %1, align 4
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 %i.e, ptr %i.f, align 4
  %i.g = getelementptr i8, ptr %i.c, i64 24
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store i32 %i.h, ptr %i.i, align 4
  %i.j = getelementptr i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8
  %i.l = shl i32 %i.k, 1
  %i.m = getelementptr i8, ptr %0, i64 60         ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 1
  %i.p = or disjoint i32 %i.o, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i32 %i.p, ptr %i.q, align 4
  %i.r = call i32 @snd_timer_new(ptr noundef %i.d, ptr noundef nonnull @.str.1, ptr noundef nonnull %1, ptr noundef nonnull %i.a) #13
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %i.a, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 96
  %i.v = load i32, ptr %i.m, align 4
  %i.w = icmp eq i32 %i.v, 0
  %.str.3..str.4.i = select i1 %i.w, ptr @.str.3, ptr @.str.4
  %i.x = load i32, ptr %i.f, align 4
  %i.y = load i32, ptr %i.i, align 4
  %i.z = load i32, ptr %i.q, align 4
  %i.aa = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %i.u, ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %.str.3..str.4.i, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %i.z) #13 ; 0 uses
  %i.ab = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(96) %i.ac, ptr noundef nonnull align 8 dereferenceable(96) @snd_pcm_timer, i64 96, i1 false)
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call i32 @snd_device_register(ptr noundef %i.ae, ptr noundef %i.ab) #13
  %i.ag = icmp slt i32 %i.af, 0
  %i.ah = load ptr, ptr %i.a, align 8             ; 3 uses
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void @snd_device_free(ptr noundef %i.aj, ptr noundef %i.ah) #13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ak = getelementptr i8, ptr %i.ah, i64 192
  store ptr %0, ptr %i.ak, align 8
  %i.al = load ptr, ptr %i.a, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 200
  store ptr @snd_pcm_timer_free, ptr %i.am, align 8
  %i.an = load ptr, ptr %i.a, align 8
  %i.ao = getelementptr i8, ptr %0, i64 200
  store ptr %i.an, ptr %i.ao, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @snd_timer_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @snd_device_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @snd_device_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal void @snd_pcm_timer_free(ptr nofree noundef readonly captures(none) %0) #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 200
  store ptr null, ptr %i.c, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @snd_pcm_timer_done(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 200        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @snd_device_free(ptr noundef %i.d, ptr noundef nonnull %i.b) #13
  store ptr null, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define internal range(i64 0, 4294967296) i64 @snd_pcm_timer_resolution(ptr nofree noundef readonly captures(none) %0) #7 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 192
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 728
  %i.f = load i32, ptr %i.e, align 8
  %i.g = zext i32 %i.f to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.h
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal noundef i32 @snd_pcm_timer_start(ptr nofree noundef readonly captures(none) %0) #8 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 208      ; 2 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = or i8 %i.d, 1
  store i8 %i.e, ptr %i.c, align 8
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal noundef i32 @snd_pcm_timer_stop(ptr nofree noundef readonly captures(none) %0) #8 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 208      ; 2 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, -2
  store i8 %i.e, ptr %i.c, align 8
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(none) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nofree noredzone nounwind null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
end_hunk_0
