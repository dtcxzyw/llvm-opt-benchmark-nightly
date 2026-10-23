Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/skl_universal_plane?download=true
inline.NumInlined: 314
inline.NumDeleted: 87
begin_hunk_0_@icl_plane_update_noarm:bb.a
  %i.me = or disjoint i32 %i.bt, %i.bu
  %i.mf = add i32 %i.me, 459208
  %i.mg = getelementptr i8, ptr %3, i64 500
  %i.mh = load i32, ptr %i.mg, align 4
  br label %bb.bs

intel_de_write_dsb.exit152.thread304:             ; preds = %intel_de_write_dsb.exit154.thread302
  %i.mi = add i32 %i.bv, 459212
  br label %bb.by

intel_de_write_dsb.exit154.thread:                ; preds = %bb.bl
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.ld, i32 noundef %i.le) #10
  %i.mj = load i16, ptr %i.kx, align 8
  %i.mk = icmp ugt i16 %i.mj, 10
  %i.ml = icmp ult i32 %i.e, 3                    ; 2 uses
  %spec.select.i260300 = and i1 %i.ml, %i.mk
  br i1 %spec.select.i260300, label %.thread305, label %intel_de_write_dsb.exit152.thread301

.thread305:                                       ; preds = %intel_de_write_dsb.exit154.thread
  %i.mm = or disjoint i32 %i.bt, %i.bu
  %i.mn = add i32 %i.mm, 459208
  %i.mo = getelementptr i8, ptr %3, i64 500
  %i.mp = load i32, ptr %i.mo, align 4
  br label %intel_de_write_dsb.exit152.thread299

intel_de_write_dsb.exit152.thread301:             ; preds = %intel_de_write_dsb.exit154.thread
  %i.mq = add i32 %i.bv, 459212
  br label %bb.bx

bb.br:                                            ; preds = %intel_de_write_dsb.exit154
  %i.mr = or disjoint i32 %i.bt, %i.bu
  %i.ms = add i32 %i.mr, 459208                   ; 2 uses
  %i.mt = getelementptr i8, ptr %3, i64 500
  %i.mu = load i32, ptr %i.mt, align 4            ; 2 uses
  br i1 %.not.i171, label %bb.bs, label %intel_de_write_dsb.exit152.thread299

intel_de_write_dsb.exit152.thread299:             ; preds = %bb.br, %.thread305
  %i.mv = phi i32 [ %i.mp, %.thread305 ], [ %i.mu, %bb.br ]
  %i.mw = phi i32 [ %i.mn, %.thread305 ], [ %i.ms, %bb.br ]
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.mw, i32 noundef %i.mv) #10
  %i.mx = add i32 %i.bv, 459212
  br label %bb.bx

bb.bs:                                            ; preds = %.thread, %bb.br
  %i.my = phi i32 [ %i.mh, %.thread ], [ %i.mu, %bb.br ] ; 2 uses
  %i.mz = phi i32 [ %i.mf, %.thread ], [ %i.ms, %bb.br ] ; 4 uses
  %i.na = zext i32 %i.my to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i262 [label %arch_test_bit.exit.i.i.i261], !srcloc !13

arch_test_bit.exit.i.i.i261:                      ; preds = %bb.bs
  %i.nb = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.nc = zext i32 %i.nb to i64
  %i.nd = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.nc) #12, !srcloc !15 ; 2 uses
  %i.ne = icmp ult i8 %i.nd, 2
  tail call void @llvm.assume(i1 %i.ne)
  %i.nf = trunc nuw i8 %i.nd to i1
  br i1 %i.nf, label %bb.bt, label %trace_i915_reg_rw.exit.i262

bb.bt:                                            ; preds = %arch_test_bit.exit.i.i.i261
  %i.ng = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ng, ptr elementtype(i64) %i.ng) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.nh = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i265 = icmp eq ptr %i.nh, null
  br i1 %.not.i.i.i265, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ni = getelementptr i8, ptr %i.nh, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8
  %i.nk = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.nj, i1 noundef zeroext true, i32 %i.mz, i64 noundef range(i64 0, 4294967296) %i.na, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.nl = getelementptr i8, ptr %i.ng, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.nl, ptr elementtype(i64) %i.nl) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i262

trace_i915_reg_rw.exit.i262:                      ; preds = %bb.bv, %arch_test_bit.exit.i.i.i261, %bb.bs
  %.val.i263 = load ptr, ptr %i.c, align 8
  %i.nm = tail call ptr @to_intel_uncore(ptr noundef %.val.i263) #10 ; 2 uses
  %i.nn = icmp ult i32 %i.mz, 262144
  br i1 %i.nn, label %bb.bw, label %intel_de_write_dsb.exit152.thread

bb.bw:                                            ; preds = %trace_i915_reg_rw.exit.i262
  %i.no = getelementptr i8, ptr %i.nm, i64 36
  %i.np = load i32, ptr %i.no, align 4
  %i.nq = add i32 %i.np, %i.mz
  br label %intel_de_write_dsb.exit152.thread

intel_de_write_dsb.exit152.thread:                ; preds = %bb.bw, %trace_i915_reg_rw.exit.i262
  %.0.i.i264 = phi i32 [ %i.nq, %bb.bw ], [ %i.mz, %trace_i915_reg_rw.exit.i262 ]
  %i.nr = load ptr, ptr %i.nm, align 8
  %i.ns = zext i32 %.0.i.i264 to i64
  %i.nt = getelementptr i8, ptr %i.nr, i64 %i.ns
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.my, ptr elementtype(i32) %i.nt) #12, !srcloc !20
  %i.nu = add i32 %i.bv, 459212
  br label %bb.by

intel_de_write_dsb.exit152:                       ; preds = %intel_de_write_dsb.exit154
  %i.nv = add i32 %i.bv, 459212                   ; 2 uses
  br i1 %.not.i171, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %intel_de_write_dsb.exit152.thread301, %intel_de_write_dsb.exit152.thread299, %intel_de_write_dsb.exit152
  %i.nw = phi i1 [ true, %intel_de_write_dsb.exit152.thread299 ], [ %i.lx, %intel_de_write_dsb.exit152 ], [ %i.ml, %intel_de_write_dsb.exit152.thread301 ]
  %i.nx = phi i32 [ %i.mx, %intel_de_write_dsb.exit152.thread299 ], [ %i.nv, %intel_de_write_dsb.exit152 ], [ %i.mq, %intel_de_write_dsb.exit152.thread301 ]
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.nx, i32 noundef %.09.i) #10
  br label %intel_de_write_dsb.exit

bb.by:                                            ; preds = %intel_de_write_dsb.exit152.thread304, %intel_de_write_dsb.exit152.thread, %intel_de_write_dsb.exit152
  %i.ny = phi i1 [ true, %intel_de_write_dsb.exit152.thread ], [ %i.lx, %intel_de_write_dsb.exit152 ], [ %i.md, %intel_de_write_dsb.exit152.thread304 ]
  %i.nz = phi i32 [ %i.nu, %intel_de_write_dsb.exit152.thread ], [ %i.nv, %intel_de_write_dsb.exit152 ], [ %i.mi, %intel_de_write_dsb.exit152.thread304 ] ; 4 uses
  %i.oa = zext i32 %.09.i to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i270 [label %arch_test_bit.exit.i.i.i269], !srcloc !13

arch_test_bit.exit.i.i.i269:                      ; preds = %bb.by
  %i.ob = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.oc = zext i32 %i.ob to i64
  %i.od = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.oc) #12, !srcloc !15 ; 2 uses
  %i.oe = icmp ult i8 %i.od, 2
  tail call void @llvm.assume(i1 %i.oe)
  %i.of = trunc nuw i8 %i.od to i1
  br i1 %i.of, label %bb.bz, label %trace_i915_reg_rw.exit.i270

bb.bz:                                            ; preds = %arch_test_bit.exit.i.i.i269
  %i.og = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.og, ptr elementtype(i64) %i.og) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.oh = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i273 = icmp eq ptr %i.oh, null
  br i1 %.not.i.i.i273, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.oi = getelementptr i8, ptr %i.oh, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8
  %i.ok = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.oj, i1 noundef zeroext true, i32 %i.nz, i64 noundef range(i64 0, 4294967296) %i.oa, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.ol = getelementptr i8, ptr %i.og, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ol, ptr elementtype(i64) %i.ol) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i270

trace_i915_reg_rw.exit.i270:                      ; preds = %bb.cb, %arch_test_bit.exit.i.i.i269, %bb.by
  %.val.i271 = load ptr, ptr %i.c, align 8
  %i.om = tail call ptr @to_intel_uncore(ptr noundef %.val.i271) #10 ; 2 uses
  %i.on = icmp ult i32 %i.nz, 262144
  br i1 %i.on, label %bb.cc, label %intel_de_write_fw.exit276

bb.cc:                                            ; preds = %trace_i915_reg_rw.exit.i270
  %i.oo = getelementptr i8, ptr %i.om, i64 36
  %i.op = load i32, ptr %i.oo, align 4
  %i.oq = add i32 %i.op, %i.nz
  br label %intel_de_write_fw.exit276

intel_de_write_fw.exit276:                        ; preds = %trace_i915_reg_rw.exit.i270, %bb.cc
  %.0.i.i272 = phi i32 [ %i.oq, %bb.cc ], [ %i.nz, %trace_i915_reg_rw.exit.i270 ]
  %i.or = load ptr, ptr %i.om, align 8
  %i.os = zext i32 %.0.i.i272 to i64
  %i.ot = getelementptr i8, ptr %i.or, i64 %i.os
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.09.i, ptr elementtype(i32) %i.ot) #12, !srcloc !20
  br label %intel_de_write_dsb.exit

intel_de_write_dsb.exit:                          ; preds = %bb.bx, %intel_de_write_fw.exit276
  %i.ou = phi i1 [ %i.nw, %bb.bx ], [ %i.ny, %intel_de_write_fw.exit276 ]
  %i.ov = getelementptr i8, ptr %i.af, i64 72
  %i.ow = load ptr, ptr %i.ov, align 8
  %i.ox = getelementptr i8, ptr %i.ow, i64 21
  %i.oy = load i8, ptr %i.ox, align 1, !range !21, !noundef !22
  %i.oz = trunc nuw i8 %i.oy to i1
  br i1 %i.oz, label %bb.cd, label %icl_program_input_csc.exit

bb.cd:                                            ; preds = %intel_de_write_dsb.exit
  %i.pa = load i16, ptr %i.kx, align 8
  %i.pb = icmp ugt i16 %i.pa, 10
  %spec.select.i277 = and i1 %i.ou, %i.pb
  br i1 %spec.select.i277, label %bb.ce, label %icl_program_input_csc.exit

