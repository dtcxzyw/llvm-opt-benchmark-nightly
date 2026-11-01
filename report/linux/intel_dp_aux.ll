Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_dp_aux?download=true
inline.NumInlined: 128
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@intel_dp_aux_xfer:bb.a
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
  %i.bw = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.14, ptr @.str.7, i32 341, i32 2321, i64 16) #11, !srcloc !66
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
  br i1 %.not164233, label %.critedge._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge.preheader
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
  %i.cw = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, ptr @.str.7, i32 350, i32 2321, i64 16) #11, !srcloc !68
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
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.cw, ptr noundef %i.db, ptr noundef %.0.i198, ptr noundef @.str.15) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !69
  br label %.loopexit

.critedge.loopexit:                               ; preds = %bb.an
  %i.di = load ptr, ptr %i.ck, align 8
  %i.dj = add i32 %i.dm, 1
  %i.dk = call i32 %i.di(ptr noundef %0, i32 noundef %i.dm) #10 ; 2 uses
  %.not164 = icmp eq i32 %i.dk, 0
  br i1 %.not164, label %.critedge._crit_edge, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %.critedge.loopexit
  %i.dl = phi i32 [ %i.cm, %.lr.ph ], [ %i.dk, %.critedge.loopexit ]
  %i.dm = phi i32 [ 1, %.lr.ph ], [ %i.dj, %.critedge.loopexit ] ; 2 uses
  %i.dn = load ptr, ptr %i.cn, align 8
  %i.do = call i32 %i.dn(ptr noundef %0, i32 noundef %2, i32 noundef %i.dl) #10
  %i.dp = or i32 %i.do, %5
  br label %.preheader

.preheader:                                       ; preds = %bb.ab, %bb.an
  %.1151232 = phi i32 [ 0, %bb.ab ], [ %i.he, %bb.an ]
  br i1 %i.co, label %.lr.ph.preheader.i, label %._crit_edge

.lr.ph.preheader.i:                               ; preds = %.preheader, %intel_dp_aux_pack.exit.loopexit
  %indvar = phi i32 [ %indvar.next, %intel_dp_aux_pack.exit.loopexit ], [ 0, %.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %intel_dp_aux_pack.exit.loopexit ], [ 0, %.preheader ] ; 4 uses
  %i.dq = shl i32 %indvar, 2
  %i.dr = sub i32 %2, %i.dq
  %i.ds = call i32 @llvm.umin.i32(i32 %i.dr, i32 4)
  %i.dt = getelementptr i8, ptr %1, i64 %indvars.iv ; 5 uses
  %i.du = trunc i64 %indvars.iv to i32
  %i.dv = sub i32 %2, %i.du
  %i.dw = call i32 @llvm.umin.i32(i32 %i.dv, i32 4)
  %wide.trip.count.i = zext nneg i32 %i.dw to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.dx = add nsw i32 %i.ds, -1
  %i.dy = icmp ult i32 %i.dx, 3
  br i1 %i.dy, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 6 uses
  %.010.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ey, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.dz = getelementptr i8, ptr %i.dt, i64 %indvars.iv.i
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = zext i8 %i.ea to i32
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.ec = shl i32 %indvars.iv.tr.i, 3
  %i.ed = sub i32 24, %i.ec
  %i.ee = shl nuw i32 %i.eb, %i.ed
  %i.ef = or i32 %i.ee, %.010.i
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dt, i64 %indvars.iv.next.i
  %i.eh = load i8, ptr %i.eg, align 1
  %i.ei = zext i8 %i.eh to i32
  %indvars.iv.tr.i.1 = trunc i64 %indvars.iv.next.i to i32
  %i.ej = shl i32 %indvars.iv.tr.i.1, 3
  %i.ek = sub i32 24, %i.ej
  %i.el = shl nuw i32 %i.ei, %i.ek
  %i.em = or i32 %i.el, %i.ef
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.en = getelementptr i8, ptr %i.dt, i64 %indvars.iv.next.i.1
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = zext i8 %i.eo to i32
  %indvars.iv.tr.i.2 = trunc i64 %indvars.iv.next.i.1 to i32
  %i.eq = shl i32 %indvars.iv.tr.i.2, 3
  %i.er = sub i32 24, %i.eq
  %i.es = shl nuw i32 %i.ep, %i.er
  %i.et = or i32 %i.es, %i.em
  %i.eu = getelementptr i8, ptr %i.dt, i64 %indvars.iv.i
  %i.ev = getelementptr i8, ptr %i.eu, i64 3
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = zext i8 %i.ew to i32
  %i.ey = or i32 %i.et, %i.ex                     ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %intel_dp_aux_pack.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !49

