Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-dbus?download=true
inline.NumInlined: 72
inline.NumDeleted: 19
begin_hunk_0_@dissect_dbus:bb.a
  %i.ch = load i32, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i32 %i.ch, ptr %i.ci, align 4
  %i.cj = load i32, ptr @hf_dbus_serial, align 4  ; 2 uses
  %i.ck = call ptr @proto_registrar_get_nth(i32 noundef %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  %i.cm = load i32, ptr %i.cl, align 8
  switch i32 %i.cm, label %bb.r [
    i32 4, label %add_uint.exit54.i
    i32 7, label %bb.q
  ]

bb.q:                                             ; preds = %add_uint.exit52.i
  br label %add_uint.exit54.i

bb.r:                                             ; preds = %add_uint.exit52.i
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.158, ptr noundef @.str.159, i32 noundef 558) #10
  unreachable

add_uint.exit54.i:                                ; preds = %bb.q, %add_uint.exit52.i
  %.0.i53.i = phi i32 [ 4, %bb.q ], [ 1, %add_uint.exit52.i ]
  %i.cn = load ptr, ptr %10, align 8
  %i.co = load i32, ptr %i.x, align 8
  %i.cp = call ptr @ptvcursor_add_ret_uint(ptr noundef %i.cn, i32 noundef %i.cj, i32 noundef %.0.i53.i, i32 noundef %i.co, ptr noundef nonnull %i.a) ; 2 uses
  store ptr %i.cp, ptr %i.u, align 8
  %i.cq = load i32, ptr %i.a, align 4             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 4 uses
  store i32 %i.cq, ptr %i.cr, align 8
  %i.cs = icmp eq i32 %i.cq, 0
  br i1 %i.cs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %add_uint.exit54.i
  %.val.i = load ptr, ptr %i.g, align 8
  %i.ct = call ptr @expert_add_info(ptr noundef %.val.i, ptr noundef %i.cp, ptr noundef @ei_dbus_serial_invalid) ; 0 uses
  br label %dissect_dbus_header.exit.thread

dissect_dbus_header.exit.thread:                  ; preds = %bb.c, %bb.g, %bb.m, %bb.s, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  br label %dissect_dbus_body.exit

bb.t:                                             ; preds = %add_uint.exit54.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cu, i8 0, i64 48, i1 false)
  store ptr %10, ptr %8, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.160, ptr %i.cv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.cw = load i32, ptr @ett_dbus_header_field_array, align 4
  %i.cx = call fastcc ptr @reader_next(ptr noundef nonnull %8, i32 noundef -1, i32 noundef %i.cw, ptr noundef nonnull %9) ; 3 uses
  %.not.i14 = icmp eq ptr %i.cx, null
  br i1 %.not.i14, label %dissect_dbus_header_fields.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cy = getelementptr i8, ptr %i.cx, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8            ; 4 uses
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.cz, ptr noundef @.str.161)
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 9 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 7 uses
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.i, %bb.u
  %.0112.i = phi ptr [ %i.cx, %bb.u ], [ %i.je, %.loopexit.i ] ; 2 uses
  %i.di = getelementptr i8, ptr %.0112.i, i64 16
  %i.dj = load i32, ptr %i.di, align 8
  %.not149.i = icmp eq i32 %i.dj, 0
  br i1 %.not149.i, label %bb.bk, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dk = load i32, ptr @ett_dbus_header_field, align 4
  %i.dl = call fastcc ptr @reader_next(ptr noundef nonnull %.0112.i, i32 noundef -1, i32 noundef %i.dk, ptr noundef nonnull %9) ; 2 uses
  %.not161.i = icmp eq ptr %i.dl, null
  br i1 %.not161.i, label %dissect_dbus_header_fields.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dm = load i32, ptr @hf_dbus_field_code, align 4
  %i.dn = call fastcc ptr @reader_next(ptr noundef nonnull %i.dl, i32 noundef %i.dm, i32 noundef -1, ptr noundef nonnull %9) ; 5 uses
  %.not162.i = icmp eq ptr %i.dn, null
  br i1 %.not162.i, label %dissect_dbus_header_fields.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = load i32, ptr %9, align 8               ; 5 uses
  %i.dp = call ptr @val_to_str_const(i32 noundef %i.do, ptr noundef @field_code_vals, ptr noundef @.str.162)
  %i.dq = getelementptr i8, ptr %i.dn, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.dr, ptr noundef @.str.163, ptr noundef %i.dp)
  %i.ds = icmp eq i32 %i.do, 0
  br i1 %i.ds, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.val195.i = load ptr, ptr %i.g, align 8
  %.val196.i = load ptr, ptr %i.u, align 8
  %i.dt = call ptr @expert_add_info(ptr noundef %.val195.i, ptr noundef %.val196.i, ptr noundef @ei_dbus_field_code_invalid) ; 0 uses
  %i.du = getelementptr i8, ptr %i.dn, i64 56     ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8
  %.not4.i.i = icmp eq ptr %i.dv, null
  br i1 %.not4.i.i, label %dissect_dbus_header_fields.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.z, %.lr.ph.i.i
  %i.dw = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %i.du, %bb.z ]
  %.05.i.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.dn, %bb.z ]
  %i.dx = load ptr, ptr %.05.i.i, align 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void @ptvcursor_pop_subtree(ptr noundef %i.dy)
  %i.dz = load ptr, ptr %i.dw, align 8            ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 56     ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %.not.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i, label %dissect_dbus_header_fields.exit.thread, label %.lr.ph.i.i, !llvm.loop !0

bb.aa:                                            ; preds = %bb.y
  %i.ec = call fastcc ptr @reader_next(ptr noundef nonnull %i.dn, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %9) ; 13 uses
  %.not163.i = icmp eq ptr %i.ec, null
  br i1 %.not163.i, label %dissect_dbus_header_fields.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ed = icmp ult i32 %i.do, 10
  br i1 %i.ed, label %switch.lookup, label %.preheader.i

switch.lookup:                                    ; preds = %bb.ab
  %i.ee = load ptr, ptr %9, align 8
  %i.ef = zext nneg i32 %i.do to i64
  %i.eg = getelementptr [8 x i8], ptr @switch.table.dissect_dbus, i64 %i.ef
  %switch.gep = getelementptr i8, ptr %i.eg, i64 -8
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.eh = call i32 @strcmp(ptr noundef %i.ee, ptr noundef nonnull dereferenceable(2) %switch.load) #11
  %.not165.i = icmp eq i32 %i.eh, 0
  br i1 %.not165.i, label %.critedge.i, label %bb.ac

bb.ac:                                            ; preds = %switch.lookup
  %.val193.i = load ptr, ptr %i.g, align 8
  %.val194.i = load ptr, ptr %i.u, align 8
  %i.ei = call ptr @expert_add_info(ptr noundef %.val193.i, ptr noundef %.val194.i, ptr noundef @ei_dbus_field_signature_wrong) ; 0 uses
  %i.ej = getelementptr i8, ptr %i.ec, i64 56     ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8
  %.not4.i197.i = icmp eq ptr %i.ek, null
  br i1 %.not4.i197.i, label %dissect_dbus_header_fields.exit.thread, label %.lr.ph.i198.i

.lr.ph.i198.i:                                    ; preds = %bb.ac, %.lr.ph.i198.i
  %i.el = phi ptr [ %i.ep, %.lr.ph.i198.i ], [ %i.ej, %bb.ac ]
  %.05.i199.i = phi ptr [ %i.eo, %.lr.ph.i198.i ], [ %i.ec, %bb.ac ]
  %i.em = load ptr, ptr %.05.i199.i, align 8
  %i.en = load ptr, ptr %i.em, align 8
  call void @ptvcursor_pop_subtree(ptr noundef %i.en)
  %i.eo = load ptr, ptr %i.el, align 8            ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 56     ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8
  %.not.i200.i = icmp eq ptr %i.eq, null
  br i1 %.not.i200.i, label %dissect_dbus_header_fields.exit.thread, label %.lr.ph.i198.i, !llvm.loop !0

.critedge.i:                                      ; preds = %switch.lookup
  switch i32 %i.do, label %default.unreachable.i [
    i32 1, label %bb.ad
    i32 2, label %bb.af
    i32 3, label %bb.al
    i32 4, label %bb.ao
    i32 6, label %bb.au
    i32 7, label %bb.ay
    i32 8, label %bb.bc
    i32 5, label %bb.be
    i32 9, label %bb.bh
  ]

bb.ad:                                            ; preds = %.critedge.i
  %i.er = load i32, ptr @hf_dbus_path, align 4
  %i.es = call fastcc ptr @reader_next(ptr noundef nonnull %i.ec, i32 noundef %i.er, i32 noundef -1, ptr noundef nonnull %9) ; 2 uses
  %.not174.i = icmp eq ptr %i.es, null
  br i1 %.not174.i, label %dissect_dbus_header_fields.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.et = load ptr, ptr %9, align 8
  store ptr %i.et, ptr %i.dh, align 8
  br label %.loopexit.i

