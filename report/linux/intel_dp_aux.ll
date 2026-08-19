inline.NumInlined: 128
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@intel_dp_aux_xfer:bb.a
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.lcssa239 = phi i32 [ %i.al, %bb.h ], [ %i.av, %bb.k ], [ %i.aq, %bb.i ], [ %i.av, %bb.j ] ; 2 uses
  %i.ax = phi i1 [ false, %bb.h ], [ true, %bb.k ], [ false, %bb.i ], [ false, %bb.j ]
  %i.ay = zext i32 %.lcssa239 to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #11
          to label %trace_i915_reg_rw.exit [label %arch_test_bit.exit.i.i], !srcloc !48

arch_test_bit.exit.i.i:                           ; preds = %bb.l
  %i.az = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #11, !srcloc !49
  %i.ba = zext i32 %i.az to i64
  %i.bb = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ba) #11, !srcloc !50 ; 2 uses
  %i.bc = icmp ult i8 %i.bb, 2
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = trunc nuw i8 %i.bb to i1
  br i1 %i.bd, label %bb.m, label %trace_i915_reg_rw.exit

bb.m:                                             ; preds = %arch_test_bit.exit.i.i
  %i.be = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.be, ptr elementtype(i64) %i.be) #11, !srcloc !51
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !52
  %i.bf = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.bh, i1 noundef zeroext false, i32 %i.h, i64 noundef range(i64 0, 4294967296) %i.ay, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !53
  %i.bj = getelementptr i8, ptr %i.be, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bj, ptr elementtype(i64) %i.bj) #11, !srcloc !54
  br label %trace_i915_reg_rw.exit

trace_i915_reg_rw.exit:                           ; preds = %bb.l, %arch_test_bit.exit.i.i, %bb.o
  br i1 %i.ax, label %bb.p, label %bb.v

bb.p:                                             ; preds = %trace_i915_reg_rw.exit
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.h) #10
  %.val.i = load ptr, ptr %i.e, align 8
  %i.bk = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 144
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call i32 %i.bm(ptr noundef %i.bk, i32 %i.h, i1 noundef zeroext true) #10, !inline_history !55 ; 3 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.h) #10
  %i.bo = getelementptr i8, ptr %0, i64 1616      ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8
  %.not170 = icmp eq i32 %i.bn, %i.bp
  br i1 %.not170, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.q, %bb.r
  %i.bt = phi ptr [ %i.bs, %bb.r ], [ null, %bb.q ]
  %i.bu = tail call ptr @dev_driver_string(ptr noundef %i.bt) #10 ; 0 uses
  %i.bv = getelementptr i8, ptr %0, i64 296
  %i.bw = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.14, ptr nonnull @.str.7, i32 341, i32 2321, i64 16) #11, !srcloc !56
  %i.bx = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i177 = icmp eq ptr %i.bx, null
  br i1 %.not.i177, label %__drm_to_dev.exit178, label %bb.s

bb.s:                                             ; preds = %__drm_to_dev.exit
  %i.by = getelementptr i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  br label %__drm_to_dev.exit178

__drm_to_dev.exit178:                             ; preds = %__drm_to_dev.exit, %bb.s
  %i.ca = phi ptr [ %i.bz, %bb.s ], [ null, %__drm_to_dev.exit ]
  %i.cb = tail call ptr @dev_driver_string(ptr noundef %i.ca) #10
  %i.cc = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i179 = icmp eq ptr %i.cc, null
  br i1 %.not.i179, label %__drm_to_dev.exit180, label %bb.t

bb.t:                                             ; preds = %__drm_to_dev.exit178
  %i.cd = getelementptr i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  br label %__drm_to_dev.exit180

__drm_to_dev.exit180:                             ; preds = %__drm_to_dev.exit178, %bb.t
  %i.cf = phi ptr [ %i.ce, %bb.t ], [ null, %__drm_to_dev.exit178 ] ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 80
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %.not.i181 = icmp eq ptr %i.ch, null
  br i1 %.not.i181, label %bb.u, label %dev_name.exit184

bb.u:                                             ; preds = %__drm_to_dev.exit180
  %.val.i183 = load ptr, ptr %i.cf, align 8
  br label %dev_name.exit184