intel_dp_aux_pack.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %intel_dp_aux_pack.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %intel_dp_aux_pack.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %intel_dp_aux_pack.exit.loopexit.unr-lcssa ]
  %.010.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ey, %intel_dp_aux_pack.exit.loopexit.unr-lcssa ]
  %lcmp.mod274 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod274)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 3 uses
  %.010.i.epil = phi i32 [ %.010.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.ff, %.lr.ph.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.ez = getelementptr i8, ptr %i.dt, i64 %indvars.iv.i.epil
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = zext i8 %i.fa to i32
  %indvars.iv.tr.i.epil = trunc i64 %indvars.iv.i.epil to i32
  %i.fc = shl i32 %indvars.iv.tr.i.epil, 3
  %i.fd = sub i32 24, %i.fc
  %i.fe = shl nuw i32 %i.fb, %i.fd
  %i.ff = or i32 %i.fe, %.010.i.epil              ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %intel_dp_aux_pack.exit.loopexit, label %.lr.ph.i.epil, !llvm.loop !50

intel_dp_aux_pack.exit.loopexit:                  ; preds = %.lr.ph.i.epil, %intel_dp_aux_pack.exit.loopexit.unr-lcssa
  %.lcssa = phi i32 [ %i.ey, %intel_dp_aux_pack.exit.loopexit.unr-lcssa ], [ %i.ff, %.lr.ph.i.epil ]
  %i.fg = getelementptr i8, ptr %7, i64 %indvars.iv
  %i.fh = load i32, ptr %i.fg, align 4            ; 3 uses
  call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.fh) #10
  %.val.i201 = load ptr, ptr %i.e, align 8
  %i.fi = call ptr @to_intel_uncore(ptr noundef %.val.i201) #10 ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 176
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef %i.fi, i32 %i.fh, i32 noundef %.lcssa, i1 noundef zeroext true) #10, !inline_history !51
  call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.fh) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.fl = icmp slt i64 %indvars.iv.next, %i.cq
  %indvar.next = add i32 %indvar, 1
  br i1 %i.fl, label %.lr.ph.preheader.i, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %intel_dp_aux_pack.exit.loopexit, %.preheader
  call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.h) #10
  %.val.i202 = load ptr, ptr %i.e, align 8
  %i.fm = call ptr @to_intel_uncore(ptr noundef %.val.i202) #10 ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 176
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef %i.fm, i32 %i.h, i32 noundef %i.dp, i1 noundef zeroext true) #10, !inline_history !51
  call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.h) #10
  %i.fp = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not.i203 = icmp eq ptr %i.fp, null
  br i1 %.not.i203, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  %i.fq = call ptr @__drm_to_display(ptr noundef nonnull %i.fp) #10
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge
  %i.fr = phi ptr [ %i.fq, %bb.ac ], [ null, %._crit_edge ] ; 7 uses
  %i.fs = load ptr, ptr %i.f, align 8
  %i.ft = call i32 %i.fs(ptr noundef %0) #10, !inline_history !53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !annotation !10
  %i.fu = call zeroext i1 @intel_parent_irq_enabled(ptr noundef %i.fr) #10
  br i1 %i.fu, label %bb.ae, label %.split.i

