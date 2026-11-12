Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/device?download=true
inline.NumInlined: 73
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@snd_hdac_is_supported_format:bb.a

bb.k:                                             ; preds = %bb.g
  %i.ac = and i32 %i.c, 524288
  %.not28 = icmp eq i32 %i.ac, 0
  br i1 %.not28, label %query_stream_param.exit, label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.ad = and i32 %i.c, 1048576
  %.not27 = icmp eq i32 %i.ad, 0
  br i1 %.not27, label %query_stream_param.exit, label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  br label %query_stream_param.exit

query_stream_param.exit:                          ; preds = %bb.b, %bb.e, %bb.g, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a, %bb.m
  %.021 = phi i1 [ false, %bb.c ], [ false, %bb.l ], [ true, %bb.m ], [ false, %bb.e ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.g ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.021
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 776        ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 3 uses
  %.not.i.i = icmp ult i32 %i.c, 16
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i16 %1, 128
  %.not18.i.i = icmp ult i32 %3, 4096
  %or.cond.i.i = and i1 %i.d, %.not18.i.i
  %.not19.i.i = icmp ult i32 %4, 65536
  %or.cond20.i.i = and i1 %or.cond.i.i, %.not19.i.i
  br i1 %or.cond20.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = zext i16 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef @.str.11, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %3, i32 noundef %4) #10
  br label %snd_hdac_make_cmd.exit.i

bb.d:                                             ; preds = %bb.b
  %i.f = zext nneg i16 %1 to i32
  %i.g = shl nuw i32 %i.c, 28
  %i.h = shl nuw nsw i32 %i.f, 20
  %i.i = or disjoint i32 %i.g, %i.h
  %i.j = shl nuw nsw i32 %3, 8
  %i.k = or disjoint i32 %i.i, %i.j
  %i.l = or i32 %i.k, %4
  br label %snd_hdac_make_cmd.exit.i

snd_hdac_make_cmd.exit.i:                         ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ -1, %bb.c ], [ %i.l, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !annotation !11
  %i.m = getelementptr i8, ptr %0, i64 848
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i7.i = icmp eq ptr %i.n, null
  br i1 %.not.i7.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %snd_hdac_make_cmd.exit.i
  %i.o = call i32 %i.n(ptr noundef %0, i32 noundef %.0.i.i, i32 noundef %2, ptr noundef nonnull %i.a) #8, !inline_history !0
  br label %codec_read.exit

bb.f:                                             ; preds = %snd_hdac_make_cmd.exit.i
  %i.p = getelementptr i8, ptr %0, i64 768
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i32, ptr %i.b, align 8
  %i.s = call i32 @snd_hdac_bus_exec_verb(ptr noundef %i.q, i32 noundef %i.r, i32 noundef %.0.i.i, ptr noundef nonnull %i.a) #8
  br label %codec_read.exit

codec_read.exit:                                  ; preds = %bb.e, %bb.f
  %.0.i8.i = phi i32 [ %i.o, %bb.e ], [ %i.s, %bb.f ]
  %.not.i = icmp eq i32 %.0.i8.i, 0
  %i.t = load i32, ptr %i.a, align 4
  %.0.i = select i1 %.not.i, i32 %i.t, i32 -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 776        ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %.not.i.i = icmp ult i32 %i.b, 16
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i16 %1, 128
  %.not18.i.i = icmp ult i32 %3, 4096
  %or.cond.i.i = and i1 %i.c, %.not18.i.i
  %.not19.i.i = icmp ult i32 %4, 65536
  %or.cond20.i.i = and i1 %or.cond.i.i, %.not19.i.i
  br i1 %or.cond20.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = zext i16 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef @.str.11, i32 noundef %i.b, i32 noundef %i.d, i32 noundef %3, i32 noundef %4) #10
  br label %snd_hdac_make_cmd.exit.i