bb.ce:                                            ; preds = %bb.cd
  %i.pc = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i278 = icmp eq ptr %i.pc, null
  br i1 %.not.i278, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.pd = tail call ptr @__drm_to_display(ptr noundef nonnull %i.pc) #10
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.pe = phi ptr [ %i.pd, %bb.cf ], [ null, %bb.ce ] ; 12 uses
  %i.pf = load i32, ptr %i.f, align 8
  %i.pg = load i32, ptr %i.d, align 4
  %i.ph = getelementptr i8, ptr %3, i64 208
  %i.pi = load i32, ptr %i.ph, align 8
  %i.pj = zext i32 %i.pi to i64
  %i.pk = getelementptr [18 x i8], ptr @icl_program_input_csc.input_csc_matrix, i64 %i.pj ; 16 uses
  %i.pl = shl i32 %i.pf, 12
  %i.pm = shl i32 %i.pg, 8
  %i.pn = add i32 %i.pm, %i.pl                    ; 9 uses
  %i.po = add i32 %i.pn, 459232                   ; 15 uses
  %i.pp = load i16, ptr %i.pk, align 2
  %i.pq = zext i16 %i.pp to i32
  %i.pr = shl nuw i32 %i.pq, 16
  %i.ps = getelementptr i8, ptr %i.pk, i64 2
  %i.pt = load i16, ptr %i.ps, align 2
  %i.pu = zext i16 %i.pt to i32
  %i.pv = or disjoint i32 %i.pr, %i.pu            ; 3 uses
  br i1 %.not.i171, label %bb.ch, label %bb.ek

bb.ch:                                            ; preds = %bb.cg
  %i.pw = zext i32 %i.pv to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i.i [label %arch_test_bit.exit.i.i.i.i], !srcloc !13

arch_test_bit.exit.i.i.i.i:                       ; preds = %bb.ch
  %i.px = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.py = zext i32 %i.px to i64
  %i.pz = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.py) #12, !srcloc !15 ; 2 uses
  %i.qa = icmp ult i8 %i.pz, 2
  tail call void @llvm.assume(i1 %i.qa)
  %i.qb = trunc nuw i8 %i.pz to i1
  br i1 %i.qb, label %bb.ci, label %trace_i915_reg_rw.exit.i.i

bb.ci:                                            ; preds = %arch_test_bit.exit.i.i.i.i
  %i.qc = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.qc, ptr elementtype(i64) %i.qc) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.qd = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.qd, null
  br i1 %.not.i.i.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.qe = getelementptr i8, ptr %i.qd, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8
  %i.qg = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.qf, i1 noundef zeroext true, i32 %i.po, i64 noundef range(i64 0, 4294967296) %i.pw, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.qh = getelementptr i8, ptr %i.qc, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.qh, ptr elementtype(i64) %i.qh) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i.i

trace_i915_reg_rw.exit.i.i:                       ; preds = %bb.ck, %arch_test_bit.exit.i.i.i.i, %bb.ch
  %.val.i.i = load ptr, ptr %i.pe, align 8
  %i.qi = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #10 ; 2 uses
  %i.qj = icmp ult i32 %i.po, 262144              ; 6 uses
  br i1 %i.qj, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %trace_i915_reg_rw.exit.i.i
  %i.qk = getelementptr i8, ptr %i.qi, i64 36
  %i.ql = load i32, ptr %i.qk, align 4
  %i.qm = add i32 %i.ql, %i.po
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %trace_i915_reg_rw.exit.i.i
  %.0.i.i.i = phi i32 [ %i.qm, %bb.cl ], [ %i.po, %trace_i915_reg_rw.exit.i.i ]
  %i.qn = load ptr, ptr %i.qi, align 8
  %i.qo = zext i32 %.0.i.i.i to i64
  %i.qp = getelementptr i8, ptr %i.qn, i64 %i.qo
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.pv, ptr elementtype(i32) %i.qp) #12, !srcloc !20
  %4 = or disjoint i32 %i.po, 4                   ; 3 uses
  %i.qq = getelementptr i8, ptr %i.pk, i64 4
  %i.qr = load i16, ptr %i.qq, align 2
  %i.qs = zext i16 %i.qr to i32
  %i.qt = shl nuw i32 %i.qs, 16                   ; 2 uses
  %i.qu = zext i32 %i.qt to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i119.i [label %arch_test_bit.exit.i.i.i118.i], !srcloc !13

arch_test_bit.exit.i.i.i118.i:                    ; preds = %bb.cm
  %i.qv = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.qw = zext i32 %i.qv to i64
  %i.qx = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.qw) #12, !srcloc !15 ; 2 uses
  %i.qy = icmp ult i8 %i.qx, 2
  tail call void @llvm.assume(i1 %i.qy)
  %i.qz = trunc nuw i8 %i.qx to i1
  br i1 %i.qz, label %bb.cn, label %trace_i915_reg_rw.exit.i119.i

bb.cn:                                            ; preds = %arch_test_bit.exit.i.i.i118.i
  %i.ra = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ra, ptr elementtype(i64) %i.ra) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.rb = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i122.i = icmp eq ptr %i.rb, null
  br i1 %.not.i.i.i122.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rc = getelementptr i8, ptr %i.rb, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8
  %i.re = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.rd, i1 noundef zeroext true, i32 %4, i64 noundef range(i64 0, 4294967296) %i.qu, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.rf = getelementptr i8, ptr %i.ra, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.rf, ptr elementtype(i64) %i.rf) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i119.i

trace_i915_reg_rw.exit.i119.i:                    ; preds = %bb.cp, %arch_test_bit.exit.i.i.i118.i, %bb.cm
  %.val.i120.i = load ptr, ptr %i.pe, align 8
  %i.rg = tail call ptr @to_intel_uncore(ptr noundef %.val.i120.i) #10 ; 2 uses
  br i1 %i.qj, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %trace_i915_reg_rw.exit.i119.i
  %i.rh = getelementptr i8, ptr %i.rg, i64 36
  %i.ri = load i32, ptr %i.rh, align 4
  %i.rj = add i32 %i.ri, %4
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %trace_i915_reg_rw.exit.i119.i
  %.0.i.i121.i = phi i32 [ %i.rj, %bb.cq ], [ %4, %trace_i915_reg_rw.exit.i119.i ]
  %i.rk = load ptr, ptr %i.rg, align 8
  %i.rl = zext i32 %.0.i.i121.i to i64
  %i.rm = getelementptr i8, ptr %i.rk, i64 %i.rl
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.qt, ptr elementtype(i32) %i.rm) #12, !srcloc !20
  %5 = or disjoint i32 %i.po, 8                   ; 3 uses
  %i.rn = getelementptr i8, ptr %i.pk, i64 6
  %i.ro = load i16, ptr %i.rn, align 2
  %i.rp = zext i16 %i.ro to i32
  %i.rq = shl nuw i32 %i.rp, 16
  %i.rr = getelementptr i8, ptr %i.pk, i64 8
  %i.rs = load i16, ptr %i.rr, align 2
  %i.rt = zext i16 %i.rs to i32
  %i.ru = or disjoint i32 %i.rq, %i.rt            ; 2 uses
  %i.rv = zext i32 %i.ru to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i127.i [label %arch_test_bit.exit.i.i.i126.i], !srcloc !13

arch_test_bit.exit.i.i.i126.i:                    ; preds = %bb.cr
  %i.rw = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.rx = zext i32 %i.rw to i64
  %i.ry = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.rx) #12, !srcloc !15 ; 2 uses
  %i.rz = icmp ult i8 %i.ry, 2
  tail call void @llvm.assume(i1 %i.rz)
  %i.sa = trunc nuw i8 %i.ry to i1
  br i1 %i.sa, label %bb.cs, label %trace_i915_reg_rw.exit.i127.i

bb.cs:                                            ; preds = %arch_test_bit.exit.i.i.i126.i
  %i.sb = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.sb, ptr elementtype(i64) %i.sb) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.sc = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i130.i = icmp eq ptr %i.sc, null
  br i1 %.not.i.i.i130.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.sd = getelementptr i8, ptr %i.sc, i64 8
  %i.se = load ptr, ptr %i.sd, align 8
  %i.sf = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.se, i1 noundef zeroext true, i32 %5, i64 noundef range(i64 0, 4294967296) %i.rv, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.sg = getelementptr i8, ptr %i.sb, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.sg, ptr elementtype(i64) %i.sg) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i127.i

trace_i915_reg_rw.exit.i127.i:                    ; preds = %bb.cu, %arch_test_bit.exit.i.i.i126.i, %bb.cr
  %.val.i128.i = load ptr, ptr %i.pe, align 8
  %i.sh = tail call ptr @to_intel_uncore(ptr noundef %.val.i128.i) #10 ; 2 uses
  br i1 %i.qj, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %trace_i915_reg_rw.exit.i127.i
  %i.si = getelementptr i8, ptr %i.sh, i64 36
  %i.sj = load i32, ptr %i.si, align 4
  %i.sk = add i32 %i.sj, %5
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %trace_i915_reg_rw.exit.i127.i
  %.0.i.i129.i = phi i32 [ %i.sk, %bb.cv ], [ %5, %trace_i915_reg_rw.exit.i127.i ]
  %i.sl = load ptr, ptr %i.sh, align 8
  %i.sm = zext i32 %.0.i.i129.i to i64
  %i.sn = getelementptr i8, ptr %i.sl, i64 %i.sm
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ru, ptr elementtype(i32) %i.sn) #12, !srcloc !20
  %6 = or disjoint i32 %i.po, 12                  ; 3 uses
  %i.so = getelementptr i8, ptr %i.pk, i64 10
  %i.sp = load i16, ptr %i.so, align 2
  %i.sq = zext i16 %i.sp to i32
  %i.sr = shl nuw i32 %i.sq, 16                   ; 2 uses
  %i.ss = zext i32 %i.sr to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i135.i [label %arch_test_bit.exit.i.i.i134.i], !srcloc !13

arch_test_bit.exit.i.i.i134.i:                    ; preds = %bb.cw
  %i.st = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.su = zext i32 %i.st to i64
  %i.sv = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.su) #12, !srcloc !15 ; 2 uses
  %i.sw = icmp ult i8 %i.sv, 2
  tail call void @llvm.assume(i1 %i.sw)
  %i.sx = trunc nuw i8 %i.sv to i1
  br i1 %i.sx, label %bb.cx, label %trace_i915_reg_rw.exit.i135.i

bb.cx:                                            ; preds = %arch_test_bit.exit.i.i.i134.i
  %i.sy = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.sy, ptr elementtype(i64) %i.sy) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.sz = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i138.i = icmp eq ptr %i.sz, null
  br i1 %.not.i.i.i138.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ta = getelementptr i8, ptr %i.sz, i64 8
  %i.tb = load ptr, ptr %i.ta, align 8
  %i.tc = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.tb, i1 noundef zeroext true, i32 %6, i64 noundef range(i64 0, 4294967296) %i.ss, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.td = getelementptr i8, ptr %i.sy, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.td, ptr elementtype(i64) %i.td) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i135.i

