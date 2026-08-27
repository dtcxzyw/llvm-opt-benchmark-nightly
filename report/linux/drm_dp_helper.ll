Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/drm_dp_helper?download=true
inline.NumInlined: 307
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@drm_dp_link_power_up:bb.a

bb.f:                                             ; preds = %bb.d
  call void @usleep_range_state(i64 noundef 1000, i64 noundef 2000, i32 noundef 2) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.f ], [ %i.f, %bb.c ], [ %i.l, %bb.e ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @drm_dp_link_power_down(ptr noundef %0, i8 noundef zeroext %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = icmp ult i8 %1, 17
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 1, !annotation !17
  %i.d = call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 1536, ptr noundef nonnull %i.b, i64 noundef 1) #17 ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = trunc nsw i64 %i.d to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = load i8, ptr %i.b, align 1
  %i.h = and i8 %i.g, -4
  %i.i = or disjoint i8 %i.h, 2                   ; 2 uses
  store i8 %i.i, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.i, ptr %i.a, align 1
  %i.j = call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 1536, ptr noundef nonnull %i.a, i64 noundef 1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %spec.select9 = call i64 @llvm.smin.i64(i64 %i.j, i64 0)
  %spec.select = trunc nsw i64 %spec.select9 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ %i.f, %bb.c ], [ %spec.select, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @drm_dp_dpcd_write_payload(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [3 x i8], align 1                 ; 6 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i8 0, ptr %i.c, align 1, !annotation !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 1, ptr %i.a, align 1
  %i.d = call i64 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef range(i32 -2147483381, 12677) 704, ptr noundef nonnull %i.a, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = trunc i32 %1 to i8
  store i8 %i.e, ptr %i.b, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %2, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %3, ptr %i.g, align 1
  %i.h = call i64 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 448, ptr noundef nonnull %i.b, i64 noundef 3) #17 ; 3 uses
  %i.i = icmp slt i64 %i.h, 0
  %i.j = trunc nsw i64 %i.h to i32
  %i.k = and i64 %i.h, 4294967295
  %i.l = icmp samesign ult i64 %i.k, 3
  %..i = select i1 %i.l, i32 -71, i32 0
  %.0.i = select i1 %i.i, i32 %i.j, i32 %..i      ; 3 uses
  %i.m = icmp slt i32 %.0.i, 0
  br i1 %i.m, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %0, i64 1080
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.b, %bb.c
  %i.r = phi ptr [ %i.q, %bb.c ], [ null, %bb.b ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.r, i32 noundef 2, ptr noundef nonnull @.str.15, i32 noundef %.0.i) #19
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %bb.g
  %.0 = phi i32 [ %i.ae, %bb.g ], [ 0, %bb.a ]    ; 2 uses
  %i.s = call i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 704, ptr noundef nonnull %i.c, i64 noundef 1) #17 ; 2 uses
  %i.t = icmp sgt i64 %i.s, -1
  br i1 %i.t, label %bb.d, label %drm_dp_dpcd_read_byte.exit

bb.d:                                             ; preds = %.preheader
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %drm_dp_dpcd_read_byte.exit.thread, label %drm_dp_dpcd_read_byte.exit.thread26

drm_dp_dpcd_read_byte.exit:                       ; preds = %.preheader
  %i.v = call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 704, ptr noundef nonnull %i.c, i64 noundef 1) #17 ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %drm_dp_dpcd_read_byte.exit.thread.split.loop.exit29, label %drm_dp_dpcd_read_byte.exit.thread26

drm_dp_dpcd_read_byte.exit.thread.split.loop.exit29: ; preds = %drm_dp_dpcd_read_byte.exit
  %spec.select.i.le = trunc nsw i64 %i.v to i32
  br label %drm_dp_dpcd_read_byte.exit.thread

drm_dp_dpcd_read_byte.exit.thread:                ; preds = %bb.d, %drm_dp_dpcd_read_byte.exit.thread.split.loop.exit29
  %.018.i.i25 = phi i32 [ %spec.select.i.le, %drm_dp_dpcd_read_byte.exit.thread.split.loop.exit29 ], [ -71, %bb.d ] ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 1080
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i20 = icmp eq ptr %i.y, null
  br i1 %.not.i20, label %__drm_to_dev.exit21, label %bb.e

bb.e:                                             ; preds = %drm_dp_dpcd_read_byte.exit.thread
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  br label %__drm_to_dev.exit21

__drm_to_dev.exit21:                              ; preds = %drm_dp_dpcd_read_byte.exit.thread, %bb.e
  %i.ab = phi ptr [ %i.aa, %bb.e ], [ null, %drm_dp_dpcd_read_byte.exit.thread ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ab, i32 noundef 2, ptr noundef nonnull @.str.16, i32 noundef %.018.i.i25) #19
  br label %.loopexit

drm_dp_dpcd_read_byte.exit.thread26:              ; preds = %bb.d, %drm_dp_dpcd_read_byte.exit
  %i.ac = load i8, ptr %i.c, align 1              ; 2 uses
  %i.ad = and i8 %i.ac, 1
  %.not = icmp eq i8 %i.ad, 0
  br i1 %.not, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %drm_dp_dpcd_read_byte.exit.thread26
  %exitcond.not = icmp eq i32 %.0, 19
  br i1 %exitcond.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = add nuw nsw i32 %.0, 1
  call void @usleep_range_state(i64 noundef 10000, i64 noundef 20000, i32 noundef 2) #19
  br label %.preheader

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %0, i64 1080
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i22 = icmp eq ptr %i.ag, null
  br i1 %.not.i22, label %__drm_to_dev.exit23, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  br label %__drm_to_dev.exit23

__drm_to_dev.exit23:                              ; preds = %bb.h, %bb.i
  %i.aj = phi ptr [ %i.ai, %bb.i ], [ null, %bb.h ]
  %i.ak = zext i8 %i.ac to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.aj, i32 noundef 2, ptr noundef nonnull @.str.17, i32 noundef %i.ak) #19
  br label %.loopexit