bb.d:                                             ; preds = %bb.b
  %i.e = zext nneg i16 %1 to i32
  %i.f = shl nuw i32 %i.b, 28
  %i.g = shl nuw nsw i32 %i.e, 20
  %i.h = or disjoint i32 %i.f, %i.g
  %i.i = shl nuw nsw i32 %3, 8
  %i.j = or disjoint i32 %i.h, %i.i
  %i.k = or i32 %i.j, %4
  br label %snd_hdac_make_cmd.exit.i

snd_hdac_make_cmd.exit.i:                         ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ -1, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 848
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.i6.i = icmp eq ptr %i.m, null
  br i1 %.not.i6.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %snd_hdac_make_cmd.exit.i
  %i.n = tail call i32 %i.m(ptr noundef %0, i32 noundef %.0.i.i, i32 noundef %2, ptr noundef null) #8, !inline_history !25
  br label %codec_write.exit

bb.f:                                             ; preds = %snd_hdac_make_cmd.exit.i
  %i.o = getelementptr i8, ptr %0, i64 768
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load i32, ptr %i.a, align 8
  %i.r = tail call i32 @snd_hdac_bus_exec_verb(ptr noundef %i.p, i32 noundef %i.q, i32 noundef %.0.i.i, ptr noundef null) #8
  br label %codec_write.exit

codec_write.exit:                                 ; preds = %bb.e, %bb.f
  %.0.i7.i = phi i32 [ %i.n, %bb.e ], [ %i.r, %bb.f ]
  ret i32 %.0.i7.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @snd_hdac_check_power_state(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 776        ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 3 uses
  %.not.i.i = icmp ult i32 %i.c, 16
  %i.d = icmp ult i16 %1, 128
  %or.cond = and i1 %i.d, %.not.i.i
  %i.e = zext i16 %1 to i32                       ; 2 uses
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef @.str.11, i32 noundef %i.c, i32 noundef %i.e, i32 noundef 3845, i32 noundef 0) #10
  br label %snd_hdac_make_cmd.exit.i

bb.c:                                             ; preds = %bb.a
  %i.f = shl nuw i32 %i.c, 28
  %i.g = shl nuw nsw i32 %i.e, 20
  %i.h = or disjoint i32 %i.f, %i.g
  %i.i = or disjoint i32 %i.h, 984320
  br label %snd_hdac_make_cmd.exit.i

snd_hdac_make_cmd.exit.i:                         ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ -1, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !annotation !11
  %i.j = getelementptr i8, ptr %0, i64 848
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i7.i = icmp eq ptr %i.k, null
  br i1 %.not.i7.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %snd_hdac_make_cmd.exit.i
  %i.l = call i32 %i.k(ptr noundef %0, i32 noundef %.0.i.i, i32 noundef 0, ptr noundef nonnull %i.a) #8, !inline_history !0
  br label %codec_read.exit

bb.e:                                             ; preds = %snd_hdac_make_cmd.exit.i
  %i.m = getelementptr i8, ptr %0, i64 768
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load i32, ptr %i.b, align 8
  %i.p = call i32 @snd_hdac_bus_exec_verb(ptr noundef %i.n, i32 noundef %i.o, i32 noundef %.0.i.i, ptr noundef nonnull %i.a) #8
  br label %codec_read.exit

