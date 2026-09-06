Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_color?download=true
inline.NumInlined: 670
inline.NumDeleted: 167
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@intel_color_prepare_commit:bb.a

bb.l:                                             ; preds = %bb.k
  %i.ak = tail call ptr @__drm_to_display(ptr noundef nonnull %i.aj) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.al = phi ptr [ %i.ak, %bb.l ], [ null, %bb.k ]
  %i.am = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not4.i = icmp eq ptr %i.am, null
  br i1 %.not4.i, label %intel_color_uses_chained_dsb.exit.thread, label %intel_color_uses_chained_dsb.exit

intel_color_uses_chained_dsb.exit:                ; preds = %bb.m
  %i.an = getelementptr i8, ptr %i.al, i64 1168
  %i.ao = load i16, ptr %i.an, align 8
  %i.ap = icmp ult i16 %i.ao, 30
  br i1 %i.ap, label %bb.n, label %intel_color_uses_chained_dsb.exit.thread

bb.n:                                             ; preds = %intel_color_uses_chained_dsb.exit
  tail call void @intel_vrr_send_push(ptr noundef nonnull %i.am, ptr noundef %i.j) #11
  %i.aq = load ptr, ptr %i.aa, align 8
  tail call void @intel_dsb_wait_for_delayed_vblank(ptr noundef %0, ptr noundef %i.aq) #11
  %i.ar = load ptr, ptr %i.aa, align 8
  tail call void @intel_vrr_check_push_sent(ptr noundef %i.ar, ptr noundef %i.j) #11
  %i.as = load ptr, ptr %i.aa, align 8
  tail call void @intel_dsb_interrupt(ptr noundef %i.as) #11
  br label %intel_color_uses_chained_dsb.exit.thread

intel_color_uses_chained_dsb.exit.thread:         ; preds = %bb.m, %bb.n, %intel_color_uses_chained_dsb.exit, %bb.j
  %i.at = load ptr, ptr %i.j, align 8
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i36 = icmp eq ptr %i.au, null
  br i1 %.not.i36, label %bb.p, label %bb.o

bb.o:                                             ; preds = %intel_color_uses_chained_dsb.exit.thread
  %i.av = tail call ptr @__drm_to_display(ptr noundef nonnull %i.au) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %intel_color_uses_chained_dsb.exit.thread
  %i.aw = phi ptr [ %i.av, %bb.o ], [ null, %intel_color_uses_chained_dsb.exit.thread ]
  %i.ax = load ptr, ptr %i.aa, align 8            ; 3 uses
  %.not4.i37 = icmp eq ptr %i.ax, null
  br i1 %.not4.i37, label %intel_color_uses_gosub_dsb.exit.thread, label %intel_color_uses_gosub_dsb.exit

intel_color_uses_gosub_dsb.exit:                  ; preds = %bb.p
  %i.ay = getelementptr i8, ptr %i.aw, i64 1168
  %i.az = load i16, ptr %i.ay, align 8
  %i.ba = icmp ugt i16 %i.az, 29
  br i1 %i.ba, label %bb.q, label %intel_color_uses_gosub_dsb.exit.thread

bb.q:                                             ; preds = %intel_color_uses_gosub_dsb.exit
  tail call void @intel_dsb_gosub_finish(ptr noundef nonnull %i.ax) #11
  br label %intel_crtc_needs_color_update.exit

intel_color_uses_gosub_dsb.exit.thread:           ; preds = %bb.p, %intel_color_uses_gosub_dsb.exit
  tail call void @intel_dsb_finish(ptr noundef %i.ax) #11
  br label %intel_crtc_needs_color_update.exit