.loopexit:                                        ; preds = %drm_dp_dpcd_read_byte.exit.thread26, %__drm_to_dev.exit23, %__drm_to_dev.exit21, %__drm_to_dev.exit
  %.015 = phi i32 [ %.0.i, %__drm_to_dev.exit ], [ %.018.i.i25, %__drm_to_dev.exit21 ], [ -22, %__drm_to_dev.exit23 ], [ 0, %drm_dp_dpcd_read_byte.exit.thread26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %.015
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @drm_dp_dpcd_clear_payload(ptr noundef %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @drm_dp_dpcd_write_payload(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 63) #17
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @drm_dp_dpcd_poll_act_handled(ptr noundef %0, i32 noundef %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %.not = icmp eq i32 %1, 0
  %. = select i1 %.not, i32 3000, i32 %1          ; 2 uses
  %i.b = sext i32 %. to i64
  %i.c = tail call i64 @ktime_get() #19
  %i.d = mul nsw i64 %i.b, 1000000
  %i.e = add i64 %i.c, %i.d
  %i.f = tail call i32 @__SCT__might_resched() #19 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.g = call i64 @ktime_get() #19
  %i.h = icmp sgt i64 %i.g, %i.e
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1, !annotation !17
  %i.i = call i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 704, ptr noundef nonnull %i.a, i64 noundef 1) #17 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  br i1 %i.j, label %.lr.ph.i.preheader.i.i, label %bb.c

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %2 = icmp eq i64 %i.i, 0
  %..i.i.i = select i1 %2, i32 -71, i32 0
  br label %read_payload_update_status.exit

bb.c:                                             ; preds = %bb.b
  %3 = call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 704, ptr noundef nonnull %i.a, i64 noundef 1) #17
  %spec.select4.i.i = call i64 @llvm.smin.i64(i64 %3, i64 0)
  %spec.select.i.i = trunc nsw i64 %spec.select4.i.i to i32
  br label %read_payload_update_status.exit

read_payload_update_status.exit:                  ; preds = %.lr.ph.i.preheader.i.i, %bb.c
  %.018.i.i.i = phi i32 [ %..i.i.i, %.lr.ph.i.preheader.i.i ], [ %spec.select.i.i, %bb.c ] ; 4 uses
  %i.k = icmp slt i32 %.018.i.i.i, 0              ; 3 uses
  %i.l = load i8, ptr %i.a, align 1
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %.0.i32 = select i1 %i.k, i32 %.018.i.i.i, i32 %i.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.n = and i32 %.0.i32, -2147483646
  %or.cond.not = icmp ne i32 %i.n, 0              ; 2 uses
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.h
  br i1 %brmerge, label %bb.e, label %bb.d

bb.d:                                             ; preds = %read_payload_update_status.exit
  call void @usleep_range_state(i64 noundef 51, i64 noundef 200, i32 noundef 2) #19
  call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !31
  br label %bb.b

bb.e:                                             ; preds = %read_payload_update_status.exit
  %or.cond3.not = or i1 %i.k, %or.cond.not
  br i1 %or.cond3.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %0, i64 1080
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.f, %bb.g
  %i.s = phi ptr [ %i.r, %bb.g ], [ null, %bb.f ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.s, ptr noundef nonnull @.str.18, i32 noundef %., i32 noundef %i.m) #20
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr i8, ptr %0, i64 1080
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not.i33 = icmp eq ptr %i.u, null
  br i1 %.not.i33, label %__drm_to_dev.exit34, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  br label %__drm_to_dev.exit34

__drm_to_dev.exit34:                              ; preds = %bb.i, %bb.j
  %i.x = phi ptr [ %i.w, %bb.j ], [ null, %bb.i ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.x, i32 noundef 2, ptr noundef nonnull @.str.19, i32 noundef %.018.i.i.i) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %__drm_to_dev.exit34, %__drm_to_dev.exit
  %.0 = phi i32 [ -22, %__drm_to_dev.exit ], [ %.018.i.i.i, %__drm_to_dev.exit34 ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #6

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local zeroext i1 @drm_dp_downstream_is_type(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i8 noundef zeroext %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 5
  %.val = load i8, ptr %i.a, align 1
  %i.b = trunc i8 %.val to i1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1
  %i.d = icmp ugt i8 %i.c, 16
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %1, align 1
  %i.f = and i8 %i.e, 7
  %i.g = icmp eq i8 %i.f, %2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.g, %bb.c ]
  ret i1 %i.h
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @drm_dp_downstream_is_tmds(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #3 align 16 prefalign(16) {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = icmp ult i8 %i.a, 17
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 5
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 6
  %cond = icmp eq i8 %i.e, 4
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = load i8, ptr %1, align 1
  %i.g = and i8 %i.f, 7
  switch i8 %i.g, label %bb.g [
    i8 5, label %bb.d
    i8 2, label %is_edid_digital_input_dp.exit.thread
    i8 3, label %is_edid_digital_input_dp.exit.thread
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @drm_edid_raw(ptr noundef %2) #19 ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %is_edid_digital_input_dp.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.h, i64 19
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp ugt i8 %i.j, 3
  br i1 %i.k, label %bb.f, label %is_edid_digital_input_dp.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %i.h, i64 20
  %i.m = load i8, ptr %i.l, align 1
  %i.n = and i8 %i.m, -121
  %or.cond = icmp eq i8 %i.n, -123
  br i1 %or.cond, label %bb.g, label %is_edid_digital_input_dp.exit.thread

is_edid_digital_input_dp.exit.thread:             ; preds = %bb.d, %bb.e, %bb.f, %bb.c, %bb.c
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.b, %is_edid_digital_input_dp.exit.thread
  %.0 = phi i1 [ %cond, %bb.b ], [ true, %is_edid_digital_input_dp.exit.thread ], [ false, %bb.f ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @drm_dp_send_real_edid_checksum(ptr noundef %0, i8 noundef zeroext %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %i.e = alloca i8, align 1                       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i8 0, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i8 0, ptr %i.e, align 1
  %i.f = call i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 513, ptr noundef nonnull %i.e, i64 noundef 1) #17 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  br i1 %i.g, label %bb.b, label %drm_dp_dpcd_read_byte.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %drm_dp_dpcd_read_byte.exit.thread, label %drm_dp_dpcd_read_byte.exit.thread44

drm_dp_dpcd_read_byte.exit:                       ; preds = %bb.a
  %i.i = call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 513, ptr noundef nonnull %i.e, i64 noundef 1) #17
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %drm_dp_dpcd_read_byte.exit.thread, label %drm_dp_dpcd_read_byte.exit.thread44

drm_dp_dpcd_read_byte.exit.thread:                ; preds = %bb.b, %drm_dp_dpcd_read_byte.exit
  %i.k = getelementptr i8, ptr %0, i64 1080
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.c

bb.c:                                             ; preds = %drm_dp_dpcd_read_byte.exit.thread
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %drm_dp_dpcd_read_byte.exit.thread, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %drm_dp_dpcd_read_byte.exit.thread ]
  %i.p = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.o, ptr noundef nonnull @.str.20, ptr noundef %i.p, i32 noundef 513) #20
  br label %bb.q

drm_dp_dpcd_read_byte.exit.thread44:              ; preds = %bb.b, %drm_dp_dpcd_read_byte.exit
  %i.q = load i8, ptr %i.e, align 1
  %i.r = and i8 %i.q, 2
  store i8 %i.r, ptr %i.e, align 1
  %i.s = call i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 536, ptr noundef nonnull %i.d, i64 noundef 1) #17 ; 2 uses
  %i.t = icmp sgt i64 %i.s, -1
  br i1 %i.t, label %bb.d, label %drm_dp_dpcd_read_byte.exit27

bb.d:                                             ; preds = %drm_dp_dpcd_read_byte.exit.thread44
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %drm_dp_dpcd_read_byte.exit27.thread, label %drm_dp_dpcd_read_byte.exit27.thread48

drm_dp_dpcd_read_byte.exit27:                     ; preds = %drm_dp_dpcd_read_byte.exit.thread44
  %i.v = call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 536, ptr noundef nonnull %i.d, i64 noundef 1) #17
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %drm_dp_dpcd_read_byte.exit27.thread, label %drm_dp_dpcd_read_byte.exit27.thread48

