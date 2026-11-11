Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_hdmi?download=true
inline.NumInlined: 421
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@lspcon_infoframes_enabled

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hsw_set_infoframes(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 22 uses
  %i.d = getelementptr i8, ptr %i.c, i64 1160     ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 80       ; 2 uses
  %i.g = getelementptr i8, ptr %2, i64 880        ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr [4 x i8], ptr %i.f, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4
  %i.l = load i32, ptr %i.f, align 4
  %i.m = getelementptr i8, ptr %i.e, i64 48
  %i.n = load i32, ptr %i.m, align 4
  %i.o = add i32 %i.k, 393728
  %i.p = sub i32 %i.o, %i.l
  %i.q = add i32 %i.p, %i.n                       ; 15 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.q) #13
  %.val.i = load ptr, ptr %i.c, align 8
  %i.r = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #13 ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 144
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i32 %i.t(ptr noundef %i.r, i32 %i.q, i1 noundef zeroext true) #13, !inline_history !0
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.q) #13
  %i.v = load i32, ptr %i.g, align 8
  %i.w = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 80       ; 2 uses
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = load i32, ptr %i.x, align 4
  %i.ac = getelementptr i8, ptr %i.w, i64 48
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add i32 %i.aa, 394240
  %i.af = sub i32 %i.ae, %i.ab
  %i.ag = add i32 %i.af, %i.ad                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.ag) #13
  %.val.i.i = load ptr, ptr %i.c, align 8
  %i.ah = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #13 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 144
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call i32 %i.aj(ptr noundef %i.ah, i32 %i.ag, i1 noundef zeroext true) #13, !inline_history !90
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.ag) #13
  %.not.i = icmp sgt i32 %i.ak, -1
  br i1 %.not.i, label %assert_hdmi_transcoder_func_disabled.exit, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.e, %bb.d
  %i.ao = phi ptr [ %i.an, %bb.e ], [ null, %bb.d ]
  %i.ap = tail call ptr @dev_driver_string(ptr noundef %i.ao) #13 ; 0 uses
  %i.aq = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.41, ptr @.str.2, i32 104, i32 2321, i64 16) #14, !srcloc !91
  %i.ar = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i18.i = icmp eq ptr %i.ar, null
  br i1 %.not.i18.i, label %__drm_to_dev.exit19.i, label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit.i
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  br label %__drm_to_dev.exit19.i

__drm_to_dev.exit19.i:                            ; preds = %bb.f, %__drm_to_dev.exit.i
  %i.au = phi ptr [ %i.at, %bb.f ], [ null, %__drm_to_dev.exit.i ]
  %i.av = tail call ptr @dev_driver_string(ptr noundef %i.au) #13
  %i.aw = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i20.i = icmp eq ptr %i.aw, null
  br i1 %.not.i20.i, label %__drm_to_dev.exit21.i, label %bb.g

bb.g:                                             ; preds = %__drm_to_dev.exit19.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  br label %__drm_to_dev.exit21.i

__drm_to_dev.exit21.i:                            ; preds = %bb.g, %__drm_to_dev.exit19.i
  %i.az = phi ptr [ %i.ay, %bb.g ], [ null, %__drm_to_dev.exit19.i ] ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not.i22.i = icmp eq ptr %i.bb, null
  br i1 %.not.i22.i, label %bb.h, label %dev_name.exit25.i

bb.h:                                             ; preds = %__drm_to_dev.exit21.i
  %.val.i24.i = load ptr, ptr %i.az, align 8
  br label %dev_name.exit25.i

dev_name.exit25.i:                                ; preds = %bb.h, %__drm_to_dev.exit21.i
  %.0.i23.i = phi ptr [ %.val.i24.i, %bb.h ], [ %i.bb, %__drm_to_dev.exit21.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.aq, ptr noundef %i.av, ptr noundef %.0.i23.i) #13
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !92
  br label %assert_hdmi_transcoder_func_disabled.exit

assert_hdmi_transcoder_func_disabled.exit:        ; preds = %bb.c, %dev_name.exit25.i
  %i.bc = and i32 %i.u, -277942546                ; 3 uses
  br i1 %1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %assert_hdmi_transcoder_func_disabled.exit
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.q) #13
  %.val.i37 = load ptr, ptr %i.c, align 8
  %i.bd = tail call ptr @to_intel_uncore(ptr noundef %.val.i37) #13 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 176
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef %i.bd, i32 %i.q, i32 noundef %i.bc, i1 noundef zeroext true) #13, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.q) #13
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.q) #13
  %.val.i38 = load ptr, ptr %i.c, align 8
  %i.bg = tail call ptr @to_intel_uncore(ptr noundef %.val.i38) #13 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 144
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call i32 %i.bi(ptr noundef %i.bg, i32 %i.q, i1 noundef zeroext false) #13, !inline_history !2 ; 0 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.q) #13
  br label %bb.k

