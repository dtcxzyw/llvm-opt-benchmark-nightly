inline.NumInlined: 1324
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@intel_atomic_check:bb.a

bb.dl:                                            ; preds = %bb.dk
  %i.qw = getelementptr i8, ptr %i.qu, i64 24
  %i.qx = load ptr, ptr %i.qw, align 8            ; 4 uses
  %i.qy = getelementptr i8, ptr %i.qx, i64 8
  %i.qz = load ptr, ptr %i.qy, align 8
  %.not27.i.i.i.i = icmp eq ptr %i.qz, %.078.i.i
  br i1 %.not27.i.i.i.i, label %bb.dm, label %.thread.i.i.i.i

bb.dm:                                            ; preds = %bb.dl
  %i.ra = load ptr, ptr %i.qi, align 8
  %i.rb = load ptr, ptr %i.ra, align 8            ; 2 uses
  %.not.i.i.i154.i.i = icmp eq ptr %i.rb, null
  br i1 %.not.i.i.i154.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.rc = call ptr @__drm_to_display(ptr noundef nonnull %i.rb) #24
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.rd = phi ptr [ %i.rc, %bb.dn ], [ null, %bb.dm ]
  %i.re = load ptr, ptr %i.qx, align 8            ; 3 uses
  %i.rf = getelementptr i8, ptr %i.re, i64 200    ; 2 uses
  %i.rg = load i32, ptr %i.rf, align 8            ; 2 uses
  %.not38.i.i.i.i.i = icmp eq i32 %i.rg, 0
  %..i30.i.i.i.i = select i1 %.not38.i.i.i.i.i, i32 8, i32 %i.rg ; 2 uses
  switch i32 %..i30.i.i.i.i, label %bpc_to_bpp.exit.i.i.i.i.i [
    i32 6, label %bb.ds
    i32 7, label %bb.ds
    i32 8, label %bb.dp
    i32 9, label %bb.dp
    i32 10, label %bb.dq
    i32 11, label %bb.dq
    i32 12, label %bb.dr
    i32 13, label %bb.dr
    i32 14, label %bb.dr
    i32 15, label %bb.dr
    i32 16, label %bb.dr
  ]

bb.dp:                                            ; preds = %bb.do, %bb.do
  br label %bb.ds

bb.dq:                                            ; preds = %bb.do, %bb.do
  br label %bb.ds

bb.dr:                                            ; preds = %bb.do, %bb.do, %bb.do, %bb.do, %bb.do
  br label %bb.ds

bpc_to_bpp.exit.i.i.i.i.i:                        ; preds = %bb.do
  %i.rh = sext i32 %..i30.i.i.i.i to i64
  %i.ri = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.12, ptr nonnull @.str.1, i32 4354, i32 2321, i64 16) #25, !srcloc !285
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ri, ptr noundef nonnull @.str.275, i64 noundef %i.rh) #24
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !286
  br label %intel_modeset_pipe_config.exit.thread.i.i

bb.ds:                                            ; preds = %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.do
  %.0.i.ph.i.i.i.i.i = phi i32 [ 18, %bb.do ], [ 18, %bb.do ], [ 30, %bb.dq ], [ 24, %bb.dp ], [ 36, %bb.dr ]
  %i.rj = getelementptr i8, ptr %i.qx, i64 145
  %i.rk = load i8, ptr %i.rj, align 1             ; 2 uses
  switch i8 %i.rk, label %bpc_to_bpp.exit40.i.i.i.i.i [
    i8 6, label %bb.dw
    i8 7, label %bb.dw
    i8 8, label %bb.dt
    i8 9, label %bb.dt
    i8 10, label %bb.du
    i8 11, label %bb.du
    i8 12, label %bb.dv
    i8 13, label %bb.dv
    i8 14, label %bb.dv
    i8 15, label %bb.dv
    i8 16, label %bb.dv
  ]

bb.dt:                                            ; preds = %bb.ds, %bb.ds
  br label %bb.dw