trace_i915_reg_rw.exit.i135.i:                    ; preds = %bb.cz, %arch_test_bit.exit.i.i.i134.i, %bb.cw
  %.val.i136.i = load ptr, ptr %i.pe, align 8
  %i.te = tail call ptr @to_intel_uncore(ptr noundef %.val.i136.i) #10 ; 2 uses
  br i1 %i.qj, label %bb.da, label %bb.db

bb.da:                                            ; preds = %trace_i915_reg_rw.exit.i135.i
  %i.tf = getelementptr i8, ptr %i.te, i64 36
  %i.tg = load i32, ptr %i.tf, align 4
  %i.th = add i32 %i.tg, %6
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %trace_i915_reg_rw.exit.i135.i
  %.0.i.i137.i = phi i32 [ %i.th, %bb.da ], [ %6, %trace_i915_reg_rw.exit.i135.i ]
  %i.ti = load ptr, ptr %i.te, align 8
  %i.tj = zext i32 %.0.i.i137.i to i64
  %i.tk = getelementptr i8, ptr %i.ti, i64 %i.tj
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.sr, ptr elementtype(i32) %i.tk) #12, !srcloc !20
  %7 = or disjoint i32 %i.po, 16                  ; 3 uses
  %i.tl = getelementptr i8, ptr %i.pk, i64 12
  %i.tm = load i16, ptr %i.tl, align 2
  %i.tn = zext i16 %i.tm to i32
  %i.to = shl nuw i32 %i.tn, 16
  %i.tp = getelementptr i8, ptr %i.pk, i64 14
  %i.tq = load i16, ptr %i.tp, align 2
  %i.tr = zext i16 %i.tq to i32
  %i.ts = or disjoint i32 %i.to, %i.tr            ; 2 uses
  %i.tt = zext i32 %i.ts to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i143.i [label %arch_test_bit.exit.i.i.i142.i], !srcloc !13

arch_test_bit.exit.i.i.i142.i:                    ; preds = %bb.db
  %i.tu = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.tv = zext i32 %i.tu to i64
  %i.tw = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.tv) #12, !srcloc !15 ; 2 uses
  %i.tx = icmp ult i8 %i.tw, 2
  tail call void @llvm.assume(i1 %i.tx)
  %i.ty = trunc nuw i8 %i.tw to i1
  br i1 %i.ty, label %bb.dc, label %trace_i915_reg_rw.exit.i143.i

bb.dc:                                            ; preds = %arch_test_bit.exit.i.i.i142.i
  %i.tz = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.tz, ptr elementtype(i64) %i.tz) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.ua = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i146.i = icmp eq ptr %i.ua, null
  br i1 %.not.i.i.i146.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ub = getelementptr i8, ptr %i.ua, i64 8
  %i.uc = load ptr, ptr %i.ub, align 8
  %i.ud = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.uc, i1 noundef zeroext true, i32 %7, i64 noundef range(i64 0, 4294967296) %i.tt, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.ue = getelementptr i8, ptr %i.tz, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ue, ptr elementtype(i64) %i.ue) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i143.i

trace_i915_reg_rw.exit.i143.i:                    ; preds = %bb.de, %arch_test_bit.exit.i.i.i142.i, %bb.db
  %.val.i144.i = load ptr, ptr %i.pe, align 8
  %i.uf = tail call ptr @to_intel_uncore(ptr noundef %.val.i144.i) #10 ; 2 uses
  br i1 %i.qj, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %trace_i915_reg_rw.exit.i143.i
  %i.ug = getelementptr i8, ptr %i.uf, i64 36
  %i.uh = load i32, ptr %i.ug, align 4
  %i.ui = add i32 %i.uh, %7
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %trace_i915_reg_rw.exit.i143.i
  %.0.i.i145.i = phi i32 [ %i.ui, %bb.df ], [ %7, %trace_i915_reg_rw.exit.i143.i ]
  %i.uj = load ptr, ptr %i.uf, align 8
  %i.uk = zext i32 %.0.i.i145.i to i64
  %i.ul = getelementptr i8, ptr %i.uj, i64 %i.uk
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ts, ptr elementtype(i32) %i.ul) #12, !srcloc !20
  %8 = or disjoint i32 %i.po, 20                  ; 3 uses
  %i.um = getelementptr i8, ptr %i.pk, i64 16
  %i.un = load i16, ptr %i.um, align 2
  %i.uo = zext i16 %i.un to i32
  %i.up = shl nuw i32 %i.uo, 16                   ; 2 uses
  %i.uq = zext i32 %i.up to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i151.i [label %arch_test_bit.exit.i.i.i150.i], !srcloc !13

arch_test_bit.exit.i.i.i150.i:                    ; preds = %bb.dg
  %i.ur = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.us = zext i32 %i.ur to i64
  %i.ut = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.us) #12, !srcloc !15 ; 2 uses
  %i.uu = icmp ult i8 %i.ut, 2
  tail call void @llvm.assume(i1 %i.uu)
  %i.uv = trunc nuw i8 %i.ut to i1
  br i1 %i.uv, label %bb.dh, label %trace_i915_reg_rw.exit.i151.i

bb.dh:                                            ; preds = %arch_test_bit.exit.i.i.i150.i
  %i.uw = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.uw, ptr elementtype(i64) %i.uw) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.ux = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i154.i = icmp eq ptr %i.ux, null
  br i1 %.not.i.i.i154.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.uy = getelementptr i8, ptr %i.ux, i64 8
  %i.uz = load ptr, ptr %i.uy, align 8
  %i.va = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.uz, i1 noundef zeroext true, i32 %8, i64 noundef range(i64 0, 4294967296) %i.uq, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.vb = getelementptr i8, ptr %i.uw, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.vb, ptr elementtype(i64) %i.vb) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i151.i

trace_i915_reg_rw.exit.i151.i:                    ; preds = %bb.dj, %arch_test_bit.exit.i.i.i150.i, %bb.dg
  %.val.i152.i = load ptr, ptr %i.pe, align 8
  %i.vc = tail call ptr @to_intel_uncore(ptr noundef %.val.i152.i) #10 ; 2 uses
  br i1 %i.qj, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %trace_i915_reg_rw.exit.i151.i
  %i.vd = getelementptr i8, ptr %i.vc, i64 36
  %i.ve = load i32, ptr %i.vd, align 4
  %i.vf = add i32 %i.ve, %8
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %trace_i915_reg_rw.exit.i151.i
  %.0.i.i153.i = phi i32 [ %i.vf, %bb.dk ], [ %8, %trace_i915_reg_rw.exit.i151.i ]
  %i.vg = load ptr, ptr %i.vc, align 8
  %i.vh = zext i32 %.0.i.i153.i to i64
  %i.vi = getelementptr i8, ptr %i.vg, i64 %i.vh
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.up, ptr elementtype(i32) %i.vi) #12, !srcloc !20
  %i.vj = add i32 %i.pn, 459256                   ; 5 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i159.i [label %arch_test_bit.exit.i.i.i158.i], !srcloc !13

arch_test_bit.exit.i.i.i158.i:                    ; preds = %bb.dl
  %i.vk = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.vl = zext i32 %i.vk to i64
  %i.vm = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.vl) #12, !srcloc !15 ; 2 uses
  %i.vn = icmp ult i8 %i.vm, 2
  tail call void @llvm.assume(i1 %i.vn)
  %i.vo = trunc nuw i8 %i.vm to i1
  br i1 %i.vo, label %bb.dm, label %trace_i915_reg_rw.exit.i159.i

bb.dm:                                            ; preds = %arch_test_bit.exit.i.i.i158.i
  %i.vp = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.vp, ptr elementtype(i64) %i.vp) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.vq = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i162.i = icmp eq ptr %i.vq, null
  br i1 %.not.i.i.i162.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.vr = getelementptr i8, ptr %i.vq, i64 8
  %i.vs = load ptr, ptr %i.vr, align 8
  %i.vt = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.vs, i1 noundef zeroext true, i32 %i.vj, i64 noundef range(i64 0, 4294967296) 6144, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.vu = getelementptr i8, ptr %i.vp, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.vu, ptr elementtype(i64) %i.vu) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i159.i

trace_i915_reg_rw.exit.i159.i:                    ; preds = %bb.do, %arch_test_bit.exit.i.i.i158.i, %bb.dl
  %.val.i160.i = load ptr, ptr %i.pe, align 8
  %i.vv = tail call ptr @to_intel_uncore(ptr noundef %.val.i160.i) #10 ; 2 uses
  %i.vw = icmp ult i32 %i.vj, 262144              ; 2 uses
  br i1 %i.vw, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %trace_i915_reg_rw.exit.i159.i
  %i.vx = getelementptr i8, ptr %i.vv, i64 36
  %i.vy = load i32, ptr %i.vx, align 4
  %i.vz = add i32 %i.vy, %i.vj
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %trace_i915_reg_rw.exit.i159.i
  %.0.i.i161.i = phi i32 [ %i.vz, %bb.dp ], [ %i.vj, %trace_i915_reg_rw.exit.i159.i ]
  %i.wa = load ptr, ptr %i.vv, align 8
  %i.wb = zext i32 %.0.i.i161.i to i64
  %i.wc = getelementptr i8, ptr %i.wa, i64 %i.wb
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 6144, ptr elementtype(i32) %i.wc) #12, !srcloc !20
  %9 = or disjoint i32 %i.vj, 4                   ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i167.i [label %arch_test_bit.exit.i.i.i166.i], !srcloc !13

arch_test_bit.exit.i.i.i166.i:                    ; preds = %bb.dq
  %i.wd = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.we = zext i32 %i.wd to i64
  %i.wf = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.we) #12, !srcloc !15 ; 2 uses
  %i.wg = icmp ult i8 %i.wf, 2
  tail call void @llvm.assume(i1 %i.wg)
  %i.wh = trunc nuw i8 %i.wf to i1
  br i1 %i.wh, label %bb.dr, label %trace_i915_reg_rw.exit.i167.i

bb.dr:                                            ; preds = %arch_test_bit.exit.i.i.i166.i
  %i.wi = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.wi, ptr elementtype(i64) %i.wi) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.wj = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i170.i = icmp eq ptr %i.wj, null
  br i1 %.not.i.i.i170.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.wk = getelementptr i8, ptr %i.wj, i64 8
  %i.wl = load ptr, ptr %i.wk, align 8
  %i.wm = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.wl, i1 noundef zeroext true, i32 %9, i64 noundef range(i64 0, 4294967296) 0, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.wn = getelementptr i8, ptr %i.wi, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.wn, ptr elementtype(i64) %i.wn) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i167.i