bb.j:                                             ; preds = %assert_hdmi_transcoder_func_disabled.exit
  %.val = load ptr, ptr %0, align 8
  %i.bk = tail call fastcc zeroext i1 @intel_hdmi_set_gcp_infoframe(ptr %.val, ptr noundef %2) #15
  %i.bl = or disjoint i32 %i.bc, 65536
  %spec.select = select i1 %i.bk, i32 %i.bl, i32 %i.bc
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.q) #13
  %.val.i39 = load ptr, ptr %i.c, align 8
  %i.bm = tail call ptr @to_intel_uncore(ptr noundef %.val.i39) #13 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 176
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef %i.bm, i32 %i.q, i32 noundef %spec.select, i1 noundef zeroext true) #13, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.q) #13
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.q) #13
  %.val.i40 = load ptr, ptr %i.c, align 8
  %i.bp = tail call ptr @to_intel_uncore(ptr noundef %.val.i40) #13 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 144
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call i32 %i.br(ptr noundef %i.bp, i32 %i.q, i1 noundef zeroext false) #13, !inline_history !2 ; 0 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.q) #13
  %i.bt = getelementptr i8, ptr %2, i64 3964
  tail call fastcc void @intel_write_infoframe(ptr noundef %0, ptr noundef %2, i32 noundef 130, ptr noundef %i.bt) #15, !srcloc !93
  %i.bu = getelementptr i8, ptr %2, i64 4024
  tail call fastcc void @intel_write_infoframe(ptr noundef %0, ptr noundef %2, i32 noundef 131, ptr noundef %i.bu) #15, !srcloc !94
  %i.bv = getelementptr i8, ptr %2, i64 4084
  tail call fastcc void @intel_write_infoframe(ptr noundef %0, ptr noundef %2, i32 noundef 129, ptr noundef %i.bv) #15, !srcloc !95
  %i.bw = getelementptr i8, ptr %2, i64 4144
  tail call fastcc void @intel_write_infoframe(ptr noundef %0, ptr noundef %2, i32 noundef 135, ptr noundef %i.bw) #15, !srcloc !96
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 277942546) i32 @hsw_infoframes_enabled(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.d = getelementptr i8, ptr %i.c, i64 1160
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 80       ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 880
  %i.h = load i32, ptr %i.g, align 8
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr [4 x i8], ptr %i.f, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4
  %i.l = load i32, ptr %i.f, align 4
  %i.m = getelementptr i8, ptr %i.e, i64 48
  %i.n = load i32, ptr %i.m, align 4
  %i.o = add i32 %i.k, 393728
  %i.p = sub i32 %i.o, %i.l
  %i.q = add i32 %i.p, %i.n                       ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.q) #13
  %.val.i = load ptr, ptr %i.c, align 8
  %i.r = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #13 ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 144
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i32 %i.t(ptr noundef %i.r, i32 %i.q, i1 noundef zeroext true) #13, !inline_history !0
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.q) #13
  %i.v = getelementptr i8, ptr %i.c, i64 1168
  %i.w = load i16, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp ugt i16 %i.w, 9
  %spec.select = select i1 %i.x, i32 269553937, i32 1118481 ; 2 uses
  %i.y = icmp ugt i16 %i.w, 12
  %2 = or disjoint i32 %spec.select, 8388608
  %.1 = select i1 %i.y, i32 %2, i32 %spec.select
  %i.z = and i32 %.1, %i.u
  ret i32 %i.z
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ibx_write_infoframe(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 21 uses
  %i.d = load ptr, ptr %1, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 1664     ; 3 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = shl i32 %i.f, 12
  %i.h = add i32 %i.g, 918016                     ; 12 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.h) #13
  %.val.i = load ptr, ptr %i.c, align 8
  %i.i = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #13 ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 144
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 %i.k(ptr noundef %i.i, i32 %i.h, i1 noundef zeroext true) #13, !inline_history !0 ; 2 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.h) #13
  %.not50 = icmp sgt i32 %i.l, -1
  br i1 %.not50, label %bb.d, label %bb.i, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.d, %bb.e
  %i.p = phi ptr [ %i.o, %bb.e ], [ null, %bb.d ]
  %i.q = tail call ptr @dev_driver_string(ptr noundef %i.p) #13 ; 0 uses
  %i.r = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.36, ptr @.str.2, i32 306, i32 2321, i64 16) #14, !srcloc !99
  %i.s = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i55 = icmp eq ptr %i.s, null
  br i1 %.not.i55, label %__drm_to_dev.exit56, label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  br label %__drm_to_dev.exit56