bb.du:                                            ; preds = %bb.ds, %bb.ds
  br label %bb.dw

bb.dv:                                            ; preds = %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds
  br label %bb.dw

bpc_to_bpp.exit40.i.i.i.i.i:                      ; preds = %bb.ds
  %i.rl = zext i8 %i.rk to i64
  %i.rm = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.12, ptr nonnull @.str.1, i32 4354, i32 2321, i64 16) #25, !srcloc !285
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.rm, ptr noundef nonnull @.str.275, i64 noundef %i.rl) #24
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !286
  br label %intel_modeset_pipe_config.exit.thread.i.i

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.ds
  %.0.i39.ph.i.i.i.i.i = phi i32 [ 18, %bb.ds ], [ 18, %bb.ds ], [ 30, %bb.du ], [ 24, %bb.dt ], [ 36, %bb.dv ] ; 3 uses
  %i.rn = load i32, ptr %i.qp, align 8            ; 3 uses
  %i.ro = call i32 @llvm.smin.i32(i32 %i.rn, i32 %.0.i.ph.i.i.i.i.i)
  store i32 %i.ro, ptr %i.qs, align 4
  %i.rp = icmp slt i32 %.0.i39.ph.i.i.i.i.i, %i.rn
  br i1 %i.rp, label %bb.dx, label %.thread.i.i.i.i

bb.dx:                                            ; preds = %bb.dw
  %i.rq = load ptr, ptr %i.rd, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.rq, null
  br i1 %.not.i.i.i.i.i.i, label %__drm_to_dev.exit.i.i.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.rr = getelementptr i8, ptr %i.rq, i64 8
  %i.rs = load ptr, ptr %i.rr, align 8
  br label %__drm_to_dev.exit.i.i.i.i.i

__drm_to_dev.exit.i.i.i.i.i:                      ; preds = %bb.dy, %bb.dx
  %i.rt = phi ptr [ %i.rs, %bb.dy ], [ null, %bb.dx ]
  %i.ru = getelementptr i8, ptr %i.re, i64 64
  %i.rv = load i32, ptr %i.ru, align 8
  %i.rw = getelementptr i8, ptr %i.re, i64 96
  %i.rx = load ptr, ptr %i.rw, align 8
  %i.ry = load i32, ptr %i.rf, align 8
  %i.rz = mul i32 %i.ry, 3
  %i.sa = getelementptr i8, ptr %i.qx, i64 144
  %i.sb = load i8, ptr %i.sa, align 8
  %i.sc = zext i8 %i.sb to i32
  %i.sd = mul nuw nsw i32 %i.sc, 3
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.rt, i32 noundef 2, ptr noundef nonnull @.str.274, i32 noundef %i.rv, ptr noundef %i.rx, i32 noundef %.0.i39.ph.i.i.i.i.i, i32 noundef %i.rz, i32 noundef %i.sd, i32 noundef %i.rn) #24
  store i32 %.0.i39.ph.i.i.i.i.i, ptr %i.qp, align 8
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %__drm_to_dev.exit.i.i.i.i.i, %bb.dw, %bb.dl, %bb.dk
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.se = load i32, ptr %i.ef, align 8
  %i.sf = sext i32 %i.se to i64
  %i.sg = icmp slt i64 %indvars.iv.next.i.i.i.i, %i.sf
  br i1 %i.sg, label %bb.dk, label %.loopexit168.i.i.i, !llvm.loop !287