trace_i915_reg_rw.exit.i167.i:                    ; preds = %bb.dt, %arch_test_bit.exit.i.i.i166.i, %bb.dq
  %.val.i168.i = load ptr, ptr %i.pe, align 8
  %i.wo = tail call ptr @to_intel_uncore(ptr noundef %.val.i168.i) #10 ; 2 uses
  br i1 %i.vw, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %trace_i915_reg_rw.exit.i167.i
  %i.wp = getelementptr i8, ptr %i.wo, i64 36
  %i.wq = load i32, ptr %i.wp, align 4
  %i.wr = add i32 %i.wq, %9
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %trace_i915_reg_rw.exit.i167.i
  %.0.i.i169.i = phi i32 [ %i.wr, %bb.du ], [ %9, %trace_i915_reg_rw.exit.i167.i ]
  %i.ws = load ptr, ptr %i.wo, align 8
  %i.wt = zext i32 %.0.i.i169.i to i64
  %i.wu = getelementptr i8, ptr %i.ws, i64 %i.wt
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.wu) #12, !srcloc !20
  %i.wv = add i32 %i.pn, 459264                   ; 4 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i175.i [label %arch_test_bit.exit.i.i.i174.i], !srcloc !13

arch_test_bit.exit.i.i.i174.i:                    ; preds = %bb.dv
  %i.ww = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.wx = zext i32 %i.ww to i64
  %i.wy = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.wx) #12, !srcloc !15 ; 2 uses
  %i.wz = icmp ult i8 %i.wy, 2
  tail call void @llvm.assume(i1 %i.wz)
  %i.xa = trunc nuw i8 %i.wy to i1
  br i1 %i.xa, label %bb.dw, label %trace_i915_reg_rw.exit.i175.i

bb.dw:                                            ; preds = %arch_test_bit.exit.i.i.i174.i
  %i.xb = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.xb, ptr elementtype(i64) %i.xb) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.xc = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i178.i = icmp eq ptr %i.xc, null
  br i1 %.not.i.i.i178.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.xd = getelementptr i8, ptr %i.xc, i64 8
  %i.xe = load ptr, ptr %i.xd, align 8
  %i.xf = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.xe, i1 noundef zeroext true, i32 %i.wv, i64 noundef range(i64 0, 4294967296) 6144, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.xg = getelementptr i8, ptr %i.xb, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.xg, ptr elementtype(i64) %i.xg) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i175.i

trace_i915_reg_rw.exit.i175.i:                    ; preds = %bb.dy, %arch_test_bit.exit.i.i.i174.i, %bb.dv
  %.val.i176.i = load ptr, ptr %i.pe, align 8
  %i.xh = tail call ptr @to_intel_uncore(ptr noundef %.val.i176.i) #10 ; 2 uses
  %i.xi = icmp ult i32 %i.wv, 262144
  br i1 %i.xi, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %trace_i915_reg_rw.exit.i175.i
  %i.xj = getelementptr i8, ptr %i.xh, i64 36
  %i.xk = load i32, ptr %i.xj, align 4
  %i.xl = add i32 %i.xk, %i.wv
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %trace_i915_reg_rw.exit.i175.i
  %.0.i.i177.i = phi i32 [ %i.xl, %bb.dz ], [ %i.wv, %trace_i915_reg_rw.exit.i175.i ]
  %i.xm = load ptr, ptr %i.xh, align 8
  %i.xn = zext i32 %.0.i.i177.i to i64
  %i.xo = getelementptr i8, ptr %i.xm, i64 %i.xn
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 6144, ptr elementtype(i32) %i.xo) #12, !srcloc !20
  %i.xp = add i32 %i.pn, 459268                   ; 6 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i183.i [label %arch_test_bit.exit.i.i.i182.i], !srcloc !13

arch_test_bit.exit.i.i.i182.i:                    ; preds = %bb.ea
  %i.xq = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.xr = zext i32 %i.xq to i64
  %i.xs = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.xr) #12, !srcloc !15 ; 2 uses
  %i.xt = icmp ult i8 %i.xs, 2
  tail call void @llvm.assume(i1 %i.xt)
  %i.xu = trunc nuw i8 %i.xs to i1
  br i1 %i.xu, label %bb.eb, label %trace_i915_reg_rw.exit.i183.i

bb.eb:                                            ; preds = %arch_test_bit.exit.i.i.i182.i
  %i.xv = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.xv, ptr elementtype(i64) %i.xv) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.xw = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i186.i = icmp eq ptr %i.xw, null
  br i1 %.not.i.i.i186.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.xx = getelementptr i8, ptr %i.xw, i64 8
  %i.xy = load ptr, ptr %i.xx, align 8
  %i.xz = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.xy, i1 noundef zeroext true, i32 %i.xp, i64 noundef range(i64 0, 4294967296) 0, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.ya = getelementptr i8, ptr %i.xv, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ya, ptr elementtype(i64) %i.ya) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i183.i

trace_i915_reg_rw.exit.i183.i:                    ; preds = %bb.ed, %arch_test_bit.exit.i.i.i182.i, %bb.ea
  %.val.i184.i = load ptr, ptr %i.pe, align 8
  %i.yb = tail call ptr @to_intel_uncore(ptr noundef %.val.i184.i) #10 ; 2 uses
  %i.yc = icmp ult i32 %i.xp, 262144              ; 2 uses
  br i1 %i.yc, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %trace_i915_reg_rw.exit.i183.i
  %i.yd = getelementptr i8, ptr %i.yb, i64 36
  %i.ye = load i32, ptr %i.yd, align 4
  %i.yf = add i32 %i.ye, %i.xp
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %trace_i915_reg_rw.exit.i183.i
  %.0.i.i185.i = phi i32 [ %i.yf, %bb.ee ], [ %i.xp, %trace_i915_reg_rw.exit.i183.i ]
  %i.yg = load ptr, ptr %i.yb, align 8
  %i.yh = zext i32 %.0.i.i185.i to i64
  %i.yi = getelementptr i8, ptr %i.yg, i64 %i.yh
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.yi) #12, !srcloc !20
  %i.yj = add i32 %i.pn, 459272                   ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i191.i [label %arch_test_bit.exit.i.i.i190.i], !srcloc !13

arch_test_bit.exit.i.i.i190.i:                    ; preds = %bb.ef
  %i.yk = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.yl = zext i32 %i.yk to i64
  %i.ym = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.yl) #12, !srcloc !15 ; 2 uses
  %i.yn = icmp ult i8 %i.ym, 2
  tail call void @llvm.assume(i1 %i.yn)
  %i.yo = trunc nuw i8 %i.ym to i1
  br i1 %i.yo, label %bb.eg, label %trace_i915_reg_rw.exit.i191.i

bb.eg:                                            ; preds = %arch_test_bit.exit.i.i.i190.i
  %i.yp = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.yp, ptr elementtype(i64) %i.yp) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.yq = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i194.i = icmp eq ptr %i.yq, null
  br i1 %.not.i.i.i194.i, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.yr = getelementptr i8, ptr %i.yq, i64 8
  %i.ys = load ptr, ptr %i.yr, align 8
  %i.yt = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.ys, i1 noundef zeroext true, i32 %i.yj, i64 noundef range(i64 0, 4294967296) 0, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.yu = getelementptr i8, ptr %i.yp, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.yu, ptr elementtype(i64) %i.yu) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i191.i

trace_i915_reg_rw.exit.i191.i:                    ; preds = %bb.ei, %arch_test_bit.exit.i.i.i190.i, %bb.ef
  %.val.i192.i = load ptr, ptr %i.pe, align 8
  %i.yv = tail call ptr @to_intel_uncore(ptr noundef %.val.i192.i) #10 ; 2 uses
  %i.yw = icmp ult i32 %i.xp, 262140
  br i1 %i.yw, label %bb.ej, label %bb.el

bb.ej:                                            ; preds = %trace_i915_reg_rw.exit.i191.i
  %i.yx = getelementptr i8, ptr %i.yv, i64 36
  %i.yy = load i32, ptr %i.yx, align 4
  %i.yz = add i32 %i.yy, %i.yj
  br label %bb.el

bb.ek:                                            ; preds = %bb.cg
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.po, i32 noundef %i.pv) #10
  %10 = or disjoint i32 %i.po, 4
  %i.za = getelementptr i8, ptr %i.pk, i64 4
  %i.zb = load i16, ptr %i.za, align 2
  %i.zc = zext i16 %i.zb to i32
  %i.zd = shl nuw i32 %i.zc, 16
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %10, i32 noundef %i.zd) #10
  %11 = or disjoint i32 %i.po, 8
  %i.ze = getelementptr i8, ptr %i.pk, i64 6
  %i.zf = load i16, ptr %i.ze, align 2
  %i.zg = zext i16 %i.zf to i32
  %i.zh = shl nuw i32 %i.zg, 16
  %i.zi = getelementptr i8, ptr %i.pk, i64 8
  %i.zj = load i16, ptr %i.zi, align 2
  %i.zk = zext i16 %i.zj to i32
  %i.zl = or disjoint i32 %i.zh, %i.zk
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %11, i32 noundef %i.zl) #10
  %12 = or disjoint i32 %i.po, 12
  %i.zm = getelementptr i8, ptr %i.pk, i64 10
  %i.zn = load i16, ptr %i.zm, align 2
  %i.zo = zext i16 %i.zn to i32
  %i.zp = shl nuw i32 %i.zo, 16
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %12, i32 noundef %i.zp) #10
  %13 = or disjoint i32 %i.po, 16
  %i.zq = getelementptr i8, ptr %i.pk, i64 12
  %i.zr = load i16, ptr %i.zq, align 2
  %i.zs = zext i16 %i.zr to i32
  %i.zt = shl nuw i32 %i.zs, 16
  %i.zu = getelementptr i8, ptr %i.pk, i64 14
  %i.zv = load i16, ptr %i.zu, align 2
  %i.zw = zext i16 %i.zv to i32
  %i.zx = or disjoint i32 %i.zt, %i.zw
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %13, i32 noundef %i.zx) #10
  %14 = or disjoint i32 %i.po, 20
  %i.zy = getelementptr i8, ptr %i.pk, i64 16
  %i.zz = load i16, ptr %i.zy, align 2
  %i.aaa = zext i16 %i.zz to i32
  %i.aab = shl nuw i32 %i.aaa, 16
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %14, i32 noundef %i.aab) #10
  %i.aac = add i32 %i.pn, 459256                  ; 2 uses
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.aac, i32 noundef 6144) #10
  %15 = or disjoint i32 %i.aac, 4
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %15, i32 noundef 0) #10
  %i.aad = add i32 %i.pn, 459264
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.aad, i32 noundef 6144) #10
  %i.aae = add i32 %i.pn, 459268                  ; 2 uses
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.aae, i32 noundef 0) #10
  %i.aaf = add i32 %i.pn, 459272
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.aaf, i32 noundef 0) #10
  %16 = or disjoint i32 %i.aae, 8
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %16, i32 noundef 0) #10
  br label %icl_program_input_csc.exit