__drm_to_dev.exit56:                              ; preds = %__drm_to_dev.exit, %bb.f
  %i.v = phi ptr [ %i.u, %bb.f ], [ null, %__drm_to_dev.exit ]
  %i.w = tail call ptr @dev_driver_string(ptr noundef %i.v) #13
  %i.x = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i57 = icmp eq ptr %i.x, null
  br i1 %.not.i57, label %__drm_to_dev.exit58, label %bb.g

bb.g:                                             ; preds = %__drm_to_dev.exit56
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  br label %__drm_to_dev.exit58

__drm_to_dev.exit58:                              ; preds = %__drm_to_dev.exit56, %bb.g
  %i.aa = phi ptr [ %i.z, %bb.g ], [ null, %__drm_to_dev.exit56 ] ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i59 = icmp eq ptr %i.ac, null
  br i1 %.not.i59, label %bb.h, label %dev_name.exit62

bb.h:                                             ; preds = %__drm_to_dev.exit58
  %.val.i61 = load ptr, ptr %i.aa, align 8
  br label %dev_name.exit62

dev_name.exit62:                                  ; preds = %__drm_to_dev.exit58, %bb.h
  %.0.i60 = phi ptr [ %.val.i61, %bb.h ], [ %i.ac, %__drm_to_dev.exit58 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.r, ptr noundef %i.w, ptr noundef %.0.i60) #13
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !100
  br label %bb.i

bb.i:                                             ; preds = %dev_name.exit62, %bb.c
  %i.ad = and i32 %i.l, -1572880                  ; 7 uses
  switch i32 %2, label %g4x_infoframe_index.exit [
    i32 10, label %g4x_infoframe_index.exit.thread
    i32 130, label %g4x_infoframe_enable.exit
    i32 131, label %g4x_infoframe_index.exit.thread75
    i32 129, label %g4x_infoframe_index.exit.thread77
  ]

g4x_infoframe_index.exit.thread:                  ; preds = %bb.i
  %i.ae = or disjoint i32 %i.ad, 1048576
  br label %g4x_infoframe_enable.exit

g4x_infoframe_index.exit.thread75:                ; preds = %bb.i
  %i.af = or disjoint i32 %i.ad, 1572864
  br label %g4x_infoframe_enable.exit

g4x_infoframe_index.exit.thread77:                ; preds = %bb.i
  %i.ag = or disjoint i32 %i.ad, 524288
  br label %g4x_infoframe_enable.exit

g4x_infoframe_index.exit:                         ; preds = %bb.i
  %i.ah = zext i32 %2 to i64                      ; 2 uses
  %i.ai = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.20, ptr @.str.2, i32 119, i32 2321, i64 16) #14, !srcloc !22
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ai, ptr noundef @.str.21, i64 noundef %i.ah) #13
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !23
  switch i32 %2, label %bb.k [
    i32 3, label %g4x_infoframe_enable.exit
    i32 135, label %bb.j
    i32 7, label %bb.j
    i32 34, label %bb.j
  ]

bb.j:                                             ; preds = %g4x_infoframe_index.exit, %g4x_infoframe_index.exit, %g4x_infoframe_index.exit
  br label %g4x_infoframe_enable.exit

bb.k:                                             ; preds = %g4x_infoframe_index.exit
  %i.aj = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.20, ptr @.str.2, i32 144, i32 2321, i64 16) #14, !srcloc !24
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.aj, ptr noundef @.str.21, i64 noundef %i.ah) #13
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !25
  br label %g4x_infoframe_enable.exit