.loopexit168.i.i.i:                               ; preds = %.thread.i.i.i.i, %intel_display_max_pipe_bpp.exit.i.i.i.i
  %i.sh = load i8, ptr %3, align 4
  %i.si = zext i8 %i.sh to i64
  %i.sj = load i32, ptr %i.pp, align 8
  %i.sk = zext nneg i32 %i.sj to i64
  %i.sl = getelementptr i8, ptr %i.po, i64 4404
  %i.sm = lshr i64 %i.si, %i.sk
  %i.sn = trunc nuw i64 %i.sm to i8
  %i.so = and i8 %i.sn, 1
  store i8 %i.so, ptr %i.sl, align 4
  %i.sp = load i32, ptr %i.pp, align 8
  %i.sq = sext i32 %i.sp to i64
  %i.sr = getelementptr [4 x i8], ptr %i.eh, i64 %i.sq
  %i.ss = load i32, ptr %i.sr, align 4            ; 3 uses
  %i.st = getelementptr i8, ptr %i.po, i64 1232
  store i32 %i.ss, ptr %i.st, align 8
  %i.su = getelementptr i8, ptr %i.po, i64 1240   ; 3 uses
  %i.sv = load i32, ptr %i.su, align 8            ; 2 uses
  %i.sw = ashr i32 %i.ss, 4                       ; 2 uses
  %i.sx = icmp sgt i32 %i.sv, %i.sw
  br i1 %i.sx, label %bb.dz, label %bb.eb

bb.dz:                                            ; preds = %.loopexit168.i.i.i
  %i.sy = load ptr, ptr %i.pk, align 8            ; 2 uses
  %.not.i136.i.i.i = icmp eq ptr %i.sy, null
  br i1 %.not.i136.i.i.i, label %__drm_to_dev.exit.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.sz = getelementptr i8, ptr %i.sy, i64 8
  %i.ta = load ptr, ptr %i.sz, align 8
  br label %__drm_to_dev.exit.i.i.i

__drm_to_dev.exit.i.i.i:                          ; preds = %bb.ea, %bb.dz
  %i.tb = phi ptr [ %i.ta, %bb.ea ], [ null, %bb.dz ]
  %i.tc = getelementptr i8, ptr %.pn.i.i, i64 -1560
  %i.td = load i32, ptr %i.tc, align 8
  %i.te = getelementptr i8, ptr %.pn.i.i, i64 -1616
  %i.tf = load ptr, ptr %i.te, align 8
  %i.tg = and i32 %i.ss, 15
  %i.th = mul nuw nsw i32 %i.tg, 625
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.tb, i32 noundef 2, ptr noundef nonnull @.str.269, i32 noundef %i.td, ptr noundef %i.tf, i32 noundef %i.sw, i32 noundef %i.th) #24
  %i.ti = getelementptr i8, ptr %i.po, i64 898
  store i8 1, ptr %i.ti, align 2
  %.pre.i152.i.i = load i32, ptr %i.su, align 8
  br label %bb.eb

