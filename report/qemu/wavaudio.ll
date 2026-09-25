Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/wavaudio?download=true
inline.NumInlined: 7
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.audsettings = type { i32, i32, i32, i8 }

@.str = private unnamed_addr constant [10 x i8] c"audio-wav\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"audio-mixeng-backend\00", align 1
@audio_types = internal constant [1 x { ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr }] [{ ptr, ptr, i64, i64, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i64 128, i64 0, ptr null, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, i64 0, ptr @audio_wav_class_init, ptr null, ptr null, ptr null }], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"../audio/audio_int.h\00", align 1
@__func__.AUDIO_MIXENG_BACKEND_CLASS = private unnamed_addr constant [27 x i8] c"AUDIO_MIXENG_BACKEND_CLASS\00", align 1
@__const.wav_init_out.hdr = private unnamed_addr constant [44 x i8] c"RIFF\00\00\00\00WAVEfmt \10\00\00\00\01\00\02\00D\AC\00\00\10\B1\02\00\04\00\10\00data\00\00\00\00", align 16
@.str.4 = private unnamed_addr constant [9 x i8] c"qemu.wav\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"wav: WAVE files cannot handle 32-bit formats\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"wav: WAVE files cannot handle float formats\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"wav: failed to open wave file '%s': %s\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"wav: failed to write header: %s\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"wav: fseek to rlen failed: %s\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"wav: failed to write rlen: %s\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"wav: fseek to dlen failed: %s\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"wav: failed to write dlen: %s\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"wav: fclose failed: %s\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"bytes % hw->info.bytes_per_frame == 0\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"../audio/wavaudio.c\00", align 1
@__PRETTY_FUNCTION__.wav_write_out = private unnamed_addr constant [51 x i8] c"size_t wav_write_out(HWVoiceOut *, void *, size_t)\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"wav: fwrite of %ld bytes failed: %s\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_do_qemu_init_audio_types, ptr null }]

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_do_qemu_init_audio_types() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @do_qemu_init_audio_types, i32 noundef 4) #8
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_audio_types() #0 {
bb.a:
  tail call void @type_register_static_array(ptr noundef nonnull @audio_types, i32 noundef 1) #8
  ret void
}

declare void @type_register_static_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @audio_wav_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef 283, ptr noundef nonnull @__func__.AUDIO_MIXENG_BACKEND_CLASS) #8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i32 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 244
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store i64 192, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store ptr @wav_init_out, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store ptr @wav_fini_out, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store ptr @wav_write_out, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store ptr @audio_generic_buffer_get_free, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store ptr @audio_generic_run_buffer_out, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store ptr @wav_enable_out, ptr %i.k, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 1) i32 @wav_init_out(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca [44 x i8], align 16               ; 11 uses
  %2 = alloca %struct.audsettings, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.a, ptr noundef nonnull align 16 dereferenceable(44) @__const.wav_init_out.hdr, i64 44, i1 false)
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call { i64, i64 } @audiodev_to_audsettings(ptr noundef %i.f) #8 ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0        ; 2 uses
  store i64 %i.h, ptr %2, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = extractvalue { i64, i64 } %i.g, 1        ; 2 uses
  store i64 %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not = icmp eq ptr %i.l, null
  %..str.4 = select i1 %.not, ptr @.str.4, ptr %i.l ; 2 uses
  %.mask = and i64 %i.h, -4294967296
  %i.m = icmp eq i64 %.mask, 8589934592
  %i.n = zext i1 %i.m to i32
  %i.o = trunc i64 %i.j to i32
  switch i32 %i.o, label %bb.e [
    i32 1, label %le_store.exit
    i32 0, label %le_store.exit
    i32 3, label %bb.b
    i32 2, label %bb.b
    i32 5, label %bb.c
    i32 4, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %le_store.exit

bb.c:                                             ; preds = %bb.a, %bb.a
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.5) #8
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.6) #8
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  tail call void @abort() #9
  unreachable

le_store.exit:                                    ; preds = %bb.a, %bb.a, %bb.b
  %.not23 = phi i8 [ 16, %bb.b ], [ 8, %bb.a ], [ 8, %bb.a ]
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i8 %.not23, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @audio_pcm_init_info(ptr noundef nonnull %i.r, ptr noundef nonnull %2) #8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 1024, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %i.w = trunc i32 %i.v to i8
  store i8 %i.w, ptr %i.t, align 2
  %i.x = lshr i32 %i.v, 8
  %i.y = trunc i32 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i32, ptr %i.ab, align 8            ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ae = add nuw nsw i32 %.0, %i.n               ; 2 uses
  %i.af = shl i32 %i.ac, %i.ae
  store i32 %i.af, ptr %i.ad, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ah = shl nuw nsw i32 1, %i.ae
  %i.ai = trunc nuw nsw i32 %i.ah to i8
  store i8 %i.ai, ptr %i.ag, align 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 0, ptr %i.aj, align 1
  %i.ak = call noalias ptr @fopen64(ptr noundef nonnull %..str.4, ptr noundef nonnull @.str.7) ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.ak, ptr %i.al, align 8
  %.not24 = icmp eq ptr %i.ak, null
  br i1 %.not24, label %bb.f, label %bb.g

