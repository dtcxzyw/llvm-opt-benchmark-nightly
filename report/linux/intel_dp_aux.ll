Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_dp_aux?download=true
inline.NumInlined: 128
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@intel_dp_aux_xfer:bb.a
  %i.at = getelementptr i8, ptr %i.as, i64 144
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call i32 %i.au(ptr noundef %i.as, i32 %i.h, i1 noundef zeroext false) #10, !inline_history !47 ; 3 uses
  %i.aw = icmp sgt i32 %i.av, -1
  br i1 %i.aw, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @msleep(i32 noundef 1) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.lcssa239 = phi i32 [ %i.al, %bb.h ], [ %i.av, %bb.k ], [ %i.aq, %bb.i ], [ %i.av, %bb.j ] ; 2 uses
  %i.ax = phi i1 [ false, %bb.h ], [ true, %bb.k ], [ false, %bb.i ], [ false, %bb.j ]
  %i.ay = zext i32 %.lcssa239 to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #11
          to label %trace_i915_reg_rw.exit [label %arch_test_bit.exit.i.i], !srcloc !59

arch_test_bit.exit.i.i:                           ; preds = %bb.l
  %i.az = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #11, !srcloc !60
  %i.ba = zext i32 %i.az to i64
  %i.bb = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ba) #11, !srcloc !61 ; 2 uses
  %i.bc = icmp ult i8 %i.bb, 2
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = trunc nuw i8 %i.bb to i1
  br i1 %i.bd, label %bb.m, label %trace_i915_reg_rw.exit

bb.m:                                             ; preds = %arch_test_bit.exit.i.i
  %i.be = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.be, ptr elementtype(i64) %i.be) #11, !srcloc !62
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !63
  %i.bf = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.bh, i1 noundef zeroext false, i32 %i.h, i64 noundef range(i64 0, 4294967296) %i.ay, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !64
  %i.bj = getelementptr i8, ptr %i.be, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bj, ptr elementtype(i64) %i.bj) #11, !srcloc !65
  br label %trace_i915_reg_rw.exit

trace_i915_reg_rw.exit:                           ; preds = %bb.l, %arch_test_bit.exit.i.i, %bb.o
  br i1 %i.ax, label %bb.p, label %bb.v

bb.p:                                             ; preds = %trace_i915_reg_rw.exit
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.h) #10
  %.val.i = load ptr, ptr %i.e, align 8
  %i.bk = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 144
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call i32 %i.bm(ptr noundef %i.bk, i32 %i.h, i1 noundef zeroext true) #10, !inline_history !48 ; 3 uses
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
  %i.bw = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.14, ptr nonnull @.str.7, i32 341, i32 2321, i64 16) #11, !srcloc !66
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
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !67
  store i32 %i.bn, ptr %i.bo, align 8
  br label %.loopexit

bb.v:                                             ; preds = %trace_i915_reg_rw.exit
  %i.cj = icmp sgt i32 %2, 20
  br i1 %i.cj, label %bb.w, label %.critedge.preheader, !prof !11

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
  %i.cq = sext i32 %2 to i64
  br label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.cr = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i185 = icmp eq ptr %i.cr, null
  br i1 %.not.i185, label %__drm_to_dev.exit186, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = getelementptr i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  br label %__drm_to_dev.exit186

__drm_to_dev.exit186:                             ; preds = %bb.w, %bb.x
  %i.cu = phi ptr [ %i.ct, %bb.x ], [ null, %bb.w ]
  %i.cv = tail call ptr @dev_driver_string(ptr noundef %i.cu) #10 ; 0 uses
  %i.cw = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.10, ptr nonnull @.str.7, i32 350, i32 2321, i64 16) #11, !srcloc !68
  %i.cx = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i193 = icmp eq ptr %i.cx, null
  br i1 %.not.i193, label %__drm_to_dev.exit194, label %bb.y

bb.y:                                             ; preds = %__drm_to_dev.exit186
  %i.cy = getelementptr i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  br label %__drm_to_dev.exit194