intel_crtc_needs_color_update.exit:               ; preds = %bb.f, %bb.q, %intel_color_uses_gosub_dsb.exit.thread, %bb.i, %bb.h, %bb.c, %bb.d
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_dsb_prepare(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_vrr_send_push(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dsb_wait_for_delayed_vblank(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_vrr_check_push_sent(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dsb_interrupt(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dsb_gosub_finish(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dsb_finish(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_color_cleanup_commit(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4600       ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @intel_dsb_cleanup(ptr noundef nonnull %i.b) #11
  store ptr null, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dsb_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_color_wait_commit(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4600
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @intel_dsb_wait(ptr noundef nonnull %i.b) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dsb_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @intel_color_check(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 40
  %.val24 = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %1, i64 136
  %.val25 = load i32, ptr %i.f, align 8
  %i.g = zext i32 %.val25 to i64
  %i.h = getelementptr [56 x i8], ptr %.val24, i64 %i.g ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr i8, ptr %i.h, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 6 uses
  %i.m = getelementptr i8, ptr %i.j, i64 3948
  %i.n = load i8, ptr %i.m, align 4
  %.not18 = icmp eq i8 %i.n, 0
  %i.o = getelementptr i8, ptr %i.l, i64 3948
  %i.p = load i8, ptr %i.o, align 4
  %i.q = icmp ne i8 %i.p, 0
  %.not20 = xor i1 %.not18, %i.q
  br i1 %.not20, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.j, i64 736
  %i.s = load i32, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.l, i64 736
  %i.u = load i32, ptr %i.t, align 8
  %.not21 = icmp eq i32 %i.s, %i.u
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = getelementptr i8, ptr %i.l, i64 10       ; 2 uses
  %i.w = load i8, ptr %i.v, align 2
  %i.x = or i8 %i.w, 32
  store i8 %i.x, ptr %i.v, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = getelementptr i8, ptr %i.l, i64 296
  %i.z = load i64, ptr %i.y, align 8
  %.not22 = icmp ugt i64 %i.z, -281474976710657
  br i1 %.not22, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.g, %bb.h
  %i.ad = phi ptr [ %i.ac, %bb.h ], [ null, %bb.g ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ad, i32 noundef 2, ptr noundef nonnull @.str) #11
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %i.l, i64 10
  %i.af = load i8, ptr %i.ae, align 2             ; 2 uses
  %i.ag = and i8 %i.af, 32
  %.not.i26 = icmp eq i8 %i.ag, 0
  br i1 %.not.i26, label %bb.j, label %intel_crtc_needs_color_update.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr i8, ptr %i.l, i64 844
  %.val3.i = load i8, ptr %i.ah, align 4, !range !15, !noundef !16
  %i.ai = and i8 %i.af, 14
  %2 = or disjoint i8 %.val3.i, %i.ai
  %or.cond.not = icmp eq i8 %2, 0
  br i1 %or.cond.not, label %bb.k, label %intel_crtc_needs_color_update.exit.thread

intel_crtc_needs_color_update.exit.thread:        ; preds = %bb.i, %bb.j
  %i.aj = getelementptr i8, ptr %i.d, i64 696
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call i32 %i.al(ptr noundef %0, ptr noundef %1) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %intel_crtc_needs_color_update.exit.thread, %__drm_to_dev.exit
  %.0 = phi i32 [ -22, %__drm_to_dev.exit ], [ %i.am, %intel_crtc_needs_color_update.exit.thread ], [ 0, %bb.j ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_color_get_config(ptr noundef %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.e = getelementptr i8, ptr %i.d, i64 696      ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef %0) #11
  %i.i = load ptr, ptr %i.e, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef %0) #11
  %i.l = load ptr, ptr %i.e, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.n, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.n(ptr noundef %0) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @intel_color_lut_equal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  br i1 %3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 3948
  %i.f = load i8, ptr %i.e, align 4
  %.not10 = icmp eq i8 %i.f, 0
  br i1 %.not10, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr i8, ptr %i.d, i64 696
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call zeroext i1 %i.j(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i1 [ %i.k, %bb.e ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_color_assert_luts(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 21 uses
  %i.e = getelementptr i8, ptr %i.d, i64 1168
  %i.f = load i16, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ugt i16 %i.f, 10
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.d, i64 1160
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 46
  %i.k = load i16, ptr %i.j, align 2
  %i.l = and i16 %i.k, 128
  %.not93 = icmp eq i16 %i.l, 0
  br i1 %.not93, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr i8, ptr %0, i64 752
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %0, i64 352
  %i.p = load ptr, ptr %i.o, align 8
  %.not99 = icmp eq ptr %i.n, %i.p
  br i1 %.not99, label %bb.k, label %bb.f, !prof !17

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.f, %bb.g
  %i.t = phi ptr [ %i.s, %bb.g ], [ null, %bb.f ]
  %i.u = tail call ptr @dev_driver_string(ptr noundef %i.t) #11 ; 0 uses
  %i.v = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.3, i32 2356, i32 2321, i64 16) #12, !srcloc !45
  %i.w = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i110 = icmp eq ptr %i.w, null
  br i1 %.not.i110, label %__drm_to_dev.exit111, label %bb.h

bb.h:                                             ; preds = %__drm_to_dev.exit
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  br label %__drm_to_dev.exit111

__drm_to_dev.exit111:                             ; preds = %__drm_to_dev.exit, %bb.h
  %i.z = phi ptr [ %i.y, %bb.h ], [ null, %__drm_to_dev.exit ]
  %i.aa = tail call ptr @dev_driver_string(ptr noundef %i.z) #11
  %i.ab = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i112 = icmp eq ptr %i.ab, null
  br i1 %.not.i112, label %__drm_to_dev.exit113, label %bb.i

bb.i:                                             ; preds = %__drm_to_dev.exit111
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  br label %__drm_to_dev.exit113

__drm_to_dev.exit113:                             ; preds = %__drm_to_dev.exit111, %bb.i
  %i.ae = phi ptr [ %i.ad, %bb.i ], [ null, %__drm_to_dev.exit111 ] ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 80
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i114 = icmp eq ptr %i.ag, null
  br i1 %.not.i114, label %bb.j, label %dev_name.exit117

bb.j:                                             ; preds = %__drm_to_dev.exit113
  %.val.i116 = load ptr, ptr %i.ae, align 8
  br label %dev_name.exit117

dev_name.exit117:                                 ; preds = %__drm_to_dev.exit113, %bb.j
  %.0.i115 = phi ptr [ %.val.i116, %bb.j ], [ %i.ag, %__drm_to_dev.exit113 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.v, ptr noundef %i.aa, ptr noundef %.0.i115, ptr noundef nonnull @.str.2) #11
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !46
  br label %bb.k

bb.k:                                             ; preds = %dev_name.exit117, %bb.e
  %i.ah = getelementptr i8, ptr %0, i64 760
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %0, i64 360
  %i.ak = load ptr, ptr %i.aj, align 8
  %.not100 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not100, label %.critedge102, label %bb.l, !prof !17

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i118 = icmp eq ptr %i.al, null
  br i1 %.not.i118, label %__drm_to_dev.exit119, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  br label %__drm_to_dev.exit119

__drm_to_dev.exit119:                             ; preds = %bb.l, %bb.m
  %i.ao = phi ptr [ %i.an, %bb.m ], [ null, %bb.l ]
  %i.ap = tail call ptr @dev_driver_string(ptr noundef %i.ao) #11 ; 0 uses
  %i.aq = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.3, i32 2358, i32 2321, i64 16) #12, !srcloc !47
  %i.ar = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i126 = icmp eq ptr %i.ar, null
end_hunk_0
begin_hunk_1_@ilk_color_check:bb.a
  %i.au = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i48 = icmp eq ptr %i.au, null
  br i1 %.not.i48, label %__drm_to_dev.exit49, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  br label %__drm_to_dev.exit49

__drm_to_dev.exit49:                              ; preds = %bb.l, %bb.m
  %i.ax = phi ptr [ %i.aw, %bb.m ], [ null, %bb.l ]
  %i.ay = getelementptr i8, ptr %1, i64 88
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = getelementptr i8, ptr %1, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ax, i32 noundef 2, ptr noundef nonnull @.str.25, i32 noundef %i.az, ptr noundef %i.bb) #11
  br label %bb.v

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.bc = load ptr, ptr %i.v, align 8
  %.not.i50 = icmp ne ptr %i.bc, null
  %brmerge = or i1 %.not41, %.not.i50
  br i1 %brmerge, label %bb.o, label %ilk_gamma_enable.exit

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr i8, ptr %i.j, i64 3948
  %i.be = load i8, ptr %i.bd, align 4
  %.not4.i = icmp eq i8 %i.be, 0
  %i.bf = zext i1 %.not4.i to i8
  br label %ilk_gamma_enable.exit

ilk_gamma_enable.exit:                            ; preds = %bb.n, %bb.o
  %i.bg = phi i8 [ 0, %bb.n ], [ %i.bf, %bb.o ]
  %i.bh = getelementptr i8, ptr %i.j, i64 4400    ; 2 uses
  store i8 %i.bg, ptr %i.bh, align 8
  br i1 %.not43, label %bb.p, label %ilk_csc_enable.exit

bb.p:                                             ; preds = %ilk_gamma_enable.exit
  %i.bi = tail call fastcc zeroext i1 @ilk_csc_limited_range(ptr noundef readonly %i.j) #14, !srcloc !41
  br i1 %i.bi, label %ilk_csc_enable.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr i8, ptr %i.j, i64 368
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = icmp ne ptr %i.bk, null
  %i.bm = zext i1 %i.bl to i8
  br label %ilk_csc_enable.exit

ilk_csc_enable.exit:                              ; preds = %ilk_gamma_enable.exit, %bb.p, %bb.q
  %i.bn = phi i8 [ 1, %bb.p ], [ 1, %ilk_gamma_enable.exit ], [ %i.bm, %bb.q ]
  %i.bo = getelementptr i8, ptr %i.j, i64 4401
  store i8 %i.bn, ptr %i.bo, align 1
  %i.bp = load i8, ptr %i.bh, align 8, !range !15, !noundef !16
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.r, label %ilk_gamma_mode.exit

bb.r:                                             ; preds = %ilk_csc_enable.exit
  %i.br = load ptr, ptr %i.v, align 8             ; 2 uses
  %.not.i.i52 = icmp eq ptr %i.br, null
  br i1 %.not.i.i52, label %ilk_gamma_mode.exit, label %lut_is_legacy.exit.i

lut_is_legacy.exit.i:                             ; preds = %bb.r
  %i.bs = getelementptr i8, ptr %i.br, i64 72
  %.val.i.i = load i64, ptr %i.bs, align 8
  %.val.i.fr.i = freeze i64 %.val.i.i
  %i.bt = and i64 %.val.i.fr.i, 34359738360
  %i.bu = icmp ne i64 %i.bt, 2048
  %spec.select.i = zext i1 %i.bu to i32
  br label %ilk_gamma_mode.exit

ilk_gamma_mode.exit:                              ; preds = %ilk_csc_enable.exit, %bb.r, %lut_is_legacy.exit.i
  %.0.i = phi i32 [ 0, %ilk_csc_enable.exit ], [ 1, %bb.r ], [ %spec.select.i, %lut_is_legacy.exit.i ]
  %i.bv = getelementptr i8, ptr %i.j, i64 3936
  store i32 %.0.i, ptr %i.bv, align 8
  %i.bw = load i32, ptr %i.aq, align 8
  %.not.i53 = icmp eq i32 %i.bw, 0
  br i1 %.not.i53, label %bb.s, label %ilk_csc_mode.exit

bb.s:                                             ; preds = %ilk_gamma_mode.exit
  %i.bx = load ptr, ptr %i.af, align 8
  %.not2.i = icmp eq ptr %i.bx, null
  %..i = select i1 %.not2.i, i32 3, i32 1
  br label %ilk_csc_mode.exit

ilk_csc_mode.exit:                                ; preds = %ilk_gamma_mode.exit, %bb.s
  %.0.i54 = phi i32 [ 4, %ilk_gamma_mode.exit ], [ %..i, %bb.s ]
  %i.by = getelementptr i8, ptr %i.j, i64 3940
  store i32 %.0.i54, ptr %i.by, align 4
  %i.bz = tail call fastcc i32 @intel_color_add_affected_planes(ptr noundef %0, ptr noundef %1) #14, !srcloc !232 ; 2 uses
  %.not45 = icmp eq i32 %i.bz, 0
  br i1 %.not45, label %bb.t, label %bb.v

bb.t:                                             ; preds = %ilk_csc_mode.exit
  %i.ca = tail call fastcc i32 @ilk_assign_luts(ptr noundef %i.j) #14, !srcloc !233 ; 2 uses
  %.not46 = icmp eq i32 %i.ca, 0
  br i1 %.not46, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @ilk_assign_csc(ptr noundef %i.j) #14, !srcloc !234
  %i.cb = tail call fastcc zeroext i1 @intel_can_preload_luts(ptr noundef %0, ptr noundef %1) #14, !srcloc !235
  %i.cc = getelementptr i8, ptr %i.j, i64 851
  %i.cd = zext i1 %i.cb to i8
  store i8 %i.cd, ptr %i.cc, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %ilk_csc_mode.exit, %check_luts.exit, %bb.u, %__drm_to_dev.exit49, %__drm_to_dev.exit
  %.0 = phi i32 [ 0, %bb.u ], [ -22, %__drm_to_dev.exit ], [ -22, %__drm_to_dev.exit49 ], [ %i.ae, %check_luts.exit ], [ %i.bz, %ilk_csc_mode.exit ], [ %i.ca, %bb.t ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ilk_load_luts(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 760
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 752
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  %i.e = select i1 %.not, ptr %i.d, ptr %i.b      ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 3936       ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  switch i32 %i.g, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @ilk_load_lut_8(ptr noundef %0, ptr noundef %i.e) #14, !srcloc !237
  br label %ilk_load_lut_10.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 72
  %.val = load i64, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.e, i64 80
  %.val16 = load ptr, ptr %i.i, align 8
  %i.j = lshr i64 %.val, 3                        ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %ilk_load_lut_10.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 1664
  %i.o = load i32, ptr %i.n, align 8
  %i.p = shl i32 %i.o, 12
  %i.q = add i32 %i.p, 307200
  %wide.trip.count.i = and i64 %i.j, 2147483647
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.r = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.s = shl i32 %i.r, 2
  %i.t = add i32 %i.q, %i.s
  %i.u = getelementptr [8 x i8], ptr %.val16, i64 %indvars.iv.i ; 3 uses
  %i.v = load i16, ptr %i.u, align 2
  %i.w = zext i16 %i.v to i32
  %reass.sub.i.i.i = mul nuw nsw i32 %i.w, 1023
  %i.x = add nuw nsw i32 %reass.sub.i.i.i, 32767
  %i.y = udiv i32 %i.x, 65535
  %i.z = shl nuw nsw i32 %i.y, 20
  %i.aa = and i32 %i.z, 1072693248
  %i.ab = getelementptr i8, ptr %i.u, i64 2
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = zext i16 %i.ac to i32
  %reass.sub.i4.i.i = mul nuw nsw i32 %i.ad, 1023
  %i.ae = add nuw nsw i32 %reass.sub.i4.i.i, 32767
  %i.af = udiv i32 %i.ae, 65535
  %i.ag = shl nuw nsw i32 %i.af, 10
  %i.ah = and i32 %i.ag, 1047552
  %i.ai = getelementptr i8, ptr %i.u, i64 4
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = zext i16 %i.aj to i32
  %reass.sub.i6.i.i = mul nuw nsw i32 %i.ak, 1023
  %i.al = add nuw nsw i32 %reass.sub.i6.i.i, 32767
  %i.am = udiv i32 %i.al, 65535
  %i.an = or disjoint i32 %i.am, %i.aa
  %i.ao = or disjoint i32 %i.an, %i.ah
  tail call fastcc void @ilk_lut_write(ptr noundef readonly %0, i32 %i.t, i32 noundef %i.ao) #14, !srcloc !238
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ilk_load_lut_10.exit, label %bb.d, !llvm.loop !236

bb.e:                                             ; preds = %bb.a
  %i.ap = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.17, ptr nonnull @.str.3, i32 1447, i32 2321, i64 16) #12, !srcloc !239
  %i.aq = load i32, ptr %i.f, align 8
  %i.ar = zext i32 %i.aq to i64
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ap, ptr noundef nonnull @.str.18, i64 noundef %i.ar) #11
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !240
  br label %ilk_load_lut_10.exit

ilk_load_lut_10.exit:                             ; preds = %bb.d, %bb.c, %bb.e, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ilk_read_luts(ptr nofree noundef captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 3948
  %i.c = load i8, ptr %i.b, align 4               ; 2 uses
  %.not.i.not = icmp eq i8 %i.c, 0
  %1 = getelementptr i8, ptr %0, i64 4400
  %2 = load i8, ptr %1, align 8, !range !15       ; 2 uses
  br i1 %.not.i.not, label %bb.b, label %.ilk_has_post_csc_lut.exit.thread_crit_edge

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i8 %2 to i1
  br i1 %i.d, label %ilk_has_post_csc_lut.exit, label %.ilk_has_post_csc_lut.exit.thread_crit_edge

ilk_has_post_csc_lut.exit:                        ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 3940
  %i.f = load i32, ptr %i.e, align 4
  %.fr27 = freeze i32 %i.f
  %i.g = and i32 %.fr27, 2
  %.not = icmp eq i32 %i.g, 0
  %spec.select = select i1 %.not, i64 752, i64 760
  br label %.ilk_has_post_csc_lut.exit.thread_crit_edge

.ilk_has_post_csc_lut.exit.thread_crit_edge:      ; preds = %ilk_has_post_csc_lut.exit, %bb.a, %bb.b
  %3 = phi i8 [ 0, %bb.b ], [ 1, %ilk_has_post_csc_lut.exit ], [ %2, %bb.a ]
  %4 = phi i64 [ 752, %bb.b ], [ %spec.select, %ilk_has_post_csc_lut.exit ], [ 760, %bb.a ]
  %i.h = getelementptr i8, ptr %0, i64 %4         ; 2 uses
  %5 = or i8 %3, %i.c
  %brmerge.not = icmp eq i8 %5, 0
  br i1 %brmerge.not, label %ilk_has_post_csc_lut.exit.thread24, label %6

6:                                                ; preds = %.ilk_has_post_csc_lut.exit.thread_crit_edge
  %7 = getelementptr i8, ptr %0, i64 3936         ; 2 uses
  %8 = load i32, ptr %7, align 8
  switch i32 %8, label %bb.m [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %6
  %i.i = tail call fastcc ptr @ilk_read_lut_8(ptr noundef %i.a) #14, !srcloc !242
  store ptr %i.i, ptr %i.h, align 8
  br label %ilk_has_post_csc_lut.exit.thread24

bb.d:                                             ; preds = %6
  %i.j = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i20 = icmp eq ptr %i.j, null
  br i1 %.not.i20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @__drm_to_display(ptr noundef nonnull %i.j) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ %i.k, %bb.e ], [ null, %bb.d ] ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 1160
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 128
  %i.p = load i32, ptr %i.o, align 4              ; 3 uses
  %i.q = getelementptr i8, ptr %i.a, i64 1664
  %i.r = load i32, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.l, align 8
  %i.t = sext i32 %i.p to i64
  %i.u = shl nsw i64 %i.t, 3
  %i.v = tail call ptr @drm_property_create_blob(ptr noundef %i.s, i64 noundef %i.u, ptr noundef null) #11 ; 4 uses
  %i.w = icmp ugt ptr %i.v, inttoptr (i64 -4096 to ptr)
  br i1 %i.w, label %ilk_read_lut_10.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %i.v, i64 80
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp sgt i32 %i.p, 0
  br i1 %i.z, label %.lr.ph.i, label %ilk_read_lut_10.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.aa = shl i32 %i.r, 12
  %i.ab = add i32 %i.aa, 307200
  %wide.trip.count.i = zext nneg i32 %i.p to i64
  br label %bb.h

bb.h:                                             ; preds = %intel_de_read_fw.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %intel_de_read_fw.exit.i ] ; 3 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ad = shl i32 %i.ac, 2
  %i.ae = add i32 %i.ab, %i.ad                    ; 4 uses
  %.val.i = load ptr, ptr %i.l, align 8
  %i.af = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #11 ; 2 uses
  %i.ag = icmp ult i32 %i.ae, 262144
  br i1 %i.ag, label %bb.i, label %__raw_uncore_read32.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr i8, ptr %i.af, i64 36
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = add i32 %i.ai, %i.ae
  br label %__raw_uncore_read32.exit.i.i

__raw_uncore_read32.exit.i.i:                     ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i32 [ %i.aj, %bb.i ], [ %i.ae, %bb.h ]
  %i.ak = load ptr, ptr %i.af, align 8
  %i.al = zext i32 %.0.i.i.i to i64
  %i.am = getelementptr i8, ptr %i.ak, i64 %i.al
  %i.an = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.am) #12, !srcloc !29 ; 4 uses
  %i.ao = zext i32 %i.an to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %intel_de_read_fw.exit.i [label %arch_test_bit.exit.i.i.i.i], !srcloc !18

arch_test_bit.exit.i.i.i.i:                       ; preds = %__raw_uncore_read32.exit.i.i
  %i.ap = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #12, !srcloc !19
  %i.aq = zext i32 %i.ap to i64
  %i.ar = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.aq) #12, !srcloc !20 ; 2 uses
  %i.as = icmp ult i8 %i.ar, 2
  tail call void @llvm.assume(i1 %i.as)
  %i.at = trunc nuw i8 %i.ar to i1
  br i1 %i.at, label %bb.j, label %intel_de_read_fw.exit.i

bb.j:                                             ; preds = %arch_test_bit.exit.i.i.i.i
  %i.au = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.au, ptr elementtype(i64) %i.au) #12, !srcloc !21
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !22
  %i.av = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.ax, i1 noundef zeroext false, i32 %i.ae, i64 noundef range(i64 0, 4294967296) %i.ao, i32 noundef 4, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !23
  %i.az = getelementptr i8, ptr %i.au, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.az, ptr elementtype(i64) %i.az) #12, !srcloc !24
  br label %intel_de_read_fw.exit.i

intel_de_read_fw.exit.i:                          ; preds = %bb.l, %arch_test_bit.exit.i.i.i.i, %__raw_uncore_read32.exit.i.i
  %i.ba = getelementptr [8 x i8], ptr %i.y, i64 %indvars.iv.i ; 3 uses
  %i.bb = lshr i32 %i.an, 20
  %i.bc = and i32 %i.bb, 1023
  %i.bd = mul nuw nsw i32 %i.bc, 65535
  %i.be = add nuw nsw i32 %i.bd, 511
  %i.bf = udiv i32 %i.be, 1023
  %i.bg = trunc nuw i32 %i.bf to i16
  store i16 %i.bg, ptr %i.ba, align 2
  %i.bh = lshr i32 %i.an, 10
  %i.bi = and i32 %i.bh, 1023
  %i.bj = mul nuw nsw i32 %i.bi, 65535
  %i.bk = add nuw nsw i32 %i.bj, 511
  %i.bl = udiv i32 %i.bk, 1023
  %i.bm = trunc nuw i32 %i.bl to i16
  %i.bn = getelementptr i8, ptr %i.ba, i64 2
  store i16 %i.bm, ptr %i.bn, align 2
  %i.bo = and i32 %i.an, 1023
  %i.bp = mul nuw nsw i32 %i.bo, 65535
  %i.bq = add nuw nsw i32 %i.bp, 511
  %i.br = udiv i32 %i.bq, 1023
  %i.bs = trunc nuw i32 %i.br to i16
  %i.bt = getelementptr i8, ptr %i.ba, i64 4
  store i16 %i.bs, ptr %i.bt, align 2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ilk_read_lut_10.exit, label %bb.h, !llvm.loop !241

ilk_read_lut_10.exit:                             ; preds = %intel_de_read_fw.exit.i, %bb.f, %bb.g
  %.0.i21 = phi ptr [ null, %bb.f ], [ %i.v, %bb.g ], [ %i.v, %intel_de_read_fw.exit.i ]
  store ptr %.0.i21, ptr %i.h, align 8
  br label %ilk_has_post_csc_lut.exit.thread24

bb.m:                                             ; preds = %6
  %i.bu = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.17, ptr nonnull @.str.3, i32 3592, i32 2321, i64 16) #12, !srcloc !243
  %i.bv = load i32, ptr %7, align 8
  %i.bw = zext i32 %i.bv to i64
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bu, ptr noundef nonnull @.str.18, i64 noundef %i.bw) #11
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !244
  br label %ilk_has_post_csc_lut.exit.thread24

ilk_has_post_csc_lut.exit.thread24:               ; preds = %.ilk_has_post_csc_lut.exit.thread_crit_edge, %bb.c, %ilk_read_lut_10.exit, %bb.m
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef zeroext i1 @ilk_lut_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i1 noundef zeroext %3) #2 align 16 prefalign(16) {
bb.a:
  br i1 %3, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 4400
  %i.b = load i8, ptr %i.a, align 8, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %ilk_has_pre_csc_lut.exit.i, label %ilk_pre_csc_lut_precision.exit

ilk_has_pre_csc_lut.exit.i:                       ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 3940
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 2
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %ilk_pre_csc_lut_precision.exit

bb.c:                                             ; preds = %ilk_has_pre_csc_lut.exit.i
  %i.h = getelementptr i8, ptr %0, i64 3936
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  switch i32 %i.i, label %bb.e [
    i32 0, label %ilk_pre_csc_lut_precision.exit
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %ilk_pre_csc_lut_precision.exit

bb.e:                                             ; preds = %bb.c
  %i.j = zext i32 %i.i to i64
  %i.k = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.17, ptr nonnull @.str.3, i32 3023, i32 2321, i64 16) #12, !srcloc !39
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.k, ptr noundef nonnull @.str.29, i64 noundef %i.j) #11
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !40
  br label %ilk_pre_csc_lut_precision.exit

ilk_pre_csc_lut_precision.exit:                   ; preds = %bb.b, %ilk_has_pre_csc_lut.exit.i, %bb.c, %bb.d, %bb.e
  %i.l = phi i1 [ false, %bb.c ], [ true, %ilk_has_pre_csc_lut.exit.i ], [ true, %bb.e ], [ false, %bb.d ], [ true, %bb.b ]
  %.0.i = phi i32 [ 8, %bb.c ], [ 0, %ilk_has_pre_csc_lut.exit.i ], [ 0, %bb.e ], [ 10, %bb.d ], [ 0, %bb.b ]
  %.not.i = icmp eq ptr %1, null                  ; 3 uses
  %i.m = icmp eq ptr %2, null
  %.not26.not.i = xor i1 %.not.i, %i.m
  %.not28.not.i = xor i1 %.not.i, %i.l
  %or.cond.not33.i = or i1 %.not26.not.i, %.not28.not.i ; 2 uses
  %brmerge.i = or i1 %.not.i, %or.cond.not33.i
  %not.or.cond.not33.i = xor i1 %or.cond.not33.i, true
  br i1 %brmerge.i, label %intel_lut_equal.exit, label %bb.f

bb.f:                                             ; preds = %ilk_pre_csc_lut_precision.exit
  %i.n = getelementptr i8, ptr %1, i64 72
  %.val32.i = load i64, ptr %i.n, align 8
  %i.o = lshr i64 %.val32.i, 3                    ; 2 uses
  %i.p = trunc i64 %i.o to i32                    ; 3 uses
  %i.q = getelementptr i8, ptr %2, i64 72
  %.val.i = load i64, ptr %i.q, align 8
  %i.r = lshr i64 %.val.i, 3
  %i.s = trunc i64 %i.r to i32
  %.not29.i = icmp ne i32 %i.p, %i.s
  %i.t = icmp slt i32 %i.p, 0
  %or.cond31.i = or i1 %i.t, %.not29.i
  br i1 %or.cond31.i, label %intel_lut_equal.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %1, i64 80
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %2, i64 80
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq i32 %i.p, 0
  br i1 %i.y, label %intel_lut_equal.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.z = lshr i32 65535, %.0.i
  %i.aa = zext nneg i32 %i.z to i64               ; 3 uses
  %wide.trip.count.i.i = and i64 %i.o, 2147483647
  br label %bb.i

bb.h:                                             ; preds = %err_check.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %intel_lut_equal.exit, label %bb.i, !llvm.loop !0

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 3 uses
  %i.ab = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv.i.i ; 3 uses
  %i.ac = getelementptr [8 x i8], ptr %i.x, i64 %indvars.iv.i.i ; 3 uses
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = zext i16 %i.ad to i64
  %i.af = load i16, ptr %i.ab, align 2
  %i.ag = zext i16 %i.af to i64
  %i.ah = sub nsw i64 %i.ae, %i.ag
  %i.ai = tail call i64 @llvm.abs.i64(i64 %i.ah, i1 true)
  %.not.i.i.i = icmp samesign ugt i64 %i.ai, %i.aa
  br i1 %.not.i.i.i, label %intel_lut_equal.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr i8, ptr %i.ac, i64 4
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = zext i16 %i.ak to i64
  %i.am = getelementptr i8, ptr %i.ab, i64 4
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = zext i16 %i.an to i64
  %i.ap = sub nsw i64 %i.al, %i.ao
  %i.aq = tail call i64 @llvm.abs.i64(i64 %i.ap, i1 true)
  %.not20.i.i.i = icmp samesign ugt i64 %i.aq, %i.aa
  br i1 %.not20.i.i.i, label %intel_lut_equal.exit, label %err_check.exit.i.i

err_check.exit.i.i:                               ; preds = %bb.j
  %i.ar = getelementptr i8, ptr %i.ac, i64 2
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = zext i16 %i.as to i64
  %i.au = getelementptr i8, ptr %i.ab, i64 2
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = zext i16 %i.av to i64
  %i.ax = sub nsw i64 %i.at, %i.aw
  %i.ay = tail call i64 @llvm.abs.i64(i64 %i.ax, i1 true)
  %.not.i.i = icmp samesign ugt i64 %i.ay, %i.aa
  br i1 %.not.i.i, label %intel_lut_equal.exit, label %bb.h

bb.k:                                             ; preds = %bb.a
  %i.az = getelementptr i8, ptr %0, i64 3948
  %i.ba = load i8, ptr %i.az, align 4
  %.not.i.i8 = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i8, label %bb.l, label %ilk_has_post_csc_lut.exit.thread.i

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr i8, ptr %0, i64 4400
  %i.bc = load i8, ptr %i.bb, align 8, !range !15, !noundef !16
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %ilk_has_post_csc_lut.exit.i, label %ilk_post_csc_lut_precision.exit

ilk_has_post_csc_lut.exit.i:                      ; preds = %bb.l
  %i.be = getelementptr i8, ptr %0, i64 3940
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = and i32 %i.bf, 2
  %.not.i10 = icmp eq i32 %i.bg, 0
  br i1 %.not.i10, label %ilk_post_csc_lut_precision.exit, label %ilk_has_post_csc_lut.exit.thread.i

ilk_has_post_csc_lut.exit.thread.i:               ; preds = %ilk_has_post_csc_lut.exit.i, %bb.k
  %i.bh = getelementptr i8, ptr %0, i64 3936
  %i.bi = load i32, ptr %i.bh, align 8            ; 2 uses
  switch i32 %i.bi, label %bb.n [
    i32 0, label %ilk_post_csc_lut_precision.exit
    i32 1, label %bb.m
  ]

bb.m:                                             ; preds = %ilk_has_post_csc_lut.exit.thread.i
  br label %ilk_post_csc_lut_precision.exit

bb.n:                                             ; preds = %ilk_has_post_csc_lut.exit.thread.i
  %i.bj = zext i32 %i.bi to i64
  %i.bk = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.17, ptr nonnull @.str.3, i32 3023, i32 2321, i64 16) #12, !srcloc !39
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bk, ptr noundef nonnull @.str.29, i64 noundef %i.bj) #11
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !40
  br label %ilk_post_csc_lut_precision.exit