bb.af:                                            ; preds = %.critedge.i
  %i.eu = load i32, ptr @hf_dbus_interface, align 4
  %i.ev = call fastcc ptr @reader_next(ptr noundef nonnull %i.ec, i32 noundef %i.eu, i32 noundef -1, ptr noundef nonnull %9) ; 3 uses
  %.not173.i = icmp eq ptr %i.ev, null
  br i1 %.not173.i, label %dissect_dbus_header_fields.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ew = load ptr, ptr %9, align 8               ; 3 uses
  store ptr %i.ew, ptr %i.dg, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ak, %bb.ag
  %.016.i.i = phi i32 [ 0, %bb.ag ], [ %i.fb, %bb.ak ]
  %.015.i.i = phi ptr [ %i.ew, %bb.ag ], [ %i.fg, %bb.ak ] ; 2 uses
  %i.ex = load i8, ptr %.015.i.i, align 1         ; 2 uses
  %i.ey = or i8 %i.ex, 32
  %11 = add i8 %i.ey, -97
  %i.ez = icmp ult i8 %11, 26
  %i.fa = icmp eq i8 %i.ex, 95
  %or.cond.i.i = or i1 %i.fa, %i.ez
  br i1 %or.cond.i.i, label %bb.ai, label %is_dbus_interface_valid.exit.thread.i

bb.ai:                                            ; preds = %bb.ah
  %i.fb = add i32 %.016.i.i, 1                    ; 2 uses
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %bb.ai
  %.015.pn.i.i = phi ptr [ %.015.i.i, %bb.ai ], [ %.1.i.i, %.critedge.i.i.backedge ] ; 2 uses
  %.1.i.i = getelementptr i8, ptr %.015.pn.i.i, i64 1 ; 3 uses
  %i.fc = load i8, ptr %.1.i.i, align 1           ; 4 uses
  %i.fd = or i8 %i.fc, 32
  %12 = add i8 %i.fd, -97
  %i.fe = icmp ult i8 %12, 26
  %13 = add i8 %i.fc, -48
  %i.ff = icmp ult i8 %13, 10
  %or.cond19.i.i = or i1 %i.ff, %i.fe
  br i1 %or.cond19.i.i, label %.critedge.i.i.backedge, label %bb.aj

bb.aj:                                            ; preds = %.critedge.i.i
  switch i8 %i.fc, label %bb.ak [
    i8 95, label %.critedge.i.i.backedge
    i8 0, label %is_dbus_interface_valid.exit.i
  ]

.critedge.i.i.backedge:                           ; preds = %bb.aj, %.critedge.i.i
  br label %.critedge.i.i, !llvm.loop !10

bb.ak:                                            ; preds = %bb.aj
  %i.fg = getelementptr i8, ptr %.015.pn.i.i, i64 2
  %i.fh = icmp eq i8 %i.fc, 46
  br i1 %i.fh, label %bb.ah, label %is_dbus_interface_valid.exit.thread.i, !llvm.loop !11

is_dbus_interface_valid.exit.i:                   ; preds = %bb.aj
  %i.fi = ptrtoint ptr %.1.i.i to i64
  %i.fj = ptrtoint ptr %i.ew to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = icmp sgt i32 %i.fb, 1
  %i.fm = icmp ult i64 %i.fk, 256
  %i.fn = and i1 %i.fl, %i.fm
  br i1 %i.fn, label %.loopexit.i, label %is_dbus_interface_valid.exit.thread.i

is_dbus_interface_valid.exit.thread.i:            ; preds = %is_dbus_interface_valid.exit.i, %bb.ak, %bb.ah
  %.val191.i = load ptr, ptr %i.g, align 8
  %.val192.i = load ptr, ptr %i.u, align 8
  %i.fo = call ptr @expert_add_info(ptr noundef %.val191.i, ptr noundef %.val192.i, ptr noundef @ei_dbus_interface_invalid) ; 0 uses
  call fastcc void @reader_cleanup(ptr noundef nonnull %i.ev)
  br label %dissect_dbus_header_fields.exit.thread

bb.al:                                            ; preds = %.critedge.i
  %i.fp = load i32, ptr @hf_dbus_member, align 4
  %i.fq = call fastcc ptr @reader_next(ptr noundef nonnull %i.ec, i32 noundef %i.fp, i32 noundef -1, ptr noundef nonnull %9) ; 4 uses
  %.not172.i = icmp eq ptr %i.fq, null
  br i1 %.not172.i, label %dissect_dbus_header_fields.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fr = load ptr, ptr %9, align 8               ; 4 uses
  store ptr %i.fr, ptr %i.df, align 8
  %i.fs = load i8, ptr %i.fr, align 1             ; 2 uses
  %i.ft = or i8 %i.fs, 32
  %14 = add i8 %i.ft, -97
  %i.fu = icmp ult i8 %14, 26
  %i.fv = icmp eq i8 %i.fs, 95
  %or.cond.i202.i = or i1 %i.fv, %i.fu
  br i1 %or.cond.i202.i, label %.critedge.i204.i, label %is_dbus_member_name_valid.exit.thread.i

.critedge.i204.i:                                 ; preds = %bb.am, %.critedge.i204.i.backedge
  %.011.i.i = phi ptr [ %i.fw, %.critedge.i204.i.backedge ], [ %i.fr, %bb.am ]
  %i.fw = getelementptr i8, ptr %.011.i.i, i64 1  ; 3 uses
  %i.fx = load i8, ptr %i.fw, align 1             ; 3 uses
  %i.fy = or i8 %i.fx, 32
  %15 = add i8 %i.fy, -97
  %i.fz = icmp ult i8 %15, 26
  %16 = add i8 %i.fx, -48
  %i.ga = icmp ult i8 %16, 10
  %or.cond14.i.i = or i1 %i.ga, %i.fz
  br i1 %or.cond14.i.i, label %.critedge.i204.i.backedge, label %bb.an

bb.an:                                            ; preds = %.critedge.i204.i
  switch i8 %i.fx, label %is_dbus_member_name_valid.exit.thread.i [
    i8 95, label %.critedge.i204.i.backedge
    i8 0, label %is_dbus_member_name_valid.exit.i
  ]

.critedge.i204.i.backedge:                        ; preds = %bb.an, %.critedge.i204.i
  br label %.critedge.i204.i

is_dbus_member_name_valid.exit.i:                 ; preds = %bb.an
  %i.gb = ptrtoint ptr %i.fw to i64
  %i.gc = ptrtoint ptr %i.fr to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = icmp ult i64 %i.gd, 256
  br i1 %i.ge, label %.loopexit.i, label %is_dbus_member_name_valid.exit.thread.i

is_dbus_member_name_valid.exit.thread.i:          ; preds = %is_dbus_member_name_valid.exit.i, %bb.am, %bb.an
  %.val189.i = load ptr, ptr %i.g, align 8
  %.val190.i = load ptr, ptr %i.u, align 8
  %i.gf = call ptr @expert_add_info(ptr noundef %.val189.i, ptr noundef %.val190.i, ptr noundef @ei_dbus_member_invalid) ; 0 uses
  %i.gg = getelementptr i8, ptr %i.fq, i64 56     ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8
  %.not4.i = icmp eq ptr %i.gh, null
  br i1 %.not4.i, label %dissect_dbus_header_fields.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %is_dbus_member_name_valid.exit.thread.i, %.lr.ph.i
  %i.gi = phi ptr [ %i.gm, %.lr.ph.i ], [ %i.gg, %is_dbus_member_name_valid.exit.thread.i ]
  %.05.i = phi ptr [ %i.gl, %.lr.ph.i ], [ %i.fq, %is_dbus_member_name_valid.exit.thread.i ]
  %i.gj = load ptr, ptr %.05.i, align 8
  %i.gk = load ptr, ptr %i.gj, align 8
  call void @ptvcursor_pop_subtree(ptr noundef %i.gk)
  %i.gl = load ptr, ptr %i.gi, align 8            ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 56     ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8
  %.not.i20 = icmp eq ptr %i.gn, null
  br i1 %.not.i20, label %dissect_dbus_header_fields.exit.thread, label %.lr.ph.i, !llvm.loop !0

bb.ao:                                            ; preds = %.critedge.i
  %i.go = load i32, ptr @hf_dbus_error_name, align 4
  %i.gp = call fastcc ptr @reader_next(ptr noundef nonnull %i.ec, i32 noundef %i.go, i32 noundef -1, ptr noundef nonnull %9) ; 3 uses
  %.not171.i = icmp eq ptr %i.gp, null
  br i1 %.not171.i, label %dissect_dbus_header_fields.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gq = load ptr, ptr %9, align 8               ; 3 uses
  store ptr %i.gq, ptr %i.de, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.at, %bb.ap
  %.016.i205.i = phi i32 [ 0, %bb.ap ], [ %i.gv, %bb.at ]
  %.015.i206.i = phi ptr [ %i.gq, %bb.ap ], [ %i.ha, %bb.at ] ; 2 uses
  %i.gr = load i8, ptr %.015.i206.i, align 1      ; 2 uses
  %i.gs = or i8 %i.gr, 32
  %17 = add i8 %i.gs, -97
  %i.gt = icmp ult i8 %17, 26
  %i.gu = icmp eq i8 %i.gr, 95
  %or.cond.i207.i = or i1 %i.gu, %i.gt
  br i1 %or.cond.i207.i, label %bb.ar, label %is_dbus_interface_valid.exit213.thread.i

bb.ar:                                            ; preds = %bb.aq
  %i.gv = add i32 %.016.i205.i, 1                 ; 2 uses
  br label %.critedge.i212.i