__drm_to_dev.exit194:                             ; preds = %__drm_to_dev.exit186, %bb.y
  %i.da = phi ptr [ %i.cz, %bb.y ], [ null, %__drm_to_dev.exit186 ]
  %i.db = tail call ptr @dev_driver_string(ptr noundef %i.da) #10
  %i.dc = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i195 = icmp eq ptr %i.dc, null
  br i1 %.not.i195, label %__drm_to_dev.exit196, label %bb.z

bb.z:                                             ; preds = %__drm_to_dev.exit194
  %i.dd = getelementptr i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  br label %__drm_to_dev.exit196

__drm_to_dev.exit196:                             ; preds = %__drm_to_dev.exit194, %bb.z
  %i.df = phi ptr [ %i.de, %bb.z ], [ null, %__drm_to_dev.exit194 ] ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 80
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %.not.i197 = icmp eq ptr %i.dh, null
  br i1 %.not.i197, label %bb.aa, label %dev_name.exit200

bb.aa:                                            ; preds = %__drm_to_dev.exit196
  %.val.i199 = load ptr, ptr %i.df, align 8
  br label %dev_name.exit200

dev_name.exit200:                                 ; preds = %__drm_to_dev.exit196, %bb.aa
  %.0.i198 = phi ptr [ %.val.i199, %bb.aa ], [ %i.dh, %__drm_to_dev.exit196 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.cw, ptr noundef %i.db, ptr noundef %.0.i198, ptr noundef nonnull @.str.15) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !69
  br label %.loopexit

.critedge.loopexit:                               ; preds = %bb.an
  %i.di = load ptr, ptr %i.ck, align 8
  %i.dj = add i32 %i.dm, 1
  %i.dk = call i32 %i.di(ptr noundef %0, i32 noundef %i.dm) #10 ; 2 uses
  %.not164 = icmp eq i32 %i.dk, 0
  br i1 %.not164, label %.critedge._crit_edge, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph234, %.critedge.loopexit
  %i.dl = phi i32 [ %i.cm, %.lr.ph234 ], [ %i.dk, %.critedge.loopexit ]
  %i.dm = phi i32 [ 1, %.lr.ph234 ], [ %i.dj, %.critedge.loopexit ] ; 2 uses
  %i.dn = load ptr, ptr %i.cn, align 8
  %i.do = call i32 %i.dn(ptr noundef %0, i32 noundef %2, i32 noundef %i.dl) #10
  %i.dp = or i32 %i.do, %5
  br label %.preheader

.preheader:                                       ; preds = %bb.ab, %bb.an
  %.1151232 = phi i32 [ 0, %bb.ab ], [ %i.ha, %bb.an ]
  br i1 %i.co, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %intel_dp_aux_pack.exit
  %indvar.a = phi i32 [ %indvar.next, %intel_dp_aux_pack.exit ], [ 0, %.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %intel_dp_aux_pack.exit ], [ 0, %.preheader ] ; 4 uses
  %8 = getelementptr i8, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %1, i64 %indvars.iv  ; 5 uses
  %10 = sub nsw i64 %i.cq, %indvars.iv            ; 2 uses
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %.lr.ph.preheader.i, label %intel_dp_aux_pack.exit