ilk_post_csc_lut_precision.exit:                  ; preds = %bb.l, %ilk_has_post_csc_lut.exit.i, %ilk_has_post_csc_lut.exit.thread.i, %bb.m, %bb.n
  %i.bl = phi i1 [ false, %ilk_has_post_csc_lut.exit.thread.i ], [ true, %ilk_has_post_csc_lut.exit.i ], [ true, %bb.n ], [ false, %bb.m ], [ true, %bb.l ]
  %.0.i9 = phi i32 [ 8, %ilk_has_post_csc_lut.exit.thread.i ], [ 0, %ilk_has_post_csc_lut.exit.i ], [ 0, %bb.n ], [ 10, %bb.m ], [ 0, %bb.l ]
  %.not.i11 = icmp eq ptr %1, null                ; 3 uses
  %i.bm = icmp eq ptr %2, null
  %.not26.not.i12 = xor i1 %.not.i11, %i.bm
  %.not28.not.i13 = xor i1 %.not.i11, %i.bl
  %or.cond.not33.i14 = or i1 %.not26.not.i12, %.not28.not.i13 ; 2 uses
  %brmerge.i15 = or i1 %.not.i11, %or.cond.not33.i14
  %not.or.cond.not33.i16 = xor i1 %or.cond.not33.i14, true
  br i1 %brmerge.i15, label %intel_lut_equal.exit, label %bb.o

