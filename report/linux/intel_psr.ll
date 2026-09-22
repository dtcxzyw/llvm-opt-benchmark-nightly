Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_psr?download=true
inline.NumInlined: 742
inline.NumDeleted: 170
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@intel_psr2_sel_fetch_update:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %.pre237 = load ptr, ptr %i.a, align 8
  br label %bb.de

.thread214:                                       ; preds = %psr2_sel_fetch_plane_state_supported.exit177, %bb.cx, %bb.cz, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %.critedge2.thread

bb.dd:                                            ; preds = %bb.db
  %i.or = ptrtoint ptr %i.oe to i64
  %i.os = trunc i64 %i.or to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.dy

bb.de:                                            ; preds = %.thread209, %bb.cs
  %i.ot = phi ptr [ %.pre237, %.thread209 ], [ %i.mj, %bb.cs ] ; 2 uses
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %i.ou = getelementptr i8, ptr %i.ot, i64 640
  %i.ov = load i32, ptr %i.ou, align 8
  %i.ow = sext i32 %i.ov to i64
  %i.ox = icmp slt i64 %indvars.iv.next235, %i.ow
  br i1 %i.ox, label %bb.cs, label %clip_area_update.exit178, !llvm.loop !91

.critedge2.thread:                                ; preds = %.critedge.thread, %bb.ao, %__drm_to_dev.exit, %bb.d, %psr2_sel_fetch_pipe_state_supported.exit, %.thread214
  %i.oy = call zeroext i1 @drm_rect_intersect(ptr noundef nonnull %3, ptr noundef nonnull %3) #11
  br i1 %i.oy, label %bb.df, label %clip_area_update.exit178

bb.df:                                            ; preds = %.critedge2.thread
  %i.oz = getelementptr i8, ptr %i.j, i64 4632    ; 3 uses
  %i.pa = load i32, ptr %i.oz, align 8            ; 2 uses
  %i.pb = icmp eq i32 %i.pa, -1
  %i.pc = load i32, ptr %i.k, align 4             ; 3 uses
  br i1 %i.pb, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  store i32 %i.pc, ptr %i.oz, align 8
  %i.pd = load i32, ptr %i.p, align 4
  %i.pe = getelementptr i8, ptr %i.j, i64 4640
  store i32 %i.pd, ptr %i.pe, align 8
  br label %clip_area_update.exit178

bb.dh:                                            ; preds = %bb.df
  %i.pf = icmp slt i32 %i.pc, %i.pa
  br i1 %i.pf, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  store i32 %i.pc, ptr %i.oz, align 8
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.pg = load i32, ptr %i.p, align 4             ; 2 uses
  %i.ph = getelementptr i8, ptr %i.j, i64 4640    ; 2 uses
  %i.pi = load i32, ptr %i.ph, align 8
  %i.pj = icmp sgt i32 %i.pg, %i.pi
  br i1 %i.pj, label %bb.dk, label %clip_area_update.exit178

bb.dk:                                            ; preds = %bb.dj
  store i32 %i.pg, ptr %i.ph, align 8
  br label %clip_area_update.exit178

clip_area_update.exit178:                         ; preds = %bb.de, %.preheader, %bb.dk, %bb.dj, %bb.dg, %.critedge2.thread
  %.not225 = phi i1 [ false, %bb.dk ], [ false, %.critedge2.thread ], [ false, %bb.dg ], [ false, %bb.dj ], [ true, %.preheader ], [ true, %bb.de ] ; 3 uses
  %i.pk = load ptr, ptr %i.j, align 8
  %i.pl = load ptr, ptr %i.pk, align 8            ; 2 uses
  %.not.i179 = icmp eq ptr %i.pl, null
  br i1 %.not.i179, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %clip_area_update.exit178
  %i.pm = call ptr @__drm_to_display(ptr noundef nonnull %i.pl) #11
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %clip_area_update.exit178
  %i.pn = phi ptr [ %i.pm, %bb.dl ], [ null, %clip_area_update.exit178 ] ; 2 uses
  %i.po = getelementptr i8, ptr %i.pn, i64 8
  %i.pp = load i64, ptr %i.po, align 8
  %i.pq = and i64 %i.pp, 4503599627370496
  %.not.i.i180 = icmp eq i64 %i.pq, 0
  br i1 %.not.i.i180, label %man_trk_ctl_partial_frame_bit_get.exit.i, label %man_trk_ctl_partial_frame_bit_get.exit.thread.i

