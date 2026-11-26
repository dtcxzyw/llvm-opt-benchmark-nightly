Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_tc?download=true
inline.NumInlined: 409
inline.NumDeleted: 79
begin_hunk_0_@tc_phy_get_current_mode:bb.a

bb.p:                                             ; preds = %__drm_to_dev.exit42
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  br label %__drm_to_dev.exit44

__drm_to_dev.exit44:                              ; preds = %__drm_to_dev.exit42, %bb.p
  %i.ar = phi ptr [ %i.aq, %bb.p ], [ null, %__drm_to_dev.exit42 ] ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 80
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not.i45 = icmp eq ptr %i.at, null
  br i1 %.not.i45, label %bb.q, label %dev_name.exit48

bb.q:                                             ; preds = %__drm_to_dev.exit44
  %.val.i47 = load ptr, ptr %i.ar, align 8
  br label %dev_name.exit48

dev_name.exit48:                                  ; preds = %__drm_to_dev.exit44, %bb.q
  %.0.i46 = phi ptr [ %.val.i47, %bb.q ], [ %i.at, %__drm_to_dev.exit44 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ai, ptr noundef %i.an, ptr noundef %.0.i46, ptr noundef @.str.45) #9
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !120
  %i.au = load i8, ptr %i.g, align 4
  %i.av = trunc i8 %i.au to i1
  %..i49 = select i1 %i.av, i32 3, i32 2
  br label %get_tc_mode_in_phy_not_owned_state.exit

get_tc_mode_in_phy_not_owned_state.exit:          ; preds = %bb.k, %bb.k, %bb.m, %bb.j, %bb.h, %bb.g, %dev_name.exit48
  %.0 = phi i32 [ %..i49, %dev_name.exit48 ], [ 1, %bb.h ], [ %..i, %bb.j ], [ 0, %bb.g ], [ %..i35, %bb.m ], [ %.0.i.i, %bb.k ], [ %.0.i.i, %bb.k ] ; 2 uses
  %i.aw = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i51 = icmp eq ptr %i.aw, null
  br i1 %.not.i51, label %tc_port_mode_name.exit, label %bb.r

bb.r:                                             ; preds = %get_tc_mode_in_phy_not_owned_state.exit
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  br label %tc_port_mode_name.exit

tc_port_mode_name.exit:                           ; preds = %bb.r, %get_tc_mode_in_phy_not_owned_state.exit
  %i.az = phi ptr [ %i.ay, %bb.r ], [ null, %get_tc_mode_in_phy_not_owned_state.exit ]
  %i.ba = getelementptr i8, ptr %0, i64 232
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = zext nneg i32 %.0 to i64
  %i.bd = getelementptr [8 x i8], ptr @tc_port_mode_name.names, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = icmp ugt i32 %.0.i.i, 3
  br i1 %i.bf, label %bb.s, label %tc_port_mode_name.exit54, !prof !26

bb.s:                                             ; preds = %tc_port_mode_name.exit
  tail call void asm sideeffect "680: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 680b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 680) #10, !srcloc !27
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.37, ptr @.str.2, i32 86, i32 2305, i64 16) #10, !srcloc !28
  tail call void asm sideeffect "681: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 681b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 681) #10, !srcloc !29
  br label %tc_port_mode_name.exit54

