Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/skl_scaler?download=true
inline.NumInlined: 156
inline.NumDeleted: 53
begin_hunk_0_@skl_pfit_enable:bb.a
bb.g:                                             ; preds = %__drm_to_dev.exit
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  br label %__drm_to_dev.exit103

__drm_to_dev.exit103:                             ; preds = %__drm_to_dev.exit, %bb.g
  %i.ad = phi ptr [ %i.ac, %bb.g ], [ null, %__drm_to_dev.exit ]
  %i.ae = tail call ptr @dev_driver_string(ptr noundef %i.ad) #11
  %i.af = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i104 = icmp eq ptr %i.af, null
  br i1 %.not.i104, label %__drm_to_dev.exit105, label %bb.h

bb.h:                                             ; preds = %__drm_to_dev.exit103
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  br label %__drm_to_dev.exit105

__drm_to_dev.exit105:                             ; preds = %__drm_to_dev.exit103, %bb.h
  %i.ai = phi ptr [ %i.ah, %bb.h ], [ null, %__drm_to_dev.exit103 ] ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i106 = icmp eq ptr %i.ak, null
  br i1 %.not.i106, label %bb.i, label %dev_name.exit109

bb.i:                                             ; preds = %__drm_to_dev.exit105
  %.val.i108 = load ptr, ptr %i.ai, align 8
  br label %dev_name.exit109

dev_name.exit109:                                 ; preds = %__drm_to_dev.exit105, %bb.i
  %.0.i107 = phi ptr [ %.val.i108, %bb.i ], [ %i.ak, %__drm_to_dev.exit105 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.z, ptr noundef %i.ae, ptr noundef %.0.i107, ptr noundef nonnull @.str.2) #11
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  br label %bb.aw

.critedge:                                        ; preds = %bb.d
  %i.al = tail call zeroext i1 @__intel_display_wa(ptr noundef %i.e, i32 noundef 9, ptr noundef nonnull @.str.4) #11
  br i1 %i.al, label %bb.j, label %adl_scaler_ecc_mask.exit

bb.j:                                             ; preds = %.critedge
  %i.am = load ptr, ptr %0, align 8
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i110 = icmp eq ptr %i.an, null
  br i1 %.not.i110, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = tail call ptr @__drm_to_display(ptr noundef nonnull %i.an) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ap = phi ptr [ %i.ao, %bb.k ], [ null, %bb.j ] ; 3 uses
  %i.aq = load i8, ptr %i.o, align 8, !range !12, !noundef !13
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.m, label %adl_scaler_ecc_mask.exit

bb.m:                                             ; preds = %bb.l
  tail call void @intel_dmc_wl_get(ptr noundef %i.ap, i32 279068) #11
  %.val.i.i = load ptr, ptr %i.ap, align 8
  %i.as = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #11 ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 176
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef %i.as, i32 279068, i32 noundef range(i32 -1, 1) -1, i1 noundef zeroext true) #11, !inline_history !36
  tail call void @intel_dmc_wl_put(ptr noundef %i.ap, i32 279068) #11
  br label %adl_scaler_ecc_mask.exit

adl_scaler_ecc_mask.exit:                         ; preds = %bb.m, %bb.l, %.critedge
  %i.av = getelementptr i8, ptr %0, i64 856
  %.val = load i32, ptr %i.av, align 8
  %i.aw = getelementptr i8, ptr %0, i64 864
  %.val91 = load i32, ptr %i.aw, align 8
  %i.ax = sub i32 %.val91, %.val
  %i.ay = shl i32 %i.ax, 16
  %i.az = getelementptr i8, ptr %0, i64 860
  %.val94 = load i32, ptr %i.az, align 4
  %i.ba = getelementptr i8, ptr %0, i64 868
  %.val95 = load i32, ptr %i.ba, align 4
  %i.bb = sub i32 %.val95, %.val94
  %i.bc = shl i32 %i.bb, 16
  store i32 0, ptr %1, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ay, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.bc, ptr %i.bf, align 4
  %i.bg = call i32 @drm_rect_calc_hscale(ptr noundef nonnull %1, ptr noundef %i.g, i32 noundef 0, i32 noundef 2147483647) #11 ; 2 uses
  %i.bh = call i32 @drm_rect_calc_vscale(ptr noundef nonnull %1, ptr noundef %i.g, i32 noundef 0, i32 noundef 2147483647) #11 ; 2 uses
  %i.bi = sdiv i32 %i.bg, 2                       ; 2 uses
  %i.bj = icmp ugt i32 %i.bi, 131072
  br i1 %i.bj, label %bb.n, label %skl_scaler_calc_phase.exit, !prof !16