man_trk_ctl_partial_frame_bit_get.exit.i:         ; preds = %bb.dm
  %i.pr = getelementptr i8, ptr %i.pn, i64 1168
  %i.ps = load i16, ptr %i.pr, align 8
  %i.pt = icmp ugt i16 %i.ps, 13                  ; 3 uses
  br i1 %.not225, label %bb.do, label %bb.dn

man_trk_ctl_partial_frame_bit_get.exit.thread.i:  ; preds = %bb.dm
  br i1 %.not225, label %.thread50.i, label %psr2_man_trk_ctl_calc.exit.thread

bb.dn:                                            ; preds = %man_trk_ctl_partial_frame_bit_get.exit.i
  %i.pu = select i1 %i.pt, i32 -2147475456, i32 -2147483642
  br label %psr2_man_trk_ctl_calc.exit.thread

bb.do:                                            ; preds = %man_trk_ctl_partial_frame_bit_get.exit.i
  %i.pv = select i1 %i.pt, i32 -2147483648, i32 -2147483646
  %i.pw = getelementptr i8, ptr %i.j, i64 4632    ; 2 uses
  %i.px = load i32, ptr %i.pw, align 8            ; 4 uses
  %i.py = icmp eq i32 %i.px, -1
  br i1 %i.py, label %psr2_man_trk_ctl_calc.exit, label %bb.dp

.thread50.i:                                      ; preds = %man_trk_ctl_partial_frame_bit_get.exit.thread.i
  %i.pz = getelementptr i8, ptr %i.j, i64 4632
  %i.qa = load i32, ptr %i.pz, align 8            ; 2 uses
  %i.qb = icmp eq i32 %i.qa, -1
  br i1 %i.qb, label %psr2_man_trk_ctl_calc.exit, label %.thread51.i

bb.dp:                                            ; preds = %bb.do
  br i1 %i.pt, label %.thread51.i, label %bb.dq

.thread51.i:                                      ; preds = %bb.dp, %.thread50.i
  %i.qc = phi i32 [ %i.qa, %.thread50.i ], [ %i.px, %bb.dp ] ; 2 uses
  %i.qd = shl i32 %i.qc, 16
  %i.qe = and i32 %i.qd, 536805376
  %i.qf = getelementptr i8, ptr %i.j, i64 4640
  %i.qg = load i32, ptr %i.qf, align 8
  %i.qh = add i32 %i.qg, 8191
  %i.qi = and i32 %i.qh, 8191
  %i.qj = or disjoint i32 %i.qe, %i.qi
  %i.qk = or disjoint i32 %i.qj, -2147483648
  br label %psr2_man_trk_ctl_calc.exit

bb.dq:                                            ; preds = %bb.dp
  %i.ql = and i32 %i.px, 3
  %.not35.i = icmp eq i32 %i.ql, 0
  br i1 %.not35.i, label %bb.dr, label %.critedge.i182

bb.dr:                                            ; preds = %bb.dq
  %i.qm = getelementptr i8, ptr %i.j, i64 4640
  %i.qn = load i32, ptr %i.qm, align 8            ; 2 uses
  %i.qo = and i32 %i.qn, 3
  %.not52.i = icmp eq i32 %i.qo, 0
  br i1 %.not52.i, label %bb.dw, label %.critedge.i182, !prof !18

.critedge.i182:                                   ; preds = %bb.dr, %bb.dq
  %i.qp = load ptr, ptr %i.j, align 8
  %i.qq = load ptr, ptr %i.qp, align 8            ; 2 uses
  %.not.i38.i = icmp eq ptr %i.qq, null
  br i1 %.not.i38.i, label %__drm_to_dev.exit.i183, label %bb.ds

bb.ds:                                            ; preds = %.critedge.i182
  %i.qr = getelementptr i8, ptr %i.qq, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8
  br label %__drm_to_dev.exit.i183