.lr.ph.preheader.i:                               ; preds = %.lr.ph
  %i.dq = shl i32 %indvar.a, 2
  %i.dr = sub i32 %2, %i.dq
  %i.ds = call i32 @llvm.umin.i32(i32 %i.dr, i32 4)
  %i.dt = trunc nsw i64 %10 to i32
  %i.du = call i32 @llvm.umin.i32(i32 %i.dt, i32 4)
  %wide.trip.count.i = zext nneg i32 %i.du to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.dv = add nsw i32 %i.ds, -1
  %i.dw = icmp ult i32 %i.dv, 3
  br i1 %i.dw, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 6 uses
  %.010.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ew, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.dx = getelementptr i8, ptr %9, i64 %indvars.iv.i
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = zext i8 %i.dy to i32
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.ea = shl i32 %indvars.iv.tr.i, 3
  %i.eb = sub i32 24, %i.ea
  %i.ec = shl nuw i32 %i.dz, %i.eb
  %i.ed = or i32 %i.ec, %.010.i
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ee = getelementptr i8, ptr %9, i64 %indvars.iv.next.i
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = zext i8 %i.ef to i32
  %indvars.iv.tr.i.1 = trunc i64 %indvars.iv.next.i to i32
  %i.eh = shl i32 %indvars.iv.tr.i.1, 3
  %i.ei = sub i32 24, %i.eh
  %i.ej = shl nuw i32 %i.eg, %i.ei
  %i.ek = or i32 %i.ej, %i.ed
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.el = getelementptr i8, ptr %9, i64 %indvars.iv.next.i.1
  %i.em = load i8, ptr %i.el, align 1
  %i.en = zext i8 %i.em to i32
  %indvars.iv.tr.i.2 = trunc i64 %indvars.iv.next.i.1 to i32
  %i.eo = shl i32 %indvars.iv.tr.i.2, 3
  %i.ep = sub i32 24, %i.eo
  %i.eq = shl nuw i32 %i.en, %i.ep
  %i.er = or i32 %i.eq, %i.ek
  %i.es = getelementptr i8, ptr %9, i64 %indvars.iv.i
  %i.et = getelementptr i8, ptr %i.es, i64 3
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = zext i8 %i.eu to i32
  %i.ew = or i32 %i.er, %i.ev                     ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %intel_dp_aux_pack.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !49

intel_dp_aux_pack.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %intel_dp_aux_pack.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %intel_dp_aux_pack.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %intel_dp_aux_pack.exit.loopexit.unr-lcssa ]
  %.010.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ew, %intel_dp_aux_pack.exit.loopexit.unr-lcssa ]
  %lcmp.mod276 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod276)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 3 uses
  %.010.i.epil = phi i32 [ %.010.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.fd, %.lr.ph.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.ex = getelementptr i8, ptr %9, i64 %indvars.iv.i.epil
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = zext i8 %i.ey to i32
  %indvars.iv.tr.i.epil = trunc i64 %indvars.iv.i.epil to i32
  %i.fa = shl i32 %indvars.iv.tr.i.epil, 3
  %i.fb = sub i32 24, %i.fa
  %i.fc = shl nuw i32 %i.ez, %i.fb
  %i.fd = or i32 %i.fc, %.010.i.epil              ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %intel_dp_aux_pack.exit, label %.lr.ph.i.epil, !llvm.loop !50

intel_dp_aux_pack.exit:                           ; preds = %intel_dp_aux_pack.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %.lr.ph
  %.0.lcssa.i = phi i32 [ 0, %.lr.ph ], [ %i.ew, %intel_dp_aux_pack.exit.loopexit.unr-lcssa ], [ %i.fd, %.lr.ph.i.epil ]
  %i.fe = load i32, ptr %8, align 4               ; 3 uses
  call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.fe) #10
  %.val.i201 = load ptr, ptr %i.e, align 8
  %i.ff = call ptr @to_intel_uncore(ptr noundef %.val.i201) #10 ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 176
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef %i.ff, i32 %i.fe, i32 noundef %.0.lcssa.i, i1 noundef zeroext true) #10, !inline_history !51
  call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.fe) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %12 = trunc nuw i64 %indvars.iv.next to i32
  %13 = icmp sgt i32 %2, %12
  %indvar.next = add i32 %indvar.a, 1
  br i1 %13, label %.lr.ph, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %intel_dp_aux_pack.exit, %.preheader
  call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.h) #10
  %.val.i202 = load ptr, ptr %i.e, align 8
  %i.fi = call ptr @to_intel_uncore(ptr noundef %.val.i202) #10 ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 176
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef %i.fi, i32 %i.h, i32 noundef %i.dp, i1 noundef zeroext true) #10, !inline_history !51
  call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.h) #10
  %i.fl = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not.i203 = icmp eq ptr %i.fl, null
  br i1 %.not.i203, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  %i.fm = call ptr @__drm_to_display(ptr noundef nonnull %i.fl) #10
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge
  %i.fn = phi ptr [ %i.fm, %bb.ac ], [ null, %._crit_edge ] ; 7 uses
  %i.fo = load ptr, ptr %i.f, align 8
  %i.fp = call i32 %i.fo(ptr noundef %0) #10, !inline_history !53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !annotation !10
  %i.fq = call zeroext i1 @intel_parent_irq_enabled(ptr noundef %i.fn) #10
  br i1 %i.fq, label %bb.ae, label %.split.i