bb.ae:                                            ; preds = %bb.ad
  %i.fv = call i32 @__SCT__might_resched() #10    ; 0 uses
  %.val56.i = load ptr, ptr %i.fr, align 8
  %i.fw = call ptr @to_intel_uncore(ptr noundef %.val56.i) #10 ; 2 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 144
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = call i32 %i.fy(ptr noundef %i.fw, i32 %i.ft, i1 noundef zeroext false) #10, !inline_history !54 ; 2 uses
  store i32 %i.fz, ptr %i.a, align 4
  %i.ga = icmp sgt i32 %i.fz, -1
  br i1 %i.ga, label %intel_dp_aux_wait_done.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false), !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %6, i32 noundef 0) #10
  %i.gb = getelementptr i8, ptr %i.fr, i64 1080   ; 3 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %.048.i = phi i64 [ 11, %bb.af ], [ %spec.store.select9.i, %bb.ah ]
  %i.gc = call i64 @prepare_to_wait_event(ptr noundef %i.gb, ptr noundef nonnull %6, i32 noundef 2) #10 ; 0 uses
  %.val55.i = load ptr, ptr %i.fr, align 8
  %i.gd = call ptr @to_intel_uncore(ptr noundef %.val55.i) #10 ; 2 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 144
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = call i32 %i.gf(ptr noundef %i.gd, i32 %i.ft, i1 noundef zeroext false) #10, !inline_history !54 ; 2 uses
  store i32 %i.gg, ptr %i.a, align 4
  %i.gh = icmp slt i32 %i.gg, 0
  br i1 %i.gh, label %bb.ah, label %select.unfold.thread.i

select.unfold.thread.i:                           ; preds = %bb.ag
  call void @finish_wait(ptr noundef %i.gb, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %intel_dp_aux_wait_done.exit

bb.ah:                                            ; preds = %bb.ag
  %i.gi = call i64 @schedule_timeout(i64 noundef %.048.i) #10 ; 2 uses
  %.val.i205 = load ptr, ptr %i.fr, align 8
  %i.gj = call ptr @to_intel_uncore(ptr noundef %.val.i205) #10 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 144
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = call i32 %i.gl(ptr noundef %i.gj, i32 %i.ft, i1 noundef zeroext false) #10, !inline_history !54 ; 2 uses
  store i32 %i.gm, ptr %i.a, align 4
  %i.gn = icmp slt i32 %i.gm, 0                   ; 2 uses
  %i.go = icmp ne i64 %i.gi, 0
  %or.cond7.i = select i1 %i.gn, i1 true, i1 %i.go
  %spec.store.select9.i = select i1 %or.cond7.i, i64 %i.gi, i64 1 ; 2 uses
  %.not51.i = icmp ne i64 %spec.store.select9.i, 0 ; 2 uses
  %spec.select52.not.i = select i1 %i.gn, i1 %.not51.i, i1 false
  br i1 %spec.select52.not.i, label %bb.ag, label %select.unfold.i

.split.i:                                         ; preds = %bb.ad
  %i.gp = call i32 @intel_de_wait_ms(ptr noundef %i.fr, i32 %i.ft, i32 noundef -2147483648, i32 noundef 0, i32 noundef 10, ptr noundef nonnull %i.a) #10
  %.not60.i = icmp eq i32 %i.gp, -110
  br i1 %.not60.i, label %bb.ai, label %intel_dp_aux_wait_done.exit

select.unfold.i:                                  ; preds = %bb.ah
  call void @finish_wait(ptr noundef %i.gb, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br i1 %.not51.i, label %intel_dp_aux_wait_done.exit, label %bb.ai

bb.ai:                                            ; preds = %select.unfold.i, %.split.i
  %i.gq = load ptr, ptr %i.fr, align 8            ; 2 uses
  %.not.i.i204 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i204, label %__drm_to_dev.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gr = getelementptr i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.aj, %bb.ai
  %i.gt = phi ptr [ %i.gs, %bb.aj ], [ null, %bb.ai ]
  %i.gu = load ptr, ptr %i.cp, align 8
  %i.gv = load i32, ptr %i.a, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.gt, ptr noundef @.str.20, ptr noundef %i.gu, i32 noundef 10, i32 noundef %i.gv) #13
  br label %intel_dp_aux_wait_done.exit

intel_dp_aux_wait_done.exit:                      ; preds = %bb.ae, %select.unfold.thread.i, %.split.i, %select.unfold.i, %__drm_to_dev.exit.i
  %i.gw = load i32, ptr %i.a, align 4             ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.gx = or i32 %i.gw, 1375731712
  call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.h) #10
  %.val.i206 = load ptr, ptr %i.e, align 8
  %i.gy = call ptr @to_intel_uncore(ptr noundef %.val.i206) #10 ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 176
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef %i.gy, i32 %i.h, i32 noundef %i.gx, i1 noundef zeroext true) #10, !inline_history !51
  call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.h) #10
  %i.hb = and i32 %i.gw, 268435456
  %.not165 = icmp eq i32 %i.hb, 0
  br i1 %.not165, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %intel_dp_aux_wait_done.exit
  %i.hc = and i32 %i.gw, 33554432
  %.not166 = icmp eq i32 %i.hc, 0
  br i1 %.not166, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @usleep_range_state(i64 noundef 400, i64 noundef 500, i32 noundef 2) #10
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.hd = and i32 %i.gw, 1073741824
  %.not167 = icmp eq i32 %i.hd, 0
  br i1 %.not167, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am, %intel_dp_aux_wait_done.exit, %bb.al
  %i.he = add nuw nsw i32 %.1151232, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.he, 5
  br i1 %exitcond.not, label %.critedge.loopexit, label %.preheader, !llvm.loop !55