__drm_to_dev.exit.i183:                           ; preds = %bb.ds, %.critedge.i182
  %i.qt = phi ptr [ %i.qs, %bb.ds ], [ null, %.critedge.i182 ]
  %i.qu = call ptr @dev_driver_string(ptr noundef %i.qt) #11 ; 0 uses
  %i.qv = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.7, ptr nonnull @.str.9, i32 2729, i32 2321, i64 16) #13, !srcloc !94
  %i.qw = load ptr, ptr %i.j, align 8
  %i.qx = load ptr, ptr %i.qw, align 8            ; 2 uses
  %.not.i42.i = icmp eq ptr %i.qx, null
  br i1 %.not.i42.i, label %__drm_to_dev.exit43.i, label %bb.dt

bb.dt:                                            ; preds = %__drm_to_dev.exit.i183
  %i.qy = getelementptr i8, ptr %i.qx, i64 8
  %i.qz = load ptr, ptr %i.qy, align 8
  br label %__drm_to_dev.exit43.i

__drm_to_dev.exit43.i:                            ; preds = %bb.dt, %__drm_to_dev.exit.i183
  %i.ra = phi ptr [ %i.qz, %bb.dt ], [ null, %__drm_to_dev.exit.i183 ]
  %i.rb = call ptr @dev_driver_string(ptr noundef %i.ra) #11
  %i.rc = load ptr, ptr %i.j, align 8
  %i.rd = load ptr, ptr %i.rc, align 8            ; 2 uses
  %.not.i44.i = icmp eq ptr %i.rd, null
  br i1 %.not.i44.i, label %__drm_to_dev.exit45.i, label %bb.du

bb.du:                                            ; preds = %__drm_to_dev.exit43.i
  %i.re = getelementptr i8, ptr %i.rd, i64 8
  %i.rf = load ptr, ptr %i.re, align 8
  br label %__drm_to_dev.exit45.i

__drm_to_dev.exit45.i:                            ; preds = %bb.du, %__drm_to_dev.exit43.i
  %i.rg = phi ptr [ %i.rf, %bb.du ], [ null, %__drm_to_dev.exit43.i ] ; 2 uses
  %i.rh = getelementptr i8, ptr %i.rg, i64 80
  %i.ri = load ptr, ptr %i.rh, align 8            ; 2 uses
  %.not.i46.i = icmp eq ptr %i.ri, null
  br i1 %.not.i46.i, label %bb.dv, label %dev_name.exit49.i

bb.dv:                                            ; preds = %__drm_to_dev.exit45.i
  %.val.i48.i = load ptr, ptr %i.rg, align 8
  br label %dev_name.exit49.i

dev_name.exit49.i:                                ; preds = %bb.dv, %__drm_to_dev.exit45.i
  %.0.i47.i = phi ptr [ %.val.i48.i, %bb.dv ], [ %i.ri, %__drm_to_dev.exit45.i ]
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.qv, ptr noundef %i.rb, ptr noundef %.0.i47.i, ptr noundef nonnull @.str.126) #11
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !95
  %.pre.i184 = load i32, ptr %i.pw, align 8
  %.phi.trans.insert.i = getelementptr i8, ptr %i.j, i64 4640
  %.pre53.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %bb.dw

bb.dw:                                            ; preds = %dev_name.exit49.i, %bb.dr
  %i.rj = phi i32 [ %.pre53.i, %dev_name.exit49.i ], [ %i.qn, %bb.dr ]
  %i.rk = phi i32 [ %.pre.i184, %dev_name.exit49.i ], [ %i.px, %bb.dr ] ; 2 uses
  %i.rl = sdiv i32 %i.rk, 4
  %i.rm = shl i32 %i.rl, 21
  %i.rn = add i32 %i.rm, 2097152
  %i.ro = sdiv i32 %i.rj, 4
  %i.rp = shl i32 %i.ro, 11
  %i.rq = add i32 %i.rp, 2048
  %i.rr = and i32 %i.rq, 2095104
  %i.rs = or disjoint i32 %i.rr, %i.rn
  %i.rt = or i32 %i.rs, -2147483646
  br label %psr2_man_trk_ctl_calc.exit