bb.n:                                             ; preds = %adl_scaler_ecc_mask.exit
  call void asm sideeffect "869: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 869b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 869) #14, !srcloc !17
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.19, ptr nonnull @.str.3, i32 75, i32 2305, i64 16) #14, !srcloc !18
  call void asm sideeffect "870: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 870b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 870) #14, !srcloc !19
  br label %skl_scaler_calc_phase.exit

skl_scaler_calc_phase.exit:                       ; preds = %adl_scaler_ecc_mask.exit, %bb.n
  %i.bk = icmp sgt i32 %i.bg, 65535               ; 2 uses
  %.016.i = zext i1 %i.bk to i32
  %.1.i.v = select i1 %i.bk, i32 229376, i32 32768
  %.1.i = add nsw i32 %.1.i.v, %i.bi
  %i.bl = lshr i32 %.1.i, 2
  %i.bm = and i32 %i.bl, 65534
  %i.bn = or disjoint i32 %i.bm, %.016.i          ; 2 uses
  %i.bo = sdiv i32 %i.bh, 2                       ; 2 uses
  %i.bp = icmp ugt i32 %i.bo, 131072
  br i1 %i.bp, label %bb.o, label %skl_scaler_calc_phase.exit115, !prof !16

bb.o:                                             ; preds = %skl_scaler_calc_phase.exit
  call void asm sideeffect "869: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 869b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 869) #14, !srcloc !17
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.19, ptr nonnull @.str.3, i32 75, i32 2305, i64 16) #14, !srcloc !18
  call void asm sideeffect "870: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 870b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 870) #14, !srcloc !19
  br label %skl_scaler_calc_phase.exit115

skl_scaler_calc_phase.exit115:                    ; preds = %skl_scaler_calc_phase.exit, %bb.o
  %i.bq = icmp sgt i32 %i.bh, 65535               ; 2 uses
  %.016.i113 = zext i1 %i.bq to i32
  %.1.i114.v = select i1 %i.bq, i32 229376, i32 32768
  %.1.i114 = add nsw i32 %.1.i114.v, %i.bo
  %i.br = lshr i32 %.1.i114, 2
  %i.bs = and i32 %i.br, 65534
  %i.bt = or disjoint i32 %i.bs, %.016.i113       ; 2 uses
  %i.bu = load i32, ptr %i.r, align 4             ; 5 uses
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr [16 x i8], ptr %i.f, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = getelementptr i8, ptr %0, i64 740       ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = getelementptr i8, ptr %0, i64 1388      ; 3 uses
  %i.cb = load i8, ptr %i.ca, align 4, !range !12, !noundef !13
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = icmp eq i32 %i.bz, 1
  %or.cond.i = or i1 %i.cd, %i.cc
  %..i = select i1 %or.cond.i, i32 8388608, i32 0
  %i.ce = or i32 %i.bx, %..i
  %i.cf = or i32 %i.ce, -2147483648               ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_intel_pipe_scaler_update_arm, i64 8), i1 false) #14
          to label %trace_intel_pipe_scaler_update_arm.exit [label %arch_test_bit.exit.i.i], !srcloc !20

arch_test_bit.exit.i.i:                           ; preds = %skl_scaler_calc_phase.exit115
  %i.cg = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #14, !srcloc !40
  %i.ch = zext i32 %i.cg to i64
  %i.ci = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ch) #14, !srcloc !21 ; 2 uses
  %i.cj = icmp ult i8 %i.ci, 2
  call void @llvm.assume(i1 %i.cj)
  %i.ck = trunc nuw i8 %i.ci to i1
  br i1 %i.ck, label %bb.p, label %trace_intel_pipe_scaler_update_arm.exit

bb.p:                                             ; preds = %arch_test_bit.exit.i.i
  %i.cl = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cl, ptr elementtype(i64) %i.cl) #14, !srcloc !22
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !23
  %i.cm = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_intel_pipe_scaler_update_arm, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = getelementptr i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = call i32 @__SCT__tp_func_intel_pipe_scaler_update_arm(ptr noundef %i.co, ptr noundef %i.d, i32 noundef %i.bu, i32 noundef %.val92, i32 noundef %.val96, i32 noundef %i.k, i32 noundef %i.n) #11 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !24
  %i.cq = getelementptr i8, ptr %i.cl, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cq, ptr elementtype(i64) %i.cq) #14, !srcloc !25
  br label %trace_intel_pipe_scaler_update_arm.exit