dev_name.exit184:                                 ; preds = %__drm_to_dev.exit180, %bb.u
  %.0.i182 = phi ptr [ %.val.i183, %bb.u ], [ %i.ch, %__drm_to_dev.exit180 ]
  %i.ci = load ptr, ptr %i.bv, align 8
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bw, ptr noundef %i.cb, ptr noundef %.0.i182, ptr noundef %i.ci, i32 noundef %i.bn) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !57
  store i32 %i.bn, ptr %i.bo, align 8
  br label %.loopexit

bb.v:                                             ; preds = %trace_i915_reg_rw.exit
  %i.cj = icmp sgt i32 %2, 20
  br i1 %i.cj, label %bb.w, label %.critedge.preheader, !prof !35

.critedge.preheader:                              ; preds = %bb.v
  %i.ck = getelementptr i8, ptr %0, i64 3056      ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = tail call i32 %i.cl(ptr noundef %0, i32 noundef 0) #10 ; 2 uses
  %.not164233 = icmp eq i32 %i.cm, 0
  br i1 %.not164233, label %.critedge._crit_edge, label %.lr.ph234

.lr.ph234:                                        ; preds = %.critedge.preheader
  %i.cn = getelementptr i8, ptr %0, i64 3064
  %i.co = icmp sgt i32 %2, 0
  %i.cp = getelementptr i8, ptr %0, i64 296
  br label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.cq = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i185 = icmp eq ptr %i.cq, null
  br i1 %.not.i185, label %__drm_to_dev.exit186, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  br label %__drm_to_dev.exit186

__drm_to_dev.exit186:                             ; preds = %bb.w, %bb.x
  %i.ct = phi ptr [ %i.cs, %bb.x ], [ null, %bb.w ]
  %i.cu = tail call ptr @dev_driver_string(ptr noundef %i.ct) #10 ; 0 uses
  %i.cv = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.10, ptr nonnull @.str.7, i32 350, i32 2321, i64 16) #11, !srcloc !58
  %i.cw = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i193 = icmp eq ptr %i.cw, null
  br i1 %.not.i193, label %__drm_to_dev.exit194, label %bb.y

bb.y:                                             ; preds = %__drm_to_dev.exit186
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  br label %__drm_to_dev.exit194

__drm_to_dev.exit194:                             ; preds = %__drm_to_dev.exit186, %bb.y
  %i.cz = phi ptr [ %i.cy, %bb.y ], [ null, %__drm_to_dev.exit186 ]
  %i.da = tail call ptr @dev_driver_string(ptr noundef %i.cz) #10
  %i.db = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i195 = icmp eq ptr %i.db, null
  br i1 %.not.i195, label %__drm_to_dev.exit196, label %bb.z

bb.z:                                             ; preds = %__drm_to_dev.exit194
  %i.dc = getelementptr i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  br label %__drm_to_dev.exit196

__drm_to_dev.exit196:                             ; preds = %__drm_to_dev.exit194, %bb.z
  %i.de = phi ptr [ %i.dd, %bb.z ], [ null, %__drm_to_dev.exit194 ] ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 80
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %.not.i197 = icmp eq ptr %i.dg, null
  br i1 %.not.i197, label %bb.aa, label %dev_name.exit200

bb.aa:                                            ; preds = %__drm_to_dev.exit196
  %.val.i199 = load ptr, ptr %i.de, align 8
  br label %dev_name.exit200

dev_name.exit200:                                 ; preds = %__drm_to_dev.exit196, %bb.aa
  %.0.i198 = phi ptr [ %.val.i199, %bb.aa ], [ %i.dg, %__drm_to_dev.exit196 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.cv, ptr noundef %i.da, ptr noundef %.0.i198, ptr noundef nonnull @.str.15) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !59
  br label %.loopexit

.critedge.loopexit:                               ; preds = %bb.an
  %i.dh = load ptr, ptr %i.ck, align 8
  %i.di = add i32 %i.dl, 1
  %i.dj = call i32 %i.dh(ptr noundef %0, i32 noundef %i.dl) #10 ; 2 uses
  %.not164 = icmp eq i32 %i.dj, 0
  br i1 %.not164, label %.critedge._crit_edge, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph234, %.critedge.loopexit
  %i.dk = phi i32 [ %i.cm, %.lr.ph234 ], [ %i.dj, %.critedge.loopexit ]
  %i.dl = phi i32 [ 1, %.lr.ph234 ], [ %i.di, %.critedge.loopexit ] ; 2 uses
  %i.dm = load ptr, ptr %i.cn, align 8
  %i.dn = call i32 %i.dm(ptr noundef %0, i32 noundef %2, i32 noundef %i.dk) #10
  %i.do = or i32 %i.dn, %5
  br label %.preheader