bb.eb:                                            ; preds = %__drm_to_dev.exit.i.i.i, %.loopexit168.i.i.i
  %i.tj = phi i32 [ %.pre.i152.i.i, %__drm_to_dev.exit.i.i.i ], [ %i.sv, %.loopexit168.i.i.i ]
  %i.tk = getelementptr i8, ptr %i.po, i64 376
  call void @drm_mode_get_hv_timing(ptr noundef %i.tk, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #24
  %i.tl = getelementptr i8, ptr %i.po, i64 856
  %i.tm = load i32, ptr %i.a, align 4
  %i.tn = load i32, ptr %i.b, align 4
  store i32 0, ptr %i.tl, align 8
  %i.to = getelementptr i8, ptr %i.po, i64 860
  store i32 0, ptr %i.to, align 4
  %i.tp = getelementptr i8, ptr %i.po, i64 864
  store i32 %i.tm, ptr %i.tp, align 8
  %i.tq = getelementptr i8, ptr %i.po, i64 868
  store i32 %i.tn, ptr %i.tq, align 4
  %i.tr = load i32, ptr %i.ef, align 8            ; 2 uses
  %i.ts = icmp sgt i32 %i.tr, 0
  br i1 %i.ts, label %.lr.ph.i149.i.i, label %._crit_edge.i147.i.i

.lr.ph.i149.i.i:                                  ; preds = %bb.eb
  %i.tt = getelementptr i8, ptr %i.po, i64 888    ; 2 uses
  br label %bb.ec

bb.ec:                                            ; preds = %.thread.i.i.i, %.lr.ph.i149.i.i
  %i.tu = phi i32 [ %i.tr, %.lr.ph.i149.i.i ], [ %i.vt, %.thread.i.i.i ] ; 3 uses
  %indvars.iv.i150.i.i = phi i64 [ 0, %.lr.ph.i149.i.i ], [ %indvars.iv.next.i151.i.i, %.thread.i.i.i ] ; 2 uses
  %i.tv = load ptr, ptr %i.eg, align 8            ; 2 uses
  %i.tw = getelementptr [40 x i8], ptr %i.tv, i64 %indvars.iv.i150.i.i ; 2 uses
  %i.tx = load ptr, ptr %i.tw, align 8
  %.not132.i.i.i = icmp eq ptr %i.tx, null
  br i1 %.not132.i.i.i, label %.thread.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ty = getelementptr i8, ptr %i.tw, i64 24
  %i.tz = load ptr, ptr %i.ty, align 8            ; 3 uses
  %i.ua = getelementptr i8, ptr %i.tz, i64 16
  %i.ub = load ptr, ptr %i.ua, align 8            ; 7 uses
  %i.uc = getelementptr i8, ptr %i.tz, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8
  %.not133.i.i.i = icmp eq ptr %i.ud, %.078.i.i
  br i1 %.not133.i.i.i, label %.lr.ph.i137.i.i.i, label %.thread.i.i.i

.lr.ph.i137.i.i.i:                                ; preds = %bb.ed
  %5 = getelementptr i8, ptr %i.ub, i64 160
  %i.ue = getelementptr i8, ptr %i.ub, i64 152    ; 2 uses
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.tu to i64
  br label %bb.ee

bb.ee:                                            ; preds = %encoders_cloneable.exit.thread.i.i.i.i, %.lr.ph.i137.i.i.i
  %indvars.iv.i138.i.i.i = phi i64 [ 0, %.lr.ph.i137.i.i.i ], [ %indvars.iv.next.i140.i.i.i, %encoders_cloneable.exit.thread.i.i.i.i ] ; 2 uses
  %i.uf = getelementptr [40 x i8], ptr %i.tv, i64 %indvars.iv.i138.i.i.i ; 2 uses
  %i.ug = load ptr, ptr %i.uf, align 8
  %.not.i139.i.i.i = icmp eq ptr %i.ug, null
  br i1 %.not.i139.i.i.i, label %encoders_cloneable.exit.thread.i.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.uh = getelementptr i8, ptr %i.uf, i64 24
  %i.ui = load ptr, ptr %i.uh, align 8            ; 2 uses
  %i.uj = getelementptr i8, ptr %i.ui, i64 8
  %i.uk = load ptr, ptr %i.uj, align 8
  %.not17.i.i.i.i = icmp eq ptr %i.uk, %.078.i.i
  br i1 %.not17.i.i.i.i, label %bb.eg, label %encoders_cloneable.exit.thread.i.i.i.i

bb.eg:                                            ; preds = %bb.ef
  %i.ul = getelementptr i8, ptr %i.ui, i64 16
  %i.um = load ptr, ptr %i.ul, align 8            ; 3 uses
  %i.un = icmp eq ptr %i.ub, %i.um
  br i1 %i.un, label %encoders_cloneable.exit.thread.i.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.uo = load i16, ptr %5, align 8
  %i.up = zext i16 %i.uo to i64
  %i.uq = getelementptr i8, ptr %i.um, i64 152
  %i.ur = load i32, ptr %i.uq, align 8
  %i.us = zext nneg i32 %i.ur to i64
  %i.ut = shl nuw i64 1, %i.us
  %i.uu = and i64 %i.ut, %i.up
  %.not.i.i141.i.i.i = icmp eq i64 %i.uu, 0
  br i1 %.not.i.i141.i.i.i, label %check_single_encoder_cloning.exit.i.i.i, label %encoders_cloneable.exit.i.i.i.i

encoders_cloneable.exit.i.i.i.i:                  ; preds = %bb.eh
  %i.uv = getelementptr i8, ptr %i.um, i64 160
  %i.uw = load i16, ptr %i.uv, align 8
  %i.ux = zext i16 %i.uw to i64
  %i.uy = load i32, ptr %i.ue, align 8
  %i.uz = zext nneg i32 %i.uy to i64
  %i.va = shl nuw i64 1, %i.uz
  %i.vb = and i64 %i.va, %i.ux
  %.not19.i.i.i.i = icmp eq i64 %i.vb, 0
  br i1 %.not19.i.i.i.i, label %check_single_encoder_cloning.exit.i.i.i, label %encoders_cloneable.exit.thread.i.i.i.i

encoders_cloneable.exit.thread.i.i.i.i:           ; preds = %encoders_cloneable.exit.i.i.i.i, %bb.eg, %bb.ef, %bb.ee
  %indvars.iv.next.i140.i.i.i = add nuw nsw i64 %indvars.iv.i138.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i140.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i, label %bb.ee, !llvm.loop !288

check_single_encoder_cloning.exit.i.i.i:          ; preds = %encoders_cloneable.exit.i.i.i.i, %bb.eh
  %i.vc = load ptr, ptr %i.pk, align 8            ; 2 uses
  %.not.i142.i.i.i = icmp eq ptr %i.vc, null
  br i1 %.not.i142.i.i.i, label %bb.el, label %bb.ei

bb.ei:                                            ; preds = %check_single_encoder_cloning.exit.i.i.i
  %i.vd = getelementptr i8, ptr %i.vc, i64 8
  %i.ve = load ptr, ptr %i.vd, align 8
  br label %bb.el

.loopexit.i.i.i:                                  ; preds = %encoders_cloneable.exit.thread.i.i.i.i
  %i.vf = getelementptr i8, ptr %i.ub, i64 272
  %i.vg = load ptr, ptr %i.vf, align 8            ; 2 uses
  %.not134.i.i.i = icmp eq ptr %i.vg, null
  br i1 %.not134.i.i.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %.loopexit.i.i.i
  %i.vh = call i32 %i.vg(ptr noundef %i.ub, ptr noundef %i.po, ptr noundef %i.tz) #24, !inline_history !289
  br label %.thread.sink.split.i.i.i

bb.ek:                                            ; preds = %.loopexit.i.i.i
  %i.vi = load i32, ptr %i.ue, align 8
  br label %.thread.sink.split.i.i.i

bb.el:                                            ; preds = %bb.ei, %check_single_encoder_cloning.exit.i.i.i
  %i.vj = phi ptr [ %i.ve, %bb.ei ], [ null, %check_single_encoder_cloning.exit.i.i.i ]
  %i.vk = getelementptr i8, ptr %i.ub, i64 24
  %i.vl = load i32, ptr %i.vk, align 8
  %i.vm = getelementptr i8, ptr %i.ub, i64 56
  %i.vn = load ptr, ptr %i.vm, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.vj, i32 noundef 2, ptr noundef nonnull @.str.270, i32 noundef %i.vl, ptr noundef %i.vn) #24
  br label %intel_modeset_pipe_config.exit.thread.i.i