trace_intel_pipe_scaler_update_arm.exit:          ; preds = %skl_scaler_calc_phase.exit115, %arch_test_bit.exit.i.i, %bb.r
  %i.cr = load i8, ptr %i.ca, align 4, !range !12, !noundef !13
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %trace_intel_pipe_scaler_update_arm.exit
  call void @intel_casf_setup(ptr noundef %0) #11
  br label %bb.u

bb.t:                                             ; preds = %trace_intel_pipe_scaler_update_arm.exit
  %i.ct = load i32, ptr %i.by, align 4
  call fastcc void @skl_scaler_setup_filter(ptr noundef %i.e, ptr noundef null, i32 noundef %i.i, i32 noundef %i.bu, i32 noundef %i.ct) #12
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cu = getelementptr i8, ptr %i.e, i64 1168
  %.val98 = load i16, ptr %i.cu, align 8
  %i.cv = icmp ugt i16 %.val98, 19
  %i.cw = icmp eq i32 %i.bu, 1
  %i.cx = and i1 %i.cw, %i.cv
  br i1 %i.cx, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.cy = load i32, ptr %i.h, align 8
  %i.cz = shl i32 %i.cy, 11
  %i.da = add i32 %i.cz, 426672                   ; 4 uses
  %i.db = load i8, ptr %i.ca, align 4, !range !12, !noundef !13
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.w, label %casf_sharpness_ctl.exit

bb.w:                                             ; preds = %bb.v
  %i.dd = getelementptr i8, ptr %0, i64 1386
  %2 = load i8, ptr %i.dd, align 2
  %3 = zext i8 %2 to i32
  %4 = shl nuw nsw i32 %3, 8
  %5 = getelementptr i8, ptr %0, i64 1387
  %6 = load i8, ptr %5, align 1
  %i.de = zext i8 %6 to i32
  %7 = or disjoint i32 %4, %i.de
  %i.df = or disjoint i32 %7, -2147483648
  br label %casf_sharpness_ctl.exit

casf_sharpness_ctl.exit:                          ; preds = %bb.v, %bb.w
  %.0.i116 = phi i32 [ %i.df, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.dg = zext i32 %.0.i116 to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #14
          to label %trace_i915_reg_rw.exit.i [label %arch_test_bit.exit.i.i.i], !srcloc !20

arch_test_bit.exit.i.i.i:                         ; preds = %casf_sharpness_ctl.exit
  %i.dh = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #14, !srcloc !26
  %i.di = zext i32 %i.dh to i64
  %i.dj = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.di) #14, !srcloc !21 ; 2 uses
  %i.dk = icmp ult i8 %i.dj, 2
  call void @llvm.assume(i1 %i.dk)
  %i.dl = trunc nuw i8 %i.dj to i1
  br i1 %i.dl, label %bb.x, label %trace_i915_reg_rw.exit.i

bb.x:                                             ; preds = %arch_test_bit.exit.i.i.i
  %i.dm = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dm, ptr elementtype(i64) %i.dm) #14, !srcloc !22
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !23
  %i.dn = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = getelementptr i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.dp, i1 noundef zeroext true, i32 %i.da, i64 noundef range(i64 0, 4294967296) %i.dg, i32 noundef 4, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !24
  %i.dr = getelementptr i8, ptr %i.dm, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dr, ptr elementtype(i64) %i.dr) #14, !srcloc !25
  br label %trace_i915_reg_rw.exit.i

trace_i915_reg_rw.exit.i:                         ; preds = %bb.z, %arch_test_bit.exit.i.i.i, %casf_sharpness_ctl.exit
  %.val.i117 = load ptr, ptr %i.e, align 8
  %i.ds = call ptr @to_intel_uncore(ptr noundef %.val.i117) #11 ; 2 uses
  %i.dt = icmp ult i32 %i.da, 262144
  br i1 %i.dt, label %bb.aa, label %intel_de_write_fw.exit

