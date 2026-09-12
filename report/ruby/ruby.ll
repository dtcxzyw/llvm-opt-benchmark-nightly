Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ruby?download=true
inline.NumInlined: 260
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ruby_process_options:bb.a
  %i.nn = icmp sgt i32 %.1205.i, 0
  br i1 %i.nn, label %.lr.ph.preheader.i.i, label %ruby_set_argv.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.dl
  %wide.trip.count.i.i = zext nneg i32 %.1205.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.no = getelementptr [8 x i8], ptr %.1208.i, i64 %indvars.iv.i.i
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !81
  %i.nq = call i64 @rb_external_str_new_cstr(ptr noundef %i.np) #23 ; 2 uses
  call void @rb_obj_freeze_inline(i64 noundef %i.nq) #23
  %i.nr = call i64 @rb_ary_push(i64 noundef %i.nl, i64 noundef %i.nq) #23 ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %ruby_set_argv.exit.i, label %.lr.ph.i.i, !llvm.loop !2

ruby_set_argv.exit.i:                             ; preds = %.lr.ph.i.i, %bb.dl
  %i.ns = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 11 uses
  %i.nt = load i16, ptr %i.ns, align 8
  %i.nu = shl i16 %i.nt, 14
  %i.nv = ashr exact i16 %i.nu, 14
  %i.nw = sext i16 %i.nv to i32
  %i.nx = call fastcc i32 @process_sflag(i32 noundef %i.nw)
  %i.ny = trunc nsw i32 %i.nx to i16
  %i.nz = load i16, ptr %i.ns, align 8
  %i.oa = and i16 %i.ny, 3
  %i.ob = and i16 %i.nz, -4
  %i.oc = or disjoint i16 %i.ob, %i.oa
  store i16 %i.oc, ptr %i.ns, align 8
  %i.od = load i64, ptr %i.gb, align 8, !tbaa !88 ; 2 uses
  %.not280.i = icmp eq i64 %i.od, 0
  br i1 %.not280.i, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %ruby_set_argv.exit.i
  %i.oe = load i32, ptr %i.af, align 8, !tbaa !60 ; 2 uses
  %i.of = icmp sgt i32 %i.oe, -1
  br i1 %i.of, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.og = call ptr @rb_enc_from_index(i32 noundef %i.oe) #23
  %.pre397.i = load i64, ptr %i.gb, align 8, !tbaa !88
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.oh = phi i64 [ %.pre397.i, %bb.dn ], [ %i.od, %bb.dm ]
  %.0210.i = phi ptr [ %i.og, %bb.dn ], [ %i.hl, %bb.dm ]
  %i.oi = call i64 @rb_enc_associate(i64 noundef %i.oh, ptr noundef %.0210.i) #23 ; 0 uses
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %ruby_set_argv.exit.i
  %i.oj = call i32 @rb_ruby_default_parser() #23
  %i.ok = icmp eq i32 %i.oj, 1
  br i1 %i.ok, label %bb.dz, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ol = call i64 @rb_parser_new() #23           ; 7 uses
  %i.om = load i32, ptr %i.aj, align 8, !tbaa !64 ; 3 uses
  %i.on = and i32 %i.om, 256
  %.not.i347.i = icmp eq i32 %i.on, 0
  br i1 %.not.i347.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.oo = call i64 @rb_parser_set_yydebug(i64 noundef %i.ol, i64 noundef 20) #23 ; 0 uses
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.op = and i32 %i.om, 3840
  %.not32.i.i = icmp eq i32 %i.op, 0
  %i.oq = and i32 %i.om, 2
  %.not33.i.i = icmp eq i32 %i.oq, 0
  %or.cond.i348.i = or i1 %.not32.i.i, %.not33.i.i
  br i1 %or.cond.i348.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @rb_parser_error_tolerant(i64 noundef %i.ol) #23
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.or = load i64, ptr %i.gb, align 8, !tbaa !88
  %.not34.i.i = icmp eq i64 %i.or, 0
  br i1 %.not34.i.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.os = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !29
  %i.ot = getelementptr i8, ptr %i.os, i64 1216
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !75
  %i.ov = call i64 @rb_parser_set_context(i64 noundef %i.ol, ptr noundef null, i32 noundef 1) #23 ; 0 uses
  call fastcc void @ruby_opt_init(ptr noundef nonnull %4)
  %i.ow = call i64 @rb_str_new_frozen(i64 noundef %i.ou) #23 ; 3 uses
  %i.ox = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !29 ; 2 uses
  %i.oy = getelementptr i8, ptr %i.ox, i64 1216
  store i64 %i.ow, ptr %i.oy, align 8, !tbaa !75
  %i.oz = getelementptr i8, ptr %i.ox, i64 1208
  store i64 %i.ow, ptr %i.oz, align 8, !tbaa !76
  call void @rb_vm_set_progname(i64 noundef %i.ow) #23
  %i.pa = load i16, ptr %i.ns, align 8            ; 4 uses
  %i.pb = lshr i16 %i.pa, 6
  %i.pc = and i16 %i.pb, 1
  %i.pd = zext nneg i16 %i.pc to i32
  %i.pe = lshr i16 %i.pa, 5
  %i.pf = and i16 %i.pe, 1
  %i.pg = zext nneg i16 %i.pf to i32
  %i.ph = lshr i16 %i.pa, 7
  %i.pi = and i16 %i.ph, 1
  %i.pj = zext nneg i16 %i.pi to i32
  %i.pk = lshr i16 %i.pa, 8
  %i.pl = and i16 %i.pk, 1
  %i.pm = zext nneg i16 %i.pl to i32
  call void @rb_parser_set_options(i64 noundef %i.ol, i32 noundef %i.pd, i32 noundef %i.pg, i32 noundef %i.pj, i32 noundef %i.pm) #23
  %i.pn = load ptr, ptr %4, align 8, !tbaa !89
  %i.po = load i64, ptr %i.gb, align 8, !tbaa !88
  %i.pp = call i64 @rb_parser_compile_string(i64 noundef %i.ol, ptr noundef %i.pn, i64 noundef %i.po, i32 noundef 1) #23
  br label %bb.dx

