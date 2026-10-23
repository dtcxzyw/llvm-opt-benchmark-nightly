Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/device?download=true
inline.NumInlined: 73
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@snd_hdac_device_set_chip_name:bb.a
  %i.a = tail call noalias ptr @kstrdup(ptr noundef nonnull %1, i32 noundef 3264) #8 ; 2 uses
  %.not8 = icmp eq ptr %i.a, null
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %0, i64 840        ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @kfree(ptr noundef %i.c) #8
  store ptr %i.a, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ -12, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @snd_hdac_codec_modalias(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 804
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr i8, ptr %0, i64 812
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr i8, ptr %0, i64 760
  %i.f = load i32, ptr %i.e, align 8
  %i.g = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %1, i64 noundef %2, ptr noundef @.str.6, i32 noundef %i.b, i32 noundef %i.d, i32 noundef %i.f) #8
  ret i32 %i.g
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @snd_hdac_exec_verb(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 848
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %i.b(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 768
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %0, i64 776
  %i.g = load i32, ptr %i.f, align 8
  %i.h = tail call i32 @snd_hdac_bus_exec_verb(ptr noundef %i.e, i32 noundef %i.g, i32 noundef %1, ptr noundef %3) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.h, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @snd_hdac_bus_exec_verb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = zext i16 %1 to i32
  %i.b = shl i32 %i.a, 20
  %i.c = or i32 %2, %i.b
  %i.d = or i32 %i.c, 983040
  %i.e = tail call i32 @snd_hdac_regmap_read_raw(ptr noundef %0, i32 noundef %i.d, ptr noundef %3) #8
  ret i32 %i.e
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @snd_hdac_regmap_read_raw(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @snd_hdac_read_parm_uncached(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !annotation !11
  %i.b = zext i16 %1 to i32
  %i.c = shl i32 %i.b, 20
  %i.d = or i32 %2, %i.c
  %i.e = or i32 %i.d, 983040
  %i.f = call i32 @snd_hdac_regmap_read_raw_uncached(ptr noundef %0, i32 noundef %i.e, ptr noundef nonnull %i.a) #8
  %i.g = load i32, ptr %i.a, align 4
  %.inv = icmp sgt i32 %i.f, -1
  %.0 = select i1 %.inv, i32 %i.g, i32 -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @snd_hdac_regmap_read_raw_uncached(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @snd_hdac_override_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 904
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i16 %1 to i32
  %i.d = shl i32 %i.c, 20
  %i.e = or i32 %2, %i.d
  %i.f = or i32 %i.e, 983040
  %i.g = getelementptr i8, ptr %0, i64 960        ; 4 uses
  %i.h = load i8, ptr %i.g, align 8
  %i.i = or i8 %i.h, 2
  store i8 %i.i, ptr %i.g, align 8
  %i.j = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %0, i32 noundef %i.f, i32 noundef %3) #8
  %i.k = load i8, ptr %i.g, align 8
  %i.l = and i8 %i.k, -3
  store i8 %i.l, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @snd_hdac_regmap_write_raw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 32768) i32 @snd_hdac_get_sub_nodes(ptr noundef %0, i16 noundef zeroext %1, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !annotation !11
  %i.b = zext i16 %1 to i32
  %i.c = shl i32 %i.b, 20
  %i.d = or disjoint i32 %i.c, 983044
  %i.e = call i32 @snd_hdac_regmap_read_raw_uncached(ptr noundef %0, i32 noundef %i.d, ptr noundef nonnull %i.a) #8
  %i.f = load i32, ptr %i.a, align 4              ; 3 uses
  %.inv.i = icmp slt i32 %i.e, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.g = icmp eq i32 %i.f, -1
  %i.h = select i1 %.inv.i, i1 true, i1 %i.g      ; 2 uses
  %i.i = lshr i32 %i.f, 16
  %i.j = trunc nuw i32 %i.i to i16
  %i.k = and i16 %i.j, 32767
  %i.l = and i32 %i.f, 32767
  %.sink = select i1 %i.h, i16 0, i16 %i.k
  %.0 = select i1 %i.h, i32 0, i32 %i.l
  store i16 %.sink, ptr %2, align 2
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @hda_widget_sysfs_reinit(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @snd_hdac_get_connections(ptr noundef %0, i16 noundef zeroext %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 0, ptr %i.b, align 4, !annotation !11
  %i.d = zext i16 %1 to i32                       ; 3 uses
  %i.e = shl i32 %i.d, 20                         ; 4 uses
  %i.f = or disjoint i32 %i.e, 983049
  %i.g = call i32 @snd_hdac_regmap_read_raw(ptr noundef %0, i32 noundef %i.f, ptr noundef nonnull %i.b) #8
  %i.h = load i32, ptr %i.b, align 4
  %.inv.i.i = icmp sgt i32 %i.g, -1
  %i.i = select i1 %.inv.i.i, i32 %i.h, i32 -1    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.j = and i32 %i.i, 256
  %.not.i = icmp ne i32 %i.j, 0
  %i.k = and i32 %i.i, 15728640
  %.not810.i = icmp eq i32 %i.k, 6291456
  %or.cond.i = or i1 %.not.i, %.not810.i
  br i1 %or.cond.i, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !annotation !11
  %i.l = or disjoint i32 %i.e, 983054
  %i.m = call i32 @snd_hdac_regmap_read_raw(ptr noundef %0, i32 noundef %i.l, ptr noundef nonnull %i.a) #8
  %i.n = load i32, ptr %i.a, align 4              ; 5 uses
  %.inv.i9.i = icmp slt i32 %i.m, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.o = icmp eq i32 %i.n, -1
  %i.p = select i1 %.inv.i9.i, i1 true, i1 %i.o
  br i1 %i.p, label %.thread, label %get_num_conns.exit

get_num_conns.exit:                               ; preds = %bb.b
  store i32 %i.n, ptr %i.c, align 4
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %get_num_conns.exit
  %i.q = and i32 %i.n, 128
  %.not75 = icmp eq i32 %i.q, 0                   ; 3 uses
  %. = select i1 %.not75, i32 8, i32 16
  %.87 = select i1 %.not75, i32 3, i32 1
  %i.r = and i32 %i.n, 127                        ; 3 uses
  %.finite = select i1 %.not75, i32 128, i32 32768 ; 2 uses
  %i.s = add nsw i32 %.finite, -1                 ; 2 uses
  switch i32 %i.r, label %.lr.ph114 [
    i32 0, label %.thread
    i32 1, label %bb.d
  ]

.lr.ph114:                                        ; preds = %bb.c
  %i.t = getelementptr i8, ptr %0, i64 776        ; 2 uses
  %i.u = icmp ult i16 %1, 128
  %i.v = getelementptr i8, ptr %0, i64 848
  %i.w = getelementptr i8, ptr %0, i64 768
  %.not84 = icmp eq ptr %2, null                  ; 2 uses
  br label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %0, i64 776        ; 2 uses
  %i.y = load i32, ptr %i.x, align 8              ; 3 uses
  %.not.i.i = icmp ult i32 %i.y, 16
  %i.z = icmp ult i16 %1, 128
  %or.cond101 = and i1 %i.z, %.not.i.i
  br i1 %or.cond101, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef @.str.11, i32 noundef %i.y, i32 noundef %i.d, i32 noundef 3842, i32 noundef 0) #10
  br label %snd_hdac_make_cmd.exit.i

bb.f:                                             ; preds = %bb.d
  %i.aa = shl nuw i32 %i.y, 28
  %i.ab = or disjoint i32 %i.aa, %i.e
  %i.ac = or disjoint i32 %i.ab, 983552
  br label %snd_hdac_make_cmd.exit.i

snd_hdac_make_cmd.exit.i:                         ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ -1, %bb.e ], [ %i.ac, %bb.f ] ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 848
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i6.i = icmp eq ptr %i.ae, null
  br i1 %.not.i6.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %snd_hdac_make_cmd.exit.i
  %i.af = call i32 %i.ae(ptr noundef %0, i32 noundef %.0.i.i, i32 noundef 0, ptr noundef nonnull %i.c) #8, !inline_history !13
  br label %snd_hdac_read.exit

bb.h:                                             ; preds = %snd_hdac_make_cmd.exit.i
  %i.ag = getelementptr i8, ptr %0, i64 768
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = load i32, ptr %i.x, align 8
  %i.aj = call i32 @snd_hdac_bus_exec_verb(ptr noundef %i.ah, i32 noundef %i.ai, i32 noundef %.0.i.i, ptr noundef nonnull %i.c) #8
  br label %snd_hdac_read.exit

snd_hdac_read.exit:                               ; preds = %bb.g, %bb.h
  %.0.i7.i = phi i32 [ %i.af, %bb.g ], [ %i.aj, %bb.h ] ; 2 uses
  %i.ak = icmp slt i32 %.0.i7.i, 0
  br i1 %i.ak, label %.thread, label %bb.i

bb.i:                                             ; preds = %snd_hdac_read.exit
  %.not86 = icmp eq ptr %2, null
  br i1 %.not86, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load i32, ptr %i.c, align 4
  %i.am = and i32 %i.al, %i.s
  %i.an = trunc nuw nsw i32 %i.am to i16
  store i16 %i.an, ptr %2, align 2
  br label %.thread

bb.k:                                             ; preds = %.lr.ph114, %.loopexit
  %.055113 = phi i32 [ 0, %.lr.ph114 ], [ %.1, %.loopexit ] ; 2 uses
  %.056112 = phi i16 [ 0, %.lr.ph114 ], [ %.157, %.loopexit ] ; 4 uses
  %.060111 = phi i32 [ 0, %.lr.ph114 ], [ %.3, %.loopexit ] ; 9 uses
  %.063109 = phi i32 [ 0, %.lr.ph114 ], [ %i.bs, %.loopexit ] ; 4 uses
  %i.ao = and i32 %.063109, %.87
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.aq = load i32, ptr %i.t, align 8             ; 3 uses
  %.not.i.i88 = icmp ult i32 %i.aq, 16
  %or.cond121 = and i1 %.not.i.i88, %i.u
  br i1 %or.cond121, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef @.str.11, i32 noundef %i.aq, i32 noundef %i.d, i32 noundef 3842, i32 noundef %.063109) #10
  br label %snd_hdac_make_cmd.exit.i89

bb.n:                                             ; preds = %bb.l
  %i.ar = shl nuw i32 %i.aq, 28
  %i.as = or disjoint i32 %i.ar, %i.e
  %i.at = or disjoint i32 %i.as, %.063109
  %i.au = or i32 %i.at, 983552
  br label %snd_hdac_make_cmd.exit.i89

snd_hdac_make_cmd.exit.i89:                       ; preds = %bb.n, %bb.m
  %.0.i.i90 = phi i32 [ -1, %bb.m ], [ %i.au, %bb.n ] ; 2 uses
  %i.av = load ptr, ptr %i.v, align 8             ; 2 uses
  %.not.i6.i91 = icmp eq ptr %i.av, null
  br i1 %.not.i6.i91, label %bb.p, label %bb.o

bb.o:                                             ; preds = %snd_hdac_make_cmd.exit.i89
  %i.aw = call i32 %i.av(ptr noundef %0, i32 noundef %.0.i.i90, i32 noundef 0, ptr noundef nonnull %i.c) #8, !inline_history !13
  br label %snd_hdac_read.exit93

bb.p:                                             ; preds = %snd_hdac_make_cmd.exit.i89
  %i.ax = load ptr, ptr %i.w, align 8
  %i.ay = load i32, ptr %i.t, align 8
  %i.az = call i32 @snd_hdac_bus_exec_verb(ptr noundef %i.ax, i32 noundef %i.ay, i32 noundef %.0.i.i90, ptr noundef nonnull %i.c) #8
  br label %snd_hdac_read.exit93

snd_hdac_read.exit93:                             ; preds = %bb.o, %bb.p
  %.0.i7.i92 = phi i32 [ %i.aw, %bb.o ], [ %i.az, %bb.p ]
  %i.ba = icmp slt i32 %.0.i7.i92, 0
  br i1 %i.ba, label %.thread, label %bb.q

bb.q:                                             ; preds = %snd_hdac_read.exit93, %bb.k
  %i.bb = load i32, ptr %i.c, align 4             ; 3 uses
  %i.bc = and i32 %i.bb, %.finite
  %.not77 = icmp eq i32 %i.bc, 0
  %i.bd = and i32 %i.bb, %i.s                     ; 7 uses
  %i.be = trunc nuw nsw i32 %i.bd to i16          ; 5 uses
  %i.bf = icmp eq i32 %i.bd, 0
  br i1 %i.bf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.not78 = icmp eq i32 %.055113, 0
  br i1 %.not78, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1 = phi i32 [ 1, %bb.r ], [ %.055113, %bb.q ]
  %i.bg = lshr i32 %i.bb, %.
  store i32 %i.bg, ptr %i.c, align 4
  br i1 %.not77, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not81 = icmp ne i16 %.056112, 0
  %i.bh = zext nneg i16 %.056112 to i32           ; 2 uses
  %.not82 = icmp sgt i32 %i.bd, %i.bh
  %or.cond = select i1 %.not81, i1 %.not82, i1 false
  br i1 %or.cond, label %.preheader, label %bb.u

.preheader:                                       ; preds = %bb.t
  %.0105 = add nuw i16 %.056112, 1                ; 3 uses
  %i.bi = zext i16 %.0105 to i32
  %.not83106 = icmp samesign ult i32 %i.bd, %i.bi
  br i1 %.not83106, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br i1 %.not84, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %smax = call i32 @llvm.smax.i32(i32 %.060111, i32 %3)
  %wide.trip.count = sext i32 %smax to i64
  %exitcond.not139.not = icmp slt i32 %.060111, %3
  br i1 %exitcond.not139.not, label %.lr.ph142, label %.thread

.lr.ph142:                                        ; preds = %.lr.ph.split.preheader
  %i.bj = sext i32 %.060111 to i64
  br label %bb.v

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.0108.us = phi i16 [ %.0.us, %.lr.ph.split.us ], [ %.0105, %.lr.ph ]
  %.161107.us = phi i32 [ %i.bk, %.lr.ph.split.us ], [ %.060111, %.lr.ph ]
  %i.bk = add i32 %.161107.us, 1                  ; 2 uses
  %.0.us = add i16 %.0108.us, 1                   ; 2 uses
  %i.bl = zext i16 %.0.us to i32
  %.not83.us = icmp samesign ult i32 %i.bd, %i.bl
  br i1 %.not83.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !21

bb.u:                                             ; preds = %bb.t
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef @.str.8, i32 noundef %i.bh, i32 noundef %i.bd) #10
  br label %.loopexit

.lr.ph.split:                                     ; preds = %bb.v
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.v, !llvm.loop !21

bb.v:                                             ; preds = %.lr.ph142, %.lr.ph.split
  %.0108141 = phi i16 [ %.0105, %.lr.ph142 ], [ %.0, %.lr.ph.split ] ; 2 uses
  %indvars.iv140 = phi i64 [ %i.bj, %.lr.ph142 ], [ %indvars.iv.next, %.lr.ph.split ] ; 2 uses
  %i.bm = getelementptr [2 x i8], ptr %2, i64 %indvars.iv140
  store i16 %.0108141, ptr %i.bm, align 2
  %indvars.iv.next = add nsw i64 %indvars.iv140, 1 ; 3 uses
  %.0 = add i16 %.0108141, 1                      ; 2 uses
  %i.bn = zext i16 %.0 to i32
  %.not83 = icmp samesign ult i32 %i.bd, %i.bn
  br i1 %.not83, label %.loopexit.loopexit123, label %.lr.ph.split, !llvm.loop !21

bb.w:                                             ; preds = %bb.s
  br i1 %.not84, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not80 = icmp slt i32 %.060111, %3
  br i1 %.not80, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.bo = sext i32 %.060111 to i64
  %i.bp = getelementptr [2 x i8], ptr %2, i64 %i.bo
  store i16 %i.be, ptr %i.bp, align 2
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.bq = add i32 %.060111, 1
  br label %.loopexit

.loopexit.loopexit123:                            ; preds = %bb.v
  %i.br = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split.us, %.loopexit.loopexit123, %.preheader, %bb.u, %bb.z
  %.3 = phi i32 [ %.060111, %bb.u ], [ %i.bq, %bb.z ], [ %.060111, %.preheader ], [ %i.br, %.loopexit.loopexit123 ], [ %i.bk, %.lr.ph.split.us ] ; 2 uses
  %.157 = phi i16 [ %.056112, %bb.u ], [ %i.be, %bb.z ], [ %i.be, %.preheader ], [ %i.be, %.loopexit.loopexit123 ], [ %i.be, %.lr.ph.split.us ]
  %i.bs = add nuw nsw i32 %.063109, 1             ; 2 uses
  %exitcond126.not = icmp eq i32 %i.bs, %i.r
  br i1 %exitcond126.not, label %.thread, label %bb.k, !llvm.loop !22

.thread:                                          ; preds = %.loopexit, %snd_hdac_read.exit93, %bb.r, %bb.x, %.lr.ph.split.preheader, %.lr.ph.split, %bb.b, %bb.a, %bb.i, %bb.j, %snd_hdac_read.exit, %bb.c, %get_num_conns.exit
  %.266 = phi i32 [ %i.r, %bb.c ], [ %.0.i7.i, %snd_hdac_read.exit ], [ -28, %.lr.ph.split ], [ 1, %bb.i ], [ 0, %get_num_conns.exit ], [ 1, %bb.j ], [ 0, %bb.b ], [ 0, %bb.a ], [ %.3, %.loopexit ], [ -5, %snd_hdac_read.exit93 ], [ 0, %bb.r ], [ -28, %bb.x ], [ -28, %.lr.ph.split.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret i32 %.266
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @snd_hdac_power_up(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #8
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @snd_hdac_power_down(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @ktime_get_mono_fast_ns() #8
  %i.b = getelementptr i8, ptr %0, i64 496
  store volatile i64 %i.a, ptr %i.b, align 8
  %i.c = tail call i32 @__pm_runtime_suspend(ptr noundef %0, i32 noundef 13) #8
  ret i32 %i.c
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @snd_hdac_power_up_pm(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 864        ; 3 uses
  %i.b = load volatile i32, ptr %i.a, align 4     ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %raw_atomic_inc_not_zero.exit, label %.lr.ph, !prof !14

.lr.ph:                                           ; preds = %bb.a, %arch_atomic_try_cmpxchg.exit.i
  %.047 = phi i32 [ %i.i, %arch_atomic_try_cmpxchg.exit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = add i32 %.047, 1
  %i.e = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, i32 %i.d, ptr elementtype(i32) %i.a, i32 %.047) #9, !srcloc !15 ; 2 uses
  %i.f = extractvalue { i8, i32 } %i.e, 0         ; 2 uses
  %i.g = icmp ult i8 %i.f, 2
  tail call void @llvm.assume(i1 %i.g)
  %i.h = trunc nuw i8 %i.f to i1
  br i1 %i.h, label %raw_atomic_inc_not_zero.exit.thread, label %arch_atomic_try_cmpxchg.exit.i, !prof !16

arch_atomic_try_cmpxchg.exit.i:                   ; preds = %.lr.ph
  %i.i = extractvalue { i8, i32 } %i.e, 1         ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %raw_atomic_inc_not_zero.exit, label %.lr.ph, !prof !17

raw_atomic_inc_not_zero.exit:                     ; preds = %arch_atomic_try_cmpxchg.exit.i, %bb.a
  %i.k = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #8
  br label %raw_atomic_inc_not_zero.exit.thread

raw_atomic_inc_not_zero.exit.thread:              ; preds = %.lr.ph, %raw_atomic_inc_not_zero.exit
  %.0 = phi i32 [ %i.k, %raw_atomic_inc_not_zero.exit ], [ 0, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -1, 2) i32 @snd_hdac_keep_power_up(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 864        ; 3 uses
  %i.b = load volatile i32, ptr %i.a, align 4     ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %raw_atomic_inc_not_zero.exit, label %.lr.ph, !prof !14

.lr.ph:                                           ; preds = %bb.a, %arch_atomic_try_cmpxchg.exit.i
  %.01014 = phi i32 [ %i.i, %arch_atomic_try_cmpxchg.exit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = add i32 %.01014, 1
  %i.e = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, i32 %i.d, ptr elementtype(i32) %i.a, i32 %.01014) #9, !srcloc !15 ; 2 uses
  %i.f = extractvalue { i8, i32 } %i.e, 0         ; 2 uses
  %i.g = icmp ult i8 %i.f, 2
  tail call void @llvm.assume(i1 %i.g)
  %i.h = trunc nuw i8 %i.f to i1
  br i1 %i.h, label %raw_atomic_inc_not_zero.exit.thread, label %arch_atomic_try_cmpxchg.exit.i, !prof !16

arch_atomic_try_cmpxchg.exit.i:                   ; preds = %.lr.ph
  %i.i = extractvalue { i8, i32 } %i.e, 1         ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %raw_atomic_inc_not_zero.exit, label %.lr.ph, !prof !17

raw_atomic_inc_not_zero.exit:                     ; preds = %arch_atomic_try_cmpxchg.exit.i, %bb.a
  %i.k = tail call i32 @pm_runtime_get_if_active(ptr noundef %0) #8 ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  %.05 = sext i1 %.not to i32
  %.0 = icmp sgt i32 %i.k, 0
  br i1 %.0, label %raw_atomic_inc_not_zero.exit.thread, label %bb.b

raw_atomic_inc_not_zero.exit.thread:              ; preds = %.lr.ph, %raw_atomic_inc_not_zero.exit
  br label %bb.b

bb.b:                                             ; preds = %raw_atomic_inc_not_zero.exit, %raw_atomic_inc_not_zero.exit.thread
  %.1 = phi i32 [ 1, %raw_atomic_inc_not_zero.exit.thread ], [ %.05, %raw_atomic_inc_not_zero.exit ]
  ret i32 %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @snd_hdac_power_down_pm(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
end_hunk_0