bb.aa:                                            ; preds = %trace_i915_reg_rw.exit.i
  %i.du = getelementptr i8, ptr %i.ds, i64 36
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = add i32 %i.dv, %i.da
  br label %intel_de_write_fw.exit

intel_de_write_fw.exit:                           ; preds = %trace_i915_reg_rw.exit.i, %bb.aa
  %.0.i.i = phi i32 [ %i.dw, %bb.aa ], [ %i.da, %trace_i915_reg_rw.exit.i ]
  %i.dx = load ptr, ptr %i.ds, align 8
  %i.dy = zext i32 %.0.i.i to i64
  %i.dz = getelementptr i8, ptr %i.dx, i64 %i.dy
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.0.i116, ptr elementtype(i32) %i.dz) #14, !srcloc !27
  br label %bb.ab

bb.ab:                                            ; preds = %intel_de_write_fw.exit, %bb.u
  %i.ea = shl i32 %i.bu, 8
  %i.eb = shl i32 %i.i, 11
  %i.ec = add i32 %i.ea, %i.eb                    ; 5 uses
  %i.ed = add i32 %i.ec, 426368                   ; 4 uses
  %i.ee = zext i32 %i.cf to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #14
          to label %trace_i915_reg_rw.exit.i119 [label %arch_test_bit.exit.i.i.i118], !srcloc !20

arch_test_bit.exit.i.i.i118:                      ; preds = %bb.ab
  %i.ef = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #14, !srcloc !26
  %i.eg = zext i32 %i.ef to i64
  %i.eh = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.eg) #14, !srcloc !21 ; 2 uses
  %i.ei = icmp ult i8 %i.eh, 2
  call void @llvm.assume(i1 %i.ei)
  %i.ej = trunc nuw i8 %i.eh to i1
  br i1 %i.ej, label %bb.ac, label %trace_i915_reg_rw.exit.i119

bb.ac:                                            ; preds = %arch_test_bit.exit.i.i.i118
  %i.ek = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ek, ptr elementtype(i64) %i.ek) #14, !srcloc !22
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !23
  %i.el = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i122 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i122, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.em = getelementptr i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.en, i1 noundef zeroext true, i32 %i.ed, i64 noundef range(i64 0, 4294967296) %i.ee, i32 noundef 4, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !24
  %i.ep = getelementptr i8, ptr %i.ek, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ep, ptr elementtype(i64) %i.ep) #14, !srcloc !25
  br label %trace_i915_reg_rw.exit.i119

trace_i915_reg_rw.exit.i119:                      ; preds = %bb.ae, %arch_test_bit.exit.i.i.i118, %bb.ab
  %.val.i120 = load ptr, ptr %i.e, align 8
  %i.eq = call ptr @to_intel_uncore(ptr noundef %.val.i120) #11 ; 2 uses
  %i.er = icmp ult i32 %i.ed, 262144
  br i1 %i.er, label %bb.af, label %intel_de_write_fw.exit125

bb.af:                                            ; preds = %trace_i915_reg_rw.exit.i119
  %i.es = getelementptr i8, ptr %i.eq, i64 36
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = add i32 %i.et, %i.ed
  br label %intel_de_write_fw.exit125

intel_de_write_fw.exit125:                        ; preds = %trace_i915_reg_rw.exit.i119, %bb.af
  %.0.i.i121 = phi i32 [ %i.eu, %bb.af ], [ %i.ed, %trace_i915_reg_rw.exit.i119 ]
  %i.ev = load ptr, ptr %i.eq, align 8
  %i.ew = zext i32 %.0.i.i121 to i64
  %i.ex = getelementptr i8, ptr %i.ev, i64 %i.ew
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.cf, ptr elementtype(i32) %i.ex) #14, !srcloc !27
  %i.ey = add i32 %i.ec, 426376                   ; 4 uses
  %i.ez = zext nneg i32 %i.bt to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #14
          to label %trace_i915_reg_rw.exit.i127 [label %arch_test_bit.exit.i.i.i126], !srcloc !20

arch_test_bit.exit.i.i.i126:                      ; preds = %intel_de_write_fw.exit125
  %i.fa = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #14, !srcloc !26
  %i.fb = zext i32 %i.fa to i64
  %i.fc = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.fb) #14, !srcloc !21 ; 2 uses
  %i.fd = icmp ult i8 %i.fc, 2
  call void @llvm.assume(i1 %i.fd)
  %i.fe = trunc nuw i8 %i.fc to i1
  br i1 %i.fe, label %bb.ag, label %trace_i915_reg_rw.exit.i127