tc_port_mode_name.exit54:                         ; preds = %tc_port_mode_name.exit, %bb.s
  %spec.select.i53 = phi i32 [ 0, %bb.s ], [ %.0.i.i, %tc_port_mode_name.exit ]
  %i.bg = select i1 %i.s, ptr @.str.31, ptr @.str.32
  %i.bh = select i1 %i.o, ptr @.str.31, ptr @.str.32
  %i.bi = zext nneg i32 %spec.select.i53 to i64
  %i.bj = getelementptr [8 x i8], ptr @tc_port_mode_name.names, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.az, i32 noundef 2, ptr noundef @.str.46, ptr noundef %i.bb, ptr noundef %i.be, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bg, ptr noundef %i.bk) #9
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @read_pin_configuration(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @get_pin_assignment(ptr noundef %0) #11, !srcloc !122
  %i.b = getelementptr i8, ptr %0, i64 252
  store i32 %i.a, ptr %i.b, align 4
  %i.c = load ptr, ptr %0, align 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__drm_to_display(ptr noundef nonnull %i.d) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.g = getelementptr i8, ptr %0, i64 240
  %i.h = load i32, ptr %i.g, align 8
  %.not7.i = icmp eq i32 %i.h, 2
  br i1 %.not7.i, label %bb.d, label %get_max_lane_count.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.f, i64 1168
  %i.j = load i16, ptr %i.i, align 8
  %i.k = icmp ugt i16 %i.j, 13
  br i1 %i.k, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = tail call fastcc i32 @get_pin_assignment(ptr noundef %0) #11, !srcloc !123 ; 4 uses
  %i.m = icmp ult i32 %i.l, 6
  %switch.maskindex = trunc i32 %i.l to i8
  %switch.shifted = lshr i8 57, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.m, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = zext i32 %i.l to i64
  %i.o = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, ptr @.str.2, i32 348, i32 2321, i64 16) #10, !srcloc !124
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.o, ptr noundef @.str.51, i64 noundef %i.n) #9
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !125
  br label %bb.q

bb.g:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %0, align 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @__drm_to_display(ptr noundef nonnull %i.q) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = phi ptr [ %i.r, %bb.h ], [ null, %bb.g ] ; 8 uses
  %i.t = tail call ptr @intel_display_power_get(ptr noundef %i.s, i32 noundef 0) #9
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %get_lane_mask.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %0, i64 248
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  %i.y = shl i32 %i.w, 12
  %i.z = add i32 %i.y, 1497248
  %i.aa = select i1 %i.x, i32 1456288, i32 %i.z   ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.s, i32 %i.aa) #9
  %.val.i.i.i.i = load ptr, ptr %i.s, align 8
  %i.ab = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i.i.i) #9 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 144
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call i32 %i.ad(ptr noundef %i.ab, i32 %i.aa, i1 noundef zeroext true) #9, !inline_history !121 ; 2 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.s, i32 %i.aa) #9
  tail call void @__intel_display_power_put_async(ptr noundef %i.s, i32 noundef 0, ptr noundef nonnull inttoptr (i64 -2 to ptr), i32 noundef -1) #9
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %bb.k, label %get_lane_mask.exit.i.i, !prof !31

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %i.s, align 8             ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %__drm_to_dev.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  br label %__drm_to_dev.exit.i.i.i

__drm_to_dev.exit.i.i.i:                          ; preds = %bb.l, %bb.k
  %i.aj = phi ptr [ %i.ai, %bb.l ], [ null, %bb.k ]
  %i.ak = tail call ptr @dev_driver_string(ptr noundef %i.aj) #9 ; 0 uses
  %i.al = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.2, i32 276, i32 2321, i64 16) #10, !srcloc !126
  %i.am = load ptr, ptr %i.s, align 8             ; 2 uses
  %.not.i33.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i33.i.i.i, label %__drm_to_dev.exit34.i.i.i, label %bb.m

bb.m:                                             ; preds = %__drm_to_dev.exit.i.i.i
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  br label %__drm_to_dev.exit34.i.i.i

__drm_to_dev.exit34.i.i.i:                        ; preds = %bb.m, %__drm_to_dev.exit.i.i.i
  %i.ap = phi ptr [ %i.ao, %bb.m ], [ null, %__drm_to_dev.exit.i.i.i ]
  %i.aq = tail call ptr @dev_driver_string(ptr noundef %i.ap) #9
  %i.ar = load ptr, ptr %i.s, align 8             ; 2 uses
  %.not.i35.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i35.i.i.i, label %__drm_to_dev.exit36.i.i.i, label %bb.n

bb.n:                                             ; preds = %__drm_to_dev.exit34.i.i.i
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  br label %__drm_to_dev.exit36.i.i.i

__drm_to_dev.exit36.i.i.i:                        ; preds = %bb.n, %__drm_to_dev.exit34.i.i.i
  %i.au = phi ptr [ %i.at, %bb.n ], [ null, %__drm_to_dev.exit34.i.i.i ] ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 80
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not.i37.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i37.i.i.i, label %bb.o, label %dev_name.exit40.i.i.i