.thread.sink.split.i.i.i:                         ; preds = %bb.ek, %bb.ej
  %.sink.i.i.i = phi i32 [ %i.vh, %bb.ej ], [ %i.vi, %bb.ek ]
  %i.vo = zext nneg i32 %.sink.i.i.i to i64
  %i.vp = shl nuw i64 1, %i.vo
  %i.vq = load i32, ptr %i.tt, align 8
  %i.vr = trunc i64 %i.vp to i32
  %i.vs = or i32 %i.vq, %i.vr
  store i32 %i.vs, ptr %i.tt, align 8
  %.pre360.i.i = load i32, ptr %i.ef, align 8
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.thread.sink.split.i.i.i, %bb.ed, %bb.ec
  %i.vt = phi i32 [ %.pre360.i.i, %.thread.sink.split.i.i.i ], [ %i.tu, %bb.ed ], [ %i.tu, %bb.ec ] ; 2 uses
  %indvars.iv.next.i151.i.i = add nuw nsw i64 %indvars.iv.i150.i.i, 1 ; 2 uses
  %i.vu = sext i32 %i.vt to i64
  %i.vv = icmp slt i64 %indvars.iv.next.i151.i.i, %i.vu
  br i1 %i.vv, label %bb.ec, label %._crit_edge.i147.i.i, !llvm.loop !290

