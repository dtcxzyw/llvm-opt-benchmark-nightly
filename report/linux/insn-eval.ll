Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/insn-eval?download=true
inline.NumInlined: 64
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@insn_get_modrm_reg_off:bb.a
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 83
  %i.b = load i8, ptr %i.a, align 1
  %.not.i.i = icmp eq i8 %i.b, 0
  %spec.select.i.i = select i1 %.not.i.i, i32 8, i32 16
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8
  %i.e = lshr i32 %i.d, 3
  %i.f = and i32 %i.e, 7
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = shl i32 %i.h, 1
  %i.j = and i32 %i.i, 8
  %spec.select46.i.i = or disjoint i32 %i.j, %i.f ; 2 uses
  %.not42.i.i = icmp samesign ult i32 %spec.select46.i.i, %spec.select.i.i
  br i1 %.not42.i.i, label %pt_regs_offset.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 516, i32 2323, i64 16) #10, !srcloc !15
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.k) #9
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !16
  br label %get_reg_offset.exit

pt_regs_offset.exit.i:                            ; preds = %bb.a
  %i.l = zext nneg i32 %spec.select46.i.i to i64
  %i.m = getelementptr [4 x i8], ptr @pt_regoff, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4
  br label %get_reg_offset.exit

get_reg_offset.exit:                              ; preds = %bb.b, %pt_regs_offset.exit.i
  %.0.i = phi i32 [ %i.n, %pt_regs_offset.exit.i ], [ -22, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @insn_get_modrm_reg_ptr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(ret: address, provenance) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 83
  %i.b = load i8, ptr %i.a, align 1
  %.not.i.i.i = icmp eq i8 %i.b, 0
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 8, i32 16
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8
  %i.e = lshr i32 %i.d, 3
  %i.f = and i32 %i.e, 7
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = shl i32 %i.h, 1
  %i.j = and i32 %i.i, 8
  %spec.select46.i.i.i = or disjoint i32 %i.j, %i.f ; 2 uses
  %.not42.i.i.i = icmp samesign ult i32 %spec.select46.i.i.i, %spec.select.i.i.i
  br i1 %.not42.i.i.i, label %insn_get_modrm_reg_off.exit, label %insn_get_modrm_reg_off.exit.thread

insn_get_modrm_reg_off.exit.thread:               ; preds = %bb.a
  %i.k = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 516, i32 2323, i64 16) #10, !srcloc !15
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.k) #9
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !16
  br label %bb.b

insn_get_modrm_reg_off.exit:                      ; preds = %bb.a
  %i.l = zext nneg i32 %spec.select46.i.i.i to i64
  %i.m = getelementptr [4 x i8], ptr @pt_regoff, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr i8, ptr %1, i64 %i.o
  br label %bb.b

bb.b:                                             ; preds = %insn_get_modrm_reg_off.exit, %insn_get_modrm_reg_off.exit.thread
  %i.q = phi ptr [ null, %insn_get_modrm_reg_off.exit.thread ], [ %i.p, %insn_get_modrm_reg_off.exit ]
  ret ptr %i.q
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @insn_get_addr_ref(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i64, align 8                      ; 7 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = icmp ne ptr %0, null
  %i.k = icmp ne ptr %1, null
  %or.cond = and i1 %i.j, %i.k
  br i1 %or.cond, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @insn_get_opcode(ptr noundef nonnull %0) #9
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.af

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %0, i64 81         ; 4 uses
  %i.n = load i8, ptr %i.m, align 1
  switch i8 %i.n, label %bb.af [
    i8 2, label %bb.d
    i8 4, label %bb.p
    i8 8, label %bb.x
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.o = tail call i32 @insn_get_displacement(ptr noundef nonnull %0) #9
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.e, label %get_addr_ref_16.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.m, align 1
  %.not15.i = icmp eq i8 %i.p, 2
  br i1 %.not15.i, label %bb.f, label %get_addr_ref_16.exit

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = and i32 %i.r, 192
  %i.t = icmp eq i32 %i.s, 192
  %i.u = tail call i32 @insn_get_modrm(ptr noundef nonnull %0) #9
  br i1 %i.t, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %bb.h, label %get_addr_ref_16.exit

bb.h:                                             ; preds = %bb.g
  %i.v = load i32, ptr %i.q, align 8              ; 2 uses
  %i.w = and i32 %i.v, 192
  %.not22.i.i = icmp eq i32 %i.w, 192
  br i1 %.not22.i.i, label %bb.i, label %get_addr_ref_16.exit

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr i8, ptr %0, i64 83
  %i.y = load i8, ptr %i.x, align 1
  %.not.i.i.i.i = icmp eq i8 %i.y, 0
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i32 8, i32 16
  %i.z = and i32 %i.v, 7
  %i.aa = getelementptr i8, ptr %0, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = shl i32 %i.ab, 3
  %i.ad = and i32 %i.ac, 8
  %spec.select46.i.i.i.i = or disjoint i32 %i.ad, %i.z ; 2 uses
  %.not42.i.i.i.i = icmp samesign ult i32 %spec.select46.i.i.i.i, %spec.select.i.i.i.i
  br i1 %.not42.i.i.i.i, label %get_reg_offset.exit.i.i, label %get_reg_offset.exit.thread.i.i

get_reg_offset.exit.thread.i.i:                   ; preds = %bb.i
  %i.ae = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 516, i32 2323, i64 16) #10, !srcloc !15
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ae) #9
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !16
  br label %get_addr_ref_16.exit

get_reg_offset.exit.i.i:                          ; preds = %bb.i
  %i.af = zext nneg i32 %spec.select46.i.i.i.i to i64
  %i.ag = getelementptr [4 x i8], ptr @pt_regoff, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = ptrtoint ptr %1 to i64
  %i.ak = add i64 %i.ai, %i.aj
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 8
  br label %regs_get_register.exit.i.i

bb.j:                                             ; preds = %bb.f
  %i.an = getelementptr i8, ptr %0, i64 37
  %i.ao = load i8, ptr %i.an, align 1
  %.not19.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not19.i.i, label %get_addr_ref_16.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load i32, ptr %i.q, align 8             ; 3 uses
  %i.aq = and i32 %i.ap, 192
  %i.ar = icmp eq i32 %i.aq, 192
  br i1 %i.ar, label %get_addr_ref_16.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = and i32 %i.ap, 7                        ; 2 uses
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = getelementptr [4 x i8], ptr @get_reg_offset_16.regoff2, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = and i32 %i.ap, 199
  %or.cond18.i.i.i = icmp eq i32 %i.aw, 6
  br i1 %or.cond18.i.i.i, label %get_reg_offset_16.exit.thread.i.i, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.l
  %i.ax = getelementptr [4 x i8], ptr @get_reg_offset_16.regoff1, i64 %i.at
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = ptrtoint ptr %1 to i64
  %i.bb = add i64 %i.az, %i.ba
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = trunc i64 %i.bd to i32
  br label %get_reg_offset_16.exit.thread.i.i

get_reg_offset_16.exit.thread.i.i:                ; preds = %thread-pre-split.i.i, %bb.l
  %.0.2428.i.i = phi i32 [ %i.ay, %thread-pre-split.i.i ], [ -33, %bb.l ]
  %.015.i.i = phi i32 [ %i.be, %thread-pre-split.i.i ], [ 0, %bb.l ]
  %.not33.i.i = icmp samesign ult i32 %i.as, 4
  br i1 %.not33.i.i, label %bb.m, label %get_eff_addr_modrm_16.exit.i, !prof !21

bb.m:                                             ; preds = %get_reg_offset_16.exit.thread.i.i
  %i.bf = zext nneg i32 %i.av to i64
  %i.bg = ptrtoint ptr %1 to i64
  %i.bh = add i64 %i.bf, %i.bg
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = trunc i64 %i.bj to i32
  br label %get_eff_addr_modrm_16.exit.i

get_eff_addr_modrm_16.exit.i:                     ; preds = %bb.m, %get_reg_offset_16.exit.thread.i.i
  %.0.i20.i = phi i32 [ 0, %get_reg_offset_16.exit.thread.i.i ], [ %i.bk, %bb.m ]
  %i.bl = getelementptr i8, ptr %0, i64 48
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = add i32 %.0.i20.i, %.015.i.i
  %i.bo = add i32 %i.bn, %i.bm
  %i.bp = zext i32 %i.bo to i64
  br label %regs_get_register.exit.i.i