.critedge.i212.i:                                 ; preds = %.critedge.i212.i.backedge, %bb.ar
  %.015.pn.i209.i = phi ptr [ %.015.i206.i, %bb.ar ], [ %.1.i210.i, %.critedge.i212.i.backedge ] ; 2 uses
  %.1.i210.i = getelementptr i8, ptr %.015.pn.i209.i, i64 1 ; 3 uses
  %i.gw = load i8, ptr %.1.i210.i, align 1        ; 4 uses
  %i.gx = or i8 %i.gw, 32
  %18 = add i8 %i.gx, -97
  %i.gy = icmp ult i8 %18, 26
  %19 = add i8 %i.gw, -48
  %i.gz = icmp ult i8 %19, 10
  %or.cond19.i211.i = or i1 %i.gz, %i.gy
  br i1 %or.cond19.i211.i, label %.critedge.i212.i.backedge, label %bb.as

bb.as:                                            ; preds = %.critedge.i212.i
  switch i8 %i.gw, label %bb.at [
    i8 95, label %.critedge.i212.i.backedge
    i8 0, label %is_dbus_interface_valid.exit213.i
  ]

.critedge.i212.i.backedge:                        ; preds = %bb.as, %.critedge.i212.i
  br label %.critedge.i212.i, !llvm.loop !10

bb.at:                                            ; preds = %bb.as
  %i.ha = getelementptr i8, ptr %.015.pn.i209.i, i64 2
  %i.hb = icmp eq i8 %i.gw, 46
  br i1 %i.hb, label %bb.aq, label %is_dbus_interface_valid.exit213.thread.i, !llvm.loop !11

is_dbus_interface_valid.exit213.i:                ; preds = %bb.as
  %i.hc = ptrtoint ptr %.1.i210.i to i64
  %i.hd = ptrtoint ptr %i.gq to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = icmp sgt i32 %i.gv, 1
  %i.hg = icmp ult i64 %i.he, 256
  %i.hh = and i1 %i.hf, %i.hg
  br i1 %i.hh, label %.loopexit.i, label %is_dbus_interface_valid.exit213.thread.i

is_dbus_interface_valid.exit213.thread.i:         ; preds = %is_dbus_interface_valid.exit213.i, %bb.at, %bb.aq
  %.val187.i = load ptr, ptr %i.g, align 8
  %.val188.i = load ptr, ptr %i.u, align 8
  %i.hi = call ptr @expert_add_info(ptr noundef %.val187.i, ptr noundef %.val188.i, ptr noundef @ei_dbus_error_name_invalid) ; 0 uses
  call fastcc void @reader_cleanup(ptr noundef nonnull %i.gp)
  br label %dissect_dbus_header_fields.exit.thread

bb.au:                                            ; preds = %.critedge.i
  %i.hj = load i32, ptr @hf_dbus_destination, align 4
  %i.hk = call fastcc ptr @reader_next(ptr noundef nonnull %i.ec, i32 noundef %i.hj, i32 noundef -1, ptr noundef nonnull %9) ; 3 uses
  %.not170.i = icmp eq ptr %i.hk, null
  br i1 %.not170.i, label %dissect_dbus_header_fields.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hl = load ptr, ptr %9, align 8               ; 4 uses
  store ptr %i.hl, ptr %i.dd, align 8
  %i.hm = call fastcc zeroext i1 @is_dbus_bus_name_valid(ptr noundef %i.hl)
  %i.hn = load ptr, ptr %i.g, align 8             ; 6 uses
  br i1 %i.hm, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.val186.i = load ptr, ptr %i.u, align 8
  %i.ho = call ptr @expert_add_info(ptr noundef %i.hn, ptr noundef %.val186.i, ptr noundef @ei_dbus_bus_name_invalid) ; 0 uses
  call fastcc void @reader_cleanup(ptr noundef nonnull %i.hk)
  br label %dissect_dbus_header_fields.exit.thread

bb.ax:                                            ; preds = %bb.av
  %i.hp = getelementptr i8, ptr %i.hn, i64 232
  %i.hq = call i64 @strlen(ptr noundef %i.hl) #11
  %i.hr = trunc i64 %i.hq to i32
  %i.hs = add i32 %i.hr, 1
  %i.ht = getelementptr i8, ptr %i.hn, i64 416
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = call noalias ptr @wmem_strdup(ptr noundef %i.hu, ptr noundef %i.hl)
  store i32 7, ptr %i.hp, align 8
  %i.hw = getelementptr i8, ptr %i.hn, i64 236
  store i32 %i.hs, ptr %i.hw, align 4
  %i.hx = getelementptr i8, ptr %i.hn, i64 240
  store ptr %i.hv, ptr %i.hx, align 8
  %i.hy = getelementptr i8, ptr %i.hn, i64 248
  store ptr null, ptr %i.hy, align 8
  br label %.loopexit.i

bb.ay:                                            ; preds = %.critedge.i
  %i.hz = load i32, ptr @hf_dbus_sender, align 4
  %i.ia = call fastcc ptr @reader_next(ptr noundef nonnull %i.ec, i32 noundef %i.hz, i32 noundef -1, ptr noundef nonnull %9) ; 3 uses
  %.not169.i = icmp eq ptr %i.ia, null
  br i1 %.not169.i, label %dissect_dbus_header_fields.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ib = load ptr, ptr %9, align 8               ; 4 uses
  store ptr %i.ib, ptr %i.dc, align 8
  %i.ic = call fastcc zeroext i1 @is_dbus_bus_name_valid(ptr noundef %i.ib)
  %i.id = load ptr, ptr %i.g, align 8             ; 6 uses
  br i1 %i.ic, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.val184.i = load ptr, ptr %i.u, align 8
  %i.ie = call ptr @expert_add_info(ptr noundef %i.id, ptr noundef %.val184.i, ptr noundef @ei_dbus_bus_name_invalid) ; 0 uses
  call fastcc void @reader_cleanup(ptr noundef nonnull %i.ia)
  br label %dissect_dbus_header_fields.exit.thread

bb.bb:                                            ; preds = %bb.az
  %i.if = getelementptr i8, ptr %i.id, i64 208
  %i.ig = call i64 @strlen(ptr noundef %i.ib) #11
  %i.ih = trunc i64 %i.ig to i32
  %i.ii = add i32 %i.ih, 1
  %i.ij = getelementptr i8, ptr %i.id, i64 416
  %i.ik = load ptr, ptr %i.ij, align 8
  %i.il = call noalias ptr @wmem_strdup(ptr noundef %i.ik, ptr noundef %i.ib)
  store i32 7, ptr %i.if, align 8
  %i.im = getelementptr i8, ptr %i.id, i64 212
  store i32 %i.ii, ptr %i.im, align 4
  %i.in = getelementptr i8, ptr %i.id, i64 216
  store ptr %i.il, ptr %i.in, align 8
  %i.io = getelementptr i8, ptr %i.id, i64 224
  store ptr null, ptr %i.io, align 8
  br label %.loopexit.i

bb.bc:                                            ; preds = %.critedge.i
  %i.ip = load i32, ptr @hf_dbus_signature, align 4
  %i.iq = call fastcc ptr @reader_next(ptr noundef nonnull %i.ec, i32 noundef %i.ip, i32 noundef -1, ptr noundef nonnull %9) ; 2 uses
  %.not168.i = icmp eq ptr %i.iq, null
  br i1 %.not168.i, label %dissect_dbus_header_fields.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ir = load ptr, ptr %9, align 8
  store ptr %i.ir, ptr %i.h, align 8
  br label %.loopexit.i

bb.be:                                            ; preds = %.critedge.i
  %i.is = load i32, ptr @hf_dbus_reply_serial, align 4
  %i.it = call fastcc ptr @reader_next(ptr noundef nonnull %i.ec, i32 noundef %i.is, i32 noundef -1, ptr noundef nonnull %9) ; 3 uses
  %.not167.i = icmp eq ptr %i.it, null
  br i1 %.not167.i, label %dissect_dbus_header_fields.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.iu = load i32, ptr %9, align 8               ; 2 uses
  store i32 %i.iu, ptr %i.db, align 8
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %bb.bg, label %.loopexit.i

bb.bg:                                            ; preds = %bb.bf
  %.val.i15 = load ptr, ptr %i.g, align 8
  %.val182.i = load ptr, ptr %i.u, align 8
  %i.iw = call ptr @expert_add_info(ptr noundef %.val.i15, ptr noundef %.val182.i, ptr noundef @ei_dbus_serial_invalid) ; 0 uses
  call fastcc void @reader_cleanup(ptr noundef nonnull %i.it)
  br label %dissect_dbus_header_fields.exit.thread

bb.bh:                                            ; preds = %.critedge.i
  %i.ix = load i32, ptr @hf_dbus_unix_fds, align 4
  %i.iy = call fastcc ptr @reader_next(ptr noundef nonnull %i.ec, i32 noundef %i.ix, i32 noundef -1, ptr noundef nonnull %9) ; 2 uses
  %.not166.i = icmp eq ptr %i.iy, null
  br i1 %.not166.i, label %dissect_dbus_header_fields.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.iz = load i32, ptr %9, align 8
  store i32 %i.iz, ptr %i.da, align 8
  br label %.loopexit.i

default.unreachable.i:                            ; preds = %.critedge.i
  unreachable