bb.dw:                                            ; preds = %bb.du
  %i.pq = load i16, ptr %i.ns, align 8
  %i.pr = load i64, ptr %i.he, align 8, !tbaa !90
  %i.ps = call fastcc i64 @open_load_file(i64 noundef %i.pr) ; 2 uses
  %i.pt = and i16 %i.pq, 4
  %i.pu = load i16, ptr %i.ns, align 8
  %i.pv = and i16 %i.pu, -5
  %i.pw = or disjoint i16 %i.pv, %i.pt
  store i16 %i.pw, ptr %i.ns, align 8
  %i.px = load i64, ptr @rb_stdin, align 8, !tbaa !27
  %i.py = icmp eq i64 %i.ps, %i.px
  %i.pz = zext i1 %i.py to i32
  %i.qa = call i64 @rb_parser_set_context(i64 noundef %i.ol, ptr noundef null, i32 noundef %i.pz) #23 ; 0 uses
  %i.qb = load i64, ptr %i.he, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i64 %i.ol, ptr %2, align 8, !tbaa !68
  %i.qc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.qb, ptr %i.qc, align 8, !tbaa !69
  %i.qd = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %i.qd, align 8, !tbaa !70
  %i.qe = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %4, ptr %i.qe, align 8, !tbaa !71
  %i.qf = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.ps, ptr %i.qf, align 8, !tbaa !72
  %i.qg = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.qh = call i64 @rb_ensure(ptr noundef nonnull @load_file_internal, i64 noundef %i.qg, ptr noundef nonnull @restore_load_file, i64 noundef %i.qg) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.031.i.i = phi i64 [ %i.pp, %bb.dv ], [ %i.qh, %bb.dw ] ; 2 uses
  %i.qi = call ptr @rb_ruby_ast_data_get(i64 noundef %.031.i.i) #23 ; 2 uses
  %i.qj = getelementptr i8, ptr %i.qi, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !141
  %.not36.i.i = icmp eq ptr %i.qk, null
  br i1 %.not36.i.i, label %bb.dy, label %process_script.exit.i

bb.dy:                                            ; preds = %bb.dx
  call void @rb_ast_dispose(ptr noundef nonnull %i.qi) #23
  br label %process_script.exit.i

process_script.exit.i:                            ; preds = %bb.dy, %bb.dx
  %.0.i349.i = phi i64 [ 4, %bb.dy ], [ %.031.i.i, %bb.dx ] ; 2 uses
  %i.ql = call ptr @rb_ruby_ast_data_get(i64 noundef %.0.i349.i) #23 ; 2 uses
  store ptr %i.ql, ptr %3, align 8, !tbaa !144
  %.not281.i = icmp eq ptr %i.ql, null
  br i1 %.not281.i, label %process_options.exit, label %prism_script.exit.i

bb.dz:                                            ; preds = %bb.dp
  %i.qm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1000) %i.qm, i8 noundef 0, i64 noundef 1000, i1 noundef false) #23
  %i.qn = getelementptr inbounds nuw i8, ptr %3, i64 720 ; 10 uses
  call void @pm_options_line_set(ptr noundef nonnull %i.qn, i32 noundef 1) #23
  call void @pm_options_main_script_set(ptr noundef nonnull %i.qn, i1 noundef zeroext true) #23
  %i.qo = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.qp = load i8, ptr %i.qo, align 1
  %.not80.i.i = icmp eq i8 %i.qp, 45
  br i1 %.not80.i.i, label %.tail.i358.i, label %.tail.thread.i351.i

.tail.i358.i:                                     ; preds = %bb.dz
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 1
  %i.qr = load i8, ptr %i.qq, align 1
  %i.qs = icmp eq i8 %i.qr, 0
  br i1 %i.qs, label %bb.ea, label %.tail.thread.i351.i

bb.ea:                                            ; preds = %.tail.i358.i
  %i.qt = call ptr @rb_locale_encoding() #23
  %i.qu = getelementptr i8, ptr %i.qt, i64 8
  %.val.i.i = load ptr, ptr %i.qu, align 8, !tbaa !145
  call void @pm_options_encoding_set(ptr noundef nonnull %i.qn, ptr noundef %.val.i.i) #23
  br label %.tail.thread.i351.i

.tail.thread.i351.i:                              ; preds = %bb.ea, %.tail.i358.i, %bb.dz
  %i.qv = phi i1 [ false, %.tail.i358.i ], [ true, %bb.ea ], [ false, %bb.dz ]
  %i.qw = load i64, ptr %i.dv, align 8, !tbaa !85
  %.not.i352.i = icmp eq i64 %i.qw, 0
  br i1 %.not.i352.i, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %.tail.thread.i351.i
  %i.qx = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.dv) #23
  call void @pm_options_encoding_set(ptr noundef nonnull %i.qn, ptr noundef %i.qx) #23
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %.tail.thread.i351.i
  %.val73.i.i = load i16, ptr %i.ns, align 8      ; 4 uses
  %i.qy = lshr i16 %.val73.i.i, 8
  %i.qz = trunc nuw i16 %i.qy to i8
  %spec.select.i.i353.i = and i8 %i.qz, 1
  %5 = lshr i16 %.val73.i.i, 5
  %6 = trunc i16 %5 to i8
  %i.ra = and i8 %6, 4
  %.1.i.i.i = or disjoint i8 %spec.select.i.i353.i, %i.ra
  %7 = lshr i16 %.val73.i.i, 2
  %8 = trunc i16 %7 to i8
  %i.rb = and i8 %8, 24
  %.3.i.i.i = or disjoint i8 %.1.i.i.i, %i.rb     ; 2 uses
  %9 = trunc i16 %.val73.i.i to i8
  %i.rc = shl i8 %9, 3
  %i.rd = and i8 %i.rc, 32
  %.4.i.i.i = or disjoint i8 %.3.i.i.i, %i.rd     ; 2 uses
  br i1 %i.qv, label %bb.ed, label %bb.eg

bb.ed:                                            ; preds = %bb.ec
  call void @pm_options_command_line_set(ptr noundef nonnull %i.qn, i8 noundef zeroext %.4.i.i.i) #23
  call void @pm_options_filepath_set(ptr noundef nonnull %i.qn, ptr noundef nonnull @.str.28) #23
  call void @pm_options_shebang_callback_set(ptr noundef nonnull %i.qn, ptr noundef nonnull @prism_script_shebang_callback, ptr noundef nonnull %4) #23
  call fastcc void @ruby_opt_init(ptr noundef nonnull %4)
  %i.re = call i64 @pm_parse_stdin(ptr noundef nonnull %i.qm) #23 ; 2 uses
  %i.rf = icmp eq i64 %i.re, 4
  br i1 %i.rf, label %bb.ee, label %.thread76.i.i

bb.ee:                                            ; preds = %bb.ed
  %i.rg = getelementptr inbounds nuw i8, ptr %3, i64 440
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !146
  %.not71.i.i = icmp eq ptr %i.rh, null
  br i1 %.not71.i.i, label %prism_script.exit.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ri = load i64, ptr @rb_stdin, align 8, !tbaa !27
  br label %.thread.sink.split.i.i

