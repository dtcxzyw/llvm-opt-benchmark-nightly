inline.NumInlined: 1324
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@intel_atomic_check:bb.a
  store ptr %i.nq, ptr %i.nr, align 8
  %i.ns = getelementptr i8, ptr %i.nj, i64 944
  %i.nt = getelementptr i8, ptr %i.nh, i64 944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(88) %i.ns, ptr noundef align 8 dereferenceable(88) %i.nt, i64 88, i1 false)
  %i.nu = getelementptr i8, ptr %i.nj, i64 1032
  %i.nv = getelementptr i8, ptr %i.nh, i64 1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(192) %i.nu, ptr noundef align 8 dereferenceable(192) %i.nv, i64 192, i1 false)
  %i.nw = getelementptr i8, ptr %i.nh, i64 1437
  %i.nx = load i8, ptr %i.nw, align 1, !range !15, !noundef !16
  %i.ny = getelementptr i8, ptr %i.nj, i64 1437
  store i8 %i.nx, ptr %i.ny, align 1
  %i.nz = getelementptr i8, ptr %i.ni, i64 8
  %i.oa = load i64, ptr %i.nz, align 8
  %i.ob = and i64 %i.oa, 135266305
  %or.cond43.i.i.i = icmp eq i64 %i.ob, 0
  br i1 %or.cond43.i.i.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.oc = getelementptr i8, ptr %i.nj, i64 1484
  %i.od = getelementptr i8, ptr %i.nh, i64 1484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(2220) %i.oc, ptr noundef align 4 dereferenceable(2220) %i.od, i64 2220, i1 false)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(4808) %i.nh, ptr noundef nonnull align 8 dereferenceable(4808) %i.nj, i64 4808, i1 false)
  call void @kfree(ptr noundef nonnull %i.nj) #24
  %.val.i442 = load ptr, ptr %i.k, align 8
  %.val19.i = load i32, ptr %i.lv, align 8
  %i.oe = zext i32 %.val19.i to i64
  %i.of = getelementptr [56 x i8], ptr %.val.i442, i64 %i.oe
  %i.og = getelementptr i8, ptr %i.of, i64 24
  %i.oh = load ptr, ptr %i.og, align 8            ; 14 uses
  %i.oi = getelementptr i8, ptr %i.oh, i64 4403
  %i.oj = load i8, ptr %i.oi, align 1             ; 2 uses
  %.not.i.i443 = icmp eq i8 %i.oj, 0
  br i1 %.not.i.i443, label %intel_crtc_copy_uapi_to_hw_state_modeset.exit, label %intel_crtc_is_joiner_secondary.exit.i

intel_crtc_is_joiner_secondary.exit.i:            ; preds = %bb.da
  %i.ok = load ptr, ptr %i.oh, align 8
  %i.ol = getelementptr i8, ptr %i.ok, i64 1664
  %i.om = load i32, ptr %i.ol, align 8
  %i.on = zext i8 %i.oj to i32
  %i.oo = call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.on, i32 -1) #23, !srcloc !12
  %.not.i444 = icmp eq i32 %i.om, %i.oo
  br i1 %.not.i444, label %intel_crtc_copy_uapi_to_hw_state_modeset.exit, label %bb.db, !prof !274

bb.db:                                            ; preds = %intel_crtc_is_joiner_secondary.exit.i
  call void asm sideeffect "890: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 890b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 890) #25, !srcloc !275
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.245, ptr nonnull @.str.1, i32 4538, i32 2305, i64 16) #25, !srcloc !276
  call void asm sideeffect "891: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 891b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 891) #25, !srcloc !277
  br label %intel_crtc_copy_uapi_to_hw_state_modeset.exit

intel_crtc_copy_uapi_to_hw_state_modeset.exit:    ; preds = %bb.da, %intel_crtc_is_joiner_secondary.exit.i, %bb.db
  %i.op = getelementptr i8, ptr %i.oh, i64 8
  %i.oq = load i8, ptr %i.op, align 8, !range !15, !noundef !16
  %i.or = getelementptr i8, ptr %i.oh, i64 344
  %i.os = getelementptr i8, ptr %i.oh, i64 345
  store i8 %i.oq, ptr %i.os, align 1
  %i.ot = getelementptr i8, ptr %i.oh, i64 9
  %i.ou = load i8, ptr %i.ot, align 1, !range !15, !noundef !16
  store i8 %i.ou, ptr %i.or, align 8
  %i.ov = getelementptr i8, ptr %i.oh, i64 376
  %i.ow = getelementptr i8, ptr %i.oh, i64 144
  call void @drm_mode_copy(ptr noundef %i.ov, ptr noundef %i.ow) #24
  %i.ox = getelementptr i8, ptr %i.oh, i64 616
  %i.oy = getelementptr i8, ptr %i.oh, i64 24
  call void @drm_mode_copy(ptr noundef %i.ox, ptr noundef %i.oy) #24
  %i.oz = getelementptr i8, ptr %i.oh, i64 312
  %i.pa = load i32, ptr %i.oz, align 8
  %i.pb = getelementptr i8, ptr %i.oh, i64 740
  store i32 %i.pa, ptr %i.pb, align 4
  %i.pc = getelementptr i8, ptr %i.oh, i64 316
  %i.pd = load i8, ptr %i.pc, align 4
  %i.pe = getelementptr i8, ptr %i.oh, i64 744
  store i8 %i.pd, ptr %i.pe, align 8
  %.val20.i = load ptr, ptr %i.k, align 8
  %.val21.i = load i32, ptr %i.lv, align 8
  call fastcc void @intel_crtc_copy_uapi_to_hw_state_nomodeset(ptr %.val20.i, i32 %.val21.i) #26
  %i.pf = getelementptr i8, ptr %i.lz, i64 345
  %i.pg = load i8, ptr %i.pf, align 1, !range !15, !noundef !16
  %i.ph = trunc nuw i8 %i.pg to i1
  br i1 %i.ph, label %bb.dc, label %.backedge1173