bb.el:                                            ; preds = %bb.ej, %trace_i915_reg_rw.exit.i191.i
  %.0.i.i193.i = phi i32 [ %i.yz, %bb.ej ], [ %i.yj, %trace_i915_reg_rw.exit.i191.i ]
  %i.aag = load ptr, ptr %i.yv, align 8
  %i.aah = zext i32 %.0.i.i193.i to i64
  %i.aai = getelementptr i8, ptr %i.aag, i64 %i.aah
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.aai) #12, !srcloc !20
  %17 = or disjoint i32 %i.xp, 8                  ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i199.i [label %arch_test_bit.exit.i.i.i198.i], !srcloc !13

arch_test_bit.exit.i.i.i198.i:                    ; preds = %bb.el
  %i.aaj = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.aak = zext i32 %i.aaj to i64
  %i.aal = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.aak) #12, !srcloc !15 ; 2 uses
  %i.aam = icmp ult i8 %i.aal, 2
  tail call void @llvm.assume(i1 %i.aam)
  %i.aan = trunc nuw i8 %i.aal to i1
  br i1 %i.aan, label %bb.em, label %trace_i915_reg_rw.exit.i199.i

bb.em:                                            ; preds = %arch_test_bit.exit.i.i.i198.i
  %i.aao = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aao, ptr elementtype(i64) %i.aao) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.aap = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i202.i = icmp eq ptr %i.aap, null
  br i1 %.not.i.i.i202.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.aaq = getelementptr i8, ptr %i.aap, i64 8
  %i.aar = load ptr, ptr %i.aaq, align 8
  %i.aas = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.aar, i1 noundef zeroext true, i32 %17, i64 noundef range(i64 0, 4294967296) 0, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.aat = getelementptr i8, ptr %i.aao, i64 8    ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aat, ptr elementtype(i64) %i.aat) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i199.i

trace_i915_reg_rw.exit.i199.i:                    ; preds = %bb.eo, %arch_test_bit.exit.i.i.i198.i, %bb.el
  %.val.i200.i = load ptr, ptr %i.pe, align 8
  %i.aau = tail call ptr @to_intel_uncore(ptr noundef %.val.i200.i) #10 ; 2 uses
  br i1 %i.yc, label %bb.ep, label %intel_de_write_fw.exit205.i

bb.ep:                                            ; preds = %trace_i915_reg_rw.exit.i199.i
  %i.aav = getelementptr i8, ptr %i.aau, i64 36
  %i.aaw = load i32, ptr %i.aav, align 4
  %i.aax = add i32 %i.aaw, %17
  br label %intel_de_write_fw.exit205.i

intel_de_write_fw.exit205.i:                      ; preds = %bb.ep, %trace_i915_reg_rw.exit.i199.i
  %.0.i.i201.i = phi i32 [ %i.aax, %bb.ep ], [ %17, %trace_i915_reg_rw.exit.i199.i ]
  %i.aay = load ptr, ptr %i.aau, align 8
  %i.aaz = zext i32 %.0.i.i201.i to i64
  %i.aba = getelementptr i8, ptr %i.aay, i64 %i.aaz
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.aba) #12, !srcloc !20
  br label %icl_program_input_csc.exit

icl_program_input_csc.exit:                       ; preds = %intel_de_write_fw.exit205.i, %bb.ek, %bb.cd, %intel_de_write_dsb.exit
  tail call fastcc void @skl_write_plane_wm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11, !srcloc !52
  %i.abb = getelementptr i8, ptr %3, i64 490
  %i.abc = load i8, ptr %i.abb, align 2, !range !21, !noundef !22
  %i.abd = trunc nuw i8 %i.abc to i1
  br i1 %i.abd, label %bb.eq, label %icl_plane_csc_load_black.exit

bb.eq:                                            ; preds = %icl_program_input_csc.exit
  %i.abe = load ptr, ptr %1, align 8              ; 2 uses
  %.not.i279 = icmp eq ptr %i.abe, null
  br i1 %.not.i279, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.abf = tail call ptr @__drm_to_display(ptr noundef nonnull %i.abe) #10
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.abg = phi ptr [ %i.abf, %bb.er ], [ null, %bb.eq ] ; 12 uses
  %i.abh = load i32, ptr %i.d, align 4
  %i.abi = load i32, ptr %i.f, align 8
  %i.abj = shl i32 %i.abi, 12
  %i.abk = shl i32 %i.abh, 8
  %i.abl = add i32 %i.abj, %i.abk                 ; 13 uses
  %i.abm = add i32 %i.abl, 459280                 ; 13 uses
  br i1 %.not.i171, label %bb.et, label %bb.gw

bb.et:                                            ; preds = %bb.es
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i.i281 [label %arch_test_bit.exit.i.i.i.i280], !srcloc !13

arch_test_bit.exit.i.i.i.i280:                    ; preds = %bb.et
  %i.abn = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.abo = zext i32 %i.abn to i64
  %i.abp = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.abo) #12, !srcloc !15 ; 2 uses
  %i.abq = icmp ult i8 %i.abp, 2
  tail call void @llvm.assume(i1 %i.abq)
  %i.abr = trunc nuw i8 %i.abp to i1
  br i1 %i.abr, label %bb.eu, label %trace_i915_reg_rw.exit.i.i281

bb.eu:                                            ; preds = %arch_test_bit.exit.i.i.i.i280
  %i.abs = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.abs, ptr elementtype(i64) %i.abs) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.abt = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i.i284 = icmp eq ptr %i.abt, null
  br i1 %.not.i.i.i.i284, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.abu = getelementptr i8, ptr %i.abt, i64 8
  %i.abv = load ptr, ptr %i.abu, align 8
  %i.abw = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.abv, i1 noundef zeroext true, i32 %i.abm, i64 noundef range(i64 0, 4294967296) 0, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.abx = getelementptr i8, ptr %i.abs, i64 8    ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.abx, ptr elementtype(i64) %i.abx) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i.i281

trace_i915_reg_rw.exit.i.i281:                    ; preds = %bb.ew, %arch_test_bit.exit.i.i.i.i280, %bb.et
  %.val.i.i282 = load ptr, ptr %i.abg, align 8
  %i.aby = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i282) #10 ; 2 uses
  %i.abz = icmp ult i32 %i.abm, 262144            ; 4 uses
  br i1 %i.abz, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %trace_i915_reg_rw.exit.i.i281
  %i.aca = getelementptr i8, ptr %i.aby, i64 36
  %i.acb = load i32, ptr %i.aca, align 4
  %i.acc = add i32 %i.acb, %i.abm
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %trace_i915_reg_rw.exit.i.i281
  %.0.i.i.i283 = phi i32 [ %i.acc, %bb.ex ], [ %i.abm, %trace_i915_reg_rw.exit.i.i281 ]
  %i.acd = load ptr, ptr %i.aby, align 8
  %i.ace = zext i32 %.0.i.i.i283 to i64
  %i.acf = getelementptr i8, ptr %i.acd, i64 %i.ace
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.acf) #12, !srcloc !20
  %18 = or disjoint i32 %i.abm, 4                 ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i109.i [label %arch_test_bit.exit.i.i.i108.i], !srcloc !13

arch_test_bit.exit.i.i.i108.i:                    ; preds = %bb.ey
  %i.acg = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.ach = zext i32 %i.acg to i64
  %i.aci = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ach) #12, !srcloc !15 ; 2 uses
  %i.acj = icmp ult i8 %i.aci, 2
  tail call void @llvm.assume(i1 %i.acj)
  %i.ack = trunc nuw i8 %i.aci to i1
  br i1 %i.ack, label %bb.ez, label %trace_i915_reg_rw.exit.i109.i

bb.ez:                                            ; preds = %arch_test_bit.exit.i.i.i108.i
  %i.acl = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.acl, ptr elementtype(i64) %i.acl) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.acm = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i112.i = icmp eq ptr %i.acm, null
  br i1 %.not.i.i.i112.i, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.acn = getelementptr i8, ptr %i.acm, i64 8
  %i.aco = load ptr, ptr %i.acn, align 8
  %i.acp = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.aco, i1 noundef zeroext true, i32 %18, i64 noundef range(i64 0, 4294967296) 0, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.acq = getelementptr i8, ptr %i.acl, i64 8    ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.acq, ptr elementtype(i64) %i.acq) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i109.i

trace_i915_reg_rw.exit.i109.i:                    ; preds = %bb.fb, %arch_test_bit.exit.i.i.i108.i, %bb.ey
  %.val.i110.i = load ptr, ptr %i.abg, align 8
  %i.acr = tail call ptr @to_intel_uncore(ptr noundef %.val.i110.i) #10 ; 2 uses
  br i1 %i.abz, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %trace_i915_reg_rw.exit.i109.i
  %i.acs = getelementptr i8, ptr %i.acr, i64 36
  %i.act = load i32, ptr %i.acs, align 4
  %i.acu = add i32 %i.act, %18
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %trace_i915_reg_rw.exit.i109.i
  %.0.i.i111.i = phi i32 [ %i.acu, %bb.fc ], [ %18, %trace_i915_reg_rw.exit.i109.i ]
  %i.acv = load ptr, ptr %i.acr, align 8
  %i.acw = zext i32 %.0.i.i111.i to i64
  %i.acx = getelementptr i8, ptr %i.acv, i64 %i.acw
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.acx) #12, !srcloc !20
  %19 = or disjoint i32 %i.abm, 8                 ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i117.i [label %arch_test_bit.exit.i.i.i116.i], !srcloc !13

arch_test_bit.exit.i.i.i116.i:                    ; preds = %bb.fd
  %i.acy = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.acz = zext i32 %i.acy to i64
  %i.ada = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.acz) #12, !srcloc !15 ; 2 uses
  %i.adb = icmp ult i8 %i.ada, 2
  tail call void @llvm.assume(i1 %i.adb)
  %i.adc = trunc nuw i8 %i.ada to i1
  br i1 %i.adc, label %bb.fe, label %trace_i915_reg_rw.exit.i117.i

bb.fe:                                            ; preds = %arch_test_bit.exit.i.i.i116.i
  %i.add = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.add, ptr elementtype(i64) %i.add) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.ade = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i120.i = icmp eq ptr %i.ade, null
  br i1 %.not.i.i.i120.i, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.adf = getelementptr i8, ptr %i.ade, i64 8
  %i.adg = load ptr, ptr %i.adf, align 8
  %i.adh = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.adg, i1 noundef zeroext true, i32 %19, i64 noundef range(i64 0, 4294967296) 0, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.adi = getelementptr i8, ptr %i.add, i64 8    ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.adi, ptr elementtype(i64) %i.adi) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i117.i