bb.ag:                                            ; preds = %arch_test_bit.exit.i.i.i126
  %i.ff = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ff, ptr elementtype(i64) %i.ff) #14, !srcloc !22
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !23
  %i.fg = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i130, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fh = getelementptr i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.fi, i1 noundef zeroext true, i32 %i.ey, i64 noundef range(i64 0, 4294967296) %i.ez, i32 noundef 4, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !24
  %i.fk = getelementptr i8, ptr %i.ff, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fk, ptr elementtype(i64) %i.fk) #14, !srcloc !25
  br label %trace_i915_reg_rw.exit.i127

trace_i915_reg_rw.exit.i127:                      ; preds = %bb.ai, %arch_test_bit.exit.i.i.i126, %intel_de_write_fw.exit125
  %.val.i128 = load ptr, ptr %i.e, align 8
  %i.fl = call ptr @to_intel_uncore(ptr noundef %.val.i128) #11 ; 2 uses
  %i.fm = icmp ult i32 %i.ey, 262144
  br i1 %i.fm, label %bb.aj, label %intel_de_write_fw.exit133

bb.aj:                                            ; preds = %trace_i915_reg_rw.exit.i127
  %i.fn = getelementptr i8, ptr %i.fl, i64 36
  %i.fo = load i32, ptr %i.fn, align 4
  %i.fp = add i32 %i.fo, %i.ey
  br label %intel_de_write_fw.exit133

intel_de_write_fw.exit133:                        ; preds = %trace_i915_reg_rw.exit.i127, %bb.aj
  %.0.i.i129 = phi i32 [ %i.fp, %bb.aj ], [ %i.ey, %trace_i915_reg_rw.exit.i127 ]
  %i.fq = load ptr, ptr %i.fl, align 8
  %i.fr = zext i32 %.0.i.i129 to i64
  %i.fs = getelementptr i8, ptr %i.fq, i64 %i.fr
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.bt, ptr elementtype(i32) %i.fs) #14, !srcloc !27
  %i.ft = add i32 %i.ec, 426388                   ; 4 uses
  %i.fu = zext nneg i32 %i.bn to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #14
          to label %trace_i915_reg_rw.exit.i135 [label %arch_test_bit.exit.i.i.i134], !srcloc !20

arch_test_bit.exit.i.i.i134:                      ; preds = %intel_de_write_fw.exit133
  %i.fv = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #14, !srcloc !26
  %i.fw = zext i32 %i.fv to i64
  %i.fx = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.fw) #14, !srcloc !21 ; 2 uses
  %i.fy = icmp ult i8 %i.fx, 2
  call void @llvm.assume(i1 %i.fy)
  %i.fz = trunc nuw i8 %i.fx to i1
  br i1 %i.fz, label %bb.ak, label %trace_i915_reg_rw.exit.i135

bb.ak:                                            ; preds = %arch_test_bit.exit.i.i.i134
  %i.ga = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ga, ptr elementtype(i64) %i.ga) #14, !srcloc !22
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !23
  %i.gb = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i138 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i138, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gc = getelementptr i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.gd, i1 noundef zeroext true, i32 %i.ft, i64 noundef range(i64 0, 4294967296) %i.fu, i32 noundef 4, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !24
  %i.gf = getelementptr i8, ptr %i.ga, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gf, ptr elementtype(i64) %i.gf) #14, !srcloc !25
  br label %trace_i915_reg_rw.exit.i135

trace_i915_reg_rw.exit.i135:                      ; preds = %bb.am, %arch_test_bit.exit.i.i.i134, %intel_de_write_fw.exit133
end_hunk_0
begin_hunk_1_@intel_atomic_setup_scaler:bb.a
  %i.cp = icmp samesign ult i16 %i.cm, 10
  %or.cond.i = and i1 %i.ch, %i.cp
  %spec.select = select i1 %or.cond.i, i32 131071, i32 196607 ; 2 uses
  br label %calculate_max_scale.exit