drm_dp_dpcd_read_byte.exit27.thread:              ; preds = %bb.d, %drm_dp_dpcd_read_byte.exit27
  %i.x = getelementptr i8, ptr %0, i64 1080
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i28 = icmp eq ptr %i.y, null
  br i1 %.not.i28, label %__drm_to_dev.exit29, label %bb.e

end_hunk_0
begin_hunk_1_@drm_dp_downstream_rgb_to_ycbcr_conversion:bb.a
  %i.c = load i8, ptr %0, align 1
  %i.d = icmp ult i8 %i.c, 19
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %1, align 1
  %i.f = and i8 %i.e, 7
  %cond = icmp ne i8 %i.f, 3
  %i.g = and i8 %.val, 16
  %i.h = icmp eq i8 %i.g, 0
  %or.cond = or i1 %i.h, %cond
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %1, i64 3
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, %2
  %i.l = icmp ne i8 %i.k, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.l, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @drm_dp_downstream_mode(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 5
  %.val = load i8, ptr %i.a, align 1
  %i.b = trunc i8 %.val to i1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1
  %i.d = icmp ult i8 %i.c, 17
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %2, align 1
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = and i32 %i.f, 7
  %cond = icmp eq i32 %i.g, 4
  br i1 %cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = lshr i32 %i.f, 4
  %switch.tableidx = add nsw i32 %i.h, -1         ; 3 uses
  %i.i = icmp ult i32 %switch.tableidx, 7
  %switch.maskindex = trunc nsw i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 95, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.i, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.e

switch.lookup:                                    ; preds = %bb.d
  %i.j = shl nuw nsw i32 %switch.tableidx, 3
  %switch.shiftamt = zext nneg i32 %i.j to i56
  %switch.downshift = lshr i56 5348042073249030, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  %i.k = tail call ptr @drm_display_mode_from_cea_vic(ptr noundef %0, i8 noundef zeroext %switch.masked) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %switch.lookup
  %.06 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.k, %switch.lookup ], [ null, %bb.d ], [ null, %bb.c ]
  ret ptr %.06
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_display_mode_from_cea_vic(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @drm_dp_downstream_id(ptr noundef %0, ptr noundef %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 1283, ptr noundef %1, i64 noundef 6) #17 ; 2 uses
  %i.b = icmp sgt i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.c = tail call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 1283, ptr noundef %1, i64 noundef 1) #17 ; 2 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %.lr.ph.i.1

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i64 %i.a, 6
  %..i = select i1 %i.e, i32 -71, i32 0
  br label %drm_dp_dpcd_read_data.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader
  %i.f = getelementptr i8, ptr %1, i64 1
  %i.g = tail call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 1284, ptr noundef %i.f, i64 noundef 1) #17 ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.i = getelementptr i8, ptr %1, i64 2
  %i.j = tail call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 1285, ptr noundef %i.i, i64 noundef 1) #17 ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.l = getelementptr i8, ptr %1, i64 3
  %i.m = tail call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 1286, ptr noundef %i.l, i64 noundef 1) #17 ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.o = getelementptr i8, ptr %1, i64 4
  %i.p = tail call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 1287, ptr noundef %i.o, i64 noundef 1) #17 ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.r = getelementptr i8, ptr %1, i64 5
  %i.s = tail call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 1288, ptr noundef %i.r, i64 noundef 1) #17 ; 2 uses
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.c, label %drm_dp_dpcd_read_data.exit

bb.c:                                             ; preds = %.lr.ph.i.5, %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i.preheader
  %.lcssa = phi i64 [ %i.c, %.lr.ph.i.preheader ], [ %i.g, %.lr.ph.i.1 ], [ %i.j, %.lr.ph.i.2 ], [ %i.m, %.lr.ph.i.3 ], [ %i.p, %.lr.ph.i.4 ], [ %i.s, %.lr.ph.i.5 ]
  %i.u = trunc nsw i64 %.lcssa to i32
  br label %drm_dp_dpcd_read_data.exit

drm_dp_dpcd_read_data.exit:                       ; preds = %.lr.ph.i.5, %bb.b, %bb.c
  %.018.i = phi i32 [ %..i, %bb.b ], [ %i.u, %bb.c ], [ 0, %.lr.ph.i.5 ]
  ret i32 %.018.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_dp_downstream_debug(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [7 x i8], align 1                 ; 5 uses
  %i.b = alloca [2 x i8], align 2                 ; 11 uses
  %i.c = getelementptr i8, ptr %1, i64 5          ; 7 uses
  %i.d = load i8, ptr %i.c, align 1               ; 2 uses
  %i.e = and i8 %i.d, 16
  %.not = icmp eq i8 %i.e, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.f = load i8, ptr %2, align 1
  %i.g = trunc i8 %i.d to i1                      ; 2 uses
  %i.h = select i1 %i.g, ptr @.str.101, ptr @.str.102
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.h) #19
  br i1 %i.g, label %bb.b, label %drm_dp_downstream_max_bpc.exit

bb.b:                                             ; preds = %bb.a
  %i.i = and i8 %i.f, 7
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.26, i64 noundef 20) #19 ; 0 uses
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.k = tail call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.27, i64 noundef 12) #19 ; 0 uses
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.l = tail call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.28, i64 noundef 12) #19 ; 0 uses
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.m = tail call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef 13) #19 ; 0 uses
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.n = tail call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.30, i64 noundef 36) #19 ; 0 uses
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.o = tail call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.31, i64 noundef 13) #19 ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.p = tail call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef 17) #19 ; 0 uses
  br label %bb.k

default.unreachable:                              ; preds = %bb.ak, %bb.b
  unreachable

bb.j:                                             ; preds = %bb.b
  %i.q = tail call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.33, i64 noundef 12) #19 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  store i16 0, ptr %i.b, align 2, !annotation !17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.a, i8 0, i64 7, i1 false)
  %i.r = call i32 @drm_dp_downstream_id(ptr noundef %4, ptr noundef nonnull %i.a) #17 ; 0 uses
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.a) #19
  %i.s = call i64 @drm_dp_dpcd_read(ptr noundef %4, i32 noundef 1289, ptr noundef nonnull %i.b, i64 noundef 1) #17 ; 2 uses
  %i.t = icmp sgt i64 %i.s, -1
  br i1 %i.t, label %.lr.ph.i.preheader, label %bb.l

.lr.ph.i.preheader:                               ; preds = %bb.k
  %5 = icmp eq i64 %i.s, 0
  br i1 %5, label %drm_dp_dpcd_read_data.exit, label %.loopexit103