trace_i915_reg_rw.exit.i117.i:                    ; preds = %bb.fg, %arch_test_bit.exit.i.i.i116.i, %bb.fd
  %.val.i118.i = load ptr, ptr %i.abg, align 8
  %i.adj = tail call ptr @to_intel_uncore(ptr noundef %.val.i118.i) #10 ; 2 uses
  br i1 %i.abz, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %trace_i915_reg_rw.exit.i117.i
  %i.adk = getelementptr i8, ptr %i.adj, i64 36
  %i.adl = load i32, ptr %i.adk, align 4
  %i.adm = add i32 %i.adl, %19
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %trace_i915_reg_rw.exit.i117.i
  %.0.i.i119.i = phi i32 [ %i.adm, %bb.fh ], [ %19, %trace_i915_reg_rw.exit.i117.i ]
  %i.adn = load ptr, ptr %i.adj, align 8
  %i.ado = zext i32 %.0.i.i119.i to i64
  %i.adp = getelementptr i8, ptr %i.adn, i64 %i.ado
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.adp) #12, !srcloc !20
  %20 = or disjoint i32 %i.abm, 12                ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i125.i [label %arch_test_bit.exit.i.i.i124.i], !srcloc !13

arch_test_bit.exit.i.i.i124.i:                    ; preds = %bb.fi
  %i.adq = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.adr = zext i32 %i.adq to i64
  %i.ads = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.adr) #12, !srcloc !15 ; 2 uses
  %i.adt = icmp ult i8 %i.ads, 2
  tail call void @llvm.assume(i1 %i.adt)
  %i.adu = trunc nuw i8 %i.ads to i1
  br i1 %i.adu, label %bb.fj, label %trace_i915_reg_rw.exit.i125.i

bb.fj:                                            ; preds = %arch_test_bit.exit.i.i.i124.i
  %i.adv = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.adv, ptr elementtype(i64) %i.adv) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.adw = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i128.i = icmp eq ptr %i.adw, null
  br i1 %.not.i.i.i128.i, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.adx = getelementptr i8, ptr %i.adw, i64 8
  %i.ady = load ptr, ptr %i.adx, align 8
  %i.adz = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.ady, i1 noundef zeroext true, i32 %20, i64 noundef range(i64 0, 4294967296) 0, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.aea = getelementptr i8, ptr %i.adv, i64 8    ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aea, ptr elementtype(i64) %i.aea) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i125.i

trace_i915_reg_rw.exit.i125.i:                    ; preds = %bb.fl, %arch_test_bit.exit.i.i.i124.i, %bb.fi
  %.val.i126.i = load ptr, ptr %i.abg, align 8
  %i.aeb = tail call ptr @to_intel_uncore(ptr noundef %.val.i126.i) #10 ; 2 uses
  br i1 %i.abz, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %trace_i915_reg_rw.exit.i125.i
  %i.aec = getelementptr i8, ptr %i.aeb, i64 36
  %i.aed = load i32, ptr %i.aec, align 4
  %i.aee = add i32 %i.aed, %20
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %trace_i915_reg_rw.exit.i125.i
  %.0.i.i127.i = phi i32 [ %i.aee, %bb.fm ], [ %20, %trace_i915_reg_rw.exit.i125.i ]
  %i.aef = load ptr, ptr %i.aeb, align 8
  %i.aeg = zext i32 %.0.i.i127.i to i64
  %i.aeh = getelementptr i8, ptr %i.aef, i64 %i.aeg
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.aeh) #12, !srcloc !20
  %i.aei = add i32 %i.abl, 459296                 ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i133.i [label %arch_test_bit.exit.i.i.i132.i], !srcloc !13

arch_test_bit.exit.i.i.i132.i:                    ; preds = %bb.fn
  %i.aej = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.aek = zext i32 %i.aej to i64
  %i.ael = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.aek) #12, !srcloc !15 ; 2 uses
  %i.aem = icmp ult i8 %i.ael, 2
  tail call void @llvm.assume(i1 %i.aem)
  %i.aen = trunc nuw i8 %i.ael to i1
  br i1 %i.aen, label %bb.fo, label %trace_i915_reg_rw.exit.i133.i

bb.fo:                                            ; preds = %arch_test_bit.exit.i.i.i132.i
  %i.aeo = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aeo, ptr elementtype(i64) %i.aeo) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.aep = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i136.i = icmp eq ptr %i.aep, null
  br i1 %.not.i.i.i136.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.aeq = getelementptr i8, ptr %i.aep, i64 8
  %i.aer = load ptr, ptr %i.aeq, align 8
  %i.aes = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.aer, i1 noundef zeroext true, i32 %i.aei, i64 noundef range(i64 0, 4294967296) 0, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.aet = getelementptr i8, ptr %i.aeo, i64 8    ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aet, ptr elementtype(i64) %i.aet) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i133.i

trace_i915_reg_rw.exit.i133.i:                    ; preds = %bb.fq, %arch_test_bit.exit.i.i.i132.i, %bb.fn
  %.val.i134.i = load ptr, ptr %i.abg, align 8
  %i.aeu = tail call ptr @to_intel_uncore(ptr noundef %.val.i134.i) #10 ; 2 uses
  %i.aev = icmp ult i32 %i.abm, 262128
  br i1 %i.aev, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %trace_i915_reg_rw.exit.i133.i
  %i.aew = getelementptr i8, ptr %i.aeu, i64 36
  %i.aex = load i32, ptr %i.aew, align 4
  %i.aey = add i32 %i.aex, %i.aei
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %trace_i915_reg_rw.exit.i133.i
  %.0.i.i135.i = phi i32 [ %i.aey, %bb.fr ], [ %i.aei, %trace_i915_reg_rw.exit.i133.i ]
  %i.aez = load ptr, ptr %i.aeu, align 8
  %i.afa = zext i32 %.0.i.i135.i to i64
  %i.afb = getelementptr i8, ptr %i.aez, i64 %i.afa
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.afb) #12, !srcloc !20
  %i.afc = add i32 %i.abl, 459300                 ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i141.i [label %arch_test_bit.exit.i.i.i140.i], !srcloc !13

arch_test_bit.exit.i.i.i140.i:                    ; preds = %bb.fs
  %i.afd = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.afe = zext i32 %i.afd to i64
  %i.aff = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.afe) #12, !srcloc !15 ; 2 uses
  %i.afg = icmp ult i8 %i.aff, 2
  tail call void @llvm.assume(i1 %i.afg)
  %i.afh = trunc nuw i8 %i.aff to i1
  br i1 %i.afh, label %bb.ft, label %trace_i915_reg_rw.exit.i141.i

bb.ft:                                            ; preds = %arch_test_bit.exit.i.i.i140.i
  %i.afi = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.afi, ptr elementtype(i64) %i.afi) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.afj = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i144.i = icmp eq ptr %i.afj, null
  br i1 %.not.i.i.i144.i, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.afk = getelementptr i8, ptr %i.afj, i64 8
  %i.afl = load ptr, ptr %i.afk, align 8
  %i.afm = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.afl, i1 noundef zeroext true, i32 %i.afc, i64 noundef range(i64 0, 4294967296) 0, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.afn = getelementptr i8, ptr %i.afi, i64 8    ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.afn, ptr elementtype(i64) %i.afn) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i141.i

trace_i915_reg_rw.exit.i141.i:                    ; preds = %bb.fv, %arch_test_bit.exit.i.i.i140.i, %bb.fs
  %.val.i142.i = load ptr, ptr %i.abg, align 8
  %i.afo = tail call ptr @to_intel_uncore(ptr noundef %.val.i142.i) #10 ; 2 uses
  %i.afp = icmp ult i32 %i.abm, 262124
  br i1 %i.afp, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %trace_i915_reg_rw.exit.i141.i
  %i.afq = getelementptr i8, ptr %i.afo, i64 36
  %i.afr = load i32, ptr %i.afq, align 4
  %i.afs = add i32 %i.afr, %i.afc
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %trace_i915_reg_rw.exit.i141.i
  %.0.i.i143.i = phi i32 [ %i.afs, %bb.fw ], [ %i.afc, %trace_i915_reg_rw.exit.i141.i ]
  %i.aft = load ptr, ptr %i.afo, align 8
  %i.afu = zext i32 %.0.i.i143.i to i64
  %i.afv = getelementptr i8, ptr %i.aft, i64 %i.afu
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.afv) #12, !srcloc !20
  %i.afw = add i32 %i.abl, 459304                 ; 6 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i149.i [label %arch_test_bit.exit.i.i.i148.i], !srcloc !13

arch_test_bit.exit.i.i.i148.i:                    ; preds = %bb.fx
  %i.afx = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.afy = zext i32 %i.afx to i64
  %i.afz = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.afy) #12, !srcloc !15 ; 2 uses
  %i.aga = icmp ult i8 %i.afz, 2
  tail call void @llvm.assume(i1 %i.aga)
  %i.agb = trunc nuw i8 %i.afz to i1
  br i1 %i.agb, label %bb.fy, label %trace_i915_reg_rw.exit.i149.i

bb.fy:                                            ; preds = %arch_test_bit.exit.i.i.i148.i
  %i.agc = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.agc, ptr elementtype(i64) %i.agc) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.agd = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i152.i = icmp eq ptr %i.agd, null
  br i1 %.not.i.i.i152.i, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.age = getelementptr i8, ptr %i.agd, i64 8
  %i.agf = load ptr, ptr %i.age, align 8
  %i.agg = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.agf, i1 noundef zeroext true, i32 %i.afw, i64 noundef range(i64 0, 4294967296) 0, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.agh = getelementptr i8, ptr %i.agc, i64 8    ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.agh, ptr elementtype(i64) %i.agh) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i149.i

trace_i915_reg_rw.exit.i149.i:                    ; preds = %bb.ga, %arch_test_bit.exit.i.i.i148.i, %bb.fx
  %.val.i150.i = load ptr, ptr %i.abg, align 8
  %i.agi = tail call ptr @to_intel_uncore(ptr noundef %.val.i150.i) #10 ; 2 uses
  %i.agj = icmp ult i32 %i.afw, 262144            ; 2 uses
  br i1 %i.agj, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %trace_i915_reg_rw.exit.i149.i
  %i.agk = getelementptr i8, ptr %i.agi, i64 36
  %i.agl = load i32, ptr %i.agk, align 4
  %i.agm = add i32 %i.agl, %i.afw
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %trace_i915_reg_rw.exit.i149.i
  %.0.i.i151.i = phi i32 [ %i.agm, %bb.gb ], [ %i.afw, %trace_i915_reg_rw.exit.i149.i ]
  %i.agn = load ptr, ptr %i.agi, align 8
  %i.ago = zext i32 %.0.i.i151.i to i64
  %i.agp = getelementptr i8, ptr %i.agn, i64 %i.ago
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.agp) #12, !srcloc !20
  %21 = or disjoint i32 %i.afw, 4                 ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i157.i [label %arch_test_bit.exit.i.i.i156.i], !srcloc !13