bb.eg:                                            ; preds = %bb.ec
  %i.rj = load i64, ptr %i.gb, align 8, !tbaa !88
  %.not69.i.i = icmp eq i64 %i.rj, 0
  br i1 %.not69.i.i, label %bb.eh, label %bb.eu

bb.eh:                                            ; preds = %bb.eg
  %i.rk = load i64, ptr %i.he, align 8, !tbaa !90
  %i.rl = call i64 @rb_str_encode_ospath(i64 noundef %i.rk) #23 ; 2 uses
  call void @pm_options_command_line_set(ptr noundef nonnull %i.qn, i8 noundef zeroext %.4.i.i.i) #23
  call void @pm_options_shebang_callback_set(ptr noundef nonnull %i.qn, ptr noundef nonnull @prism_script_shebang_callback, ptr noundef nonnull %4) #23
  %i.rm = call i64 @pm_load_file(ptr noundef nonnull %i.qm, i64 noundef %i.rl, i1 noundef zeroext true) #23 ; 2 uses
  %i.rn = icmp eq i64 %i.rm, 4
  br i1 %i.rn, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  call fastcc void @ruby_opt_init(ptr noundef nonnull %4)
  %i.ro = load i64, ptr %i.he, align 8, !tbaa !90
  %i.rp = call i64 @pm_parse_file(ptr noundef nonnull %i.qm, i64 noundef %i.ro, ptr noundef null) #23
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.065.i.i = phi i64 [ %i.rp, %bb.ei ], [ %i.rm, %bb.eh ] ; 2 uses
  %i.rq = call i64 @rb_get_coverages() #23
  %i.rr = and i64 %i.rq, -5
  %.not79.i.i = icmp eq i64 %i.rr, 0
  br i1 %.not79.i.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.rs = getelementptr inbounds nuw i8, ptr %3, i64 984
  store i32 1, ptr %i.rs, align 8, !tbaa !147
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.rt = icmp eq i64 %.065.i.i, 4
  br i1 %i.rt, label %bb.em, label %.thread76.i.i

bb.em:                                            ; preds = %bb.el
  %i.ru = getelementptr inbounds nuw i8, ptr %3, i64 440 ; 2 uses
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !146
  %.not70.i.i = icmp eq ptr %i.rv, null
  br i1 %.not70.i.i, label %prism_script.exit.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.rw = call fastcc i64 @open_load_file(i64 noundef %i.rl) ; 2 uses
  %i.rx = load ptr, ptr %i.ru, align 8, !tbaa !148
  %i.ry = getelementptr inbounds nuw i8, ptr %3, i64 312
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !149 ; 3 uses
  %i.sa = ptrtoint ptr %i.rx to i64
  %i.sb = ptrtoint ptr %i.rz to i64
  %i.sc = sub i64 %i.sa, %i.sb                    ; 2 uses
  %i.sd = add i64 %i.sc, 7                        ; 3 uses
  %i.se = getelementptr i8, ptr %i.rz, i64 %i.sd  ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %3, i64 320
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !150 ; 2 uses
  %i.sh = icmp ult ptr %i.se, %i.sg
  br i1 %i.sh, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.si = load i8, ptr %i.se, align 1, !tbaa !17
  %i.sj = icmp eq i8 %i.si, 13
  %i.sk = add i64 %i.sc, 8
  %spec.select.i357.i = select i1 %i.sj, i64 %i.sk, i64 %i.sd
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.0.i355.i = phi i64 [ %i.sd, %bb.en ], [ %spec.select.i357.i, %bb.eo ] ; 3 uses
  %i.sl = getelementptr i8, ptr %i.rz, i64 %.0.i355.i ; 2 uses
  %i.sm = icmp ult ptr %i.sl, %i.sg
  br i1 %i.sm, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.sn = load i8, ptr %i.sl, align 1, !tbaa !17
  %i.so = icmp eq i8 %i.sn, 10
  %i.sp = zext i1 %i.so to i64
  %spec.select72.i.i = add i64 %.0.i355.i, %i.sp
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %.1.i.i = phi i64 [ %.0.i355.i, %bb.ep ], [ %spec.select72.i.i, %bb.eq ] ; 3 uses
  %i.sq = call i64 @rb_intern2(ptr noundef nonnull @.str.225, i64 noundef 4) #23
  %i.sr = icmp ult i64 %.1.i.i, 4611686018427387904
  br i1 %i.sr, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.ss = shl nuw nsw i64 %.1.i.i, 1
  %i.st = or disjoint i64 %i.ss, 1
  br label %rb_ull2num_inline.exit.i.i

bb.et:                                            ; preds = %bb.er
  %i.su = call i64 @rb_ull2inum(i64 noundef %.1.i.i) #23
  br label %rb_ull2num_inline.exit.i.i

rb_ull2num_inline.exit.i.i:                       ; preds = %bb.et, %bb.es
  %.0.i.i356.i = phi i64 [ %i.st, %bb.es ], [ %i.su, %bb.et ]
  %i.sv = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.rw, i64 noundef %i.sq, i32 noundef 2, i64 noundef %.0.i.i356.i, i64 noundef 1) #23 ; 0 uses
  br label %.thread.sink.split.i.i

bb.eu:                                            ; preds = %bb.eg
  %i.sw = or disjoint i8 %.3.i.i.i, 2
  call void @pm_options_command_line_set(ptr noundef nonnull %i.qn, i8 noundef zeroext %i.sw) #23
  call fastcc void @ruby_opt_init(ptr noundef nonnull %4)
  %i.sx = getelementptr inbounds nuw i8, ptr %3, i64 984
  store i32 0, ptr %i.sx, align 8, !tbaa !147
  %i.sy = load i64, ptr %i.gb, align 8, !tbaa !88
  %i.sz = call i64 @rb_str_new_static(ptr noundef nonnull @.str.53, i64 noundef 2) #23
  %i.ta = call i64 @pm_parse_string(ptr noundef nonnull %i.qm, i64 noundef %i.sy, i64 noundef %i.sz, ptr noundef null) #23 ; 2 uses
  %i.tb = icmp eq i64 %i.ta, 4
  br i1 %i.tb, label %prism_script.exit.i, label %.thread76.i.i

.thread76.i.i:                                    ; preds = %bb.eu, %bb.el, %bb.ed
  %.16678.i.i = phi i64 [ %i.ta, %bb.eu ], [ %i.re, %bb.ed ], [ %.065.i.i, %bb.el ]
  call void @pm_parse_result_free(ptr noundef nonnull %i.qm) #23
  call void @rb_exc_raise(i64 noundef %.16678.i.i) #24
  unreachable