bb.l:                                             ; preds = %bb.k
  %6 = call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %4, i32 noundef 1289, ptr noundef nonnull %i.b, i64 noundef 1) #17
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %drm_dp_dpcd_read_data.exit, label %.loopexit103

.loopexit103:                                     ; preds = %bb.l, %.lr.ph.i.preheader
  %i.u = load i8, ptr %i.b, align 2
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = lshr i32 %i.v, 4
  %i.x = and i32 %i.v, 15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef %i.w, i32 noundef %i.x) #19
  br label %drm_dp_dpcd_read_data.exit

drm_dp_dpcd_read_data.exit:                       ; preds = %bb.l, %.lr.ph.i.preheader, %.loopexit103
  %i.y = call i64 @drm_dp_dpcd_read(ptr noundef %4, i32 noundef 1290, ptr noundef nonnull %i.b, i64 noundef 2) #17 ; 2 uses
  %i.z = icmp sgt i64 %i.y, -1
  br i1 %i.z, label %bb.m, label %.lr.ph.i56.preheader

.lr.ph.i56.preheader:                             ; preds = %drm_dp_dpcd_read_data.exit
  %i.aa = call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %4, i32 noundef 1290, ptr noundef nonnull %i.b, i64 noundef 1) #17
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %drm_dp_dpcd_read_data.exit61, label %.lr.ph.i56.1

bb.m:                                             ; preds = %drm_dp_dpcd_read_data.exit
  %i.ac = icmp samesign ult i64 %i.y, 2
  br i1 %i.ac, label %drm_dp_dpcd_read_data.exit61, label %.loopexit

.lr.ph.i56.1:                                     ; preds = %.lr.ph.i56.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ae = call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %4, i32 noundef 1291, ptr noundef nonnull %i.ad, i64 noundef 1) #17
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %drm_dp_dpcd_read_data.exit61, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i56.1, %bb.m
  %i.ag = load i8, ptr %i.b, align 2
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %i.ah, i32 noundef %i.ak) #19
  br label %drm_dp_dpcd_read_data.exit61

drm_dp_dpcd_read_data.exit61:                     ; preds = %.lr.ph.i56.preheader, %.lr.ph.i56.1, %bb.m, %.loopexit
  br i1 %.not, label %drm_dp_downstream_max_bpc.exit, label %bb.n

bb.n:                                             ; preds = %drm_dp_dpcd_read_data.exit61
  %.val.i = load i8, ptr %i.c, align 1            ; 6 uses
  %i.al = trunc i8 %.val.i to i1
  br i1 %i.al, label %bb.o, label %drm_dp_downstream_max_dotclock.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.am = load i8, ptr %1, align 1
  %i.an = icmp ult i8 %i.am, 17
  br i1 %i.an, label %drm_dp_downstream_max_dotclock.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = load i8, ptr %2, align 1
  %i.ap = and i8 %i.ao, 7
  %cond.i = icmp ne i8 %i.ap, 1
  %i.aq = and i8 %.val.i, 16
  %i.ar = icmp eq i8 %i.aq, 0
  %or.cond.i = or i1 %i.ar, %cond.i
  br i1 %or.cond.i, label %drm_dp_downstream_max_dotclock.exit.thread, label %drm_dp_downstream_max_dotclock.exit

drm_dp_downstream_max_dotclock.exit:              ; preds = %bb.p
  %i.as = getelementptr i8, ptr %2, i64 1
  %i.at = load i8, ptr %i.as, align 1             ; 2 uses
  %.not51 = icmp eq i8 %i.at, 0
  br i1 %.not51, label %drm_dp_downstream_max_dotclock.exit.thread, label %bb.q

bb.q:                                             ; preds = %drm_dp_downstream_max_dotclock.exit
  %i.au = zext i8 %i.at to i32
  %i.av = mul nuw nsw i32 %i.au, 8000
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %i.av) #19
  %.val.i62.pre = load i8, ptr %i.c, align 1
  br label %drm_dp_downstream_max_dotclock.exit.thread

drm_dp_downstream_max_dotclock.exit.thread:       ; preds = %bb.p, %bb.o, %bb.n, %bb.q, %drm_dp_downstream_max_dotclock.exit
  %.val.i62 = phi i8 [ %.val.i, %bb.p ], [ %.val.i, %bb.o ], [ %.val.i, %bb.n ], [ %.val.i62.pre, %bb.q ], [ %.val.i, %drm_dp_downstream_max_dotclock.exit ] ; 3 uses
  %i.aw = trunc i8 %.val.i62 to i1
  br i1 %i.aw, label %bb.r, label %drm_dp_downstream_max_tmds_clock.exit.thread

bb.r:                                             ; preds = %drm_dp_downstream_max_dotclock.exit.thread
  %i.ax = load i8, ptr %1, align 1
  %i.ay = icmp ult i8 %i.ax, 17
  br i1 %i.ay, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.az = and i8 %.val.i62, 6
  %cond.i65 = icmp eq i8 %i.az, 4
  br i1 %cond.i65, label %drm_dp_downstream_max_tmds_clock.exit.thread92, label %drm_dp_downstream_max_tmds_clock.exit.thread

bb.t:                                             ; preds = %bb.r
  %i.ba = load i8, ptr %2, align 1
  %i.bb = and i8 %i.ba, 7
  switch i8 %i.bb, label %drm_dp_downstream_max_tmds_clock.exit.thread [
    i8 5, label %bb.u
    i8 3, label %is_edid_digital_input_dp.exit.thread.i
    i8 2, label %bb.x
  ]

bb.u:                                             ; preds = %bb.t
  %i.bc = call ptr @drm_edid_raw(ptr noundef %3) #19 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %is_edid_digital_input_dp.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = getelementptr i8, ptr %i.bc, i64 19
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = icmp ugt i8 %i.be, 3
  br i1 %i.bf, label %bb.w, label %is_edid_digital_input_dp.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.bg = getelementptr i8, ptr %i.bc, i64 20
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = and i8 %i.bh, -121
  %or.cond.i64 = icmp eq i8 %i.bi, -123
  br i1 %or.cond.i64, label %drm_dp_downstream_max_tmds_clock.exit.thread, label %is_edid_digital_input_dp.exit.thread.i

is_edid_digital_input_dp.exit.thread.i:           ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %i.bj = load i8, ptr %i.c, align 1
  %i.bk = and i8 %i.bj, 16
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %drm_dp_downstream_max_tmds_clock.exit.thread92, label %drm_dp_downstream_max_tmds_clock.exit

bb.x:                                             ; preds = %bb.t
  %i.bm = and i8 %.val.i62, 16
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %drm_dp_downstream_max_tmds_clock.exit.thread92, label %drm_dp_downstream_max_tmds_clock.exit