arch_test_bit.exit.i.i.i156.i:                    ; preds = %bb.gc
  %i.agq = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.agr = zext i32 %i.agq to i64
  %i.ags = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.agr) #12, !srcloc !15 ; 2 uses
  %i.agt = icmp ult i8 %i.ags, 2
  tail call void @llvm.assume(i1 %i.agt)
  %i.agu = trunc nuw i8 %i.ags to i1
  br i1 %i.agu, label %bb.gd, label %trace_i915_reg_rw.exit.i157.i

bb.gd:                                            ; preds = %arch_test_bit.exit.i.i.i156.i
  %i.agv = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.agv, ptr elementtype(i64) %i.agv) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.agw = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i160.i = icmp eq ptr %i.agw, null
  br i1 %.not.i.i.i160.i, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.agx = getelementptr i8, ptr %i.agw, i64 8
  %i.agy = load ptr, ptr %i.agx, align 8
  %i.agz = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.agy, i1 noundef zeroext true, i32 %21, i64 noundef range(i64 0, 4294967296) 0, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.aha = getelementptr i8, ptr %i.agv, i64 8    ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aha, ptr elementtype(i64) %i.aha) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i157.i

trace_i915_reg_rw.exit.i157.i:                    ; preds = %bb.gf, %arch_test_bit.exit.i.i.i156.i, %bb.gc
  %.val.i158.i = load ptr, ptr %i.abg, align 8
  %i.ahb = tail call ptr @to_intel_uncore(ptr noundef %.val.i158.i) #10 ; 2 uses
  br i1 %i.agj, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %trace_i915_reg_rw.exit.i157.i
  %i.ahc = getelementptr i8, ptr %i.ahb, i64 36
  %i.ahd = load i32, ptr %i.ahc, align 4
  %i.ahe = add i32 %i.ahd, %21
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %trace_i915_reg_rw.exit.i157.i
  %.0.i.i159.i = phi i32 [ %i.ahe, %bb.gg ], [ %21, %trace_i915_reg_rw.exit.i157.i ]
  %i.ahf = load ptr, ptr %i.ahb, align 8
  %i.ahg = zext i32 %.0.i.i159.i to i64
  %i.ahh = getelementptr i8, ptr %i.ahf, i64 %i.ahg
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.ahh) #12, !srcloc !20
  %i.ahi = add i32 %i.abl, 459312                 ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i165.i [label %arch_test_bit.exit.i.i.i164.i], !srcloc !13

arch_test_bit.exit.i.i.i164.i:                    ; preds = %bb.gh
  %i.ahj = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.ahk = zext i32 %i.ahj to i64
  %i.ahl = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ahk) #12, !srcloc !15 ; 2 uses
  %i.ahm = icmp ult i8 %i.ahl, 2
  tail call void @llvm.assume(i1 %i.ahm)
  %i.ahn = trunc nuw i8 %i.ahl to i1
  br i1 %i.ahn, label %bb.gi, label %trace_i915_reg_rw.exit.i165.i

bb.gi:                                            ; preds = %arch_test_bit.exit.i.i.i164.i
  %i.aho = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aho, ptr elementtype(i64) %i.aho) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.ahp = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i168.i = icmp eq ptr %i.ahp, null
  br i1 %.not.i.i.i168.i, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.ahq = getelementptr i8, ptr %i.ahp, i64 8
  %i.ahr = load ptr, ptr %i.ahq, align 8
  %i.ahs = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.ahr, i1 noundef zeroext true, i32 %i.ahi, i64 noundef range(i64 0, 4294967296) 0, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.aht = getelementptr i8, ptr %i.aho, i64 8    ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aht, ptr elementtype(i64) %i.aht) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i165.i

trace_i915_reg_rw.exit.i165.i:                    ; preds = %bb.gk, %arch_test_bit.exit.i.i.i164.i, %bb.gh
  %.val.i166.i = load ptr, ptr %i.abg, align 8
  %i.ahu = tail call ptr @to_intel_uncore(ptr noundef %.val.i166.i) #10 ; 2 uses
  %i.ahv = icmp ult i32 %i.afw, 262136
  br i1 %i.ahv, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %trace_i915_reg_rw.exit.i165.i
  %i.ahw = getelementptr i8, ptr %i.ahu, i64 36
  %i.ahx = load i32, ptr %i.ahw, align 4
  %i.ahy = add i32 %i.ahx, %i.ahi
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %trace_i915_reg_rw.exit.i165.i
  %.0.i.i167.i = phi i32 [ %i.ahy, %bb.gl ], [ %i.ahi, %trace_i915_reg_rw.exit.i165.i ]
  %i.ahz = load ptr, ptr %i.ahu, align 8
  %i.aia = zext i32 %.0.i.i167.i to i64
  %i.aib = getelementptr i8, ptr %i.ahz, i64 %i.aia
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.aib) #12, !srcloc !20
  %i.aic = add i32 %i.abl, 459316                 ; 6 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i173.i [label %arch_test_bit.exit.i.i.i172.i], !srcloc !13

arch_test_bit.exit.i.i.i172.i:                    ; preds = %bb.gm
  %i.aid = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.aie = zext i32 %i.aid to i64
  %i.aif = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.aie) #12, !srcloc !15 ; 2 uses
  %i.aig = icmp ult i8 %i.aif, 2
  tail call void @llvm.assume(i1 %i.aig)
  %i.aih = trunc nuw i8 %i.aif to i1
  br i1 %i.aih, label %bb.gn, label %trace_i915_reg_rw.exit.i173.i

bb.gn:                                            ; preds = %arch_test_bit.exit.i.i.i172.i
  %i.aii = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aii, ptr elementtype(i64) %i.aii) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.aij = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i176.i = icmp eq ptr %i.aij, null
  br i1 %.not.i.i.i176.i, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.aik = getelementptr i8, ptr %i.aij, i64 8
  %i.ail = load ptr, ptr %i.aik, align 8
  %i.aim = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.ail, i1 noundef zeroext true, i32 %i.aic, i64 noundef range(i64 0, 4294967296) 0, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.ain = getelementptr i8, ptr %i.aii, i64 8    ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ain, ptr elementtype(i64) %i.ain) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i173.i

trace_i915_reg_rw.exit.i173.i:                    ; preds = %bb.gp, %arch_test_bit.exit.i.i.i172.i, %bb.gm
  %.val.i174.i = load ptr, ptr %i.abg, align 8
  %i.aio = tail call ptr @to_intel_uncore(ptr noundef %.val.i174.i) #10 ; 2 uses
  %i.aip = icmp ult i32 %i.aic, 262144            ; 2 uses
  br i1 %i.aip, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %trace_i915_reg_rw.exit.i173.i
  %i.aiq = getelementptr i8, ptr %i.aio, i64 36
  %i.air = load i32, ptr %i.aiq, align 4
  %i.ais = add i32 %i.air, %i.aic
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %trace_i915_reg_rw.exit.i173.i
  %.0.i.i175.i = phi i32 [ %i.ais, %bb.gq ], [ %i.aic, %trace_i915_reg_rw.exit.i173.i ]
  %i.ait = load ptr, ptr %i.aio, align 8
  %i.aiu = zext i32 %.0.i.i175.i to i64
  %i.aiv = getelementptr i8, ptr %i.ait, i64 %i.aiu
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.aiv) #12, !srcloc !20
  %i.aiw = add i32 %i.abl, 459320                 ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i181.i [label %arch_test_bit.exit.i.i.i180.i], !srcloc !13

arch_test_bit.exit.i.i.i180.i:                    ; preds = %bb.gr
  %i.aix = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.aiy = zext i32 %i.aix to i64
  %i.aiz = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.aiy) #12, !srcloc !15 ; 2 uses
  %i.aja = icmp ult i8 %i.aiz, 2
  tail call void @llvm.assume(i1 %i.aja)
  %i.ajb = trunc nuw i8 %i.aiz to i1
  br i1 %i.ajb, label %bb.gs, label %trace_i915_reg_rw.exit.i181.i

bb.gs:                                            ; preds = %arch_test_bit.exit.i.i.i180.i
  %i.ajc = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ajc, ptr elementtype(i64) %i.ajc) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.ajd = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i184.i = icmp eq ptr %i.ajd, null
  br i1 %.not.i.i.i184.i, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.aje = getelementptr i8, ptr %i.ajd, i64 8
  %i.ajf = load ptr, ptr %i.aje, align 8
  %i.ajg = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.ajf, i1 noundef zeroext true, i32 %i.aiw, i64 noundef range(i64 0, 4294967296) 0, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.ajh = getelementptr i8, ptr %i.ajc, i64 8    ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ajh, ptr elementtype(i64) %i.ajh) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i181.i

trace_i915_reg_rw.exit.i181.i:                    ; preds = %bb.gu, %arch_test_bit.exit.i.i.i180.i, %bb.gr
  %.val.i182.i = load ptr, ptr %i.abg, align 8
  %i.aji = tail call ptr @to_intel_uncore(ptr noundef %.val.i182.i) #10 ; 2 uses
  %i.ajj = icmp ult i32 %i.aic, 262140
  br i1 %i.ajj, label %bb.gv, label %bb.gx

bb.gv:                                            ; preds = %trace_i915_reg_rw.exit.i181.i
  %i.ajk = getelementptr i8, ptr %i.aji, i64 36
  %i.ajl = load i32, ptr %i.ajk, align 4
  %i.ajm = add i32 %i.ajl, %i.aiw
  br label %bb.gx

bb.gw:                                            ; preds = %bb.es
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.abm, i32 noundef 0) #10
  %22 = or disjoint i32 %i.abm, 4
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %22, i32 noundef 0) #10
  %23 = or disjoint i32 %i.abm, 8
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %23, i32 noundef 0) #10
  %24 = or disjoint i32 %i.abm, 12
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %24, i32 noundef 0) #10
  %i.ajn = add i32 %i.abl, 459296
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.ajn, i32 noundef 0) #10
  %i.ajo = add i32 %i.abl, 459300
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.ajo, i32 noundef 0) #10
  %i.ajp = add i32 %i.abl, 459304                 ; 2 uses
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.ajp, i32 noundef 0) #10
  %25 = or disjoint i32 %i.ajp, 4
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %25, i32 noundef 0) #10
  %i.ajq = add i32 %i.abl, 459312
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.ajq, i32 noundef 0) #10
  %i.ajr = add i32 %i.abl, 459316                 ; 2 uses
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.ajr, i32 noundef 0) #10
  %i.ajs = add i32 %i.abl, 459320
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.ajs, i32 noundef 0) #10
  %26 = or disjoint i32 %i.ajr, 8
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %26, i32 noundef 0) #10
  br label %icl_plane_csc_load_black.exit