bb.o:                                             ; preds = %ilk_post_csc_lut_precision.exit
  %i.bn = getelementptr i8, ptr %1, i64 72
  %.val32.i17 = load i64, ptr %i.bn, align 8
  %i.bo = lshr i64 %.val32.i17, 3                 ; 2 uses
  %i.bp = trunc i64 %i.bo to i32                  ; 3 uses
  %i.bq = getelementptr i8, ptr %2, i64 72
  %.val.i18 = load i64, ptr %i.bq, align 8
  %i.br = lshr i64 %.val.i18, 3
  %i.bs = trunc i64 %i.br to i32
  %.not29.i19 = icmp ne i32 %i.bp, %i.bs
  %i.bt = icmp slt i32 %i.bp, 0
  %or.cond31.i20 = or i1 %i.bt, %.not29.i19
  br i1 %or.cond31.i20, label %intel_lut_equal.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr i8, ptr %1, i64 80
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr i8, ptr %2, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = icmp eq i32 %i.bp, 0
  br i1 %i.by, label %intel_lut_equal.exit, label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %bb.p
  %i.bz = lshr i32 65535, %.0.i9
  %i.ca = zext nneg i32 %i.bz to i64              ; 3 uses
  %wide.trip.count.i.i22 = and i64 %i.bo, 2147483647
  br label %bb.r

bb.q:                                             ; preds = %err_check.exit.i.i26
  %indvars.iv.next.i.i28 = add nuw nsw i64 %indvars.iv.i.i23, 1 ; 2 uses
end_hunk_1