codec_read.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i8.i = phi i32 [ %i.l, %bb.d ], [ %i.p, %bb.e ]
  %.not.i = icmp eq i32 %.0.i8.i, 0
  %i.q = load i32, ptr %i.a, align 4
  %.0.i = select i1 %.not.i, i32 %i.q, i32 -1     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.r = and i32 %.0.i, 256
  %.not = icmp ne i32 %i.r, 0
  %i.s = lshr i32 %.0.i, 4
  %i.t = and i32 %i.s, 15
  %i.u = icmp eq i32 %i.t, %2
  %.0 = select i1 %.not, i1 true, i1 %i.u
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @snd_hdac_sync_power_state(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = load volatile i64, ptr @jiffies, align 64
  %i.c = getelementptr i8, ptr %0, i64 776        ; 4 uses
  %i.d = icmp ult i16 %1, 128
  %i.e = zext i16 %1 to i32                       ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 848        ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 768        ; 2 uses
  %.neg10 = sub i64 -500, %i.b                    ; 2 uses
  br i1 %i.d, label %.split.preheader, label %snd_hdac_make_cmd.exit.i.i.us

.split.preheader:                                 ; preds = %bb.a
  %3 = shl nuw nsw i32 %i.e, 20
  %invariant.op = or disjoint i32 %3, 984320
  br label %.split

snd_hdac_make_cmd.exit.i.i.us:                    ; preds = %bb.a, %bb.f
  %.011.us = phi i32 [ %i.v, %bb.f ], [ 0, %bb.a ]
  %i.h = load i32, ptr %i.c, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef @.str.11, i32 noundef %i.h, i32 noundef %i.e, i32 noundef 3845, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !annotation !11
  %i.i = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i7.i.i.us = icmp eq ptr %i.i, null
  br i1 %.not.i7.i.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %snd_hdac_make_cmd.exit.i.i.us
  %i.j = call i32 %i.i(ptr noundef %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %i.a) #8, !inline_history !26
  br label %snd_hdac_codec_read.exit.us

bb.c:                                             ; preds = %snd_hdac_make_cmd.exit.i.i.us
  %i.k = load ptr, ptr %i.g, align 8
  %i.l = load i32, ptr %i.c, align 8
  %i.m = call i32 @snd_hdac_bus_exec_verb(ptr noundef %i.k, i32 noundef %i.l, i32 noundef -1, ptr noundef nonnull %i.a) #8
  br label %snd_hdac_codec_read.exit.us

snd_hdac_codec_read.exit.us:                      ; preds = %bb.c, %bb.b
  %.0.i8.i.i.us = phi i32 [ %i.j, %bb.b ], [ %i.m, %bb.c ]
  %.not.i.i.us = icmp eq i32 %.0.i8.i.i.us, 0
  %i.n = load i32, ptr %i.a, align 4              ; 4 uses
  %.0.i.i.us = select i1 %.not.i.i.us, i32 %i.n, i32 -1 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.o = and i32 %.0.i.i.us, 256
  %.not.us = icmp eq i32 %i.o, 0
  br i1 %.not.us, label %bb.d, label %.split13.us

bb.d:                                             ; preds = %snd_hdac_codec_read.exit.us
  %i.p = lshr i32 %.0.i.i.us, 4
  %i.q = and i32 %i.p, 15
  %i.r = icmp eq i32 %i.q, %2
  br i1 %i.r, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load volatile i64, ptr @jiffies, align 64
  %i.t = add i64 %.neg10, %i.s
  %i.u = icmp sgt i64 %i.t, -1
  br i1 %i.u, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @msleep(i32 noundef 1) #8
  %i.v = add nuw nsw i32 %.011.us, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, 500
  br i1 %exitcond.not, label %.loopexit, label %snd_hdac_make_cmd.exit.i.i.us, !llvm.loop !27

.split:                                           ; preds = %.split.preheader, %bb.m
  %.011 = phi i32 [ %i.al, %bb.m ], [ 0, %.split.preheader ]
  %i.w = load i32, ptr %i.c, align 8              ; 3 uses
  %.not.i.i.i = icmp ult i32 %i.w, 16
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef @.str.11, i32 noundef %i.w, i32 noundef %i.e, i32 noundef 3845, i32 noundef 0) #10
  br label %snd_hdac_make_cmd.exit.i.i

bb.h:                                             ; preds = %.split
  %i.x = shl nuw i32 %i.w, 28
  %.reass = or disjoint i32 %i.x, %invariant.op
  br label %snd_hdac_make_cmd.exit.i.i