bb.ae:                                            ; preds = %bb.ad
  %i.fr = call i32 @__SCT__might_resched() #10    ; 0 uses
  %.val56.i = load ptr, ptr %i.fn, align 8
  %i.fs = call ptr @to_intel_uncore(ptr noundef %.val56.i) #10 ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fs, i64 144
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = call i32 %i.fu(ptr noundef %i.fs, i32 %i.fp, i1 noundef zeroext false) #10, !inline_history !54 ; 2 uses
  store i32 %i.fv, ptr %i.a, align 4
  %i.fw = icmp sgt i32 %i.fv, -1
  br i1 %i.fw, label %intel_dp_aux_wait_done.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false), !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %6, i32 noundef 0) #10
  %i.fx = getelementptr i8, ptr %i.fn, i64 1080   ; 3 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %.048.i = phi i64 [ 11, %bb.af ], [ %spec.store.select9.i, %bb.ah ]
  %i.fy = call i64 @prepare_to_wait_event(ptr noundef %i.fx, ptr noundef nonnull %6, i32 noundef 2) #10 ; 0 uses
  %.val55.i = load ptr, ptr %i.fn, align 8
  %i.fz = call ptr @to_intel_uncore(ptr noundef %.val55.i) #10 ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 144
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = call i32 %i.gb(ptr noundef %i.fz, i32 %i.fp, i1 noundef zeroext false) #10, !inline_history !54 ; 2 uses
  store i32 %i.gc, ptr %i.a, align 4
  %i.gd = icmp slt i32 %i.gc, 0
  br i1 %i.gd, label %bb.ah, label %select.unfold.thread.i