g4x_infoframe_enable.exit:                        ; preds = %bb.i, %g4x_infoframe_index.exit.thread77, %g4x_infoframe_index.exit.thread75, %g4x_infoframe_index.exit.thread, %g4x_infoframe_index.exit, %bb.j, %bb.k
  %i.ak = phi i32 [ %i.ad, %bb.k ], [ %i.ag, %g4x_infoframe_index.exit.thread77 ], [ %i.ad, %bb.i ], [ %i.ad, %bb.j ], [ %i.ad, %g4x_infoframe_index.exit ], [ %i.af, %g4x_infoframe_index.exit.thread75 ], [ %i.ae, %g4x_infoframe_index.exit.thread ]
  %i.al = phi i32 [ -1, %bb.k ], [ -4194305, %g4x_infoframe_index.exit.thread77 ], [ -2097153, %bb.i ], [ -1, %bb.j ], [ -33554433, %g4x_infoframe_index.exit ], [ -16777217, %g4x_infoframe_index.exit.thread75 ], [ -8388609, %g4x_infoframe_index.exit.thread ]
  %i.am = and i32 %i.al, %i.ak                    ; 2 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.h) #13
  %.val.i65 = load ptr, ptr %i.c, align 8
  %i.an = tail call ptr @to_intel_uncore(ptr noundef %.val.i65) #13 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 176
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef %i.an, i32 %i.h, i32 noundef %i.am, i1 noundef zeroext true) #13, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.h) #13
  %i.aq = icmp sgt i64 %4, 0
  br i1 %i.aq, label %.lr.ph, label %.lr.ph82.preheader

.preheader:                                       ; preds = %.lr.ph
  %i.ar = icmp slt i32 %i.ba, 32
  br i1 %i.ar, label %.lr.ph82.preheader, label %._crit_edge

.lr.ph82.preheader:                               ; preds = %g4x_infoframe_enable.exit, %.preheader
  %.181.ph = phi i32 [ 0, %g4x_infoframe_enable.exit ], [ %i.ba, %.preheader ]
  br label %.lr.ph82

.lr.ph:                                           ; preds = %g4x_infoframe_enable.exit, %.lr.ph
  %.080 = phi ptr [ %i.az, %.lr.ph ], [ %3, %g4x_infoframe_enable.exit ] ; 2 uses
  %.04879 = phi i32 [ %i.ba, %.lr.ph ], [ 0, %g4x_infoframe_enable.exit ]
  %i.as = load i32, ptr %i.e, align 8
  %i.at = shl i32 %i.as, 12
  %i.au = add i32 %i.at, 918024                   ; 3 uses
  %i.av = load i32, ptr %.080, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.au) #13
  %.val.i66 = load ptr, ptr %i.c, align 8
  %i.aw = tail call ptr @to_intel_uncore(ptr noundef %.val.i66) #13 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 176
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef %i.aw, i32 %i.au, i32 noundef %i.av, i1 noundef zeroext true) #13, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.au) #13
  %i.az = getelementptr i8, ptr %.080, i64 4
  %i.ba = add i32 %.04879, 4                      ; 4 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp sgt i64 %4, %i.bb
  br i1 %i.bc, label %.lr.ph, label %.preheader, !llvm.loop !97

.lr.ph82:                                         ; preds = %.lr.ph82.preheader, %.lr.ph82
  %.181 = phi i32 [ %i.bj, %.lr.ph82 ], [ %.181.ph, %.lr.ph82.preheader ] ; 2 uses
  %i.bd = load i32, ptr %i.e, align 8
  %i.be = shl i32 %i.bd, 12
  %i.bf = add i32 %i.be, 918024                   ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.bf) #13
  %.val.i67 = load ptr, ptr %i.c, align 8
  %i.bg = tail call ptr @to_intel_uncore(ptr noundef %.val.i67) #13 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 176
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef %i.bg, i32 %i.bf, i32 noundef 0, i1 noundef zeroext true) #13, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.bf) #13
  %i.bj = add nsw i32 %.181, 4
  %i.bk = icmp slt i32 %.181, 28
  br i1 %i.bk, label %.lr.ph82, label %._crit_edge, !llvm.loop !98

._crit_edge:                                      ; preds = %.lr.ph82, %.preheader
  switch i32 %2, label %bb.q [
    i32 3, label %g4x_infoframe_enable.exit69
    i32 10, label %bb.l
    i32 7, label %bb.m
    i32 34, label %bb.m
    i32 130, label %bb.n
    i32 131, label %bb.o
    i32 129, label %bb.p
    i32 135, label %bb.m
  ]

bb.l:                                             ; preds = %._crit_edge
  br label %g4x_infoframe_enable.exit69

bb.m:                                             ; preds = %._crit_edge, %._crit_edge, %._crit_edge
end_hunk_0