.preheader.i:                                     ; preds = %bb.ab, %bb.bj
  %.1113.i = phi ptr [ %i.ja, %bb.bj ], [ %i.ec, %bb.ab ]
  %i.ja = call fastcc ptr @reader_next(ptr noundef nonnull %.1113.i, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %9) ; 4 uses
  %.not175.i = icmp eq ptr %i.ja, null
  br i1 %.not175.i, label %dissect_dbus_header_fields.exit.thread, label %bb.bj

bb.bj:                                            ; preds = %.preheader.i
  %i.jb = getelementptr i8, ptr %i.ja, i64 16
  %i.jc = load i32, ptr %i.jb, align 8
  %i.jd = icmp ugt i32 %i.jc, 2
  br i1 %i.jd, label %.preheader.i, label %.loopexit.i, !llvm.loop !12

.loopexit.i:                                      ; preds = %bb.bj, %bb.bi, %bb.bf, %bb.bd, %bb.bb, %bb.ax, %is_dbus_interface_valid.exit213.i, %is_dbus_member_name_valid.exit.i, %is_dbus_interface_valid.exit.i, %bb.ae
  %.2.i = phi ptr [ %i.iy, %bb.bi ], [ %i.es, %bb.ae ], [ %i.ev, %is_dbus_interface_valid.exit.i ], [ %i.fq, %is_dbus_member_name_valid.exit.i ], [ %i.gp, %is_dbus_interface_valid.exit213.i ], [ %i.hk, %bb.ax ], [ %i.ia, %bb.bb ], [ %i.iq, %bb.bd ], [ %i.it, %bb.bf ], [ %i.ja, %bb.bj ]
  %i.je = call fastcc ptr @reader_next(ptr noundef nonnull %.2.i, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %9) ; 2 uses
  %.not176.not.i = icmp eq ptr %i.je, null
  br i1 %.not176.not.i, label %dissect_dbus_header_fields.exit.thread, label %bb.v, !llvm.loop !13