.preheader:                                       ; preds = %bb.ab, %bb.an
  %.1151232 = phi i32 [ 0, %bb.ab ], [ %i.hd, %bb.an ]
  br i1 %i.co, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %intel_dp_aux_pack.exit
  %indvar = phi i32 [ %indvar.next, %intel_dp_aux_pack.exit ], [ 0, %.preheader ] ; 2 uses
  %.1231 = phi i32 [ %i.fj, %intel_dp_aux_pack.exit ], [ 0, %.preheader ] ; 4 uses
  %8 = shl i32 %indvar, 2
  %9 = sub i32 %2, %8
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 4)    ; 2 uses
  %umin = zext nneg i32 %10 to i64                ; 2 uses
  %i.dp = ashr exact i32 %.1231, 2
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr [4 x i8], ptr %7, i64 %i.dq
  %i.ds = sext i32 %.1231 to i64
  %i.dt = getelementptr i8, ptr %1, i64 %i.ds     ; 5 uses
  %i.du = sub i32 %2, %.1231
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph.preheader.i, label %intel_dp_aux_pack.exit

.lr.ph.preheader.i:                               ; preds = %.lr.ph
  %xtraiter = and i64 %umin, 3                    ; 3 uses
  %i.dw = add nsw i32 %10, -1
  %i.dx = icmp ult i32 %i.dw, 3
  br i1 %i.dx, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %umin, 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 6 uses
  %.010.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ex, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.dy = getelementptr i8, ptr %i.dt, i64 %indvars.iv.i
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = zext i8 %i.dz to i32
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.eb = shl i32 %indvars.iv.tr.i, 3
  %i.ec = sub i32 24, %i.eb
  %i.ed = shl nuw i32 %i.ea, %i.ec
  %i.ee = or i32 %i.ed, %.010.i
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dt, i64 %indvars.iv.next.i
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = zext i8 %i.eg to i32
  %indvars.iv.tr.i.1 = trunc i64 %indvars.iv.next.i to i32
  %i.ei = shl i32 %indvars.iv.tr.i.1, 3
  %i.ej = sub i32 24, %i.ei
  %i.ek = shl nuw i32 %i.eh, %i.ej
  %i.el = or i32 %i.ek, %i.ee
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.em = getelementptr i8, ptr %i.dt, i64 %indvars.iv.next.i.1
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = zext i8 %i.en to i32
  %indvars.iv.tr.i.2 = trunc i64 %indvars.iv.next.i.1 to i32
  %i.ep = shl i32 %indvars.iv.tr.i.2, 3
  %i.eq = sub i32 24, %i.ep
  %i.er = shl nuw i32 %i.eo, %i.eq
  %i.es = or i32 %i.er, %i.el
  %i.et = getelementptr i8, ptr %i.dt, i64 %indvars.iv.i
  %i.eu = getelementptr i8, ptr %i.et, i64 3
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = zext i8 %i.ev to i32
  %i.ex = or i32 %i.es, %i.ew                     ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %intel_dp_aux_pack.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !60