.critedge._crit_edge:                             ; preds = %.critedge.loopexit, %.critedge.preheader
  %.2155.lcssa = phi i32 [ %.lcssa238, %.critedge.preheader ], [ %i.gw, %.critedge.loopexit ] ; 3 uses
  %i.hf = and i32 %.2155.lcssa, 1073741824
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %.critedge._crit_edge
  %i.hh = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i207 = icmp eq ptr %i.hh, null
  br i1 %.not.i207, label %__drm_to_dev.exit208, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hi = getelementptr i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  br label %__drm_to_dev.exit208

__drm_to_dev.exit208:                             ; preds = %bb.ao, %bb.ap
  %i.hk = phi ptr [ %i.hj, %bb.ap ], [ null, %bb.ao ]
  %i.hl = getelementptr i8, ptr %0, i64 296
  %i.hm = load ptr, ptr %i.hl, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.hk, ptr noundef @.str.16, ptr noundef %i.hm, i32 noundef %.2155.lcssa) #13
  br label %.loopexit

.thread:                                          ; preds = %bb.am, %.critedge._crit_edge
  %.5 = phi i32 [ %.2155.lcssa, %.critedge._crit_edge ], [ %i.gw, %bb.am ] ; 5 uses
  %i.hn = and i32 %.5, 33554432
  %.not168 = icmp eq i32 %i.hn, 0
  br i1 %.not168, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.thread
  %i.ho = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i209 = icmp eq ptr %i.ho, null
  br i1 %.not.i209, label %__drm_to_dev.exit210, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hp = getelementptr i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8
  br label %__drm_to_dev.exit210

__drm_to_dev.exit210:                             ; preds = %bb.aq, %bb.ar
  %i.hr = phi ptr [ %i.hq, %bb.ar ], [ null, %bb.aq ]
  %i.hs = getelementptr i8, ptr %0, i64 296
  %i.ht = load ptr, ptr %i.hs, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.hr, ptr noundef @.str.17, ptr noundef %i.ht, i32 noundef %.5) #13
  br label %.loopexit

bb.as:                                            ; preds = %.thread
  %i.hu = and i32 %.5, 268435456
  %.not169 = icmp eq i32 %i.hu, 0
  br i1 %.not169, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hv = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i211 = icmp eq ptr %i.hv, null
  br i1 %.not.i211, label %__drm_to_dev.exit212, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hw = getelementptr i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8
  br label %__drm_to_dev.exit212

__drm_to_dev.exit212:                             ; preds = %bb.at, %bb.au
  %i.hy = phi ptr [ %i.hx, %bb.au ], [ null, %bb.at ]
  %i.hz = getelementptr i8, ptr %0, i64 296
  %i.ia = load ptr, ptr %i.hz, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.hy, i32 noundef 2, ptr noundef @.str.18, ptr noundef %i.ia, i32 noundef %.5) #10
  br label %.loopexit

bb.av:                                            ; preds = %bb.as
  %i.ib = lshr i32 %.5, 20
  %i.ic = and i32 %i.ib, 31                       ; 3 uses
  %i.id = add nsw i32 %i.ic, -21
  %or.cond = icmp ult i32 %i.id, -20
  br i1 %or.cond, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.ie = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i213 = icmp eq ptr %i.ie, null
  br i1 %.not.i213, label %__drm_to_dev.exit214, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.if = getelementptr i8, ptr %i.ie, i64 8
  %i.ig = load ptr, ptr %i.if, align 8
  br label %__drm_to_dev.exit214

