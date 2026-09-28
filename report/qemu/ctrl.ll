Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ctrl?download=true
inline.NumInlined: 1462
inline.NumDeleted: 388
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@nvme_process_sq:bb.a
  br label %nvme_adm_opc_str.exit.i

bb.gi:                                            ; preds = %nvme_cid.exit.i
  br label %nvme_adm_opc_str.exit.i

bb.gj:                                            ; preds = %nvme_cid.exit.i
  br label %nvme_adm_opc_str.exit.i

bb.gk:                                            ; preds = %nvme_cid.exit.i
  br label %nvme_adm_opc_str.exit.i

bb.gl:                                            ; preds = %nvme_cid.exit.i
  br label %nvme_adm_opc_str.exit.i

bb.gm:                                            ; preds = %nvme_cid.exit.i
  br label %nvme_adm_opc_str.exit.i

bb.gn:                                            ; preds = %nvme_cid.exit.i
  br label %nvme_adm_opc_str.exit.i

bb.go:                                            ; preds = %nvme_cid.exit.i
  br label %nvme_adm_opc_str.exit.i

bb.gp:                                            ; preds = %nvme_cid.exit.i
  br label %nvme_adm_opc_str.exit.i

bb.gq:                                            ; preds = %nvme_cid.exit.i
  br label %nvme_adm_opc_str.exit.i

bb.gr:                                            ; preds = %nvme_cid.exit.i
  br label %nvme_adm_opc_str.exit.i

nvme_adm_opc_str.exit.i:                          ; preds = %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %nvme_cid.exit.i
  %.0.i50.i = phi ptr [ @.str.228, %bb.gr ], [ @.str.227, %bb.gq ], [ @.str.211, %bb.ga ], [ @.str.212, %bb.gb ], [ @.str.213, %bb.gc ], [ @.str.214, %bb.gd ], [ @.str.215, %bb.ge ], [ @.str.216, %bb.gf ], [ @.str.217, %bb.gg ], [ @.str.218, %bb.gh ], [ @.str.219, %bb.gi ], [ @.str.220, %bb.gj ], [ @.str.221, %bb.gk ], [ @.str.222, %bb.gl ], [ @.str.223, %bb.gm ], [ @.str.224, %bb.gn ], [ @.str.225, %bb.go ], [ @.str.226, %bb.gp ], [ @.str.210, %nvme_cid.exit.i ]
  %i.vq = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i51.i = icmp eq i32 %i.vq, 0
  br i1 %.not.i51.i, label %trace_pci_nvme_admin_cmd.exit.i, label %bb.gs, !prof !17

bb.gs:                                            ; preds = %nvme_adm_opc_str.exit.i
  %i.vr = load i16, ptr @_TRACE_PCI_NVME_ADMIN_CMD_DSTATE, align 2
  %.not3.i.i90 = icmp eq i16 %i.vr, 0
  br i1 %.not3.i.i90, label %trace_pci_nvme_admin_cmd.exit.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.vs = load i32, ptr @qemu_loglevel, align 4
  %i.vt = and i32 %i.vs, 32768
  %.not4.i.i91 = icmp eq i32 %i.vt, 0
  br i1 %.not4.i.i91, label %trace_pci_nvme_admin_cmd.exit.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.vu = zext i16 %.val.val.i89 to i32
  %i.vv = zext i8 %i.vp to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.209, i32 noundef %i.vn, i32 noundef %i.vu, i32 noundef %i.vv, ptr noundef nonnull %.0.i50.i) #23, !inline_history !59
  %.pre.i92 = load i8, ptr %i.fl, align 8
  br label %trace_pci_nvme_admin_cmd.exit.i

trace_pci_nvme_admin_cmd.exit.i:                  ; preds = %bb.gu, %bb.gt, %bb.gs, %nvme_adm_opc_str.exit.i
  %i.vw = phi i8 [ %i.vp, %nvme_adm_opc_str.exit.i ], [ %i.vp, %bb.gs ], [ %i.vp, %bb.gt ], [ %.pre.i92, %bb.gu ] ; 3 uses
  %i.vx = zext i8 %i.vw to i64
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.vx
  %i.vz = load i32, ptr %i.vy, align 4
  %i.wa = and i32 %i.vz, 1
  %.not.i93 = icmp eq i32 %i.wa, 0
  br i1 %.not.i93, label %bb.gv, label %bb.gz

bb.gv:                                            ; preds = %trace_pci_nvme_admin_cmd.exit.i
  %i.wb = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i52.i = icmp eq i32 %i.wb, 0
  br i1 %.not.i52.i, label %nvme_io_cmd.exit.thread, label %bb.gw, !prof !17

bb.gw:                                            ; preds = %bb.gv
  %i.wc = load i16, ptr @_TRACE_PCI_NVME_ERR_INVALID_ADMIN_OPC_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.wc, 0
  br i1 %.not1.i.i, label %nvme_io_cmd.exit.thread, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.wd = load i32, ptr @qemu_loglevel, align 4
  %i.we = and i32 %i.wd, 32768
  %.not2.i.i95 = icmp eq i32 %i.we, 0
  br i1 %.not2.i.i95, label %nvme_io_cmd.exit.thread, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.wf = zext i8 %i.vw to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.229, i32 noundef %i.wf) #23, !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.gz:                                            ; preds = %trace_pci_nvme_admin_cmd.exit.i
  %i.wg = getelementptr inbounds nuw i8, ptr %i.eu, i64 57
  %i.wh = load i8, ptr %i.wg, align 1             ; 2 uses
  %.not46.i = icmp ult i8 %i.wh, 64
  br i1 %.not46.i, label %bb.ha, label %nvme_io_cmd.exit.thread

bb.ha:                                            ; preds = %bb.gz
  %i.wi = and i8 %i.wh, 3
  %.not47.i = icmp eq i8 %i.wi, 0
  br i1 %.not47.i, label %bb.hb, label %nvme_io_cmd.exit.thread

bb.hb:                                            ; preds = %bb.ha
  switch i8 %i.vw, label %bb.ht [
    i8 0, label %bb.hc
    i8 1, label %bb.hd
    i8 2, label %bb.he
    i8 4, label %bb.hf
    i8 5, label %bb.hg
    i8 6, label %bb.hh
    i8 8, label %bb.hi
    i8 9, label %bb.hj
    i8 10, label %bb.hk
    i8 12, label %bb.hl
    i8 21, label %bb.hm
    i8 28, label %bb.hn
    i8 124, label %bb.ho
    i8 -128, label %bb.hp
    i8 25, label %nvme_io_cmd.exit.thread
    i8 26, label %bb.hq
    i8 -127, label %bb.hr
    i8 -126, label %bb.hs
  ]