select.unfold.thread.i:                           ; preds = %bb.ag
  call void @finish_wait(ptr noundef %i.fx, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %intel_dp_aux_wait_done.exit

bb.ah:                                            ; preds = %bb.ag
  %i.ge = call i64 @schedule_timeout(i64 noundef %.048.i) #10 ; 2 uses
  %.val.i205 = load ptr, ptr %i.fn, align 8
  %i.gf = call ptr @to_intel_uncore(ptr noundef %.val.i205) #10 ; 2 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 144
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = call i32 %i.gh(ptr noundef %i.gf, i32 %i.fp, i1 noundef zeroext false) #10, !inline_history !54 ; 2 uses
  store i32 %i.gi, ptr %i.a, align 4
  %i.gj = icmp slt i32 %i.gi, 0                   ; 2 uses
  %i.gk = icmp ne i64 %i.ge, 0
  %or.cond7.i = select i1 %i.gj, i1 true, i1 %i.gk
  %spec.store.select9.i = select i1 %or.cond7.i, i64 %i.ge, i64 1 ; 2 uses
  %.not51.i = icmp ne i64 %spec.store.select9.i, 0 ; 2 uses
  %spec.select52.not.i = select i1 %i.gj, i1 %.not51.i, i1 false
  br i1 %spec.select52.not.i, label %bb.ag, label %select.unfold.i

.split.i:                                         ; preds = %bb.ad
  %i.gl = call i32 @intel_de_wait_ms(ptr noundef %i.fn, i32 %i.fp, i32 noundef -2147483648, i32 noundef 0, i32 noundef 10, ptr noundef nonnull %i.a) #10
  %.not60.i = icmp eq i32 %i.gl, -110
  br i1 %.not60.i, label %bb.ai, label %intel_dp_aux_wait_done.exit

select.unfold.i:                                  ; preds = %bb.ah
  call void @finish_wait(ptr noundef %i.fx, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br i1 %.not51.i, label %intel_dp_aux_wait_done.exit, label %bb.ai

bb.ai:                                            ; preds = %select.unfold.i, %.split.i
  %i.gm = load ptr, ptr %i.fn, align 8            ; 2 uses
  %.not.i.i204 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i204, label %__drm_to_dev.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gn = getelementptr i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.aj, %bb.ai
  %i.gp = phi ptr [ %i.go, %bb.aj ], [ null, %bb.ai ]
  %i.gq = load ptr, ptr %i.cp, align 8
  %i.gr = load i32, ptr %i.a, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.gp, ptr noundef nonnull @.str.20, ptr noundef %i.gq, i32 noundef 10, i32 noundef %i.gr) #13
  br label %intel_dp_aux_wait_done.exit

intel_dp_aux_wait_done.exit:                      ; preds = %bb.ae, %select.unfold.thread.i, %.split.i, %select.unfold.i, %__drm_to_dev.exit.i
  %i.gs = load i32, ptr %i.a, align 4             ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.gt = or i32 %i.gs, 1375731712
  call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.h) #10
  %.val.i206 = load ptr, ptr %i.e, align 8
  %i.gu = call ptr @to_intel_uncore(ptr noundef %.val.i206) #10 ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 176
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef %i.gu, i32 %i.h, i32 noundef %i.gt, i1 noundef zeroext true) #10, !inline_history !51
  call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.h) #10
  %i.gx = and i32 %i.gs, 268435456
  %.not165 = icmp eq i32 %i.gx, 0
  br i1 %.not165, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %intel_dp_aux_wait_done.exit
  %i.gy = and i32 %i.gs, 33554432
  %.not166 = icmp eq i32 %i.gy, 0
  br i1 %.not166, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @usleep_range_state(i64 noundef 400, i64 noundef 500, i32 noundef 2) #10
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.gz = and i32 %i.gs, 1073741824
  %.not167 = icmp eq i32 %i.gz, 0
  br i1 %.not167, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am, %intel_dp_aux_wait_done.exit, %bb.al
  %i.ha = add nuw nsw i32 %.1151232, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ha, 5
  br i1 %exitcond.not, label %.critedge.loopexit, label %.preheader, !llvm.loop !55

.critedge._crit_edge:                             ; preds = %.critedge.loopexit, %.critedge.preheader
  %.2155.lcssa = phi i32 [ %.lcssa239, %.critedge.preheader ], [ %i.gs, %.critedge.loopexit ] ; 3 uses
  %i.hb = and i32 %.2155.lcssa, 1073741824
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %.critedge._crit_edge
  %i.hd = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i207 = icmp eq ptr %i.hd, null
  br i1 %.not.i207, label %__drm_to_dev.exit208, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.he = getelementptr i8, ptr %i.hd, i64 8
  %i.hf = load ptr, ptr %i.he, align 8
  br label %__drm_to_dev.exit208

__drm_to_dev.exit208:                             ; preds = %bb.ao, %bb.ap
  %i.hg = phi ptr [ %i.hf, %bb.ap ], [ null, %bb.ao ]
  %i.hh = getelementptr i8, ptr %0, i64 296
  %i.hi = load ptr, ptr %i.hh, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.hg, ptr noundef nonnull @.str.16, ptr noundef %i.hi, i32 noundef %.2155.lcssa) #13
  br label %.loopexit

.thread:                                          ; preds = %bb.am, %.critedge._crit_edge
  %.5 = phi i32 [ %.2155.lcssa, %.critedge._crit_edge ], [ %i.gs, %bb.am ] ; 5 uses
  %i.hj = and i32 %.5, 33554432
  %.not168 = icmp eq i32 %i.hj, 0
  br i1 %.not168, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.thread
  %i.hk = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i209 = icmp eq ptr %i.hk, null
  br i1 %.not.i209, label %__drm_to_dev.exit210, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hl = getelementptr i8, ptr %i.hk, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8
  br label %__drm_to_dev.exit210