__drm_to_dev.exit214:                             ; preds = %bb.aw, %bb.ax
  %i.ih = phi ptr [ %i.ig, %bb.ax ], [ null, %bb.aw ]
  %i.ii = getelementptr i8, ptr %0, i64 296
  %i.ij = load ptr, ptr %i.ii, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ih, i32 noundef 2, ptr noundef @.str.19, ptr noundef %i.ij, i32 noundef %i.ic) #10
  br label %.loopexit

bb.ay:                                            ; preds = %bb.av
  %spec.select = call i32 @llvm.umin.i32(i32 %i.ic, i32 %4) ; 5 uses
  %.not235 = icmp eq i32 %spec.select, 0
  br i1 %.not235, label %.loopexit, label %.lr.ph.preheader.i216.preheader

.lr.ph.preheader.i216.preheader:                  ; preds = %bb.ay
  %i.ik = zext nneg i32 %spec.select to i64
  br label %.lr.ph.preheader.i216

.lr.ph.preheader.i216:                            ; preds = %.lr.ph.preheader.i216.preheader, %intel_dp_aux_unpack.exit
  %indvar275 = phi i32 [ 0, %.lr.ph.preheader.i216.preheader ], [ %indvar.next276, %intel_dp_aux_unpack.exit ] ; 2 uses
  %indvars.iv241 = phi i64 [ 0, %.lr.ph.preheader.i216.preheader ], [ %indvars.iv.next242, %intel_dp_aux_unpack.exit ] ; 4 uses
  %i.il = shl i32 %indvar275, 2
  %i.im = sub i32 %spec.select, %i.il
  %i.in = call i32 @llvm.umin.i32(i32 %i.im, i32 4)
  %i.io = getelementptr i8, ptr %7, i64 %indvars.iv241
  %i.ip = load i32, ptr %i.io, align 4            ; 3 uses
  call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.ip) #10
  %.val.i215 = load ptr, ptr %i.e, align 8
  %i.iq = call ptr @to_intel_uncore(ptr noundef %.val.i215) #10 ; 2 uses
  %i.ir = getelementptr i8, ptr %i.iq, i64 144
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = call i32 %i.is(ptr noundef %i.iq, i32 %i.ip, i1 noundef zeroext true) #10, !inline_history !48 ; 5 uses
  call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.ip) #10
  %i.iu = getelementptr i8, ptr %3, i64 %indvars.iv241 ; 5 uses
  %i.iv = trunc i64 %indvars.iv241 to i32
  %i.iw = sub i32 %spec.select, %i.iv
  %i.ix = call i32 @llvm.umin.i32(i32 range(i32 -19, -2147483627) %i.iw, i32 4)
  %wide.trip.count.i217 = zext nneg i32 %i.ix to i64 ; 2 uses
  %xtraiter278 = and i64 %wide.trip.count.i217, 3 ; 3 uses
  %i.iy = add nsw i32 %i.in, -1
  %i.iz = icmp ult i32 %i.iy, 3
  br i1 %i.iz, label %.lr.ph.i218.epil.preheader, label %.lr.ph.preheader.i216.new

.lr.ph.preheader.i216.new:                        ; preds = %.lr.ph.preheader.i216
  %unroll_iter282 = and i64 %wide.trip.count.i217, 4
  %i.ja = trunc i32 %i.it to i8
  br label %.lr.ph.i218