bb.o:                                             ; preds = %__drm_to_dev.exit36.i.i.i
  %.val.i39.i.i.i = load ptr, ptr %i.au, align 8
  br label %dev_name.exit40.i.i.i

dev_name.exit40.i.i.i:                            ; preds = %bb.o, %__drm_to_dev.exit36.i.i.i
  %.0.i38.i.i.i = phi ptr [ %.val.i39.i.i.i, %bb.o ], [ %i.aw, %__drm_to_dev.exit36.i.i.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.al, ptr noundef %i.aq, ptr noundef %.0.i38.i.i.i, ptr noundef @.str.53) #9
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !127
  br label %get_lane_mask.exit.i.i

get_lane_mask.exit.i.i:                           ; preds = %dev_name.exit40.i.i.i, %bb.j, %bb.i
  %.0.lcssa46.i.i.i = phi i32 [ %i.ae, %bb.j ], [ -1, %dev_name.exit40.i.i.i ], [ 0, %bb.i ]
  tail call fastcc void @assert_tc_cold_blocked(ptr noundef %0) #11, !srcloc !128
  %i.ax = getelementptr i8, ptr %0, i64 256
  %i.ay = load i8, ptr %i.ax, align 8
  %i.az = zext i8 %i.ay to i32
  %i.ba = shl nuw nsw i32 %i.az, 3
  %1 = lshr i32 %.0.lcssa46.i.i.i, %i.ba
  %i.bb = and i32 %1, 15                          ; 2 uses
  switch i32 %i.bb, label %bb.p [
    i32 1, label %get_max_lane_count.exit
    i32 2, label %get_max_lane_count.exit
    i32 4, label %get_max_lane_count.exit
    i32 8, label %get_max_lane_count.exit
    i32 3, label %bb.q
    i32 12, label %bb.q
    i32 15, label %bb.r
  ]

bb.p:                                             ; preds = %get_lane_mask.exit.i.i
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, ptr @.str.2, i32 366, i32 2321, i64 16) #10, !srcloc !129
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bd, ptr noundef @.str.52, i64 noundef %i.bc) #9
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !130
  br label %get_max_lane_count.exit

bb.q:                                             ; preds = %get_lane_mask.exit.i.i, %get_lane_mask.exit.i.i, %bb.f
  br label %get_max_lane_count.exit

bb.r:                                             ; preds = %get_lane_mask.exit.i.i
  br label %get_max_lane_count.exit

switch.lookup:                                    ; preds = %bb.e
  %i.be = shl nuw nsw i32 %i.l, 3
  %switch.shiftamt = zext nneg i32 %i.be to i48
  %switch.downshift = lshr i48 4406703554560, %switch.shiftamt
  %switch.masked = trunc i48 %switch.downshift to i8
  br label %get_max_lane_count.exit