drm_dp_downstream_max_tmds_clock.exit:            ; preds = %bb.x, %is_edid_digital_input_dp.exit.thread.i
  %.0.i63.in.in.in = getelementptr i8, ptr %2, i64 1
  %.0.i63.in.in = load i8, ptr %.0.i63.in.in.in, align 1 ; 2 uses
  %.0.i63.in = zext i8 %.0.i63.in.in to i32
  %.0.i63 = mul nuw nsw i32 %.0.i63.in, 2500
  %.not52 = icmp eq i8 %.0.i63.in.in, 0
  br i1 %.not52, label %drm_dp_downstream_max_tmds_clock.exit.thread, label %drm_dp_downstream_max_tmds_clock.exit.thread92

drm_dp_downstream_max_tmds_clock.exit.thread92:   ; preds = %bb.s, %bb.x, %is_edid_digital_input_dp.exit.thread.i, %drm_dp_downstream_max_tmds_clock.exit
  %.0.i6395 = phi i32 [ %.0.i63, %drm_dp_downstream_max_tmds_clock.exit ], [ 300000, %is_edid_digital_input_dp.exit.thread.i ], [ 165000, %bb.x ], [ 165000, %bb.s ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.38, i32 noundef %.0.i6395) #19
  br label %drm_dp_downstream_max_tmds_clock.exit.thread

drm_dp_downstream_max_tmds_clock.exit.thread:     ; preds = %bb.t, %bb.w, %drm_dp_downstream_max_dotclock.exit.thread, %bb.s, %drm_dp_downstream_max_tmds_clock.exit.thread92, %drm_dp_downstream_max_tmds_clock.exit
  %.val.i67 = load i8, ptr %i.c, align 1          ; 2 uses
  %i.bo = trunc i8 %.val.i67 to i1
  br i1 %i.bo, label %bb.y, label %drm_dp_downstream_min_tmds_clock.exit.thread

bb.y:                                             ; preds = %drm_dp_downstream_max_tmds_clock.exit.thread
  %i.bp = load i8, ptr %1, align 1
  %i.bq = icmp ult i8 %i.bp, 17
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.br = and i8 %.val.i67, 6
  %cond.i72 = icmp eq i8 %i.br, 4
  br i1 %cond.i72, label %drm_dp_downstream_min_tmds_clock.exit, label %drm_dp_downstream_min_tmds_clock.exit.thread

bb.aa:                                            ; preds = %bb.y
  %i.bs = load i8, ptr %2, align 1
  %i.bt = and i8 %i.bs, 7
  switch i8 %i.bt, label %drm_dp_downstream_min_tmds_clock.exit.thread [
    i8 5, label %bb.ab
    i8 2, label %drm_dp_downstream_min_tmds_clock.exit
    i8 3, label %drm_dp_downstream_min_tmds_clock.exit
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.bu = call ptr @drm_edid_raw(ptr noundef %3) #19 ; 3 uses
  %.not.i.i70 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i70, label %drm_dp_downstream_min_tmds_clock.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bv = getelementptr i8, ptr %i.bu, i64 19
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = icmp ugt i8 %i.bw, 3
  br i1 %i.bx, label %bb.ad, label %drm_dp_downstream_min_tmds_clock.exit

bb.ad:                                            ; preds = %bb.ac
  %i.by = getelementptr i8, ptr %i.bu, i64 20
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = and i8 %i.bz, -121
  %or.cond.i71 = icmp eq i8 %i.ca, -123
  br i1 %or.cond.i71, label %drm_dp_downstream_min_tmds_clock.exit.thread, label %drm_dp_downstream_min_tmds_clock.exit

drm_dp_downstream_min_tmds_clock.exit:            ; preds = %bb.z, %bb.aa, %bb.aa, %bb.ab, %bb.ac, %bb.ad
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef 25000) #19
  br label %drm_dp_downstream_min_tmds_clock.exit.thread

drm_dp_downstream_min_tmds_clock.exit.thread:     ; preds = %bb.aa, %bb.ad, %drm_dp_downstream_max_tmds_clock.exit.thread, %bb.z, %drm_dp_downstream_min_tmds_clock.exit
  %.val.i74 = load i8, ptr %i.c, align 1          ; 2 uses
  %i.cb = trunc i8 %.val.i74 to i1
  br i1 %i.cb, label %bb.ae, label %drm_dp_downstream_max_bpc.exit

bb.ae:                                            ; preds = %drm_dp_downstream_min_tmds_clock.exit.thread
  %i.cc = load i8, ptr %1, align 1
  %i.cd = icmp ult i8 %i.cc, 17
  br i1 %i.cd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ce = and i8 %.val.i74, 6
  %cond.i79 = icmp eq i8 %i.ce, 0
  br i1 %cond.i79, label %drm_dp_downstream_max_bpc.exit, label %bb.ao

bb.ag:                                            ; preds = %bb.ae
  %i.cf = load i8, ptr %2, align 1
  %i.cg = and i8 %i.cf, 7
  switch i8 %i.cg, label %bb.ao [
    i8 0, label %drm_dp_downstream_max_bpc.exit
    i8 5, label %bb.ah
    i8 3, label %is_edid_digital_input_dp.exit.thread.i76
    i8 2, label %is_edid_digital_input_dp.exit.thread.i76
    i8 1, label %is_edid_digital_input_dp.exit.thread.i76
  ]
end_hunk_1
begin_hunk_2_@drm_dp_vsc_sdp_pack:bb.a
  store i8 %i.d, ptr %i.e, align 1
  %i.f = getelementptr i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.f, align 2
  %i.h = getelementptr i8, ptr %1, i64 3
  store i8 %i.g, ptr %i.h, align 1
  %i.i = load i8, ptr %i.c, align 1               ; 2 uses
  %i.j = icmp eq i8 %i.i, 6
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %1, i64 4
  store i8 1, ptr %i.k, align 1
  %i.l = getelementptr i8, ptr %1, i64 7
  store i8 1, ptr %i.l, align 1
  %.pr = load i8, ptr %i.c, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi i8 [ %.pr, %bb.b ], [ %i.i, %bb.a ]
  switch i8 %i.m, label %bb.l [
    i8 5, label %bb.d
    i8 7, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.n = getelementptr i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %.tr = trunc i32 %i.o to i8
  %i.p = shl i8 %.tr, 4                           ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 20         ; 2 uses
  store i8 %i.p, ptr %i.q, align 1
  %i.r = getelementptr i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 4
  %i.t = trunc i32 %i.s to i8
  %i.u = and i8 %i.t, 15
  %i.v = or disjoint i8 %i.u, %i.p
  store i8 %i.v, ptr %i.q, align 1
  %i.w = getelementptr i8, ptr %0, i64 12         ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  switch i32 %i.x, label %bb.h [
    i32 6, label %bb.i
    i32 8, label %.sink.split
    i32 10, label %bb.e
    i32 12, label %bb.f
    i32 16, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  br label %.sink.split

bb.g:                                             ; preds = %bb.d
  br label %.sink.split

bb.h:                                             ; preds = %bb.d
  %i.y = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.67, ptr nonnull @.str.12, i32 3659, i32 2321, i64 16) #18, !srcloc !51
  %i.z = load i32, ptr %i.w, align 4
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.y, i32 noundef %i.z) #19
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !52
  br label %bb.l