__drm_to_dev.exit210:                             ; preds = %bb.aq, %bb.ar
  %i.hn = phi ptr [ %i.hm, %bb.ar ], [ null, %bb.aq ]
  %i.ho = getelementptr i8, ptr %0, i64 296
  %i.hp = load ptr, ptr %i.ho, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.hn, ptr noundef nonnull @.str.17, ptr noundef %i.hp, i32 noundef %.5) #13
  br label %.loopexit

bb.as:                                            ; preds = %.thread
  %i.hq = and i32 %.5, 268435456
  %.not169 = icmp eq i32 %i.hq, 0
  br i1 %.not169, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hr = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i211 = icmp eq ptr %i.hr, null
  br i1 %.not.i211, label %__drm_to_dev.exit212, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hs = getelementptr i8, ptr %i.hr, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8
  br label %__drm_to_dev.exit212

__drm_to_dev.exit212:                             ; preds = %bb.at, %bb.au
  %i.hu = phi ptr [ %i.ht, %bb.au ], [ null, %bb.at ]
  %i.hv = getelementptr i8, ptr %0, i64 296
  %i.hw = load ptr, ptr %i.hv, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.hu, i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef %i.hw, i32 noundef %.5) #10
  br label %.loopexit

bb.av:                                            ; preds = %bb.as
  %i.hx = lshr i32 %.5, 20
  %i.hy = and i32 %i.hx, 31                       ; 3 uses
  %i.hz = add nsw i32 %i.hy, -21
  %or.cond = icmp ult i32 %i.hz, -20
  br i1 %or.cond, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.ia = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i213 = icmp eq ptr %i.ia, null
  br i1 %.not.i213, label %__drm_to_dev.exit214, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ib = getelementptr i8, ptr %i.ia, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8
  br label %__drm_to_dev.exit214

__drm_to_dev.exit214:                             ; preds = %bb.aw, %bb.ax
  %i.id = phi ptr [ %i.ic, %bb.ax ], [ null, %bb.aw ]
  %i.ie = getelementptr i8, ptr %0, i64 296
  %i.if = load ptr, ptr %i.ie, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.id, i32 noundef 2, ptr noundef nonnull @.str.19, ptr noundef %i.if, i32 noundef %i.hy) #10
  br label %.loopexit

bb.ay:                                            ; preds = %bb.av
  %spec.select = call i32 @llvm.umin.i32(i32 %i.hy, i32 %4) ; 5 uses
  %.not236 = icmp eq i32 %spec.select, 0
  br i1 %.not236, label %.loopexit, label %.lr.ph.preheader.i216.preheader

.lr.ph.preheader.i216.preheader:                  ; preds = %bb.ay
  %i.ig = zext nneg i32 %spec.select to i64
  br label %.lr.ph.preheader.i216