.thread.sink.split.i.i:                           ; preds = %rb_ull2num_inline.exit.i.i, %bb.ef
  %.sink.i.i = phi i64 [ %i.rw, %rb_ull2num_inline.exit.i.i ], [ %i.ri, %bb.ef ]
  call void @rb_define_global_const(ptr noundef nonnull @.str.29, i64 noundef %.sink.i.i) #23
  br label %prism_script.exit.i

prism_script.exit.i:                              ; preds = %.thread.sink.split.i.i, %bb.eu, %bb.em, %bb.ee, %process_script.exit.i
  %.0225.i = phi i64 [ %.0.i349.i, %process_script.exit.i ], [ 4, %bb.ee ], [ 4, %bb.em ], [ 4, %bb.eu ], [ 4, %.thread.sink.split.i.i ]
  %i.tc = load i64, ptr %i.he, align 8, !tbaa !90
  %i.td = call i64 @rb_str_new_frozen(i64 noundef %i.tc) #23 ; 3 uses
  %i.te = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !29 ; 2 uses
  %i.tf = getelementptr i8, ptr %i.te, i64 1216
  store i64 %i.td, ptr %i.tf, align 8, !tbaa !75
  %i.tg = getelementptr i8, ptr %i.te, i64 1208
  store i64 %i.td, ptr %i.tg, align 8, !tbaa !76
  call void @rb_vm_set_progname(i64 noundef %i.td) #23
  %i.th = and i32 %i.an, 256
  %.not282.i = icmp eq i32 %i.th, 0
  br i1 %.not282.i, label %bb.ez, label %bb.ev

bb.ev:                                            ; preds = %prism_script.exit.i
  %i.ti = and i32 %i.an, 3584                     ; 2 uses
  %.not283.i = icmp eq i32 %i.ti, 0
  br i1 %.not283.i, label %bb.ew, label %bb.ez

bb.ew:                                            ; preds = %bb.ev
  %i.tj = load ptr, ptr %3, align 8, !tbaa !144   ; 2 uses
  %.not284.i = icmp eq ptr %i.tj, null
  br i1 %.not284.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @rb_ast_dispose(ptr noundef nonnull %i.tj) #23
  br label %process_options.exit

bb.ey:                                            ; preds = %bb.ew
  %i.tk = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @pm_parse_result_free(ptr noundef nonnull %i.tk) #23
  br label %process_options.exit

bb.ez:                                            ; preds = %bb.ev, %prism_script.exit.i
  %.0219.i = phi i32 [ %i.ti, %bb.ev ], [ %i.ao, %prism_script.exit.i ] ; 3 uses
  %i.tl = load i32, ptr %i.ag, align 8, !tbaa !61 ; 2 uses
  %i.tm = icmp sgt i32 %i.tl, -1
  br i1 %i.tm, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.tn = call ptr @rb_enc_from_index(i32 noundef %i.tl) #23
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.1223.i = phi ptr [ %i.tn, %bb.fa ], [ %i.hl, %bb.ez ]
  %i.to = call i64 @rb_enc_from_encoding(ptr noundef %.1223.i) #23
  call void @rb_enc_set_default_external(i64 noundef %i.to) #23
  %i.tp = load i32, ptr %i.ah, align 8, !tbaa !62 ; 2 uses
  %i.tq = icmp sgt i32 %i.tp, -1
  br i1 %i.tq, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.tr = call ptr @rb_enc_from_index(i32 noundef %i.tp) #23
  %i.ts = call i64 @rb_enc_from_encoding(ptr noundef %i.tr) #23
  br label %.sink.split.i

bb.fd:                                            ; preds = %bb.fb
  %i.tt = call ptr @rb_default_internal_encoding() #23
  %.not285.i = icmp eq ptr %i.tt, null
  br i1 %.not285.i, label %.sink.split.i, label %bb.fe

.sink.split.i:                                    ; preds = %bb.fd, %bb.fc
  %.sink451.i = phi i64 [ %i.ts, %bb.fc ], [ 4, %bb.fd ]
  call void @rb_enc_set_default_internal(i64 noundef %.sink451.i) #23
  br label %bb.fe

bb.fe:                                            ; preds = %.sink.split.i, %bb.fd
  call void @rb_stdio_set_default_encoding() #23
  %i.tu = load i16, ptr %i.ns, align 8
  %i.tv = shl i16 %i.tu, 14
  %i.tw = ashr exact i16 %i.tv, 14
  %i.tx = sext i16 %i.tw to i32
  %i.ty = call fastcc i32 @process_sflag(i32 noundef %i.tx)
  %i.tz = trunc nsw i32 %i.ty to i16
  %i.ua = load i16, ptr %i.ns, align 8
  %i.ub = and i16 %i.tz, 3
  %i.uc = and i16 %i.ua, -8
  %i.ud = or disjoint i16 %i.uc, %i.ub
  store i16 %i.ud, ptr %i.ns, align 8
  %i.ue = and i32 %.0219.i, 512
  %.not286.i = icmp eq i32 %i.ue, 0
  br i1 %.not286.i, label %bb.fj, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.uf = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.152) #23 ; 0 uses
  %i.ug = and i32 %.0219.i, 3328                  ; 2 uses
  %.not287.i = icmp eq i32 %i.ug, 0
  br i1 %.not287.i, label %bb.fg, label %bb.fj

bb.fg:                                            ; preds = %bb.ff
  %i.uh = load ptr, ptr %3, align 8, !tbaa !144   ; 2 uses
  %.not288.i = icmp eq ptr %i.uh, null
  br i1 %.not288.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void @rb_ast_dispose(ptr noundef nonnull %i.uh) #23
  br label %process_options.exit

bb.fi:                                            ; preds = %bb.fg
  %i.ui = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @pm_parse_result_free(ptr noundef nonnull %i.ui) #23
  br label %process_options.exit

bb.fj:                                            ; preds = %bb.ff, %bb.fe
  %.1220.i = phi i32 [ %i.ug, %bb.ff ], [ %.0219.i, %bb.fe ] ; 3 uses
  %i.uj = and i32 %.1220.i, 1024
  %.not289.i = icmp eq i32 %i.uj, 0
  br i1 %.not289.i, label %.critedge.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.uk = load ptr, ptr %3, align 8, !tbaa !144   ; 2 uses
  %.not290.i = icmp eq ptr %i.uk, null
  br i1 %.not290.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ul = load i32, ptr %i.aj, align 8, !tbaa !64
  %i.um = and i32 %i.ul, 4
  %i.un = getelementptr i8, ptr %i.uk, i64 8
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !141
  %i.up = call i64 @rb_parser_dump_tree(ptr noundef %i.uo, i32 noundef %i.um) #23
  br label %bb.fn