intel_dp_aux_pack.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %intel_dp_aux_pack.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %intel_dp_aux_pack.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %intel_dp_aux_pack.exit.loopexit.unr-lcssa ]
  %.010.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ex, %intel_dp_aux_pack.exit.loopexit.unr-lcssa ]
  %lcmp.mod274 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod274)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 3 uses
  %.010.i.epil = phi i32 [ %.010.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.fe, %.lr.ph.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.ey = getelementptr i8, ptr %i.dt, i64 %indvars.iv.i.epil
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = zext i8 %i.ez to i32
  %indvars.iv.tr.i.epil = trunc i64 %indvars.iv.i.epil to i32
  %i.fb = shl i32 %indvars.iv.tr.i.epil, 3
  %i.fc = sub i32 24, %i.fb
  %i.fd = shl nuw i32 %i.fa, %i.fc
  %i.fe = or i32 %i.fd, %.010.i.epil              ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %intel_dp_aux_pack.exit, label %.lr.ph.i.epil, !llvm.loop !61

intel_dp_aux_pack.exit:                           ; preds = %intel_dp_aux_pack.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %.lr.ph
  %.0.lcssa.i = phi i32 [ 0, %.lr.ph ], [ %i.ex, %intel_dp_aux_pack.exit.loopexit.unr-lcssa ], [ %i.fe, %.lr.ph.i.epil ]
  %i.ff = load i32, ptr %i.dr, align 4            ; 3 uses
  call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.ff) #10
  %.val.i201 = load ptr, ptr %i.e, align 8
  %i.fg = call ptr @to_intel_uncore(ptr noundef %.val.i201) #10 ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 176
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef %i.fg, i32 %i.ff, i32 noundef %.0.lcssa.i, i1 noundef zeroext true) #10, !inline_history !63
  call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.ff) #10
  %i.fj = add i32 %.1231, 4                       ; 2 uses
  %i.fk = icmp slt i32 %i.fj, %2
  %indvar.next = add i32 %indvar, 1
  br i1 %i.fk, label %.lr.ph, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %intel_dp_aux_pack.exit, %.preheader
  call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.h) #10
  %.val.i202 = load ptr, ptr %i.e, align 8
  %i.fl = call ptr @to_intel_uncore(ptr noundef %.val.i202) #10 ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 176
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef %i.fl, i32 %i.h, i32 noundef %i.do, i1 noundef zeroext true) #10, !inline_history !63
  call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.h) #10
  %i.fo = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not.i203 = icmp eq ptr %i.fo, null
  br i1 %.not.i203, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  %i.fp = call ptr @__drm_to_display(ptr noundef nonnull %i.fo) #10
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge
  %i.fq = phi ptr [ %i.fp, %bb.ac ], [ null, %._crit_edge ] ; 7 uses
  %i.fr = load ptr, ptr %i.f, align 8
  %i.fs = call i32 %i.fr(ptr noundef %0) #10, !inline_history !65 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !annotation !10
  %i.ft = call zeroext i1 @intel_parent_irq_enabled(ptr noundef %i.fq) #10
  br i1 %i.ft, label %bb.ae, label %.split.i

bb.ae:                                            ; preds = %bb.ad
  %i.fu = call i32 @__SCT__might_resched() #10    ; 0 uses
  %.val56.i = load ptr, ptr %i.fq, align 8
  %i.fv = call ptr @to_intel_uncore(ptr noundef %.val56.i) #10 ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 144
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = call i32 %i.fx(ptr noundef %i.fv, i32 %i.fs, i1 noundef zeroext false) #10, !inline_history !66 ; 2 uses
  store i32 %i.fy, ptr %i.a, align 4
  %i.fz = icmp sgt i32 %i.fy, -1
  br i1 %i.fz, label %intel_dp_aux_wait_done.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false), !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %6, i32 noundef 0) #10
  %i.ga = getelementptr i8, ptr %i.fq, i64 1080   ; 3 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %.048.i = phi i64 [ 11, %bb.af ], [ %spec.store.select9.i, %bb.ah ]
  %i.gb = call i64 @prepare_to_wait_event(ptr noundef %i.ga, ptr noundef nonnull %6, i32 noundef 2) #10 ; 0 uses
  %.val55.i = load ptr, ptr %i.fq, align 8
  %i.gc = call ptr @to_intel_uncore(ptr noundef %.val55.i) #10 ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 144
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = call i32 %i.ge(ptr noundef %i.gc, i32 %i.fs, i1 noundef zeroext false) #10, !inline_history !66 ; 2 uses
  store i32 %i.gf, ptr %i.a, align 4
  %i.gg = icmp slt i32 %i.gf, 0
  br i1 %i.gg, label %bb.ah, label %select.unfold.thread.i

