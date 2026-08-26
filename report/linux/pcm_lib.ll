Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/pcm_lib?download=true
inline.NumInlined: 208
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@snd_pcm_hw_rule_msbits:bb.a
  %i.u = load i32, ptr %i.t, align 4              ; 3 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %i.f, 0
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.f)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g
  %i.y = phi i32 [ %i.x, %bb.g ], [ %i.f, %bb.e ], [ %i.u, %bb.f ]
  store i32 %i.y, ptr %i.t, align 4
  br label %snd_interval_single.exit.thread32

snd_interval_single.exit.thread32:                ; preds = %bb.c, %bb.b, %bb.d, %bb.h
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @snd_pcm_hw_constraint_step(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = inttoptr i64 %3 to ptr
  %i.b = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @snd_pcm_hw_rule_step, ptr noundef %i.a, i32 noundef %2, i32 noundef -1) #21
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal range(i32 -22, 2) i32 @snd_pcm_hw_rule_step(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = getelementptr i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr i8, ptr %0, i64 260
  %i.g = add i32 %i.e, -8
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr [12 x i8], ptr %i.f, i64 %i.h ; 4 uses
  %i.j = trunc i64 %i.c to i32                    ; 3 uses
  %i.k = load i32, ptr %i.i, align 4              ; 3 uses
  %i.l = urem i32 %i.k, %i.j                      ; 2 uses
  %.not.i = icmp eq i32 %i.l, 0
  %i.m = getelementptr i8, ptr %i.i, i64 8        ; 4 uses
  %i.n = load i8, ptr %i.m, align 4               ; 3 uses
  %i.o = and i8 %i.n, 1
  %.not19.i = icmp eq i8 %i.o, 0
  %or.cond28.i = select i1 %.not.i, i1 %.not19.i, i1 false
  br i1 %or.cond28.i, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %i.p = add i32 %i.k, %i.j
  %i.q = sub i32 %i.p, %i.l                       ; 2 uses
  store i32 %i.q, ptr %i.i, align 4
  %i.r = and i8 %i.n, -2                          ; 2 uses
  store i8 %i.r, ptr %i.m, align 4
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %bb.a
  %i.s = phi i32 [ %i.q, %._crit_edge.i ], [ %i.k, %bb.a ] ; 2 uses
  %i.t = phi i8 [ %i.r, %._crit_edge.i ], [ %i.n, %bb.a ] ; 3 uses
  %.0.i = phi i32 [ 1, %._crit_edge.i ], [ 0, %bb.a ]
  %i.u = getelementptr i8, ptr %i.i, i64 4        ; 2 uses
  %i.v = load i32, ptr %i.u, align 4              ; 3 uses
  %i.w = urem i32 %i.v, %i.j                      ; 2 uses
  %.not20.i = icmp eq i32 %i.w, 0
  %i.x = and i8 %i.t, 2
  %.not21.i = icmp eq i8 %i.x, 0
  %or.cond29.i = select i1 %.not20.i, i1 %.not21.i, i1 false
  br i1 %or.cond29.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = sub i32 %i.v, %i.w                       ; 2 uses
  store i32 %i.y, ptr %i.u, align 4
  %i.z = and i8 %i.t, -3                          ; 2 uses
  store i8 %i.z, ptr %i.m, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aa = phi i8 [ %i.z, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %i.ab = phi i32 [ %i.y, %bb.c ], [ %i.v, %bb.b ] ; 2 uses
  %.1.i = phi i32 [ 1, %bb.c ], [ %.0.i, %bb.b ]
  %i.ac = icmp ugt i32 %i.s, %i.ab
  br i1 %i.ac, label %snd_interval_checkempty.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp ne i32 %i.s, %i.ab
  %i.ae = and i8 %i.aa, 3
  %or.cond.i = icmp eq i8 %i.ae, 0
  %or.cond30.i = select i1 %i.ad, i1 true, i1 %or.cond.i
  br i1 %or.cond30.i, label %snd_interval_step.exit, label %snd_interval_checkempty.exit.thread.i

snd_interval_checkempty.exit.thread.i:            ; preds = %bb.e, %bb.d
  %i.af = or i8 %i.aa, 8
  store i8 %i.af, ptr %i.m, align 4
  br label %snd_interval_step.exit

snd_interval_step.exit:                           ; preds = %bb.e, %snd_interval_checkempty.exit.thread.i
  %.018.i = phi i32 [ -22, %snd_interval_checkempty.exit.thread.i ], [ %.1.i, %bb.e ]
  ret i32 %.018.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @snd_pcm_hw_constraint_pow2(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @snd_pcm_hw_rule_pow2, ptr noundef null, i32 noundef %2, i32 noundef -1) #21
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define internal range(i32 -22, 2) i32 @snd_pcm_hw_rule_pow2(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.snd_interval, align 4       ; 6 uses
  %i.a = getelementptr i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr i8, ptr %0, i64 260
  %i.d = add i32 %i.b, -8
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [12 x i8], ptr %i.c, i64 %i.e ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.g = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.f, align 4              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %snd_interval_test.exit.thread.us.i, %bb.a
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i, %snd_interval_test.exit.thread.us.i ], [ 0, %bb.a ] ; 2 uses
  %i.j = phi i32 [ %i.z, %snd_interval_test.exit.thread.us.i ], [ -1, %bb.a ] ; 5 uses
  %i.k = phi i32 [ %i.y, %snd_interval_test.exit.thread.us.i ], [ 0, %bb.a ] ; 5 uses
  %i.l = getelementptr [4 x i8], ptr @snd_pcm_hw_rule_pow2.pow2_sizes, i64 %indvars.iv47.i
  %i.m = load i32, ptr %i.l, align 4              ; 6 uses
  %i.n = icmp ugt i32 %i.i, %i.m
  br i1 %i.n, label %snd_interval_test.exit.thread.us.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i32 %i.i, %i.m
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.g, align 4
  %i.q = and i8 %i.p, 1
  %.not.i.us.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.us.i, label %bb.e, label %snd_interval_test.exit.thread.us.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = load i32, ptr %i.h, align 4              ; 2 uses
  %i.s = icmp ult i32 %i.r, %i.m
  br i1 %i.s, label %snd_interval_test.exit.thread.us.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp eq i32 %i.r, %i.m
  br i1 %i.t, label %snd_interval_test.exit.us.i, label %snd_interval_test.exit.thread33.us.i

snd_interval_test.exit.us.i:                      ; preds = %bb.f
  %i.u = load i8, ptr %i.g, align 4
  %i.v = and i8 %i.u, 2
  %.not35.us.i = icmp eq i8 %i.v, 0
  br i1 %.not35.us.i, label %snd_interval_test.exit.thread33.us.i, label %snd_interval_test.exit.thread.us.i

snd_interval_test.exit.thread33.us.i:             ; preds = %snd_interval_test.exit.us.i, %bb.f
  %i.w = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.m)
  %i.x = tail call i32 @llvm.umax.i32(i32 %i.k, i32 %i.m)
  br label %snd_interval_test.exit.thread.us.i

snd_interval_test.exit.thread.us.i:               ; preds = %snd_interval_test.exit.thread33.us.i, %snd_interval_test.exit.us.i, %bb.e, %bb.d, %bb.b
  %i.y = phi i32 [ %i.k, %bb.b ], [ %i.k, %bb.d ], [ %i.k, %bb.e ], [ %i.k, %snd_interval_test.exit.us.i ], [ %i.x, %snd_interval_test.exit.thread33.us.i ] ; 2 uses
  %i.z = phi i32 [ %i.j, %bb.b ], [ %i.j, %bb.d ], [ %i.j, %bb.e ], [ %i.j, %snd_interval_test.exit.us.i ], [ %i.w, %snd_interval_test.exit.thread33.us.i ] ; 2 uses
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1 ; 2 uses
  %exitcond51.not.i = icmp eq i64 %indvars.iv.next48.i, 31
  br i1 %exitcond51.not.i, label %snd_interval_list.exit, label %bb.b, !llvm.loop !25

snd_interval_list.exit:                           ; preds = %snd_interval_test.exit.thread.us.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.ab, align 4, !annotation !17
  store i32 %i.z, ptr %2, align 4
  store i32 %i.y, ptr %i.aa, align 4
  %i.ac = call i32 @snd_interval_refine(ptr noundef %i.f, ptr noundef nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i32 %i.ac
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @snd_pcm_hw_rule_noresample(ptr nofree noundef captures(none) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %0, i32 noundef 1, i32 noundef 11, ptr noundef nonnull @snd_pcm_hw_rule_noresample_func, ptr noundef %i.b, i32 noundef 11, i32 noundef -1) #21
  ret i32 %i.c
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal range(i32 -22, 2) i32 @snd_pcm_hw_rule_noresample_func(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.snd_interval, align 4       ; 6 uses
  %i.a = getelementptr i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = trunc i64 %i.c to i32                    ; 12 uses
  %i.e = getelementptr i8, ptr %0, i64 296        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.f = getelementptr i8, ptr %0, i64 304        ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 300        ; 2 uses
  %i.h = load i32, ptr %i.e, align 4              ; 2 uses
  %i.i = icmp ugt i32 %i.h, %i.d
  br i1 %i.i, label %snd_interval_list.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.j = icmp eq i32 %i.h, %i.d
  br i1 %i.j, label %.split.split.us, label %.split.split

.split.split.us:                                  ; preds = %.split
  %i.k = load i8, ptr %i.f, align 4               ; 2 uses
  %i.l = and i8 %i.k, 1
  %.not.i.us.i.us = icmp eq i8 %i.l, 0
  br i1 %.not.i.us.i.us, label %.split.split.us.split.us, label %snd_interval_list.exit

.split.split.us.split.us:                         ; preds = %.split.split.us
  %i.m = load i32, ptr %i.g, align 4              ; 2 uses
  %i.n = icmp ult i32 %i.m, %i.d
  br i1 %i.n, label %snd_interval_list.exit, label %.split.split.us.split.us.split.split.us

.split.split.us.split.us.split.split.us:          ; preds = %.split.split.us.split.us
  %3 = icmp ne i32 %i.m, %i.d
  %i.o = and i8 %i.k, 2
  %.not35.us.i.us.us.us = icmp eq i8 %i.o, 0
  %or.cond = or i1 %3, %.not35.us.i.us.us.us      ; 2 uses
  %spec.select.a = select i1 %or.cond, i32 %i.d, i32 0
  %spec.select60 = select i1 %or.cond, i32 %i.d, i32 -1
  br label %snd_interval_list.exit

.split.split:                                     ; preds = %.split
  %i.p = load i32, ptr %i.g, align 4              ; 2 uses
  %i.q = icmp ult i32 %i.p, %i.d
  br i1 %i.q, label %snd_interval_list.exit, label %.split.split.split

.split.split.split:                               ; preds = %.split.split
  %i.r = icmp eq i32 %i.p, %i.d
  br i1 %i.r, label %.split.split.split.split.us, label %snd_interval_list.exit

.split.split.split.split.us:                      ; preds = %.split.split.split
  %i.s = load i8, ptr %i.f, align 4
  %i.t = and i8 %i.s, 2
  %.not35.us.i.us23 = icmp eq i8 %i.t, 0          ; 2 uses
  %spec.select61 = select i1 %.not35.us.i.us23, i32 %i.d, i32 0
  %spec.select62 = select i1 %.not35.us.i.us23, i32 %i.d, i32 -1
  br label %snd_interval_list.exit

snd_interval_list.exit:                           ; preds = %.split.split.us.split.us.split.split.us, %.split.split.split.split.us, %.split.split.split, %.split.split, %.split.split.us, %.split.split.us.split.us, %bb.a
  %.us-phi = phi i32 [ 0, %.split.split ], [ 0, %.split.split.us.split.us ], [ %spec.select61, %.split.split.split.split.us ], [ 0, %bb.a ], [ %i.d, %.split.split.split ], [ %spec.select.a, %.split.split.us.split.us.split.split.us ], [ 0, %.split.split.us ]
  %.us-phi4 = phi i32 [ -1, %.split.split ], [ -1, %.split.split.us.split.us ], [ %spec.select62, %.split.split.split.split.us ], [ -1, %bb.a ], [ %i.d, %.split.split.split ], [ %spec.select60, %.split.split.us.split.us.split.split.us ], [ -1, %.split.split.us ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.v, align 4, !annotation !17
  store i32 %.us-phi4, ptr %2, align 4
  store i32 %.us-phi, ptr %i.u, align 4
  %i.w = call i32 @snd_interval_refine(ptr noundef %i.e, ptr noundef nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i32 %i.w
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define dso_local void @_snd_pcm_hw_params_any(ptr nofree noundef captures(none) initializes((0, 608)) %0) #6 align 16 prefalign(16) {
_snd_pcm_hw_param_any.exit:
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(608) %0, i8 0, i64 608, i1 false)
  %i.a = getelementptr i8, ptr %0, i64 4
  %i.b = getelementptr i8, ptr %0, i64 516
  store i64 -1, ptr %i.a, align 4
  %i.c = getelementptr i8, ptr %0, i64 36
  store i64 -1, ptr %i.c, align 4
  %i.d = getelementptr i8, ptr %0, i64 68
  store i64 -1, ptr %i.d, align 4
  %i.e = getelementptr i8, ptr %0, i64 512
  %i.f = getelementptr i8, ptr %0, i64 260
  store i32 0, ptr %i.f, align 4
  %i.g = getelementptr i8, ptr %0, i64 264
  store i32 -1, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %0, i64 272
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %0, i64 276
  store i32 -1, ptr %i.i, align 4
  %i.j = getelementptr i8, ptr %0, i64 284
  store i32 0, ptr %i.j, align 4
  %i.k = getelementptr i8, ptr %0, i64 288
  store i32 -1, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %0, i64 296
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %0, i64 300
  store i32 -1, ptr %i.m, align 4
  %i.n = getelementptr i8, ptr %0, i64 308
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %0, i64 312
  store i32 -1, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %0, i64 320
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %0, i64 324
  store i32 -1, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %0, i64 332
  store i32 0, ptr %i.r, align 4
  %i.s = getelementptr i8, ptr %0, i64 336
  store i32 -1, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %0, i64 344
  store i32 0, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %0, i64 348
  store i32 -1, ptr %i.u, align 4
  %i.v = getelementptr i8, ptr %0, i64 356
  store i32 0, ptr %i.v, align 4
  %i.w = getelementptr i8, ptr %0, i64 360
  store i32 -1, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %0, i64 368
  store i32 0, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %0, i64 372
  store i32 -1, ptr %i.y, align 4
  %i.z = getelementptr i8, ptr %0, i64 380
  store i32 0, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %0, i64 388       ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = getelementptr i8, ptr %0, i64 384
  store i32 -1, ptr %i.ac, align 8
  %i.ad = and i8 %i.ab, -16
  store i8 %i.ad, ptr %i.aa, align 4
  %i.ae = getelementptr i8, ptr %0, i64 392
  store i32 0, ptr %i.ae, align 8
  %i.af = getelementptr i8, ptr %0, i64 400       ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8
  %i.ah = getelementptr i8, ptr %0, i64 396
  store i32 -1, ptr %i.ah, align 4
  %i.ai = and i8 %i.ag, -16
  store i8 %i.ai, ptr %i.af, align 8
  store i32 1048327, ptr %i.b, align 4
  store i32 1048327, ptr %i.e, align 8
  %i.aj = getelementptr i8, ptr %0, i64 520
  store i32 -1, ptr %i.aj, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define dso_local i32 @snd_pcm_hw_param_value(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) #10 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ugt i32 %1, 2
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 4
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr [32 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.e)
  %.not13.i = icmp samesign ult i32 %i.f, 2
  br i1 %.not13.i, label %bb.c, label %snd_mask_value.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.d, i64 4        ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not.1.i = icmp eq i32 %i.h, 0
  br i1 %.not.1.i, label %snd_mask_single.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.h)
  %.not13.1.i = icmp samesign ult i32 %i.i, 2
  %or.cond.1.i = and i1 %.not.i, %.not13.1.i
  br i1 %or.cond.1.i, label %snd_mask_single.exit, label %snd_mask_value.exit

snd_mask_single.exit:                             ; preds = %bb.d, %bb.c
  %.not21 = icmp eq ptr %2, null
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %snd_mask_single.exit
  store i32 0, ptr %2, align 4
  %.pre = load i32, ptr %i.d, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %snd_mask_single.exit
  %i.j = phi i32 [ %.pre, %bb.e ], [ %i.e, %snd_mask_single.exit ] ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.h
  %.014.lcssa.wide.i.i = phi i32 [ 0, %bb.f ], [ 32, %bb.h ]
  %.lcssa.i.i = phi i32 [ %i.j, %bb.f ], [ %i.o, %bb.h ]
  %i.k = zext i32 %.lcssa.i.i to i64
  %i.l = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 4294967296) %i.k) #24, !srcloc !31
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %.014.lcssa.wide.i.i, %i.m
  br label %snd_mask_value.exit

bb.h:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.g, align 4              ; 2 uses
  %.not.1.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.1.i.i, label %snd_mask_value.exit, label %bb.g

bb.i:                                             ; preds = %bb.a
  %i.p = add i32 %1, -8                           ; 2 uses
  %i.q = icmp ugt i32 %i.p, 11
  br i1 %i.q, label %snd_mask_value.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr i8, ptr %0, i64 260
  %i.s = zext nneg i32 %i.p to i64
  %i.t = getelementptr [12 x i8], ptr %i.r, i64 %i.s ; 6 uses
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 4
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %snd_interval_single.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = add i32 %i.u, 1
  %i.z = icmp eq i32 %i.y, %i.w
  br i1 %i.z, label %bb.l, label %snd_mask_value.exit

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %i.t, i64 8
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = and i8 %i.ab, 3
  %or.cond = icmp eq i8 %i.ac, 0
  br i1 %or.cond, label %snd_mask_value.exit, label %snd_interval_single.exit.thread

snd_interval_single.exit.thread:                  ; preds = %bb.l, %bb.j
  %.not19 = icmp eq ptr %2, null
  br i1 %.not19, label %bb.n, label %bb.m

bb.m:                                             ; preds = %snd_interval_single.exit.thread
  %i.ad = getelementptr i8, ptr %i.t, i64 8
  %i.ae = load i8, ptr %i.ad, align 4
  %i.af = and i8 %i.ae, 1
  %i.ag = zext nneg i8 %i.af to i32
  store i32 %i.ag, ptr %2, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %snd_interval_single.exit.thread
  %i.ah = getelementptr i8, ptr %i.t, i64 8
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = and i8 %i.ai, 3
  %or.cond.i = icmp eq i8 %i.aj, 1
  %.0.in.idx.i = select i1 %or.cond.i, i64 4, i64 0
  %.0.in.i = getelementptr i8, ptr %i.t, i64 %.0.in.idx.i
  %.0.i = load i32, ptr %.0.in.i, align 4
  br label %snd_mask_value.exit

snd_mask_value.exit:                              ; preds = %bb.l, %bb.k, %bb.d, %bb.b, %bb.h, %bb.g, %bb.i, %bb.n
  %.2 = phi i32 [ -22, %bb.l ], [ -22, %bb.d ], [ -22, %bb.i ], [ %.0.i, %bb.n ], [ %i.n, %bb.g ], [ 0, %bb.h ], [ -22, %bb.b ], [ -22, %bb.k ]
  ret i32 %.2
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define dso_local void @_snd_pcm_hw_param_setempty(ptr nofree noundef captures(none) %0, i32 noundef %1) #6 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ugt i32 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b
end_hunk_0