bb.bk:                                            ; preds = %bb.v
  %i.jf = load i32, ptr %i.ag, align 4
  switch i32 %i.jf, label %bb.bo [
    i32 1, label %bb.bl
    i32 2, label %bb.bp
    i32 3, label %bb.bm
    i32 4, label %bb.bn
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.jg = load ptr, ptr %i.dh, align 8
  %.not156.i = icmp eq ptr %i.jg, null
  %i.jh = load ptr, ptr %i.df, align 8
  %.not157.i = icmp eq ptr %i.jh, null
  %or.cond = select i1 %.not156.i, i1 true, i1 %.not157.i
  br i1 %or.cond, label %.critedge181.i, label %bb.bq

bb.bm:                                            ; preds = %bb.bk
  %i.ji = load ptr, ptr %i.de, align 8
  %.not153.i = icmp eq ptr %i.ji, null
  %i.jj = load i32, ptr %i.db, align 8
  %.not154.i = icmp eq i32 %i.jj, 0
  %or.cond26 = select i1 %.not153.i, i1 true, i1 %.not154.i
  br i1 %or.cond26, label %.critedge181.i, label %bb.bq

bb.bn:                                            ; preds = %bb.bk
  %i.jk = load ptr, ptr %i.dh, align 8
  %.not150.i = icmp eq ptr %i.jk, null
  %i.jl = load ptr, ptr %i.dg, align 8
  %.not151.i = icmp eq ptr %i.jl, null
  %or.cond27 = select i1 %.not150.i, i1 true, i1 %.not151.i
  %i.jm = load ptr, ptr %i.df, align 8
  %.not152.i = icmp eq ptr %i.jm, null
  %or.cond28 = select i1 %or.cond27, i1 true, i1 %.not152.i
  br i1 %or.cond28, label %.critedge181.i, label %bb.bq
end_hunk_0
begin_hunk_1_@reader_next:bb.a
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8
  %.not331 = icmp eq i32 %1, -1
  %i.i = load i32, ptr @hf_dbus_type_byte, align 4
  %i.j = select i1 %.not331, i32 %i.i, i32 %1
  %i.k = getelementptr i8, ptr %i.f, i64 16
  %i.l = load i32, ptr %i.k, align 8
  %i.m = tail call ptr @ptvcursor_add_ret_uint(ptr noundef %i.h, i32 noundef %i.j, i32 noundef 1, i32 noundef %i.l, ptr noundef %3)
  %i.n = getelementptr i8, ptr %i.f, i64 40
  store ptr %i.m, ptr %i.n, align 8
  br label %bb.av

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.f, align 8
  %i.p = tail call i32 @ptvcursor_current_offset(ptr noundef %i.o)
  %i.q = load ptr, ptr %i.f, align 8
  %i.r = tail call ptr @ptvcursor_tvbuff(ptr noundef %i.q)
  %i.s = tail call zeroext i8 @tvb_get_uint8(ptr noundef %i.r, i32 noundef %i.p)
  %i.t = load ptr, ptr %i.f, align 8
  %.not330 = icmp eq i32 %1, -1
  %i.u = load i32, ptr @hf_dbus_type_boolean, align 4
  %i.v = select i1 %.not330, i32 %i.u, i32 %1
  %i.w = getelementptr i8, ptr %i.f, i64 16
  %i.x = load i32, ptr %i.w, align 8
  %i.y = tail call ptr @ptvcursor_add_ret_boolean(ptr noundef %i.t, i32 noundef %i.v, i32 noundef 4, i32 noundef %i.x, ptr noundef %3) ; 2 uses
  %i.z = getelementptr i8, ptr %i.f, i64 40
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = icmp ugt i8 %i.s, 1
  br i1 %i.aa, label %bb.d, label %bb.av

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr i8, ptr %i.f, i64 8
  %.val345 = load ptr, ptr %i.ab, align 8
  %i.ac = tail call ptr @expert_add_info(ptr noundef %.val345, ptr noundef %i.y, ptr noundef @ei_dbus_type_boolean_invalid) ; 0 uses
  br label %bb.av

bb.e:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %i.f, align 8
  %.not329 = icmp eq i32 %1, -1
  %i.ae = load i32, ptr @hf_dbus_type_int16, align 4
  %i.af = select i1 %.not329, i32 %i.ae, i32 %1
  %i.ag = getelementptr i8, ptr %i.f, i64 16
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = tail call ptr @ptvcursor_add_ret_int(ptr noundef %i.ad, i32 noundef %i.af, i32 noundef 2, i32 noundef %i.ah, ptr noundef %3)
  %i.aj = getelementptr i8, ptr %i.f, i64 40
  store ptr %i.ai, ptr %i.aj, align 8
  br label %bb.av

bb.f:                                             ; preds = %bb.a
  %i.ak = load ptr, ptr %i.f, align 8
  %.not328 = icmp eq i32 %1, -1
  %i.al = load i32, ptr @hf_dbus_type_uint16, align 4
  %i.am = select i1 %.not328, i32 %i.al, i32 %1
  %i.an = getelementptr i8, ptr %i.f, i64 16
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = tail call ptr @ptvcursor_add_ret_uint(ptr noundef %i.ak, i32 noundef %i.am, i32 noundef 2, i32 noundef %i.ao, ptr noundef %3)
  %i.aq = getelementptr i8, ptr %i.f, i64 40
  store ptr %i.ap, ptr %i.aq, align 8
  br label %bb.av

bb.g:                                             ; preds = %bb.a
  %i.ar = load ptr, ptr %i.f, align 8
  %.not327 = icmp eq i32 %1, -1
  %i.as = load i32, ptr @hf_dbus_type_int32, align 4
  %i.at = select i1 %.not327, i32 %i.as, i32 %1
  %i.au = getelementptr i8, ptr %i.f, i64 16
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = tail call ptr @ptvcursor_add_ret_int(ptr noundef %i.ar, i32 noundef %i.at, i32 noundef 4, i32 noundef %i.av, ptr noundef %3)
  %i.ax = getelementptr i8, ptr %i.f, i64 40
  store ptr %i.aw, ptr %i.ax, align 8
  br label %bb.av

bb.h:                                             ; preds = %bb.a
  %i.ay = load ptr, ptr %i.f, align 8
  %.not326 = icmp eq i32 %1, -1
  %i.az = load i32, ptr @hf_dbus_type_uint32, align 4
  %i.ba = select i1 %.not326, i32 %i.az, i32 %1
  %i.bb = getelementptr i8, ptr %i.f, i64 16
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = tail call ptr @ptvcursor_add_ret_uint(ptr noundef %i.ay, i32 noundef %i.ba, i32 noundef 4, i32 noundef %i.bc, ptr noundef %3)
  %i.be = getelementptr i8, ptr %i.f, i64 40
  store ptr %i.bd, ptr %i.be, align 8
  br label %bb.av

bb.i:                                             ; preds = %bb.a
  %i.bf = load ptr, ptr %i.f, align 8
  %i.bg = tail call i32 @ptvcursor_current_offset(ptr noundef %i.bf)
  %i.bh = load ptr, ptr %i.f, align 8
  %i.bi = tail call ptr @ptvcursor_tvbuff(ptr noundef %i.bh)
  %i.bj = getelementptr i8, ptr %i.f, i64 16      ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = tail call i64 @tvb_get_int64(ptr noundef %i.bi, i32 noundef %i.bg, i32 noundef %i.bk)
  store i64 %i.bl, ptr %3, align 8
  %i.bm = load ptr, ptr %i.f, align 8
  %.not325 = icmp eq i32 %1, -1
  %i.bn = load i32, ptr @hf_dbus_type_int64, align 4
  %i.bo = select i1 %.not325, i32 %i.bn, i32 %1
  %i.bp = load i32, ptr %i.bj, align 8
  %i.bq = tail call ptr @ptvcursor_add(ptr noundef %i.bm, i32 noundef %i.bo, i32 noundef 8, i32 noundef %i.bp)
  %i.br = getelementptr i8, ptr %i.f, i64 40
  store ptr %i.bq, ptr %i.br, align 8
  br label %bb.av

bb.j:                                             ; preds = %bb.a
  %i.bs = load ptr, ptr %i.f, align 8
  %i.bt = tail call i32 @ptvcursor_current_offset(ptr noundef %i.bs)
  %i.bu = load ptr, ptr %i.f, align 8
  %i.bv = tail call ptr @ptvcursor_tvbuff(ptr noundef %i.bu)
  %i.bw = getelementptr i8, ptr %i.f, i64 16      ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = tail call i64 @tvb_get_uint64(ptr noundef %i.bv, i32 noundef %i.bt, i32 noundef %i.bx)
  store i64 %i.by, ptr %3, align 8
  %i.bz = load ptr, ptr %i.f, align 8
  %.not324 = icmp eq i32 %1, -1
  %i.ca = load i32, ptr @hf_dbus_type_uint64, align 4
  %i.cb = select i1 %.not324, i32 %i.ca, i32 %1
  %i.cc = load i32, ptr %i.bw, align 8
  %i.cd = tail call ptr @ptvcursor_add(ptr noundef %i.bz, i32 noundef %i.cb, i32 noundef 8, i32 noundef %i.cc)
  %i.ce = getelementptr i8, ptr %i.f, i64 40
  store ptr %i.cd, ptr %i.ce, align 8
  br label %bb.av

bb.k:                                             ; preds = %bb.a
  %i.cf = load ptr, ptr %i.f, align 8
  %i.cg = tail call i32 @ptvcursor_current_offset(ptr noundef %i.cf)
  %i.ch = load ptr, ptr %i.f, align 8
  %i.ci = tail call ptr @ptvcursor_tvbuff(ptr noundef %i.ch)
  %i.cj = getelementptr i8, ptr %i.f, i64 16      ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = tail call double @tvb_get_ieee_double(ptr noundef %i.ci, i32 noundef %i.cg, i32 noundef %i.ck)
  store double %i.cl, ptr %3, align 8
  %i.cm = load ptr, ptr %i.f, align 8
  %.not323 = icmp eq i32 %1, -1
  %i.cn = load i32, ptr @hf_dbus_type_double, align 4
  %i.co = select i1 %.not323, i32 %i.cn, i32 %1
  %i.cp = load i32, ptr %i.cj, align 8
  %i.cq = tail call ptr @ptvcursor_add(ptr noundef %i.cm, i32 noundef %i.co, i32 noundef 8, i32 noundef %i.cp)
  %i.cr = getelementptr i8, ptr %i.f, i64 40
  store ptr %i.cq, ptr %i.cr, align 8
  br label %bb.av

bb.l:                                             ; preds = %bb.a
  %.not320 = icmp eq i32 %1, -1
  %i.cs = load i32, ptr @hf_dbus_type_string, align 4
  %i.ct = select i1 %.not320, i32 %i.cs, i32 %1
  %i.cu = tail call fastcc ptr @add_dbus_string(ptr noundef %i.f, i32 noundef %i.ct, i32 noundef 4) ; 3 uses
  %.not321 = icmp eq ptr %i.cu, null
  br i1 %.not321, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = tail call i32 @g_utf8_validate(ptr noundef nonnull %i.cu, i64 noundef -1, ptr noundef null)
  %.not322 = icmp eq i32 %i.cv, 0
  br i1 %.not322, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cw = getelementptr i8, ptr %i.f, i64 8
  %.val343 = load ptr, ptr %i.cw, align 8
  %i.cx = getelementptr i8, ptr %i.f, i64 40
  %.val344 = load ptr, ptr %i.cx, align 8
  %i.cy = tail call ptr @expert_add_info(ptr noundef %.val343, ptr noundef %.val344, ptr noundef @ei_dbus_string_invalid) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1289 = phi i32 [ 0, %bb.m ], [ 1, %bb.n ]
  store ptr %i.cu, ptr %3, align 8
  br label %bb.av

bb.p:                                             ; preds = %bb.a
  %.not318 = icmp eq i32 %1, -1
  %i.cz = load i32, ptr @hf_dbus_type_object_path, align 4
  %i.da = select i1 %.not318, i32 %i.cz, i32 %1
  %i.db = tail call fastcc ptr @add_dbus_string(ptr noundef %i.f, i32 noundef %i.da, i32 noundef 4) ; 4 uses
  %.not319 = icmp eq ptr %i.db, null
  br i1 %.not319, label %is_dbus_object_path_valid.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = icmp eq i8 %i.dc, 47
  br i1 %i.dd, label %bb.r, label %is_dbus_object_path_valid.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.de = getelementptr i8, ptr %i.db, i64 1      ; 2 uses
  %i.df = load i8, ptr %i.de, align 1             ; 2 uses
  switch i8 %i.df, label %.preheader.i [
    i8 0, label %is_dbus_object_path_valid.exit.thread354
    i8 47, label %is_dbus_object_path_valid.exit.thread
  ]

.lr.ph.i.loopexit:                                ; preds = %bb.s
  %i.dg = getelementptr i8, ptr %.1.i, i64 1      ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1             ; 2 uses
  %i.di = icmp eq i8 %i.dh, 47
  br i1 %i.di, label %is_dbus_object_path_valid.exit.thread, label %.preheader.i.backedge

.preheader.i:                                     ; preds = %bb.r, %.preheader.i.backedge
  %i.dj = phi i8 [ %.be, %.preheader.i.backedge ], [ %i.df, %bb.r ] ; 3 uses
  %.1.i = phi ptr [ %.1.i.be, %.preheader.i.backedge ], [ %i.de, %bb.r ] ; 3 uses
  %i.dk = or i8 %i.dj, 32
  %4 = add i8 %i.dk, -97
  %5 = icmp ult i8 %4, 26
  %6 = add i8 %i.dj, -48
  %i.dl = icmp ult i8 %6, 10
  %or.cond.i = or i1 %i.dl, %5
  br i1 %or.cond.i, label %.critedge.i, label %bb.s

bb.s:                                             ; preds = %.preheader.i
  switch i8 %i.dj, label %is_dbus_object_path_valid.exit.thread [
    i8 95, label %.critedge.i
    i8 0, label %is_dbus_object_path_valid.exit
    i8 47, label %.lr.ph.i.loopexit
  ]

.critedge.i:                                      ; preds = %bb.s, %.preheader.i
  %i.dm = getelementptr i8, ptr %.1.i, i64 1      ; 2 uses
  %.pr.i = load i8, ptr %i.dm, align 1
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %.critedge.i, %.lr.ph.i.loopexit
  %.be = phi i8 [ %.pr.i, %.critedge.i ], [ %i.dh, %.lr.ph.i.loopexit ]
  %.1.i.be = phi ptr [ %i.dm, %.critedge.i ], [ %i.dg, %.lr.ph.i.loopexit ]
  br label %.preheader.i, !llvm.loop !15

is_dbus_object_path_valid.exit:                   ; preds = %bb.s
  %i.dn = getelementptr i8, ptr %.1.i, i64 -1
  %i.do = load i8, ptr %i.dn, align 1
  %.not365 = icmp eq i8 %i.do, 47
  br i1 %.not365, label %is_dbus_object_path_valid.exit.thread, label %is_dbus_object_path_valid.exit.thread354

is_dbus_object_path_valid.exit.thread:            ; preds = %.lr.ph.i.loopexit, %bb.s, %bb.r, %bb.q, %is_dbus_object_path_valid.exit, %bb.p
  %i.dp = getelementptr i8, ptr %i.f, i64 8
  %.val341 = load ptr, ptr %i.dp, align 8
  %i.dq = getelementptr i8, ptr %i.f, i64 40
  %.val342 = load ptr, ptr %i.dq, align 8
  %i.dr = tail call ptr @expert_add_info(ptr noundef %.val341, ptr noundef %.val342, ptr noundef @ei_dbus_type_object_path_invalid) ; 0 uses
  br label %is_dbus_object_path_valid.exit.thread354

is_dbus_object_path_valid.exit.thread354:         ; preds = %bb.r, %is_dbus_object_path_valid.exit.thread, %is_dbus_object_path_valid.exit
  %.2290 = phi i32 [ 0, %is_dbus_object_path_valid.exit ], [ 1, %is_dbus_object_path_valid.exit.thread ], [ 0, %bb.r ]
  store ptr %i.db, ptr %3, align 8
  br label %bb.av

bb.t:                                             ; preds = %bb.a
  %.not316 = icmp eq i32 %1, -1
  %i.ds = load i32, ptr @hf_dbus_type_signature, align 4
  %i.dt = select i1 %.not316, i32 %i.ds, i32 %1
  %i.du = tail call fastcc ptr @add_dbus_string(ptr noundef %i.f, i32 noundef %i.dt, i32 noundef 1) ; 3 uses
  %.not317 = icmp eq ptr %i.du, null
  br i1 %.not317, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dv = getelementptr i8, ptr %i.f, i64 8
  %.val348 = load ptr, ptr %i.dv, align 8
  %i.dw = getelementptr i8, ptr %.val348, i64 416
  %.val348.val = load ptr, ptr %i.dw, align 8
  %i.dx = tail call fastcc zeroext i1 @is_dbus_signature_valid(ptr noundef %i.du, ptr %.val348.val)
  br i1 %i.dx, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dy = getelementptr i8, ptr %i.f, i64 8
  %.val339 = load ptr, ptr %i.dy, align 8
  %i.dz = getelementptr i8, ptr %i.f, i64 40
  %.val340 = load ptr, ptr %i.dz, align 8
  %i.ea = tail call ptr @expert_add_info(ptr noundef %.val339, ptr noundef %.val340, ptr noundef @ei_dbus_type_signature_invalid) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.3291 = phi i32 [ 0, %bb.u ], [ 1, %bb.v ]
  store ptr %i.du, ptr %3, align 8
  br label %bb.av

bb.x:                                             ; preds = %bb.a
  %i.eb = load ptr, ptr %i.f, align 8
  %.not313 = icmp eq i32 %1, -1
  %i.ec = load i32, ptr @hf_dbus_type_array, align 4
  %i.ed = select i1 %.not313, i32 %i.ec, i32 %1
  %.not314 = icmp eq i32 %2, -1
  %i.ee = load i32, ptr @ett_dbus_type_array, align 4
  %i.ef = select i1 %.not314, i32 %i.ee, i32 %2
  %i.eg = tail call ptr @ptvcursor_add_with_subtree(ptr noundef %i.eb, i32 noundef %i.ed, i32 noundef -1, i32 noundef 0, i32 noundef %i.ef) ; 2 uses
  %i.eh = load ptr, ptr %i.b, align 8
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = icmp eq i8 %i.ei, 123
  br i1 %i.ej, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.eg, ptr noundef @.str.175)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ek = load i32, ptr @hf_dbus_type_array_length, align 4 ; 2 uses
  %i.el = tail call ptr @proto_registrar_get_nth(i32 noundef %i.ek)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.em = getelementptr i8, ptr %i.el, i64 16
  %i.en = load i32, ptr %i.em, align 8
  switch i32 %i.en, label %bb.ab [
    i32 4, label %add_uint.exit
    i32 7, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  br label %add_uint.exit

bb.ab:                                            ; preds = %bb.z
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.158, ptr noundef @.str.159, i32 noundef 558) #10
  unreachable