select.unfold.thread.i:                           ; preds = %bb.ag
  call void @finish_wait(ptr noundef %i.ga, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %intel_dp_aux_wait_done.exit

bb.ah:                                            ; preds = %bb.ag
  %i.gh = call i64 @schedule_timeout(i64 noundef %.048.i) #10 ; 2 uses
  %.val.i205 = load ptr, ptr %i.fq, align 8
  %i.gi = call ptr @to_intel_uncore(ptr noundef %.val.i205) #10 ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 144
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = call i32 %i.gk(ptr noundef %i.gi, i32 %i.fs, i1 noundef zeroext false) #10, !inline_history !66 ; 2 uses
  store i32 %i.gl, ptr %i.a, align 4
  %i.gm = icmp slt i32 %i.gl, 0                   ; 2 uses
  %i.gn = icmp ne i64 %i.gh, 0
  %or.cond7.i = select i1 %i.gm, i1 true, i1 %i.gn
  %spec.store.select9.i = select i1 %or.cond7.i, i64 %i.gh, i64 1 ; 3 uses
  %.not51.i = icmp ne i64 %spec.store.select9.i, 0
  %spec.select52.not.i = select i1 %i.gm, i1 %.not51.i, i1 false
  br i1 %spec.select52.not.i, label %bb.ag, label %select.unfold.i

.split.i:                                         ; preds = %bb.ad
  %i.go = call i32 @intel_de_wait_ms(ptr noundef %i.fq, i32 %i.fs, i32 noundef -2147483648, i32 noundef 0, i32 noundef 10, ptr noundef nonnull %i.a) #10
  %.not60.i = icmp eq i32 %i.go, -110
  br i1 %.not60.i, label %bb.ai, label %intel_dp_aux_wait_done.exit

select.unfold.i:                                  ; preds = %bb.ah
  call void @finish_wait(ptr noundef %i.ga, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %.not61.i = icmp eq i64 %spec.store.select9.i, 0
  br i1 %.not61.i, label %bb.ai, label %intel_dp_aux_wait_done.exit

bb.ai:                                            ; preds = %select.unfold.i, %.split.i
  %i.gp = load ptr, ptr %i.fq, align 8            ; 2 uses
  %.not.i.i204 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i204, label %__drm_to_dev.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gq = getelementptr i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.aj, %bb.ai
  %i.gs = phi ptr [ %i.gr, %bb.aj ], [ null, %bb.ai ]
  %i.gt = load ptr, ptr %i.cp, align 8
  %i.gu = load i32, ptr %i.a, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.gs, ptr noundef nonnull @.str.20, ptr noundef %i.gt, i32 noundef 10, i32 noundef %i.gu) #13
  br label %intel_dp_aux_wait_done.exit

intel_dp_aux_wait_done.exit:                      ; preds = %bb.ae, %select.unfold.thread.i, %.split.i, %select.unfold.i, %__drm_to_dev.exit.i
  %i.gv = load i32, ptr %i.a, align 4             ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.gw = or i32 %i.gv, 1375731712
  call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.h) #10
  %.val.i206 = load ptr, ptr %i.e, align 8
  %i.gx = call ptr @to_intel_uncore(ptr noundef %.val.i206) #10 ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 176
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef %i.gx, i32 %i.h, i32 noundef %i.gw, i1 noundef zeroext true) #10, !inline_history !63
  call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.h) #10
  %i.ha = and i32 %i.gv, 268435456
  %.not165 = icmp eq i32 %i.ha, 0
  br i1 %.not165, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %intel_dp_aux_wait_done.exit
  %i.hb = and i32 %i.gv, 33554432
  %.not166 = icmp eq i32 %i.hb, 0
  br i1 %.not166, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @usleep_range_state(i64 noundef 400, i64 noundef 500, i32 noundef 2) #10
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.hc = and i32 %i.gv, 1073741824
  %.not167 = icmp eq i32 %i.hc, 0
  br i1 %.not167, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am, %intel_dp_aux_wait_done.exit, %bb.al
  %i.hd = add nuw nsw i32 %.1151232, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.hd, 5
  br i1 %exitcond.not, label %.critedge.loopexit, label %.preheader, !llvm.loop !67

.critedge._crit_edge:                             ; preds = %.critedge.loopexit, %.critedge.preheader
  %.2155.lcssa = phi i32 [ %.lcssa239, %.critedge.preheader ], [ %i.gv, %.critedge.loopexit ] ; 3 uses
  %i.he = and i32 %.2155.lcssa, 1073741824
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %.critedge._crit_edge
  %i.hg = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i207 = icmp eq ptr %i.hg, null
  br i1 %.not.i207, label %__drm_to_dev.exit208, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hh = getelementptr i8, ptr %i.hg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  br label %__drm_to_dev.exit208

__drm_to_dev.exit208:                             ; preds = %bb.ao, %bb.ap
  %i.hj = phi ptr [ %i.hi, %bb.ap ], [ null, %bb.ao ]
  %i.hk = getelementptr i8, ptr %0, i64 296
  %i.hl = load ptr, ptr %i.hk, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.hj, ptr noundef nonnull @.str.16, ptr noundef %i.hl, i32 noundef %.2155.lcssa) #13
  br label %.loopexit