bb.fm:                                            ; preds = %bb.fk
  %i.uq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ur = call fastcc i64 @prism_dump_tree(ptr noundef nonnull %i.uq)
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %.0209.i = phi i64 [ %i.up, %bb.fl ], [ %i.ur, %bb.fm ]
  %i.us = load i64, ptr @rb_stdout, align 8, !tbaa !27
  %i.ut = call i64 @rb_io_write(i64 noundef %i.us, i64 noundef %.0209.i) #23 ; 0 uses
  %i.uu = load i64, ptr @rb_stdout, align 8, !tbaa !27
  %i.uv = call i64 @rb_io_flush(i64 noundef %i.uu) #23 ; 0 uses
  %i.uw = and i32 %.1220.i, -1025                 ; 2 uses
  %.not291.not.i = icmp eq i32 %i.uw, 0
  br i1 %.not291.not.i, label %bb.fo, label %.critedge.i

bb.fo:                                            ; preds = %bb.fn
  %i.ux = load ptr, ptr %3, align 8, !tbaa !144   ; 2 uses
  %.not292.i = icmp eq ptr %i.ux, null
  br i1 %.not292.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  call void @rb_ast_dispose(ptr noundef nonnull %i.ux) #23
  br label %process_options.exit

bb.fq:                                            ; preds = %bb.fo
  %i.uy = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @pm_parse_result_free(ptr noundef nonnull %i.uy) #23
  br label %process_options.exit

.critedge.i:                                      ; preds = %bb.fn, %bb.fj
  %.2221.i = phi i32 [ %i.uw, %bb.fn ], [ %.1220.i, %bb.fj ] ; 2 uses
  %i.uz = load i64, ptr %i.gb, align 8, !tbaa !88
  %.not293.i = icmp eq i64 %i.uz, 0
  br i1 %.not293.i, label %sub_0.i, label %bb.ft

sub_0.i:                                          ; preds = %.critedge.i
  %i.va = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.vb = load i8, ptr %i.va, align 1
  %.not391.i = icmp eq i8 %i.vb, 45
  br i1 %.not391.i, label %.tail.i, label %.tail.thread.i

.tail.i:                                          ; preds = %sub_0.i
  %i.vc = getelementptr inbounds nuw i8, ptr %i.va, i64 1
  %i.vd = load i8, ptr %i.vc, align 1
  %i.ve = icmp eq i8 %i.vd, 0
  br i1 %i.ve, label %bb.ft, label %.tail.thread.i

.tail.thread.i:                                   ; preds = %.tail.i, %sub_0.i
  %i.vf = load i64, ptr %i.he, align 8, !tbaa !90
  %i.vg = call i64 @rb_realpath_internal(i64 noundef 4, i64 noundef %i.vf, i32 noundef 1) #23 ; 5 uses
  %i.vh = inttoptr i64 %i.vg to ptr
  %i.vi = load i64, ptr %i.vh, align 8, !tbaa !26
  %10 = lshr i64 %i.vi, 22
  %11 = trunc i64 %10 to i32
  %i.vj = and i32 %11, 127                        ; 2 uses
  %i.vk = icmp eq i32 %i.vj, 127
  br i1 %i.vk, label %bb.fr, label %RB_ENCODING_GET.exit.i

bb.fr:                                            ; preds = %.tail.thread.i
  %i.vl = call i32 @rb_enc_get_index(i64 noundef %i.vg) #23
  br label %RB_ENCODING_GET.exit.i

RB_ENCODING_GET.exit.i:                           ; preds = %bb.fr, %.tail.thread.i
  %.0.i359.i = phi i32 [ %i.vl, %bb.fr ], [ %i.vj, %.tail.thread.i ]
  %.not295.i = icmp eq i32 %.0.i359.i, 0
  br i1 %.not295.i, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %RB_ENCODING_GET.exit.i
  %i.vm = load i64, ptr %i.he, align 8, !tbaa !90
  call void @rb_enc_copy(i64 noundef %i.vg, i64 noundef %i.vm) #23
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %RB_ENCODING_GET.exit.i, %.tail.i, %.critedge.i
  %.0206.i = phi i64 [ 4, %.critedge.i ], [ %i.vg, %RB_ENCODING_GET.exit.i ], [ %i.vg, %bb.fs ], [ 4, %.tail.i ] ; 2 uses
  %i.vn = load i64, ptr @rb_cObject, align 8, !tbaa !27
  %.pr.i.i = load i64, ptr @process_options.rbimpl_id, align 8, !tbaa !27 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i360.i, label %rbimpl_intern_const.exit.i

.lr.ph.i360.i:                                    ; preds = %bb.ft, %.lr.ph.i360.i
  %i.vo = call i64 @rb_intern2(ptr noundef nonnull @.str.153, i64 noundef 16) #23 ; 3 uses
  store i64 %i.vo, ptr @process_options.rbimpl_id, align 8, !tbaa !27
  %.not.i361.i = icmp eq i64 %i.vo, 0
  br i1 %.not.i361.i, label %.lr.ph.i360.i, label %rbimpl_intern_const.exit.i, !llvm.loop !3

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i360.i, %bb.ft
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.ft ], [ %i.vo, %.lr.ph.i360.i ]
  %i.vp = call i64 @rb_const_get(i64 noundef %i.vn, i64 noundef %.lcssa.i.i) #23
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %bb.fv, %rbimpl_intern_const.exit.i
  %.pn.in.i = phi i64 [ %i.vp, %rbimpl_intern_const.exit.i ], [ %i.vt, %bb.fv ]
  %.pn.i = inttoptr i64 %.pn.in.i to ptr
  %.tr.i.in.i = getelementptr i8, ptr %.pn.i, i64 32
  %.tr.i.i = load ptr, ptr %.tr.i.in.i, align 8, !tbaa !151 ; 3 uses
  %i.vq = getelementptr i8, ptr %.tr.i.i, i64 24
  %.val.i362.i = load i32, ptr %i.vq, align 8, !tbaa !153
  switch i32 %.val.i362.i, label %bb.fw [
    i32 0, label %bb.fu
    i32 3, label %bb.fv
    i32 1, label %vm_block_iseq.exit.i
    i32 2, label %vm_block_iseq.exit.i
  ]

bb.fu:                                            ; preds = %tailrecurse.i.i
  %i.vr = getelementptr i8, ptr %.tr.i.i, i64 16
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !17
  br label %vm_block_iseq.exit.i

bb.fv:                                            ; preds = %tailrecurse.i.i
  %i.vt = load i64, ptr %.tr.i.i, align 8, !tbaa !17
  br label %tailrecurse.i.i