psr2_man_trk_ctl_calc.exit.thread:                ; preds = %man_trk_ctl_partial_frame_bit_get.exit.thread.i, %bb.dn
  %.0.i181.ph = phi i32 [ %i.pu, %bb.dn ], [ -2147475456, %man_trk_ctl_partial_frame_bit_get.exit.thread.i ]
  %i.ru = getelementptr i8, ptr %i.j, i64 4620
  store i32 %.0.i181.ph, ptr %i.ru, align 4
  br label %psr2_pipe_srcsz_early_tpt_calc.exit

psr2_man_trk_ctl_calc.exit:                       ; preds = %bb.do, %.thread50.i, %.thread51.i, %bb.dw
  %.val.i187 = phi i32 [ -1, %.thread50.i ], [ -1, %bb.do ], [ %i.qc, %.thread51.i ], [ %i.rk, %bb.dw ]
  %.0.i181 = phi i32 [ -2147483648, %.thread50.i ], [ %i.pv, %bb.do ], [ %i.qk, %.thread51.i ], [ %i.rt, %bb.dw ]
  %i.rv = getelementptr i8, ptr %i.j, i64 4620
  store i32 %.0.i181, ptr %i.rv, align 4
  %i.rw = getelementptr i8, ptr %i.j, i64 1292
  %i.rx = load i8, ptr %i.rw, align 4, !range !15, !noundef !16
  %i.ry = trunc nuw i8 %i.rx to i1
  %or.cond.i186.not = and i1 %.not225, %i.ry
  br i1 %or.cond.i186.not, label %bb.dx, label %psr2_pipe_srcsz_early_tpt_calc.exit

bb.dx:                                            ; preds = %psr2_man_trk_ctl_calc.exit
  %i.rz = getelementptr i8, ptr %i.j, i64 4628
  %.val8.i = load i32, ptr %i.rz, align 4
  %i.sa = getelementptr i8, ptr %i.j, i64 4636
  %.val9.i = load i32, ptr %i.sa, align 4
  %i.sb = sub i32 %.val9.i, %.val8.i
  %i.sc = getelementptr i8, ptr %i.j, i64 4640
  %.val7.i188 = load i32, ptr %i.sc, align 8
  %i.sd = shl i32 %i.sb, 16
  %reass.sub = sub i32 %.val7.i188, %.val.i187
  %i.se = add i32 %reass.sub, 65535
  %i.sf = or i32 %i.se, -65536
  %i.sg = add i32 %i.sf, %i.sd
  br label %psr2_pipe_srcsz_early_tpt_calc.exit

psr2_pipe_srcsz_early_tpt_calc.exit:              ; preds = %psr2_man_trk_ctl_calc.exit.thread, %psr2_man_trk_ctl_calc.exit, %bb.dx
  %.0.i189 = phi i32 [ %i.sg, %bb.dx ], [ 0, %psr2_man_trk_ctl_calc.exit ], [ 0, %psr2_man_trk_ctl_calc.exit.thread ]
  %i.sh = getelementptr i8, ptr %i.j, i64 4624
  store i32 %.0.i189, ptr %i.sh, align 8
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dd, %intel_psr_apply_su_area_workarounds.exit, %bb.c, %psr2_pipe_srcsz_early_tpt_calc.exit
  %.5 = phi i32 [ 0, %psr2_pipe_srcsz_early_tpt_calc.exit ], [ 0, %bb.c ], [ %i.os, %bb.dd ], [ %i.ji, %intel_psr_apply_su_area_workarounds.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @drm_atomic_helper_damage_merged(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_atomic_add_affected_planes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @drm_rect_intersect(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_psr2_panic_force_full_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #11
  %.pre = load ptr, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.a ]
  %i.e = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 880
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 4503599627370496
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.d, label %man_trk_ctl_continuos_full_frame.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.e, i64 1168
  %i.l = load i16, ptr %i.k, align 8
  %i.m = icmp ugt i16 %i.l, 13
  %i.n = select i1 %i.m, i32 -2147475456, i32 -2147483642
  br label %man_trk_ctl_continuos_full_frame.exit

man_trk_ctl_continuos_full_frame.exit:            ; preds = %bb.c, %bb.d
  %i.o = phi i32 [ %i.n, %bb.d ], [ -2147475456, %bb.c ] ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 1160
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 80       ; 2 uses
  %i.s = sext i32 %i.g to i64
  %i.t = getelementptr [4 x i8], ptr %i.r, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4
  %i.v = load i32, ptr %i.r, align 4
  %i.w = getelementptr i8, ptr %i.q, i64 48
  %i.x = load i32, ptr %i.w, align 4
  %i.y = add i32 %i.u, 395536
  %i.z = sub i32 %i.y, %i.v
  %i.aa = add i32 %i.z, %i.x                      ; 4 uses
  %i.ab = zext i32 %i.o to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #13
          to label %trace_i915_reg_rw.exit.i [label %arch_test_bit.exit.i.i.i], !srcloc !20

arch_test_bit.exit.i.i.i:                         ; preds = %man_trk_ctl_continuos_full_frame.exit
  %i.ac = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #13, !srcloc !21
  %i.ad = zext i32 %i.ac to i64
  %i.ae = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ad) #13, !srcloc !22 ; 2 uses
  %i.af = icmp ult i8 %i.ae, 2
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = trunc nuw i8 %i.ae to i1
  br i1 %i.ag, label %bb.e, label %trace_i915_reg_rw.exit.i

bb.e:                                             ; preds = %arch_test_bit.exit.i.i.i
  %i.ah = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ah, ptr elementtype(i64) %i.ah) #13, !srcloc !23
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !24
  %i.ai = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.ak, i1 noundef zeroext true, i32 %i.aa, i64 noundef range(i64 0, 4294967296) %i.ab, i32 noundef 4, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !25
  %i.am = getelementptr i8, ptr %i.ah, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.am, ptr elementtype(i64) %i.am) #13, !srcloc !26
  br label %trace_i915_reg_rw.exit.i