.thread:                                          ; preds = %bb.am, %.critedge._crit_edge
  %.5 = phi i32 [ %.2155.lcssa, %.critedge._crit_edge ], [ %i.gv, %bb.am ] ; 5 uses
  %i.hm = and i32 %.5, 33554432
  %.not168 = icmp eq i32 %i.hm, 0
  br i1 %.not168, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.thread
  %i.hn = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i209 = icmp eq ptr %i.hn, null
  br i1 %.not.i209, label %__drm_to_dev.exit210, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ho = getelementptr i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8
  br label %__drm_to_dev.exit210

__drm_to_dev.exit210:                             ; preds = %bb.aq, %bb.ar
  %i.hq = phi ptr [ %i.hp, %bb.ar ], [ null, %bb.aq ]
  %i.hr = getelementptr i8, ptr %0, i64 296
  %i.hs = load ptr, ptr %i.hr, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.hq, ptr noundef nonnull @.str.17, ptr noundef %i.hs, i32 noundef %.5) #13
  br label %.loopexit

bb.as:                                            ; preds = %.thread
  %i.ht = and i32 %.5, 268435456
  %.not169 = icmp eq i32 %i.ht, 0
  br i1 %.not169, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hu = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i211 = icmp eq ptr %i.hu, null
  br i1 %.not.i211, label %__drm_to_dev.exit212, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hv = getelementptr i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8
  br label %__drm_to_dev.exit212

__drm_to_dev.exit212:                             ; preds = %bb.at, %bb.au
  %i.hx = phi ptr [ %i.hw, %bb.au ], [ null, %bb.at ]
  %i.hy = getelementptr i8, ptr %0, i64 296
  %i.hz = load ptr, ptr %i.hy, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.hx, i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef %i.hz, i32 noundef %.5) #10
  br label %.loopexit

bb.av:                                            ; preds = %bb.as
  %i.ia = lshr i32 %.5, 20
  %i.ib = and i32 %i.ia, 31                       ; 3 uses
  %i.ic = add nsw i32 %i.ib, -21
  %or.cond = icmp ult i32 %i.ic, -20
  br i1 %or.cond, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.id = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i213 = icmp eq ptr %i.id, null
  br i1 %.not.i213, label %__drm_to_dev.exit214, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ie = getelementptr i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8
  br label %__drm_to_dev.exit214

__drm_to_dev.exit214:                             ; preds = %bb.aw, %bb.ax
  %i.ig = phi ptr [ %i.if, %bb.ax ], [ null, %bb.aw ]
  %i.ih = getelementptr i8, ptr %0, i64 296
  %i.ii = load ptr, ptr %i.ih, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ig, i32 noundef 2, ptr noundef nonnull @.str.19, ptr noundef %i.ii, i32 noundef %i.ib) #10
  br label %.loopexit

bb.ay:                                            ; preds = %bb.av
  %spec.select = call i32 @llvm.umin.i32(i32 %i.ib, i32 %4) ; 4 uses
  %.not236 = icmp eq i32 %spec.select, 0
  br i1 %.not236, label %.loopexit, label %.lr.ph.preheader.i216.preheader

.lr.ph.preheader.i216.preheader:                  ; preds = %bb.ay
  %i.ij = zext nneg i32 %spec.select to i64
  br label %.lr.ph.preheader.i216

.lr.ph.preheader.i216:                            ; preds = %.lr.ph.preheader.i216.preheader, %intel_dp_aux_unpack.exit
  %indvar275 = phi i32 [ 0, %.lr.ph.preheader.i216.preheader ], [ %indvar.next276, %intel_dp_aux_unpack.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.i216.preheader ], [ %indvars.iv.next, %intel_dp_aux_unpack.exit ] ; 3 uses
  %i.ik = shl i32 %indvar275, 2
  %i.il = sub i32 %spec.select, %i.ik
  %i.im = call i32 @llvm.umin.i32(i32 %i.il, i32 4) ; 2 uses
  %umin277 = zext nneg i32 %i.im to i64           ; 2 uses
  %i.in = getelementptr i8, ptr %7, i64 %indvars.iv
  %i.io = load i32, ptr %i.in, align 4            ; 3 uses
  call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.io) #10
  %.val.i215 = load ptr, ptr %i.e, align 8
  %i.ip = call ptr @to_intel_uncore(ptr noundef %.val.i215) #10 ; 2 uses
  %i.iq = getelementptr i8, ptr %i.ip, i64 144
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = call i32 %i.ir(ptr noundef %i.ip, i32 %i.io, i1 noundef zeroext true) #10, !inline_history !55 ; 5 uses
  call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.io) #10
  %i.it = getelementptr i8, ptr %3, i64 %indvars.iv ; 5 uses
  %xtraiter278 = and i64 %umin277, 3              ; 3 uses
  %i.iu = add nsw i32 %i.im, -1
  %i.iv = icmp ult i32 %i.iu, 3
  br i1 %i.iv, label %.lr.ph.i218.epil.preheader, label %.lr.ph.preheader.i216.new