regs_get_register.exit.i.i:                       ; preds = %get_eff_addr_modrm_16.exit.i, %get_reg_offset.exit.i.i
  %.025.i.a = phi i32 [ %.0.2428.i.i, %get_eff_addr_modrm_16.exit.i ], [ %i.ah, %get_reg_offset.exit.i.i ]
  %.024.i = phi i64 [ %i.bp, %get_eff_addr_modrm_16.exit.i ], [ %i.am, %get_reg_offset.exit.i.i ]
  store i64 0, ptr %i.h, align 8, !annotation !22
  store i64 0, ptr %i.i, align 8, !annotation !22
  %i.bq = call fastcc i32 @get_seg_base_limit(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %.025.i.a, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #12, !srcloc !23
  %.not18.i = icmp eq i32 %i.bq, 0
  br i1 %.not18.i, label %bb.n, label %get_addr_ref_16.exit

bb.n:                                             ; preds = %regs_get_register.exit.i.i
  %i.br = and i64 %.024.i, 65535                  ; 2 uses
  %i.bs = load i64, ptr %i.i, align 8
  %i.bt = icmp ult i64 %i.bs, %i.br
  br i1 %i.bt, label %get_addr_ref_16.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = load i64, ptr %i.h, align 8
  %i.bv = add i64 %i.bu, %i.br
  br label %get_addr_ref_16.exit

get_addr_ref_16.exit:                             ; preds = %bb.d, %bb.e, %bb.g, %bb.h, %get_reg_offset.exit.thread.i.i, %bb.j, %bb.k, %regs_get_register.exit.i.i, %bb.n, %bb.o
  %.0.i = phi i64 [ -1, %bb.d ], [ -1, %bb.e ], [ %i.bv, %bb.o ], [ -1, %regs_get_register.exit.i.i ], [ -1, %bb.n ], [ -1, %get_reg_offset.exit.thread.i.i ], [ -1, %bb.g ], [ -1, %bb.h ], [ -1, %bb.j ], [ -1, %bb.k ]
  %i.bw = inttoptr i64 %.0.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  br label %bb.af

bb.p:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  store i32 0, ptr %i.f, align 4, !annotation !22
  store i64 0, ptr %i.g, align 8, !annotation !22
  %i.bx = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = and i32 %i.by, 192
  %i.ca = icmp eq i32 %i.bz, 192
  br i1 %i.ca, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cb = tail call i32 @insn_get_modrm(ptr noundef nonnull %0) #9
  %.not.i.i15 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i15, label %bb.r, label %get_addr_ref_32.exit

bb.r:                                             ; preds = %bb.q
  %i.cc = load i32, ptr %i.bx, align 8            ; 2 uses
  %i.cd = and i32 %i.cc, 192
  %.not22.i.i16 = icmp eq i32 %i.cd, 192
  br i1 %.not22.i.i16, label %bb.s, label %get_addr_ref_32.exit

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr i8, ptr %0, i64 83
  %i.cf = load i8, ptr %i.ce, align 1
  %.not.i.i.i.i17 = icmp eq i8 %i.cf, 0
  %spec.select.i.i.i.i18 = select i1 %.not.i.i.i.i17, i32 8, i32 16
  %i.cg = and i32 %i.cc, 7
  %i.ch = getelementptr i8, ptr %0, i64 8
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = shl i32 %i.ci, 3
  %i.ck = and i32 %i.cj, 8
  %spec.select46.i.i.i.i19 = or disjoint i32 %i.ck, %i.cg ; 2 uses
  %.not42.i.i.i.i20 = icmp samesign ult i32 %spec.select46.i.i.i.i19, %spec.select.i.i.i.i18
  br i1 %.not42.i.i.i.i20, label %get_reg_offset.exit.i.i22, label %get_reg_offset.exit.thread.i.i21

get_reg_offset.exit.thread.i.i21:                 ; preds = %bb.s
  %i.cl = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 516, i32 2323, i64 16) #10, !srcloc !15
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.cl) #9
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !16
  br label %get_addr_ref_32.exit

get_reg_offset.exit.i.i22:                        ; preds = %bb.s
  %i.cm = zext nneg i32 %spec.select46.i.i.i.i19 to i64
  %i.cn = getelementptr [4 x i8], ptr @pt_regoff, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4            ; 2 uses
  store i32 %i.co, ptr %i.f, align 4
  %i.cp = load i8, ptr %i.m, align 1
  %i.cq = zext nneg i32 %i.co to i64
  %i.cr = ptrtoint ptr %1 to i64
  %i.cs = add i64 %i.cq, %i.cr
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = load i64, ptr %i.ct, align 8            ; 3 uses
  switch i8 %i.cp, label %get_eff_addr_reg.exit.thread.sink.split.i [
    i8 2, label %regs_get_register.exit.i.i23
    i8 4, label %regs_get_register.exit25.i.i
  ]

regs_get_register.exit.i.i23:                     ; preds = %get_reg_offset.exit.i.i22
  %i.cv = and i64 %i.cu, 65535
  br label %get_eff_addr_reg.exit.thread.sink.split.i

regs_get_register.exit25.i.i:                     ; preds = %get_reg_offset.exit.i.i22
  %i.cw = and i64 %i.cu, 4294967295
  br label %get_eff_addr_reg.exit.thread.sink.split.i

bb.t:                                             ; preds = %bb.p
  %i.cx = getelementptr i8, ptr %0, i64 45
  %i.cy = load i8, ptr %i.cx, align 1
  %.not23.i = icmp eq i8 %i.cy, 0
  br i1 %.not23.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = call fastcc i32 @get_eff_addr_sib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #12, !srcloc !24
  %.not25.i = icmp eq i32 %i.cz, 0
  br i1 %.not25.i, label %get_eff_addr_reg.exit.thread.i, label %get_addr_ref_32.exit

bb.v:                                             ; preds = %bb.t
  %i.da = call fastcc i32 @get_eff_addr_modrm(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #12, !srcloc !25
  %.not24.i = icmp eq i32 %i.da, 0
  br i1 %.not24.i, label %get_eff_addr_reg.exit.thread.i, label %get_addr_ref_32.exit

get_eff_addr_reg.exit.thread.sink.split.i:        ; preds = %regs_get_register.exit25.i.i, %regs_get_register.exit.i.i23, %get_reg_offset.exit.i.i22
  %.sink.i = phi i64 [ %i.cv, %regs_get_register.exit.i.i23 ], [ %i.cw, %regs_get_register.exit25.i.i ], [ %i.cu, %get_reg_offset.exit.i.i22 ]
  store i64 %.sink.i, ptr %i.g, align 8
  br label %get_eff_addr_reg.exit.thread.i

get_eff_addr_reg.exit.thread.i:                   ; preds = %get_eff_addr_reg.exit.thread.sink.split.i, %bb.v, %bb.u
  store i64 0, ptr %i.d, align 8, !annotation !22
  store i64 0, ptr %i.e, align 8, !annotation !22
  %.0.in.i = load i64, ptr %i.g, align 8
  %i.db = load i32, ptr %i.f, align 4
  %i.dc = call fastcc i32 @get_seg_base_limit(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.db, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #12, !srcloc !26
  %.not27.i = icmp eq i32 %i.dc, 0
  br i1 %.not27.i, label %bb.w, label %get_addr_ref_32.exit

bb.w:                                             ; preds = %get_eff_addr_reg.exit.thread.i
  %i.dd = getelementptr i8, ptr %1, i64 136
  %.val.i = load i16, ptr %i.dd, align 8          ; 2 uses
  %i.de = and i16 %.val.i, 3
  %.not1.i.i = icmp ne i16 %i.de, 0
  %i.df = icmp ne i16 %.val.i, 51
  %spec.select.i.not32.i = and i1 %i.df, %.not1.i.i
  %.pre.i = and i64 %.0.in.i, 4294967295          ; 2 uses
  %i.dg = load i64, ptr %i.e, align 8
  %i.dh = icmp ugt i64 %.pre.i, %i.dg
  %or.cond.i = select i1 %spec.select.i.not32.i, i1 %i.dh, i1 false
  br i1 %or.cond.i, label %get_addr_ref_32.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.w
  %i.di = load i64, ptr %i.d, align 8
  %i.dj = add i64 %i.di, %.pre.i
  br label %get_addr_ref_32.exit

get_addr_ref_32.exit:                             ; preds = %bb.q, %bb.r, %get_reg_offset.exit.thread.i.i21, %bb.u, %bb.v, %get_eff_addr_reg.exit.thread.i, %bb.w, %._crit_edge.i
  %.022.i = phi i64 [ -1, %get_reg_offset.exit.thread.i.i21 ], [ -1, %bb.w ], [ -1, %get_eff_addr_reg.exit.thread.i ], [ -1, %bb.v ], [ -1, %bb.u ], [ %i.dj, %._crit_edge.i ], [ -1, %bb.q ], [ -1, %bb.r ]
  %i.dk = inttoptr i64 %.022.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %bb.af

bb.x:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 0, ptr %i.b, align 4, !annotation !22
  store i64 0, ptr %i.c, align 8, !annotation !22
  %i.dl = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8
  %i.dn = and i32 %i.dm, 192
  %i.do = icmp eq i32 %i.dn, 192
  br i1 %i.do, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.dp = tail call i32 @insn_get_modrm(ptr noundef nonnull %0) #9
  %.not.i.i28 = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i28, label %bb.z, label %get_addr_ref_64.exit

bb.z:                                             ; preds = %bb.y
  %i.dq = load i32, ptr %i.dl, align 8            ; 2 uses
  %i.dr = and i32 %i.dq, 192
  %.not22.i.i29 = icmp eq i32 %i.dr, 192
  br i1 %.not22.i.i29, label %bb.aa, label %get_addr_ref_64.exit

bb.aa:                                            ; preds = %bb.z
  %i.ds = getelementptr i8, ptr %0, i64 83
  %i.dt = load i8, ptr %i.ds, align 1
  %.not.i.i.i.i30 = icmp eq i8 %i.dt, 0
  %spec.select.i.i.i.i31 = select i1 %.not.i.i.i.i30, i32 8, i32 16
  %i.du = and i32 %i.dq, 7
  %i.dv = getelementptr i8, ptr %0, i64 8
  %i.dw = load i32, ptr %i.dv, align 8
  %i.dx = shl i32 %i.dw, 3
  %i.dy = and i32 %i.dx, 8
  %spec.select46.i.i.i.i32 = or disjoint i32 %i.dy, %i.du ; 2 uses
  %.not42.i.i.i.i33 = icmp samesign ult i32 %spec.select46.i.i.i.i32, %spec.select.i.i.i.i31
  br i1 %.not42.i.i.i.i33, label %get_reg_offset.exit.i.i35, label %get_reg_offset.exit.thread.i.i34

get_reg_offset.exit.thread.i.i34:                 ; preds = %bb.aa
  %i.dz = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 516, i32 2323, i64 16) #10, !srcloc !15
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.dz) #9
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !16
  br label %get_addr_ref_64.exit