bb.fw:                                            ; preds = %tailrecurse.i.i
  unreachable

vm_block_iseq.exit.i:                             ; preds = %tailrecurse.i.i, %tailrecurse.i.i, %bb.fu
  %.0.i363.i = phi ptr [ %i.vs, %bb.fu ], [ null, %tailrecurse.i.i ], [ null, %tailrecurse.i.i ] ; 2 uses
  %i.vu = load i32, ptr %i.aj, align 8, !tbaa !64
  %i.vv = and i32 %i.vu, 8                        ; 2 uses
  %i.vw = load ptr, ptr %3, align 8, !tbaa !144   ; 2 uses
  %.not296.i = icmp eq ptr %i.vw, null
  br i1 %.not296.i, label %bb.fx, label %bb.ga

bb.fx:                                            ; preds = %vm_block_iseq.exit.i
  %i.vx = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.vy = getelementptr inbounds nuw i8, ptr %3, i64 848
  %i.vz = load i64, ptr %i.he, align 8, !tbaa !90
  %.lobit.i = lshr exact i32 %i.vv, 3
  %i.wa = call ptr @pm_iseq_new_main(ptr noundef nonnull %i.vy, i64 noundef %i.vz, i64 noundef %.0206.i, ptr noundef %.0.i363.i, i32 noundef %.lobit.i, ptr noundef nonnull %i.e) #23
  call void @pm_parse_result_free(ptr noundef nonnull %i.vx) #23
  %i.wb = load i32, ptr %i.e, align 4, !tbaa !16  ; 2 uses
  %.not297.i = icmp eq i32 %i.wb, 0
  br i1 %.not297.i, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  call void @rb_jump_tag(i32 noundef %i.wb) #24
  unreachable

bb.fz:                                            ; preds = %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.gb

bb.ga:                                            ; preds = %vm_block_iseq.exit.i
  %i.wc = load i64, ptr %i.he, align 8, !tbaa !90
  %.lobit298.i = lshr exact i32 %i.vv, 3
  %i.wd = call ptr @rb_iseq_new_main(i64 noundef %.0225.i, i64 noundef %i.wc, i64 noundef %.0206.i, ptr noundef %.0.i363.i, i32 noundef %.lobit298.i) #23
  call void @rb_ast_dispose(ptr noundef nonnull %i.vw) #23
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %.0224.i = phi ptr [ %i.wd, %bb.ga ], [ %i.wa, %bb.fz ] ; 3 uses
  %i.we = and i32 %.2221.i, 2048
  %.not299.i = icmp eq i32 %i.we, 0
  br i1 %.not299.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.wf = load i64, ptr @rb_stdout, align 8, !tbaa !27
  %i.wg = call i64 @rb_iseq_disasm(ptr noundef %.0224.i) #23
  %i.wh = call i64 @rb_io_write(i64 noundef %i.wf, i64 noundef %i.wg) #23 ; 0 uses
  %i.wi = load i64, ptr @rb_stdout, align 8, !tbaa !27
  %i.wj = call i64 @rb_io_flush(i64 noundef %i.wi) #23 ; 0 uses
  %i.wk = and i32 %.2221.i, -2049
  %.not300.i = icmp eq i32 %i.wk, 0
  br i1 %.not300.i, label %process_options.exit, label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %i.wl = load i32, ptr %i.aj, align 8, !tbaa !64
  %i.wm = and i32 %i.wl, 3840
  %.not301.i = icmp eq i32 %i.wm, 0
  br i1 %.not301.i, label %bb.ge, label %process_options.exit

bb.ge:                                            ; preds = %bb.gd
  call fastcc void @process_options_global_setup(ptr noundef nonnull %4, ptr noundef %.0224.i)
  %i.wn = ptrtoint ptr %.0224.i to i64
  br label %process_options.exit

process_options.exit:                             ; preds = %bb.ag, %bb.ah, %bb.ar, %bb.ax, %bb.az, %bb.bc, %process_script.exit.i, %bb.ex, %bb.ey, %bb.fh, %bb.fi, %bb.fp, %bb.fq, %bb.gc, %bb.gd, %bb.ge
  %.1.i = phi i64 [ 20, %bb.gd ], [ 0, %bb.ar ], [ 20, %bb.ax ], [ 20, %bb.az ], [ 20, %bb.gc ], [ %i.wn, %bb.ge ], [ 20, %bb.fh ], [ 20, %bb.ah ], [ 20, %bb.ex ], [ 0, %process_script.exit.i ], [ 20, %bb.bc ], [ 20, %bb.ey ], [ 20, %bb.fi ], [ 20, %bb.ag ], [ 20, %bb.fp ], [ 20, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.wo = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !120 ; 3 uses
  %.not13 = icmp eq ptr %i.wp, null
  br i1 %.not13, label %bb.gh, label %bb.gf

bb.gf:                                            ; preds = %process_options.exit
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !17
  %.not14 = icmp eq i8 %i.wq, 0
  br i1 %.not14, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @ruby_set_crash_report(ptr noundef nonnull %i.wp) #23
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf, %process_options.exit
  %i.wr = inttoptr i64 %.1.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret ptr %i.wr
}

declare void @rb_vm_register_global_object(i64 noundef) local_unnamed_addr #3