.lr.ph.preheader.i216.new:                        ; preds = %.lr.ph.preheader.i216
  %unroll_iter282 = and i64 %umin277, 4
  %i.iw = trunc i32 %i.is to i8
  br label %.lr.ph.i218

.lr.ph.i218:                                      ; preds = %.lr.ph.i218, %.lr.ph.preheader.i216.new
  %indvars.iv.i219 = phi i64 [ 0, %.lr.ph.preheader.i216.new ], [ %indvars.iv.next.i221.3, %.lr.ph.i218 ] ; 6 uses
  %niter283 = phi i64 [ 0, %.lr.ph.preheader.i216.new ], [ %niter283.next.3, %.lr.ph.i218 ]
  %indvars.iv.tr.i220 = trunc i64 %indvars.iv.i219 to i32
  %i.ix = shl i32 %indvars.iv.tr.i220, 3
  %i.iy = sub i32 24, %i.ix
  %i.iz = lshr i32 %i.is, %i.iy
  %i.ja = trunc nuw i32 %i.iz to i8
  %i.jb = getelementptr i8, ptr %i.it, i64 %indvars.iv.i219
  store i8 %i.ja, ptr %i.jb, align 1
  %indvars.iv.next.i221 = or disjoint i64 %indvars.iv.i219, 1 ; 2 uses
  %indvars.iv.tr.i220.1 = trunc i64 %indvars.iv.next.i221 to i32
  %i.jc = shl i32 %indvars.iv.tr.i220.1, 3
  %i.jd = sub i32 24, %i.jc
  %i.je = lshr i32 %i.is, %i.jd
  %i.jf = trunc i32 %i.je to i8
  %i.jg = getelementptr i8, ptr %i.it, i64 %indvars.iv.next.i221
  store i8 %i.jf, ptr %i.jg, align 1
  %indvars.iv.next.i221.1 = or disjoint i64 %indvars.iv.i219, 2 ; 2 uses
  %indvars.iv.tr.i220.2 = trunc i64 %indvars.iv.next.i221.1 to i32
  %i.jh = shl i32 %indvars.iv.tr.i220.2, 3
  %i.ji = sub i32 24, %i.jh
  %i.jj = lshr i32 %i.is, %i.ji
  %i.jk = trunc i32 %i.jj to i8
  %i.jl = getelementptr i8, ptr %i.it, i64 %indvars.iv.next.i221.1
  store i8 %i.jk, ptr %i.jl, align 1
  %i.jm = getelementptr i8, ptr %i.it, i64 %indvars.iv.i219
  %i.jn = getelementptr i8, ptr %i.jm, i64 3
  store i8 %i.iw, ptr %i.jn, align 1
  %indvars.iv.next.i221.3 = add nuw nsw i64 %indvars.iv.i219, 4 ; 2 uses
  %niter283.next.3 = add i64 %niter283, 4         ; 2 uses
  %niter283.ncmp.3 = icmp eq i64 %niter283.next.3, %unroll_iter282
  br i1 %niter283.ncmp.3, label %intel_dp_aux_unpack.exit.unr-lcssa, label %.lr.ph.i218, !llvm.loop !68

intel_dp_aux_unpack.exit.unr-lcssa:               ; preds = %.lr.ph.i218
  %lcmp.mod280.not = icmp eq i64 %xtraiter278, 0
  br i1 %lcmp.mod280.not, label %intel_dp_aux_unpack.exit, label %.lr.ph.i218.epil.preheader

.lr.ph.i218.epil.preheader:                       ; preds = %intel_dp_aux_unpack.exit.unr-lcssa, %.lr.ph.preheader.i216
  %indvars.iv.i219.epil.init = phi i64 [ 0, %.lr.ph.preheader.i216 ], [ %indvars.iv.next.i221.3, %intel_dp_aux_unpack.exit.unr-lcssa ]
  %lcmp.mod281 = icmp ne i64 %xtraiter278, 0
  call void @llvm.assume(i1 %lcmp.mod281)
  br label %.lr.ph.i218.epil