.sink.split:                                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.sink = phi i8 [ 4, %bb.g ], [ 3, %bb.f ], [ 2, %bb.e ], [ 1, %bb.d ]
  %.ph = phi i8 [ -124, %bb.g ], [ -125, %bb.f ], [ -126, %bb.e ], [ -127, %bb.d ]
  %i.aa = getelementptr i8, ptr %1, i64 21
  store i8 %.sink, ptr %i.aa, align 1
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.d
  %i.ab = phi i8 [ -128, %bb.d ], [ %.ph, %.sink.split ]
  %i.ac = getelementptr i8, ptr %0, i64 16
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr i8, ptr %1, i64 21
  store i8 %i.ab, ptr %i.af, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = getelementptr i8, ptr %0, i64 20
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = and i8 %i.ai, 7
  %i.ak = getelementptr i8, ptr %1, i64 22
  store i8 %i.aj, ptr %i.ak, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.c, %bb.h
  %.0 = phi i64 [ -22, %bb.h ], [ 36, %bb.c ], [ 36, %bb.k ]
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local range(i32 0, 49) i32 @drm_dp_get_pcon_max_frl_bw(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 5
  %.val = load i8, ptr %i.a, align 1              ; 2 uses
  %i.b = trunc i8 %.val to i1
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1
  %i.d = icmp ult i8 %i.c, 17
  %i.e = and i8 %.val, 16
  %i.f = icmp eq i8 %i.e, 0
  %or.cond = or i1 %i.f, %i.d
  br i1 %or.cond, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %1, align 1
  %i.h = and i8 %i.g, 7
  %.not = icmp eq i8 %i.h, 3
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %1, i64 2
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, 28
  switch i8 %i.k, label %bb.j [
    i8 4, label %bb.k
    i8 8, label %bb.e
    i8 12, label %bb.f
    i8 16, label %bb.g
    i8 20, label %bb.h
    i8 24, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  br label %bb.k

bb.i:                                             ; preds = %bb.d
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 9, %bb.d ], [ 0, %bb.j ], [ 0, %bb.c ], [ 18, %bb.e ], [ 24, %bb.f ], [ 32, %bb.g ], [ 40, %bb.h ], [ 48, %bb.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @drm_dp_pcon_frl_prepare(ptr noundef %0, i1 noundef zeroext %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  br i1 %1, label %.split, label %.split3

.split3:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 40, ptr %i.b, align 1
  %i.c = call i64 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef range(i32 -2147483381, 12677) 12378, ptr noundef nonnull %i.b, i64 noundef 1) #17 ; 3 uses
  %i.d = icmp slt i64 %i.c, 0
  %i.e = trunc nsw i64 %i.c to i32
  %i.f = and i64 %i.c, 4294967295
  %i.g = icmp eq i64 %i.f, 0
  %..i.i = select i1 %i.g, i32 -71, i32 0
  %.0.i.i = select i1 %i.d, i32 %i.e, i32 %..i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 104, ptr %i.a, align 1
  %i.h = call i64 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef range(i32 -2147483381, 12677) 12378, ptr noundef nonnull %i.a, i64 noundef 1) #17 ; 3 uses
  %i.i = icmp slt i64 %i.h, 0
  %i.j = trunc nsw i64 %i.h to i32
  %i.k = and i64 %i.h, 4294967295
  %i.l = icmp eq i64 %i.k, 0
  %..i.i4 = select i1 %i.l, i32 -71, i32 0
  %.0.i.i5 = select i1 %i.i, i32 %i.j, i32 %..i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.b:                                             ; preds = %.split3, %.split
  %phi.call = phi i32 [ %.0.i.i5, %.split ], [ %.0.i.i, %.split3 ]
  ret i32 %phi.call
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @drm_dp_pcon_is_frl_ready(ptr noundef %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1, !annotation !17
  %i.b = call i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 12347, ptr noundef nonnull %i.a, i64 noundef 1) #17 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  br i1 %i.c, label %.lr.ph.i.preheader.i, label %bb.b

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %1 = icmp eq i64 %i.b, 0
  br label %drm_dp_dpcd_read_byte.exit

bb.b:                                             ; preds = %bb.a
  %2 = call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 12347, ptr noundef nonnull %i.a, i64 noundef 1) #17
  %3 = icmp slt i64 %2, 0
  br label %drm_dp_dpcd_read_byte.exit

drm_dp_dpcd_read_byte.exit:                       ; preds = %.lr.ph.i.preheader.i, %bb.b
  %.018.i.i = phi i1 [ %1, %.lr.ph.i.preheader.i ], [ %3, %bb.b ]
  %i.d = load i8, ptr %i.a, align 1
  %i.e = and i8 %i.d, 2
  %.not = icmp ne i8 %i.e, 0
  %not..018.i.i = xor i1 %.018.i.i, true
  %.0 = select i1 %not..018.i.i, i1 %.not, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @drm_dp_pcon_frl_configure_1(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i8 0, ptr %i.b, align 1, !annotation !17
  %i.c = call i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 12378, ptr noundef nonnull %i.b, i64 noundef 1) #17 ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %drm_dp_dpcd_read_byte.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %drm_dp_dpcd_read_byte.exit.thread, label %drm_dp_dpcd_read_byte.exit.thread9

drm_dp_dpcd_read_byte.exit:                       ; preds = %bb.a
  %i.f = call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 12378, ptr noundef nonnull %i.b, i64 noundef 1) #17 ; 2 uses
  %spec.select.i = trunc nsw i64 %i.f to i32
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %drm_dp_dpcd_read_byte.exit.thread, label %drm_dp_dpcd_read_byte.exit.thread9

drm_dp_dpcd_read_byte.exit.thread9:               ; preds = %bb.b, %drm_dp_dpcd_read_byte.exit
  %i.h = icmp eq i8 %2, 16
  %i.i = load i8, ptr %i.b, align 1
  %i.j = and i8 %i.i, -17
  %masksel = select i1 %i.h, i8 16, i8 0
  %storemerge = or disjoint i8 %i.j, %masksel     ; 3 uses
  store i8 %storemerge, ptr %i.b, align 1
  switch i32 %1, label %drm_dp_dpcd_read_byte.exit.thread [
    i32 9, label %.sink.split
    i32 18, label %bb.c
    i32 24, label %bb.d
    i32 32, label %bb.e
    i32 40, label %bb.f
    i32 48, label %bb.g
    i32 0, label %bb.h
  ]

bb.c:                                             ; preds = %drm_dp_dpcd_read_byte.exit.thread9
  br label %.sink.split

bb.d:                                             ; preds = %drm_dp_dpcd_read_byte.exit.thread9
  br label %.sink.split

bb.e:                                             ; preds = %drm_dp_dpcd_read_byte.exit.thread9
  br label %.sink.split

bb.f:                                             ; preds = %drm_dp_dpcd_read_byte.exit.thread9
  br label %.sink.split