._crit_edge.i147.i.i:                             ; preds = %.thread.i.i.i, %bb.eb
  %i.vw = getelementptr i8, ptr %i.po, i64 1320   ; 3 uses
  store i32 0, ptr %i.vw, align 8
  %i.vx = getelementptr i8, ptr %i.po, i64 1324   ; 2 uses
  store i32 1, ptr %i.vx, align 4
  call void @drm_mode_set_crtcinfo(ptr noundef %i.pt, i32 noundef 2) #24
  %i.vy = load i32, ptr %i.ef, align 8            ; 2 uses
  %i.vz = icmp sgt i32 %i.vy, 0
  br i1 %i.vz, label %.lr.ph177.i.i.i, label %._crit_edge178.i.i.i

.lr.ph177.i.i.i:                                  ; preds = %._crit_edge.i147.i.i, %bb.er
  %i.wa = phi i32 [ %i.wx, %bb.er ], [ %i.vy, %._crit_edge.i147.i.i ] ; 2 uses
  %indvars.iv185.i.i.i = phi i64 [ %indvars.iv.next186.i.i.i, %bb.er ], [ 0, %._crit_edge.i147.i.i ] ; 2 uses
  %i.wb = load ptr, ptr %i.eg, align 8
  %i.wc = getelementptr [40 x i8], ptr %i.wb, i64 %indvars.iv185.i.i.i ; 2 uses
  %i.wd = load ptr, ptr %i.wc, align 8
  %.not130.i.i.i = icmp eq ptr %i.wd, null
  br i1 %.not130.i.i.i, label %bb.er, label %bb.em

bb.em:                                            ; preds = %.lr.ph177.i.i.i
  %i.we = getelementptr i8, ptr %i.wc, i64 24
  %i.wf = load ptr, ptr %i.we, align 8            ; 3 uses
  %i.wg = getelementptr i8, ptr %i.wf, i64 16
  %i.wh = load ptr, ptr %i.wg, align 8            ; 4 uses
  %i.wi = getelementptr i8, ptr %i.wf, i64 8
  %i.wj = load ptr, ptr %i.wi, align 8
  %.not131.i.i.i = icmp eq ptr %i.wj, %.078.i.i
  br i1 %.not131.i.i.i, label %bb.en, label %bb.er

bb.en:                                            ; preds = %bb.em
  %i.wk = getelementptr i8, ptr %i.wh, i64 280
  %i.wl = load ptr, ptr %i.wk, align 8
  %i.wm = call i32 %i.wl(ptr noundef %i.wh, ptr noundef %i.po, ptr noundef %i.wf) #24, !inline_history !289 ; 4 uses
  %i.wn = icmp eq i32 %i.wm, -35
  br i1 %i.wn, label %intel_modeset_pipe_config.exit.thread.i.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.wo = icmp slt i32 %i.wm, 0
  br i1 %i.wo, label %bb.ep, label %._crit_edge188.i.i.i

._crit_edge188.i.i.i:                             ; preds = %bb.eo
  %.pre189.i.i.i = load i32, ptr %i.ef, align 8
  br label %bb.er

bb.ep:                                            ; preds = %bb.eo
  %i.wp = load ptr, ptr %i.pk, align 8            ; 2 uses
  %.not.i144.i.i.i = icmp eq ptr %i.wp, null
  br i1 %.not.i144.i.i.i, label %__drm_to_dev.exit145.i.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.wq = getelementptr i8, ptr %i.wp, i64 8
  %i.wr = load ptr, ptr %i.wq, align 8
  br label %__drm_to_dev.exit145.i.i.i