.lr.ph.preheader.i216:                            ; preds = %.lr.ph.preheader.i216.preheader, %intel_dp_aux_unpack.exit
  %indvar277 = phi i32 [ 0, %.lr.ph.preheader.i216.preheader ], [ %indvar.next278, %intel_dp_aux_unpack.exit ] ; 2 uses
  %indvars.iv242 = phi i64 [ 0, %.lr.ph.preheader.i216.preheader ], [ %indvars.iv.next243, %intel_dp_aux_unpack.exit ] ; 4 uses
  %i.ih = shl i32 %indvar277, 2
  %i.ii = sub i32 %spec.select, %i.ih
  %i.ij = call i32 @llvm.umin.i32(i32 %i.ii, i32 4)
  %i.ik = getelementptr i8, ptr %7, i64 %indvars.iv242
  %i.il = load i32, ptr %i.ik, align 4            ; 3 uses
  call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.il) #10
  %.val.i215 = load ptr, ptr %i.e, align 8
  %i.im = call ptr @to_intel_uncore(ptr noundef %.val.i215) #10 ; 2 uses
  %i.in = getelementptr i8, ptr %i.im, i64 144
  %i.io = load ptr, ptr %i.in, align 8
  %i.ip = call i32 %i.io(ptr noundef %i.im, i32 %i.il, i1 noundef zeroext true) #10, !inline_history !48 ; 5 uses
  call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.il) #10
  %i.iq = getelementptr i8, ptr %3, i64 %indvars.iv242 ; 5 uses
  %i.ir = trunc i64 %indvars.iv242 to i32
  %i.is = sub i32 %spec.select, %i.ir
  %i.it = call i32 @llvm.umin.i32(i32 range(i32 -19, -2147483627) %i.is, i32 4)
  %wide.trip.count.i217 = zext nneg i32 %i.it to i64 ; 2 uses
  %xtraiter280 = and i64 %wide.trip.count.i217, 3 ; 3 uses
  %i.iu = add nsw i32 %i.ij, -1
  %i.iv = icmp ult i32 %i.iu, 3
  br i1 %i.iv, label %.lr.ph.i218.epil.preheader, label %.lr.ph.preheader.i216.new

.lr.ph.preheader.i216.new:                        ; preds = %.lr.ph.preheader.i216
  %unroll_iter284 = and i64 %wide.trip.count.i217, 4
  %i.iw = trunc i32 %i.ip to i8
  br label %.lr.ph.i218

.lr.ph.i218:                                      ; preds = %.lr.ph.i218, %.lr.ph.preheader.i216.new
  %indvars.iv.i219 = phi i64 [ 0, %.lr.ph.preheader.i216.new ], [ %indvars.iv.next.i221.3, %.lr.ph.i218 ] ; 6 uses
  %niter285 = phi i64 [ 0, %.lr.ph.preheader.i216.new ], [ %niter285.next.3, %.lr.ph.i218 ]
  %indvars.iv.tr.i220 = trunc i64 %indvars.iv.i219 to i32
  %i.ix = shl i32 %indvars.iv.tr.i220, 3
  %i.iy = sub i32 24, %i.ix
  %i.iz = lshr i32 %i.ip, %i.iy
  %i.ja = trunc nuw i32 %i.iz to i8
  %i.jb = getelementptr i8, ptr %i.iq, i64 %indvars.iv.i219
  store i8 %i.ja, ptr %i.jb, align 1
  %indvars.iv.next.i221 = or disjoint i64 %indvars.iv.i219, 1 ; 2 uses
  %indvars.iv.tr.i220.1 = trunc i64 %indvars.iv.next.i221 to i32
  %i.jc = shl i32 %indvars.iv.tr.i220.1, 3
  %i.jd = sub i32 24, %i.jc
  %i.je = lshr i32 %i.ip, %i.jd
  %i.jf = trunc i32 %i.je to i8
  %i.jg = getelementptr i8, ptr %i.iq, i64 %indvars.iv.next.i221
  store i8 %i.jf, ptr %i.jg, align 1
  %indvars.iv.next.i221.1 = or disjoint i64 %indvars.iv.i219, 2 ; 2 uses
  %indvars.iv.tr.i220.2 = trunc i64 %indvars.iv.next.i221.1 to i32
  %i.jh = shl i32 %indvars.iv.tr.i220.2, 3
  %i.ji = sub i32 24, %i.jh
  %i.jj = lshr i32 %i.ip, %i.ji
  %i.jk = trunc i32 %i.jj to i8
  %i.jl = getelementptr i8, ptr %i.iq, i64 %indvars.iv.next.i221.1
  store i8 %i.jk, ptr %i.jl, align 1
  %i.jm = getelementptr i8, ptr %i.iq, i64 %indvars.iv.i219
  %i.jn = getelementptr i8, ptr %i.jm, i64 3
  store i8 %i.iw, ptr %i.jn, align 1
  %indvars.iv.next.i221.3 = add nuw nsw i64 %indvars.iv.i219, 4 ; 2 uses
  %niter285.next.3 = add i64 %niter285, 4         ; 2 uses
  %niter285.ncmp.3 = icmp eq i64 %niter285.next.3, %unroll_iter284
  br i1 %niter285.ncmp.3, label %intel_dp_aux_unpack.exit.unr-lcssa, label %.lr.ph.i218, !llvm.loop !56