bb.g:                                             ; preds = %drm_dp_dpcd_read_byte.exit.thread9
  br label %.sink.split

.sink.split:                                      ; preds = %drm_dp_dpcd_read_byte.exit.thread9, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sink12 = phi i8 [ 6, %bb.g ], [ 5, %bb.f ], [ 4, %bb.e ], [ 3, %bb.d ], [ 2, %bb.c ], [ 1, %drm_dp_dpcd_read_byte.exit.thread9 ]
  %i.k = or i8 %storemerge, %.sink12              ; 2 uses
  store i8 %i.k, ptr %i.b, align 1
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %drm_dp_dpcd_read_byte.exit.thread9
  %i.l = phi i8 [ %storemerge, %drm_dp_dpcd_read_byte.exit.thread9 ], [ %i.k, %.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.l, ptr %i.a, align 1
  %i.m = call i64 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef range(i32 -2147483381, 12677) 12378, ptr noundef nonnull %i.a, i64 noundef 1) #17 ; 3 uses
  %i.n = icmp slt i64 %i.m, 0
  %i.o = trunc nsw i64 %i.m to i32
  %i.p = and i64 %i.m, 4294967295
  %i.q = icmp eq i64 %i.p, 0
  %..i.i7 = select i1 %i.q, i32 -71, i32 0
  %.0.i.i = select i1 %i.n, i32 %i.o, i32 %..i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %drm_dp_dpcd_read_byte.exit.thread

drm_dp_dpcd_read_byte.exit.thread:                ; preds = %bb.b, %drm_dp_dpcd_read_byte.exit.thread9, %drm_dp_dpcd_read_byte.exit, %bb.h
  %.0 = phi i32 [ %.0.i.i, %bb.h ], [ %spec.select.i, %drm_dp_dpcd_read_byte.exit ], [ -22, %drm_dp_dpcd_read_byte.exit.thread9 ], [ -71, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @drm_dp_pcon_frl_configure_2(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = icmp eq i8 %2, 64
  %i.c = trunc i32 %1 to i8
  %i.d = and i8 %i.c, -65
  %masksel = select i1 %i.b, i8 64, i8 0
  %.0 = or disjoint i8 %masksel, %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.0, ptr %i.a, align 1
  %i.e = call i64 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef range(i32 -2147483381, 12677) 12379, ptr noundef nonnull %i.a, i64 noundef 1) #17 ; 3 uses
  %i.f = icmp slt i64 %i.e, 0
  %i.g = trunc nsw i64 %i.e to i32
  %i.h = and i64 %i.e, 4294967295
  %i.i = icmp eq i64 %i.h, 0
  %..i.i = select i1 %i.i, i32 -71, i32 0
  %.0.i.i = select i1 %i.f, i32 %i.g, i32 %..i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @drm_dp_pcon_reset_frl_config(ptr noundef %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1
  %i.b = call i64 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef range(i32 -2147483381, 12677) 12378, ptr noundef nonnull %i.a, i64 noundef 1) #17 ; 3 uses
  %i.c = icmp slt i64 %i.b, 0
  %i.d = trunc nsw i64 %i.b to i32
  %i.e = and i64 %i.b, 4294967295
  %i.f = icmp eq i64 %i.e, 0
  %..i.i = select i1 %i.f, i32 -71, i32 0
  %.0.i.i = select i1 %i.c, i32 %i.d, i32 %..i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @drm_dp_pcon_frl_enable(ptr noundef %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i8 0, ptr %i.b, align 1
  %i.c = call i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 12378, ptr noundef nonnull %i.b, i64 noundef 1) #17 ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %drm_dp_dpcd_read_byte.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %drm_dp_dpcd_read_byte.exit.thread, label %drm_dp_dpcd_read_byte.exit.thread9

drm_dp_dpcd_read_byte.exit:                       ; preds = %bb.a
  %i.f = call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 12378, ptr noundef nonnull %i.b, i64 noundef 1) #17 ; 2 uses
  %spec.select.i = trunc nsw i64 %i.f to i32
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %drm_dp_dpcd_read_byte.exit.thread, label %drm_dp_dpcd_read_byte.exit.thread9

drm_dp_dpcd_read_byte.exit.thread9:               ; preds = %bb.b, %drm_dp_dpcd_read_byte.exit
  %i.h = load i8, ptr %i.b, align 1               ; 2 uses
  %i.i = and i8 %i.h, 8
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %drm_dp_dpcd_read_byte.exit.thread9
  %i.j = getelementptr i8, ptr %0, i64 1080
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.m, %bb.d ], [ null, %bb.c ]
  %i.o = load ptr, ptr %0, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.n, i32 noundef 2, ptr noundef nonnull @.str.68, ptr noundef %i.o) #19
  br label %drm_dp_dpcd_read_byte.exit.thread

bb.e:                                             ; preds = %drm_dp_dpcd_read_byte.exit.thread9
  %i.p = or i8 %i.h, -128                         ; 2 uses
  store i8 %i.p, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.p, ptr %i.a, align 1
  %i.q = call i64 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef range(i32 -2147483381, 12677) 12378, ptr noundef nonnull %i.a, i64 noundef 1) #17 ; 3 uses
  %i.r = icmp slt i64 %i.q, 0
  %i.s = trunc nsw i64 %i.q to i32
  %i.t = and i64 %i.q, 4294967295
  %i.u = icmp eq i64 %i.t, 0
  %..i.i7 = select i1 %i.u, i32 -71, i32 0
  %.0.i.i = select i1 %i.r, i32 %i.s, i32 %..i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %drm_dp_dpcd_read_byte.exit.thread

drm_dp_dpcd_read_byte.exit.thread:                ; preds = %bb.b, %drm_dp_dpcd_read_byte.exit, %bb.e, %__drm_to_dev.exit
  %.0 = phi i32 [ -22, %__drm_to_dev.exit ], [ %.0.i.i, %bb.e ], [ %spec.select.i, %drm_dp_dpcd_read_byte.exit ], [ -71, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @drm_dp_pcon_hdmi_link_active(ptr noundef %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1, !annotation !17
  %i.b = call i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 12347, ptr noundef nonnull %i.a, i64 noundef 1) #17 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  br i1 %i.c, label %.lr.ph.i.preheader.i, label %bb.b

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %1 = icmp eq i64 %i.b, 0
  br label %drm_dp_dpcd_read_byte.exit

bb.b:                                             ; preds = %bb.a
  %2 = call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 12347, ptr noundef nonnull %i.a, i64 noundef 1) #17
  %3 = icmp slt i64 %2, 0
  br label %drm_dp_dpcd_read_byte.exit