add_uint.exit:                                    ; preds = %bb.z, %bb.aa
  %.0.i = phi i32 [ 4, %bb.aa ], [ 1, %bb.z ]
  %i.eo = load ptr, ptr %i.f, align 8
  %i.ep = getelementptr i8, ptr %i.f, i64 16
  %i.eq = load i32, ptr %i.ep, align 8
  %i.er = call ptr @ptvcursor_add_ret_uint(ptr noundef %i.eo, i32 noundef %i.ek, i32 noundef %.0.i, i32 noundef %i.eq, ptr noundef nonnull %i.a)
  %i.es = getelementptr i8, ptr %i.f, i64 40      ; 2 uses
  store ptr %i.er, ptr %i.es, align 8
  %i.et = load i32, ptr %i.a, align 4             ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  store i32 %i.et, ptr %3, align 8
  %i.eu = load ptr, ptr %i.b, align 8
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = call fastcc i32 @add_padding(ptr noundef %i.f, i8 noundef signext %i.ev) ; 0 uses
  %i.ex = icmp eq i32 %i.et, 0
  br i1 %i.ex, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %add_uint.exit
  %i.ey = load ptr, ptr %i.b, align 8
  %i.ez = call fastcc ptr @skip_single_complete_type(ptr noundef %i.ey) ; 2 uses
  store ptr %i.ez, ptr %i.b, align 8
  %.not315 = icmp eq ptr %i.ez, null
  br i1 %.not315, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.176, ptr noundef @.str.159, i32 noundef 750, ptr noundef @.str.177) #10
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.fa = load ptr, ptr %i.f, align 8
  call void @ptvcursor_pop_subtree(ptr noundef %i.fa)
  br label %bb.av

bb.af:                                            ; preds = %add_uint.exit
  %i.fb = icmp ult i32 %i.et, 67108865
  br i1 %i.fb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fc = load ptr, ptr %i.f, align 8
  %i.fd = call i32 @ptvcursor_current_offset(ptr noundef %i.fc)
  %i.fe = add i32 %i.fd, %i.et
  %i.ff = getelementptr i8, ptr %i.f, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = getelementptr i8, ptr %i.fg, i64 416
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = call noalias dereferenceable_or_null(64) ptr @wmem_alloc(ptr noundef %i.fi, i64 noundef 64) #12 ; 10 uses
  %i.fk = getelementptr i8, ptr %0, i64 16
  %i.fl = load ptr, ptr %i.b, align 8
  %i.fm = load <2 x ptr>, ptr %0, align 8
  store <2 x ptr> %i.fm, ptr %i.fj, align 8
  %.sroa.348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fn = load <2 x i32>, ptr %i.fk, align 8
  %i.fo = add <2 x i32> %i.fn, splat (i32 1)
  store <2 x i32> %i.fo, ptr %.sroa.348.0..sroa_idx, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  store i32 0, ptr %.sroa.550.0..sroa_idx, align 8
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 28
  store i32 0, ptr %.sroa.651.0..sroa_idx, align 4
  %.sroa.752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  store ptr %i.fl, ptr %.sroa.752.0..sroa_idx, align 8
  %.sroa.853.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  store i32 %i.fe, ptr %.sroa.853.0..sroa_idx, align 8
  %.sroa.954.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 44
  %.sroa.1358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 48
  store i32 0, ptr %.sroa.954.0..sroa_idx, align 4
  store ptr %i.eg, ptr %.sroa.1358.0..sroa_idx, align 8
  %.sroa.1459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  store ptr %0, ptr %.sroa.1459.0..sroa_idx, align 8
  br label %bb.av

bb.ah:                                            ; preds = %bb.af
  %i.fp = getelementptr i8, ptr %i.f, i64 8
  %.val337 = load ptr, ptr %i.fp, align 8
  %.val338 = load ptr, ptr %i.es, align 8
  %i.fq = call ptr @expert_add_info(ptr noundef %.val337, ptr noundef %.val338, ptr noundef @ei_dbus_type_array_too_long) ; 0 uses
  %i.fr = load ptr, ptr %i.f, align 8
  call void @ptvcursor_pop_subtree(ptr noundef %i.fr)
  br label %bb.av

bb.ai:                                            ; preds = %bb.a
  %i.fs = load ptr, ptr %i.f, align 8
  %.not311 = icmp eq i32 %1, -1
  %i.ft = load i32, ptr @hf_dbus_type_struct, align 4
  %i.fu = select i1 %.not311, i32 %i.ft, i32 %1
  %.not312 = icmp eq i32 %2, -1
  %i.fv = load i32, ptr @ett_dbus_type_struct, align 4
  %i.fw = select i1 %.not312, i32 %i.fv, i32 %2
  %i.fx = tail call ptr @ptvcursor_add_with_subtree(ptr noundef %i.fs, i32 noundef %i.fu, i32 noundef -1, i32 noundef 0, i32 noundef %i.fw) ; 0 uses
  %i.fy = getelementptr i8, ptr %i.f, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = getelementptr i8, ptr %i.fz, i64 416
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = tail call noalias dereferenceable_or_null(64) ptr @wmem_alloc(ptr noundef %i.gb, i64 noundef 64) #12 ; 7 uses
  %i.gd = getelementptr i8, ptr %0, i64 16
  %i.ge = load i32, ptr %i.gd, align 8
  %i.gf = add i32 %i.ge, 1
  %i.gg = getelementptr i8, ptr %0, i64 24
  %i.gh = load i32, ptr %i.gg, align 8
  %i.gi = add i32 %i.gh, 1
  %i.gj = load <2 x ptr>, ptr %0, align 8
  store <2 x ptr> %i.gj, ptr %i.gc, align 8
  %.sroa.332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store i32 %i.gf, ptr %.sroa.332.0..sroa_idx, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 20
  store i32 0, ptr %.sroa.433.0..sroa_idx, align 4
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  store i32 %i.gi, ptr %.sroa.534.0..sroa_idx, align 8
end_hunk_1
begin_hunk_2_@reader_next:bb.a
bb.az:                                            ; preds = %bb.ay
  br i1 %.1297, label %.preheader, label %bb.bn

