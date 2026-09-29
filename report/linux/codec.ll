Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/codec?download=true
inline.NumInlined: 288
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@snd_hda_add_new_ctls:bb.a

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @snd_hda_codec_set_power_save(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 1344
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 131072
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread14, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %.thread, label %.thread14

.thread:                                          ; preds = %bb.b, %bb.c
  %.013 = phi i32 [ %1, %bb.c ], [ 3000, %bb.b ]
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %0, i32 noundef %.013) #21
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %0, i1 noundef zeroext true) #21
  tail call void @pm_runtime_allow(ptr noundef %0) #21
  %i.f = getelementptr i8, ptr %0, i64 476
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %pm_runtime_suspended.exit, label %pm_runtime_suspended.exit.thread

pm_runtime_suspended.exit:                        ; preds = %.thread
  %i.i = getelementptr i8, ptr %0, i64 464
  %i.j = load i16, ptr %i.i, align 8
  %i.k = and i16 %i.j, 7
  %.not.i = icmp eq i16 %i.k, 0
  br i1 %.not.i, label %bb.d, label %pm_runtime_suspended.exit.thread

pm_runtime_suspended.exit.thread:                 ; preds = %.thread, %pm_runtime_suspended.exit
  %i.l = tail call i64 @ktime_get_mono_fast_ns() #21
  %i.m = getelementptr i8, ptr %0, i64 496
  store volatile i64 %i.l, ptr %i.m, align 8
  br label %bb.d

.thread14:                                        ; preds = %bb.b, %bb.c
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %0, i1 noundef zeroext false) #21
  tail call void @pm_runtime_forbid(ptr noundef %0) #21
  br label %bb.d