get_reg_offset.exit.i.i35:                        ; preds = %bb.aa
  %i.ea = zext nneg i32 %spec.select46.i.i.i.i32 to i64
  %i.eb = getelementptr [4 x i8], ptr @pt_regoff, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4            ; 2 uses
  store i32 %i.ec, ptr %i.b, align 4
  %i.ed = load i8, ptr %i.m, align 1
  %i.ee = zext nneg i32 %i.ec to i64
  %i.ef = ptrtoint ptr %1 to i64
  %i.eg = add i64 %i.ee, %i.ef
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = load i64, ptr %i.eh, align 8            ; 3 uses
  switch i8 %i.ed, label %get_eff_addr_reg.exit.thread.sink.split.i37 [
    i8 2, label %regs_get_register.exit.i.i39
    i8 4, label %regs_get_register.exit25.i.i36
  ]

regs_get_register.exit.i.i39:                     ; preds = %get_reg_offset.exit.i.i35
  %i.ej = and i64 %i.ei, 65535
  br label %get_eff_addr_reg.exit.thread.sink.split.i37

regs_get_register.exit25.i.i36:                   ; preds = %get_reg_offset.exit.i.i35
  %i.ek = and i64 %i.ei, 4294967295
  br label %get_eff_addr_reg.exit.thread.sink.split.i37

bb.ab:                                            ; preds = %bb.x
  %i.el = getelementptr i8, ptr %0, i64 45
  %i.em = load i8, ptr %i.el, align 1
  %.not15.i26 = icmp eq i8 %i.em, 0
  br i1 %.not15.i26, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.en = call fastcc i32 @get_eff_addr_sib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12, !srcloc !27
  %.not17.i = icmp eq i32 %i.en, 0
  br i1 %.not17.i, label %get_eff_addr_reg.exit.thread.i27, label %get_addr_ref_64.exit