.preheader:                                       ; preds = %bb.az
  %i.jt = getelementptr i8, ptr %i.f, i64 8       ; 3 uses
  %i.ju = getelementptr i8, ptr %i.f, i64 40      ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %.preheader, %bb.bk
  %.3 = phi ptr [ %.5, %bb.bk ], [ %.2, %.preheader ] ; 18 uses
  %i.jv = getelementptr i8, ptr %.3, i64 32
  %i.jw = load ptr, ptr %i.jv, align 8
  %.not332 = icmp eq ptr %i.jw, null
  br i1 %.not332, label %bb.bg, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jx = load ptr, ptr %i.f, align 8
  %i.jy = call i32 @ptvcursor_current_offset(ptr noundef %i.jx) ; 2 uses
  %i.jz = getelementptr i8, ptr %.3, i64 40
  %i.ka = load i32, ptr %i.jz, align 8            ; 2 uses
  %i.kb = icmp slt i32 %i.jy, %i.ka
  br i1 %i.kb, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.kc = getelementptr i8, ptr %.3, i64 32
  %i.kd = load ptr, ptr %i.kc, align 8
  %i.ke = getelementptr i8, ptr %.3, i64 8
  store ptr %i.kd, ptr %i.ke, align 8
  br label %.thread

bb.bd:                                            ; preds = %bb.bb
  %i.kf = icmp eq i32 %i.jy, %i.ka
  br i1 %i.kf, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kg = load ptr, ptr %i.jt, align 8
  %i.kh = getelementptr i8, ptr %.3, i64 48
  %i.ki = load ptr, ptr %i.kh, align 8
  %i.kj = call ptr @expert_add_info(ptr noundef %i.kg, ptr noundef %i.ki, ptr noundef @ei_dbus_type_array_content_out_of_bounds) ; 0 uses
  br label %.thread

bb.bf:                                            ; preds = %bb.bd
  %i.kk = load ptr, ptr %i.f, align 8
  call void @ptvcursor_pop_subtree(ptr noundef %i.kk)
  %i.kl = getelementptr i8, ptr %.3, i64 8
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = getelementptr i8, ptr %.3, i64 56       ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8
  %i.kp = getelementptr i8, ptr %i.ko, i64 8
  store ptr %i.km, ptr %i.kp, align 8
  br label %bb.bk

bb.bg:                                            ; preds = %bb.ba
  %i.kq = getelementptr i8, ptr %.3, i64 44
  %i.kr = load i8, ptr %i.kq, align 4, !range !8, !noundef !9
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %bb.bh, label %.thread

bb.bh:                                            ; preds = %bb.bg
  %i.kt = getelementptr i8, ptr %.3, i64 45
  %i.ku = load i8, ptr %i.kt, align 1, !range !8, !noundef !9
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.kw = getelementptr i8, ptr %.3, i64 48
  %i.kx = load ptr, ptr %i.kw, align 8
  %i.ky = load ptr, ptr %i.jt, align 8
  %i.kz = getelementptr i8, ptr %i.ky, i64 416
  %i.la = load ptr, ptr %i.kz, align 8
  %i.lb = load ptr, ptr %i.ju, align 8
  %i.lc = call ptr @proto_item_get_display_repr(ptr noundef %i.la, ptr noundef %i.lb)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.kx, ptr noundef @.str.178, ptr noundef %i.lc)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.ld = load ptr, ptr %i.f, align 8
  call void @ptvcursor_pop_subtree(ptr noundef %i.ld)
  %i.le = getelementptr i8, ptr %.3, i64 56
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bf, %bb.bj
  %.5.in = phi ptr [ %i.kn, %bb.bf ], [ %i.le, %bb.bj ]
  %.5 = load ptr, ptr %.5.in, align 8
  br label %bb.ba

.thread:                                          ; preds = %bb.bg, %bb.be, %bb.bc
  %.10 = phi i32 [ %.6294, %bb.bc ], [ 1, %bb.be ], [ %.6294, %bb.bg ] ; 3 uses
  %i.lf = getelementptr i8, ptr %.3, i64 46
  %i.lg = load i8, ptr %i.lf, align 2, !range !8, !noundef !9
  %i.lh = trunc nuw i8 %i.lg to i1
  br i1 %i.lh, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %.thread
  %i.li = getelementptr i8, ptr %.3, i64 8
  %i.lj = load ptr, ptr %i.li, align 8
  %i.lk = getelementptr i8, ptr %i.lj, i64 -2
  %i.ll = load i8, ptr %i.lk, align 1
  %i.lm = icmp eq i8 %i.ll, 123
  br i1 %i.lm, label %.sink.split, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ln = getelementptr i8, ptr %.3, i64 47
  %i.lo = load i8, ptr %i.ln, align 1, !range !8, !noundef !9
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %.sink.split, label %bb.bn

.sink.split:                                      ; preds = %bb.bm, %bb.bl
  %.str.163.sink = phi ptr [ @.str.163, %bb.bl ], [ @.str.178, %bb.bm ]
  %i.lq = getelementptr i8, ptr %.3, i64 48
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = load ptr, ptr %i.jt, align 8
  %i.lt = getelementptr i8, ptr %i.ls, i64 416
  %i.lu = load ptr, ptr %i.lt, align 8
  %i.lv = load ptr, ptr %i.ju, align 8
  %i.lw = call ptr @proto_item_get_display_repr(ptr noundef %i.lu, ptr noundef %i.lv)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.lr, ptr noundef %.str.163.sink, ptr noundef %i.lw)
  br label %bb.bn

bb.bn:                                            ; preds = %.sink.split, %bb.az, %bb.bm, %.thread
  %.11 = phi i32 [ %.6294, %bb.az ], [ %.10, %bb.bm ], [ %.10, %.thread ], [ %.10, %.sink.split ]
  %.7 = phi ptr [ %.2, %bb.az ], [ %.3, %bb.bm ], [ %.3, %.thread ], [ %.3, %.sink.split ] ; 2 uses
  %.not333 = icmp eq i32 %.11, 0
  br i1 %.not333, label %reader_cleanup.exit, label %bb.bo

bb.bo:                                            ; preds = %.thread360, %bb.bn
  %.7364 = phi ptr [ %.2, %.thread360 ], [ %.7, %bb.bn ] ; 2 uses
  %i.lx = getelementptr i8, ptr %.7364, i64 56    ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8
  %.not4.i = icmp eq ptr %i.ly, null
  br i1 %.not4.i, label %reader_cleanup.exit, label %.lr.ph.i352

.lr.ph.i352:                                      ; preds = %bb.bo, %.lr.ph.i352
  %i.lz = phi ptr [ %i.md, %.lr.ph.i352 ], [ %i.lx, %bb.bo ]
  %.05.i = phi ptr [ %i.mc, %.lr.ph.i352 ], [ %.7364, %bb.bo ]
  %i.ma = load ptr, ptr %.05.i, align 8
  %i.mb = load ptr, ptr %i.ma, align 8
  call void @ptvcursor_pop_subtree(ptr noundef %i.mb)
  %i.mc = load ptr, ptr %i.lz, align 8            ; 2 uses
  %i.md = getelementptr i8, ptr %i.mc, i64 56     ; 2 uses
  %i.me = load ptr, ptr %i.md, align 8
  %.not.i = icmp eq ptr %i.me, null
  br i1 %.not.i, label %reader_cleanup.exit, label %.lr.ph.i352, !llvm.loop !0