intel_dp_aux_unpack.exit.unr-lcssa:               ; preds = %.lr.ph.i218
  %lcmp.mod282.not = icmp eq i64 %xtraiter280, 0
  br i1 %lcmp.mod282.not, label %intel_dp_aux_unpack.exit, label %.lr.ph.i218.epil.preheader

.lr.ph.i218.epil.preheader:                       ; preds = %intel_dp_aux_unpack.exit.unr-lcssa, %.lr.ph.preheader.i216
  %indvars.iv.i219.epil.init = phi i64 [ 0, %.lr.ph.preheader.i216 ], [ %indvars.iv.next.i221.3, %intel_dp_aux_unpack.exit.unr-lcssa ]
  %lcmp.mod283 = icmp ne i64 %xtraiter280, 0
  call void @llvm.assume(i1 %lcmp.mod283)
  br label %.lr.ph.i218.epil

.lr.ph.i218.epil:                                 ; preds = %.lr.ph.i218.epil, %.lr.ph.i218.epil.preheader
  %indvars.iv.i219.epil = phi i64 [ %indvars.iv.i219.epil.init, %.lr.ph.i218.epil.preheader ], [ %indvars.iv.next.i221.epil, %.lr.ph.i218.epil ] ; 3 uses
  %epil.iter281 = phi i64 [ 0, %.lr.ph.i218.epil.preheader ], [ %epil.iter281.next, %.lr.ph.i218.epil ]
  %indvars.iv.tr.i220.epil = trunc i64 %indvars.iv.i219.epil to i32
  %i.jo = shl i32 %indvars.iv.tr.i220.epil, 3
  %i.jp = sub i32 24, %i.jo
  %i.jq = lshr i32 %i.ip, %i.jp
  %i.jr = trunc i32 %i.jq to i8
  %i.js = getelementptr i8, ptr %i.iq, i64 %indvars.iv.i219.epil
  store i8 %i.jr, ptr %i.js, align 1
  %indvars.iv.next.i221.epil = add nuw nsw i64 %indvars.iv.i219.epil, 1
  %epil.iter281.next = add i64 %epil.iter281, 1   ; 2 uses
  %epil.iter281.cmp.not = icmp eq i64 %epil.iter281.next, %xtraiter280
  br i1 %epil.iter281.cmp.not, label %intel_dp_aux_unpack.exit, label %.lr.ph.i218.epil, !llvm.loop !57

intel_dp_aux_unpack.exit:                         ; preds = %.lr.ph.i218.epil, %intel_dp_aux_unpack.exit.unr-lcssa
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 4 ; 2 uses
  %i.jt = icmp samesign ult i64 %indvars.iv.next243, %i.ig
  %indvar.next278 = add i32 %indvar277, 1
  br i1 %i.jt, label %.lr.ph.preheader.i216, label %.loopexit, !llvm.loop !58

.loopexit:                                        ; preds = %intel_dp_aux_unpack.exit, %bb.ay, %dev_name.exit200, %bb.p, %dev_name.exit184, %__drm_to_dev.exit214, %__drm_to_dev.exit212, %__drm_to_dev.exit210, %__drm_to_dev.exit208
  %.0147 = phi i32 [ -16, %__drm_to_dev.exit208 ], [ -16, %bb.p ], [ -5, %__drm_to_dev.exit210 ], [ -110, %__drm_to_dev.exit212 ], [ -16, %__drm_to_dev.exit214 ], [ -7, %dev_name.exit200 ], [ -16, %dev_name.exit184 ], [ 0, %bb.ay ], [ %spec.select, %intel_dp_aux_unpack.exit ]
  call void @cpu_latency_qos_update_request(ptr noundef %i.ah, i32 noundef -1) #10
end_hunk_0