bb.f:                                             ; preds = %le_store.exit
  %i.am = tail call ptr @__errno_location() #10
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = call ptr @strerror(i32 noundef %i.an) #8
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.8, ptr noundef nonnull %..str.4, ptr noundef %i.ao) #8
  br label %bb.j

bb.g:                                             ; preds = %le_store.exit
  %i.ap = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 44, i64 noundef 1, ptr noundef nonnull %i.ak)
  %.not25 = icmp eq i64 %i.ap, 1
  br i1 %.not25, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = tail call ptr @__errno_location() #10
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = call ptr @strerror(i32 noundef %i.ar) #8
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.9, ptr noundef %i.as) #8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @audio_rate_start(ptr noundef nonnull %i.at) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.c
  %.021 = phi i32 [ -1, %bb.h ], [ 0, %bb.i ], [ -1, %bb.f ], [ -1, %bb.c ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.021
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @wav_fini_out(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.h, label %le_store.exit.preheader

le_store.exit.preheader:                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = mul i32 %i.h, %i.f                       ; 2 uses
  %i.j = add i32 %i.i, 36
  store i32 %i.j, ptr %i.a, align 4
  store i32 %i.i, ptr %i.b, align 4
  %i.k = tail call i32 @fseek(ptr noundef nonnull %i.d, i64 noundef 4, i32 noundef 0)
  %.not12 = icmp eq i32 %i.k, 0
  br i1 %.not12, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %le_store.exit.preheader
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1, ptr noundef %i.l)
  %.not13 = icmp eq i64 %i.m, 1
  br i1 %.not13, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = tail call i32 @fseek(ptr noundef %i.n, i64 noundef 32, i32 noundef 1)
  %.not14 = icmp eq i32 %i.o, 0
  br i1 %.not14, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.c, align 8
  %i.q = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1, ptr noundef %i.p)
  %.not15 = icmp eq i64 %i.q, 1
  br i1 %.not15, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c, %bb.b, %le_store.exit.preheader
  %.str.13.sink = phi ptr [ @.str.12, %bb.c ], [ @.str.11, %bb.b ], [ @.str.10, %le_store.exit.preheader ], [ @.str.13, %bb.d ]
  %i.r = tail call ptr @__errno_location() #10
  %i.s = load i32, ptr %i.r, align 4
  %i.t = tail call ptr @strerror(i32 noundef %i.s) #8
  tail call void (ptr, ...) @error_report(ptr noundef nonnull %.str.13.sink, ptr noundef %i.t) #8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %i.u = load ptr, ptr %i.c, align 8
  %i.v = tail call i32 @fclose(ptr noundef %i.u)
  %.not16 = icmp eq i32 %i.v, 0
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = tail call ptr @__errno_location() #10
  %i.x = load i32, ptr %i.w, align 4
  %i.y = tail call ptr @strerror(i32 noundef %i.x) #8
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.14, ptr noundef %i.y) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr null, ptr %i.c, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @wav_write_out(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = tail call i64 @audio_rate_get_bytes(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %2) #8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = sext i32 %i.e to i64
  %i.g = srem i64 %i.c, %i.f
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 51, ptr noundef nonnull @__PRETTY_FUNCTION__.wav_write_out) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i64 @fwrite(ptr noundef %1, i64 noundef %i.c, i64 noundef 1, ptr noundef %i.j)
  %.not14 = icmp eq i64 %i.k, 1
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @__errno_location() #10
  %i.m = load i32, ptr %i.l, align 4
  %i.n = tail call ptr @strerror(i32 noundef %i.m) #8
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.17, i64 noundef %i.c, ptr noundef %i.n) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.o = load i32, ptr %i.d, align 4
  %i.p = sext i32 %i.o to i64
  %i.q = sdiv i64 %i.c, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8
  %i.t = trunc i64 %i.q to i32
  %i.u = add i32 %i.s, %i.t
  store i32 %i.u, ptr %i.r, align 8
  ret i64 %i.c
}

declare i64 @audio_generic_buffer_get_free(ptr noundef) #1

declare void @audio_generic_run_buffer_out(ptr noundef) #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @wav_enable_out(ptr noundef %0, i1 noundef zeroext %1) #0 {
bb.a:
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @audio_rate_start(ptr noundef nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare { i64, i64 } @audiodev_to_audsettings(ptr noundef) local_unnamed_addr #1

declare void @error_report(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

declare void @audio_pcm_init_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

declare void @audio_rate_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

declare i64 @audio_rate_get_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
end_hunk_0