bb.d:                                             ; preds = %pm_runtime_suspended.exit, %pm_runtime_suspended.exit.thread, %.thread14
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @snd_hda_set_power_save(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 88         ; 3 uses
  %.pn9 = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not10 = icmp eq ptr %.pn9, %i.a
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.pn11 = phi ptr [ %.pn, %.lr.ph ], [ %.pn9, %bb.a ] ; 2 uses
  %.0 = getelementptr i8, ptr %.pn11, i64 -784
  tail call void @snd_hda_codec_set_power_save(ptr noundef %.0, i32 noundef %1) #24
  %.pn = load ptr, ptr %.pn11, align 8            ; 2 uses
  %.not = icmp eq ptr %.pn, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !70

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @snd_hda_check_amp_list_power(ptr noundef %0, ptr nofree noundef captures(none) %1, i16 noundef zeroext %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = load ptr, ptr %1, align 8                ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %.preheader37

.preheader37:                                     ; preds = %bb.a, %.preheader37
  %.026 = phi ptr [ %i.e, %.preheader37 ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load i16, ptr %.026, align 2             ; 2 uses
  %.not30 = icmp eq i16 %i.c, 0                   ; 2 uses
  %i.d = icmp eq i16 %i.c, %2
  %or.cond35 = or i1 %.not30, %i.d
  %i.e = getelementptr i8, ptr %.026, i64 4
  br i1 %or.cond35, label %bb.b, label %.preheader37, !llvm.loop !71

bb.b:                                             ; preds = %.preheader37
  br i1 %.not30, label %bb.h, label %.preheader36

.preheader36:                                     ; preds = %bb.b
  %i.f = load i16, ptr %i.b, align 2              ; 2 uses
  %.not3239 = icmp eq i16 %i.f, 0
  br i1 %.not3239, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %.preheader36, %bb.d
  %i.g = phi i16 [ %i.at, %bb.d ], [ %i.f, %.preheader36 ]
  %.140 = phi ptr [ %i.as, %bb.d ], [ %i.b, %.preheader36 ] ; 4 uses
  %i.h = getelementptr i8, ptr %.140, i64 2       ; 2 uses
  %i.i = getelementptr i8, ptr %.140, i64 3       ; 2 uses
  %i.j = load i8, ptr %i.h, align 2
  %i.k = load i8, ptr %i.i, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = zext i16 %i.g to i32
  %i.n = shl i32 %i.m, 20
  %i.o = icmp eq i8 %i.j, 1
  %i.p = select i1 %i.o, i32 32768, i32 0
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = or disjoint i32 %i.q, %i.l
  %i.s = or disjoint i32 %i.r, 729088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !annotation !25
  %i.t = call i32 @snd_hdac_regmap_read_raw(ptr noundef %0, i32 noundef %i.s, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  %i.v = load i32, ptr %i.a, align 4
  %i.w = select i1 %i.u, i32 %i.t, i32 %i.v       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.x = and i32 %i.w, 128
  %i.y = icmp eq i32 %i.x, 0
  %i.z = icmp sgt i32 %i.w, 0
  %or.cond = and i1 %i.z, %i.y
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.aa = load i16, ptr %.140, align 2
  %i.ab = load i8, ptr %i.h, align 2
  %i.ac = load i8, ptr %i.i, align 1
  %i.ad = zext i8 %i.ac to i32
  %i.ae = zext i16 %i.aa to i32
  %i.af = shl i32 %i.ae, 20
  %i.ag = icmp eq i8 %i.ab, 1
  %i.ah = select i1 %i.ag, i32 32768, i32 0
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = or disjoint i32 %i.ai, %i.ad
  %i.ak = or disjoint i32 %i.aj, 720896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !annotation !25
  %i.al = call i32 @snd_hdac_regmap_read_raw(ptr noundef %0, i32 noundef %i.ak, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.am = icmp slt i32 %i.al, 0
  %i.an = load i32, ptr %i.a, align 4
  %i.ao = select i1 %i.am, i32 %i.al, i32 %i.an   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ap = and i32 %i.ao, 128
  %i.aq = icmp eq i32 %i.ap, 0
  %i.ar = icmp sgt i32 %i.ao, 0
  %or.cond.1 = and i1 %i.ar, %i.aq
  br i1 %or.cond.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr i8, ptr %.140, i64 4      ; 2 uses
  %i.at = load i16, ptr %i.as, align 2            ; 2 uses
  %.not32 = icmp eq i16 %i.at, 0
  br i1 %.not32, label %._crit_edge, label %.preheader, !llvm.loop !72

bb.e:                                             ; preds = %bb.c, %.preheader
  %i.au = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.av = load i32, ptr %i.au, align 8
  %.not34 = icmp eq i32 %i.av, 0
  br i1 %.not34, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.au, align 8
  %i.aw = call i32 @snd_hdac_power_up_pm(ptr noundef %0) #21 ; 0 uses
  br label %bb.h

._crit_edge:                                      ; preds = %bb.d, %.preheader36
  %i.ax = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8
  %.not33 = icmp eq i32 %i.ay, 0
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  store i32 0, ptr %i.ax, align 8
  %i.az = call i32 @snd_hdac_power_down_pm(ptr noundef %0) #21 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.e, %bb.f, %bb.b, %bb.a
  %.027 = phi i32 [ 0, %bb.b ], [ 1, %bb.e ], [ 0, %bb.a ], [ 1, %bb.f ], [ 0, %bb.g ], [ 0, %._crit_edge ]
  ret i32 %.027
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_up_pm(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_down_pm(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @snd_hda_input_mux_info(ptr noundef %0, ptr noundef initializes((64, 68), (72, 76), (80, 84)) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 64
  store i32 3, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 72
  store i32 1, ptr %i.b, align 8
  %i.c = load i32, ptr %0, align 4                ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 80
  store i32 %i.c, ptr %i.d, align 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 84
  %i.f = load i32, ptr %i.e, align 4
  %i.g = add i32 %i.c, -1
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.g)
  %i.h = getelementptr i8, ptr %1, i64 88
  %i.i = getelementptr i8, ptr %0, i64 4
  %i.j = zext i32 %spec.select to i64
  %i.k = getelementptr [36 x i8], ptr %i.i, i64 %i.j
  %i.l = tail call i64 @sized_strscpy(ptr noundef %i.h, ptr noundef %i.k, i64 noundef 64) #21 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @sized_strscpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @snd_hda_input_mux_put(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i16 noundef zeroext %3, ptr nofree noundef captures(none) %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %1, align 4                ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %2, i64 72
  %i.c = load i32, ptr %i.b, align 8
  %i.d = add i32 %i.a, -1
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.c, i32 %i.d) ; 3 uses
  %i.e = load i32, ptr %4, align 4
  %i.f = icmp eq i32 %i.e, %spec.select
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = zext i32 %spec.select to i64
  %i.h = getelementptr [36 x i8], ptr %1, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 36
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i16 %3 to i32
  %i.l = shl i32 %i.k, 20
  %i.m = or disjoint i32 %i.l, 983296
  %i.n = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %0, i32 noundef %i.m, i32 noundef %i.j) #21 ; 0 uses
  store i32 %spec.select, ptr %4, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.013 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.013
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @snd_hda_enum_helper_info(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ne ptr %3, null
  %i.b = icmp ne i32 %2, 0
  %or.cond = and i1 %i.b, %i.a                    ; 2 uses
  %spec.select = select i1 %or.cond, i32 %2, i32 2
  %spec.select8 = select i1 %or.cond, ptr %3, ptr @snd_hda_enum_helper_info.texts_default
  %i.c = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef 1, i32 noundef %spec.select, ptr noundef %spec.select8) #21
  ret i32 %i.c
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @snd_hda_multi_out_dig_open(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1152       ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.a) #21
  %i.b = getelementptr i8, ptr %1, i64 52         ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.b, label %cleanup_dig_out_stream.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 38
  %i.f = load i16, ptr %i.e, align 2
  tail call void @__snd_hda_codec_cleanup_stream(ptr noundef %0, i16 noundef zeroext %i.f, i32 noundef 0) #24
  %i.g = getelementptr i8, ptr %0, i64 1232
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %cleanup_dig_out_stream.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.i = load i16, ptr %i.h, align 2              ; 2 uses
  %.not910.i = icmp eq i16 %i.i, 0
  br i1 %.not910.i, label %cleanup_dig_out_stream.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.j = phi i16 [ %i.l, %.lr.ph.i ], [ %i.i, %.preheader.i ]
  %.011.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.h, %.preheader.i ]
  tail call void @__snd_hda_codec_cleanup_stream(ptr noundef %0, i16 noundef zeroext %i.j, i32 noundef 0) #24
  %i.k = getelementptr i8, ptr %.011.i, i64 2     ; 2 uses
  %i.l = load i16, ptr %i.k, align 2              ; 2 uses
  %.not9.i = icmp eq i16 %i.l, 0
  br i1 %.not9.i, label %cleanup_dig_out_stream.exit, label %.lr.ph.i, !llvm.loop !13

cleanup_dig_out_stream.exit:                      ; preds = %.lr.ph.i, %.preheader.i, %bb.b, %bb.a
  store i32 1, ptr %i.b, align 4
  tail call void @mutex_unlock(ptr noundef %i.a) #21
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @snd_hda_multi_out_dig_prepare(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree readnone captures(none) %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1152       ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.a) #21
  %i.b = getelementptr i8, ptr %1, i64 38
  %i.c = load i16, ptr %i.b, align 2
  tail call fastcc void @setup_dig_out_stream(ptr noundef %0, i16 noundef zeroext %i.c, i32 noundef %2, i32 noundef %3) #24, !srcloc !73
  tail call void @mutex_unlock(ptr noundef %i.a) #21
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @setup_dig_out_stream(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1200
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %snd_hda_spdif_out_of_nid.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 1216
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 1208
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.012.i = phi i32 [ 0, %.lr.ph.i ], [ %i.h, %bb.c ]
  %.0811.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.k, %bb.c ] ; 4 uses
  %i.f = load i16, ptr %.0811.i, align 4
  %i.g = icmp eq i16 %i.f, %1
  br i1 %i.g, label %snd_hda_spdif_out_of_nid.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i32 %.012.i, 1                   ; 3 uses
  %.val.i = load i32, ptr %i.e, align 8
  %i.i = mul i32 %.val.i, %i.h
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr i8, ptr %i.d, i64 %i.j
  %exitcond.not.i = icmp eq i32 %i.h, %i.b
  br i1 %exitcond.not.i, label %snd_hda_spdif_out_of_nid.exit.thread, label %bb.b, !llvm.loop !10

snd_hda_spdif_out_of_nid.exit:                    ; preds = %bb.b
  %i.l = icmp eq ptr %.0811.i, null
  br i1 %i.l, label %snd_hda_spdif_out_of_nid.exit.thread, label %.critedge, !prof !75

snd_hda_spdif_out_of_nid.exit.thread:             ; preds = %bb.c, %bb.a, %snd_hda_spdif_out_of_nid.exit
  tail call void asm sideeffect "616: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 616b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 616) #22, !srcloc !76
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.10, ptr nonnull @.str.11, i32 3604, i32 2305, i64 16) #22, !srcloc !77
  tail call void asm sideeffect "617: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 617b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 617) #22, !srcloc !78
  br label %set_dig_out_convert.exit44

.critedge:                                        ; preds = %snd_hda_spdif_out_of_nid.exit
  %i.m = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 2560, i32 noundef 0) #21
  %i.n = getelementptr i8, ptr %0, i64 1344
  %i.o = load i32, ptr %i.n, align 8
  %i.p = and i32 %i.o, 8
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %set_dig_out_convert.exit, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.q = getelementptr i8, ptr %.0811.i, i64 8
  %i.r = load i16, ptr %i.q, align 4              ; 2 uses
  %.not35 = trunc i16 %i.r to i1
  %i.s = icmp ne i32 %i.m, %3
  %spec.select = select i1 %.not35, i1 %i.s, i1 false
  br i1 %spec.select, label %bb.e, label %set_dig_out_convert.exit

bb.e:                                             ; preds = %bb.d
  %i.t = and i16 %i.r, 254
  %i.u = zext nneg i16 %i.t to i32                ; 2 uses
  %i.v = zext i16 %1 to i32
  %i.w = shl i32 %i.v, 20
  %i.x = or disjoint i32 %i.w, 986368
  %i.y = tail call i32 @snd_hdac_regmap_update_raw(ptr noundef %0, i32 noundef %i.x, i32 noundef range(i32 255, 65536) 255, i32 noundef range(i32 0, 65536) %i.u) #21 ; 0 uses
  %i.z = getelementptr i8, ptr %0, i64 1232
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %set_dig_out_convert.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e
  %i.ab = load i16, ptr %i.aa, align 2            ; 2 uses
  %.not1314.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not1314.i.i, label %set_dig_out_convert.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.ac = phi i16 [ %i.ai, %.lr.ph.i.i ], [ %i.ab, %.preheader.i.i ]
  %.015.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %i.aa, %.preheader.i.i ]
  %i.ad = zext i16 %i.ac to i32
  %i.ae = shl i32 %i.ad, 20
  %i.af = or disjoint i32 %i.ae, 986368
  %i.ag = tail call i32 @snd_hdac_regmap_update_raw(ptr noundef %0, i32 noundef %i.af, i32 noundef range(i32 255, 65536) 255, i32 noundef range(i32 0, 65536) %i.u) #21 ; 0 uses
  %i.ah = getelementptr i8, ptr %.015.i.i, i64 2  ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2            ; 2 uses
  %.not13.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not13.i.i, label %set_dig_out_convert.exit, label %.lr.ph.i.i, !llvm.loop !11

set_dig_out_convert.exit:                         ; preds = %.lr.ph.i.i, %.critedge, %.preheader.i.i, %bb.e, %bb.d
  %i.aj = phi i1 [ false, %.critedge ], [ false, %bb.d ], [ true, %bb.e ], [ true, %.preheader.i.i ], [ true, %.lr.ph.i.i ]
  tail call void @snd_hda_codec_setup_stream(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef 0, i32 noundef %3) #24
  %i.ak = getelementptr i8, ptr %0, i64 1232      ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %.not36 = icmp eq ptr %i.al, null
  br i1 %.not36, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %set_dig_out_convert.exit
  %i.am = load i16, ptr %i.al, align 2            ; 2 uses
  %.not3747 = icmp eq i16 %i.am, 0
  br i1 %.not3747, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.an = phi i16 [ %i.ap, %.lr.ph ], [ %i.am, %.preheader ]
  %.048 = phi ptr [ %i.ao, %.lr.ph ], [ %i.al, %.preheader ]
  tail call void @snd_hda_codec_setup_stream(ptr noundef %0, i16 noundef zeroext %i.an, i32 noundef %2, i32 noundef 0, i32 noundef %3) #24
  %i.ao = getelementptr i8, ptr %.048, i64 2      ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2            ; 2 uses
  %.not37 = icmp eq i16 %i.ap, 0
  br i1 %.not37, label %.loopexit, label %.lr.ph, !llvm.loop !74

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %set_dig_out_convert.exit
  br i1 %i.aj, label %bb.f, label %set_dig_out_convert.exit44

bb.f:                                             ; preds = %.loopexit
  %i.aq = getelementptr i8, ptr %.0811.i, i64 8
  %i.ar = load i16, ptr %i.aq, align 4
end_hunk_0