.lr.ph.i218.epil:                                 ; preds = %.lr.ph.i218.epil, %.lr.ph.i218.epil.preheader
  %indvars.iv.i219.epil = phi i64 [ %indvars.iv.i219.epil.init, %.lr.ph.i218.epil.preheader ], [ %indvars.iv.next.i221.epil, %.lr.ph.i218.epil ] ; 3 uses
  %epil.iter279 = phi i64 [ 0, %.lr.ph.i218.epil.preheader ], [ %epil.iter279.next, %.lr.ph.i218.epil ]
  %indvars.iv.tr.i220.epil = trunc i64 %indvars.iv.i219.epil to i32
  %i.jo = shl i32 %indvars.iv.tr.i220.epil, 3
  %i.jp = sub i32 24, %i.jo
  %i.jq = lshr i32 %i.is, %i.jp
  %i.jr = trunc i32 %i.jq to i8
  %i.js = getelementptr i8, ptr %i.it, i64 %indvars.iv.i219.epil
  store i8 %i.jr, ptr %i.js, align 1
  %indvars.iv.next.i221.epil = add nuw nsw i64 %indvars.iv.i219.epil, 1
  %epil.iter279.next = add i64 %epil.iter279, 1   ; 2 uses
  %epil.iter279.cmp.not = icmp eq i64 %epil.iter279.next, %xtraiter278
  br i1 %epil.iter279.cmp.not, label %intel_dp_aux_unpack.exit, label %.lr.ph.i218.epil, !llvm.loop !69

intel_dp_aux_unpack.exit:                         ; preds = %.lr.ph.i218.epil, %intel_dp_aux_unpack.exit.unr-lcssa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.jt = icmp samesign ult i64 %indvars.iv.next, %i.ij
  %indvar.next276 = add i32 %indvar275, 1
  br i1 %i.jt, label %.lr.ph.preheader.i216, label %.loopexit, !llvm.loop !70

.loopexit:                                        ; preds = %intel_dp_aux_unpack.exit, %bb.ay, %dev_name.exit200, %bb.p, %dev_name.exit184, %__drm_to_dev.exit214, %__drm_to_dev.exit212, %__drm_to_dev.exit210, %__drm_to_dev.exit208
  %.0147 = phi i32 [ -16, %__drm_to_dev.exit208 ], [ -16, %bb.p ], [ -5, %__drm_to_dev.exit210 ], [ -110, %__drm_to_dev.exit212 ], [ -16, %__drm_to_dev.exit214 ], [ -7, %dev_name.exit200 ], [ -16, %dev_name.exit184 ], [ 0, %bb.ay ], [ %spec.select, %intel_dp_aux_unpack.exit ]
  call void @cpu_latency_qos_update_request(ptr noundef %i.ah, i32 noundef -1) #10
  br i1 %i.ag, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.loopexit
  call void @intel_pps_vdd_off_unlocked(ptr noundef %0, i1 noundef zeroext false) #10
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.loopexit
  %.not171 = icmp eq ptr %.0145, null
  br i1 %.not171, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ju = call ptr @intel_pps_unlock(ptr noundef %0, ptr noundef nonnull %.0145) #10 ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  call void @__intel_display_power_put_async(ptr noundef %i.e, i32 noundef %i.z, ptr noundef nonnull inttoptr (i64 -2 to ptr), i32 noundef -1) #10
  br label %bb.bd

bb.bd:                                            ; preds = %bb.d, %bb.bc
  %.1148 = phi i32 [ %.0147, %bb.bc ], [ -6, %bb.d ]
  call void @intel_digital_port_unlock(ptr noundef %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret i32 %.1148
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_digital_port_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_dp_is_edp(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_digital_port_connected_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_aux_power_domain(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_display_power_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_pps_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_pps_vdd_on_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpu_latency_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_pps_check_power_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_pps_vdd_off_unlocked(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_pps_unlock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_digital_port_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @to_intel_uncore(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_i915_reg_rw(ptr noundef, i1 noundef zeroext, i32, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dmc_wl_get(ptr noundef, i32) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dmc_wl_put(ptr noundef, i32) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_parent_irq_enabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @schedule_timeout(i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_de_wait_ms(ptr noundef, i32, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usleep_range_state(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__intel_display_power_put_async(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { nofree noredzone nounwind null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noredzone nounwind "no-builtin-wcslen" }
attributes #11 = { nounwind }
attributes #12 = { noredzone "no-builtin-wcslen" }
attributes #13 = { cold noredzone nounwind "no-builtin-wcslen" }
end_hunk_0