snd_hdac_make_cmd.exit.i.i:                       ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ -1, %bb.g ], [ %.reass, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !annotation !11
  %i.y = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i7.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i7.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %snd_hdac_make_cmd.exit.i.i
  %i.z = call i32 %i.y(ptr noundef %0, i32 noundef %.0.i.i.i, i32 noundef 0, ptr noundef nonnull %i.a) #8, !inline_history !26
  br label %snd_hdac_codec_read.exit

bb.j:                                             ; preds = %snd_hdac_make_cmd.exit.i.i
  %i.aa = load ptr, ptr %i.g, align 8
  %i.ab = load i32, ptr %i.c, align 8
  %i.ac = call i32 @snd_hdac_bus_exec_verb(ptr noundef %i.aa, i32 noundef %i.ab, i32 noundef %.0.i.i.i, ptr noundef nonnull %i.a) #8
  br label %snd_hdac_codec_read.exit

snd_hdac_codec_read.exit:                         ; preds = %bb.i, %bb.j
  %.0.i8.i.i = phi i32 [ %i.z, %bb.i ], [ %i.ac, %bb.j ]
  %.not.i.i = icmp eq i32 %.0.i8.i.i, 0
  %i.ad = load i32, ptr %i.a, align 4             ; 4 uses
  %.0.i.i = select i1 %.not.i.i, i32 %i.ad, i32 -1 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.ae = and i32 %.0.i.i, 256
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.k, label %.split13.us

.split13.us:                                      ; preds = %snd_hdac_codec_read.exit.us, %snd_hdac_codec_read.exit
  %.us-phi = phi i32 [ %.0.i.i, %snd_hdac_codec_read.exit ], [ %.0.i.i.us, %snd_hdac_codec_read.exit.us ]
  call void @msleep(i32 noundef 20) #8
  br label %.loopexit

bb.k:                                             ; preds = %snd_hdac_codec_read.exit
  %i.af = lshr i32 %.0.i.i, 4
  %i.ag = and i32 %i.af, 15
  %i.ah = icmp eq i32 %i.ag, %2
  br i1 %i.ah, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load volatile i64, ptr @jiffies, align 64
  %i.aj = add i64 %.neg10, %i.ai
  %i.ak = icmp sgt i64 %i.aj, -1
  br i1 %i.ak, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @msleep(i32 noundef 1) #8
  %i.al = add nuw nsw i32 %.011, 1                ; 2 uses
  %exitcond21.not = icmp eq i32 %i.al, 500
  br i1 %exitcond21.not, label %.loopexit, label %.split, !llvm.loop !27

.loopexit:                                        ; preds = %bb.f, %bb.e, %bb.d, %bb.m, %bb.k, %bb.l, %.split13.us
  %.1 = phi i32 [ %.us-phi, %.split13.us ], [ %i.ad, %bb.m ], [ %i.ad, %bb.l ], [ %i.ad, %bb.k ], [ %i.n, %bb.d ], [ %i.n, %bb.e ], [ %i.n, %bb.f ]
  ret i32 %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_init_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noredzone nounwind "no-builtin-wcslen" }
attributes #9 = { nounwind }
attributes #10 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #11 = { noredzone "no-builtin-wcslen" }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{null, ptr @snd_hdac_exec_verb}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5 = !{i32 1, !"Code Model", i32 2}
!6 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!7 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!8 = !{i32 1, !"override-stack-alignment", i32 8}
!9 = !{i32 4, !"SkipRaxSetup", i32 1}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{!"auto-init"}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{ptr @snd_hdac_read, ptr @snd_hdac_exec_verb}
!14 = !{!"branch_weights", i32 1, i32 127}
!15 = !{i64 2148856629, i64 2148856668, i64 2148856689, i64 2148856726, i64 2148856749, i64 2148856758}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{!"branch_weights", i32 127, i32 255873}
!18 = distinct !{!18, !12}
!19 = !{i64 2148840674, i64 2148840713, i64 2148840734, i64 2148840771, i64 2148840794, i64 2148840665}
!20 = !{ptr @snd_hdac_exec_verb}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = !{i64 23126}
!24 = !{i64 25680}
!25 = distinct !{null, ptr @snd_hdac_exec_verb}
!26 = distinct !{ptr @snd_hdac_codec_read, null, ptr @snd_hdac_exec_verb}
!27 = distinct !{!27, !12}
end_hunk_0