trace_i915_reg_rw.exit.i:                         ; preds = %bb.g, %arch_test_bit.exit.i.i.i, %man_trk_ctl_continuos_full_frame.exit
  %.val.i = load ptr, ptr %i.e, align 8
  %i.an = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #11 ; 2 uses
  %i.ao = icmp ult i32 %i.aa, 262144
  br i1 %i.ao, label %bb.h, label %intel_de_write_fw.exit

bb.h:                                             ; preds = %trace_i915_reg_rw.exit.i
  %i.ap = getelementptr i8, ptr %i.an, i64 36
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = add i32 %i.aq, %i.aa
  br label %intel_de_write_fw.exit

intel_de_write_fw.exit:                           ; preds = %trace_i915_reg_rw.exit.i, %bb.h
  %.0.i.i = phi i32 [ %i.ar, %bb.h ], [ %i.aa, %trace_i915_reg_rw.exit.i ]
  %i.as = load ptr, ptr %i.an, align 8
  %i.at = zext i32 %.0.i.i to i64
  %i.au = getelementptr i8, ptr %i.as, i64 %i.at
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.o, ptr elementtype(i32) %i.au) #13, !srcloc !27
  %i.av = getelementptr i8, ptr %0, i64 1292
  %i.aw = load i8, ptr %i.av, align 4, !range !15, !noundef !16
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.i, label %bb.n

bb.i:                                             ; preds = %intel_de_write_fw.exit
  %i.ay = getelementptr i8, ptr %i.d, i64 1664
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = shl i32 %i.az, 12
  %i.bb = add i32 %i.ba, 458868                   ; 4 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #13
          to label %trace_i915_reg_rw.exit.i23 [label %arch_test_bit.exit.i.i.i22], !srcloc !20

arch_test_bit.exit.i.i.i22:                       ; preds = %bb.i
  %i.bc = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #13, !srcloc !21
  %i.bd = zext i32 %i.bc to i64
  %i.be = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.bd) #13, !srcloc !22 ; 2 uses
  %i.bf = icmp ult i8 %i.be, 2
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = trunc nuw i8 %i.be to i1
  br i1 %i.bg, label %bb.j, label %trace_i915_reg_rw.exit.i23

bb.j:                                             ; preds = %arch_test_bit.exit.i.i.i22
  %i.bh = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bh, ptr elementtype(i64) %i.bh) #13, !srcloc !23
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !24
  %i.bi = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i26, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.bk, i1 noundef zeroext true, i32 %i.bb, i64 noundef range(i64 0, 4294967296) 0, i32 noundef 4, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !25
  %i.bm = getelementptr i8, ptr %i.bh, i64 8      ; 2 uses
end_hunk_0