bb.dc:                                            ; preds = %intel_crtc_copy_uapi_to_hw_state_modeset.exit
  %i.pi = load ptr, ptr %.078.i.i, align 8        ; 2 uses
  %.not.i140.i.i = icmp eq ptr %i.pi, null
  br i1 %.not.i140.i.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.pj = call ptr @__drm_to_display(ptr noundef nonnull %i.pi) #24
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.pk = phi ptr [ %i.pj, %bb.dd ], [ null, %bb.dc ] ; 5 uses
  %.val.i141.i.i = load ptr, ptr %i.k, align 8
  %.val135.i.i.i = load i32, ptr %i.lv, align 8
  %i.pl = zext i32 %.val135.i.i.i to i64
  %i.pm = getelementptr [56 x i8], ptr %.val.i141.i.i, i64 %i.pl
  %i.pn = getelementptr i8, ptr %i.pm, i64 24
  %i.po = load ptr, ptr %i.pn, align 8            ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !annotation !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 0, ptr %i.b, align 4, !annotation !46
  %i.pp = getelementptr i8, ptr %.pn.i.i, i64 16  ; 3 uses
  %i.pq = load i32, ptr %i.pp, align 8
  %i.pr = getelementptr i8, ptr %i.po, i64 880
  store i32 %i.pq, ptr %i.pr, align 8
  %i.ps = getelementptr i8, ptr %i.po, i64 3951
  store i8 1, ptr %i.ps, align 1
  %i.pt = getelementptr i8, ptr %i.po, i64 616
  %i.pu = getelementptr i8, ptr %i.po, i64 640    ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 8            ; 3 uses
  %i.pw = and i32 %i.pv, 3
  %.not126.i142.i.i = icmp eq i32 %i.pw, 0        ; 2 uses
  %i.px = or disjoint i32 %i.pv, 2
  %i.py = select i1 %.not126.i142.i.i, i32 %i.px, i32 %i.pv ; 3 uses
  %i.pz = and i32 %i.py, 12
  %.not127.i143.i.i = icmp eq i32 %i.pz, 0        ; 2 uses
  %i.qa = or i1 %.not126.i142.i.i, %.not127.i143.i.i
  br i1 %i.qa, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.qb = or disjoint i32 %i.py, 8
  %simplifycfg.merge.i.i.i = select i1 %.not127.i143.i.i, i32 %i.qb, i32 %i.py
  store i32 %simplifycfg.merge.i.i.i, ptr %i.pu, align 8
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.qc = load ptr, ptr %.078.i.i, align 8        ; 2 uses
  %.not.i.i144.i.i = icmp eq ptr %i.qc, null
  br i1 %.not.i.i144.i.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.qd = call ptr @__drm_to_display(ptr noundef nonnull %i.qc) #24
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.qe = phi ptr [ %i.qd, %bb.dh ], [ null, %bb.dg ] ; 2 uses
  %.val.i.i145.i.i = load ptr, ptr %i.k, align 8
  %.val29.i.i.i.i = load i32, ptr %i.lv, align 8
  %i.qf = zext i32 %.val29.i.i.i.i to i64
  %i.qg = getelementptr [56 x i8], ptr %.val.i.i145.i.i, i64 %i.qf
  %i.qh = getelementptr i8, ptr %i.qg, i64 24
  %i.qi = load ptr, ptr %i.qh, align 8            ; 3 uses
  %i.qj = getelementptr i8, ptr %i.qe, i64 8
  %i.qk = load i64, ptr %i.qj, align 8
  %i.ql = and i64 %i.qk, 135266305
  %or.cond6.i.i.i.i.i = icmp eq i64 %i.ql, 0
  br i1 %or.cond6.i.i.i.i.i, label %bb.dj, label %intel_display_max_pipe_bpp.exit.i.i.i.i

bb.dj:                                            ; preds = %bb.di
  %i.qm = getelementptr i8, ptr %i.qe, i64 1168
  %i.qn = load i16, ptr %i.qm, align 8
  %i.qo = icmp ugt i16 %i.qn, 4
  %..i.i.i.i.i = select i1 %i.qo, i32 36, i32 24
  br label %intel_display_max_pipe_bpp.exit.i.i.i.i