bb.hc:                                            ; preds = %bb.hb
  %i.wj = getelementptr i8, ptr %i.eu, i64 96
  %.val48.i = load i16, ptr %i.wj, align 8
  %i.wk = call fastcc zeroext i16 @nvme_del_sq(ptr noundef nonnull %i.b, i16 %.val48.i), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.hd:                                            ; preds = %bb.hb
  %i.wl = call fastcc zeroext i16 @nvme_create_sq(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.he:                                            ; preds = %bb.hb
  %i.wm = call fastcc zeroext i16 @nvme_get_log(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.hf:                                            ; preds = %bb.hb
  %i.wn = getelementptr i8, ptr %i.eu, i64 96
  %.val49.i = load i16, ptr %i.wn, align 8
  %i.wo = call fastcc zeroext i16 @nvme_del_cq(ptr noundef nonnull %i.b, i16 %.val49.i), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.hg:                                            ; preds = %bb.hb
  %i.wp = call fastcc zeroext i16 @nvme_create_cq(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.hh:                                            ; preds = %bb.hb
  %i.wq = call fastcc zeroext i16 @nvme_identify(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.hi:                                            ; preds = %bb.hb
  %i.wr = call fastcc zeroext i16 @nvme_abort(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.hj:                                            ; preds = %bb.hb
  %i.ws = call fastcc zeroext i16 @nvme_set_feature(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.hk:                                            ; preds = %bb.hb
  %i.wt = call fastcc zeroext i16 @nvme_get_feature(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.hl:                                            ; preds = %bb.hb
  %i.wu = call fastcc zeroext i16 @nvme_aer(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit

bb.hm:                                            ; preds = %bb.hb
  %i.wv = call fastcc zeroext i16 @nvme_ns_attachment(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.hn:                                            ; preds = %bb.hb
  %i.ww = call fastcc zeroext i16 @nvme_virt_mngmt(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit

bb.ho:                                            ; preds = %bb.hb
  %i.wx = call fastcc zeroext i16 @nvme_dbbuf_config(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.hp:                                            ; preds = %bb.hb
  %i.wy = call fastcc zeroext i16 @nvme_format(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit

bb.hq:                                            ; preds = %bb.hb
  %i.wz = call fastcc zeroext i16 @nvme_directive_receive(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit.thread

bb.hr:                                            ; preds = %bb.hb
  %i.xa = call fastcc zeroext i16 @nvme_security_send(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit

bb.hs:                                            ; preds = %bb.hb
  %i.xb = call fastcc zeroext i16 @nvme_security_receive(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eu), !inline_history !59
  br label %nvme_io_cmd.exit

bb.ht:                                            ; preds = %bb.hb
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 7764, ptr noundef nonnull @__func__.nvme_admin_cmd, ptr noundef null) #24, !inline_history !59
  unreachable

nvme_io_cmd.exit:                                 ; preds = %bb.hs, %bb.hr, %bb.hp, %bb.hn, %bb.hl, %bb.fy, %trace_pci_nvme_err_invalid_zone_state_transition.exit.i.i.i, %bb.bs, %bb.bl, %bb.bd
  %.in = phi i16 [ %i.ww, %bb.hn ], [ %i.vm, %bb.fy ], [ %i.hw, %bb.bs ], [ %i.wu, %bb.hl ], [ %i.ox, %trace_pci_nvme_err_invalid_zone_state_transition.exit.i.i.i ], [ %i.gx, %bb.bd ], [ %i.xb, %bb.hs ], [ %i.xa, %bb.hr ], [ %i.wy, %bb.hp ], [ %i.hm, %bb.bl ] ; 2 uses
  %.not73 = icmp eq i16 %.in, -1
  br i1 %.not73, label %nvme_io_cmd.exit.thread118, label %nvme_io_cmd.exit.thread

nvme_io_cmd.exit.thread:                          ; preds = %nvme_bulk_proc_zone.exit108.thread.i126.i.i.i, %nvme_bulk_proc_zone.exit108.thread.i.i.i.i, %bb.hb, %bb.gx, %bb.gw, %bb.gv, %bb.hq, %bb.gy, %bb.ho, %bb.hm, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.gz, %bb.ha, %bb.fi, %bb.fh, %bb.er, %bb.es, %bb.et, %bb.eu, %._crit_edge153.i.i.i, %bb.fe, %bb.fd, %bb.fc, %bb.ew, %nvme_get_mgmt_zone_slba_idx.exit.i19.i.i, %.critedge.i.i.i.i, %.critedge4.i119.i.i.i, %.critedge4.i.i.i.i, %bb.fk, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.eh, %bb.eg, %bb.ed, %bb.ea, %bb.ef, %bb.ee, %bb.ec, %bb.eb, %bb.ch, %bb.cg, %bb.cf, %bb.du, %bb.ci, %trace_pci_nvme_set_descriptor_extension.exit.i.i.i, %bb.dy, %bb.dw, %bb.ca, %bb.dz, %nvme_do_zone_op.exit.i.i.i, %bb.bp, %bb.bo, %bb.bn, %bb.fj, %bb.bq, %bb.bj, %bb.bi, %bb.bh, %bb.bb, %nvme_ns.exit.i85, %bb.bc, %bb.bk, %bb.be, %nvme_io_cmd.exit
  %.in116 = phi i16 [ %.in, %nvme_io_cmd.exit ], [ 16386, %bb.hb ], [ 16385, %bb.gx ], [ 16385, %bb.gw ], [ 16385, %bb.gv ], [ %i.wz, %bb.hq ], [ 16385, %bb.gy ], [ %i.wx, %bb.ho ], [ %i.wv, %bb.hm ], [ %i.wt, %bb.hk ], [ %i.ws, %bb.hj ], [ %i.wr, %bb.hi ], [ %i.wq, %bb.hh ], [ %i.wp, %bb.hg ], [ %i.wo, %bb.hf ], [ %i.wm, %bb.he ], [ %i.wl, %bb.hd ], [ %i.wk, %bb.hc ], [ 16386, %bb.gz ], [ 2, %bb.ha ], [ 16386, %bb.fi ], [ 16386, %bb.fh ], [ 16385, %bb.er ], [ 16385, %bb.es ], [ 16385, %bb.et ], [ 16385, %bb.eu ], [ %i.vl, %._crit_edge153.i.i.i ], [ 16386, %bb.fe ], [ 16386, %bb.fd ], [ 16386, %bb.fc ], [ 16512, %bb.ew ], [ 16386, %nvme_get_mgmt_zone_slba_idx.exit.i19.i.i ], [ 0, %.critedge.i.i.i.i ], [ 0, %.critedge4.i119.i.i.i ], [ 0, %.critedge4.i.i.i.i ], [ 16386, %bb.fk ], [ 16385, %bb.bv ], [ 16385, %bb.bw ], [ 16385, %bb.bx ], [ 16385, %bb.by ], [ 0, %bb.eh ], [ 0, %bb.eg ], [ 16824, %bb.ed ], [ 16822, %bb.ea ], [ %i.nz, %bb.ef ], [ 16386, %bb.ee ], [ 16824, %bb.ec ], [ 16386, %bb.eb ], [ 16386, %bb.ch ], [ 16386, %bb.cg ], [ 16386, %bb.cf ], [ 16386, %bb.du ], [ 16386, %bb.ci ], [ 16386, %trace_pci_nvme_set_descriptor_extension.exit.i.i.i ], [ 0, %bb.dy ], [ %i.mz, %bb.dw ], [ 16512, %bb.ca ], [ 16386, %bb.dz ], [ %.079.i.i.i, %nvme_do_zone_op.exit.i.i.i ], [ 16385, %bb.bp ], [ 16385, %bb.bo ], [ 16385, %bb.bn ], [ 16386, %bb.fj ], [ 16385, %bb.bq ], [ 16385, %bb.bj ], [ 16385, %bb.bi ], [ 16385, %bb.bh ], [ %.0.i33.i, %bb.bb ], [ 0, %nvme_bulk_proc_zone.exit108.thread.i.i.i.i ], [ 16386, %nvme_ns.exit.i85 ], [ 16395, %bb.bc ], [ 16385, %bb.bk ], [ 2, %bb.be ], [ 0, %nvme_bulk_proc_zone.exit108.thread.i126.i.i.i ]
  store i16 %.in116, ptr %i.fg, align 8
  call fastcc void @nvme_enqueue_req_completion(ptr noundef %i.i, ptr noundef %i.eu)
  br label %nvme_io_cmd.exit.thread118

nvme_io_cmd.exit.thread118:                       ; preds = %bb.ba, %trace_pci_nvme_reset_zone.exit.i.i.i, %nvme_io_cmd.exit.thread, %nvme_io_cmd.exit
  %i.xc = load i8, ptr %i.k, align 8, !range !18, !noundef !19
  %i.xd = trunc nuw i8 %i.xc to i1
  %.val75.pre175 = load i32, ptr %i.ae, align 8   ; 2 uses
  br i1 %i.xd, label %bb.hu, label %nvme_update_sq_tail.exit102

bb.hu:                                            ; preds = %nvme_io_cmd.exit.thread118
  %i.xe = load i16, ptr %i.al, align 8
  %i.xf = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i96 = icmp eq i32 %i.xf, 0
  br i1 %.not.i.i96, label %nvme_update_sq_eventidx.exit, label %bb.hv, !prof !17

bb.hv:                                            ; preds = %bb.hu
  %i.xg = load i16, ptr @_TRACE_PCI_NVME_UPDATE_SQ_EVENTIDX_DSTATE, align 2
  %.not2.i.i97 = icmp eq i16 %i.xg, 0
  br i1 %.not2.i.i97, label %nvme_update_sq_eventidx.exit, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.xh = load i32, ptr @qemu_loglevel, align 4
  %i.xi = and i32 %i.xh, 32768
  %.not3.i.i98 = icmp eq i32 %i.xi, 0
  br i1 %.not3.i.i98, label %nvme_update_sq_eventidx.exit, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.xj = zext i16 %i.xe to i32
  %i.xk = and i32 %.val75.pre175, 65535
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.290, i32 noundef %i.xj, i32 noundef %i.xk) #23
  br label %nvme_update_sq_eventidx.exit

nvme_update_sq_eventidx.exit:                     ; preds = %bb.hu, %bb.hv, %bb.hw, %bb.hx
  %i.xl = load ptr, ptr %0, align 8
  %i.xm = call ptr @object_dynamic_cast_assert(ptr noundef %i.xl, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #23
  %i.xn = load i64, ptr %i.az, align 8
  %i.xo = load i32, ptr %i.ae, align 8
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xm, i64 576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.xo, ptr %i.a, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !srcloc !21
  fence seq_cst
  %i.xq = call i32 @address_space_rw(ptr noundef nonnull %i.xp, i64 noundef %i.xn, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef range(i64 -2147483648, 2147483648) 4, i1 noundef zeroext true) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.xr = load ptr, ptr %0, align 8
  %i.xs = call ptr @object_dynamic_cast_assert(ptr noundef %i.xr, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #23
  %i.xt = load i64, ptr %i.ba, align 8
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xs, i64 576
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !srcloc !21
  fence seq_cst
  %i.xv = call i32 @address_space_rw(ptr noundef nonnull %i.xu, i64 noundef %i.xt, i64 4294967296, ptr noundef nonnull %i.ae, i64 noundef range(i64 -2147483648, 2147483648) 4, i1 noundef zeroext false) #23 ; 0 uses
  %i.xw = load i16, ptr %i.al, align 8
  %i.xx = load i32, ptr %i.ae, align 8            ; 4 uses
  %i.xy = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i99 = icmp eq i32 %i.xy, 0
  br i1 %.not.i.i99, label %nvme_update_sq_tail.exit102, label %bb.hy, !prof !17

bb.hy:                                            ; preds = %nvme_update_sq_eventidx.exit
  %i.xz = load i16, ptr @_TRACE_PCI_NVME_UPDATE_SQ_TAIL_DSTATE, align 2
  %.not2.i.i100 = icmp eq i16 %i.xz, 0
  br i1 %.not2.i.i100, label %nvme_update_sq_tail.exit102, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.ya = load i32, ptr @qemu_loglevel, align 4
  %i.yb = and i32 %i.ya, 32768
  %.not3.i.i101 = icmp eq i32 %i.yb, 0
  br i1 %.not3.i.i101, label %nvme_update_sq_tail.exit102, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.yc = zext i16 %i.xw to i32
  %i.yd = and i32 %i.xx, 65535
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.140, i32 noundef %i.yc, i32 noundef %i.yd) #23
  %.val75.pre = load i32, ptr %i.ae, align 8
  br label %nvme_update_sq_tail.exit102

nvme_update_sq_tail.exit102:                      ; preds = %bb.ia, %bb.hz, %bb.hy, %nvme_update_sq_eventidx.exit, %nvme_io_cmd.exit.thread118
  %.val75 = phi i32 [ %.val75.pre, %bb.ia ], [ %i.xx, %bb.hz ], [ %i.xx, %bb.hy ], [ %i.xx, %nvme_update_sq_eventidx.exit ], [ %.val75.pre175, %nvme_io_cmd.exit.thread118 ]
  %.val = load i32, ptr %i.ad, align 4            ; 2 uses
  %.not = icmp eq i32 %.val, %.val75
  br i1 %.not, label %.critedge, label %bb.h

.critedge:                                        ; preds = %nvme_update_sq_tail.exit102, %bb.h, %nvme_update_sq_tail.exit, %nvme_atomic_write_check.exit, %trace_pci_nvme_err_cfs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void
}

declare zeroext i1 @bql_locked() local_unnamed_addr #2

declare ptr @qemu_aio_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @nvme_misc_cb(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %nvme_cid.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i16, ptr %i.a, align 4
  %i.c = zext i16 %i.b to i32
  br label %nvme_cid.exit

nvme_cid.exit:                                    ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.c, %bb.b ], [ 65535, %bb.a ] ; 2 uses
  %i.d = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i12 = icmp eq i32 %i.d, 0
  br i1 %.not.i12, label %trace_pci_nvme_misc_cb.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %nvme_cid.exit
  %i.e = load i16, ptr @_TRACE_PCI_NVME_MISC_CB_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.e, 0
  br i1 %.not1.i, label %trace_pci_nvme_misc_cb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 32768
  %.not2.i = icmp eq i32 %i.g, 0
  br i1 %.not2.i, label %trace_pci_nvme_misc_cb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.154, i32 noundef %.0.i) #23
  br label %trace_pci_nvme_misc_cb.exit

trace_pci_nvme_misc_cb.exit:                      ; preds = %nvme_cid.exit, %bb.c, %bb.d, %bb.e
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %trace_pci_nvme_err_aio.exit, label %bb.f

bb.f:                                             ; preds = %trace_pci_nvme_misc_cb.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load i16, ptr %i.h, align 8
  %.not10 = icmp eq i16 %i.i, 0
  br i1 %.not10, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i16 6, ptr %i.h, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.j = sub i32 0, %1
  %i.k = tail call ptr @strerror(i32 noundef %i.j) #23
  %i.l = load i16, ptr %i.h, align 8
  %i.m = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i13 = icmp eq i32 %i.m, 0
  br i1 %.not.i13, label %trace_pci_nvme_err_aio.exit, label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h
  %i.n = load i16, ptr @_TRACE_PCI_NVME_ERR_AIO_DSTATE, align 2
  %.not2.i14 = icmp eq i16 %i.n, 0
  br i1 %.not2.i14, label %trace_pci_nvme_err_aio.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = load i32, ptr @qemu_loglevel, align 4
  %i.p = and i32 %i.o, 32768
  %.not3.i = icmp eq i32 %i.p, 0
  br i1 %.not3.i, label %trace_pci_nvme_err_aio.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = zext i16 %i.l to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.27, i32 noundef %.0.i, ptr noundef %i.k, i32 noundef %i.q) #23
  br label %trace_pci_nvme_err_aio.exit

trace_pci_nvme_err_aio.exit:                      ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %trace_pci_nvme_misc_cb.exit
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8
  %i.r = getelementptr i8, ptr %.val, i64 10
  %.val.val11 = load i16, ptr %i.r, align 2
  %i.s = getelementptr i8, ptr %.val.val, i64 26264
  %.val.val.val = load ptr, ptr %i.s, align 8
  %i.t = zext i16 %.val.val11 to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8
  tail call fastcc void @nvme_enqueue_req_completion(ptr noundef %i.v, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @nvme_do_flush(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  %.val = load ptr, ptr %i.b, align 8
  %.val.val = load ptr, ptr %.val, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.g = load i8, ptr %i.f, align 4, !range !18, !noundef !19
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.val, i64 24192
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.025 = add i32 %i.j, 1                         ; 2 uses
end_hunk_0
begin_hunk_1_@nvme_do_copy:bb.a
  %i.bg = load ptr, ptr %i.bf, align 8            ; 11 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 325
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = and i8 %i.bi, 7
  %.not103 = icmp eq i8 %i.bj, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 325
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = and i8 %i.bl, 7
  %.not104 = icmp eq i8 %i.bm, 0                  ; 2 uses
  br i1 %.not103, label %bb.m, label %nvme_copy_matching_ns_format.exit

bb.m:                                             ; preds = %bb.l
  br i1 %.not104, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 12600
  %i.bo = load i8, ptr %i.bn, align 8
  %i.bp = and i8 %i.bo, -3
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.o, label %nvme_copy_matching_ns_format.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 12600
  %i.bs = load i8, ptr %i.br, align 8
  %i.bt = and i8 %i.bs, -3
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.p, label %nvme_copy_matching_ns_format.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 12586
  %i.bw = load i8, ptr %i.bv, align 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 12586
  %i.by = load i8, ptr %i.bx, align 2
  %i.bz = icmp eq i8 %i.bw, %i.by
  br i1 %i.bz, label %nvme_copy_ns_format_match.exit.i, label %nvme_copy_matching_ns_format.exit.thread

nvme_copy_ns_format_match.exit.i:                 ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 12584
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 12584
  %i.cc = load i16, ptr %i.cb, align 8
  %i.cd = load i16, ptr %i.ca, align 8
  %i.ce = icmp eq i16 %i.cc, %i.cd
  br i1 %i.ce, label %.thread, label %nvme_copy_matching_ns_format.exit.thread

nvme_copy_matching_ns_format.exit:                ; preds = %bb.l
  br i1 %.not104, label %bb.u, label %bb.q

bb.q:                                             ; preds = %nvme_copy_matching_ns_format.exit
  %i.cf = xor i8 %i.j, %i.g
  %i.cg = and i8 %i.cf, 8
  %.not107 = icmp eq i8 %i.cg, 0
  br i1 %.not107, label %bb.r, label %nvme_copy_matching_ns_format.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.ch = tail call fastcc zeroext i1 @nvme_copy_matching_ns_format(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.d, i1 noundef zeroext true)
  br i1 %i.ch, label %.thread, label %nvme_copy_matching_ns_format.exit.thread

bb.s:                                             ; preds = %bb.m
  %i.ci = and i8 %i.i, 32
  %.not110 = icmp eq i8 %i.ci, 0
  br i1 %.not110, label %nvme_copy_matching_ns_format.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = tail call fastcc zeroext i1 @nvme_copy_corresp_pi_format(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.d, i1 noundef zeroext false)
  br i1 %i.cj, label %.thread, label %nvme_copy_matching_ns_format.exit.thread

bb.u:                                             ; preds = %nvme_copy_matching_ns_format.exit
  %.not113 = icmp sgt i8 %i.f, -1
  br i1 %.not113, label %nvme_copy_matching_ns_format.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = tail call fastcc zeroext i1 @nvme_copy_corresp_pi_format(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.d, i1 noundef zeroext true)
  br i1 %i.ck, label %.thread, label %nvme_copy_matching_ns_format.exit.thread

.thread:                                          ; preds = %nvme_copy_ns_format_match.exit.i, %bb.r, %bb.t, %nvme_copy_source_range_parse.exit123.thread184, %bb.k, %bb.v
  %.0147155162 = phi i64 [ %.0147156, %nvme_copy_source_range_parse.exit123.thread184 ], [ %.1148, %bb.v ], [ %.1148, %bb.r ], [ %.0147156, %bb.k ], [ %.1148, %bb.t ], [ %.1148, %nvme_copy_ns_format_match.exit.i ] ; 7 uses
  %.0145157161 = phi i32 [ %.0145158, %nvme_copy_source_range_parse.exit123.thread184 ], [ %.1146, %bb.v ], [ %.1146, %bb.r ], [ %.0145158, %bb.k ], [ %.1146, %bb.t ], [ %.1146, %nvme_copy_ns_format_match.exit.i ] ; 5 uses
  %i.cl = phi ptr [ %i.az, %nvme_copy_source_range_parse.exit123.thread184 ], [ %i.bg, %bb.v ], [ %i.bg, %bb.r ], [ %i.az, %bb.k ], [ %i.bg, %bb.t ], [ %i.bg, %nvme_copy_ns_format_match.exit.i ] ; 10 uses
  %i.cm = zext nneg i32 %.0145157161 to i64       ; 4 uses
  %i.cn = getelementptr i8, ptr %i.cl, i64 12586  ; 2 uses
  %.val119 = load i8, ptr %i.cn, align 2
  %i.co = zext nneg i8 %.val119 to i64
  %i.cp = shl i64 %i.cm, %i.co                    ; 2 uses
  %i.cq = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i125 = icmp eq i32 %i.cq, 0
  br i1 %.not.i125, label %trace_pci_nvme_copy_source_range.exit, label %bb.w, !prof !17

bb.w:                                             ; preds = %.thread
  %i.cr = load i16, ptr @_TRACE_PCI_NVME_COPY_SOURCE_RANGE_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.cr, 0
  br i1 %.not2.i, label %trace_pci_nvme_copy_source_range.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = load i32, ptr @qemu_loglevel, align 4
  %i.ct = and i32 %i.cs, 32768
  %.not3.i = icmp eq i32 %i.ct, 0
  br i1 %.not3.i, label %trace_pci_nvme_copy_source_range.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.194, i64 noundef %.0147155162, i32 noundef %.0145157161) #23
  br label %trace_pci_nvme_copy_source_range.exit

trace_pci_nvme_copy_source_range.exit:            ; preds = %.thread, %bb.w, %bb.x, %bb.y
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 370 ; 2 uses
  %i.cv = load i16, ptr %i.cu, align 2
  %i.cw = zext i16 %i.cv to i32
  %i.cx = icmp samesign ugt i32 %.0145157161, %i.cw
  br i1 %i.cx, label %nvme_copy_matching_ns_format.exit.thread, label %bb.z

bb.z:                                             ; preds = %trace_pci_nvme_copy_source_range.exit
  %i.cy = getelementptr i8, ptr %i.cl, i64 296
  %.val120 = load i64, ptr %i.cy, align 8         ; 2 uses
  %i.cz = xor i64 %.0147155162, -1
  %i.da = icmp ult i64 %i.cz, %i.cm
  %i.db = add i64 %.0147155162, %i.cm
  %i.dc = icmp ugt i64 %i.db, %.val120
  %i.dd = select i1 %i.da, i1 true, i1 %i.dc, !prof !25
  br i1 %i.dd, label %nvme_check_bounds.exit, label %bb.aa, !prof !25

nvme_check_bounds.exit:                           ; preds = %bb.z
  tail call fastcc void @trace_pci_nvme_err_invalid_lba_range(i64 noundef %.0147155162, i64 noundef %i.cm, i64 noundef %.val120)
  br label %nvme_copy_matching_ns_format.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.de = getelementptr inbounds nuw i8, ptr %i.cl, i64 12936
  %i.df = load i32, ptr %i.de, align 8
  %i.dg = and i32 %i.df, 65536
  %.not115 = icmp eq i32 %i.dg, 0
  br i1 %.not115, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dh = tail call fastcc zeroext i16 @nvme_check_dulbe(ptr noundef nonnull %i.cl, i64 noundef %.0147155162, i32 noundef %.0145157161) ; 2 uses
  %.not116 = icmp eq i16 %i.dh, 0
  br i1 %.not116, label %bb.ac, label %nvme_copy_matching_ns_format.exit.thread

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.di = getelementptr inbounds nuw i8, ptr %i.cl, i64 12833
  %i.dj = load i8, ptr %i.di, align 1, !range !18, !noundef !19
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dl = tail call fastcc zeroext i16 @nvme_check_zone_read(ptr noundef nonnull %i.cl, i64 noundef %.0147155162, i32 noundef %.0145157161) ; 2 uses
  %.not117 = icmp eq i16 %i.dl, 0
  br i1 %.not117, label %bb.ae, label %nvme_copy_matching_ns_format.exit.thread

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8
  tail call void @g_free(ptr noundef %i.dn) #23
  %i.do = load i16, ptr %i.cu, align 2
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cl, i64 12592
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cl, i64 12584
  %i.ds = load i16, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 12584
  %i.du = load i16, ptr %i.dt, align 8
  %i.dv = tail call i16 @llvm.umax.i16(i16 %i.ds, i16 %i.du)
  %i.dw = zext i16 %i.dv to i64
  %i.dx = add i64 %i.dq, %i.dw
  %i.dy = zext i16 %i.do to i64
  %i.dz = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.dy, i64 %i.dx) ; 2 uses
  %i.ea = extractvalue { i64, i1 } %i.dz, 1
  br i1 %i.ea, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void @__assert_fail(ptr noundef nonnull @.str.192, ptr noundef nonnull @.str, i32 noundef 3337, ptr noundef nonnull @__PRETTY_FUNCTION__.nvme_do_copy) #24
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.eb = extractvalue { i64, i1 } %i.dz, 0       ; 2 uses
  %i.ec = tail call noalias ptr @g_malloc(i64 noundef %i.eb) #26
  store ptr %i.ec, ptr %i.dm, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  tail call void @qemu_iovec_reset(ptr noundef nonnull %i.ed) #23
  %.not118 = icmp ugt i64 %i.cp, %i.eb
  br i1 %.not118, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void @__assert_fail(ptr noundef nonnull @.str.193, ptr noundef nonnull @.str, i32 noundef 3342, ptr noundef nonnull @__PRETTY_FUNCTION__.nvme_do_copy) #24
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.ee = load ptr, ptr %i.dm, align 8
  tail call void @qemu_iovec_add(ptr noundef nonnull %i.ed, ptr noundef %i.ee, i64 noundef %i.cp) #23
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cl, i64 152 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = tail call ptr @blk_get_stats(ptr noundef %i.eg) #23
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @block_acct_start(ptr noundef %i.eh, ptr noundef nonnull %i.ei, i64 noundef 0, i32 noundef 1) #23
  %i.ej = load ptr, ptr %i.ef, align 8
  %.val = load i8, ptr %i.cn, align 2
  %i.ek = zext nneg i8 %.val to i64
  %i.el = shl i64 %.0147155162, %i.ek
  %i.em = tail call ptr @blk_aio_preadv(ptr noundef %i.ej, i64 noundef %i.el, ptr noundef nonnull %i.ed, i32 noundef 0, ptr noundef nonnull @nvme_copy_in_cb, ptr noundef nonnull %0) #23
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.em, ptr %i.en, align 8
  br label %bb.ao

nvme_copy_matching_ns_format.exit.thread:         ; preds = %bb.p, %bb.o, %bb.n, %nvme_copy_ns_format_match.exit.i, %nvme_check_bounds.exit, %trace_pci_nvme_copy_source_range.exit, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.k, %bb.f, %nvme_ns.exit, %bb.d, %bb.ad, %bb.ab
  %.0 = phi i16 [ 16386, %nvme_ns.exit ], [ 16395, %bb.d ], [ 16775, %bb.f ], [ 16773, %bb.p ], [ 16773, %bb.v ], [ 16512, %nvme_check_bounds.exit ], [ %i.dh, %bb.ab ], [ %i.dl, %bb.ad ], [ 16773, %bb.u ], [ 16773, %bb.t ], [ 16773, %bb.s ], [ 16773, %bb.r ], [ 16773, %bb.q ], [ 16386, %bb.k ], [ 16773, %bb.o ], [ 16771, %trace_pci_nvme_copy_source_range.exit ], [ 16773, %nvme_copy_ns_format_match.exit.i ], [ 16773, %bb.n ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i16 %.0, ptr %i.eo, align 8
  store i32 -1, ptr %i.m, align 8
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre176 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.b, %bb.a, %nvme_copy_matching_ns_format.exit.thread
  %i.ep = phi ptr [ %i.d, %bb.b ], [ %i.d, %bb.a ], [ %.pre176, %nvme_copy_matching_ns_format.exit.thread ]
  %i.eq = phi ptr [ %i.b, %bb.b ], [ %i.b, %bb.a ], [ %.pre, %nvme_copy_matching_ns_format.exit.thread ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 152
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = tail call ptr @blk_get_stats(ptr noundef %i.es) #23 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ev = load i32, ptr %i.eu, align 8            ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ex = load i32, ptr %i.ew, align 4
  %.not.i127 = icmp eq i32 %i.ev, %i.ex
  br i1 %.not.i127, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  store i32 %i.ev, ptr %i.ey, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @qemu_iovec_destroy(ptr noundef nonnull %i.ez) #23
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fb = load ptr, ptr %i.fa, align 8
  tail call void @g_free(ptr noundef %i.fb) #23
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fd = load ptr, ptr %i.fc, align 8
  tail call void @g_free(ptr noundef %i.fd) #23
  %i.fe = load i32, ptr %i.m, align 8
  %i.ff = icmp slt i32 %i.fe, 0
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  br i1 %i.ff, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  tail call void @block_acct_failed(ptr noundef %i.et, ptr noundef nonnull %i.fg) #23
  tail call void @block_acct_failed(ptr noundef %i.et, ptr noundef nonnull %i.fh) #23
  br label %nvme_copy_done.exit

bb.an:                                            ; preds = %bb.al
  tail call void @block_acct_done(ptr noundef %i.et, ptr noundef nonnull %i.fg) #23
  tail call void @block_acct_done(ptr noundef %i.et, ptr noundef nonnull %i.fh) #23
  br label %nvme_copy_done.exit

nvme_copy_done.exit:                              ; preds = %bb.am, %bb.an
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = load i32, ptr %i.m, align 8
  tail call void %i.fj(ptr noundef %i.fl, i32 noundef %i.fm) #23, !inline_history !74
  tail call void @qemu_aio_unref(ptr noundef nonnull %0) #23
  br label %bb.ao

bb.ao:                                            ; preds = %nvme_copy_done.exit, %bb.ai
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @nvme_copy_cancel(ptr nofree noundef captures(none) initializes((64, 68)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 -125, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @blk_aio_cancel_async(ptr noundef nonnull %i.c) #23
  store ptr null, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @nvme_copy_matching_ns_format(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12600
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, -3
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %nvme_copy_ns_format_match.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12600
  %i.f = load i8, ptr %i.e, align 8
  %i.g = and i8 %i.f, -3
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %nvme_copy_ns_format_match.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12586
  %i.j = load i8, ptr %i.i, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12586
  %i.l = load i8, ptr %i.k, align 2
  %i.m = icmp eq i8 %i.j, %i.l                    ; 2 uses
  br i1 %2, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.m, label %nvme_copy_ns_format_match.exit, label %nvme_copy_ns_format_match.exit.thread

nvme_copy_ns_format_match.exit:                   ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12584
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12584
  %i.p = load i16, ptr %i.o, align 8
  %i.q = load i16, ptr %i.n, align 8
  %i.r = icmp eq i16 %i.p, %i.q
  br i1 %i.r, label %bb.f, label %nvme_copy_ns_format_match.exit.thread

.critedge:                                        ; preds = %bb.c
  br i1 %i.m, label %nvme_copy_ns_format_match.exit10, label %nvme_copy_ns_format_match.exit.thread

nvme_copy_ns_format_match.exit10:                 ; preds = %.critedge
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12584
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12584
  %i.u = load i16, ptr %i.t, align 8
  %i.v = load i16, ptr %i.s, align 8
  %i.w = icmp eq i16 %i.u, %i.v
  br i1 %i.w, label %bb.e, label %nvme_copy_ns_format_match.exit.thread

bb.e:                                             ; preds = %nvme_copy_ns_format_match.exit10
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 325
  %i.y = load i8, ptr %i.x, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 325
  %i.aa = load i8, ptr %i.z, align 1
  %.not = icmp eq i8 %i.y, %i.aa
  br i1 %.not, label %bb.f, label %nvme_copy_ns_format_match.exit.thread

bb.f:                                             ; preds = %nvme_copy_ns_format_match.exit, %bb.e
  br label %nvme_copy_ns_format_match.exit.thread

nvme_copy_ns_format_match.exit.thread:            ; preds = %.critedge, %bb.d, %nvme_copy_ns_format_match.exit10, %bb.e, %nvme_copy_ns_format_match.exit, %bb.a, %bb.b, %bb.f
  %.0 = phi i1 [ false, %nvme_copy_ns_format_match.exit ], [ true, %bb.f ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.e ], [ false, %nvme_copy_ns_format_match.exit10 ], [ false, %bb.d ], [ false, %.critedge ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @nvme_copy_corresp_pi_format(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12600
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, -3
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %nvme_copy_corresp_pi_match.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12600
  %i.f = load i8, ptr %i.e, align 8
  %i.g = and i8 %i.f, -3
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %nvme_copy_corresp_pi_match.exit.thread

bb.c:                                             ; preds = %bb.b
  br i1 %2, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 12584
  %.val8 = load i16, ptr %i.i, align 8
  %i.j = icmp eq i16 %.val8, 0
  br i1 %i.j, label %bb.e, label %nvme_copy_corresp_pi_match.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12584
  %i.l = load i16, ptr %i.k, align 8
  switch i16 %i.l, label %nvme_copy_corresp_pi_match.exit.thread [
    i16 8, label %nvme_copy_corresp_pi_match.exit
    i16 16, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %nvme_copy_corresp_pi_match.exit

nvme_copy_corresp_pi_match.exit:                  ; preds = %bb.e, %bb.f
  %.sink1.i = phi i8 [ 1, %bb.f ], [ 0, %bb.e ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12608
  %i.n = load i8, ptr %i.m, align 8
  %i.o = icmp eq i8 %i.n, %.sink1.i
  br i1 %i.o, label %bb.i, label %nvme_copy_corresp_pi_match.exit.thread

.critedge:                                        ; preds = %bb.c
  %i.p = getelementptr i8, ptr %1, i64 12584
  %.val = load i16, ptr %i.p, align 8
  %i.q = icmp eq i16 %.val, 0
  br i1 %i.q, label %bb.g, label %nvme_copy_corresp_pi_match.exit.thread

bb.g:                                             ; preds = %.critedge
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12584
end_hunk_1
begin_hunk_2_@nvme_set_feature:nvme_cid.exit

bb.t:                                             ; preds = %bb.k
  %i.ba = icmp eq i32 %i.f, -1
  br i1 %i.ba, label %.preheader, label %bb.y

.preheader:                                       ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24192 ; 2 uses
  br label %nvme_ns.exit143

nvme_ns.exit143:                                  ; preds = %nvme_ns.exit143.thread.1, %.preheader
  %indvars.iv178 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next179.1, %nvme_ns.exit143.thread.1 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv178
  %i.bd = load ptr, ptr %i.bc, align 8            ; 3 uses
  %.not129 = icmp eq ptr %i.bd, null
  br i1 %.not129, label %nvme_ns.exit143.thread, label %bb.u

bb.u:                                             ; preds = %nvme_ns.exit143
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 320
  %i.bf = load i8, ptr %i.be, align 8
  %i.bg = and i8 %i.bf, 4
  %.not130 = icmp eq i8 %i.bg, 0
  br i1 %.not130, label %nvme_ns.exit143.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 12936
  store i32 %.fr165, ptr %i.bh, align 8
  br label %nvme_ns.exit143.thread

nvme_ns.exit143.thread:                           ; preds = %bb.u, %bb.v, %nvme_ns.exit143
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv178
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8            ; 3 uses
  %.not129.1 = icmp eq ptr %i.bk, null
  br i1 %.not129.1, label %nvme_ns.exit143.thread.1, label %bb.w

bb.w:                                             ; preds = %nvme_ns.exit143.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 320
  %i.bm = load i8, ptr %i.bl, align 8
  %i.bn = and i8 %i.bm, 4
  %.not130.1 = icmp eq i8 %i.bn, 0
  br i1 %.not130.1, label %nvme_ns.exit143.thread.1, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 12936
  store i32 %.fr165, ptr %i.bo, align 8
  br label %nvme_ns.exit143.thread.1

nvme_ns.exit143.thread.1:                         ; preds = %bb.x, %bb.w, %nvme_ns.exit143.thread
  %indvars.iv.next179.1 = add nuw nsw i64 %indvars.iv178, 2 ; 2 uses
  %exitcond181.not.1 = icmp eq i64 %indvars.iv.next179.1, 257
  br i1 %exitcond181.not.1, label %nvme_smart_event.exit, label %nvme_ns.exit143, !llvm.loop !90

bb.y:                                             ; preds = %bb.t
  %.not127 = icmp eq ptr %.0104, null
  br i1 %.not127, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @__assert_fail(ptr noundef nonnull @.str.268, ptr noundef nonnull @.str, i32 noundef 6789, ptr noundef nonnull @__PRETTY_FUNCTION__.nvme_set_feature) #24
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %.0104, i64 320
  %i.bq = load i8, ptr %i.bp, align 8
  %i.br = and i8 %i.bq, 4
  %.not128 = icmp eq i8 %i.br, 0
  br i1 %.not128, label %nvme_smart_event.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bs = getelementptr inbounds nuw i8, ptr %.0104, i64 12936
  store i32 %.fr165, ptr %i.bs, align 8
  br label %nvme_smart_event.exit

nvme_ns.exit146:                                  ; preds = %.preheader158, %nvme_ns.exit146.thread
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %nvme_ns.exit146.thread ], [ 1, %.preheader158 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv170
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not126 = icmp eq ptr %i.bu, null
  br i1 %.not126, label %nvme_ns.exit146.thread, label %bb.ac

bb.ac:                                            ; preds = %nvme_ns.exit146
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 152 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = tail call zeroext i1 @blk_enable_write_cache(ptr noundef %i.bw) #23
  br i1 %i.bx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.by = load ptr, ptr %i.bv, align 8
  %i.bz = tail call i32 @blk_flush(ptr noundef %i.by) #23 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ca = load ptr, ptr %i.bv, align 8
  tail call void @blk_set_enable_write_cache(ptr noundef %i.ca, i1 noundef zeroext false) #23
  br label %nvme_ns.exit146.thread

nvme_ns.exit146.thread:                           ; preds = %nvme_ns.exit146, %bb.ae
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next171, 257
  br i1 %exitcond173.not, label %nvme_smart_event.exit, label %nvme_ns.exit146, !llvm.loop !89

bb.af:                                            ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 7618
  %i.cc = load i8, ptr %i.cb, align 2, !range !18, !noundef !19
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %nvme_smart_event.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ce = and i32 %.fr165, 65535                  ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 65535
  br i1 %i.cf, label %nvme_smart_event.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cg = lshr i32 %.fr165, 16                    ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 65535
  br i1 %i.ch, label %nvme_smart_event.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ci = add nuw nsw i32 %i.ce, 1
  %i.cj = add nuw nsw i32 %i.cg, 1
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 7680 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 16           ; 2 uses
  tail call fastcc void @trace_pci_nvme_setfeat_numq(i32 noundef %i.ci, i32 noundef %i.cj, i32 noundef %i.cl, i32 noundef %i.cl)
  %i.cm = load i32, ptr %i.ck, align 16
  %i.cn = add i32 %i.cm, -1                       ; 2 uses
  %i.co = shl i32 %i.cn, 16
  %i.cp = or i32 %i.co, %i.cn
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %i.cp, ptr %i.cq, align 8
  br label %nvme_smart_event.exit

bb.aj:                                            ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 30612
  store i32 %.fr165, ptr %i.cr, align 4
  br label %nvme_smart_event.exit

bb.ak:                                            ; preds = %bb.k
  %i.cs = tail call fastcc zeroext i16 @nvme_set_feature_timestamp(ptr noundef %0, ptr noundef nonnull %1)
  br label %nvme_smart_event.exit

bb.al:                                            ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 30616
  %i.cu = tail call fastcc zeroext i16 @nvme_h2c(ptr noundef %0, ptr noundef nonnull %i.ct, i32 noundef 512, ptr noundef nonnull %1) ; 2 uses
  %.not123 = icmp eq i16 %i.cu, 0
  br i1 %.not123, label %.preheader160, label %nvme_smart_event.exit

.preheader160:                                    ; preds = %bb.al
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24192
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 30618
  br label %nvme_ns.exit149

nvme_ns.exit149:                                  ; preds = %.preheader160, %nvme_ns.exit149.thread
  %indvars.iv = phi i64 [ 1, %.preheader160 ], [ %indvars.iv.next, %nvme_ns.exit149.thread ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv
  %i.cy = load ptr, ptr %i.cx, align 8            ; 3 uses
  %.not124 = icmp eq ptr %i.cy, null
  br i1 %.not124, label %nvme_ns.exit149.thread, label %bb.am

bb.am:                                            ; preds = %nvme_ns.exit149
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 12588
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = trunc i32 %i.da to i8
  %i.dc = add i8 %i.db, -1                        ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 321 ; 2 uses
  store i8 %i.dc, ptr %i.dd, align 1
  %i.de = load i8, ptr %i.cw, align 2
  %.not125 = icmp eq i8 %i.de, 0
  br i1 %.not125, label %bb.an, label %nvme_ns.exit149.thread

bb.an:                                            ; preds = %bb.am
  %i.df = tail call i8 @llvm.umin.i8(i8 %i.dc, i8 15)
  store i8 %i.df, ptr %i.dd, align 1
  br label %nvme_ns.exit149.thread

nvme_ns.exit149.thread:                           ; preds = %bb.am, %bb.an, %nvme_ns.exit149
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 257
  br i1 %exitcond.not, label %nvme_smart_event.exit, label %nvme_ns.exit149, !llvm.loop !91

bb.ao:                                            ; preds = %bb.k
  %i.dg = and i32 %.fr165, 511                    ; 2 uses
  %.not122 = icmp eq i32 %i.dg, 0
  br i1 %.not122, label %nvme_smart_event.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @trace_pci_nvme_err_invalid_iocsci(i32 noundef %i.dg)
  br label %nvme_smart_event.exit

bb.aq:                                            ; preds = %bb.k
  %i.dh = tail call fastcc zeroext i16 @nvme_set_feature_fdp_events(ptr noundef %0, ptr noundef %.0104, ptr noundef nonnull %1)
  br label %nvme_smart_event.exit

bb.ar:                                            ; preds = %bb.k
  %.val = load i32, ptr %i.c, align 4
  tail call fastcc void @nvme_set_feature_write_atomicity(ptr noundef %0, i32 %.val)
  br label %nvme_smart_event.exit

bb.as:                                            ; preds = %bb.k
  br label %nvme_smart_event.exit

nvme_smart_event.exit:                            ; preds = %nvme_ns.exit149.thread, %nvme_ns.exit146.thread, %nvme_ns.exit146.thread.us, %nvme_ns.exit143.thread.1, %.split.i, %bb.s, %bb.ai, %bb.aj, %bb.m, %bb.r, %bb.ab, %bb.aa, %bb.ao, %bb.k, %bb.al, %bb.ag, %bb.ah, %bb.af, %bb.n, %bb.j, %bb.i, %nvme_ns.exit, %bb.g, %bb.d, %trace_pci_nvme_setfeat.exit, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ak
  %.0 = phi i16 [ 16395, %bb.g ], [ 16654, %bb.as ], [ 16396, %bb.k ], [ 16654, %bb.j ], [ 16386, %bb.n ], [ 16396, %bb.af ], [ %i.cs, %bb.ak ], [ 16386, %bb.ag ], [ %i.cu, %bb.al ], [ 16683, %bb.ap ], [ 0, %nvme_ns.exit146.thread.us ], [ %i.dh, %bb.aq ], [ 0, %bb.ar ], [ 16653, %trace_pci_nvme_setfeat.exit ], [ 16386, %bb.d ], [ 16386, %nvme_ns.exit ], [ %., %bb.i ], [ 16386, %bb.ah ], [ 0, %bb.ao ], [ 0, %nvme_ns.exit146.thread ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %.split.i ], [ 0, %bb.m ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %nvme_ns.exit143.thread.1 ], [ 0, %nvme_ns.exit149.thread ]
  ret i16 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext range(i16 0, 16426) i16 @nvme_get_feature(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
nvme_cid.exit:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.c = load i32, ptr %i.b, align 1              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.e = load i32, ptr %i.d, align 1              ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.g = load i32, ptr %i.f, align 1
  %.fr144 = freeze i32 %i.g                       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4
  %i.h = trunc i32 %i.c to i8                     ; 3 uses
  %i.i = lshr i32 %i.c, 8
  %i.j = and i32 %i.i, 7                          ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.l = load i16, ptr %i.k, align 4
  %i.m = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i109 = icmp eq i32 %i.m, 0
  br i1 %.not.i109, label %trace_pci_nvme_getfeat.exit, label %bb.a, !prof !17

bb.a:                                             ; preds = %nvme_cid.exit
  %i.n = load i16, ptr @_TRACE_PCI_NVME_GETFEAT_DSTATE, align 2
  %.not5.i = icmp eq i16 %i.n, 0
  br i1 %.not5.i, label %trace_pci_nvme_getfeat.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr @qemu_loglevel, align 4
  %i.p = and i32 %i.o, 32768
  %.not6.i = icmp eq i32 %i.p, 0
  br i1 %.not6.i, label %trace_pci_nvme_getfeat.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = zext i16 %i.l to i32
  %i.r = and i32 %i.c, 255
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.277, i32 noundef %i.q, i32 noundef %.fr144, i32 noundef %i.r, i32 noundef %i.j, i32 noundef %i.e) #23
  br label %trace_pci_nvme_getfeat.exit

trace_pci_nvme_getfeat.exit:                      ; preds = %nvme_cid.exit, %bb.a, %bb.b, %bb.c
  %.mask = and i32 %i.c, 255
  %i.s = zext nneg i32 %.mask to i64              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr @nvme_feature_support, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !range !18, !noundef !19
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %nvme_ns.exit.thread

bb.d:                                             ; preds = %trace_pci_nvme_getfeat.exit
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @nvme_feature_cap, i64 %i.s
  switch i8 %i.h, label %bb.f [
    i8 30, label %bb.e
    i8 5, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.x = add i32 %.fr144, -1
  %or.cond143 = icmp ult i32 %i.x, 256
  br i1 %or.cond143, label %nvme_ns.exit, label %nvme_ns.exit.thread

nvme_ns.exit:                                     ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24192
  %i.z = zext nneg i32 %.fr144 to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %nvme_ns.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.d, %nvme_ns.exit
  switch i32 %i.j, label %bb.h [
    i32 3, label %bb.g
    i32 2, label %bb.ab
    i32 1, label %bb.ab
  ]

bb.g:                                             ; preds = %bb.f
  %i.ac = load i32, ptr %i.w, align 4
  br label %trace_pci_nvme_getfeat_numq.exit

bb.h:                                             ; preds = %bb.f
  switch i8 %i.h, label %bb.an [
    i8 4, label %bb.i
    i8 5, label %bb.m
    i8 6, label %bb.p
    i8 11, label %bb.s
    i8 14, label %bb.t
    i8 22, label %bb.u
    i8 29, label %bb.v
    i8 30, label %bb.y
    i8 7, label %bb.ad
    i8 9, label %bb.ah
    i8 10, label %bb.am
  ]

bb.i:                                             ; preds = %bb.h
  %i.ad = and i32 %i.e, 983040
  %.not102 = icmp eq i32 %i.ad, 0
  br i1 %.not102, label %bb.j, label %trace_pci_nvme_getfeat_numq.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = lshr i32 %i.e, 20
  %i.af = and i32 %i.ae, 3
  switch i32 %i.af, label %nvme_ns.exit.thread [
    i32 0, label %bb.k
    i32 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 30608
  %i.ah = load i16, ptr %i.ag, align 16
  %i.ai = zext i16 %i.ah to i32
  br label %trace_pci_nvme_getfeat_numq.exit

bb.l:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 30610
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = zext i16 %i.ak to i32
  br label %trace_pci_nvme_getfeat_numq.exit

bb.m:                                             ; preds = %bb.h
  %.not.i112 = icmp ne i32 %.fr144, 0
  %i.am = add i32 %.fr144, 1
  %i.an = icmp ult i32 %i.am, 258
  %i.ao = and i1 %.not.i112, %i.an
  br i1 %i.ao, label %bb.n, label %nvme_ns.exit.thread

bb.n:                                             ; preds = %bb.m
  %or.cond.i113 = icmp slt i32 %.fr144, 1
  br i1 %or.cond.i113, label %nvme_ns.exit.thread, label %nvme_ns.exit115

nvme_ns.exit115:                                  ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24192
  %i.aq = zext nneg i32 %.fr144 to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not101 = icmp eq ptr %i.as, null
  br i1 %.not101, label %nvme_ns.exit.thread, label %bb.o, !prof !28

bb.o:                                             ; preds = %nvme_ns.exit115
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12936
  %i.au = load i32, ptr %i.at, align 8
  br label %trace_pci_nvme_getfeat_numq.exit

bb.p:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24192
  br label %nvme_ns.exit118

nvme_ns.exit118:                                  ; preds = %bb.p, %nvme_ns.exit118.thread
  %indvars.iv = phi i64 [ 1, %bb.p ], [ %indvars.iv.next, %nvme_ns.exit118.thread ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not99 = icmp eq ptr %i.ax, null
  br i1 %.not99, label %nvme_ns.exit118.thread, label %bb.q

bb.q:                                             ; preds = %nvme_ns.exit118
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 152
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call zeroext i1 @blk_enable_write_cache(ptr noundef %i.az) #23
  br i1 %i.ba, label %bb.r, label %nvme_ns.exit118.thread

nvme_ns.exit118.thread:                           ; preds = %bb.q, %nvme_ns.exit118
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 257
  br i1 %exitcond.not, label %bb.r, label %nvme_ns.exit118, !llvm.loop !92

bb.r:                                             ; preds = %bb.q, %nvme_ns.exit118.thread
  %.not100 = phi ptr [ @.str.275, %bb.q ], [ @.str.276, %nvme_ns.exit118.thread ]
  %i.bb = phi i32 [ 1, %bb.q ], [ 0, %nvme_ns.exit118.thread ]
  tail call fastcc void @trace_pci_nvme_getfeat_vwcache(ptr noundef nonnull %.not100)
  br label %trace_pci_nvme_getfeat_numq.exit

bb.s:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 30612
  %i.bd = load i32, ptr %i.bc, align 4
  br label %trace_pci_nvme_getfeat_numq.exit

bb.t:                                             ; preds = %bb.h
  %i.be = tail call fastcc zeroext i16 @nvme_get_feature_timestamp(ptr noundef %0, ptr noundef nonnull %1)
  br label %nvme_ns.exit.thread

bb.u:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 30616
  %i.bg = tail call fastcc zeroext i16 @nvme_c2h(ptr noundef %0, ptr noundef nonnull %i.bf, i32 noundef 512, ptr noundef nonnull %1)
  br label %nvme_ns.exit.thread

bb.v:                                             ; preds = %bb.h
  %i.bh = and i32 %i.e, 255
  %.not97 = icmp eq i32 %i.bh, 1
  br i1 %.not97, label %bb.w, label %nvme_ns.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 11192
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not.i119 = icmp eq ptr %i.bj, null
  br i1 %.not.i119, label %nvme_ns.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12776
  %i.bl = load i8, ptr %i.bk, align 8, !range !18, !noundef !19
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %trace_pci_nvme_getfeat_numq.exit, label %nvme_ns.exit.thread

bb.y:                                             ; preds = %bb.h
  %.not.i121 = icmp ne i32 %.fr144, 0
  %i.bn = add i32 %.fr144, 1
  %i.bo = icmp ult i32 %i.bn, 258
  %i.bp = and i1 %.not.i121, %i.bo
  br i1 %i.bp, label %bb.z, label %nvme_ns.exit.thread

bb.z:                                             ; preds = %bb.y
  %or.cond.i122 = icmp slt i32 %.fr144, 1
  br i1 %or.cond.i122, label %nvme_ns.exit.thread, label %nvme_ns.exit124

nvme_ns.exit124:                                  ; preds = %bb.z
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24192
  %i.br = zext nneg i32 %.fr144 to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not95 = icmp eq ptr %i.bt, null
  br i1 %.not95, label %nvme_ns.exit.thread, label %bb.aa, !prof !28

bb.aa:                                            ; preds = %nvme_ns.exit124
  %i.bu = call fastcc zeroext i16 @nvme_get_feature_fdp_events(ptr noundef nonnull %0, ptr noundef nonnull %i.bt, ptr noundef nonnull %1, ptr noundef %i.a) ; 2 uses
  %.not96 = icmp eq i16 %i.bu, 0
  br i1 %.not96, label %.trace_pci_nvme_getfeat_numq.exit_crit_edge, label %nvme_ns.exit.thread

.trace_pci_nvme_getfeat_numq.exit_crit_edge:      ; preds = %bb.aa
  %.pre = load i32, ptr %i.a, align 4
  br label %trace_pci_nvme_getfeat_numq.exit

bb.ab:                                            ; preds = %bb.f, %bb.f
  switch i8 %i.h, label %bb.an [
    i8 4, label %bb.ac
    i8 7, label %bb.ad
    i8 9, label %bb.ah
    i8 29, label %bb.aj
    i8 10, label %bb.am
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.bv = and i32 %i.e, 4128768
  %or.cond = icmp eq i32 %i.bv, 0
  %spec.store.select = select i1 %or.cond, i32 343, i32 0
  br label %trace_pci_nvme_getfeat_numq.exit

bb.ad:                                            ; preds = %bb.h, %bb.ab
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 7680
  %i.bx = load i32, ptr %i.bw, align 16
  %i.by = add i32 %i.bx, -1                       ; 2 uses
  %i.bz = shl i32 %i.by, 16
  %i.ca = or i32 %i.bz, %i.by                     ; 5 uses
  %i.cb = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i125 = icmp eq i32 %i.cb, 0
  br i1 %.not.i125, label %trace_pci_nvme_getfeat_numq.exit, label %bb.ae, !prof !17

bb.ae:                                            ; preds = %bb.ad
  %i.cc = load i16, ptr @_TRACE_PCI_NVME_GETFEAT_NUMQ_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.cc, 0
  br i1 %.not1.i, label %trace_pci_nvme_getfeat_numq.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cd = load i32, ptr @qemu_loglevel, align 4
  %i.ce = and i32 %i.cd, 32768
  %.not2.i = icmp eq i32 %i.ce, 0
  br i1 %.not2.i, label %trace_pci_nvme_getfeat_numq.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.280, i32 noundef %i.ca) #23
  br label %trace_pci_nvme_getfeat_numq.exit

bb.ah:                                            ; preds = %bb.h, %bb.ab
  %i.cf = and i32 %i.e, 65535                     ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 7680
  %i.ch = load i32, ptr %i.cg, align 16
  %i.ci = add i32 %i.ch, 1
  %.not106 = icmp ult i32 %i.cf, %i.ci
  br i1 %.not106, label %bb.ai, label %nvme_ns.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 26424
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = icmp eq i32 %i.cf, %i.ck
  %i.cm = or disjoint i32 %i.cf, 65536
  %spec.select = select i1 %i.cl, i32 %i.cm, i32 %i.cf
  br label %trace_pci_nvme_getfeat_numq.exit

bb.aj:                                            ; preds = %bb.ab
  %i.cn = and i32 %i.e, 255
  %.not104 = icmp eq i32 %i.cn, 1
  br i1 %.not104, label %bb.ak, label %nvme_ns.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 11192
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %.not.i126 = icmp eq ptr %i.cp, null
  br i1 %.not.i126, label %nvme_ns.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 12776
  %i.cr = load i8, ptr %i.cq, align 8, !range !18, !noundef !19
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %trace_pci_nvme_getfeat_numq.exit, label %nvme_ns.exit.thread

bb.am:                                            ; preds = %bb.h, %bb.ab
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 35244
  %i.cu = load i32, ptr %i.ct, align 4
  br label %trace_pci_nvme_getfeat_numq.exit

bb.an:                                            ; preds = %bb.h, %bb.ab
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr @nvme_get_feature.nvme_feature_default, i64 %i.s
  %i.cw = load i32, ptr %i.cv, align 4
  br label %trace_pci_nvme_getfeat_numq.exit

trace_pci_nvme_getfeat_numq.exit:                 ; preds = %bb.ai, %bb.al, %bb.x, %.trace_pci_nvme_getfeat_numq.exit_crit_edge, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.am, %bb.an, %bb.i, %bb.s, %bb.r, %bb.o, %bb.l, %bb.k, %bb.g
  %i.cx = phi i32 [ %.pre, %.trace_pci_nvme_getfeat_numq.exit_crit_edge ], [ 1, %bb.al ], [ %i.ca, %bb.ag ], [ %i.ca, %bb.af ], [ %i.ca, %bb.ae ], [ %i.ca, %bb.ad ], [ %i.ac, %bb.g ], [ %spec.store.select, %bb.ac ], [ %i.cu, %bb.am ], [ %i.cw, %bb.an ], [ 1, %bb.x ], [ %spec.select, %bb.ai ], [ 0, %bb.i ], [ %i.bd, %bb.s ], [ %i.bb, %bb.r ], [ %i.au, %bb.o ], [ %i.al, %bb.l ], [ %i.ai, %bb.k ]
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %i.cx, ptr %i.cy, align 8
  br label %nvme_ns.exit.thread

nvme_ns.exit.thread:                              ; preds = %bb.ak, %bb.al, %bb.w, %bb.x, %bb.e, %bb.z, %bb.n, %bb.aj, %bb.ah, %bb.aa, %nvme_ns.exit124, %bb.y, %bb.v, %nvme_ns.exit115, %bb.m, %bb.j, %nvme_ns.exit, %trace_pci_nvme_getfeat.exit, %trace_pci_nvme_getfeat_numq.exit, %bb.u, %bb.t
  %.082 = phi i16 [ 16386, %trace_pci_nvme_getfeat.exit ], [ 0, %trace_pci_nvme_getfeat_numq.exit ], [ %i.bu, %bb.aa ], [ 16386, %bb.ah ], [ 16386, %bb.w ], [ 16386, %nvme_ns.exit ], [ 16395, %bb.m ], [ 16386, %bb.j ], [ %i.be, %bb.t ], [ %i.bg, %bb.u ], [ 16386, %nvme_ns.exit115 ], [ 16386, %bb.z ], [ 16395, %bb.y ], [ 16386, %nvme_ns.exit124 ], [ 16386, %bb.v ], [ 16395, %bb.e ], [ 16386, %bb.aj ], [ 16386, %bb.n ], [ 16386, %bb.x ], [ 16386, %bb.al ], [ 16386, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i16 %.082
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext range(i16 -1, 262) i16 @nvme_aer(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %nvme_cid.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i16, ptr %i.a, align 4
  %i.c = zext i16 %i.b to i32
  br label %nvme_cid.exit

nvme_cid.exit:                                    ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.c, %bb.b ], [ 65535, %bb.a ]
  %i.d = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i9 = icmp eq i32 %i.d, 0
  br i1 %.not.i9, label %trace_pci_nvme_aer.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %nvme_cid.exit
  %i.e = load i16, ptr @_TRACE_PCI_NVME_AER_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.e, 0
  br i1 %.not1.i, label %trace_pci_nvme_aer.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 32768
  %.not2.i = icmp eq i32 %i.g, 0
  br i1 %.not2.i, label %trace_pci_nvme_aer.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.281, i32 noundef %.0.i) #23
  br label %trace_pci_nvme_aer.exit

trace_pci_nvme_aer.exit:                          ; preds = %nvme_cid.exit, %bb.c, %bb.d, %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 7632 ; 3 uses
  %i.i = load i8, ptr %i.h, align 16              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 7448
  %i.k = load i8, ptr %i.j, align 8
  %i.l = icmp ugt i8 %i.i, %i.k
  br i1 %i.l, label %bb.f, label %bb.j

bb.f:                                             ; preds = %trace_pci_nvme_aer.exit
  %i.m = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i10 = icmp eq i32 %i.m, 0
  br i1 %.not.i10, label %trace_pci_nvme_aer_aerl_exceeded.exit, label %bb.g, !prof !17

bb.g:                                             ; preds = %bb.f
  %i.n = load i16, ptr @_TRACE_PCI_NVME_AER_AERL_EXCEEDED_DSTATE, align 2
  %.not1.i11 = icmp eq i16 %i.n, 0
  br i1 %.not1.i11, label %trace_pci_nvme_aer_aerl_exceeded.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load i32, ptr @qemu_loglevel, align 4
  %i.p = and i32 %i.o, 32768
  %.not2.i12 = icmp eq i32 %i.p, 0
  br i1 %.not2.i12, label %trace_pci_nvme_aer_aerl_exceeded.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.282) #23
  br label %trace_pci_nvme_aer_aerl_exceeded.exit

bb.j:                                             ; preds = %trace_pci_nvme_aer.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 11120
  %i.r = load ptr, ptr %i.q, align 16
  %i.s = zext i8 %i.i to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  store ptr %1, ptr %i.t, align 8
  %i.u = load i8, ptr %i.h, align 16
  %i.v = add i8 %i.u, 1
  store i8 %i.v, ptr %i.h, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 11128
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %trace_pci_nvme_aer_aerl_exceeded.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @nvme_process_aers(ptr noundef nonnull %0)
  br label %trace_pci_nvme_aer_aerl_exceeded.exit

trace_pci_nvme_aer_aerl_exceeded.exit:            ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.j, %bb.k
  %.0 = phi i16 [ -1, %bb.j ], [ -1, %bb.k ], [ 261, %bb.f ], [ 261, %bb.g ], [ 261, %bb.h ], [ 261, %bb.i ]
  ret i16 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext range(i16 0, 16682) i16 @nvme_ns_attachment(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
nvme_cid.exit:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [2048 x i16], align 16            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.b, i8 0, i64 4096, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 15                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.j = load i16, ptr %i.i, align 4
  %i.k = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i60 = icmp eq i32 %i.k, 0
  br i1 %.not.i60, label %trace_pci_nvme_ns_attachment.exit, label %bb.a, !prof !17

bb.a:                                             ; preds = %nvme_cid.exit
  %i.l = load i16, ptr @_TRACE_PCI_NVME_NS_ATTACHMENT_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.l, 0
  br i1 %.not2.i, label %trace_pci_nvme_ns_attachment.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr @qemu_loglevel, align 4
  %i.n = and i32 %i.m, 32768
  %.not3.i = icmp eq i32 %i.n, 0
  br i1 %.not3.i, label %trace_pci_nvme_ns_attachment.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = zext i16 %i.j to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.283, i32 noundef %i.o, i32 noundef %i.g) #23
  br label %trace_pci_nvme_ns_attachment.exit

trace_pci_nvme_ns_attachment.exit:                ; preds = %nvme_cid.exit, %bb.a, %bb.b, %bb.c
  %.not.i61 = icmp ne i32 %i.d, 0
  %i.p = add i32 %i.d, 1
  %i.q = icmp ult i32 %i.p, 258
  %i.r = and i1 %.not.i61, %i.q
  br i1 %i.r, label %bb.d, label %nvme_subsys_ns.exit.thread

bb.d:                                             ; preds = %trace_pci_nvme_ns_attachment.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 11192 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  %i.v = icmp slt i32 %i.d, 1
  %or.cond3.i = or i1 %i.v, %i.u
  br i1 %or.cond3.i, label %nvme_subsys_ns.exit.thread, label %nvme_subsys_ns.exit

nvme_subsys_ns.exit:                              ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 2584
  %i.x = zext nneg i32 %i.d to i64                ; 5 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8              ; 7 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %nvme_subsys_ns.exit.thread, label %bb.e

bb.e:                                             ; preds = %nvme_subsys_ns.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = tail call zeroext i16 @nvme_map_dptr(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, i64 noundef 4096, ptr noundef nonnull %i.ab) ; 2 uses
  %.not.i63 = icmp eq i16 %i.ac, 0
  br i1 %.not.i63, label %bb.f, label %nvme_subsys_ns.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str, i32 noundef 1377, ptr noundef nonnull @__PRETTY_FUNCTION__.nvme_tx) #24
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.af = and i32 %i.ad, 2
  %.not24.i.i = icmp eq i32 %i.af, 0
  br i1 %.not24.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !annotation !22
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ah = call i32 @dma_buf_write(ptr noundef nonnull %i.b, i64 noundef 4096, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ag, i64 4294967296) #23 ; 0 uses
  %i.ai = load i64, ptr %i.a, align 8
  %.not26.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not26.not.i.i, label %.thread.i.i, label %bb.j, !prof !17

.thread.i.i:                                      ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %nvme_h2c.exit

bb.j:                                             ; preds = %bb.i
  call fastcc void @trace_pci_nvme_err_invalid_dma()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %nvme_subsys_ns.exit.thread

bb.k:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ak = call i64 @qemu_iovec_to_buf(ptr noundef nonnull %i.aj, i64 noundef 0, ptr noundef nonnull %i.b, i64 noundef 4096) #23
  %.not25.not.i.i = icmp eq i64 %i.ak, 4096
  br i1 %.not25.not.i.i, label %nvme_h2c.exit, label %bb.l, !prof !17

bb.l:                                             ; preds = %bb.k
  call fastcc void @trace_pci_nvme_err_invalid_dma()
  br label %nvme_subsys_ns.exit.thread

nvme_h2c.exit:                                    ; preds = %bb.k, %.thread.i.i
  %i.al = load i16, ptr %i.b, align 16            ; 2 uses
  %.not54 = icmp eq i16 %i.al, 0
  br i1 %.not54, label %nvme_subsys_ns.exit.thread, label %.lr.ph
end_hunk_2
begin_hunk_3_@nvme_free_cq:bb.a
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #23 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26264
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = zext i16 %i.c to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @qemu_bh_delete(ptr noundef %i.i) #23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.k = load i8, ptr %i.j, align 4, !range !18, !noundef !19
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = shl i16 %i.c, 3
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 3040
  %i.o = zext i16 %i.m to i64
  %i.p = add nuw nsw i64 %i.o, 4100
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @memory_region_del_eventfd(ptr noundef nonnull %i.n, i64 noundef %i.p, i32 noundef 4, i1 noundef zeroext false, i64 noundef 0, ptr noundef nonnull %i.q) #23
  tail call void @event_notifier_set_handler(ptr noundef nonnull %i.q, ptr noundef null) #23
  tail call void @event_notifier_cleanup(ptr noundef nonnull %i.q) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = tail call i32 @msix_present(ptr noundef %i.a) #23
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load i16, ptr %i.s, align 4
  %.not16 = icmp eq i16 %i.t, 0
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i32, ptr %i.u, align 8
  tail call void @msix_vector_unuse(ptr noundef %i.a, i32 noundef %i.v) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.w = load i16, ptr %i.b, align 2
  %.not17 = icmp eq i16 %i.w, 0
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @g_free(ptr noundef nonnull %0) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

declare void @msix_vector_unuse(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_pci_nvme_err_invalid_create_cq_cqid(i16 noundef zeroext %0) unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_PCI_NVME_ERR_INVALID_CREATE_CQ_CQID_DSTATE, align 2
  %.not1 = icmp eq i16 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = zext i16 %0 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.249, i32 noundef %i.e) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_pci_nvme_err_invalid_create_cq_size(i16 noundef zeroext %0) unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_PCI_NVME_ERR_INVALID_CREATE_CQ_SIZE_DSTATE, align 2
  %.not1 = icmp eq i16 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = zext i16 %0 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.250, i32 noundef %i.e) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_pci_nvme_err_invalid_create_cq_addr(i64 noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_PCI_NVME_ERR_INVALID_CREATE_CQ_ADDR_DSTATE, align 2
  %.not1 = icmp eq i16 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.251, i64 noundef %0) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_pci_nvme_err_invalid_create_cq_vector(i16 noundef zeroext %0) unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_PCI_NVME_ERR_INVALID_CREATE_CQ_VECTOR_DSTATE, align 2
  %.not1 = icmp eq i16 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = zext i16 %0 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.252, i32 noundef %i.e) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_pci_nvme_err_invalid_create_cq_qflags(i16 noundef zeroext range(i16 0, 2) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_PCI_NVME_ERR_INVALID_CREATE_CQ_QFLAGS_DSTATE, align 2
  %.not1 = icmp eq i16 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = zext nneg i16 %0 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.253, i32 noundef %i.e) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext range(i16 0, 16685) i16 @nvme_identify_ns(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.c = load i32, ptr %i.b, align 1
  %.fr39 = freeze i32 %i.c                        ; 3 uses
  %i.d = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %trace_pci_nvme_identify_ns.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr @_TRACE_PCI_NVME_IDENTIFY_NS_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.e, 0
  br i1 %.not1.i, label %trace_pci_nvme_identify_ns.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 32768
  %.not2.i = icmp eq i32 %i.g, 0
  br i1 %.not2.i, label %trace_pci_nvme_identify_ns.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.255, i32 noundef %.fr39) #23
  br label %trace_pci_nvme_identify_ns.exit

trace_pci_nvme_identify_ns.exit:                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.h = add i32 %.fr39, -1
  %or.cond = icmp ult i32 %i.h, 256
  br i1 %or.cond, label %nvme_ns.exit, label %nvme_c2h.exit

nvme_ns.exit:                                     ; preds = %trace_pci_nvme_identify_ns.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24192
  %i.j = zext nneg i32 %.fr39 to i64              ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %nvme_ns.exit.thread, label %bb.g, !prof !28

nvme_ns.exit.thread:                              ; preds = %nvme_ns.exit
  br i1 %2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %nvme_ns.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 11192
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %nvme_subsys_ns.exit.thread, label %nvme_subsys_ns.exit

nvme_subsys_ns.exit:                              ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 2584
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.j
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.r, null
  br i1 %.not27, label %nvme_subsys_ns.exit.thread, label %.thread

nvme_subsys_ns.exit.thread:                       ; preds = %bb.e, %nvme_subsys_ns.exit
  %i.s = tail call fastcc zeroext i16 @nvme_rpt_empty_id_struct(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %nvme_c2h.exit

bb.f:                                             ; preds = %nvme_ns.exit.thread
  %i.t = tail call fastcc zeroext i16 @nvme_rpt_empty_id_struct(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %nvme_c2h.exit

bb.g:                                             ; preds = %nvme_ns.exit
  br i1 %2, label %bb.h, label %.thread

.thread:                                          ; preds = %nvme_subsys_ns.exit, %bb.g
  %.037 = phi ptr [ %i.l, %bb.g ], [ %i.r, %nvme_subsys_ns.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.037, i64 12600
  %i.v = load i8, ptr %i.u, align 8
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.h, label %nvme_c2h.exit

bb.h:                                             ; preds = %.thread, %bb.g
  %.038 = phi ptr [ %.037, %.thread ], [ %i.l, %bb.g ]
  %i.x = getelementptr inbounds nuw i8, ptr %.038, i64 296 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = tail call zeroext i16 @nvme_map_dptr(ptr noundef nonnull %0, ptr noundef nonnull %i.y, i64 noundef 4096, ptr noundef nonnull %i.z) ; 2 uses
  %.not.i30 = icmp eq i16 %i.aa, 0
  br i1 %.not.i30, label %bb.i, label %nvme_c2h.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %i.y, align 8             ; 2 uses
  %i.ac = and i32 %i.ab, 1
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str, i32 noundef 1377, ptr noundef nonnull @__PRETTY_FUNCTION__.nvme_tx) #24
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ad = and i32 %i.ab, 2
  %.not24.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not24.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !annotation !22
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.af = call i32 @dma_buf_read(ptr noundef nonnull %i.x, i64 noundef 4096, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ae, i64 4294967296) #23 ; 0 uses
  %i.ag = load i64, ptr %i.a, align 8
  %.not26.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not26.not.i.i, label %.thread.i.i, label %bb.m, !prof !17

.thread.i.i:                                      ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %nvme_c2h.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @trace_pci_nvme_err_invalid_dma()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %nvme_c2h.exit

bb.n:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ai = tail call i64 @qemu_iovec_from_buf(ptr noundef nonnull %i.ah, i64 noundef 0, ptr noundef nonnull %i.x, i64 noundef 4096) #23
  %.not25.not.i.i = icmp eq i64 %i.ai, 4096
  br i1 %.not25.not.i.i, label %nvme_c2h.exit, label %bb.o, !prof !17

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @trace_pci_nvme_err_invalid_dma()
  br label %nvme_c2h.exit

nvme_c2h.exit:                                    ; preds = %trace_pci_nvme_identify_ns.exit, %bb.o, %bb.n, %bb.m, %.thread.i.i, %bb.h, %.thread, %bb.f, %nvme_subsys_ns.exit.thread
  %.023 = phi i16 [ %i.s, %nvme_subsys_ns.exit.thread ], [ %i.t, %bb.f ], [ 16684, %.thread ], [ 16395, %trace_pci_nvme_identify_ns.exit ], [ %i.aa, %bb.h ], [ 16386, %bb.o ], [ 16386, %bb.m ], [ 0, %.thread.i.i ], [ 0, %bb.n ]
  ret i16 %.023
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext range(i16 0, 16404) i16 @nvme_identify_ctrl_list(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [2048 x i16], align 16            ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.d = load i32, ptr %i.c, align 1
  %.fr48 = freeze i32 %i.d                        ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.f = load i16, ptr %i.e, align 1              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.b, i8 0, i64 4096, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load i8, ptr %i.h, align 1
  %i.j = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %trace_pci_nvme_identify_ctrl_list.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.k = load i16, ptr @_TRACE_PCI_NVME_IDENTIFY_CTRL_LIST_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.k, 0
  br i1 %.not2.i, label %trace_pci_nvme_identify_ctrl_list.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr @qemu_loglevel, align 4
  %i.m = and i32 %i.l, 32768
  %.not3.i = icmp eq i32 %i.m, 0
  br i1 %.not3.i, label %trace_pci_nvme_identify_ctrl_list.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = zext i8 %i.i to i32
  %i.o = zext i16 %i.f to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.256, i32 noundef %i.n, i32 noundef %i.o) #23
  br label %trace_pci_nvme_identify_ctrl_list.exit

trace_pci_nvme_identify_ctrl_list.exit:           ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 11192
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %nvme_c2h.exit, label %bb.e

bb.e:                                             ; preds = %trace_pci_nvme_identify_ctrl_list.exit
  br i1 %2, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.r = add i32 %.fr48, -257
  %i.s = icmp ult i32 %i.r, -256
  br i1 %i.s, label %nvme_c2h.exit, label %nvme_subsys_ns.exit

nvme_subsys_ns.exit:                              ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 2584
  %i.u = zext nneg i32 %.fr48 to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8
  %.not31 = icmp eq ptr %i.w, null
  br i1 %.not31, label %nvme_c2h.exit, label %bb.g

bb.g:                                             ; preds = %nvme_subsys_ns.exit
  %i.x = icmp ult i16 %i.f, 256
  br i1 %i.x, label %nvme_subsys_ctrl.exit.lr.ph, label %._crit_edge

.thread:                                          ; preds = %bb.e
  %i.y = icmp ult i16 %i.f, 256
  br i1 %i.y, label %nvme_subsys_ctrl.exit.lr.ph.thread, label %._crit_edge

nvme_subsys_ctrl.exit.lr.ph.thread:               ; preds = %.thread
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 536 ; 3 uses
  %i.aa = zext nneg i16 %i.f to i64               ; 3 uses
  %i.ab = sub nuw nsw i64 256, %i.aa              ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.ac = icmp eq i16 %i.f, 255
  br i1 %i.ac, label %nvme_subsys_ctrl.exit.epil.preheader, label %nvme_subsys_ctrl.exit.lr.ph.thread.new

nvme_subsys_ctrl.exit.lr.ph.thread.new:           ; preds = %nvme_subsys_ctrl.exit.lr.ph.thread
  %unroll_iter = and i64 %i.ab, 510
  br label %nvme_subsys_ctrl.exit

nvme_subsys_ctrl.exit.lr.ph:                      ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 536 ; 3 uses
  %i.ae = zext nneg i32 %.fr48 to i64             ; 3 uses
  %i.af = zext nneg i16 %i.f to i64               ; 3 uses
  %i.ag = sub nuw nsw i64 256, %i.af              ; 3 uses
  %xtraiter63 = and i64 %i.ag, 1
  %i.ah = icmp eq i16 %i.f, 255
  br i1 %i.ah, label %nvme_subsys_ctrl.exit.us.epil.preheader, label %nvme_subsys_ctrl.exit.lr.ph.new

nvme_subsys_ctrl.exit.lr.ph.new:                  ; preds = %nvme_subsys_ctrl.exit.lr.ph
  %unroll_iter67 = and i64 %i.ag, 510
  br label %nvme_subsys_ctrl.exit.us

nvme_subsys_ctrl.exit.us:                         ; preds = %nvme_ns.exit.thread.us.1, %nvme_subsys_ctrl.exit.lr.ph.new
  %indvars.iv52 = phi i64 [ %i.af, %nvme_subsys_ctrl.exit.lr.ph.new ], [ %indvars.iv.next53.1, %nvme_ns.exit.thread.us.1 ] ; 4 uses
  %.046.us = phi i32 [ 0, %nvme_subsys_ctrl.exit.lr.ph.new ], [ %.1.us.1, %nvme_ns.exit.thread.us.1 ] ; 5 uses
  %niter68 = phi i64 [ 0, %nvme_subsys_ctrl.exit.lr.ph.new ], [ %niter68.next.1, %nvme_ns.exit.thread.us.1 ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv52
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %magicptr.us = ptrtoint ptr %i.aj to i64
  switch i64 %magicptr.us, label %nvme_ns.exit.us [
    i64 65535, label %nvme_ns.exit.thread.us
    i64 0, label %nvme_ns.exit.thread.us
  ]

nvme_ns.exit.us:                                  ; preds = %nvme_subsys_ctrl.exit.us
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24192
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ae
  %i.am = load ptr, ptr %i.al, align 8
  %.not33.us = icmp eq ptr %i.am, null
  br i1 %.not33.us, label %nvme_ns.exit.thread.us, label %bb.h

bb.h:                                             ; preds = %nvme_ns.exit.us
  %i.an = trunc i64 %indvars.iv52 to i16
  %i.ao = add i32 %.046.us, 1
  %i.ap = sext i32 %.046.us to i64
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.ap
  store i16 %i.an, ptr %i.aq, align 2
  br label %nvme_ns.exit.thread.us

nvme_ns.exit.thread.us:                           ; preds = %bb.h, %nvme_ns.exit.us, %nvme_subsys_ctrl.exit.us, %nvme_subsys_ctrl.exit.us
  %.1.us = phi i32 [ %i.ao, %bb.h ], [ %.046.us, %nvme_ns.exit.us ], [ %.046.us, %nvme_subsys_ctrl.exit.us ], [ %.046.us, %nvme_subsys_ctrl.exit.us ] ; 5 uses
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next53
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %magicptr.us.1 = ptrtoint ptr %i.as to i64
  switch i64 %magicptr.us.1, label %nvme_ns.exit.us.1 [
    i64 65535, label %nvme_ns.exit.thread.us.1
    i64 0, label %nvme_ns.exit.thread.us.1
  ]

nvme_ns.exit.us.1:                                ; preds = %nvme_ns.exit.thread.us
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24192
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ae
  %i.av = load ptr, ptr %i.au, align 8
  %.not33.us.1 = icmp eq ptr %i.av, null
  br i1 %.not33.us.1, label %nvme_ns.exit.thread.us.1, label %bb.i

bb.i:                                             ; preds = %nvme_ns.exit.us.1
  %i.aw = trunc i64 %indvars.iv.next53 to i16
  %i.ax = add i32 %.1.us, 1
  %i.ay = sext i32 %.1.us to i64
  %i.az = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.ay
  store i16 %i.aw, ptr %i.az, align 2
  br label %nvme_ns.exit.thread.us.1

nvme_ns.exit.thread.us.1:                         ; preds = %bb.i, %nvme_ns.exit.us.1, %nvme_ns.exit.thread.us, %nvme_ns.exit.thread.us
  %.1.us.1 = phi i32 [ %i.ax, %bb.i ], [ %.1.us, %nvme_ns.exit.us.1 ], [ %.1.us, %nvme_ns.exit.thread.us ], [ %.1.us, %nvme_ns.exit.thread.us ] ; 3 uses
  %indvars.iv.next53.1 = add nuw nsw i64 %indvars.iv52, 2 ; 2 uses
  %niter68.next.1 = add i64 %niter68, 2           ; 2 uses
  %niter68.ncmp.1 = icmp eq i64 %niter68.next.1, %unroll_iter67
  br i1 %niter68.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %nvme_subsys_ctrl.exit.us, !llvm.loop !100

nvme_subsys_ctrl.exit:                            ; preds = %nvme_ns.exit.thread.1, %nvme_subsys_ctrl.exit.lr.ph.thread.new
  %indvars.iv = phi i64 [ %i.aa, %nvme_subsys_ctrl.exit.lr.ph.thread.new ], [ %indvars.iv.next.1, %nvme_ns.exit.thread.1 ] ; 4 uses
  %.046 = phi i32 [ 0, %nvme_subsys_ctrl.exit.lr.ph.thread.new ], [ %.1.1, %nvme_ns.exit.thread.1 ] ; 4 uses
  %niter = phi i64 [ 0, %nvme_subsys_ctrl.exit.lr.ph.thread.new ], [ %niter.next.1, %nvme_ns.exit.thread.1 ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.bb = load ptr, ptr %i.ba, align 8
  %magicptr = ptrtoint ptr %i.bb to i64
  switch i64 %magicptr, label %bb.j [
    i64 65535, label %nvme_ns.exit.thread
    i64 0, label %nvme_ns.exit.thread
  ]

bb.j:                                             ; preds = %nvme_subsys_ctrl.exit
  %i.bc = trunc i64 %indvars.iv to i16
  %i.bd = add i32 %.046, 1
  %i.be = sext i32 %.046 to i64
  %i.bf = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.be
  store i16 %i.bc, ptr %i.bf, align 2
  br label %nvme_ns.exit.thread

nvme_ns.exit.thread:                              ; preds = %nvme_subsys_ctrl.exit, %nvme_subsys_ctrl.exit, %bb.j
  %.1 = phi i32 [ %i.bd, %bb.j ], [ %.046, %nvme_subsys_ctrl.exit ], [ %.046, %nvme_subsys_ctrl.exit ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next
  %i.bh = load ptr, ptr %i.bg, align 8
  %magicptr.1 = ptrtoint ptr %i.bh to i64
  switch i64 %magicptr.1, label %bb.k [
    i64 65535, label %nvme_ns.exit.thread.1
    i64 0, label %nvme_ns.exit.thread.1
  ]

bb.k:                                             ; preds = %nvme_ns.exit.thread
  %i.bi = trunc i64 %indvars.iv.next to i16
  %i.bj = add i32 %.1, 1
  %i.bk = sext i32 %.1 to i64
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.bk
  store i16 %i.bi, ptr %i.bl, align 2
  br label %nvme_ns.exit.thread.1

nvme_ns.exit.thread.1:                            ; preds = %bb.k, %nvme_ns.exit.thread, %nvme_ns.exit.thread
  %.1.1 = phi i32 [ %i.bj, %bb.k ], [ %.1, %nvme_ns.exit.thread ], [ %.1, %nvme_ns.exit.thread ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit60.unr-lcssa, label %nvme_subsys_ctrl.exit, !llvm.loop !100

._crit_edge.loopexit.unr-lcssa:                   ; preds = %nvme_ns.exit.thread.us.1
  %lcmp.mod64.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64.not, label %._crit_edge, label %nvme_subsys_ctrl.exit.us.epil.preheader

nvme_subsys_ctrl.exit.us.epil.preheader:          ; preds = %._crit_edge.loopexit.unr-lcssa, %nvme_subsys_ctrl.exit.lr.ph
  %indvars.iv52.epil.init = phi i64 [ %i.af, %nvme_subsys_ctrl.exit.lr.ph ], [ %indvars.iv.next53.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.046.us.epil.init = phi i32 [ 0, %nvme_subsys_ctrl.exit.lr.ph ], [ %.1.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod66 = trunc i64 %i.ag to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv52.epil.init
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %magicptr.us.epil = ptrtoint ptr %i.bn to i64
  switch i64 %magicptr.us.epil, label %nvme_ns.exit.us.epil [
    i64 65535, label %._crit_edge
    i64 0, label %._crit_edge
  ]

nvme_ns.exit.us.epil:                             ; preds = %nvme_subsys_ctrl.exit.us.epil.preheader
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24192
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.ae
  %i.bq = load ptr, ptr %i.bp, align 8
  %.not33.us.epil = icmp eq ptr %i.bq, null
  br i1 %.not33.us.epil, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %nvme_ns.exit.us.epil
  %i.br = trunc i64 %indvars.iv52.epil.init to i16
  %i.bs = add i32 %.046.us.epil.init, 1
  %i.bt = sext i32 %.046.us.epil.init to i64
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.bt
  store i16 %i.br, ptr %i.bu, align 2
  br label %._crit_edge

._crit_edge.loopexit60.unr-lcssa:                 ; preds = %nvme_ns.exit.thread.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %nvme_subsys_ctrl.exit.epil.preheader

nvme_subsys_ctrl.exit.epil.preheader:             ; preds = %._crit_edge.loopexit60.unr-lcssa, %nvme_subsys_ctrl.exit.lr.ph.thread
  %indvars.iv.epil.init = phi i64 [ %i.aa, %nvme_subsys_ctrl.exit.lr.ph.thread ], [ %indvars.iv.next.1, %._crit_edge.loopexit60.unr-lcssa ] ; 2 uses
  %.046.epil.init = phi i32 [ 0, %nvme_subsys_ctrl.exit.lr.ph.thread ], [ %.1.1, %._crit_edge.loopexit60.unr-lcssa ] ; 4 uses
  %lcmp.mod62 = trunc i64 %i.ab to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.epil.init
  %i.bw = load ptr, ptr %i.bv, align 8
  %magicptr.epil = ptrtoint ptr %i.bw to i64
  switch i64 %magicptr.epil, label %bb.m [
    i64 65535, label %._crit_edge
    i64 0, label %._crit_edge
  ]

bb.m:                                             ; preds = %nvme_subsys_ctrl.exit.epil.preheader
  %i.bx = trunc i64 %indvars.iv.epil.init to i16
  %i.by = add i32 %.046.epil.init, 1
  %i.bz = sext i32 %.046.epil.init to i64
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.bz
  store i16 %i.bx, ptr %i.ca, align 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit60.unr-lcssa, %bb.m, %nvme_subsys_ctrl.exit.epil.preheader, %nvme_subsys_ctrl.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.l, %nvme_ns.exit.us.epil, %nvme_subsys_ctrl.exit.us.epil.preheader, %nvme_subsys_ctrl.exit.us.epil.preheader, %.thread, %bb.g
  %.0.lcssa = phi i32 [ 0, %bb.g ], [ 0, %.thread ], [ %.046.us.epil.init, %nvme_subsys_ctrl.exit.us.epil.preheader ], [ %.1.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.bs, %bb.l ], [ %.046.us.epil.init, %nvme_ns.exit.us.epil ], [ %.046.us.epil.init, %nvme_subsys_ctrl.exit.us.epil.preheader ], [ %.1.1, %._crit_edge.loopexit60.unr-lcssa ], [ %i.by, %bb.m ], [ %.046.epil.init, %nvme_subsys_ctrl.exit.epil.preheader ], [ %.046.epil.init, %nvme_subsys_ctrl.exit.epil.preheader ]
  %i.cb = trunc i32 %.0.lcssa to i16
  store i16 %i.cb, ptr %i.b, align 16
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ce = tail call zeroext i16 @nvme_map_dptr(ptr noundef %0, ptr noundef nonnull %i.cc, i64 noundef 4096, ptr noundef nonnull %i.cd) ; 2 uses
  %.not.i37 = icmp eq i16 %i.ce, 0
  br i1 %.not.i37, label %bb.n, label %nvme_c2h.exit

bb.n:                                             ; preds = %._crit_edge
  %i.cf = load i32, ptr %i.cc, align 8            ; 2 uses
  %i.cg = and i32 %i.cf, 1
  %.not.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str, i32 noundef 1377, ptr noundef nonnull @__PRETTY_FUNCTION__.nvme_tx) #24
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ch = and i32 %i.cf, 2
  %.not24.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not24.i.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !annotation !22
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cj = call i32 @dma_buf_read(ptr noundef nonnull %i.b, i64 noundef 4096, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ci, i64 4294967296) #23 ; 0 uses
  %i.ck = load i64, ptr %i.a, align 8
  %.not26.not.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not26.not.i.i, label %.thread.i.i, label %bb.r, !prof !17

.thread.i.i:                                      ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %nvme_c2h.exit

bb.r:                                             ; preds = %bb.q
  call fastcc void @trace_pci_nvme_err_invalid_dma()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %nvme_c2h.exit

bb.s:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cm = call i64 @qemu_iovec_from_buf(ptr noundef nonnull %i.cl, i64 noundef 0, ptr noundef nonnull %i.b, i64 noundef 4096) #23
  %.not25.not.i.i = icmp eq i64 %i.cm, 4096
  br i1 %.not25.not.i.i, label %nvme_c2h.exit, label %bb.t, !prof !17

bb.t:                                             ; preds = %bb.s
  call fastcc void @trace_pci_nvme_err_invalid_dma()
  br label %nvme_c2h.exit

nvme_c2h.exit:                                    ; preds = %bb.t, %bb.s, %bb.r, %.thread.i.i, %._crit_edge, %nvme_subsys_ns.exit, %bb.f, %trace_pci_nvme_identify_ctrl_list.exit
  %.027 = phi i16 [ 16386, %trace_pci_nvme_identify_ctrl_list.exit ], [ 0, %bb.s ], [ 16386, %bb.f ], [ 16386, %nvme_subsys_ns.exit ], [ %i.ce, %._crit_edge ], [ 16386, %bb.t ], [ 16386, %bb.r ], [ 0, %.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i16 %.027
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext range(i16 0, 16404) i16 @nvme_identify_ns_csi(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.d = load i32, ptr %i.c, align 1
  %.fr50 = freeze i32 %i.d                        ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 103 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1
  %i.g = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %trace_pci_nvme_identify_ns_csi.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.h = load i16, ptr @_TRACE_PCI_NVME_IDENTIFY_NS_CSI_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.h, 0
  br i1 %.not2.i, label %trace_pci_nvme_identify_ns_csi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr @qemu_loglevel, align 4
  %i.j = and i32 %i.i, 32768
  %.not3.i = icmp eq i32 %i.j, 0
  br i1 %.not3.i, label %trace_pci_nvme_identify_ns_csi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext i8 %i.f to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.259, i32 noundef %.fr50, i32 noundef %i.k) #23
  br label %trace_pci_nvme_identify_ns_csi.exit

trace_pci_nvme_identify_ns_csi.exit:              ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.l = add i32 %.fr50, -1
  %or.cond = icmp ult i32 %i.l, 256
  br i1 %or.cond, label %nvme_ns.exit, label %nvme_c2h.exit

nvme_ns.exit:                                     ; preds = %trace_pci_nvme_identify_ns_csi.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24192
  %i.n = zext nneg i32 %.fr50 to i64              ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %nvme_ns.exit.thread, label %bb.g, !prof !28

nvme_ns.exit.thread:                              ; preds = %nvme_ns.exit
  br i1 %2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %nvme_ns.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 11192
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %nvme_subsys_ns.exit.thread, label %nvme_subsys_ns.exit

nvme_subsys_ns.exit:                              ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 2584
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.n
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not33 = icmp eq ptr %i.v, null
  br i1 %.not33, label %nvme_subsys_ns.exit.thread, label %bb.g

nvme_subsys_ns.exit.thread:                       ; preds = %bb.e, %nvme_subsys_ns.exit
  %i.w = tail call fastcc zeroext i16 @nvme_rpt_empty_id_struct(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %nvme_c2h.exit

bb.f:                                             ; preds = %nvme_ns.exit.thread
  %i.x = tail call fastcc zeroext i16 @nvme_rpt_empty_id_struct(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %nvme_c2h.exit

bb.g:                                             ; preds = %nvme_subsys_ns.exit, %nvme_ns.exit
  %.0 = phi ptr [ %i.v, %nvme_subsys_ns.exit ], [ %i.p, %nvme_ns.exit ] ; 3 uses
  %i.y = load i8, ptr %i.e, align 1
  switch i8 %i.y, label %nvme_c2h.exit [
    i8 0, label %bb.h
    i8 2, label %bb.p
  ]

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 4392 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = tail call zeroext i16 @nvme_map_dptr(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, i64 noundef 4096, ptr noundef nonnull %i.ab) ; 2 uses
  %.not.i36 = icmp eq i16 %i.ac, 0
  br i1 %.not.i36, label %bb.i, label %nvme_c2h.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str, i32 noundef 1377, ptr noundef nonnull @__PRETTY_FUNCTION__.nvme_tx) #24
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.af = and i32 %i.ad, 2
  %.not24.i.i = icmp eq i32 %i.af, 0
  br i1 %.not24.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !annotation !22
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ah = call i32 @dma_buf_read(ptr noundef nonnull %i.z, i64 noundef 4096, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ag, i64 4294967296) #23 ; 0 uses
  %i.ai = load i64, ptr %i.b, align 8
  %.not26.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not26.not.i.i, label %.thread.i.i, label %bb.m, !prof !17

.thread.i.i:                                      ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %nvme_c2h.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @trace_pci_nvme_err_invalid_dma()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %nvme_c2h.exit

bb.n:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ak = tail call i64 @qemu_iovec_from_buf(ptr noundef nonnull %i.aj, i64 noundef 0, ptr noundef nonnull %i.z, i64 noundef 4096) #23
  %.not25.not.i.i = icmp eq i64 %i.ak, 4096
  br i1 %.not25.not.i.i, label %nvme_c2h.exit, label %bb.o, !prof !17

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @trace_pci_nvme_err_invalid_dma()
  br label %nvme_c2h.exit

bb.p:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.0, i64 12600
  %i.am = load i8, ptr %i.al, align 8
  %i.an = icmp eq i8 %i.am, 2
  br i1 %i.an, label %bb.q, label %nvme_c2h.exit

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %.0, i64 12640
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.as = tail call zeroext i16 @nvme_map_dptr(ptr noundef nonnull %0, ptr noundef nonnull %i.aq, i64 noundef 4096, ptr noundef nonnull %i.ar) ; 2 uses
  %.not.i38 = icmp eq i16 %i.as, 0
  br i1 %.not.i38, label %bb.r, label %nvme_c2h.exit

bb.r:                                             ; preds = %bb.q
  %i.at = load i32, ptr %i.aq, align 8            ; 2 uses
  %i.au = and i32 %i.at, 1
  %.not.i.i40 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i40, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str, i32 noundef 1377, ptr noundef nonnull @__PRETTY_FUNCTION__.nvme_tx) #24
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.av = and i32 %i.at, 2
  %.not24.i.i41 = icmp eq i32 %i.av, 0
  br i1 %.not24.i.i41, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !annotation !22
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ax = call i32 @dma_buf_read(ptr noundef %i.ap, i64 noundef 4096, ptr noundef nonnull %i.a, ptr noundef nonnull %i.aw, i64 4294967296) #23 ; 0 uses
  %i.ay = load i64, ptr %i.a, align 8
  %.not26.not.i.i42 = icmp eq i64 %i.ay, 0
  br i1 %.not26.not.i.i42, label %.thread.i.i43, label %bb.v, !prof !17

.thread.i.i43:                                    ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %nvme_c2h.exit

bb.v:                                             ; preds = %bb.u
  call fastcc void @trace_pci_nvme_err_invalid_dma()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %nvme_c2h.exit

bb.w:                                             ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ba = tail call i64 @qemu_iovec_from_buf(ptr noundef nonnull %i.az, i64 noundef 0, ptr noundef %i.ap, i64 noundef 4096) #23
  %.not25.not.i.i44 = icmp eq i64 %i.ba, 4096
  br i1 %.not25.not.i.i44, label %nvme_c2h.exit, label %bb.x, !prof !17

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @trace_pci_nvme_err_invalid_dma()
  br label %nvme_c2h.exit

nvme_c2h.exit:                                    ; preds = %trace_pci_nvme_identify_ns_csi.exit, %bb.x, %bb.w, %bb.v, %.thread.i.i43, %bb.q, %bb.o, %bb.n, %bb.m, %.thread.i.i, %bb.h, %bb.p, %bb.g, %bb.f, %nvme_subsys_ns.exit.thread
  %.028 = phi i16 [ %i.w, %nvme_subsys_ns.exit.thread ], [ %i.x, %bb.f ], [ 16386, %bb.p ], [ 0, %bb.n ], [ 16395, %trace_pci_nvme_identify_ns_csi.exit ], [ 16386, %bb.g ], [ %i.ac, %bb.h ], [ 16386, %bb.o ], [ 16386, %bb.m ], [ 0, %.thread.i.i ], [ %i.as, %bb.q ], [ 16386, %bb.x ], [ 16386, %bb.v ], [ 0, %.thread.i.i43 ], [ 0, %bb.w ]
  ret i16 %.028
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext range(i16 0, 16404) i16 @nvme_identify_ns_ind(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.c = load i32, ptr %i.b, align 1
  %.fr34 = freeze i32 %i.c                        ; 3 uses
  %i.d = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %trace_pci_nvme_identify_ns_ind.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr @_TRACE_PCI_NVME_IDENTIFY_NS_IND_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.e, 0
  br i1 %.not1.i, label %trace_pci_nvme_identify_ns_ind.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 32768
  %.not2.i = icmp eq i32 %i.g, 0
  br i1 %.not2.i, label %trace_pci_nvme_identify_ns_ind.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.260, i32 noundef %.fr34) #23
  br label %trace_pci_nvme_identify_ns_ind.exit

trace_pci_nvme_identify_ns_ind.exit:              ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.h = add i32 %.fr34, -1
  %or.cond = icmp ult i32 %i.h, 256
  br i1 %or.cond, label %nvme_ns.exit, label %nvme_c2h.exit

nvme_ns.exit:                                     ; preds = %trace_pci_nvme_identify_ns_ind.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24192
  %i.j = zext nneg i32 %.fr34 to i64              ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %nvme_ns.exit.thread, label %bb.g, !prof !28

nvme_ns.exit.thread:                              ; preds = %nvme_ns.exit
  br i1 %2, label %bb.e, label %bb.f

bb.e:                                             ; preds = %nvme_ns.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 11192
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %nvme_subsys_ns.exit.thread, label %nvme_subsys_ns.exit

nvme_subsys_ns.exit:                              ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 2584
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.j
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not25 = icmp eq ptr %i.r, null
  br i1 %.not25, label %nvme_subsys_ns.exit.thread, label %bb.g

nvme_subsys_ns.exit.thread:                       ; preds = %bb.e, %nvme_subsys_ns.exit
  %i.s = tail call fastcc zeroext i16 @nvme_rpt_empty_id_struct(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %nvme_c2h.exit

bb.f:                                             ; preds = %nvme_ns.exit.thread
  %i.t = tail call fastcc zeroext i16 @nvme_rpt_empty_id_struct(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %nvme_c2h.exit

bb.g:                                             ; preds = %nvme_subsys_ns.exit, %nvme_ns.exit
  %.0 = phi ptr [ %i.r, %nvme_subsys_ns.exit ], [ %i.l, %nvme_ns.exit ]
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 8488 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = tail call zeroext i16 @nvme_map_dptr(ptr noundef nonnull %0, ptr noundef nonnull %i.v, i64 noundef 4096, ptr noundef nonnull %i.w) ; 2 uses
  %.not.i28 = icmp eq i16 %i.x, 0
  br i1 %.not.i28, label %bb.h, label %nvme_c2h.exit

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %i.v, align 8              ; 2 uses
  %i.z = and i32 %i.y, 1
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str, i32 noundef 1377, ptr noundef nonnull @__PRETTY_FUNCTION__.nvme_tx) #24
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aa = and i32 %i.y, 2
  %.not24.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not24.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !annotation !22
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ac = call i32 @dma_buf_read(ptr noundef nonnull %i.u, i64 noundef 4096, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ab, i64 4294967296) #23 ; 0 uses
  %i.ad = load i64, ptr %i.a, align 8
  %.not26.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not26.not.i.i, label %.thread.i.i, label %bb.l, !prof !17

.thread.i.i:                                      ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %nvme_c2h.exit

bb.l:                                             ; preds = %bb.k
  call fastcc void @trace_pci_nvme_err_invalid_dma()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %nvme_c2h.exit

bb.m:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.af = tail call i64 @qemu_iovec_from_buf(ptr noundef nonnull %i.ae, i64 noundef 0, ptr noundef nonnull %i.u, i64 noundef 4096) #23
  %.not25.not.i.i = icmp eq i64 %i.af, 4096
  br i1 %.not25.not.i.i, label %nvme_c2h.exit, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @trace_pci_nvme_err_invalid_dma()
  br label %nvme_c2h.exit

nvme_c2h.exit:                                    ; preds = %trace_pci_nvme_identify_ns_ind.exit, %bb.n, %bb.m, %bb.l, %.thread.i.i, %bb.g, %bb.f, %nvme_subsys_ns.exit.thread
  %.021 = phi i16 [ %i.t, %bb.f ], [ 16395, %trace_pci_nvme_identify_ns_ind.exit ], [ %i.s, %nvme_subsys_ns.exit.thread ], [ %i.x, %bb.g ], [ 16386, %bb.n ], [ 16386, %bb.l ], [ 0, %.thread.i.i ], [ 0, %bb.m ]
  ret i16 %.021
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext range(i16 0, 16404) i16 @nvme_identify_nslist(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [4096 x i8], align 16             ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.d = load i32, ptr %i.c, align 1              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.b, i8 0, i64 4096, i1 false)
  %i.e = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %trace_pci_nvme_identify_nslist.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr @_TRACE_PCI_NVME_IDENTIFY_NSLIST_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.f, 0
  br i1 %.not1.i, label %trace_pci_nvme_identify_nslist.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @qemu_loglevel, align 4
  %i.h = and i32 %i.g, 32768
  %.not2.i = icmp eq i32 %i.h, 0
  br i1 %.not2.i, label %trace_pci_nvme_identify_nslist.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.263, i32 noundef %i.d) #23
  br label %trace_pci_nvme_identify_nslist.exit

trace_pci_nvme_identify_nslist.exit:              ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.i = icmp ugt i32 %i.d, -3
  br i1 %i.i, label %nvme_c2h.exit, label %.preheader

.preheader:                                       ; preds = %trace_pci_nvme_identify_nslist.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24192 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 11192
  br i1 %2, label %nvme_ns.exit.us, label %nvme_ns.exit

nvme_ns.exit.us:                                  ; preds = %.preheader, %nvme_subsys_ns.exit.thread.us.1
  %indvars.iv42 = phi i64 [ %indvars.iv.next43.1, %nvme_subsys_ns.exit.thread.us.1 ], [ 1, %.preheader ] ; 3 uses
  %.039.us = phi i32 [ %.1.us.1, %nvme_subsys_ns.exit.thread.us.1 ], [ 0, %.preheader ] ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv42
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.us = icmp eq ptr %i.m, null
  br i1 %.not.us, label %nvme_subsys_ns.exit.thread.us, label %bb.e

bb.e:                                             ; preds = %nvme_ns.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12772
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %.not29.us = icmp ugt i32 %i.o, %i.d
  br i1 %.not29.us, label %bb.f, label %nvme_subsys_ns.exit.thread.us

bb.f:                                             ; preds = %bb.e
  %i.p = add i32 %.039.us, 1                      ; 2 uses
  %i.q = sext i32 %.039.us to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.q
  store i32 %i.o, ptr %i.r, align 4
  %i.s = icmp eq i32 %i.p, 1024
  br i1 %i.s, label %.split.us, label %nvme_subsys_ns.exit.thread.us

nvme_subsys_ns.exit.thread.us:                    ; preds = %nvme_ns.exit.us, %bb.f, %bb.e
  %.1.us = phi i32 [ %.039.us, %bb.e ], [ %i.p, %bb.f ], [ %.039.us, %nvme_ns.exit.us ] ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv42
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.us.1 = icmp eq ptr %i.v, null
  br i1 %.not.us.1, label %nvme_subsys_ns.exit.thread.us.1, label %bb.g

bb.g:                                             ; preds = %nvme_subsys_ns.exit.thread.us
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12772
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %.not29.us.1 = icmp ugt i32 %i.x, %i.d
  br i1 %.not29.us.1, label %bb.h, label %nvme_subsys_ns.exit.thread.us.1

bb.h:                                             ; preds = %bb.g
  %i.y = add i32 %.1.us, 1                        ; 2 uses
  %i.z = sext i32 %.1.us to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.z
  store i32 %i.x, ptr %i.aa, align 4
  %i.ab = icmp eq i32 %i.y, 1024
  br i1 %i.ab, label %.split.us, label %nvme_subsys_ns.exit.thread.us.1

nvme_subsys_ns.exit.thread.us.1:                  ; preds = %bb.h, %bb.g, %nvme_subsys_ns.exit.thread.us
  %.1.us.1 = phi i32 [ %.1.us, %bb.g ], [ %i.y, %bb.h ], [ %.1.us, %nvme_subsys_ns.exit.thread.us ]
  %indvars.iv.next43.1 = add nuw nsw i64 %indvars.iv42, 2 ; 2 uses
  %exitcond45.not.1 = icmp eq i64 %indvars.iv.next43.1, 257
  br i1 %exitcond45.not.1, label %.split.us, label %nvme_ns.exit.us, !llvm.loop !101

nvme_ns.exit:                                     ; preds = %.preheader, %nvme_subsys_ns.exit.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %nvme_subsys_ns.exit.thread ], [ 1, %.preheader ] ; 3 uses
  %.039 = phi i32 [ %.1, %nvme_subsys_ns.exit.thread ], [ 0, %.preheader ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %nvme_ns.exit.thread, label %bb.i

nvme_ns.exit.thread:                              ; preds = %nvme_ns.exit
  %i.ae = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %nvme_subsys_ns.exit.thread, label %nvme_subsys_ns.exit

nvme_subsys_ns.exit:                              ; preds = %nvme_ns.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 2584
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not28 = icmp eq ptr %i.ai, null
  br i1 %.not28, label %nvme_subsys_ns.exit.thread, label %bb.i

bb.i:                                             ; preds = %nvme_subsys_ns.exit, %nvme_ns.exit
  %.022 = phi ptr [ %i.ad, %nvme_ns.exit ], [ %i.ai, %nvme_subsys_ns.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.022, i64 12772
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %.not29 = icmp ugt i32 %i.ak, %i.d
  br i1 %.not29, label %bb.j, label %nvme_subsys_ns.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.al = add i32 %.039, 1                        ; 2 uses
  %i.am = sext i32 %.039 to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.am
  store i32 %i.ak, ptr %i.an, align 4
  %i.ao = icmp eq i32 %i.al, 1024
  br i1 %i.ao, label %.split.us, label %nvme_subsys_ns.exit.thread

nvme_subsys_ns.exit.thread:                       ; preds = %nvme_ns.exit.thread, %bb.j, %bb.i, %nvme_subsys_ns.exit
  %.1 = phi i32 [ %.039, %bb.i ], [ %i.al, %bb.j ], [ %.039, %nvme_ns.exit.thread ], [ %.039, %nvme_subsys_ns.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 257
  br i1 %exitcond.not, label %.split.us, label %nvme_ns.exit, !llvm.loop !101

.split.us:                                        ; preds = %nvme_subsys_ns.exit.thread, %bb.j, %bb.f, %bb.h, %nvme_subsys_ns.exit.thread.us.1
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56
end_hunk_3