__drm_to_dev.exit145.i.i.i:                       ; preds = %bb.eq, %bb.ep
  %i.ws = phi ptr [ %i.wr, %bb.eq ], [ null, %bb.ep ]
  %i.wt = getelementptr i8, ptr %i.wh, i64 24
  %i.wu = load i32, ptr %i.wt, align 8
  %i.wv = getelementptr i8, ptr %i.wh, i64 56
  %i.ww = load ptr, ptr %i.wv, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ws, i32 noundef 2, ptr noundef nonnull @.str.271, i32 noundef %i.wu, ptr noundef %i.ww, i32 noundef %i.wm) #24
  br label %intel_modeset_pipe_config.exit.thread.i.i

bb.er:                                            ; preds = %._crit_edge188.i.i.i, %bb.em, %.lr.ph177.i.i.i
  %i.wx = phi i32 [ %.pre189.i.i.i, %._crit_edge188.i.i.i ], [ %i.wa, %bb.em ], [ %i.wa, %.lr.ph177.i.i.i ] ; 2 uses
  %indvars.iv.next186.i.i.i = add nuw nsw i64 %indvars.iv185.i.i.i, 1 ; 2 uses
  %i.wy = sext i32 %i.wx to i64
  %i.wz = icmp slt i64 %indvars.iv.next186.i.i.i, %i.wy
  br i1 %i.wz, label %.lr.ph177.i.i.i, label %._crit_edge178.i.i.i, !llvm.loop !291

._crit_edge178.i.i.i:                             ; preds = %bb.er, %._crit_edge.i147.i.i
  %i.xa = load i32, ptr %i.vw, align 8
  %.not129.i148.i.i = icmp eq i32 %i.xa, 0
  br i1 %.not129.i148.i.i, label %bb.es, label %bb.et

bb.es:                                            ; preds = %._crit_edge178.i.i.i
  %i.xb = getelementptr i8, ptr %i.po, i64 644
  %i.xc = load i32, ptr %i.xb, align 4
  %i.xd = load i32, ptr %i.vx, align 4
  %i.xe = mul i32 %i.xd, %i.xc
  store i32 %i.xe, ptr %i.vw, align 8
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %._crit_edge178.i.i.i
  %.val.i146.i.i.i = load ptr, ptr %i.k, align 8
  %.val28.i.i.i.i = load i32, ptr %i.lv, align 8
  %i.xf = zext i32 %.val28.i.i.i.i to i64
  %i.xg = getelementptr [56 x i8], ptr %.val.i146.i.i.i, i64 %i.xf
  %i.xh = getelementptr i8, ptr %i.xg, i64 24
  %i.xi = load ptr, ptr %i.xh, align 8            ; 61 uses
  %i.xj = call i32 @intel_dpll_crtc_compute_clock(ptr noundef %1, ptr noundef %.078.i.i) #24 ; 2 uses
  %.not.i147.i.i.i = icmp eq i32 %i.xj, 0
  br i1 %.not.i147.i.i.i, label %bb.eu, label %intel_crtc_compute_config.exit.i.i.i

