Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/synaptics?download=true
inline.NumInlined: 113
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@sized_strscpy

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @synaptics_pt_write(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 256
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @psmouse_from_serio(ptr noundef %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i8 40, ptr %i.a, align 1
  %i.e = getelementptr i8, ptr %i.d, i64 16       ; 2 uses
  %i.f = tail call i32 @ps2_sliced_command(ptr noundef %i.e, i8 noundef zeroext %1) #12 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @ps2_command(ptr noundef %i.e, ptr noundef nonnull %i.a, i32 noundef 4339) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.f, %bb.a ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @synaptics_pt_start(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @psmouse_from_serio(ptr noundef %i.b) #12 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 208      ; 2 uses
  tail call void @_raw_spin_lock_irq(ptr noundef %i.g) #12
  %i.h = getelementptr i8, ptr %i.d, i64 72
  store ptr %0, ptr %i.h, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.g) #12
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @synaptics_pt_stop(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @psmouse_from_serio(ptr noundef %i.b) #12 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 208      ; 2 uses
  tail call void @_raw_spin_lock_irq(ptr noundef %i.g) #12
  %i.h = getelementptr i8, ptr %i.d, i64 72
  store ptr null, ptr %i.h, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.g) #12
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @synaptics_pt_open(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @psmouse_from_serio(ptr noundef %i.b) #12 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 208      ; 2 uses
  tail call void @_raw_spin_lock_irq(ptr noundef %i.g) #12
  %i.h = getelementptr i8, ptr %i.d, i64 80
  store i8 1, ptr %i.h, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.g) #12
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @synaptics_pt_close(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @psmouse_from_serio(ptr noundef %i.b) #12 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 208      ; 2 uses
  tail call void @_raw_spin_lock_irq(ptr noundef %i.g) #12
  %i.h = getelementptr i8, ptr %i.d, i64 80
  store i8 0, ptr %i.h, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.g) #12
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @synaptics_pt_activate(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @psmouse_from_serio(ptr noundef %i.d) #12 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.e, i64 178
  %i.g = load i8, ptr %i.f, align 2
  %i.h = icmp eq i8 %i.g, 4
  %i.i = getelementptr i8, ptr %i.b, i64 60       ; 2 uses
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, -3
  %masksel = select i1 %i.h, i8 2, i8 0
  %.sink = or disjoint i8 %i.k, %masksel          ; 2 uses
  store i8 %.sink, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.l = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.m = tail call i32 @ps2_sliced_command(ptr noundef %i.l, i8 noundef zeroext %.sink) #12
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %synaptics_mode_cmd.exit, label %synaptics_mode_cmd.exit.thread

synaptics_mode_cmd.exit.thread:                   ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.c

synaptics_mode_cmd.exit:                          ; preds = %bb.b
  store i8 20, ptr %i.a, align 1
  %i.n = call i32 @ps2_command(ptr noundef %i.l, ptr noundef nonnull %i.a, i32 noundef 4339) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not9 = icmp eq i32 %i.n, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %synaptics_mode_cmd.exit.thread, %synaptics_mode_cmd.exit
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 336
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.p, ptr noundef nonnull @.str.59) #14
  br label %bb.d

bb.d:                                             ; preds = %synaptics_mode_cmd.exit, %bb.c, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__serio_register_port(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @psmouse_attr_show_helper(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @psmouse_attr_set_helper(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @synaptics_show_disable_gesture(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #8 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 69
  %i.c = load i8, ptr %i.b, align 1, !range !13, !noundef !14
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.d, i32 49, i32 48
  %i.f = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull dereferenceable(1) @.str.62, i32 noundef %i.e) #12
  %i.g = sext i32 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @synaptics_set_disable_gesture(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i64 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 0, ptr %i.b, align 4, !annotation !12
  %i.d = call i32 @kstrtouint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %i.b) #12 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %i.d to i64
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 4              ; 4 uses
  %i.g = icmp ugt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.c, i64 69       ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !range !13, !noundef !14
  %i.j = zext nneg i8 %i.i to i32
  %i.k = icmp eq i32 %i.f, %i.j
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = trunc nuw nsw i32 %i.f to i8
  store i8 %i.l, ptr %i.h, align 1
  %.not14 = icmp eq i32 %i.f, 0
  %i.m = getelementptr i8, ptr %i.c, i64 60       ; 2 uses
  %i.n = load i8, ptr %i.m, align 4
  %i.o = and i8 %i.n, -5
  %masksel = select i1 %.not14, i8 0, i8 4
  %.sink = or disjoint i8 %i.o, %masksel          ; 2 uses
  store i8 %.sink, ptr %i.m, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.p = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.q = call i32 @ps2_sliced_command(ptr noundef %i.p, i8 noundef zeroext %.sink) #12
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.f, label %synaptics_mode_cmd.exit

bb.f:                                             ; preds = %bb.e
  store i8 20, ptr %i.a, align 1
  %i.r = call i32 @ps2_command(ptr noundef %i.p, ptr noundef nonnull %i.a, i32 noundef 4339) #12
  %i.s = icmp eq i32 %i.r, 0
  %i.t = select i1 %i.s, i64 %3, i64 -5
  br label %synaptics_mode_cmd.exit

synaptics_mode_cmd.exit:                          ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ -5, %bb.e ], [ %i.t, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.g

bb.g:                                             ; preds = %synaptics_mode_cmd.exit, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ %3, %bb.d ], [ -22, %bb.c ], [ %.0.i, %synaptics_mode_cmd.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret i64 %.0
}

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @synaptics_capability(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %union.anon.7, align 4              ; 6 uses
  %3 = alloca %union.anon.7, align 4              ; 6 uses
  %4 = alloca %union.anon.7, align 4              ; 6 uses
  %i.a = getelementptr i8, ptr %1, i64 12         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store i32 0, ptr %4, align 4
  %i.b = getelementptr i8, ptr %0, i64 16         ; 8 uses
  %i.c = tail call i32 @ps2_sliced_command(ptr noundef %i.b, i8 noundef zeroext range(i8 0, 17) 2) #12 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %synaptics_send_cmd.exit.i, label %synaptics_query_int.exit.thread

synaptics_send_cmd.exit.i:                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.e = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.d, i32 noundef 1001) #12 ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %synaptics_query_int.exit.thread

synaptics_query_int.exit.thread:                  ; preds = %synaptics_send_cmd.exit.i, %bb.a
  %.0.i.ph = phi i32 [ %i.c, %bb.a ], [ %i.e, %synaptics_send_cmd.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.l

bb.b:                                             ; preds = %synaptics_send_cmd.exit.i
  %i.f = load i32, ptr %4, align 4
  %i.g = call i32 @llvm.bswap.i32(i32 %i.f)       ; 4 uses
  store i32 %i.g, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.h = getelementptr i8, ptr %1, i64 20         ; 2 uses
  store i32 0, ptr %i.h, align 4
  %i.i = getelementptr i8, ptr %1, i64 16         ; 3 uses
  store i32 0, ptr %i.i, align 4
  %i.j = getelementptr i8, ptr %1, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 8
  %i.n = and i64 %i.m, 3840
  %i.o = lshr i64 %i.l, 16
  %i.p = and i64 %i.o, 255
  %i.q = or disjoint i64 %i.n, %i.p
  %i.r = icmp samesign ugt i64 %i.q, 1796
  %i.s = and i32 %i.g, 65280
  %.not24 = icmp eq i32 %i.s, 18176
  %or.cond = select i1 %i.r, i1 true, i1 %.not24
  br i1 %or.cond, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.t = and i32 %i.g, 8388608
  %.not25 = icmp eq i32 %i.t, 0
  br i1 %.not25, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  store i32 0, ptr %i.a, align 4
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.u = and i32 %i.g, 7340032
  %.not26 = icmp eq i32 %i.u, 0
  br i1 %.not26, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i32 0, ptr %3, align 4
  %i.v = call i32 @ps2_sliced_command(ptr noundef %i.b, i8 noundef zeroext range(i8 0, 17) 9) #12
  %.not.i.i30 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i30, label %synaptics_send_cmd.exit.i32, label %bb.f

synaptics_send_cmd.exit.i32:                      ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.x = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.w, i32 noundef 1001) #12
  %.not.i33 = icmp eq i32 %i.x, 0
  br i1 %.not.i33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %synaptics_send_cmd.exit.i32, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.y = load ptr, ptr %i.b, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 336
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.z, ptr noundef nonnull @.str.63) #14
  br label %bb.i

bb.g:                                             ; preds = %synaptics_send_cmd.exit.i32
  %i.aa = load i32, ptr %3, align 4
  %i.ab = call i32 @llvm.bswap.i32(i32 %i.aa)     ; 3 uses
  store i32 %i.ab, ptr %i.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.ac = and i32 %i.ab, 61440
  %i.ad = icmp samesign ugt i32 %i.ac, 32768
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = and i32 %i.ab, -61441
  store i32 %i.ae, ptr %i.i, align 4
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.f, %bb.h, %bb.g, %bb.d
  %i.af = load i32, ptr %i.a, align 4
  %i.ag = and i32 %i.af, 4194304
  %.not28 = icmp eq i32 %i.ag, 0
  br i1 %.not28, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i32 0, ptr %2, align 4
  %i.ah = call i32 @ps2_sliced_command(ptr noundef %i.b, i8 noundef zeroext range(i8 0, 17) 12) #12
  %.not.i.i35 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i35, label %synaptics_send_cmd.exit.i37, label %bb.k

synaptics_send_cmd.exit.i37:                      ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.aj = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.ai, i32 noundef 1001) #12
  %.not.i38 = icmp eq i32 %i.aj, 0
  br i1 %.not.i38, label %synaptics_query_int.exit39, label %bb.k

synaptics_query_int.exit39:                       ; preds = %synaptics_send_cmd.exit.i37
  %i.ak = load i32, ptr %2, align 4
  %i.al = call i32 @llvm.bswap.i32(i32 %i.ak)
  store i32 %i.al, ptr %i.h, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.l

bb.k:                                             ; preds = %synaptics_send_cmd.exit.i37, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.am = load ptr, ptr %i.b, align 8
  %i.an = getelementptr i8, ptr %i.am, i64 336
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.an, ptr noundef nonnull @.str.64) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %synaptics_query_int.exit39, %synaptics_query_int.exit.thread, %bb.i, %bb.k
  %.0 = phi i32 [ -6, %bb.b ], [ %.0.i.ph, %synaptics_query_int.exit.thread ], [ 0, %synaptics_query_int.exit39 ], [ 0, %bb.k ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @synaptics_resolution(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 align 16 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr i8, ptr %1, i64 28         ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 12
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.a, i8 0, i64 3, i1 false), !annotation !12
  %i.f = getelementptr i8, ptr %0, i64 16         ; 8 uses
  %i.g = tail call i32 @ps2_sliced_command(ptr noundef %i.f, i8 noundef zeroext 8) #12
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %synaptics_send_cmd.exit, label %synaptics_send_cmd.exit.thread

synaptics_send_cmd.exit:                          ; preds = %bb.b
  %i.h = call i32 @ps2_command(ptr noundef %i.f, ptr noundef nonnull %i.a, i32 noundef 1001) #12
  %i.i = icmp eq i32 %i.h, 0
  %i.j = load i8, ptr %i.a, align 1               ; 2 uses
  %i.k = zext i8 %i.j to i32
  %i.l = icmp ne i8 %i.j, 0
  %or.cond7 = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond7, label %bb.c, label %synaptics_send_cmd.exit.thread

bb.c:                                             ; preds = %synaptics_send_cmd.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.n = load i8, ptr %i.m, align 1
  %i.o = icmp slt i8 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  %i.r = icmp ne i8 %i.q, 0
end_hunk_0