calculate_max_scale.exit:                         ; preds = %bb.ac, %bb.ab
  %.0160 = phi i32 [ 196607, %bb.ab ], [ %spec.select, %bb.ac ]
  %.sink.i = phi i32 [ %..i, %bb.ab ], [ %spec.select, %bb.ac ]
  %i.cq = tail call i32 @drm_rect_calc_hscale(ptr noundef %i.cb, ptr noundef %i.cc, i32 noundef 1, i32 noundef %.0160) #11 ; 2 uses
  %i.cr = tail call i32 @drm_rect_calc_vscale(ptr noundef %i.cb, ptr noundef %i.cc, i32 noundef 1, i32 noundef %.sink.i) #11 ; 2 uses
  %i.cs = icmp sgt i32 %i.cq, -1
  %i.ct = icmp sgt i32 %i.cr, -1
  %or.cond.not = select i1 %i.cs, i1 %i.ct, i1 false
  br i1 %or.cond.not, label %.critedge124, label %bb.ad

bb.ad:                                            ; preds = %calculate_max_scale.exit
  %i.cu = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i145 = icmp eq ptr %i.cu, null
  br i1 %.not.i145, label %__drm_to_dev.exit146, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  br label %__drm_to_dev.exit146

__drm_to_dev.exit146:                             ; preds = %bb.ad, %bb.ae
  %i.cx = phi ptr [ %i.cw, %bb.ae ], [ null, %bb.ad ]
  %i.cy = getelementptr i8, ptr %2, i64 88
  %i.cz = load i32, ptr %i.cy, align 8
  %i.da = getelementptr i8, ptr %2, i64 32
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = load i32, ptr %6, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.cx, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef %i.cz, ptr noundef %i.db, i32 noundef %i.dc) #11
  tail call void @drm_rect_debug_print(ptr noundef nonnull @.str.13, ptr noundef %i.cb, i1 noundef zeroext true) #11
  tail call void @drm_rect_debug_print(ptr noundef nonnull @.str.14, ptr noundef %i.cc, i1 noundef zeroext false) #11
  br label %bb.al

.critedge124:                                     ; preds = %calculate_max_scale.exit, %.thread166, %bb.x
  %.2106169 = phi i32 [ %.2106, %bb.x ], [ %.2106168, %.thread166 ], [ %.2106168, %calculate_max_scale.exit ]
  %.0109 = phi i32 [ 0, %bb.x ], [ 0, %.thread166 ], [ %i.cr, %calculate_max_scale.exit ]
  %.0107 = phi i32 [ 0, %bb.x ], [ 0, %.thread166 ], [ %i.cq, %calculate_max_scale.exit ]
  %i.dd = getelementptr i8, ptr %0, i64 1408
  %i.de = load i8, ptr %i.dd, align 8, !range !12, !noundef !13
  %i.df = trunc nuw i8 %i.de to i1
  %.pre175 = load i32, ptr %6, align 4            ; 2 uses
  br i1 %i.df, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %.critedge124
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.dg = getelementptr i8, ptr %0, i64 856
  %.val = load i32, ptr %i.dg, align 8
  %i.dh = getelementptr i8, ptr %0, i64 864
  %.val127 = load i32, ptr %i.dh, align 8
  %i.di = sub i32 %.val127, %.val
  %i.dj = shl i32 %i.di, 16
  %i.dk = getelementptr i8, ptr %0, i64 860
  %.val128 = load i32, ptr %i.dk, align 4
  %i.dl = getelementptr i8, ptr %0, i64 868
  %.val129 = load i32, ptr %i.dl, align 4
  %i.dm = sub i32 %.val129, %.val128
  %i.dn = shl i32 %i.dm, 16
  store i32 0, ptr %8, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %i.do, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.dj, ptr %i.dp, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %i.dn, ptr %i.dq, align 4
  %.val130 = load ptr, ptr %2, align 8            ; 2 uses
  %.not.i147 = icmp eq ptr %.val130, null
  br i1 %.not.i147, label %calculate_max_scale.exit151, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dr = tail call ptr @__drm_to_display(ptr noundef nonnull %.val130) #11
  br label %calculate_max_scale.exit151