reader_cleanup.exit:                              ; preds = %.lr.ph.i352, %bb.bo, %bb.bn
  %.0286 = phi ptr [ %.7, %bb.bn ], [ null, %bb.bo ], [ null, %.lr.ph.i352 ]
  ret ptr %.0286
}

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @reader_cleanup(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not4 = icmp eq ptr %i.b, null
  br i1 %.not4, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi ptr [ %i.g, %.lr.ph ], [ %i.a, %bb.a ]
  %.05 = phi ptr [ %i.f, %.lr.ph ], [ %0, %bb.a ]
  %i.d = load ptr, ptr %.05, align 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @ptvcursor_pop_subtree(ptr noundef %i.e)
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 56       ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read) uwtable
define internal fastcc zeroext i1 @is_dbus_bus_name_valid(ptr noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %.fr38 = freeze i8 %i.a
  %i.b = icmp eq i8 %.fr38, 58                    ; 2 uses
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr i8, ptr %0, i64 %spec.select.idx ; 2 uses
  br i1 %i.b, label %.split, label %.split.us

.split.us:                                        ; preds = %bb.a, %bb.e
  %.023.us = phi i32 [ %i.f, %bb.e ], [ 0, %bb.a ]
  %.1.us = phi ptr [ %i.k, %bb.e ], [ %spec.select, %bb.a ] ; 2 uses
  %i.c = load i8, ptr %.1.us, align 1             ; 2 uses
  %i.d = or i8 %i.c, 32
  %1 = add i8 %i.d, -97
  %i.e = icmp ult i8 %1, 26
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split.us
  switch i8 %i.c, label %.loopexit [
    i8 95, label %bb.c
    i8 45, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %.split.us
  %i.f = add i32 %.023.us, 1                      ; 2 uses
  br label %.critedge.us

.critedge.us:                                     ; preds = %.critedge.us.backedge, %bb.c
  %.1.pn.us = phi ptr [ %.1.us, %bb.c ], [ %.2.us, %.critedge.us.backedge ] ; 2 uses
  %.2.us = getelementptr i8, ptr %.1.pn.us, i64 1 ; 3 uses
  %i.g = load i8, ptr %.2.us, align 1             ; 4 uses
  %i.h = or i8 %i.g, 32
  %2 = add i8 %i.h, -97
  %i.i = icmp ult i8 %2, 26
  %3 = add i8 %i.g, -48
  %i.j = icmp ult i8 %3, 10
  %or.cond28.us = or i1 %i.j, %i.i
  br i1 %or.cond28.us, label %.critedge.us.backedge, label %bb.d

bb.d:                                             ; preds = %.critedge.us
  switch i8 %i.g, label %bb.e [
    i8 95, label %.critedge.us.backedge
    i8 45, label %.critedge.us.backedge
    i8 0, label %.split36.us
  ]

.critedge.us.backedge:                            ; preds = %bb.d, %bb.d, %.critedge.us
  br label %.critedge.us, !llvm.loop !16

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %.1.pn.us, i64 2
  %i.l = icmp eq i8 %i.g, 46
  br i1 %i.l, label %.split.us, label %.loopexit, !llvm.loop !17

.split:                                           ; preds = %bb.a, %bb.j
  %.023 = phi i32 [ %i.q, %bb.j ], [ 0, %bb.a ]
  %.1 = phi ptr [ %i.ab, %bb.j ], [ %spec.select, %bb.a ] ; 2 uses
  %i.m = load i8, ptr %.1, align 1                ; 3 uses
  %i.n = or i8 %i.m, 32
  %4 = add i8 %i.n, -97
  %i.o = icmp ult i8 %4, 26
  br i1 %i.o, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.split
  switch i8 %i.m, label %bb.g [
    i8 95, label %bb.h
    i8 45, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %5 = add i8 %i.m, -48
  %i.p = icmp ult i8 %5, 10
  br i1 %i.p, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.f, %.split
  %i.q = add i32 %.023, 1                         ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.h
  %.1.pn = phi ptr [ %.1, %bb.h ], [ %.2, %.critedge.backedge ] ; 2 uses
  %.2 = getelementptr i8, ptr %.1.pn, i64 1       ; 3 uses
  %i.r = load i8, ptr %.2, align 1                ; 4 uses
  %i.s = or i8 %i.r, 32
  %6 = add i8 %i.s, -97
  %i.t = icmp ult i8 %6, 26
  %7 = add i8 %i.r, -48
  %i.u = icmp ult i8 %7, 10
  %or.cond28 = or i1 %i.u, %i.t
  br i1 %or.cond28, label %.critedge.backedge, label %bb.i

bb.i:                                             ; preds = %.critedge
  switch i8 %i.r, label %bb.j [
    i8 95, label %.critedge.backedge
    i8 45, label %.critedge.backedge
    i8 0, label %.split36.us
  ]

.critedge.backedge:                               ; preds = %bb.i, %bb.i, %.critedge
  br label %.critedge, !llvm.loop !16

.split36.us:                                      ; preds = %bb.d, %bb.i
  %.us-phi = phi i32 [ %i.q, %bb.i ], [ %i.f, %bb.d ]
  %.us-phi37 = phi ptr [ %.2, %bb.i ], [ %.2.us, %bb.d ]
  %i.v = ptrtoint ptr %.us-phi37 to i64
  %i.w = ptrtoint ptr %0 to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp sgt i32 %.us-phi, 1
  %i.z = icmp ult i64 %i.x, 256
  %i.aa = and i1 %i.y, %i.z
  br label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr i8, ptr %.1.pn, i64 2
  %i.ac = icmp eq i8 %i.r, 46
  br i1 %i.ac, label %.split, label %.loopexit, !llvm.loop !17

.loopexit:                                        ; preds = %bb.e, %bb.b, %bb.g, %bb.j, %.split36.us
  %.0 = phi i1 [ %i.aa, %.split36.us ], [ false, %bb.g ], [ false, %bb.j ], [ false, %bb.b ], [ false, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_get_subtree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @resolve_unique_name(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call ptr @ptvcursor_tvbuff(ptr noundef %i.a) ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %proto_item_set_generated.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @unique_name_map, align 8
  %i.f = tail call ptr @wmem_map_lookup(ptr noundef %i.e, ptr noundef nonnull %i.d) ; 4 uses
  %.not24 = icmp eq ptr %i.f, null
  br i1 %.not24, label %proto_item_set_generated.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 208
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #11
  %i.k = trunc i64 %i.j to i32
  %i.l = add i32 %i.k, 1
  store i32 7, ptr %i.i, align 8
  %i.m = getelementptr i8, ptr %i.h, i64 212
  store i32 %i.l, ptr %i.m, align 4
  %i.n = getelementptr i8, ptr %i.h, i64 216
  store ptr %i.f, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.h, i64 224
  store ptr null, ptr %i.o, align 8
  %i.p = load i32, ptr @hf_dbus_sender, align 4
  %i.q = tail call ptr @proto_tree_add_string(ptr noundef %1, i32 noundef %i.p, ptr noundef %i.b, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.f) ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.s, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.s, i64 28       ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = or i32 %i.u, 2
  store i32 %i.v, ptr %i.t, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.w = getelementptr i8, ptr %0, i64 88
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not25 = icmp eq ptr %i.x, null
  br i1 %.not25, label %proto_item_set_generated.exit29, label %bb.f

bb.f:                                             ; preds = %proto_item_set_generated.exit
  %i.y = load ptr, ptr @unique_name_map, align 8
  %i.z = tail call ptr @wmem_map_lookup(ptr noundef %i.y, ptr noundef nonnull %i.x) ; 4 uses
  %.not26 = icmp eq ptr %i.z, null
  br i1 %.not26, label %proto_item_set_generated.exit29, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 4 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 232
  %i.ad = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #11
  %i.ae = trunc i64 %i.ad to i32
  %i.af = add i32 %i.ae, 1
  store i32 7, ptr %i.ac, align 8
  %i.ag = getelementptr i8, ptr %i.ab, i64 236
  store i32 %i.af, ptr %i.ag, align 4
  %i.ah = getelementptr i8, ptr %i.ab, i64 240
  store ptr %i.z, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %i.ab, i64 248
  store ptr null, ptr %i.ai, align 8
  %i.aj = load i32, ptr @hf_dbus_destination, align 4
  %i.ak = tail call ptr @proto_tree_add_string(ptr noundef %1, i32 noundef %i.aj, ptr noundef %i.b, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.z) ; 2 uses
  %.not.i27 = icmp eq ptr %i.ak, null
  br i1 %.not.i27, label %proto_item_set_generated.exit29, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not5.i28 = icmp eq ptr %i.am, null
  br i1 %.not5.i28, label %proto_item_set_generated.exit29, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr i8, ptr %i.am, i64 28     ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = or i32 %i.ao, 2
  store i32 %i.ap, ptr %i.an, align 4
  br label %proto_item_set_generated.exit29

proto_item_set_generated.exit29:                  ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %proto_item_set_generated.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @add_padding(ptr nofree noundef captures(none) %0, i8 noundef signext %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call ptr @ptvcursor_tvbuff(ptr noundef %i.a)
  %i.c = load ptr, ptr %0, align 8
  %i.d = tail call i32 @ptvcursor_current_offset(ptr noundef %i.c) ; 4 uses
  %switch.tableidx = add i8 %1, -40               ; 2 uses
  %i.e = icmp ult i8 %switch.tableidx, 84
  br i1 %i.e, label %switch.lookup, label %calculate_padding_len.exit

switch.lookup:                                    ; preds = %bb.a
  %i.f = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.add_padding, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %calculate_padding_len.exit

calculate_padding_len.exit:                       ; preds = %switch.lookup, %bb.a
  %.0.i = phi i32 [ 1, %bb.a ], [ %switch.ext, %switch.lookup ] ; 3 uses
  %i.g = srem i32 %i.d, %.0.i
  %i.h = sub nsw i32 %.0.i, %i.g
  %.lhs.trunc.i = trunc nuw nsw i32 %i.h to i8
  %.rhs.trunc.i = trunc nuw nsw i32 %.0.i to i8
  %i.i = add nsw i8 %.rhs.trunc.i, -1
  %i.j = and i8 %i.i, %.lhs.trunc.i               ; 2 uses
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %proto_item_set_hidden.exit, label %bb.b

bb.b:                                             ; preds = %calculate_padding_len.exit
  %.sext.i = zext nneg i8 %i.j to i32             ; 2 uses
  %i.k = load ptr, ptr %0, align 8
  %i.l = load i32, ptr @hf_dbus_padding, align 4
  %i.m = getelementptr i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8
  %i.o = tail call ptr @ptvcursor_add(ptr noundef %i.k, i32 noundef %i.l, i32 noundef %.sext.i, i32 noundef %i.n) ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 40         ; 3 uses
  store ptr %i.o, ptr %i.p, align 8
  %i.q = add i32 %i.d, %.sext.i                   ; 2 uses
  %.not2426 = icmp slt i32 %i.d, %i.q
  br i1 %.not2426, label %.lr.ph, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.r = add i32 %.02027, 1                       ; 2 uses
  %exitcond.not = icmp eq i32 %i.r, %i.q
  br i1 %exitcond.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !18

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.02027 = phi i32 [ %i.r, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.s = tail call zeroext i8 @tvb_get_uint8(ptr noundef %i.b, i32 noundef %.02027)
  %.not23 = icmp eq i8 %i.s, 0
  br i1 %.not23, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.t = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.t, align 8
  %.val25 = load ptr, ptr %i.p, align 8
  %i.u = tail call ptr @expert_add_info(ptr noundef %.val, ptr noundef %.val25, ptr noundef @ei_dbus_padding_invalid) ; 0 uses
  br label %proto_item_set_hidden.exit

end_hunk_2