get_max_lane_count.exit:                          ; preds = %switch.lookup, %bb.c, %get_lane_mask.exit.i.i, %get_lane_mask.exit.i.i, %get_lane_mask.exit.i.i, %get_lane_mask.exit.i.i, %bb.p, %bb.q, %bb.r
  %.0.i = phi i8 [ %switch.masked, %switch.lookup ], [ 4, %bb.c ], [ 1, %get_lane_mask.exit.i.i ], [ 1, %get_lane_mask.exit.i.i ], [ 4, %bb.r ], [ 2, %bb.q ], [ 1, %bb.p ], [ 1, %get_lane_mask.exit.i.i ], [ 1, %get_lane_mask.exit.i.i ]
  %i.bf = getelementptr i8, ptr %0, i64 257
  store i8 %.0.i, ptr %i.bf, align 1
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc zeroext i1 @xelpdp_tc_phy_tcss_power_is_enabled(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #9
  %.pre = load ptr, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.a ]
  %i.e = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.f = getelementptr i8, ptr %i.d, i64 156
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = getelementptr i8, ptr %i.e, i64 1168
  %i.i = load i16, ptr %i.h, align 8
  %i.j = icmp ugt i16 %i.i, 19
  %i.k = icmp slt i32 %i.g, 3
  %i.l = add i32 %i.g, 7
  %i.m = select i1 %i.j, i1 %i.k, i1 false
  %.sink26 = select i1 %i.m, i32 %i.l, i32 %i.g   ; 3 uses
  %i.n = icmp slt i32 %.sink26, 3
  %i.o = shl i32 %.sink26, 8
  %i.p = add i32 %i.o, 409604
  %i.q = shl i32 %.sink26, 9
  %i.r = add i32 %i.q, 1502208
  %i.s = select i1 %i.n, i32 %i.p, i32 %i.r       ; 3 uses
  tail call fastcc void @assert_tc_cold_blocked(ptr noundef %0) #11, !srcloc !131
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.s) #9
  %.val.i = load ptr, ptr %i.e, align 8
  %i.t = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #9 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 144
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i32 %i.v(ptr noundef %i.t, i32 %i.s, i1 noundef zeroext true) #9, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.s) #9
  %i.x = and i32 %i.w, 16
  %i.y = icmp ne i32 %i.x, 0
  ret i1 %i.y
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @tc_phy_wait_for_ready(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.e = tail call i64 @ktime_get() #9
  %i.f = add i64 %i.e, 500000000                  ; 2 uses
  %i.g = tail call i32 @__SCT__might_resched() #9 ; 0 uses
  %i.h = tail call i64 @ktime_get() #9
  %i.i = icmp sgt i64 %i.h, %i.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !132
  %i.j = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call zeroext i1 %i.m(ptr noundef %0) #9, !inline_history !7 ; 2 uses
  %brmerge25 = select i1 %i.n, i1 true, i1 %i.i
  br i1 %brmerge25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  tail call void @usleep_range_state(i64 noundef 251, i64 noundef 1000, i32 noundef 2) #9
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !32
  %i.o = tail call i64 @ktime_get() #9
  %i.p = icmp sgt i64 %i.o, %i.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !132
  %i.q = load ptr, ptr %i.j, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call zeroext i1 %i.s(ptr noundef %0) #9, !inline_history !7 ; 2 uses
  %brmerge = select i1 %i.t, i1 true, i1 %i.p
  br i1 %brmerge, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.lcssa = phi i1 [ %i.n, %bb.c ], [ %i.t, %.lr.ph ] ; 2 uses
  br i1 %.lcssa, label %bb.f, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.u = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.d, %bb.e
  %i.x = phi ptr [ %i.w, %bb.e ], [ null, %bb.d ]
  %i.y = getelementptr i8, ptr %0, i64 232
  %i.z = load ptr, ptr %i.y, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.x, ptr noundef @.str.47, ptr noundef %i.z) #12
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %__drm_to_dev.exit
  ret i1 %.lcssa
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usleep_range_state(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef i32 @get_pin_assignment(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #9
  %.pre = load ptr, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.a ]
  %i.e = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 12 uses
  %i.f = tail call i32 @intel_encoder_to_tc(ptr noundef %i.d) #9
  %i.g = getelementptr i8, ptr %0, i64 240
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.e, i64 1168     ; 2 uses
  %i.k = load i16, ptr %i.j, align 8
  %i.l = icmp ugt i16 %i.k, 19
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = shl i32 %i.f, 2
  %i.n = add i32 %i.m, 1447168
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %0, i64 248
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  %i.r = shl i32 %i.p, 12
  %i.s = add i32 %i.r, 1497216
  %i.t = select i1 %i.q, i32 1456256, i32 %i.s
  %i.u = getelementptr i8, ptr %0, i64 256
  %i.v = load i8, ptr %i.u, align 8
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 2
  %i.y = shl i32 15, %i.x
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.055 = phi i32 [ 503316480, %bb.e ], [ %i.y, %bb.f ] ; 2 uses
  %.sroa.026.0 = phi i32 [ %i.n, %bb.e ], [ %i.t, %bb.f ] ; 3 uses
  %i.z = tail call ptr @intel_display_power_get(ptr noundef %i.e, i32 noundef 0) #9
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %.sroa.026.0) #9
end_hunk_0