.lr.ph.i218:                                      ; preds = %.lr.ph.i218, %.lr.ph.preheader.i216.new
  %indvars.iv.i219 = phi i64 [ 0, %.lr.ph.preheader.i216.new ], [ %indvars.iv.next.i221.3, %.lr.ph.i218 ] ; 6 uses
  %niter283 = phi i64 [ 0, %.lr.ph.preheader.i216.new ], [ %niter283.next.3, %.lr.ph.i218 ]
  %indvars.iv.tr.i220 = trunc i64 %indvars.iv.i219 to i32
  %i.jb = shl i32 %indvars.iv.tr.i220, 3
  %i.jc = sub i32 24, %i.jb
  %i.jd = lshr i32 %i.it, %i.jc
  %i.je = trunc nuw i32 %i.jd to i8
  %i.jf = getelementptr i8, ptr %i.iu, i64 %indvars.iv.i219
  store i8 %i.je, ptr %i.jf, align 1
  %indvars.iv.next.i221 = or disjoint i64 %indvars.iv.i219, 1 ; 2 uses
  %indvars.iv.tr.i220.1 = trunc i64 %indvars.iv.next.i221 to i32
  %i.jg = shl i32 %indvars.iv.tr.i220.1, 3
  %i.jh = sub i32 24, %i.jg
  %i.ji = lshr i32 %i.it, %i.jh
  %i.jj = trunc i32 %i.ji to i8
  %i.jk = getelementptr i8, ptr %i.iu, i64 %indvars.iv.next.i221
  store i8 %i.jj, ptr %i.jk, align 1
  %indvars.iv.next.i221.1 = or disjoint i64 %indvars.iv.i219, 2 ; 2 uses
  %indvars.iv.tr.i220.2 = trunc i64 %indvars.iv.next.i221.1 to i32
  %i.jl = shl i32 %indvars.iv.tr.i220.2, 3
  %i.jm = sub i32 24, %i.jl
  %i.jn = lshr i32 %i.it, %i.jm
  %i.jo = trunc i32 %i.jn to i8
  %i.jp = getelementptr i8, ptr %i.iu, i64 %indvars.iv.next.i221.1
  store i8 %i.jo, ptr %i.jp, align 1
  %i.jq = getelementptr i8, ptr %i.iu, i64 %indvars.iv.i219
  %i.jr = getelementptr i8, ptr %i.jq, i64 3
  store i8 %i.ja, ptr %i.jr, align 1
  %indvars.iv.next.i221.3 = add nuw nsw i64 %indvars.iv.i219, 4 ; 2 uses
  %niter283.next.3 = add i64 %niter283, 4         ; 2 uses
  %niter283.ncmp.3 = icmp eq i64 %niter283.next.3, %unroll_iter282
  br i1 %niter283.ncmp.3, label %intel_dp_aux_unpack.exit.unr-lcssa, label %.lr.ph.i218, !llvm.loop !56

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
  %i.js = shl i32 %indvars.iv.tr.i220.epil, 3
  %i.jt = sub i32 24, %i.js
  %i.ju = lshr i32 %i.it, %i.jt
  %i.jv = trunc i32 %i.ju to i8
  %i.jw = getelementptr i8, ptr %i.iu, i64 %indvars.iv.i219.epil
  store i8 %i.jv, ptr %i.jw, align 1
  %indvars.iv.next.i221.epil = add nuw nsw i64 %indvars.iv.i219.epil, 1
  %epil.iter279.next = add i64 %epil.iter279, 1   ; 2 uses
  %epil.iter279.cmp.not = icmp eq i64 %epil.iter279.next, %xtraiter278
  br i1 %epil.iter279.cmp.not, label %intel_dp_aux_unpack.exit, label %.lr.ph.i218.epil, !llvm.loop !57

intel_dp_aux_unpack.exit:                         ; preds = %.lr.ph.i218.epil, %intel_dp_aux_unpack.exit.unr-lcssa
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 4 ; 2 uses
  %i.jx = icmp samesign ult i64 %indvars.iv.next242, %i.ik
  %indvar.next276 = add i32 %indvar275, 1
  br i1 %i.jx, label %.lr.ph.preheader.i216, label %.loopexit, !llvm.loop !58

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
  %i.jy = call ptr @intel_pps_unlock(ptr noundef %0, ptr noundef nonnull %.0145) #10 ; 0 uses
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

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{i64 2161379350, i64 2161379377, i64 2161379766, i64 2161379799, i64 2161379834, i64 2161379850, i64 2161380691, i64 2161380749, i64 2161380798, i64 2161380608, i64 2161379909, i64 2161379941}
!14 = !{i64 2161377701}
!15 = !{i64 2161396791, i64 2161396818, i64 2161397207, i64 2161397240, i64 2161397275, i64 2161397291, i64 2161398132, i64 2161398190, i64 2161398239, i64 2161398049, i64 2161397350, i64 2161397382}
!16 = !{i64 2161395142}
!17 = !{i64 2161361020, i64 2161361047, i64 2161361436, i64 2161361469, i64 2161361504, i64 2161361520, i64 2161362361, i64 2161362419, i64 2161362468, i64 2161362278, i64 2161361579, i64 2161361611}
!18 = !{i64 2161359371}
!19 = !{i64 2161365662, i64 2161365689, i64 2161366078, i64 2161366111, i64 2161366146, i64 2161366162, i64 2161367003, i64 2161367061, i64 2161367110, i64 2161366920, i64 2161366221, i64 2161366253}
end_hunk_0