bb.ad:                                            ; preds = %bb.ab
  %i.eo = call fastcc i32 @get_eff_addr_modrm(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12, !srcloc !28
  %.not16.i = icmp eq i32 %i.eo, 0
  br i1 %.not16.i, label %get_eff_addr_reg.exit.thread.i27, label %get_addr_ref_64.exit

get_eff_addr_reg.exit.thread.sink.split.i37:      ; preds = %regs_get_register.exit25.i.i36, %regs_get_register.exit.i.i39, %get_reg_offset.exit.i.i35
  %.sink.i38 = phi i64 [ %i.ej, %regs_get_register.exit.i.i39 ], [ %i.ek, %regs_get_register.exit25.i.i36 ], [ %i.ei, %get_reg_offset.exit.i.i35 ]
  store i64 %.sink.i38, ptr %i.c, align 8
  br label %get_eff_addr_reg.exit.thread.i27

get_eff_addr_reg.exit.thread.i27:                 ; preds = %get_eff_addr_reg.exit.thread.sink.split.i37, %bb.ad, %bb.ac
  store i64 0, ptr %i.a, align 8, !annotation !22
  %i.ep = load i32, ptr %i.b, align 4
  %i.eq = call fastcc i32 @get_seg_base_limit(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.ep, ptr noundef nonnull %i.a, ptr noundef null) #12, !srcloc !29
  %.not19.i = icmp eq i32 %i.eq, 0
  br i1 %.not19.i, label %bb.ae, label %get_addr_ref_64.exit

bb.ae:                                            ; preds = %get_eff_addr_reg.exit.thread.i27
  %i.er = load i64, ptr %i.c, align 8
  %i.es = load i64, ptr %i.a, align 8
  %i.et = add i64 %i.es, %i.er
  br label %get_addr_ref_64.exit

get_addr_ref_64.exit:                             ; preds = %bb.y, %bb.z, %get_reg_offset.exit.thread.i.i34, %bb.ac, %bb.ad, %get_eff_addr_reg.exit.thread.i27, %bb.ae
  %.0.i25 = phi i64 [ -1, %get_reg_offset.exit.thread.i.i34 ], [ -1, %bb.ad ], [ -1, %get_eff_addr_reg.exit.thread.i27 ], [ %i.et, %bb.ae ], [ -1, %bb.ac ], [ -1, %bb.y ], [ -1, %bb.z ]
  %i.eu = inttoptr i64 %.0.i25 to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.af

bb.af:                                            ; preds = %bb.c, %bb.b, %bb.a, %get_addr_ref_64.exit, %get_addr_ref_32.exit, %get_addr_ref_16.exit
  %.0 = phi ptr [ inttoptr (i64 -1 to ptr), %bb.a ], [ inttoptr (i64 -1 to ptr), %bb.b ], [ %i.bw, %get_addr_ref_16.exit ], [ %i.dk, %get_addr_ref_32.exit ], [ %i.eu, %get_addr_ref_64.exit ], [ inttoptr (i64 -1 to ptr), %bb.c ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @insn_get_opcode(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @insn_get_effective_ip(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136
  %.val = load i16, ptr %i.a, align 8
  %i.b = icmp eq i16 %.val, 51
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @insn_get_seg_base(ptr noundef %0, i32 noundef 2) #12 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.b ]
  %i.e = getelementptr i8, ptr %0, i64 128
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, %.0
  store i64 %i.g, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.06 = phi i32 [ 0, %bb.c ], [ -22, %bb.b ]
  ret i32 %.06
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @insn_fetch_from_user(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136
  %.val.i = load i16, ptr %i.a, align 8
  %i.b = icmp eq i16 %.val.i, 51
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @insn_get_seg_base(ptr noundef readonly %0, i32 noundef 2) #12 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %insn_get_effective_ip.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i3 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.b ]
  %i.e = getelementptr i8, ptr %0, i64 128
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, %.0.i3
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call i64 @_copy_from_user(ptr noundef %1, ptr noundef %i.h, i64 noundef 15) #9
  %i.j = trunc i64 %i.i to i32
  %i.k = sub i32 15, %i.j
  br label %insn_get_effective_ip.exit

insn_get_effective_ip.exit:                       ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ %i.k, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @insn_fetch_from_user_inatomic(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136
  %.val.i = load i16, ptr %i.a, align 8
  %i.b = icmp eq i16 %.val.i, 51
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @insn_get_seg_base(ptr noundef readonly %0, i32 noundef 2) #12 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %insn_get_effective_ip.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ 0, %bb.a ], [ %i.c, %bb.b ]
  %i.e = getelementptr i8, ptr %0, i64 128
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, %.0.i
  %i.h = inttoptr i64 %i.g to ptr
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09stac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !30
  %i.i = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.j = tail call { i64, ptr, ptr, i64 } asm sideeffect "1:\0A\09# ALT: oldinstr\0A771:\0A\09rep movsb\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (((1 << 0) << 16) $| ((18*32+ 4)))\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09call rep_movs_alternative\0A775:\0A.popsection\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 3 \0A .popsection\0A", "={cx},={di},={si},={rsp},0,1,2,{rsp},~{memory},~{rax},~{dirflag},~{fpsr},~{flags}"(i64 15, ptr %1, ptr %i.h, i64 %i.i) #10, !srcloc !31 ; 2 uses
  %i.k = extractvalue { i64, ptr, ptr, i64 } %i.j, 0
  %i.l = extractvalue { i64, ptr, ptr, i64 } %i.j, 3
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.l)
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !32
  %i.m = trunc i64 %i.k to i32
  %i.n = sub i32 15, %i.m
  br label %insn_get_effective_ip.exit

insn_get_effective_ip.exit:                       ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.n, %bb.c ], [ -22, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @insn_decode_from_regs(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 136
  %.val = load i16, ptr %i.a, align 8
  %i.b = icmp eq i16 %.val, 51
  %i.c = zext i1 %i.b to i32
  tail call void @insn_init(ptr noundef %0, ptr noundef %2, i32 noundef %3, i32 noundef %i.c) #9
  %i.d = tail call i32 @insn_get_code_seg_params(ptr noundef %1) #12 ; 2 uses
  %i.e = icmp eq i32 %i.d, -22
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i32 %i.d to i8                     ; 2 uses
  %i.g = lshr i8 %i.f, 4
  %i.h = getelementptr i8, ptr %0, i64 81
  store i8 %i.g, ptr %i.h, align 1
  %i.i = and i8 %i.f, 15
  %i.j = getelementptr i8, ptr %0, i64 80
  store i8 %i.i, ptr %i.j, align 8
  %i.k = tail call i32 @insn_get_length(ptr noundef %0) #9
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 82
  %i.m = load i8, ptr %i.l, align 2
  %i.n = zext i8 %i.m to i32
  %i.o = icmp sge i32 %3, %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.o, %bb.c ]
  ret i1 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @insn_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @insn_get_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 7) i32 @insn_decode_mmio(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 4)) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  store i32 0, ptr %1, align 4
  %i.a = tail call i32 @insn_get_opcode(ptr noundef %0) #9
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load i8, ptr %i.b, align 8
  switch i8 %i.c, label %bb.n [
    i8 -120, label %.sink.split
    i8 -119, label %bb.c
    i8 -58, label %.thread37
    i8 -57, label %bb.e
    i8 -118, label %.thread41
    i8 -117, label %bb.g
    i8 -92, label %.thread45
    i8 -91, label %bb.i
    i8 15, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %.pr = load i32, ptr %1, align 4
  %.not33 = icmp eq i32 %.pr, 0
  br i1 %.not33, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 80
  %i.e = load i8, ptr %i.d, align 8
  br label %.sink.split

.thread37:                                        ; preds = %bb.b
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %.pr36 = load i32, ptr %1, align 4
  %.not32 = icmp eq i32 %.pr36, 0
  br i1 %.not32, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr i8, ptr %0, i64 80
  %i.g = load i8, ptr %i.f, align 8
  br label %.sink.split

.thread41:                                        ; preds = %bb.b
  br label %.sink.split

bb.g:                                             ; preds = %bb.b
  %.pr40 = load i32, ptr %1, align 4
  %.not31 = icmp eq i32 %.pr40, 0
  br i1 %.not31, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr i8, ptr %0, i64 80
  %i.i = load i8, ptr %i.h, align 8
  br label %.sink.split

.thread45:                                        ; preds = %bb.b
  br label %.sink.split

bb.i:                                             ; preds = %bb.b
  %.pr44 = load i32, ptr %1, align 4
  %.not30 = icmp eq i32 %.pr44, 0
  br i1 %.not30, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.j = getelementptr i8, ptr %0, i64 80
  %i.k = load i8, ptr %i.j, align 8
  br label %.sink.split

bb.k:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 25
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %bb.n [
    i8 -74, label %.sink.split
    i8 -73, label %bb.l
    i8 -66, label %.thread53
    i8 -65, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %.pr48 = load i32, ptr %1, align 4
  %.not29 = icmp eq i32 %.pr48, 0
  br i1 %.not29, label %.sink.split, label %bb.n

.thread53:                                        ; preds = %bb.k
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  %.pr52 = load i32, ptr %1, align 4
  %.not28 = icmp eq i32 %.pr52, 0
  br i1 %.not28, label %.sink.split, label %bb.n

.sink.split:                                      ; preds = %bb.m, %bb.l, %bb.k, %bb.b, %bb.j, %bb.h, %bb.f, %bb.d, %.thread37, %.thread41, %.thread45, %.thread53
  %.sink.shrunk = phi i8 [ 1, %.thread53 ], [ 1, %bb.b ], [ 1, %.thread45 ], [ 1, %.thread41 ], [ 1, %.thread37 ], [ 2, %bb.l ], [ %i.e, %bb.d ], [ %i.g, %bb.f ], [ %i.i, %bb.h ], [ %i.k, %bb.j ], [ 1, %bb.k ], [ 2, %bb.m ]
  %.027.ph = phi i32 [ 5, %.thread53 ], [ 1, %bb.b ], [ 6, %.thread45 ], [ 3, %.thread41 ], [ 2, %.thread37 ], [ 4, %bb.l ], [ 1, %bb.d ], [ 2, %bb.f ], [ 3, %bb.h ], [ 6, %bb.j ], [ 4, %bb.k ], [ 5, %bb.m ]
  %.sink = zext i8 %.sink.shrunk to i32
  store i32 %.sink, ptr %1, align 4
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.b, %bb.k, %bb.c, %bb.e, %bb.g, %bb.i, %bb.l, %bb.m, %bb.a
  %.027 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 4, %bb.l ], [ 1, %bb.c ], [ 2, %bb.e ], [ 3, %bb.g ], [ 0, %bb.k ], [ 6, %bb.i ], [ 5, %bb.m ], [ %.027.ph, %.sink.split ]
  ret i32 %.027
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define dso_local zeroext i1 @insn_is_nop(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 13
  %i.b = load i8, ptr %i.a, align 1               ; 3 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr i8, ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 7
  %i.f = load i8, ptr %i.e, align 1               ; 5 uses
  %i.g = lshr i8 %i.f, 2                          ; 2 uses
  %.lobit = and i8 %i.g, 1                        ; 2 uses
  %i.h = lshr i8 %i.f, 1                          ; 2 uses
  %.lobit103 = and i8 %i.h, 1                     ; 2 uses
  %i.i = and i8 %i.f, 1                           ; 2 uses
  %.not104 = icmp eq i8 %i.b, 1
  br i1 %.not104, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i8 %i.f, 4
  %.lobit107 = and i8 %i.j, 1
  %i.k = and i8 %i.g, 16
  %i.l = zext nneg i8 %.lobit107 to i32
  %i.m = and i8 %i.h, 16
  %i.n = icmp sgt i8 %i.f, -1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %0, i64 21
  %i.p = load i8, ptr %i.o, align 1
  %.not102 = icmp eq i8 %i.p, 0
  br i1 %.not102, label %bb.e, label %.critedge121

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %.094 = phi i8 [ %i.i, %bb.c ], [ %i.i, %bb.b ], [ 0, %bb.d ] ; 3 uses
  %.093 = phi i8 [ %.lobit103, %bb.c ], [ %.lobit103, %bb.b ], [ 0, %bb.d ]
  %.092 = phi i8 [ %.lobit, %bb.c ], [ %.lobit, %bb.b ], [ 0, %bb.d ]
  %.091 = phi i32 [ %i.l, %bb.c ], [ 0, %bb.b ], [ 0, %bb.d ] ; 3 uses
  %.090 = phi i8 [ %i.m, %bb.c ], [ 0, %bb.b ], [ 0, %bb.d ]
end_hunk_0
begin_hunk_1_@insn_is_nop:bb.a
    i8 62, label %.preheader.2
  ]

.preheader.2:                                     ; preds = %.preheader.1
  %i.cd = getelementptr i8, ptr %0, i64 2
  %i.ce = load i8, ptr %i.cd, align 2
  switch i8 %i.ce, label %.critedge121 [
    i8 0, label %.critedge8
    i8 62, label %.preheader.3
  ]

.preheader.3:                                     ; preds = %.preheader.2
  %i.cf = getelementptr i8, ptr %0, i64 3
  %i.cg = load i8, ptr %i.cf, align 1
  switch i8 %i.cg, label %.critedge121 [
    i8 0, label %.critedge8
    i8 62, label %.critedge8
  ]

.critedge8:                                       ; preds = %.preheader.3, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %i.ch = zext nneg i8 %.185 to i32
  %i.ci = icmp eq i32 %.086, %i.ch
  br label %.critedge121

bb.w:                                             ; preds = %bb.p
  %i.cj = icmp eq i32 %.091, 0
  %i.ck = or i8 %.080.lcssa, %.094
  %i.cl = icmp eq i8 %i.ck, 0
  %spec.select122 = select i1 %i.cl, i1 %i.cj, i1 false
  br label %.critedge121

bb.x:                                             ; preds = %bb.p, %bb.p
  %i.cm = getelementptr i8, ptr %0, i64 56
  %i.cn = load i32, ptr %i.cm, align 8
  %i.co = icmp eq i32 %i.cn, 0
  br label %.critedge121

bb.y:                                             ; preds = %.thread, %bb.p
  %i.cp = getelementptr i8, ptr %0, i64 25
  %i.cq = load i8, ptr %i.cp, align 1
  %cond1 = icmp eq i8 %i.cq, 31
  %i.cr = icmp eq i32 %.086, 0
  %spec.select = select i1 %cond1, i1 %i.cr, i1 false
  br label %.critedge121

.critedge121:                                     ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %bb.w, %bb.y, %bb.p, %bb.v, %bb.u, %bb.t, %bb.t, %bb.r, %bb.q, %bb.d, %bb.x, %.critedge8, %bb.s
  %.196 = phi i1 [ %i.co, %bb.x ], [ false, %bb.t ], [ %spec.select, %bb.y ], [ false, %bb.p ], [ false, %bb.d ], [ false, %bb.q ], [ %i.bq, %bb.s ], [ false, %bb.r ], [ false, %bb.t ], [ false, %bb.u ], [ false, %bb.v ], [ %i.ci, %.critedge8 ], [ %spec.select122, %bb.w ], [ false, %.preheader.3 ], [ false, %.preheader.2 ], [ false, %.preheader.1 ], [ false, %.preheader.preheader ]
  ret i1 %.196
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @nmi_uaccess_okay() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @insn_get_displacement(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -22, 1) i32 @get_seg_base_limit(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.desc_ptr, align 2           ; 7 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %resolve_seg_reg.exit.thread29, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %is_string_insn.exit.thread.i.i [
    i32 128, label %bb.c
    i32 112, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr i8, ptr %1, i64 136
  %.val23.i = load i16, ptr %i.a, align 8         ; 2 uses
  %i.b = and i16 %.val23.i, 3
  %.not1.i.i = icmp eq i16 %i.b, 0
  %i.c = icmp eq i16 %.val23.i, 51
  %spec.select.i.i = or i1 %i.c, %.not1.i.i
  %..i = select i1 %spec.select.i.i, i32 0, i32 2
  br label %resolve_seg_reg.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 29
  %i.e = load i8, ptr %i.d, align 1
  %.not.i.i.i = icmp eq i8 %i.e, 1
  br i1 %.not.i.i.i, label %bb.e, label %is_string_insn.exit.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load i8, ptr %i.f, align 8               ; 2 uses
  switch i8 %i.g, label %is_string_insn.exit.thread.i.i [
    i8 -86, label %check_seg_overrides.exit.i
    i8 -85, label %check_seg_overrides.exit.i
    i8 -84, label %check_seg_overrides.exit.i
    i8 -83, label %check_seg_overrides.exit.i
    i8 -82, label %check_seg_overrides.exit.i
    i8 -81, label %check_seg_overrides.exit.i
    i8 -92, label %check_seg_overrides.exit.i
    i8 -91, label %check_seg_overrides.exit.i
    i8 -90, label %check_seg_overrides.exit.i
    i8 -89, label %check_seg_overrides.exit.i
    i8 108, label %check_seg_overrides.exit.i
    i8 109, label %check_seg_overrides.exit.i
    i8 110, label %check_seg_overrides.exit.i
    i8 111, label %check_seg_overrides.exit.i
  ]

check_seg_overrides.exit.i:                       ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.h = getelementptr i8, ptr %1, i64 136
  %.val25.i = load i16, ptr %i.h, align 8         ; 2 uses
  %i.i = and i16 %.val25.i, 3
  %.not1.i.i23 = icmp eq i16 %i.i, 0
  %i.j = icmp eq i16 %.val25.i, 51
  %spec.select.i.i24 = or i1 %i.j, %.not1.i.i23
  br i1 %spec.select.i.i24, label %resolve_seg_reg.exit.thread, label %bb.f

bb.f:                                             ; preds = %check_seg_overrides.exit.i
  switch i8 %i.g, label %is_string_insn.exit.thread.i [
    i8 -86, label %resolve_seg_reg.exit.thread
    i8 -85, label %resolve_seg_reg.exit.thread
    i8 -84, label %resolve_seg_reg.exit.thread
    i8 -83, label %resolve_seg_reg.exit.thread
    i8 -82, label %resolve_seg_reg.exit.thread
    i8 -81, label %resolve_seg_reg.exit.thread
    i8 -92, label %resolve_seg_reg.exit.thread
    i8 -91, label %resolve_seg_reg.exit.thread
    i8 -90, label %resolve_seg_reg.exit.thread
    i8 -89, label %resolve_seg_reg.exit.thread
    i8 108, label %resolve_seg_reg.exit.thread
    i8 109, label %resolve_seg_reg.exit.thread
    i8 110, label %resolve_seg_reg.exit.thread
    i8 111, label %resolve_seg_reg.exit.thread
  ]

is_string_insn.exit.thread.i:                     ; preds = %bb.f
  br label %resolve_seg_reg.exit.thread

is_string_insn.exit.thread.i.i:                   ; preds = %bb.e, %bb.d, %bb.b
  %i.k = tail call i32 @insn_get_prefixes(ptr noundef nonnull %0) #9 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %is_string_insn.exit.thread.i.i
  %.020.i.i = phi i32 [ 0, %is_string_insn.exit.thread.i.i ], [ %i.v, %bb.o ] ; 2 uses
  %.01519.i.i = phi i32 [ 0, %is_string_insn.exit.thread.i.i ], [ %.116.i.i, %bb.o ] ; 8 uses
  %i.l = zext nneg i32 %.020.i.i to i64
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %get_seg_reg_override_idx.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @inat_get_opcode_attribute(i8 noundef zeroext %i.n) #9
  switch i32 %i.o, label %bb.o [
    i32 5, label %bb.i
    i32 10, label %bb.j
    i32 6, label %bb.k
    i32 7, label %bb.l
    i32 8, label %bb.m
    i32 9, label %bb.n
  ]

bb.i:                                             ; preds = %bb.h
  %i.p = add i32 %.01519.i.i, 1
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.q = add i32 %.01519.i.i, 1
  br label %get_seg_reg_override_idx.exit.i

bb.k:                                             ; preds = %bb.h
  %i.r = add i32 %.01519.i.i, 1
  br label %get_seg_reg_override_idx.exit.i

bb.l:                                             ; preds = %bb.h
  %i.s = add i32 %.01519.i.i, 1
  br label %get_seg_reg_override_idx.exit.i

bb.m:                                             ; preds = %bb.h
  %i.t = add i32 %.01519.i.i, 1
  br label %get_seg_reg_override_idx.exit.i

bb.n:                                             ; preds = %bb.h
  %i.u = add i32 %.01519.i.i, 1
  br label %get_seg_reg_override_idx.exit.i

bb.o:                                             ; preds = %bb.i, %bb.h
  %.116.i.i = phi i32 [ %.01519.i.i, %bb.h ], [ %i.p, %bb.i ] ; 2 uses
  %.1.i.i = phi i32 [ %.020.i.i, %bb.h ], [ 2, %bb.i ] ; 2 uses
  %i.v = add nuw nsw i32 %.1.i.i, 1
  %i.w = icmp samesign ult i32 %.1.i.i, 3
  br i1 %i.w, label %bb.g, label %get_seg_reg_override_idx.exit.i, !llvm.loop !33

get_seg_reg_override_idx.exit.i:                  ; preds = %bb.o, %bb.g, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.015.lcssa.i.i = phi i32 [ %i.r, %bb.k ], [ %i.q, %bb.j ], [ %i.u, %bb.n ], [ %i.t, %bb.m ], [ %i.s, %bb.l ], [ %.01519.i.i, %bb.g ], [ %.116.i.i, %bb.o ]
  %i.x = icmp sgt i32 %.015.lcssa.i.i, 1
  br i1 %i.x, label %resolve_seg_reg.exit.thread29, label %resolve_seg_reg.exit

resolve_seg_reg.exit:                             ; preds = %get_seg_reg_override_idx.exit.i
  %i.y = getelementptr i8, ptr %1, i64 136
  %.val24.i = load i16, ptr %i.y, align 8
  %i.z = tail call fastcc i32 @resolve_default_seg(ptr noundef nonnull %0, i16 %.val24.i, i32 noundef %2) #12 ; 3 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %resolve_seg_reg.exit.thread29, label %resolve_seg_reg.exit.thread

resolve_seg_reg.exit.thread:                      ; preds = %is_string_insn.exit.thread.i, %check_seg_overrides.exit.i, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.c, %resolve_seg_reg.exit
  %.020.i28 = phi i32 [ %i.z, %resolve_seg_reg.exit ], [ 5, %bb.f ], [ 5, %bb.f ], [ 5, %bb.f ], [ 5, %bb.f ], [ 5, %bb.f ], [ 5, %bb.f ], [ 5, %bb.f ], [ 5, %bb.f ], [ 4, %is_string_insn.exit.thread.i ], [ 5, %bb.f ], [ 5, %bb.f ], [ 5, %bb.f ], [ 5, %bb.f ], [ 0, %check_seg_overrides.exit.i ], [ 5, %bb.f ], [ 5, %bb.f ], [ %..i, %bb.c ] ; 2 uses
  %i.ab = tail call i64 @insn_get_seg_base(ptr noundef nonnull %1, i32 noundef %.020.i28) #12 ; 2 uses
  store i64 %i.ab, ptr %3, align 8
  %i.ac = icmp eq i64 %i.ab, -1
  br i1 %i.ac, label %resolve_seg_reg.exit.thread29, label %bb.p

bb.p:                                             ; preds = %resolve_seg_reg.exit.thread
  %.not18 = icmp eq ptr %4, null
  br i1 %.not18, label %resolve_seg_reg.exit.thread29, label %bb.q

bb.q:                                             ; preds = %bb.p
  switch i32 %.020.i28, label %get_seg_limit.exit.thread [
    i32 0, label %.thread.i
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  %i.ad = getelementptr i8, ptr %1, i64 136
  %i.ae = load i16, ptr %i.ad, align 8
  br label %get_segment_selector.exit.i

bb.s:                                             ; preds = %bb.q
  %i.af = getelementptr i8, ptr %1, i64 160
  %i.ag = load i16, ptr %i.af, align 8
  br label %get_segment_selector.exit.i

bb.t:                                             ; preds = %bb.q
  %i.ah = tail call i64 asm sideeffect "movl %ds,${0:k}", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !11
  %i.ai = trunc i64 %i.ah to i16
  br label %get_segment_selector.exit.i

bb.u:                                             ; preds = %bb.q
  %i.aj = tail call i64 asm sideeffect "movl %es,${0:k}", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !12
  %i.ak = trunc i64 %i.aj to i16
  br label %get_segment_selector.exit.i

get_segment_selector.exit.i:                      ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %.0.i.i = phi i16 [ %i.ak, %bb.u ], [ %i.ai, %bb.t ], [ %i.ae, %bb.r ], [ %i.ag, %bb.s ] ; 4 uses
  %i.al = icmp slt i16 %.0.i.i, 0
  br i1 %i.al, label %get_seg_limit.exit.thread, label %bb.v

bb.v:                                             ; preds = %get_segment_selector.exit.i
  %i.am = getelementptr i8, ptr %1, i64 136
  %.val.i = load i16, ptr %i.am, align 8          ; 2 uses
  %i.an = and i16 %.val.i, 3
  %.not1.i.i20 = icmp eq i16 %i.an, 0
  %i.ao = icmp eq i16 %.val.i, 51
  %spec.select.i.i21 = or i1 %i.ao, %.not1.i.i20
  br i1 %spec.select.i.i21, label %get_seg_limit.exit.thread35, label %bb.w

.thread.i:                                        ; preds = %bb.q
  %i.ap = getelementptr i8, ptr %1, i64 136
  %.val26.i = load i16, ptr %i.ap, align 8        ; 2 uses
  %i.aq = and i16 %.val26.i, 3
  %.not1.i27.i = icmp eq i16 %i.aq, 0
  %i.ar = icmp eq i16 %.val26.i, 51
  %spec.select.i28.i = or i1 %i.ar, %.not1.i27.i
  %spec.select.i = sext i1 %spec.select.i28.i to i64
  br label %get_seg_limit.exit

bb.w:                                             ; preds = %bb.v
  %.not.i = icmp eq i16 %.0.i.i, 0
  br i1 %.not.i, label %get_seg_limit.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %5, i8 0, i64 10, i1 false)
  %i.as = zext nneg i16 %.0.i.i to i32            ; 2 uses
  %i.at = and i32 %i.as, 4
  %.not.i.i22 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i22, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.au = lshr i16 %.0.i.i, 3                     ; 2 uses
  %i.av = tail call zeroext i1 @nmi_uaccess_okay() #9
  br i1 %i.av, label %bb.z, label %get_seg_limit.exit.thread.sink.split

bb.z:                                             ; preds = %bb.y
  %i.aw = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #11, !srcloc !13
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr i8, ptr %i.ax, i64 1400   ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 1496
  tail call void @mutex_lock(ptr noundef %i.ba) #9
  %i.bb = load ptr, ptr %i.ay, align 8            ; 3 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 1480
  %i.bd = load ptr, ptr %i.bc, align 8            ; 3 uses
  %.not16.i.i = icmp eq ptr %i.bd, null
  br i1 %.not16.i.i, label %get_desc.exit.thread43.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = zext nneg i16 %i.au to i32
  %i.bf = getelementptr i8, ptr %i.bd, i64 8
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = icmp ugt i32 %i.bg, %i.be
  br i1 %i.bh, label %get_desc.exit.i, label %get_desc.exit.thread43.i

bb.ab:                                            ; preds = %bb.x
  call void asm sideeffect "sgdt $0", "=*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%struct.desc_ptr) %5) #10, !srcloc !14
  %i.bi = and i32 %i.as, 32760                    ; 2 uses
  %i.bj = load i16, ptr %5, align 2
  %i.bk = zext i16 %i.bj to i32
  %i.bl = icmp samesign ugt i32 %i.bi, %i.bk
  br i1 %i.bl, label %get_seg_limit.exit.thread.sink.split, label %get_desc.exit.thread36.i

get_desc.exit.thread36.i:                         ; preds = %bb.ab
  %i.bm = zext nneg i32 %i.bi to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.bo = load i64, ptr %i.bn, align 2
  %i.bp = add i64 %i.bo, %i.bm
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load i64, ptr %i.bq, align 1
  br label %bb.ac

get_desc.exit.thread43.i:                         ; preds = %bb.aa, %bb.z
  %i.bs = getelementptr i8, ptr %i.bb, i64 1496
  tail call void @mutex_unlock(ptr noundef %i.bs) #9
  br label %get_seg_limit.exit.thread.sink.split

get_desc.exit.i:                                  ; preds = %bb.aa
  %i.bt = load ptr, ptr %i.bd, align 8
  %i.bu = zext nneg i16 %i.au to i64
  %i.bv = getelementptr [8 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 1
  %i.bx = getelementptr i8, ptr %i.bb, i64 1496
  tail call void @mutex_unlock(ptr noundef %i.bx) #9
  br label %bb.ac

bb.ac:                                            ; preds = %get_desc.exit.i, %get_desc.exit.thread36.i
  %.sroa.0.141.in.i = phi i64 [ %i.br, %get_desc.exit.thread36.i ], [ %i.bw, %get_desc.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %.sroa.618.140.in.i = lshr i64 %.sroa.0.141.in.i, 32
  %i.by = and i64 %.sroa.0.141.in.i, 65535
  %i.bz = and i64 %.sroa.618.140.in.i, 983040
  %i.ca = or disjoint i64 %i.bz, %i.by            ; 2 uses
  %i.cb = and i64 %.sroa.0.141.in.i, 36028797018963968
  %.not11.i = icmp eq i64 %i.cb, 0
  %i.cc = shl nuw nsw i64 %i.ca, 12
  %i.cd = or disjoint i64 %i.cc, 4095
  br i1 %.not11.i, label %get_seg_limit.exit, label %get_seg_limit.exit.thread35

get_seg_limit.exit.thread.sink.split:             ; preds = %bb.y, %bb.ab, %get_desc.exit.thread43.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %get_seg_limit.exit.thread

get_seg_limit.exit.thread:                        ; preds = %get_seg_limit.exit.thread.sink.split, %get_segment_selector.exit.i, %bb.w, %bb.q
  store i64 0, ptr %4, align 8
  br label %bb.ad

get_seg_limit.exit.thread35:                      ; preds = %bb.v, %bb.ac
  %.09.i.ph = phi i64 [ %i.cd, %bb.ac ], [ -1, %bb.v ]
  store i64 %.09.i.ph, ptr %4, align 8
  br label %resolve_seg_reg.exit.thread29

get_seg_limit.exit:                               ; preds = %bb.ac, %.thread.i
  %.09.i = phi i64 [ %spec.select.i, %.thread.i ], [ %i.ca, %bb.ac ]
  %.09.i.fr = freeze i64 %.09.i                   ; 2 uses
  store i64 %.09.i.fr, ptr %4, align 8
  %.not19 = icmp eq i64 %.09.i.fr, 0
  br i1 %.not19, label %bb.ad, label %resolve_seg_reg.exit.thread29

bb.ad:                                            ; preds = %get_seg_limit.exit.thread, %get_seg_limit.exit
  br label %resolve_seg_reg.exit.thread29

resolve_seg_reg.exit.thread29:                    ; preds = %get_seg_reg_override_idx.exit.i, %bb.ad, %get_seg_limit.exit, %get_seg_limit.exit.thread35, %bb.p, %resolve_seg_reg.exit.thread, %resolve_seg_reg.exit, %bb.a
  %.0 = phi i32 [ -22, %bb.a ], [ %i.z, %resolve_seg_reg.exit ], [ 0, %bb.p ], [ 0, %get_seg_limit.exit.thread35 ], [ -22, %resolve_seg_reg.exit.thread ], [ -22, %bb.ad ], [ 0, %get_seg_limit.exit ], [ -22, %get_seg_reg_override_idx.exit.i ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @insn_get_modrm(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal fastcc range(i32 -22, 6) i32 @resolve_default_seg(ptr nofree noundef nonnull readonly captures(none) %0, i16 %.136.val, i32 noundef %1) unnamed_addr #6 align 16 {
bb.a:
  %i.a = and i16 %.136.val, 3
  %.not1.i = icmp eq i16 %i.a, 0
  %i.b = icmp eq i16 %.136.val, 51
  %spec.select.i = or i1 %i.b, %.not1.i
  br i1 %spec.select.i, label %is_string_insn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.g [
    i32 80, label %bb.c
    i32 88, label %bb.c
    i32 96, label %bb.c
    i32 -33, label %is_string_insn.exit.thread
    i32 40, label %is_string_insn.exit.thread
    i32 104, label %is_string_insn.exit.thread
    i32 112, label %bb.d
    i32 32, label %is_string_insn.exit
    i32 152, label %is_string_insn.exit
    i32 128, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.c = getelementptr i8, ptr %0, i64 81
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %is_string_insn.exit, label %is_string_insn.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 29
  %i.g = load i8, ptr %i.f, align 1
  %.not.i = icmp eq i8 %i.g, 1
  br i1 %.not.i, label %bb.e, label %is_string_insn.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %0, i64 24
  %i.i = load i8, ptr %i.h, align 8
  switch i8 %i.i, label %is_string_insn.exit.thread [
    i8 -86, label %is_string_insn.exit
    i8 -85, label %is_string_insn.exit
    i8 -84, label %is_string_insn.exit
    i8 -83, label %is_string_insn.exit
    i8 -82, label %is_string_insn.exit
    i8 -81, label %is_string_insn.exit
    i8 -92, label %is_string_insn.exit
    i8 -91, label %is_string_insn.exit
    i8 -90, label %is_string_insn.exit
    i8 -89, label %is_string_insn.exit
    i8 108, label %is_string_insn.exit
    i8 109, label %is_string_insn.exit
    i8 110, label %is_string_insn.exit
    i8 111, label %is_string_insn.exit
  ]

is_string_insn.exit.thread:                       ; preds = %bb.b, %bb.b, %bb.b, %bb.c, %bb.d, %bb.e
  br label %is_string_insn.exit

bb.f:                                             ; preds = %bb.b
  br label %is_string_insn.exit

bb.g:                                             ; preds = %bb.b
  br label %is_string_insn.exit

is_string_insn.exit:                              ; preds = %is_string_insn.exit.thread, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.b, %bb.b, %bb.c, %bb.a, %bb.g, %bb.f
  %.0 = phi i32 [ 2, %bb.f ], [ -22, %bb.g ], [ 0, %bb.a ], [ 5, %bb.e ], [ 3, %bb.b ], [ -22, %bb.c ], [ 3, %bb.b ], [ 4, %is_string_insn.exit.thread ], [ 5, %bb.e ], [ 5, %bb.e ], [ 5, %bb.e ], [ 5, %bb.e ], [ 5, %bb.e ], [ 5, %bb.e ], [ 5, %bb.e ], [ 5, %bb.e ], [ 5, %bb.e ], [ 5, %bb.e ], [ 5, %bb.e ], [ 5, %bb.e ], [ 5, %bb.e ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @inat_get_opcode_attribute(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @get_eff_addr_sib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 81         ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  switch i8 %i.b, label %bb.q [
    i8 8, label %bb.b
    i8 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = tail call i32 @insn_get_modrm(ptr noundef nonnull %0) #9 ; 2 uses
  %.not48 = icmp eq i32 %i.c, 0
  br i1 %.not48, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 37
  %i.e = load i8, ptr %i.d, align 1
  %.not49 = icmp eq i8 %i.e, 0
  br i1 %.not49, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 192
  %i.i = icmp eq i32 %i.h, 192
  br i1 %i.i, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @insn_get_sib(ptr noundef nonnull %0) #9 ; 2 uses
  %.not50 = icmp eq i32 %i.j, 0
  br i1 %.not50, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 45
  %i.m = load i8, ptr %i.l, align 1
  %.not51 = icmp eq i8 %i.m, 0
  br i1 %.not51, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = tail call fastcc i32 @get_reg_offset(ptr noundef nonnull %0, i32 noundef 3) #12
  store i32 %i.n, ptr %2, align 4
  %i.o = tail call fastcc i32 @get_reg_offset(ptr noundef nonnull %0, i32 noundef 2) #12 ; 4 uses
  %i.p = load i32, ptr %2, align 4                ; 4 uses
  %i.q = icmp eq i32 %i.p, -33
  br i1 %i.q, label %regs_get_register.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = icmp slt i32 %i.p, 0
  br i1 %i.r, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = icmp samesign ugt i32 %i.p, 160
  br i1 %i.s, label %regs_get_register.exit, label %bb.j, !prof !35

bb.j:                                             ; preds = %bb.i
  %i.t = zext nneg i32 %i.p to i64
  %i.u = ptrtoint ptr %1 to i64
  %i.v = add i64 %i.t, %i.u
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load i64, ptr %i.w, align 8
  br label %regs_get_register.exit

regs_get_register.exit:                           ; preds = %bb.j, %bb.i, %bb.g
  %.040 = phi i64 [ 0, %bb.g ], [ %i.x, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.y = icmp eq i32 %i.o, -33
  br i1 %i.y, label %regs_get_register.exit53, label %bb.k

bb.k:                                             ; preds = %regs_get_register.exit
  %i.z = icmp slt i32 %i.o, 0
  br i1 %i.z, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = icmp samesign ugt i32 %i.o, 160
  br i1 %i.aa, label %regs_get_register.exit53, label %bb.m, !prof !35

bb.m:                                             ; preds = %bb.l
  %i.ab = zext nneg i32 %i.o to i64
  %i.ac = ptrtoint ptr %1 to i64
  %i.ad = add i64 %i.ab, %i.ac
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i64, ptr %i.ae, align 8
  br label %regs_get_register.exit53

regs_get_register.exit53:                         ; preds = %bb.m, %bb.l, %regs_get_register.exit
  %.041 = phi i64 [ 0, %regs_get_register.exit ], [ %i.af, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.ag = load i8, ptr %i.a, align 1
  %i.ah = icmp eq i8 %i.ag, 4
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %regs_get_register.exit53
  %i.ai = trunc i64 %.040 to i32
  %i.aj = trunc i64 %.041 to i32
  %i.ak = load i32, ptr %i.k, align 8
  %i.al = lshr i32 %i.ak, 6
  %i.am = and i32 %i.al, 3
  %i.an = shl i32 %i.aj, %i.am
  %i.ao = getelementptr i8, ptr %0, i64 48
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = add i32 %i.ap, %i.ai
  %i.ar = add i32 %i.aq, %i.an
  %i.as = zext i32 %i.ar to i64
  br label %bb.p

bb.o:                                             ; preds = %regs_get_register.exit53
  %i.at = load i32, ptr %i.k, align 8
  %i.au = lshr i32 %i.at, 6
  %i.av = and i32 %i.au, 3
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl i64 %.041, %i.aw
  %i.ay = add i64 %i.ax, %.040                    ; 2 uses
  store i64 %i.ay, ptr %3, align 8
  %i.az = getelementptr i8, ptr %0, i64 48
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = sext i32 %i.ba to i64
  %i.bc = add i64 %i.ay, %i.bb
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %storemerge = phi i64 [ %i.bc, %bb.o ], [ %i.as, %bb.n ]
  store i64 %storemerge, ptr %3, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.k, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.p
  %.0 = phi i32 [ %i.c, %bb.b ], [ -22, %bb.a ], [ -22, %bb.c ], [ -22, %bb.d ], [ 0, %bb.p ], [ -22, %bb.h ], [ -22, %bb.f ], [ %i.j, %bb.e ], [ -22, %bb.k ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @get_eff_addr_modrm(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 81         ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  switch i8 %i.b, label %bb.j [
    i8 8, label %bb.b
    i8 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = tail call i32 @insn_get_modrm(ptr noundef nonnull %0) #9 ; 2 uses
  %.not29 = icmp eq i32 %i.c, 0
  br i1 %.not29, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  %i.f = and i32 %i.e, 192
  %i.g = icmp eq i32 %i.f, 192
  br i1 %i.g, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %i.e, 199
  %or.cond.i.i = icmp eq i32 %i.h, 5
  br i1 %or.cond.i.i, label %get_reg_offset.exit.thread, label %bb.e

get_reg_offset.exit.thread:                       ; preds = %bb.d
  store i32 -33, ptr %2, align 4
  %i.i = getelementptr i8, ptr %1, i64 136
  %.val = load i16, ptr %i.i, align 8             ; 2 uses
  %i.j = and i16 %.val, 3
  %.not1.i = icmp eq i16 %i.j, 0
  %i.k = icmp eq i16 %.val, 51
  %spec.select.i = or i1 %i.k, %.not1.i
  br i1 %spec.select.i, label %bb.f, label %regs_get_register.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %0, i64 83
  %i.m = load i8, ptr %i.l, align 1
  %.not.i.i = icmp eq i8 %i.m, 0
  %spec.select.i.i = select i1 %.not.i.i, i32 8, i32 16
  %i.n = and i32 %i.e, 7
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = shl i32 %i.p, 3
  %i.r = and i32 %i.q, 8
  %spec.select46.i.i = or disjoint i32 %i.r, %i.n ; 2 uses
  %.not42.i.i = icmp samesign ult i32 %spec.select46.i.i, %spec.select.i.i
  br i1 %.not42.i.i, label %get_reg_offset.exit, label %.thread

.thread:                                          ; preds = %bb.e
  %i.s = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 516, i32 2323, i64 16) #10, !srcloc !15
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.s) #9
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !16
  store i32 -22, ptr %2, align 4
  br label %bb.j

get_reg_offset.exit:                              ; preds = %bb.e
  %i.t = zext nneg i32 %spec.select46.i.i to i64
  %i.u = getelementptr [4 x i8], ptr @pt_regoff, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  store i32 %i.v, ptr %2, align 4
  %i.w = zext nneg i32 %i.v to i64
  %i.x = ptrtoint ptr %1 to i64
  %i.y = add i64 %i.w, %i.x
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load i64, ptr %i.z, align 8
  br label %regs_get_register.exit

bb.f:                                             ; preds = %get_reg_offset.exit.thread
  %i.ab = getelementptr i8, ptr %1, i64 128
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %0, i64 82
  %i.ae = load i8, ptr %i.ad, align 2
  %i.af = zext i8 %i.ae to i64
  %i.ag = add i64 %i.ac, %i.af
  br label %regs_get_register.exit

regs_get_register.exit:                           ; preds = %get_reg_offset.exit, %get_reg_offset.exit.thread, %bb.f
  %.024 = phi i64 [ %i.ag, %bb.f ], [ 0, %get_reg_offset.exit.thread ], [ %i.aa, %get_reg_offset.exit ] ; 2 uses
  %i.ah = load i8, ptr %i.a, align 1
  %i.ai = icmp eq i8 %i.ah, 4
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %regs_get_register.exit
  %i.aj = trunc i64 %.024 to i32
  %i.ak = getelementptr i8, ptr %0, i64 48
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = add i32 %i.al, %i.aj
  %i.an = zext i32 %i.am to i64
  br label %bb.i

bb.h:                                             ; preds = %regs_get_register.exit
  %i.ao = getelementptr i8, ptr %0, i64 48
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = sext i32 %i.ap to i64
  %i.ar = add i64 %.024, %i.aq
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %storemerge = phi i64 [ %i.ar, %bb.h ], [ %i.an, %bb.g ]
  store i64 %storemerge, ptr %3, align 8
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.c, %bb.b, %bb.a, %bb.i
  %.0 = phi i32 [ -22, %bb.c ], [ -22, %bb.a ], [ %i.c, %bb.b ], [ 0, %bb.i ], [ -22, %.thread ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @insn_get_sib(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { nocallback nounwind }
attributes #9 = { noredzone nounwind "no-builtin-wcslen" }
attributes #10 = { nounwind }
attributes #11 = { nounwind memory(none) }
attributes #12 = { noredzone "no-builtin-wcslen" }

!llvm.named.register.rsp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{!"rsp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5 = !{i32 1, !"Code Model", i32 2}
!6 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!7 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!8 = !{i32 1, !"override-stack-alignment", i32 8}
!9 = !{i32 4, !"SkipRaxSetup", i32 1}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{i64 2148544416}
!12 = !{i64 2148544767}
!13 = !{i64 2148469775}
!14 = !{i64 8718727}
!15 = !{i64 2156338062, i64 2156338089, i64 2156338499, i64 2156338532, i64 2156338567, i64 2156338583, i64 2156339424, i64 2156339482, i64 2156339531, i64 2156339341, i64 2156338642, i64 2156338674}
!16 = !{i64 2156336405}
!17 = !{i64 2148545118}
!18 = !{i64 2148545469}
!19 = !{i64 3548256, i64 3548277, i64 2151060429, i64 2151060524, i64 2151060547, i64 2151060580, i64 2151060611, i64 2151060650}
!20 = !{i64 2148303233, i64 2148303273, i64 2148303390, i64 2148303411, i64 2148303454, i64 2148303469, i64 2148303502, i64 2148303536, i64 2148303560}
!21 = !{!"branch_weights", i32 2000, i32 2002}
!22 = !{!"auto-init"}
!23 = !{i64 35555}
!24 = !{i64 37113}
!25 = !{i64 37224}
!26 = !{i64 37332}
!27 = !{i64 39561}
!28 = !{i64 39657}
!29 = !{i64 39751}
!30 = !{i64 2153658382, i64 2153658411, i64 2153658417, i64 2153658433, i64 2153658449, i64 2153658476, i64 2153658576, i64 2153658636, i64 2153658750, i64 2153658798, i64 2153658846, i64 2153658910, i64 2153658967, i64 2153659019, i64 2153659145, i64 2153659364, i64 2153659231, i64 2153659262, i64 2153659268, i64 2153659284, i64 2153659300}
!31 = !{i64 6300670, i64 6300675, i64 2153791850, i64 2153791856, i64 2153791872, i64 2153791888, i64 2153791915, i64 2153792015, i64 2153792084, i64 2153792198, i64 2153792246, i64 2153792294, i64 2153792358, i64 2153792415, i64 2153792467, i64 2153792670, i64 2153792910, i64 2153792756, i64 2153792787, i64 2153792793, i64 2153792809, i64 2153792825, i64 6300772, i64 2153793379, i64 2153793474, i64 2153793497, i64 2153793530, i64 2153793561, i64 2153793600}
!32 = !{i64 2153656542, i64 2153656571, i64 2153656577, i64 2153656593, i64 2153656609, i64 2153656636, i64 2153656736, i64 2153656796, i64 2153656910, i64 2153656958, i64 2153657006, i64 2153657070, i64 2153657127, i64 2153657179, i64 2153657305, i64 2153657524, i64 2153657391, i64 2153657422, i64 2153657428, i64 2153657444, i64 2153657460}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_1