calculate_max_scale.exit151:                      ; preds = %bb.ag, %bb.af
  %i.ds = phi ptr [ %i.dr, %bb.ag ], [ null, %bb.af ]
  %i.dt = getelementptr i8, ptr %i.ds, i64 1168
  %i.du = load i16, ptr %i.dt, align 8
  %i.dv = icmp ugt i16 %i.du, 13
  %i.dw = icmp ne i32 %.pre175, 0
  %i.dx = select i1 %i.dv, i1 %i.dw, i1 false
  %i.dy = getelementptr i8, ptr %0, i64 4392
  %i.dz = load i32, ptr %i.dy, align 8
  %i.ea = icmp eq i32 %i.dz, 1                    ; 2 uses
  %.0159 = select i1 %i.ea, i32 98303, i32 196607
  %i.eb = select i1 %i.ea, i1 true, i1 %i.dx
  %.0 = select i1 %i.eb, i32 65536, i32 196607
  %i.ec = getelementptr i8, ptr %0, i64 1392      ; 3 uses
  %i.ed = call i32 @drm_rect_calc_hscale(ptr noundef nonnull %8, ptr noundef %i.ec, i32 noundef 0, i32 noundef %.0159) #11 ; 2 uses
  %i.ee = call i32 @drm_rect_calc_vscale(ptr noundef nonnull %8, ptr noundef %i.ec, i32 noundef 0, i32 noundef %.0) #11 ; 2 uses
  %i.ef = icmp sgt i32 %i.ed, -1
  %i.eg = icmp sgt i32 %i.ee, -1
  %or.cond4.not = select i1 %i.ef, i1 %i.eg, i1 false
  br i1 %or.cond4.not, label %.critedge126, label %bb.ah

bb.ah:                                            ; preds = %calculate_max_scale.exit151
  %i.eh = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i152 = icmp eq ptr %i.eh, null
  br i1 %.not.i152, label %__drm_to_dev.exit153, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ei = getelementptr i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  br label %__drm_to_dev.exit153

__drm_to_dev.exit153:                             ; preds = %bb.ah, %bb.ai
  %i.ek = phi ptr [ %i.ej, %bb.ai ], [ null, %bb.ah ]
  %i.el = load i32, ptr %6, align 4
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ek, i32 noundef 2, ptr noundef nonnull @.str.15, i32 noundef %i.el) #11
  call void @drm_rect_debug_print(ptr noundef nonnull @.str.13, ptr noundef nonnull %8, i1 noundef zeroext true) #11
  call void @drm_rect_debug_print(ptr noundef nonnull @.str.14, ptr noundef %i.ec, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.al

.critedge126:                                     ; preds = %calculate_max_scale.exit151
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %.pre = load i32, ptr %6, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %.critedge126, %.critedge124
  %i.em = phi i32 [ %.pre, %.critedge126 ], [ %.pre175, %.critedge124 ]
  %.1110 = phi i32 [ %i.ee, %.critedge126 ], [ %.0109, %.critedge124 ]
  %.1108 = phi i32 [ %i.ed, %.critedge126 ], [ %.0107, %.critedge124 ]
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr [16 x i8], ptr %i.d, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 8
  store i32 %.1108, ptr %i.ep, align 4
  %i.eq = load i32, ptr %6, align 4
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr [16 x i8], ptr %i.d, i64 %i.er
  %i.et = getelementptr i8, ptr %i.es, i64 12
  store i32 %.1110, ptr %i.et, align 4
  %i.eu = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i154 = icmp eq ptr %i.eu, null
  br i1 %.not.i154, label %__drm_to_dev.exit155, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ev = getelementptr i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  br label %__drm_to_dev.exit155

__drm_to_dev.exit155:                             ; preds = %bb.aj, %bb.ak
  %i.ex = phi ptr [ %i.ew, %bb.ak ], [ null, %bb.aj ]
  %i.ey = getelementptr i8, ptr %2, i64 88
  %i.ez = load i32, ptr %i.ey, align 8
  %i.fa = getelementptr i8, ptr %2, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = getelementptr i8, ptr %2, i64 1664
  %i.fd = load i32, ptr %i.fc, align 8
  %i.fe = load i32, ptr %6, align 4
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ex, i32 noundef 2, ptr noundef nonnull @.str.16, i32 noundef %i.ez, ptr noundef %i.fb, i32 noundef %i.fd, i32 noundef %i.fe, ptr noundef %3, i32 noundef %4) #11
  %i.ff = load i32, ptr %6, align 4
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr [16 x i8], ptr %i.d, i64 %i.fg
  store i32 %.2106169, ptr %i.fh, align 4
  br label %bb.al