bb.gx:                                            ; preds = %bb.gv, %trace_i915_reg_rw.exit.i181.i
  %.0.i.i183.i = phi i32 [ %i.ajm, %bb.gv ], [ %i.aiw, %trace_i915_reg_rw.exit.i181.i ]
  %i.ajt = load ptr, ptr %i.aji, align 8
  %i.aju = zext i32 %.0.i.i183.i to i64
  %i.ajv = getelementptr i8, ptr %i.ajt, i64 %i.aju
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.ajv) #12, !srcloc !20
  %27 = or disjoint i32 %i.aic, 8                 ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i189.i [label %arch_test_bit.exit.i.i.i188.i], !srcloc !13

arch_test_bit.exit.i.i.i188.i:                    ; preds = %bb.gx
  %i.ajw = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.ajx = zext i32 %i.ajw to i64
  %i.ajy = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ajx) #12, !srcloc !15 ; 2 uses
  %i.ajz = icmp ult i8 %i.ajy, 2
  tail call void @llvm.assume(i1 %i.ajz)
  %i.aka = trunc nuw i8 %i.ajy to i1
  br i1 %i.aka, label %bb.gy, label %trace_i915_reg_rw.exit.i189.i

bb.gy:                                            ; preds = %arch_test_bit.exit.i.i.i188.i
  %i.akb = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.akb, ptr elementtype(i64) %i.akb) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.akc = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i192.i = icmp eq ptr %i.akc, null
  br i1 %.not.i.i.i192.i, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.akd = getelementptr i8, ptr %i.akc, i64 8
  %i.ake = load ptr, ptr %i.akd, align 8
  %i.akf = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.ake, i1 noundef zeroext true, i32 %27, i64 noundef range(i64 0, 4294967296) 0, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.akg = getelementptr i8, ptr %i.akb, i64 8    ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.akg, ptr elementtype(i64) %i.akg) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i189.i

trace_i915_reg_rw.exit.i189.i:                    ; preds = %bb.ha, %arch_test_bit.exit.i.i.i188.i, %bb.gx
  %.val.i190.i = load ptr, ptr %i.abg, align 8
  %i.akh = tail call ptr @to_intel_uncore(ptr noundef %.val.i190.i) #10 ; 2 uses
  br i1 %i.aip, label %bb.hb, label %intel_de_write_fw.exit195.i

bb.hb:                                            ; preds = %trace_i915_reg_rw.exit.i189.i
  %i.aki = getelementptr i8, ptr %i.akh, i64 36
  %i.akj = load i32, ptr %i.aki, align 4
  %i.akk = add i32 %i.akj, %27
  br label %intel_de_write_fw.exit195.i

intel_de_write_fw.exit195.i:                      ; preds = %bb.hb, %trace_i915_reg_rw.exit.i189.i
  %.0.i.i191.i = phi i32 [ %i.akk, %bb.hb ], [ %27, %trace_i915_reg_rw.exit.i189.i ]
  %i.akl = load ptr, ptr %i.akh, align 8
  %i.akm = zext i32 %.0.i.i191.i to i64
  %i.akn = getelementptr i8, ptr %i.akl, i64 %i.akm
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.akn) #12, !srcloc !20
  br label %icl_plane_csc_load_black.exit

icl_plane_csc_load_black.exit:                    ; preds = %intel_de_write_fw.exit195.i, %bb.gw, %icl_program_input_csc.exit
  %i.ako = load ptr, ptr %1, align 8              ; 2 uses
  %.not.i287 = icmp eq ptr %i.ako, null
  br i1 %.not.i287, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %icl_plane_csc_load_black.exit
  %i.akp = tail call ptr @__drm_to_display(ptr noundef nonnull %i.ako) #10
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %icl_plane_csc_load_black.exit
  %i.akq = phi ptr [ %i.akp, %bb.hc ], [ null, %icl_plane_csc_load_black.exit ] ; 3 uses
  %i.akr = load i32, ptr %i.f, align 8
  %i.aks = getelementptr i8, ptr %2, i64 1291
  %i.akt = load i8, ptr %i.aks, align 1, !range !21, !noundef !22
  %i.aku = trunc nuw i8 %i.akt to i1
  br i1 %i.aku, label %bb.he, label %icl_plane_update_sel_fetch_noarm.exit

bb.he:                                            ; preds = %bb.hd
  %i.akv = getelementptr i8, ptr %2, i64 1292
  %i.akw = load i8, ptr %i.akv, align 4, !range !21, !noundef !22
  %i.akx = trunc nuw i8 %i.akw to i1
  br i1 %i.akx, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.aky = load i32, ptr %i.ai, align 8
  %i.akz = getelementptr i8, ptr %2, i64 4632
  %i.ala = load i32, ptr %i.akz, align 8
  %i.alb = sub i32 %i.aky, %i.ala
  %i.alc = tail call i32 @llvm.smax.i32(i32 %i.alb, i32 0)
  br label %bb.hh

bb.hg:                                            ; preds = %bb.he
  %i.ald = getelementptr i8, ptr %3, i64 544
  %i.ale = load i32, ptr %i.ald, align 8
  %i.alf = load i32, ptr %i.ai, align 8
  %i.alg = add i32 %i.alf, %i.ale
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %.0.i288 = phi i32 [ %i.alc, %bb.hf ], [ %i.alg, %bb.hg ]
  %i.alh = shl i32 %.0.i288, 16
  %i.ali = load i32, ptr %i.ag, align 4
  %i.alj = or i32 %i.alh, %i.ali                  ; 3 uses
  %i.alk = load i32, ptr %i.d, align 4            ; 3 uses
  %i.all = icmp ult i32 %i.alk, 4
  %i.alm = shl i32 %i.akr, 12                     ; 6 uses
  br i1 %i.all, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.aln = add i32 %i.alm, 460948
  %i.alo = shl nuw nsw i32 %i.alk, 5
  %i.alp = or disjoint i32 %i.alo, %i.aln
  br label %bb.hk

bb.hj:                                            ; preds = %bb.hh
  %i.alq = shl i32 %i.alk, 5
  %i.alr = add i32 %i.alm, 460964
  %i.als = add i32 %i.alr, %i.alq
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %i.alt = phi i32 [ %i.alp, %bb.hi ], [ %i.als, %bb.hj ] ; 5 uses
  br i1 %.not.i171, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.alt, i32 noundef %i.alj) #10
  br label %intel_de_write_dsb.exit84.i

bb.hm:                                            ; preds = %bb.hk
  %i.alu = zext i32 %i.alj to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i.i291 [label %arch_test_bit.exit.i.i.i.i290], !srcloc !13

arch_test_bit.exit.i.i.i.i290:                    ; preds = %bb.hm
  %i.alv = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.alw = zext i32 %i.alv to i64
  %i.alx = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.alw) #12, !srcloc !15 ; 2 uses
  %i.aly = icmp ult i8 %i.alx, 2
  tail call void @llvm.assume(i1 %i.aly)
  %i.alz = trunc nuw i8 %i.alx to i1
  br i1 %i.alz, label %bb.hn, label %trace_i915_reg_rw.exit.i.i291

bb.hn:                                            ; preds = %arch_test_bit.exit.i.i.i.i290
  %i.ama = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ama, ptr elementtype(i64) %i.ama) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.amb = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i.i294 = icmp eq ptr %i.amb, null
  br i1 %.not.i.i.i.i294, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.amc = getelementptr i8, ptr %i.amb, i64 8
  %i.amd = load ptr, ptr %i.amc, align 8
  %i.ame = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.amd, i1 noundef zeroext true, i32 %i.alt, i64 noundef range(i64 0, 4294967296) %i.alu, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.amf = getelementptr i8, ptr %i.ama, i64 8    ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.amf, ptr elementtype(i64) %i.amf) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i.i291

trace_i915_reg_rw.exit.i.i291:                    ; preds = %bb.hp, %arch_test_bit.exit.i.i.i.i290, %bb.hm
  %.val.i.i292 = load ptr, ptr %i.akq, align 8
  %i.amg = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i292) #10 ; 2 uses
  %i.amh = icmp ult i32 %i.alt, 262144
  br i1 %i.amh, label %bb.hq, label %intel_de_write_fw.exit.i

bb.hq:                                            ; preds = %trace_i915_reg_rw.exit.i.i291
  %i.ami = getelementptr i8, ptr %i.amg, i64 36
  %i.amj = load i32, ptr %i.ami, align 4
  %i.amk = add i32 %i.amj, %i.alt
  br label %intel_de_write_fw.exit.i

intel_de_write_fw.exit.i:                         ; preds = %bb.hq, %trace_i915_reg_rw.exit.i.i291
  %.0.i.i.i293 = phi i32 [ %i.amk, %bb.hq ], [ %i.alt, %trace_i915_reg_rw.exit.i.i291 ]
  %i.aml = load ptr, ptr %i.amg, align 8
  %i.amm = zext i32 %.0.i.i.i293 to i64
  %i.amn = getelementptr i8, ptr %i.aml, i64 %i.amm
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.alj, ptr elementtype(i32) %i.amn) #12, !srcloc !20
  br label %intel_de_write_dsb.exit84.i

intel_de_write_dsb.exit84.i:                      ; preds = %intel_de_write_fw.exit.i, %bb.hl
  %i.amo = load i32, ptr %i.am, align 4
  %i.amp = load i32, ptr %i.ao, align 4
  %i.amq = getelementptr i8, ptr %3, i64 544      ; 2 uses
  %i.amr = load i32, ptr %i.amq, align 8          ; 2 uses
  br i1 %.not80.i, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %intel_de_write_dsb.exit84.i
  %i.ams = add i32 %i.amr, 1
  %i.amt = sdiv i32 %i.ams, 2
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %intel_de_write_dsb.exit84.i
  %.sink.i = phi i32 [ %i.amt, %bb.hr ], [ %i.amr, %intel_de_write_dsb.exit84.i ]
  %i.amu = add i32 %.sink.i, %i.amp
  %i.amv = shl i32 %i.amu, 16
  %i.amw = or i32 %i.amv, %i.amo                  ; 3 uses
  %i.amx = load i32, ptr %i.d, align 4            ; 3 uses
  %i.amy = icmp ult i32 %i.amx, 4
  br i1 %i.amy, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.amz = add i32 %i.alm, 460956
  %i.ana = shl nuw nsw i32 %i.amx, 5
  %i.anb = or disjoint i32 %i.ana, %i.amz
  br label %bb.hv

end_hunk_0