intel_display_max_pipe_bpp.exit.i.i.i.i:          ; preds = %bb.dj, %bb.di
  %.0.i.i.i146.i.i = phi i32 [ 30, %bb.di ], [ %..i.i.i.i.i, %bb.dj ]
  %i.qp = getelementptr i8, ptr %i.qi, i64 1240   ; 3 uses
  store i32 %.0.i.i.i146.i.i, ptr %i.qp, align 8
  %i.qq = load i32, ptr %i.ef, align 8
  %i.qr = icmp sgt i32 %i.qq, 0
  br i1 %i.qr, label %.lr.ph.i.i153.i.i, label %.loopexit168.i.i.i

.lr.ph.i.i153.i.i:                                ; preds = %intel_display_max_pipe_bpp.exit.i.i.i.i
  %i.qs = getelementptr i8, ptr %i.qi, i64 1236
  br label %bb.dk

bb.dk:                                            ; preds = %.thread.i.i.i.i, %.lr.ph.i.i153.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i153.i.i ], [ %indvars.iv.next.i.i.i.i, %.thread.i.i.i.i ] ; 2 uses
  %i.qt = load ptr, ptr %i.eg, align 8
  %i.qu = getelementptr [40 x i8], ptr %i.qt, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8
  %.not26.i.i.i.i = icmp eq ptr %i.qv, null
  br i1 %.not26.i.i.i.i, label %.thread.i.i.i.i, label %bb.dl

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
  %i.rg = load i32, ptr %i.rf, align 8            ; 3 uses
  switch i32 %i.rg, label %bpc_to_bpp.exit.i.i.i.i.i [
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
    i32 0, label %bb.dp
  ]

bb.dp:                                            ; preds = %bb.do, %bb.do, %bb.do
  br label %bb.ds

bb.dq:                                            ; preds = %bb.do, %bb.do
  br label %bb.ds

bb.dr:                                            ; preds = %bb.do, %bb.do, %bb.do, %bb.do, %bb.do
  br label %bb.ds

bpc_to_bpp.exit.i.i.i.i.i:                        ; preds = %bb.do
  %.not38.i.i.i.i.i = icmp eq i32 %i.rg, 0
  %..i31.i.i.i.i = select i1 %.not38.i.i.i.i.i, i32 8, i32 %i.rg
  %i.rh = sext i32 %..i31.i.i.i.i to i64
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
  %i.tu = phi i32 [ %i.tr, %.lr.ph.i149.i.i ], [ %i.vw, %.thread.i.i.i ] ; 4 uses
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
  %i.ub = load ptr, ptr %i.ua, align 8            ; 8 uses
  %i.uc = getelementptr i8, ptr %i.tz, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8
  %.not133.i.i.i = icmp eq ptr %i.ud, %.078.i.i
  br i1 %.not133.i.i.i, label %bb.ee, label %.thread.i.i.i

bb.ee:                                            ; preds = %bb.ed
  %i.ue = getelementptr i8, ptr %i.ub, i64 160
  %i.uf = icmp slt i32 %i.tu, 1
  br i1 %i.uf, label %.loopexit.i.i.i, label %.lr.ph.i137.i.i.i

.lr.ph.i137.i.i.i:                                ; preds = %bb.ee
  %i.ug = getelementptr i8, ptr %i.ub, i64 152
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.tu to i64
  br label %bb.ef

bb.ef:                                            ; preds = %encoders_cloneable.exit.thread.i.i.i.i, %.lr.ph.i137.i.i.i
  %indvars.iv.i138.i.i.i = phi i64 [ 0, %.lr.ph.i137.i.i.i ], [ %indvars.iv.next.i140.i.i.i, %encoders_cloneable.exit.thread.i.i.i.i ] ; 2 uses
  %i.uh = getelementptr [40 x i8], ptr %i.tv, i64 %indvars.iv.i138.i.i.i ; 2 uses
  %i.ui = load ptr, ptr %i.uh, align 8
  %.not.i139.i.i.i = icmp eq ptr %i.ui, null
  br i1 %.not.i139.i.i.i, label %encoders_cloneable.exit.thread.i.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.uj = getelementptr i8, ptr %i.uh, i64 24
  %i.uk = load ptr, ptr %i.uj, align 8            ; 2 uses
  %i.ul = getelementptr i8, ptr %i.uk, i64 8
  %i.um = load ptr, ptr %i.ul, align 8
  %.not17.i.i.i.i = icmp eq ptr %i.um, %.078.i.i
  br i1 %.not17.i.i.i.i, label %bb.eh, label %encoders_cloneable.exit.thread.i.i.i.i

bb.eh:                                            ; preds = %bb.eg
  %i.un = getelementptr i8, ptr %i.uk, i64 16
  %i.uo = load ptr, ptr %i.un, align 8            ; 3 uses
  %i.up = icmp eq ptr %i.ub, %i.uo
  br i1 %i.up, label %encoders_cloneable.exit.thread.i.i.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.uq = load i16, ptr %i.ue, align 8
end_hunk_0