declare void @ruby_init_setproctitle(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold
declare void @rb_category_warn(i32 noundef, ptr noundef, ...) local_unnamed_addr #7

declare void @ruby_set_crash_report(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @ruby_sysinit(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 9 uses
  %2 = alloca %struct.stat, align 8               ; 5 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !16     ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !154    ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.b, ptr @origarg.0, align 8, !tbaa !82
  store ptr %i.d, ptr @origarg.1, align 8, !tbaa !80
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.e = call i32 @fstat(i32 noundef 0, ptr noundef nonnull %2) #23
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @rb_errno_ptr() #23
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16
  %i.i = icmp eq i32 %i.h, 9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = phi i1 [ false, %bb.d ], [ %i.i, %bb.e ]
  %i.k = call i32 @fstat(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @rb_errno_ptr() #23
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16
  %i.o = icmp eq i32 %i.n, 9
  br label %bb.h

end_hunk_0
begin_hunk_1_@process_options_global_setup:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi i16 [ %.pre, %bb.d ], [ %i.f, %bb.c ]
  %i.i = and i16 %i.h, 64
  %.not14 = icmp eq i16 %i.i, 0
  %i.j = select i1 %.not14, ptr @false_value, ptr @true_value
  tail call void @rb_define_virtual_variable(ptr noundef nonnull @.str.230, ptr noundef nonnull %i.j, ptr noundef null) #23
  %i.k = load i16, ptr %i.e, align 8
  %i.l = and i16 %i.k, 128
  %.not15 = icmp eq i16 %i.l, 0
  %i.m = select i1 %.not15, ptr @false_value, ptr @true_value
  tail call void @rb_define_virtual_variable(ptr noundef nonnull @.str.231, ptr noundef nonnull %i.m, ptr noundef null) #23
  %i.n = load i16, ptr %i.e, align 8
  %i.o = and i16 %i.n, 256
  %.not16 = icmp eq i16 %i.o, 0
  %i.p = select i1 %.not16, ptr @false_value, ptr @true_value
  tail call void @rb_define_virtual_variable(ptr noundef nonnull @.str.232, ptr noundef nonnull %i.p, ptr noundef null) #23
  tail call void @rb_gvar_ractor_local(ptr noundef nonnull @.str.230) #23
  tail call void @rb_gvar_ractor_local(ptr noundef nonnull @.str.231) #23
  tail call void @rb_gvar_ractor_local(ptr noundef nonnull @.str.232) #23
  %i.q = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !88   ; 3 uses
  store i64 %i.r, ptr @rb_e_script, align 8, !tbaa !27
  %.not17 = icmp eq i64 %i.r, 0
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call i64 @rb_str_freeze(i64 noundef %i.r) #23 ; 0 uses
  %i.t = load i64, ptr %i.q, align 8, !tbaa !88
  tail call void @rb_vm_register_global_object(i64 noundef %i.t) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !177
  store volatile ptr %i.v, ptr %i.a, align 8, !tbaa !177
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !177 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = load i64, ptr %i.q, align 8, !tbaa !88   ; 2 uses
  %.not18 = icmp eq i64 %i.w, 0
  %spec.select = select i1 %.not18, i64 4, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.val.i = load ptr, ptr %i.x, align 8, !tbaa !185, !nonnull !121, !noundef !121
  %i.y = getelementptr i8, ptr %.val.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !198  ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %i.ab = getelementptr i8, ptr %i.z, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !199
  %i.ad = and i32 %i.ac, 8192
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %rb_exec_event_hook_script_compiled.exit, label %bb.h, !prof !200

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !201 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !204
  %i.ai = icmp eq i64 %spec.select, 4
  %i.aj = ptrtoint ptr %1 to i64                  ; 2 uses
  br i1 %i.ai, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef range(i64 1, 0) %spec.select, i64 noundef %i.aj) #23
  %.pre.i = load ptr, ptr %i.ae, align 8, !tbaa !201
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = phi ptr [ %.pre.i, %bb.i ], [ %i.af, %bb.h ]
  %i.am = phi i64 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 8192, ptr %2, align 8, !tbaa !206
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0..0..0..0..0..0..i, ptr %i.an, align 8, !tbaa !207
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !208
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.ah, ptr %i.ap, align 8, !tbaa !209
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  store i64 %i.am, ptr %i.ar, align 8, !tbaa !210
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 36, ptr %i.as, align 8, !tbaa !211
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 0, ptr %i.at, align 8, !tbaa !212
  call void @rb_exec_event_hooks(ptr noundef nonnull %2, ptr noundef %i.aa, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %rb_exec_event_hook_script_compiled.exit

rb_exec_event_hook_script_compiled.exit:          ; preds = %bb.g, %bb.j
  ret void
}

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #8

declare i32 @rb_pipe(ptr noundef) local_unnamed_addr #3

declare i32 @rb_fork_ruby(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @setup_pager_env() unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.157) #23
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ruby_setenv(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.158) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noreturn
declare i64 @rb_f_exec(i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @ruby_setenv(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @rb_yjit_show_usage(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @rb_zjit_show_usage(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @rb_enc_str_coderange_scan(i64 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @rb_str_dup(i64 noundef) local_unnamed_addr #3

declare i64 @rb_enc_interned_str(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @rb_ary_ptr_use_start(i64 noundef) local_unnamed_addr #3

declare void @rb_ary_ptr_use_end(i64 noundef) local_unnamed_addr #3

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @rb_string_value_ptr(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #5

declare i64 @rb_class_new_instance(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_gv_set(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_parser_set_yydebug(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @rb_parser_error_tolerant(i64 noundef) local_unnamed_addr #3

declare i64 @rb_parser_set_context(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @rb_parser_compile_string(i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @pm_options_line_set(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @pm_options_main_script_set(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @pm_options_encoding_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pm_options_command_line_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @pm_options_filepath_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pm_options_shebang_callback_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @prism_script_shebang_callback(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 120        ; 3 uses
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, -9
  store i16 %i.c, ptr %i.a, align 8
  %i.d = add i64 %2, 1
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #29 ; 4 uses
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.e, ptr noundef nonnull readonly align 1 %1, i64 noundef range(i64 1, 0) %2, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.a, %bb.b
  %i.f = getelementptr i8, ptr %i.e, i64 %2
  store i8 0, ptr %i.f, align 1, !tbaa !17
  %i.g = getelementptr i8, ptr %3, i64 24         ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !85
  %.not = icmp eq i64 %i.h, 0
  %i.i = getelementptr i8, ptr %3, i64 40         ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !91
  %.not31 = icmp eq i64 %i.j, 0
  %i.k = getelementptr i8, ptr %3, i64 56         ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !92
  %.not32 = icmp eq i64 %i.l, 0
  tail call fastcc void @moreswitches(ptr noundef nonnull %i.e, ptr noundef nonnull %3, i32 noundef 0)
  tail call void @free(ptr noundef %i.e) #23
  %.val = load i16, ptr %i.a, align 8             ; 4 uses
  %i.m = lshr i16 %.val, 8
  %i.n = trunc nuw i16 %i.m to i8
  %spec.select.i = and i8 %i.n, 1
  %4 = lshr i16 %.val, 5
  %5 = trunc i16 %4 to i8
  %i.o = and i8 %5, 4
  %.1.i = or disjoint i8 %spec.select.i, %i.o
  %6 = lshr i16 %.val, 2
  %7 = trunc i16 %6 to i8
  %i.p = and i8 %7, 24
  %.3.i = or disjoint i8 %.1.i, %i.p
  %8 = trunc i16 %.val to i8
  %i.q = shl i8 %8, 3
  %i.r = and i8 %i.q, 32
  %.4.i = or disjoint i8 %.3.i, %i.r
  tail call void @pm_options_command_line_set(ptr noundef %0, i8 noundef zeroext %.4.i) #23
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %ruby_nonempty_memcpy.exit
  %i.s = load i64, ptr %i.g, align 8, !tbaa !85   ; 2 uses
  %.not33 = icmp eq i64 %i.s, 0
  br i1 %.not33, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !26
  %i.v = and i64 %i.u, 8192
  %.not.i.i = icmp eq i64 %i.v, 0
  %i.w = getelementptr i8, ptr %i.t, i64 24       ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.e, %bb.d
  %i.y = phi ptr [ %i.x, %bb.e ], [ %i.w, %bb.d ] ; 3 uses
  %i.z = tail call i32 @rb_enc_find_index(ptr noundef %i.y) #23 ; 3 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %RSTRING_PTR.exit.i
  %i.ab = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ab, ptr noundef nonnull @.str.130, ptr noundef %i.y) #24
  unreachable

bb.g:                                             ; preds = %RSTRING_PTR.exit.i
  %i.ac = tail call ptr @rb_enc_from_index(i32 noundef %i.z) #23
  %i.ad = tail call i32 @rb_enc_dummy_p(ptr noundef %i.ac) #22
  %.not.i36 = icmp eq i32 %i.ad, 0
  br i1 %.not.i36, label %opt_enc_index.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ae, ptr noundef nonnull @.str.131, ptr noundef %i.y) #24
  unreachable

opt_enc_index.exit:                               ; preds = %bb.g
  %i.af = getelementptr i8, ptr %3, i64 32
  store i32 %i.z, ptr %i.af, align 8, !tbaa !60
  %i.ag = tail call ptr @rb_string_value_cstr(ptr noundef nonnull %i.i) #23
  tail call void @pm_options_encoding_set(ptr noundef %0, ptr noundef %i.ag) #23
  br label %bb.i

bb.i:                                             ; preds = %opt_enc_index.exit, %bb.c, %ruby_nonempty_memcpy.exit
  br i1 %.not31, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.ah = load i64, ptr %i.i, align 8, !tbaa !91  ; 2 uses
  %.not34 = icmp eq i64 %i.ah, 0
  br i1 %.not34, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !26
  %i.ak = and i64 %i.aj, 8192
  %.not.i.i37 = icmp eq i64 %i.ak, 0
  %i.al = getelementptr i8, ptr %i.ai, i64 24     ; 2 uses
  br i1 %.not.i.i37, label %RSTRING_PTR.exit.i38, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !17
  br label %RSTRING_PTR.exit.i38

RSTRING_PTR.exit.i38:                             ; preds = %bb.l, %bb.k
  %i.an = phi ptr [ %i.am, %bb.l ], [ %i.al, %bb.k ] ; 3 uses
  %i.ao = tail call i32 @rb_enc_find_index(ptr noundef %i.an) #23 ; 3 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %RSTRING_PTR.exit.i38
  %i.aq = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aq, ptr noundef nonnull @.str.130, ptr noundef %i.an) #24
  unreachable

bb.n:                                             ; preds = %RSTRING_PTR.exit.i38
  %i.ar = tail call ptr @rb_enc_from_index(i32 noundef %i.ao) #23
  %i.as = tail call i32 @rb_enc_dummy_p(ptr noundef %i.ar) #22
  %.not.i39 = icmp eq i32 %i.as, 0
  br i1 %.not.i39, label %opt_enc_index.exit40, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.at, ptr noundef nonnull @.str.131, ptr noundef %i.an) #24
  unreachable

opt_enc_index.exit40:                             ; preds = %bb.n
  %i.au = getelementptr i8, ptr %3, i64 48
  store i32 %i.ao, ptr %i.au, align 8, !tbaa !61
  br label %bb.p

bb.p:                                             ; preds = %opt_enc_index.exit40, %bb.j, %bb.i
  br i1 %.not32, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.av = load i64, ptr %i.k, align 8, !tbaa !92  ; 2 uses
  %.not35 = icmp eq i64 %i.av, 0
  br i1 %.not35, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !26
  %i.ay = and i64 %i.ax, 8192
  %.not.i.i41 = icmp eq i64 %i.ay, 0
  %i.az = getelementptr i8, ptr %i.aw, i64 24     ; 2 uses
  br i1 %.not.i.i41, label %RSTRING_PTR.exit.i42, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !17
  br label %RSTRING_PTR.exit.i42

RSTRING_PTR.exit.i42:                             ; preds = %bb.s, %bb.r
  %i.bb = phi ptr [ %i.ba, %bb.s ], [ %i.az, %bb.r ] ; 3 uses
  %i.bc = tail call i32 @rb_enc_find_index(ptr noundef %i.bb) #23 ; 3 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %RSTRING_PTR.exit.i42
  %i.be = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.be, ptr noundef nonnull @.str.130, ptr noundef %i.bb) #24
  unreachable

bb.u:                                             ; preds = %RSTRING_PTR.exit.i42
  %i.bf = tail call ptr @rb_enc_from_index(i32 noundef %i.bc) #23
  %i.bg = tail call i32 @rb_enc_dummy_p(ptr noundef %i.bf) #22
  %.not.i43 = icmp eq i32 %i.bg, 0
  br i1 %.not.i43, label %opt_enc_index.exit44, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bh, ptr noundef nonnull @.str.131, ptr noundef %i.bb) #24
  unreachable

opt_enc_index.exit44:                             ; preds = %bb.u
  %i.bi = getelementptr i8, ptr %3, i64 64
  store i32 %i.bc, ptr %i.bi, align 8, !tbaa !62
  br label %bb.w

bb.w:                                             ; preds = %opt_enc_index.exit44, %bb.q, %bb.p
  ret void
}

declare i64 @pm_parse_stdin(ptr noundef) local_unnamed_addr #3

declare i64 @pm_parse_string(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @pm_load_file(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare i64 @pm_parse_file(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @rb_get_coverages() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #17

declare i64 @rb_ull2inum(i64 noundef) local_unnamed_addr #3

declare void @pm_prettyprint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pm_buffer_free(ptr noundef) local_unnamed_addr #3

declare i32 @rb_enc_get_index(i64 noundef) local_unnamed_addr #3

declare extern_weak void @rb_define_global_function(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_f_sub(i32 noundef %0, ptr noundef %1, i64 %2) #0 {
bb.a:
  %i.a = tail call i64 @rb_lastline_get() #23     ; 6 uses
  %i.b = icmp eq i64 %i.a, 0
  %i.c = and i64 %i.a, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.f = inttoptr i64 %i.a to ptr
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 5
  br i1 %i.i, label %uscore_get.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.j = load i64, ptr @rb_eTypeError, align 8, !tbaa !27
  %i.k = icmp eq i64 %i.a, 4
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.l = tail call ptr @rb_obj_classname(i64 noundef %i.a) #23
  br label %bb.c
end_hunk_1