drm_dp_dpcd_read_byte.exit:                       ; preds = %.lr.ph.i.preheader.i, %bb.b
  %.018.i.i = phi i1 [ %1, %.lr.ph.i.preheader.i ], [ %3, %bb.b ]
  %i.d = load i8, ptr %i.a, align 1
  %i.e = trunc i8 %i.d to i1
  %not..018.i.i = xor i1 %.018.i.i, true
  %.0 = select i1 %not..018.i.i, i1 %i.e, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 2) i32 @drm_dp_pcon_hdmi_link_mode(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1, !annotation !17
  %i.b = call i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 12342, ptr noundef nonnull %i.a, i64 noundef 1) #17 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %drm_dp_dpcd_read_byte.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %drm_dp_dpcd_read_byte.exit.thread, label %drm_dp_dpcd_read_byte.exit.thread11

drm_dp_dpcd_read_byte.exit:                       ; preds = %bb.a
  %i.e = call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 12342, ptr noundef nonnull %i.a, i64 noundef 1) #17 ; 2 uses
  %spec.select.i = trunc nsw i64 %i.e to i32
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %drm_dp_dpcd_read_byte.exit.thread, label %drm_dp_dpcd_read_byte.exit.thread11

drm_dp_dpcd_read_byte.exit.thread11:              ; preds = %bb.b, %drm_dp_dpcd_read_byte.exit
  %i.g = load i8, ptr %i.a, align 1               ; 3 uses
  %i.h = and i8 %i.g, 1
  %i.i = zext nneg i8 %i.h to i32                 ; 2 uses
  %i.j = icmp ne ptr %1, null
  %i.k = trunc i8 %i.g to i1
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.c, label %drm_dp_dpcd_read_byte.exit.thread

bb.c:                                             ; preds = %drm_dp_dpcd_read_byte.exit.thread11
  %i.l = lshr i8 %i.g, 1
  %i.m = and i8 %i.l, 63
  store i8 %i.m, ptr %1, align 1
  br label %drm_dp_dpcd_read_byte.exit.thread

drm_dp_dpcd_read_byte.exit.thread:                ; preds = %bb.b, %drm_dp_dpcd_read_byte.exit.thread11, %bb.c, %drm_dp_dpcd_read_byte.exit
  %.0 = phi i32 [ %spec.select.i, %drm_dp_dpcd_read_byte.exit ], [ %i.i, %bb.c ], [ %i.i, %drm_dp_dpcd_read_byte.exit.thread11 ], [ -71, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_dp_pcon_hdmi_frl_link_error_count(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr i8, ptr %1, i64 322        ; 2 uses
  %i.c = load i8, ptr %i.b, align 2
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %drm_dp_dpcd_read_byte.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  store i8 0, ptr %i.a, align 1, !annotation !17
  %i.d = getelementptr i8, ptr %0, i64 1080
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %__drm_to_dev.exit
  %.01014 = phi i32 [ 0, %.lr.ph ], [ %i.r, %__drm_to_dev.exit ] ; 3 uses
  %i.e = add nuw nsw i32 %.01014, 12343           ; 2 uses
  %i.f = call i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %i.e, ptr noundef nonnull %i.a, i64 noundef 1) #17 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  br i1 %i.g, label %bb.c, label %drm_dp_dpcd_read_byte.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %drm_dp_dpcd_read_byte.exit.thread, label %drm_dp_dpcd_read_byte.exit.thread12

drm_dp_dpcd_read_byte.exit:                       ; preds = %bb.b
  %i.i = call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %i.e, ptr noundef nonnull %i.a, i64 noundef 1) #17
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %drm_dp_dpcd_read_byte.exit.thread, label %drm_dp_dpcd_read_byte.exit.thread12

drm_dp_dpcd_read_byte.exit.thread12:              ; preds = %bb.c, %drm_dp_dpcd_read_byte.exit
  %i.k = load i8, ptr %i.a, align 1
  %i.l = and i8 %i.k, 7
  switch i8 %i.l, label %bb.f [
    i8 4, label %bb.g
    i8 2, label %bb.d
    i8 1, label %bb.e
  ]

bb.d:                                             ; preds = %drm_dp_dpcd_read_byte.exit.thread12
  br label %bb.g

bb.e:                                             ; preds = %drm_dp_dpcd_read_byte.exit.thread12
  br label %bb.g

bb.f:                                             ; preds = %drm_dp_dpcd_read_byte.exit.thread12
  br label %bb.g

bb.g:                                             ; preds = %drm_dp_dpcd_read_byte.exit.thread12, %bb.d, %bb.e, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ 3, %bb.e ], [ 10, %bb.d ], [ 100, %drm_dp_dpcd_read_byte.exit.thread12 ]
  %i.m = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.g, %bb.h
  %i.p = phi ptr [ %i.o, %bb.h ], [ null, %bb.g ]
  %i.q = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.p, ptr noundef nonnull @.str.69, ptr noundef %i.q, i32 noundef %.0, i32 noundef %.01014) #20
  %i.r = add nuw nsw i32 %.01014, 1               ; 2 uses
  %i.s = load i8, ptr %i.b, align 2
  %i.t = zext i8 %i.s to i32
  %i.u = icmp samesign ult i32 %i.r, %i.t
  br i1 %i.u, label %bb.b, label %drm_dp_dpcd_read_byte.exit.thread, !llvm.loop !53

drm_dp_dpcd_read_byte.exit.thread:                ; preds = %drm_dp_dpcd_read_byte.exit, %__drm_to_dev.exit, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local zeroext i1 @drm_dp_pcon_enc_is_dsc_1_2(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %or.cond = icmp eq i8 %i.b, 33
  ret i1 %or.cond
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local range(i32 0, 25) i32 @drm_dp_pcon_dsc_max_slices(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 1               ; 7 uses
  %i.c = getelementptr i8, ptr %0, i64 10
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32                      ; 3 uses
  %i.f = and i32 %i.e, 4
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %i.e, 2
  %.not12 = icmp eq i32 %i.g, 0
  br i1 %.not12, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %i.e, 1
  %.not13 = icmp eq i32 %i.h, 0
  br i1 %.not13, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %.not14 = icmp sgt i8 %i.b, -1
  br i1 %.not14, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %.not15 = icmp samesign ult i8 %i.b, 64
  br i1 %.not15, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %.not16 = icmp samesign ult i8 %i.b, 32
  br i1 %.not16, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %.not17 = icmp samesign ult i8 %i.b, 16
  br i1 %.not17, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not18 = icmp samesign ult i8 %i.b, 8
  br i1 %.not18, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.i = and i8 %i.b, 2
  %.not19 = icmp eq i8 %i.i, 0
  br i1 %.not19, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.j = and i8 %i.b, 1
  %. = zext nneg i8 %i.j to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 2, %bb.i ], [ 24, %bb.a ], [ 20, %bb.b ], [ 16, %bb.c ], [ 12, %bb.d ], [ 10, %bb.e ], [ 8, %bb.f ], [ 6, %bb.g ], [ 4, %bb.h ], [ %., %bb.j ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local range(i32 0, 81601) i32 @drm_dp_pcon_dsc_max_slice_width(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i32
  %i.d = mul nuw nsw i32 %i.c, 320
  ret i32 %i.d
}

end_hunk_2