bb.eu:                                            ; preds = %bb.et
  %i.xk = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not.i.i148.i.i.i = icmp eq ptr %i.xk, null
  br i1 %.not.i.i148.i.i.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.xl = call ptr @__drm_to_display(ptr noundef nonnull %i.xk) #24
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.xm = phi ptr [ %i.xl, %bb.ev ], [ null, %bb.eu ]
  %.val.i.i.i.i.i = load ptr, ptr %i.k, align 8
  %.val22.i.i.i.i.i = load i32, ptr %i.lv, align 8
  %i.xn = zext i32 %.val22.i.i.i.i.i to i64
  %i.xo = getelementptr [56 x i8], ptr %.val.i.i.i.i.i, i64 %i.xn
  %i.xp = getelementptr i8, ptr %i.xo, i64 24
  %i.xq = load ptr, ptr %i.xp, align 8            ; 5 uses
  %i.xr = load ptr, ptr %i.xq, align 8
  %i.xs = load ptr, ptr %i.xr, align 8            ; 2 uses
  %.not.i.i.i149.i.i.i = icmp eq ptr %i.xs, null
  br i1 %.not.i.i.i149.i.i.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.xt = call ptr @__drm_to_display(ptr noundef nonnull %i.xs) #24
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.xu = phi ptr [ %i.xt, %bb.ex ], [ null, %bb.ew ]
  %i.xv = getelementptr i8, ptr %i.xu, i64 1160
  %i.xw = load ptr, ptr %i.xv, align 8
  %i.xx = getelementptr i8, ptr %i.xw, i64 46
  %i.xy = load i16, ptr %i.xx, align 2
  %i.xz = and i16 %i.xy, 32
  %.not16.i.i.i.i.i.i = icmp eq i16 %i.xz, 0
  br i1 %.not16.i.i.i.i.i.i, label %intel_crtc_set_context_latency.exit.i.i.i.i.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.ya = call i32 @intel_psr_min_set_context_latency(ptr noundef %i.xq) #24
  %i.yb = call i32 @llvm.smax.i32(i32 %i.ya, i32 0)
  br label %intel_crtc_set_context_latency.exit.i.i.i.i.i

intel_crtc_set_context_latency.exit.i.i.i.i.i:    ; preds = %bb.ez, %bb.ey
  %.0.i.i.i.i.i.i = phi i32 [ %i.yb, %bb.ez ], [ 0, %bb.ey ] ; 3 uses
  %i.yc = getelementptr i8, ptr %i.xq, i64 666
  %i.yd = load i16, ptr %i.yc, align 2
  %i.ye = zext i16 %i.yd to i32
  %i.yf = getelementptr i8, ptr %i.xq, i64 664    ; 2 uses
  %i.yg = load i16, ptr %i.yf, align 8            ; 2 uses
  %i.yh = zext i16 %i.yg to i32
  %i.yi = xor i32 %i.yh, -1
  %i.yj = add nsw i32 %i.yi, %i.ye                ; 2 uses
  %i.yk = icmp sgt i32 %.0.i.i.i.i.i.i, %i.yj
  br i1 %i.yk, label %bb.fa, label %bb.fc

bb.fa:                                            ; preds = %intel_crtc_set_context_latency.exit.i.i.i.i.i
  %i.yl = load ptr, ptr %i.xm, align 8            ; 2 uses
  %.not.i23.i.i.i.i.i = icmp eq ptr %i.yl, null
  br i1 %.not.i23.i.i.i.i.i, label %intel_crtc_compute_set_context_latency.exit.i.i.i.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ym = getelementptr i8, ptr %i.yl, i64 8
  %i.yn = load ptr, ptr %i.ym, align 8
  br label %intel_crtc_compute_set_context_latency.exit.i.i.i.i

intel_crtc_compute_set_context_latency.exit.i.i.i.i: ; preds = %bb.fb, %bb.fa
  %i.yo = phi ptr [ %i.yn, %bb.fb ], [ null, %bb.fa ]
  %i.yp = getelementptr i8, ptr %.pn.i.i, i64 -1560
  %i.yq = load i32, ptr %i.yp, align 8
  %i.yr = getelementptr i8, ptr %.pn.i.i, i64 -1616
  %i.ys = load ptr, ptr %i.yr, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.yo, i32 noundef 2, ptr noundef nonnull @.str.276, i32 noundef %i.yq, ptr noundef %i.ys, i32 noundef %.0.i.i.i.i.i.i, i32 noundef %i.yj) #24
  br label %intel_crtc_compute_config.exit.thread.thread.i.i.i

bb.fc:                                            ; preds = %intel_crtc_set_context_latency.exit.i.i.i.i.i
  %i.yt = trunc nuw i32 %.0.i.i.i.i.i.i to i16    ; 2 uses
  %i.yu = getelementptr i8, ptr %i.xq, i64 4794
  store i16 %i.yt, ptr %i.yu, align 2
end_hunk_0