bb.al:                                            ; preds = %__drm_to_dev.exit153, %__drm_to_dev.exit146, %dev_name.exit143, %__drm_to_dev.exit155
  %.3 = phi i32 [ -22, %__drm_to_dev.exit146 ], [ 0, %__drm_to_dev.exit155 ], [ -22, %__drm_to_dev.exit153 ], [ -22, %dev_name.exit143 ]
  ret i32 %.3
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_rect_debug_print(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_intel_pipe_scaler_update_arm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_i915_reg_rw(ptr noundef, i1 noundef zeroext, i32, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @to_intel_uncore(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_intel_plane_scaler_update_arm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dsb_reg_write(ptr noundef, i32, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_intel_scaler_disable_arm(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dmc_wl_get(ptr noundef, i32) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dmc_wl_put(ptr noundef, i32) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { nocallback nounwind }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { noredzone "no-builtin-wcslen" }
attributes #13 = { nounwind memory(none) }
attributes #14 = { nounwind }

!llvm.named.register.rsp = !{!1}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{null, null}
!1 = !{!"rsp"}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 8, !"cf-protection-branch", i32 1}
!4 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6 = !{i32 1, !"Code Model", i32 2}
!7 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!8 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{i32 4, !"SkipRaxSetup", i32 1}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{i64 2148526926, i64 2148526955, i64 2148526961, i64 2148526977, i64 2148526993, i64 2148527020, i64 2148527120, i64 2148527199, i64 2148527313, i64 2148527361, i64 2148527409, i64 2148527473, i64 2148527530, i64 2148527582, i64 2148527708, i64 2148527945, i64 2148527794, i64 2148527825, i64 2148527831, i64 2148527847, i64 2148527863}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = !{i64 2161782125, i64 2161782000}
!18 = !{i64 2161782648, i64 2161783720, i64 2161783753, i64 2161783788, i64 2161783804, i64 2161784731, i64 2161784789, i64 2161784838, i64 2161784648, i64 2161783863, i64 2161783895, i64 2161783978}
!19 = !{i64 2161785158, i64 2161785034}
!20 = !{i64 2148729714, i64 2148729754, i64 2148729871, i64 2148729892, i64 2148729935, i64 2148729950, i64 2148729983, i64 2148730017, i64 2148730041}
!21 = !{i64 2148522258}
!22 = !{i64 2151815118}
!23 = !{i64 2151818420}
!24 = !{i64 2151818842}
!25 = !{i64 2151830624}
!26 = !{i64 2157741870}
!27 = !{i64 2157177302}
!28 = !{i64 8328}
!29 = !{i64 9510}
!30 = distinct !{!30, !15}
!31 = !{i64 16096}
!32 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!33 = !{i64 2162110630, i64 2162110657, i64 2162111038, i64 2162111071, i64 2162111106, i64 2162111122, i64 2162111963, i64 2162112021, i64 2162112070, i64 2162111880, i64 2162111181, i64 2162111213}
!34 = !{i64 2162108753}
!35 = !{i64 17222}
!36 = distinct !{ptr @adl_scaler_ecc_mask, null, null}
!37 = !{!"auto-init"}
!38 = !{i64 2162384021, i64 2162384048, i64 2162384429, i64 2162384462, i64 2162384497, i64 2162384513, i64 2162385354, i64 2162385412, i64 2162385461, i64 2162385271, i64 2162384572, i64 2162384604}
!39 = !{i64 2162382118}
!40 = !{i64 2161347888}
!41 = distinct !{!41, !15}
!42 = !{i64 2162322485, i64 2162322512, i64 2162322901, i64 2162322934, i64 2162322969, i64 2162322985, i64 2162323826, i64 2162323884, i64 2162323933, i64 2162323743, i64 2162323044, i64 2162323076}
!43 = !{i64 2162320836}
!44 = !{i64 2161310061}
!45 = distinct !{!45, !15}
!46 = !{i64 29951}
!47 = !{i64 2161381061}
!48 = distinct !{!48, !15}
!49 = !{i64 30184}
!50 = distinct !{null, null, null}
!51 = distinct !{!51, !15}
!52 = distinct !{null, null}
!53 = distinct !{!53, !15}
!54 = !{i64 2161831181, i64 2161831208, i64 2161831617, i64 2161831650, i64 2161831685, i64 2161831701, i64 2161832542, i64 2161832600, i64 2161832649, i64 2161832459, i64 2161831760, i64 2161831792}
!55 = !{i64 2161829338}
end_hunk_1
