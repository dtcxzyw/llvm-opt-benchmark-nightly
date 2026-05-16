inline.NumInlined: 2066
inline.NumDeleted: 252
begin_hunk_0_@ripper_yyparse:bb.a

bb.ax:                                            ; preds = %bb.aw
  %.val6841 = load i64, ptr %i.op, align 8, !tbaa !61
  %i.oq = and i64 %.val6841, 32512
  %i.or = icmp eq i64 %i.oq, 256
  br i1 %i.or, label %.preheader, label %.preheader8027

.preheader:                                       ; preds = %bb.ax, %.preheader
  %.06349 = phi ptr [ %i.ot, %.preheader ], [ %i.op, %bb.ax ] ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.06349, i64 48
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !63 ; 2 uses
  %.not6533 = icmp eq ptr %i.ot, null
  br i1 %.not6533, label %bb.ay, label %.preheader, !llvm.loop !65

bb.ay:                                            ; preds = %.preheader
  %i.ou = getelementptr inbounds nuw i8, ptr %.06349, i64 32
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !66
  br label %.preheader8027

.preheader8027:                                   ; preds = %bb.ay, %bb.ax
  %.0.i7088.ph = phi ptr [ %i.op, %bb.ax ], [ %i.ov, %bb.ay ]
  br label %bb.az

bb.az:                                            ; preds = %.preheader8027, %bb.bb
  %.0.i7088 = phi ptr [ %i.oz, %bb.bb ], [ %.0.i7088.ph, %.preheader8027 ] ; 4 uses
  %.not.i7089 = icmp eq ptr %.0.i7088, null
  br i1 %.not.i7089, label %remove_begin.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.0.val.i = load i64, ptr %.0.i7088, align 8, !tbaa !61
  %i.ow = and i64 %.0.val.i, 32512
  %i.ox = icmp eq i64 %i.ow, 4608
  br i1 %i.ox, label %bb.bb, label %remove_begin.exit

bb.bb:                                            ; preds = %bb.ba
  %i.oy = getelementptr inbounds nuw i8, ptr %.0.i7088, i64 32
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !67 ; 2 uses
  %.not8.i = icmp eq ptr %i.oz, null
  br i1 %.not8.i, label %remove_begin.exit, label %bb.az, !llvm.loop !69

remove_begin.exit:                                ; preds = %bb.az, %bb.ba, %bb.bb
  call fastcc void @void_expr(ptr noundef %0, ptr noundef %.0.i7088)
  %.pre7736 = load ptr, ptr %.36321, align 8, !tbaa !10
  br label %bb.bc

bb.bc:                                            ; preds = %remove_begin.exit, %bb.aw
  %i.pa = phi ptr [ %.pre7736, %remove_begin.exit ], [ null, %bb.aw ]
  %i.pb = load ptr, ptr %i.hd, align 8, !tbaa !70
  %i.pc = call fastcc ptr @block_append(ptr noundef %0, ptr noundef %i.pb, ptr noundef %i.pa)
  %i.pd = call fastcc ptr @rb_node_scope_new(ptr noundef %0, ptr noundef null, ptr noundef %i.pc, ptr noundef null, ptr noundef %6)
  store ptr %i.pd, ptr %i.hd, align 8, !tbaa !70
  %i.pe = load i64, ptr %i.w, align 8, !tbaa !57
  %i.pf = call i64 @rb_ary_entry(i64 noundef %i.pe, i64 noundef -1) #32
  %.val6652 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.pg = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6652, i64 noundef %i.he, i32 noundef 1, i64 noundef %i.pf) #29
  store i64 %i.pg, ptr %i.hf, align 8, !tbaa !71
  call fastcc void @local_pop(ptr noundef %0)
  br label %bb.ajq

bb.bd:                                            ; preds = %yy_reduce_print.exit
  %i.ph = call fastcc ptr @rb_node_begin_new(ptr noundef nonnull %0, ptr noundef null, ptr noundef %6)
  store ptr %i.ph, ptr %5, align 8, !tbaa !10
  %.val6887 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.pi = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6887, i64 noundef %i.gz, i32 noundef 0) #29
  %.val6886 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.pj = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6886, i64 noundef %i.ha, i32 noundef 0) #29
  %.val6827 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.pk = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6827, i64 noundef %i.gy, i32 noundef 2, i64 noundef %i.pi, i64 noundef %i.pj) #29
  store i64 %i.pk, ptr %i.x, align 8, !tbaa !58
  br label %bb.ajq

bb.be:                                            ; preds = %yy_reduce_print.exit
  %i.pl = load ptr, ptr %.36321, align 8, !tbaa !10 ; 2 uses
  %.not.i7090 = icmp eq ptr %i.pl, null
  br i1 %.not.i7090, label %newline_node.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.be, %bb.bf
  %.0.i.i = phi ptr [ %i.pp, %bb.bf ], [ %i.pl, %bb.be ] ; 4 uses
  %.0.val.i.i = load i64, ptr %.0.i.i, align 8, !tbaa !61 ; 2 uses
  %i.pm = and i64 %.0.val.i.i, 32512
  %i.pn = icmp eq i64 %i.pm, 4608
  br i1 %i.pn, label %bb.bf, label %remove_begin.exit.i

bb.bf:                                            ; preds = %.preheader.i
  %i.po = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !67 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.pp, null
  br i1 %.not8.i.i, label %remove_begin.exit.i, label %.preheader.i, !llvm.loop !69

remove_begin.exit.i:                              ; preds = %bb.bf, %.preheader.i
  %i.pq = or i64 %.0.val.i.i, 128
  store i64 %i.pq, ptr %.0.i.i, align 8, !tbaa !61
  br label %newline_node.exit

newline_node.exit:                                ; preds = %bb.be, %remove_begin.exit.i
  %.0.i7091 = phi ptr [ %.0.i.i, %remove_begin.exit.i ], [ null, %bb.be ]
  store ptr %.0.i7091, ptr %5, align 8, !tbaa !10
  %i.pr = load i64, ptr %i.w, align 8, !tbaa !57
  %i.ps = call i64 @rb_ary_entry(i64 noundef %i.pr, i64 noundef -1) #32
  %.val6885 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.pt = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6885, i64 noundef %i.gz, i32 noundef 0) #29
  %.val6826 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.pu = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6826, i64 noundef %i.gy, i32 noundef 2, i64 noundef %i.pt, i64 noundef %i.ps) #29
  store i64 %i.pu, ptr %i.x, align 8, !tbaa !58
  br label %bb.ajq

bb.bg:                                            ; preds = %yy_reduce_print.exit
  %i.pv = getelementptr inbounds i8, ptr %.36321, i64 -16
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !10
  %i.px = load ptr, ptr %.36321, align 8, !tbaa !10 ; 2 uses
  %.not.i7092 = icmp eq ptr %i.px, null
  br i1 %.not.i7092, label %newline_node.exit7099, label %.preheader.i7093

.preheader.i7093:                                 ; preds = %bb.bg, %bb.bh
  %.0.i.i7094 = phi ptr [ %i.qb, %bb.bh ], [ %i.px, %bb.bg ] ; 4 uses
  %.0.val.i.i7095 = load i64, ptr %.0.i.i7094, align 8, !tbaa !61 ; 2 uses
  %i.py = and i64 %.0.val.i.i7095, 32512
  %i.pz = icmp eq i64 %i.py, 4608
  br i1 %i.pz, label %bb.bh, label %remove_begin.exit.i7096

bb.bh:                                            ; preds = %.preheader.i7093
  %i.qa = getelementptr inbounds nuw i8, ptr %.0.i.i7094, i64 32
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !67 ; 2 uses
  %.not8.i.i7098 = icmp eq ptr %i.qb, null
  br i1 %.not8.i.i7098, label %remove_begin.exit.i7096, label %.preheader.i7093, !llvm.loop !69

remove_begin.exit.i7096:                          ; preds = %bb.bh, %.preheader.i7093
  %i.qc = or i64 %.0.val.i.i7095, 128
  store i64 %i.qc, ptr %.0.i.i7094, align 8, !tbaa !61
  br label %newline_node.exit7099

newline_node.exit7099:                            ; preds = %bb.bg, %remove_begin.exit.i7096
  %.0.i7097 = phi ptr [ %.0.i.i7094, %remove_begin.exit.i7096 ], [ null, %bb.bg ]
  %i.qd = call fastcc ptr @block_append(ptr noundef %0, ptr noundef %i.pw, ptr noundef %.0.i7097)
  store ptr %i.qd, ptr %5, align 8, !tbaa !10
  %i.qe = load i64, ptr %i.w, align 8, !tbaa !57  ; 2 uses
  %i.qf = call i64 @rb_ary_entry(i64 noundef %i.qe, i64 noundef -3) #32
  %i.qg = call i64 @rb_ary_entry(i64 noundef %i.qe, i64 noundef -1) #32
  %.val6825 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.qh = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6825, i64 noundef %i.gy, i32 noundef 2, i64 noundef %i.qf, i64 noundef %i.qg) #29
  store i64 %i.qh, ptr %i.x, align 8, !tbaa !58
  br label %bb.ajq

bb.bi:                                            ; preds = %yy_reduce_print.exit
  call fastcc void @clear_block_exit(ptr noundef nonnull %0, i1 noundef zeroext true)
  %i.qi = load ptr, ptr %.36321, align 8, !tbaa !10
  store ptr %i.qi, ptr %5, align 8, !tbaa !10
  br label %bb.ajq

bb.bj:                                            ; preds = %yy_reduce_print.exit
  %i.qj = load ptr, ptr %.36321, align 8, !tbaa !10
  store ptr %i.qj, ptr %5, align 8, !tbaa !10
  %i.qk = load i64, ptr %i.w, align 8, !tbaa !57
  %i.ql = call i64 @rb_ary_entry(i64 noundef %i.qk, i64 noundef -1) #32
  store i64 %i.ql, ptr %i.x, align 8, !tbaa !58
  br label %bb.ajq

bb.bk:                                            ; preds = %yy_reduce_print.exit
  %i.qm = call fastcc ptr @init_block_exit(ptr noundef nonnull %0)
  store ptr %i.qm, ptr %5, align 8, !tbaa !10
  br label %bb.ajq

bb.bl:                                            ; preds = %yy_reduce_print.exit
  %i.qn = getelementptr inbounds i8, ptr %.36321, i64 -16
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !10
  store ptr %i.qo, ptr %i.df, align 8, !tbaa !72
  %i.qp = load ptr, ptr %i.hb, align 8, !tbaa !73
  %i.qq = getelementptr inbounds i8, ptr %.36321, i64 -8
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !10
  %i.qs = call fastcc ptr @rb_node_begin_new(ptr noundef nonnull %0, ptr noundef %i.qr, ptr noundef %6)
  %i.qt = call fastcc ptr @block_append(ptr noundef nonnull %0, ptr noundef %i.qp, ptr noundef %i.qs)
  store ptr %i.qt, ptr %i.hb, align 8, !tbaa !73
  %i.qu = call fastcc ptr @rb_node_begin_new(ptr noundef nonnull %0, ptr noundef null, ptr noundef %6)
  store ptr %i.qu, ptr %5, align 8, !tbaa !10
  %i.qv = load i64, ptr %i.w, align 8, !tbaa !57
  %i.qw = call i64 @rb_ary_entry(i64 noundef %i.qv, i64 noundef -2) #32
  %.val6651 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.qx = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6651, i64 noundef %i.hc, i32 noundef 1, i64 noundef %i.qw) #29
  store i64 %i.qx, ptr %i.x, align 8, !tbaa !58
  br label %bb.ajq

bb.bm:                                            ; preds = %yy_reduce_print.exit
  %i.qy = getelementptr inbounds i8, ptr %.36321, i64 -8
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !10 ; 2 uses
  store ptr %i.qz, ptr %5, align 8, !tbaa !10
  %i.ra = call fastcc ptr @void_stmts(ptr noundef nonnull %0, ptr noundef %i.qz) ; 0 uses
  br label %bb.ajq

bb.bn:                                            ; preds = %yy_reduce_print.exit
  %i.rb = getelementptr inbounds i8, ptr %.36321, i64 -8
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !10
  %.not6531 = icmp eq ptr %i.rc, null
  br i1 %.not6531, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call fastcc void @parser_yyerror(ptr noundef %0, ptr noundef %.36334, ptr noundef @.str.9)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.rd = getelementptr inbounds i8, ptr %.36321, i64 -16
  %.val6890 = load i16, ptr %i.rd, align 4
  %i.re = and i16 %.val6890, 768
  %i.rf = icmp eq i16 %i.re, 256
  %i.rg = load i16, ptr %i.z, align 4
  %i.rh = select i1 %i.rf, i16 256, i16 512
  %i.ri = and i16 %i.rg, -769
  %i.rj = or disjoint i16 %i.rh, %i.ri
  store i16 %i.rj, ptr %i.z, align 4
  br label %bb.ajq

bb.bq:                                            ; preds = %yy_reduce_print.exit
  %i.rk = getelementptr inbounds i8, ptr %.36321, i64 -32
  %.val6889 = load i16, ptr %i.rk, align 4
  %i.rl = and i16 %.val6889, 768
  %i.rm = icmp eq i16 %i.rl, 256
  %i.rn = load i16, ptr %i.z, align 4
  %i.ro = select i1 %i.rm, i16 256, i16 768
  %i.rp = and i16 %i.rn, -769
  %i.rq = or disjoint i16 %i.ro, %i.rp
  store i16 %i.rq, ptr %i.z, align 4
  br label %bb.ajq

bb.br:                                            ; preds = %yy_reduce_print.exit
  %i.rr = getelementptr inbounds i8, ptr %.36321, i64 -56
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !10
  %i.rt = getelementptr inbounds i8, ptr %.36321, i64 -40
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !10
  %i.rv = getelementptr inbounds i8, ptr %.36321, i64 -16
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !10
  %i.rx = load ptr, ptr %.36321, align 8, !tbaa !10
  %i.ry = call fastcc ptr @new_bodystmt(ptr noundef nonnull %0, ptr noundef %i.rs, ptr noundef %i.ru, ptr noundef %i.rw, ptr noundef %i.rx, ptr noundef %6)
  store ptr %i.ry, ptr %5, align 8, !tbaa !10
  %i.rz = load i64, ptr %i.w, align 8, !tbaa !57  ; 4 uses
  %i.sa = call i64 @rb_ary_entry(i64 noundef %i.rz, i64 noundef -8) #32
  %i.sb = call i64 @rb_ary_entry(i64 noundef %i.rz, i64 noundef -6) #32
  %i.sc = call i64 @rb_ary_entry(i64 noundef %i.rz, i64 noundef -3) #32
  %i.sd = call i64 @rb_ary_entry(i64 noundef %i.rz, i64 noundef -1) #32
  %.val6940 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.se = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6940, i64 noundef %i.fq, i32 noundef 4, i64 noundef %i.sa, i64 noundef %i.sb, i64 noundef %i.sc, i64 noundef %i.sd) #29
  store i64 %i.se, ptr %i.x, align 8, !tbaa !58
  br label %bb.ajq

bb.bs:                                            ; preds = %yy_reduce_print.exit
  %i.sf = getelementptr inbounds i8, ptr %.36321, i64 -8
  %.val6888 = load i16, ptr %i.sf, align 4
  %i.sg = and i16 %.val6888, 768
  %i.sh = icmp eq i16 %i.sg, 256
  %i.si = load i16, ptr %i.z, align 4
  %i.sj = select i1 %i.sh, i16 256, i16 768
  %i.sk = and i16 %i.si, -769
  %i.sl = or disjoint i16 %i.sj, %i.sk
  store i16 %i.sl, ptr %i.z, align 4
  br label %bb.ajq

bb.bt:                                            ; preds = %yy_reduce_print.exit
  %i.sm = getelementptr inbounds i8, ptr %.36321, i64 -32
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !10
  %i.so = getelementptr inbounds i8, ptr %.36321, i64 -16
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !10
  %i.sq = load ptr, ptr %.36321, align 8, !tbaa !10
  %i.sr = call fastcc ptr @new_bodystmt(ptr noundef nonnull %0, ptr noundef %i.sn, ptr noundef %i.sp, ptr noundef null, ptr noundef %i.sq, ptr noundef %6)
  store ptr %i.sr, ptr %5, align 8, !tbaa !10
  %i.ss = load i64, ptr %i.w, align 8, !tbaa !57  ; 3 uses
  %i.st = call i64 @rb_ary_entry(i64 noundef %i.ss, i64 noundef -5) #32
  %i.su = call i64 @rb_ary_entry(i64 noundef %i.ss, i64 noundef -3) #32
  %i.sv = call i64 @rb_ary_entry(i64 noundef %i.ss, i64 noundef -1) #32
  %.val6939 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.sw = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6939, i64 noundef %i.fq, i32 noundef 4, i64 noundef %i.st, i64 noundef %i.su, i64 noundef 4, i64 noundef %i.sv) #29
  store i64 %i.sw, ptr %i.x, align 8, !tbaa !58
  br label %bb.ajq

bb.bu:                                            ; preds = %yy_reduce_print.exit
  %i.sx = call fastcc ptr @rb_node_begin_new(ptr noundef nonnull %0, ptr noundef null, ptr noundef %6)
  store ptr %i.sx, ptr %5, align 8, !tbaa !10
  %.val6884 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.sy = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6884, i64 noundef %i.gz, i32 noundef 0) #29
  %.val6883 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.sz = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6883, i64 noundef %i.ha, i32 noundef 0) #29
  %.val6824 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.ta = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6824, i64 noundef %i.gy, i32 noundef 2, i64 noundef %i.sy, i64 noundef %i.sz) #29
  store i64 %i.ta, ptr %i.x, align 8, !tbaa !58
  br label %bb.ajq

bb.bv:                                            ; preds = %yy_reduce_print.exit
  %i.tb = load ptr, ptr %.36321, align 8, !tbaa !10 ; 2 uses
  %.not.i7100 = icmp eq ptr %i.tb, null
  br i1 %.not.i7100, label %newline_node.exit7107, label %.preheader.i7101

.preheader.i7101:                                 ; preds = %bb.bv, %bb.bw
  %.0.i.i7102 = phi ptr [ %i.tf, %bb.bw ], [ %i.tb, %bb.bv ] ; 4 uses
  %.0.val.i.i7103 = load i64, ptr %.0.i.i7102, align 8, !tbaa !61 ; 2 uses
  %i.tc = and i64 %.0.val.i.i7103, 32512
  %i.td = icmp eq i64 %i.tc, 4608
  br i1 %i.td, label %bb.bw, label %remove_begin.exit.i7104

bb.bw:                                            ; preds = %.preheader.i7101
  %i.te = getelementptr inbounds nuw i8, ptr %.0.i.i7102, i64 32
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !67 ; 2 uses
  %.not8.i.i7106 = icmp eq ptr %i.tf, null
  br i1 %.not8.i.i7106, label %remove_begin.exit.i7104, label %.preheader.i7101, !llvm.loop !69

remove_begin.exit.i7104:                          ; preds = %bb.bw, %.preheader.i7101
  %i.tg = or i64 %.0.val.i.i7103, 128
  store i64 %i.tg, ptr %.0.i.i7102, align 8, !tbaa !61
  br label %newline_node.exit7107

newline_node.exit7107:                            ; preds = %bb.bv, %remove_begin.exit.i7104
  %.0.i7105 = phi ptr [ %.0.i.i7102, %remove_begin.exit.i7104 ], [ null, %bb.bv ]
  store ptr %.0.i7105, ptr %5, align 8, !tbaa !10
  %i.th = load i64, ptr %i.w, align 8, !tbaa !57
  %i.ti = call i64 @rb_ary_entry(i64 noundef %i.th, i64 noundef -1) #32
  %.val6882 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.tj = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6882, i64 noundef %i.gz, i32 noundef 0) #29
  %.val6823 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.tk = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6823, i64 noundef %i.gy, i32 noundef 2, i64 noundef %i.tj, i64 noundef %i.ti) #29
  store i64 %i.tk, ptr %i.x, align 8, !tbaa !58
  br label %bb.ajq

bb.bx:                                            ; preds = %yy_reduce_print.exit
  %i.tl = getelementptr inbounds i8, ptr %.36321, i64 -16
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !10
  %i.tn = load ptr, ptr %.36321, align 8, !tbaa !10 ; 2 uses
  %.not.i7108 = icmp eq ptr %i.tn, null
  br i1 %.not.i7108, label %newline_node.exit7115, label %.preheader.i7109

.preheader.i7109:                                 ; preds = %bb.bx, %bb.by
  %.0.i.i7110 = phi ptr [ %i.tr, %bb.by ], [ %i.tn, %bb.bx ] ; 4 uses
  %.0.val.i.i7111 = load i64, ptr %.0.i.i7110, align 8, !tbaa !61 ; 2 uses
  %i.to = and i64 %.0.val.i.i7111, 32512
  %i.tp = icmp eq i64 %i.to, 4608
  br i1 %i.tp, label %bb.by, label %remove_begin.exit.i7112

bb.by:                                            ; preds = %.preheader.i7109
  %i.tq = getelementptr inbounds nuw i8, ptr %.0.i.i7110, i64 32
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !67 ; 2 uses
  %.not8.i.i7114 = icmp eq ptr %i.tr, null
  br i1 %.not8.i.i7114, label %remove_begin.exit.i7112, label %.preheader.i7109, !llvm.loop !69

remove_begin.exit.i7112:                          ; preds = %bb.by, %.preheader.i7109
  %i.ts = or i64 %.0.val.i.i7111, 128
  store i64 %i.ts, ptr %.0.i.i7110, align 8, !tbaa !61
  br label %newline_node.exit7115

newline_node.exit7115:                            ; preds = %bb.bx, %remove_begin.exit.i7112
  %.0.i7113 = phi ptr [ %.0.i.i7110, %remove_begin.exit.i7112 ], [ null, %bb.bx ]
  %i.tt = call fastcc ptr @block_append(ptr noundef %0, ptr noundef %i.tm, ptr noundef %.0.i7113)
  store ptr %i.tt, ptr %5, align 8, !tbaa !10
  %i.tu = load i64, ptr %i.w, align 8, !tbaa !57  ; 2 uses
  %i.tv = call i64 @rb_ary_entry(i64 noundef %i.tu, i64 noundef -3) #32
  %i.tw = call i64 @rb_ary_entry(i64 noundef %i.tu, i64 noundef -1) #32
  %.val6822 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.tx = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6822, i64 noundef %i.gy, i32 noundef 2, i64 noundef %i.tv, i64 noundef %i.tw) #29
  store i64 %i.tx, ptr %i.x, align 8, !tbaa !58
  br label %bb.ajq

bb.bz:                                            ; preds = %yy_reduce_print.exit
  call fastcc void @parser_yyerror(ptr noundef %0, ptr noundef %.36334, ptr noundef @.str.10)
  br label %bb.ajq

bb.ca:                                            ; preds = %yy_reduce_print.exit
  %i.ty = load ptr, ptr %.36321, align 8, !tbaa !10
  store ptr %i.ty, ptr %5, align 8, !tbaa !10
  br label %bb.ajq

bb.cb:                                            ; preds = %yy_reduce_print.exit
  %i.tz = load ptr, ptr %i.df, align 8, !tbaa !72
  store ptr null, ptr %i.df, align 8, !tbaa !72
  store ptr %i.tz, ptr %5, align 8, !tbaa !10
  br label %bb.ajq

bb.cc:                                            ; preds = %yy_reduce_print.exit
  %i.ua = load i32, ptr %.36321, align 8
  store i32 %i.ua, ptr %5, align 8
  %i.ub = load i16, ptr %i.z, align 8
  %i.uc = and i16 %i.ub, -769
  store i16 %i.uc, ptr %i.z, align 8
  %i.ud = load i64, ptr %i.w, align 8, !tbaa !57
  %i.ue = call i64 @rb_ary_entry(i64 noundef %i.ud, i64 noundef -1) #32
  store i64 %i.ue, ptr %i.x, align 8, !tbaa !58
  br label %bb.ajq

bb.cd:                                            ; preds = %yy_reduce_print.exit
  %i.uf = load i16, ptr %i.e, align 8
  %i.ug = and i16 %i.uf, 32
  %.not.i7116 = icmp eq i16 %i.ug, 0
  br i1 %.not.i7116, label %parser_set_lex_state.exit7118, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.uh = load i32, ptr %i.ag, align 8, !tbaa !60
  %i.ui = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.uh, i32 noundef 4224, i32 noundef 3294) #29
  br label %parser_set_lex_state.exit7118

parser_set_lex_state.exit7118:                    ; preds = %bb.cd, %bb.ce
  %.0.i7117 = phi i32 [ %i.ui, %bb.ce ], [ 4224, %bb.cd ]
  store i32 %.0.i7117, ptr %i.ag, align 8, !tbaa !60
  br label %bb.ajq

bb.cf:                                            ; preds = %yy_reduce_print.exit
  %i.uj = getelementptr inbounds i8, ptr %.36321, i64 -16
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !10
  %i.ul = load ptr, ptr %.36321, align 8, !tbaa !10
  %i.um = getelementptr inbounds i8, ptr %.36334, i64 -48
  %i.un = call fastcc ptr @rb_node_alias_new(ptr noundef nonnull %0, ptr noundef %i.uk, ptr noundef %i.ul, ptr noundef %6, ptr noundef %i.um)
  store ptr %i.un, ptr %5, align 8, !tbaa !10
  %i.uo = load i64, ptr %i.w, align 8, !tbaa !57  ; 2 uses
  %i.up = call i64 @rb_ary_entry(i64 noundef %i.uo, i64 noundef -3) #32
  %i.uq = call i64 @rb_ary_entry(i64 noundef %i.uo, i64 noundef -1) #32
  %.val6821 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.ur = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6821, i64 noundef %i.gx, i32 noundef 2, i64 noundef %i.up, i64 noundef %i.uq) #29
  store i64 %i.ur, ptr %i.x, align 8, !tbaa !58
  br label %bb.ajq

bb.cg:                                            ; preds = %yy_reduce_print.exit
  %i.us = getelementptr inbounds i8, ptr %.36321, i64 -8
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !10
  %i.uu = load i64, ptr %.36321, align 8, !tbaa !10
  %i.uv = getelementptr inbounds i8, ptr %.36334, i64 -32
  %i.uw = call fastcc ptr @rb_node_valias_new(ptr noundef nonnull %0, i64 noundef %i.ut, i64 noundef %i.uu, ptr noundef %6, ptr noundef %i.uv)
  store ptr %i.uw, ptr %5, align 8, !tbaa !10
  %i.ux = load i64, ptr %i.w, align 8, !tbaa !57  ; 2 uses
  %i.uy = call i64 @rb_ary_entry(i64 noundef %i.ux, i64 noundef -2) #32
  %i.uz = call i64 @rb_ary_entry(i64 noundef %i.ux, i64 noundef -1) #32
  %.val6820 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.va = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6820, i64 noundef %i.gw, i32 noundef 2, i64 noundef %i.uy, i64 noundef %i.uz) #29
  store i64 %i.va, ptr %i.x, align 8, !tbaa !58
  br label %bb.ajq

bb.ch:                                            ; preds = %yy_reduce_print.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  store i8 36, ptr %i.d, align 1, !tbaa !10
  %i.vb = load ptr, ptr %.36321, align 8, !tbaa !10
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 32
  %i.vd = load i64, ptr %i.vc, align 8, !tbaa !74
  %i.ve = trunc i64 %i.vd to i8
  store i8 %i.ve, ptr %i.gv, align 1, !tbaa !10
  %i.vf = getelementptr inbounds i8, ptr %.36321, i64 -8
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !10
  %i.vh = call i64 @rb_intern2(ptr noundef nonnull %i.d, i64 noundef 2) #29
  %i.vi = getelementptr inbounds i8, ptr %.36334, i64 -32
  %i.vj = call fastcc ptr @rb_node_valias_new(ptr noundef nonnull %0, i64 noundef %i.vg, i64 noundef %i.vh, ptr noundef %6, ptr noundef %i.vi)
  store ptr %i.vj, ptr %5, align 8, !tbaa !10
  %i.vk = load i64, ptr %i.w, align 8, !tbaa !57  ; 2 uses
  %i.vl = call i64 @rb_ary_entry(i64 noundef %i.vk, i64 noundef -2) #32
  %i.vm = call i64 @rb_ary_entry(i64 noundef %i.vk, i64 noundef -1) #32
  %.val6819 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.vn = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val6819, i64 noundef %i.gw, i32 noundef 2, i64 noundef %i.vl, i64 noundef %i.vm) #29
  store i64 %i.vn, ptr %i.x, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  br label %bb.ajq

bb.ci:                                            ; preds = %yy_reduce_print.exit
  %i.vo = call fastcc ptr @rb_node_error_new(ptr noundef nonnull %0, ptr noundef nonnull %6)
end_hunk_0
begin_hunk_1_@rb_node_scope_new:bb.a
  %i.bt = add i64 %i.bs, 8
  %i.bu = sub i64 %i.bt, %i.ad
  %diff.check = icmp ult i64 %i.bu, 32
  br i1 %diff.check, label %.preheader.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count54.i, 2147483644 ; 4 uses
  %i.bv = add nuw nsw i64 %n.vec, %i.bq           ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.r, i64 %i.bq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load = load <2 x i64>, ptr %i.bw, align 8, !tbaa !11
  %wide.load16 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !11
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x i64> %wide.load, ptr %gep, align 8, !tbaa !11
  store <2 x i64> %wide.load16, ptr %i.by, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !203

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count54.i
  br i1 %cmp.n, label %._crit_edge.loopexit44.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %vector.memcheck, %.preheader.i.preheader.i, %middle.block
  %indvars.iv46.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %indvars.iv.i.ph = phi i64 [ %i.bq, %vector.memcheck ], [ %i.bq, %.preheader.i.preheader.i ], [ %i.bv, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count54.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader, %.preheader.i.i.prol
  %indvars.iv46.i.prol = phi i64 [ %indvars.iv.next47.i.prol, %.preheader.i.i.prol ], [ %indvars.iv46.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.preheader.i.i.prol ], [ %indvars.iv.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.prol ], [ 0, %.preheader.i.i.preheader ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv46.i.prol
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !11
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i.prol
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !11
  %indvars.iv.next47.i.prol = add nuw nsw i64 %indvars.iv46.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol, !llvm.loop !204

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %indvars.iv.next.i.lcssa35.unr = phi i64 [ poison, %.preheader.i.i.preheader ], [ %indvars.iv.next.i.prol, %.preheader.i.i.prol ]
  %indvars.iv46.i.unr = phi i64 [ %indvars.iv46.i.ph, %.preheader.i.i.preheader ], [ %indvars.iv.next47.i.prol, %.preheader.i.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.preheader.i.i.preheader ], [ %indvars.iv.next.i.prol, %.preheader.i.i.prol ]
  %i.cd = sub nsw i64 %indvars.iv46.i.ph, %wide.trip.count54.i
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %._crit_edge.loopexit44.i, label %.preheader.i.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  %i.cf = load ptr, ptr %i.ae, align 8, !tbaa !188
  br label %.preheader.i.us.i

.preheader.i.us.i:                                ; preds = %vtable_included.exit.us39.i, %.lr.ph.split.split.us.i
  %indvars.iv51.i = phi i64 [ %indvars.iv.next52.i, %vtable_included.exit.us39.i ], [ 0, %.lr.ph.split.split.us.i ] ; 2 uses
  %.02735.us36.i = phi i32 [ %.1.us40.i, %vtable_included.exit.us39.i ], [ %.0.i.i, %.lr.ph.split.split.us.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv51.i
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !11 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.preheader.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.preheader.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.h ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i.us.i
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !11
  %i.ck = icmp eq i64 %i.cj, %i.ch
  br i1 %i.ck, label %vtable_included.exit.us39.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %vtable_included.exit.thread.loopexit.us.i, label %bb.g, !llvm.loop !205

vtable_included.exit.us39.i:                      ; preds = %bb.g, %vtable_included.exit.thread.loopexit.us.i
  %.1.us40.i = phi i32 [ %i.cl, %vtable_included.exit.thread.loopexit.us.i ], [ %.02735.us36.i, %bb.g ] ; 2 uses
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1 ; 2 uses
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next52.i, %wide.trip.count54.i
  br i1 %exitcond55.not.i, label %._crit_edge.i, label %.preheader.i.us.i, !llvm.loop !206

vtable_included.exit.thread.loopexit.us.i:        ; preds = %bb.h
  %i.cl = add nuw nsw i32 %.02735.us36.i, 1
  %i.cm = zext nneg i32 %.02735.us36.i to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cm
  store i64 %i.ch, ptr %i.cn, align 8, !tbaa !11
  br label %vtable_included.exit.us39.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i.3, %.preheader.i.i ], [ %indvars.iv46.i.unr, %.preheader.i.i.prol.loopexit ] ; 5 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader.i.i ], [ %indvars.iv.i.unr, %.preheader.i.i.prol.loopexit ] ; 5 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv46.i
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !11
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !11
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv46.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !11
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %i.ct, ptr %i.cv, align 8, !tbaa !11
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv46.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !11
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i64 %i.cy, ptr %i.da, align 8, !tbaa !11
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv46.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !11
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store i64 %i.dd, ptr %i.df, align 8, !tbaa !11
  %indvars.iv.next47.i.3 = add nuw nsw i64 %indvars.iv46.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next47.i.3, %wide.trip.count54.i
  br i1 %exitcond.not.i.3, label %._crit_edge.loopexit44.i, label %.preheader.i.i, !llvm.loop !207

._crit_edge.loopexit.i:                           ; preds = %vtable_included.exit.thread.us.i.prol.loopexit, %vtable_included.exit.thread.us.i, %middle.block30
  %indvars.iv.next57.i.lcssa = phi i64 [ %i.al, %middle.block30 ], [ %indvars.iv.next57.i.lcssa34.unr, %vtable_included.exit.thread.us.i.prol.loopexit ], [ %indvars.iv.next57.i.3, %vtable_included.exit.thread.us.i ]
  %i.dg = trunc nuw i64 %indvars.iv.next57.i.lcssa to i32
  br label %._crit_edge.i

._crit_edge.loopexit44.i:                         ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i, %middle.block
  %indvars.iv.next.i.lcssa = phi i64 [ %i.bv, %middle.block ], [ %indvars.iv.next.i.lcssa35.unr, %.preheader.i.i.prol.loopexit ], [ %indvars.iv.next.i.3, %.preheader.i.i ]
  %i.dh = trunc nuw i64 %indvars.iv.next.i.lcssa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %vtable_included.exit.us39.i, %._crit_edge.loopexit44.i, %._crit_edge.loopexit.i, %ruby_nonempty_memcpy.exit.i
  %.027.lcssa.i = phi i32 [ %.0.i.i, %ruby_nonempty_memcpy.exit.i ], [ %i.dh, %._crit_edge.loopexit44.i ], [ %i.dg, %._crit_edge.loopexit.i ], [ %.1.us40.i, %vtable_included.exit.us39.i ] ; 2 uses
  %i.di = icmp slt i32 %.027.lcssa.i, %i.l
  br i1 %i.di, label %bb.i, label %local_tbl.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.dj = load ptr, ptr %i.n, align 8, !tbaa !122
  %i.dk = tail call ptr @rb_ast_resize_latest_local_table(ptr noundef %i.dj, i32 noundef %.027.lcssa.i) #29
  br label %local_tbl.exit

local_tbl.exit:                                   ; preds = %vtable_size.exit31.i, %._crit_edge.i, %bb.i
  %.0.i = phi ptr [ null, %vtable_size.exit31.i ], [ %i.dk, %bb.i ], [ %i.p, %._crit_edge.i ]
  %i.dl = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.dl, align 8, !tbaa !122
  %i.dm = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 0, i64 noundef range(i64 32, 129) 64, i64 noundef 8) #29 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.dm, i32 noundef range(i32 0, 115) 0) #29
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull readonly align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !13
  %i.do = load i32, ptr %4, align 4, !tbaa !51
  %i.dp = sext i32 %i.do to i64
  %i.dq = load i64, ptr %i.dm, align 8, !tbaa !61
  %i.dr = and i64 %i.dq, 32767
  %i.ds = shl nsw i64 %i.dp, 15
  %i.dt = or disjoint i64 %i.dr, %i.ds
  store i64 %i.dt, ptr %i.dm, align 8, !tbaa !61
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !208 ; 2 uses
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %i.du, align 8, !tbaa !208
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store i32 %i.dv, ptr %i.dx, align 8, !tbaa !209
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store ptr %.0.i, ptr %i.dy, align 8, !tbaa !210
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  store ptr %2, ptr %i.dz, align 8, !tbaa !211
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  store ptr %3, ptr %i.ea, align 8, !tbaa !79
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  store ptr %1, ptr %i.eb, align 8, !tbaa !212
  ret ptr %i.dm
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @block_append(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %1, align 8, !tbaa !61
  %i.d = and i64 %i.c, 32512
  %cond = icmp eq i64 %i.d, 256
  br i1 %cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !122
  %i.g = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 1, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 11 uses
  tail call void @rb_node_init(ptr noundef %i.g, i32 noundef range(i32 0, 115) 1) #29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !13
  %i.i = load i32, ptr %i.e, align 4, !tbaa !51
  %i.j = sext i32 %i.i to i64
  %i.k = load i64, ptr %i.g, align 8, !tbaa !61
  %i.l = and i64 %i.k, 32767
  %i.m = shl nsw i64 %i.j, 15
  %i.n = or disjoint i64 %i.l, %i.m
  store i64 %i.n, ptr %i.g, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !208  ; 2 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 8, !tbaa !208
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 %i.p, ptr %i.r, align 8, !tbaa !209
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %1, ptr %i.s, align 8, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.g, ptr %i.t, align 8, !tbaa !213
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr null, ptr %i.u, align 8, !tbaa !63
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !213  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !66
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = phi ptr [ %.pre, %bb.e ], [ %1, %bb.d ]
  %.027 = phi ptr [ %i.w, %bb.e ], [ %i.g, %bb.d ]
  %.026 = phi ptr [ %1, %bb.e ], [ %i.g, %bb.d ]  ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !61
  %i.z = trunc i64 %i.y to i32
  %i.aa = lshr i32 %i.z, 8
  %i.ab = and i32 %i.aa, 127
  switch i32 %i.ab, label %bb.h [
    i32 46, label %bb.g
    i32 14, label %bb.g
    i32 15, label %bb.g
    i32 16, label %bb.g
    i32 17, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !46
  %i.ae = load i64, ptr @id_warning, align 8, !tbaa !11
  %i.af = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.677, i64 noundef 21) #29
  %i.ag = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ad, i64 noundef %i.ae, i32 noundef 1, i64 noundef %i.af) #29 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.val = load i64, ptr %2, align 8, !tbaa !61
  %i.ah = and i64 %.val, 32512
  %i.ai = icmp eq i64 %i.ah, 256
  br i1 %i.ai, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %.phi.trans.insert33 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre34 = load ptr, ptr %.phi.trans.insert33, align 8, !tbaa !213
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 288
  %.val.i.i32 = load ptr, ptr %i.ak, align 8, !tbaa !122
  %i.al = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i32, i32 noundef range(i32 0, 115) 1, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 11 uses
  tail call void @rb_node_init(ptr noundef %i.al, i32 noundef range(i32 0, 115) 1) #29
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !13
  %i.an = load i32, ptr %i.aj, align 4, !tbaa !51
  %i.ao = sext i32 %i.an to i64
  %i.ap = load i64, ptr %i.al, align 8, !tbaa !61
  %i.aq = and i64 %i.ap, 32767
  %i.ar = shl nsw i64 %i.ao, 15
  %i.as = or disjoint i64 %i.aq, %i.ar
  store i64 %i.as, ptr %i.al, align 8, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !208 ; 2 uses
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 8, !tbaa !208
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.au, ptr %i.aw, align 8, !tbaa !209
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %2, ptr %i.ax, align 8, !tbaa !66
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store ptr %i.al, ptr %i.ay, align 8, !tbaa !213
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store ptr null, ptr %i.az, align 8, !tbaa !63
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.ba = phi ptr [ %.pre34, %._crit_edge ], [ %i.al, %bb.i ]
  %.028 = phi ptr [ %2, %._crit_edge ], [ %i.al, %bb.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.027, i64 48
  store ptr %.028, ptr %i.bb, align 8, !tbaa !63
  %i.bc = getelementptr inbounds nuw i8, ptr %.026, i64 40
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !213
  %i.bd = getelementptr inbounds nuw i8, ptr %.026, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.bf = load i64, ptr %i.be, align 8
  store i64 %i.bf, ptr %i.bd, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.a, %bb.j
  %.0 = phi ptr [ %.026, %bb.j ], [ %1, %bb.a ], [ %2, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_ary_entry(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @local_pop(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !190  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %warn_unused_var.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !186
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !140
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !186
  %.not4.i = icmp eq i32 %i.h, %i.l
  br i1 %.not4.i, label %warn_unused_var.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @rb_parser_fatal(ptr noundef nonnull %0, ptr noundef nonnull @.str.746) #29
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !93
  br label %warn_unused_var.exit

warn_unused_var.exit:                             ; preds = %bb.c, %bb.b, %bb.a
  %i.m = phi ptr [ %.pre, %bb.c ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  tail call fastcc void @local_free(ptr noundef %i.m)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !93
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !114
  %i.p = lshr i64 %i.o, 1                         ; 2 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !114
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.r = load i16, ptr %i.q, align 8
  %i.s = and i16 %i.r, 32
  %.not18 = icmp eq i16 %i.s, 0
  br i1 %.not18, label %.thread, label %bb.d

.thread:                                          ; preds = %warn_unused_var.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !103
  %i.v = lshr i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !103
  br label %bb.f

bb.d:                                             ; preds = %warn_unused_var.exit
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.p, ptr noundef nonnull @.str.16, i32 noundef 14943) #29
  %.pre20 = load i16, ptr %i.q, align 8
  %.pre21 = and i16 %.pre20, 32
  %i.w = icmp eq i16 %.pre21, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !103
  %i.z = lshr i64 %i.y, 1                         ; 2 uses
  store i64 %i.z, ptr %i.x, align 8, !tbaa !103
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.z, ptr noundef nonnull @.str.13, i32 noundef 14944) #29
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_begin_new(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 18, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #29 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 18) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !13
  %i.d = load i32, ptr %2, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !61
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !208  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !208
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !209
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !67
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc void @clear_block_exit(ptr noundef captures(none) %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %.preheader, label %parser_yyerror.exit35

.preheader:                                       ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78   ; 2 uses
  %.not2037 = icmp eq ptr %i.d, null
  br i1 %.not2037, label %parser_yyerror.exit35, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.k = getelementptr i8, ptr %0, i64 368        ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 8 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %parser_yyerror.exit
  %i.m = phi ptr [ %i.d, %.lr.ph ], [ %i.cs, %parser_yyerror.exit ] ; 15 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !61
  %i.o = trunc i64 %i.n to i32
  %i.p = lshr i32 %i.o, 8
  %i.q = and i32 %i.p, 127
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = load i32, ptr %i.e, align 4, !tbaa !42   ; 5 uses
  %2 = load i32, ptr %i.r, align 8, !tbaa !51
  %3 = icmp eq i32 %i.s, %2                       ; 4 uses
  switch i32 %i.q, label %bb.p [
    i32 14, label %bb.d
    i32 15, label %bb.h
    i32 16, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %3, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.u = load i32, ptr %i.t, align 4, !tbaa !55
  %i.v = icmp eq i32 %i.s, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !54
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %i.ab
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !56
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.y, i64 %i.af
  store ptr %i.ag, ptr %i.f, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.019.i = phi ptr [ %i.w, %bb.f ], [ null, %bb.e ], [ null, %bb.d ] ; 2 uses
  %.0.i = phi ptr [ %i.x, %bb.f ], [ null, %bb.e ], [ null, %bb.d ]
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.ai = tail call i64 @rb_enc_str_new(ptr noundef nonnull @.str.555, i64 noundef 13, ptr noundef %i.ah) #29
  %.val.i.i = load i64, ptr %i.k, align 8, !tbaa !46
  %i.aj = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i, i64 noundef %i.i, i32 noundef 1, i64 noundef %i.ai) #29 ; 0 uses
  %i.ak = load i16, ptr %i.l, align 8
  %i.al = or i16 %i.ak, 512
  store i16 %i.al, ptr %i.l, align 8
  %.not.i = icmp eq ptr %.019.i, null
  br i1 %.not.i, label %parser_yyerror.exit, label %parser_yyerror.exit.sink.split

bb.h:                                             ; preds = %bb.c
  br i1 %3, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.an = load i32, ptr %i.am, align 4, !tbaa !55
  %i.ao = icmp eq i32 %i.s, %i.an
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !44  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !54
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  store ptr %i.av, ptr %i.g, align 8, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !56
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %i.ar, i64 %i.ay
  store ptr %i.az, ptr %i.f, align 8, !tbaa !48
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.019.i21 = phi ptr [ %i.ap, %bb.j ], [ null, %bb.i ], [ null, %bb.h ] ; 2 uses
  %.0.i22 = phi ptr [ %i.aq, %bb.j ], [ null, %bb.i ], [ null, %bb.h ]
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.bb = tail call i64 @rb_enc_str_new(ptr noundef nonnull @.str.556, i64 noundef 12, ptr noundef %i.ba) #29
  %.val.i.i23 = load i64, ptr %i.k, align 8, !tbaa !46
  %i.bc = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i23, i64 noundef %i.i, i32 noundef 1, i64 noundef %i.bb) #29 ; 0 uses
  %i.bd = load i16, ptr %i.l, align 8
  %i.be = or i16 %i.bd, 512
  store i16 %i.be, ptr %i.l, align 8
  %.not.i24 = icmp eq ptr %.019.i21, null
  br i1 %.not.i24, label %parser_yyerror.exit, label %parser_yyerror.exit.sink.split

bb.l:                                             ; preds = %bb.c
  br i1 %3, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !55
  %i.bh = icmp eq i32 %i.s, %i.bg
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bi = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !44  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !54
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 %i.bn
  store ptr %i.bo, ptr %i.g, align 8, !tbaa !41
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !56
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %i.bk, i64 %i.br
  store ptr %i.bs, ptr %i.f, align 8, !tbaa !48
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.019.i26 = phi ptr [ %i.bi, %bb.n ], [ null, %bb.m ], [ null, %bb.l ] ; 2 uses
  %.0.i27 = phi ptr [ %i.bj, %bb.n ], [ null, %bb.m ], [ null, %bb.l ]
  %i.bt = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.bu = tail call i64 @rb_enc_str_new(ptr noundef nonnull @.str.557, i64 noundef 12, ptr noundef %i.bt) #29
  %.val.i.i28 = load i64, ptr %i.k, align 8, !tbaa !46
  %i.bv = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i28, i64 noundef %i.i, i32 noundef 1, i64 noundef %i.bu) #29 ; 0 uses
  %i.bw = load i16, ptr %i.l, align 8
  %i.bx = or i16 %i.bw, 512
  store i16 %i.bx, ptr %i.l, align 8
  %.not.i29 = icmp eq ptr %.019.i26, null
  br i1 %.not.i29, label %parser_yyerror.exit, label %parser_yyerror.exit.sink.split

bb.p:                                             ; preds = %bb.c
  br i1 %3, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !55
  %i.ca = icmp eq i32 %i.s, %i.bz
  br i1 %i.ca, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cb = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.cc = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !44  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !54
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %i.cd, i64 %i.cg
  store ptr %i.ch, ptr %i.g, align 8, !tbaa !41
  %i.ci = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !56
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds i8, ptr %i.cd, i64 %i.ck
  store ptr %i.cl, ptr %i.f, align 8, !tbaa !48
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.019.i31 = phi ptr [ %i.cb, %bb.r ], [ null, %bb.q ], [ null, %bb.p ] ; 2 uses
  %.0.i32 = phi ptr [ %i.cc, %bb.r ], [ null, %bb.q ], [ null, %bb.p ]
  %i.cm = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.cn = tail call i64 @rb_enc_str_new(ptr noundef nonnull @.str.558, i64 noundef 15, ptr noundef %i.cm) #29
  %.val.i.i33 = load i64, ptr %i.k, align 8, !tbaa !46
  %i.co = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i33, i64 noundef %i.i, i32 noundef 1, i64 noundef %i.cn) #29 ; 0 uses
  %i.cp = load i16, ptr %i.l, align 8
  %i.cq = or i16 %i.cp, 512
  store i16 %i.cq, ptr %i.l, align 8
  %.not.i34 = icmp eq ptr %.019.i31, null
  br i1 %.not.i34, label %parser_yyerror.exit35, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %.0.i32, ptr %i.g, align 8, !tbaa !41
  store ptr %.019.i31, ptr %i.f, align 8, !tbaa !48
  br label %parser_yyerror.exit35

parser_yyerror.exit.sink.split:                   ; preds = %bb.o, %bb.k, %bb.g
  %.0.i27.sink = phi ptr [ %.0.i22, %bb.k ], [ %.0.i, %bb.g ], [ %.0.i27, %bb.o ]
  %.019.i26.sink = phi ptr [ %.019.i21, %bb.k ], [ %.019.i, %bb.g ], [ %.019.i26, %bb.o ]
  store ptr %.0.i27.sink, ptr %i.g, align 8, !tbaa !41
  store ptr %.019.i26.sink, ptr %i.f, align 8, !tbaa !48
  br label %parser_yyerror.exit

parser_yyerror.exit:                              ; preds = %parser_yyerror.exit.sink.split, %bb.o, %bb.k, %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !78 ; 2 uses
  %.not20 = icmp eq ptr %i.cs, null
  br i1 %.not20, label %parser_yyerror.exit35, label %bb.c, !llvm.loop !214

parser_yyerror.exit35:                            ; preds = %parser_yyerror.exit, %.preheader, %bb.t, %bb.s, %bb.b
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.b, ptr %i.ct, align 8, !tbaa !76
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.cu, align 8, !tbaa !78
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %parser_yyerror.exit35
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @parser_yyerror(ptr noundef nonnull captures(none) %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42   ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !51
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !55
  %i.g = icmp eq i32 %i.b, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !54
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  store ptr %i.q, ptr %i.j, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !56
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.m, i64 %i.t
  store ptr %i.u, ptr %i.h, align 8, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.019 = phi ptr [ %i.i, %bb.c ], [ null, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.0 = phi ptr [ %i.k, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8, !tbaa !182
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !49
  %i.z = tail call i64 @rb_enc_str_new(ptr noundef nonnull %2, i64 noundef %i.w, ptr noundef %i.y) #29
  %i.aa = getelementptr i8, ptr %0, i64 368
  %.val.i = load i64, ptr %i.aa, align 8, !tbaa !46
  %i.ab = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i, i64 noundef %i.v, i32 noundef 1, i64 noundef %i.z) #29 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 8
  %i.ae = or i16 %i.ad, 512
  store i16 %i.ae, ptr %i.ac, align 8
  %.not = icmp eq ptr %.019, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.0, ptr %i.af, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.019, ptr %i.ag, align 8, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @new_bodystmt(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not23 = icmp eq ptr %3, null
  %i.a = select i1 %.not23, ptr %2, ptr %3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.b, align 4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val25 = load i64, ptr %i.c, align 4
  %i.d = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.d, align 8, !tbaa !122
  %i.e = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 19, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.e, i32 noundef range(i32 0, 115) 19) #29
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.val, ptr %i.f, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.val25, ptr %.sroa.5.0..sroa_idx, align 8
  %i.g = load i64, ptr %i.e, align 8, !tbaa !61
  %i.h = and i64 %i.g, 32767
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !208  ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !208
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %i.j, ptr %i.l, align 8, !tbaa !209
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %1, ptr %i.m, align 8, !tbaa !215
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %2, ptr %i.n, align 8, !tbaa !217
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %3, ptr %i.o, align 8, !tbaa !218
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !219
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 15
  %i.t = or disjoint i64 %i.s, %i.h
  store i64 %i.t, ptr %i.e, align 8, !tbaa !61
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]    ; 2 uses
  %.not24 = icmp eq ptr %4, null
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %0, i64 288
  %.val.i.i26 = load ptr, ptr %i.u, align 8, !tbaa !122
  %i.v = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i26, i32 noundef range(i32 0, 115) 21, i64 noundef range(i64 32, 129) 48, i64 noundef 8) #29 ; 8 uses
  tail call void @rb_node_init(ptr noundef %i.v, i32 noundef range(i32 0, 115) 21) #29
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull readonly align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !13
  %i.x = load i32, ptr %5, align 4, !tbaa !51
  %i.y = sext i32 %i.x to i64
  %i.z = load i64, ptr %i.v, align 8, !tbaa !61
  %i.aa = and i64 %i.z, 32767
  %i.ab = shl nsw i64 %i.y, 15
  %i.ac = or disjoint i64 %i.aa, %i.ab
  store i64 %i.ac, ptr %i.v, align 8, !tbaa !61
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !208 ; 2 uses
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !208
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i32 %i.ae, ptr %i.ag, align 8, !tbaa !209
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %.0, ptr %i.ah, align 8, !tbaa !220
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr %4, ptr %i.ai, align 8, !tbaa !222
end_hunk_1
begin_hunk_2_@rb_node_case2_new:bb.a
  %i.d = load i32, ptr %2, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !61
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !208  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !208
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !209
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.n, align 8, !tbaa !389
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %1, ptr %i.o, align 8, !tbaa !391
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !13
  ret ptr %i.b
}

declare i64 @rb_parser_internal_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_args_aux_new(ptr noundef captures(none) %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 72, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 72) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) @__const.ripper_yyparse.inheritance_operator_loc, i64 16, i1 false), !tbaa.struct !13
  %i.d = load i64, ptr %i.b, align 8, !tbaa !61
  %i.e = and i64 %i.d, 32767
  store i64 %i.e, ptr %i.b, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !208  ; 2 uses
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !208
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.g, ptr %i.i, align 8, !tbaa !209
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %1, ptr %i.j, align 8, !tbaa !392
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %2, ptr %i.k, align 8, !tbaa !123
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr null, ptr %i.l, align 8, !tbaa !125
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_dvar_new(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 49, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #29 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 49) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !13
  %i.d = load i32, ptr %2, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !61
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !208  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !208
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !209
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %1, ptr %i.n, align 8, !tbaa !393
  ret ptr %i.b
}

declare ptr @rb_ast_new_local_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @set_nd_value(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !61
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 8
  %i.d = and i32 %i.c, 127                        ; 2 uses
  switch i32 %i.d, label %bb.j [
    i32 29, label %bb.b
    i32 27, label %bb.c
    i32 28, label %bb.d
    i32 25, label %bb.e
    i32 26, label %bb.f
    i32 24, label %bb.g
    i32 30, label %bb.h
    i32 113, label %parser_node_name.exit
    i32 114, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %2, ptr %i.e, align 8, !tbaa !263
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %2, ptr %i.f, align 8, !tbaa !264
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %2, ptr %i.g, align 8, !tbaa !265
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %2, ptr %i.h, align 8, !tbaa !266
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %2, ptr %i.i, align 8, !tbaa !267
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %2, ptr %i.j, align 8, !tbaa !175
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %2, ptr %i.k, align 8, !tbaa !268
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  br label %parser_node_name.exit

bb.j:                                             ; preds = %bb.a
  %i.l = tail call ptr @ruby_node_name(i32 noundef range(i32 0, 128) %i.d) #29
  br label %parser_node_name.exit

parser_node_name.exit:                            ; preds = %bb.a, %bb.i, %bb.j
  %.0.i = phi ptr [ %i.l, %bb.j ], [ @.str.551, %bb.i ], [ @.str.550, %bb.a ]
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef %0, ptr noundef nonnull @.str.566, ptr noundef %.0.i) #29
  br label %bb.k

bb.k:                                             ; preds = %parser_node_name.exit, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_for_masgn_new(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 13, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #29 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 13) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !13
  %i.d = load i32, ptr %2, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !61
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !208  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !208
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !209
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !395
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @new_args(ptr noundef captures(none) %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef %2, i64 noundef %3, ptr noundef readonly captures(address_is_null) %4, ptr noundef returned captures(ret: address, provenance) %5, ptr noundef nonnull readonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, 2
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not31 = icmp eq i64 %3, 0
  br i1 %.not31, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.g = load i32, ptr %i.f, align 4, !tbaa !42   ; 2 uses
  %i.h = load i32, ptr %i.e, align 4, !tbaa !51
  %i.i = icmp eq i32 %i.g, %i.h
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !55
  %i.l = icmp eq i32 %i.g, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !54
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  store ptr %i.v, ptr %i.o, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !56
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.r, i64 %i.y
  store ptr %i.z, ptr %i.m, align 8, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.019.i = phi ptr [ %i.n, %bb.e ], [ null, %bb.d ], [ null, %bb.c ] ; 2 uses
  %.0.i = phi ptr [ %i.p, %bb.e ], [ null, %bb.d ], [ null, %bb.c ]
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8, !tbaa !182
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !49
  %i.ad = tail call i64 @rb_enc_str_new(ptr noundef nonnull @.str.737, i64 noundef 23, ptr noundef %i.ac) #29
  %i.ae = getelementptr i8, ptr %0, i64 368
  %.val.i.i = load i64, ptr %i.ae, align 8, !tbaa !46
  %i.af = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i, i64 noundef %i.aa, i32 noundef 1, i64 noundef %i.ad) #29 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 8
  %i.ai = or i16 %i.ah, 512
  store i16 %i.ai, ptr %i.ag, align 8
  %.not.i = icmp eq ptr %.019.i, null
  br i1 %.not.i, label %parser_yyerror.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.0.i, ptr %i.aj, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.019.i, ptr %i.ak, align 8, !tbaa !48
  br label %parser_yyerror.exit

bb.h:                                             ; preds = %bb.b, %bb.a
  %.028 = phi i64 [ %3, %bb.a ], [ 42, %bb.b ]
  %.not32 = icmp eq ptr %1, null
  br i1 %.not32, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.am = load i32, ptr %i.al, align 8, !tbaa !123
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !125
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.i
  %.sink = phi i32 [ %i.am, %bb.i ], [ 0, %bb.h ]
  %i.ap = phi ptr [ %i.ao, %bb.i ], [ null, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 %.sink, ptr %i.aq, align 8, !tbaa !148
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !151
  %.not33 = icmp eq ptr %4, null
  br i1 %.not33, label %.thread, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !123
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !125
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !392
  br label %.thread

.thread:                                          ; preds = %.critedge, %bb.j
  %.sink39 = phi i32 [ %i.as, %bb.j ], [ 0, %.critedge ]
  %.sink38 = phi ptr [ %i.au, %bb.j ], [ null, %.critedge ]
  %i.ax = phi i64 [ %i.aw, %bb.j ], [ 0, %.critedge ]
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 %.sink39, ptr %i.ay, align 4, !tbaa !152
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %.sink38, ptr %i.az, align 8, !tbaa !153
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %i.ax, ptr %i.ba, align 8, !tbaa !154
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %.028, ptr %i.bb, align 8, !tbaa !155
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 96
  store ptr %2, ptr %i.bc, align 8, !tbaa !156
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull readonly align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !13
  %i.be = load i32, ptr %6, align 4, !tbaa !51
  %i.bf = sext i32 %i.be to i64
  %i.bg = load i64, ptr %5, align 8, !tbaa !61
  %i.bh = and i64 %i.bg, 32767
  %i.bi = shl nsw i64 %i.bf, 15
  %i.bj = or disjoint i64 %i.bh, %i.bi
  store i64 %i.bj, ptr %5, align 8, !tbaa !61
  br label %parser_yyerror.exit

parser_yyerror.exit:                              ; preds = %bb.g, %bb.f, %.thread
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @new_args_tail(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288        ; 3 uses
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 71, i64 noundef range(i64 32, 129) 112, i64 noundef 8) #29 ; 12 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 71) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) @__const.ripper_yyparse.inheritance_operator_loc, i64 16, i1 false), !tbaa.struct !13
  %i.d = load i64, ptr %i.b, align 8, !tbaa !61
  %i.e = and i64 %i.d, 32767
  store i64 %i.e, ptr %i.b, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 6 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !208  ; 2 uses
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !208
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.g, ptr %i.i, align 8, !tbaa !209
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.j, i8 0, i64 80, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.l = load i16, ptr %i.k, align 8
  %i.m = and i16 %i.l, 512
  %.not = icmp eq i16 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.bb

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %3, ptr %i.n, align 8, !tbaa !397
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %1, ptr %i.o, align 8, !tbaa !398
  %.not68 = icmp eq ptr %1, null
  br i1 %.not68, label %bb.ay, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i64 @rb_parser_internal_id(ptr noundef nonnull %0) #29 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !93
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !189  ; 5 uses
  %.not70 = icmp eq i64 %3, 0
  br i1 %.not70, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !188
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !186
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [8 x i8], ptr %i.t, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.059 = phi i64 [ %i.z, %bb.d ], [ 0, %bb.c ]   ; 5 uses
  %i.aa = icmp ne i64 %.059, 0                    ; 2 uses
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp ne i64 %2, 0                       ; 2 uses
  %i.ad = zext i1 %i.ac to i32
  %i.ae = add nuw nsw i32 %i.ab, %i.ad            ; 4 uses
  %i.af = load i16, ptr %i.k, align 8
  %i.ag = and i16 %i.af, 32
  %.not.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.739, i32 noundef 14470, ptr noundef nonnull @.str.738, ptr noundef %i.s, i32 noundef range(i32 0, 3) %i.ae) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !186 ; 3 uses
  %i.aj = icmp slt i32 %i.ai, %i.ae
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ...) @rb_parser_fatal(ptr noundef nonnull %0, ptr noundef nonnull @.str.740, i32 noundef %i.ai, i32 noundef range(i32 0, 3) %i.ae) #29
  %.pre = load i32, ptr %i.ah, align 8, !tbaa !186
  br label %vtable_pop_gen.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = sub nsw i32 %i.ai, %i.ae                ; 2 uses
  store i32 %i.ak, ptr %i.ah, align 8, !tbaa !186
  br label %vtable_pop_gen.exit

vtable_pop_gen.exit:                              ; preds = %bb.h, %bb.i
  %i.al = phi i32 [ %.pre, %bb.h ], [ %i.ak, %bb.i ]
  %i.am = load ptr, ptr %i.s, align 8, !tbaa !188
  %i.an = sext i32 %i.al to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.an ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %vtable_pop_gen.exit, %get_nd_value.exit
  %.05897 = phi ptr [ %1, %vtable_pop_gen.exit ], [ %i.bn, %get_nd_value.exit ] ; 2 uses
  %.06096 = phi ptr [ %i.ao, %vtable_pop_gen.exit ], [ %spec.select, %get_nd_value.exit ]
  %.06295 = phi ptr [ %i.ao, %vtable_pop_gen.exit ], [ %i.bl, %get_nd_value.exit ]
end_hunk_2
begin_hunk_3_@gettable:bb.a

bb.an:                                            ; preds = %bb.k
  %i.gb = getelementptr i8, ptr %0, i64 288
  %.val.i.i129 = load ptr, ptr %i.gb, align 8, !tbaa !122
  %i.gc = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i129, i32 noundef range(i32 0, 115) 51, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #29 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.gc, i32 noundef range(i32 0, 115) 51) #29
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !13
  %i.ge = load i32, ptr %2, align 4, !tbaa !51
  %i.gf = sext i32 %i.ge to i64
  %i.gg = load i64, ptr %i.gc, align 8, !tbaa !61
  %i.gh = and i64 %i.gg, 32767
  %i.gi = shl nsw i64 %i.gf, 15
  %i.gj = or disjoint i64 %i.gh, %i.gi
  store i64 %i.gj, ptr %i.gc, align 8, !tbaa !61
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !208 ; 2 uses
  %i.gm = add nsw i32 %i.gl, 1
  store i32 %i.gm, ptr %i.gk, align 8, !tbaa !208
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  store i32 %i.gl, ptr %i.gn, align 8, !tbaa !209
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  store i64 %1, ptr %i.go, align 8, !tbaa !445
  br label %bb.ar

bb.ao:                                            ; preds = %bb.k
  %i.gp = getelementptr i8, ptr %0, i64 288
  %.val.i.i130 = load ptr, ptr %i.gp, align 8, !tbaa !122
  %i.gq = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i130, i32 noundef range(i32 0, 115) 52, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #29 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.gq, i32 noundef range(i32 0, 115) 52) #29
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !13
  %i.gs = load i32, ptr %2, align 4, !tbaa !51
  %i.gt = sext i32 %i.gs to i64
  %i.gu = load i64, ptr %i.gq, align 8, !tbaa !61
  %i.gv = and i64 %i.gu, 32767
  %i.gw = shl nsw i64 %i.gt, 15
  %i.gx = or disjoint i64 %i.gv, %i.gw
  store i64 %i.gx, ptr %i.gq, align 8, !tbaa !61
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !208 ; 2 uses
  %i.ha = add nsw i32 %i.gz, 1
  store i32 %i.ha, ptr %i.gy, align 8, !tbaa !208
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  store i32 %i.gz, ptr %i.hb, align 8, !tbaa !209
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  store i64 %1, ptr %i.hc, align 8, !tbaa !447
  br label %bb.ar

bb.ap:                                            ; preds = %bb.k
  %i.hd = getelementptr i8, ptr %0, i64 288
  %.val.i.i131 = load ptr, ptr %i.hd, align 8, !tbaa !122
  %i.he = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i131, i32 noundef range(i32 0, 115) 53, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #29 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.he, i32 noundef range(i32 0, 115) 53) #29
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hf, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !13
  %i.hg = load i32, ptr %2, align 4, !tbaa !51
  %i.hh = sext i32 %i.hg to i64
  %i.hi = load i64, ptr %i.he, align 8, !tbaa !61
  %i.hj = and i64 %i.hi, 32767
  %i.hk = shl nsw i64 %i.hh, 15
  %i.hl = or disjoint i64 %i.hj, %i.hk
  store i64 %i.hl, ptr %i.he, align 8, !tbaa !61
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !208 ; 2 uses
  %i.ho = add nsw i32 %i.hn, 1
  store i32 %i.ho, ptr %i.hm, align 8, !tbaa !208
  %i.hp = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  store i32 %i.hn, ptr %i.hp, align 8, !tbaa !209
  %i.hq = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  store i64 %1, ptr %i.hq, align 8, !tbaa !449
  br label %bb.ar

bb.aq:                                            ; preds = %bb.k
  %i.hr = tail call i64 @rb_id2str(i64 noundef %1) #29
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef %0, ptr noundef nonnull @.str.680, i64 noundef %i.hr) #29
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ak, %bb.al, %bb.af, %bb.ab, %bb.ac, %bb.z, %bb.aa, %bb.o, %bb.p, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %dyna_in_block.exit127.thread, %bb.ah, %bb.v, %bb.s, %bb.j, %bb.i, %bb.h, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.aq ], [ %i.cj, %bb.j ], [ %i.du, %bb.s ], [ %i.dz, %bb.v ], [ null, %bb.o ], [ null, %bb.z ], [ %i.fm, %dyna_in_block.exit127.thread ], [ %i.eo, %bb.ab ], [ null, %bb.ah ], [ null, %bb.af ], [ %i.fo, %bb.am ], [ %i.gc, %bb.an ], [ %i.gq, %bb.ao ], [ %i.he, %bb.ap ], [ %i.c, %bb.b ], [ %i.q, %bb.c ], [ %i.ad, %bb.d ], [ %i.aq, %bb.e ], [ %i.bh, %bb.h ], [ %i.bw, %bb.i ], [ null, %bb.p ], [ null, %bb.aa ], [ %i.eo, %bb.ac ], [ %i.fi, %bb.al ], [ %i.fi, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_errinfo_new(ptr noundef captures(none) %0, ptr noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 98, i64 noundef range(i64 32, 129) 32, i64 noundef 8) #29 ; 6 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 98) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !13
  %i.d = load i32, ptr %1, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !61
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !208  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !208
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !209
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_str_new(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 63, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #29 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 63) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !13
  %i.d = load i32, ptr %2, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !61
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !208  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !208
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !209
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !432
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias noundef nonnull ptr @rb_parser_encoding_string_new(ptr noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.567, i64 noundef %1) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias nonnull dereferenceable(32) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 32) #33 ; 5 uses
  %i.c = add nuw nsw i64 %1, 1
  %i.d = tail call noalias nonnull ptr @ruby_xcalloc(i64 noundef %i.c, i64 noundef 1) #33 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !451
  %.not.i = icmp eq ptr %0, null
  %.not.i.i = icmp eq i64 %1, 0
  %or.cond.i = or i1 %.not.i, %.not.i.i
  br i1 %or.cond.i, label %rb_parser_string_new.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull readonly align 1 %0, i64 %1, i1 false)
  br label %rb_parser_string_new.exit

rb_parser_string_new.exit:                        ; preds = %bb.c, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %i.f, align 8, !tbaa !453
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %1
  store i8 0, ptr %i.g, align 1, !tbaa !10
  store i32 0, ptr %i.b, align 8, !tbaa !454
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.h, align 8, !tbaa !455
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @evstr2dstr(ptr noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %1, align 8, !tbaa !61
  %i.a = and i64 %.val, 32512
  %i.b = icmp eq i64 %i.a, 17152
  br i1 %i.b, label %list_append.exit, label %bb.b

list_append.exit:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = tail call noalias nonnull dereferenceable(32) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 32) #33 ; 5 uses
  %i.g = tail call noalias nonnull dereferenceable(1) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 1) #33 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.g, ptr %i.h, align 8, !tbaa !451
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.i, align 8, !tbaa !453
  store i8 0, ptr %i.g, align 1, !tbaa !10
  store i32 0, ptr %i.f, align 8, !tbaa !454
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.e, ptr %i.j, align 8, !tbaa !455
  %i.k = getelementptr i8, ptr %0, i64 288        ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !122
  %i.l = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i.i.i, i32 noundef range(i32 0, 115) 64, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.l, i32 noundef range(i32 0, 115) 64) #29
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !13
  %i.n = load i32, ptr %i.c, align 4, !tbaa !51
  %i.o = sext i32 %i.n to i64
  %i.p = load i64, ptr %i.l, align 8, !tbaa !61
  %i.q = and i64 %i.p, 32767
  %i.r = shl nsw i64 %i.o, 15
  %i.s = or disjoint i64 %i.q, %i.r
  store i64 %i.s, ptr %i.l, align 8, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !208  ; 2 uses
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 8, !tbaa !208
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i32 %i.u, ptr %i.w, align 8, !tbaa !209
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.f, ptr %i.x, align 8, !tbaa !434
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  store ptr null, ptr %i.z, align 8, !tbaa !437
  store i64 2, ptr %i.y, align 8, !tbaa !10
  %.val.i.i21.i = load ptr, ptr %i.k, align 8, !tbaa !122
  %i.aa = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i21.i, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.aa, i32 noundef range(i32 0, 115) 43) #29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !13
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !51
  %i.ad = sext i32 %i.ac to i64
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !61
  %i.af = and i64 %i.ae, 32767
  %i.ag = shl nsw i64 %i.ad, 15
  %i.ah = or disjoint i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.aa, align 8, !tbaa !61
  %i.ai = load i32, ptr %i.t, align 8, !tbaa !208 ; 2 uses
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.t, align 8, !tbaa !208
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i32 %i.ai, ptr %i.ak, align 8, !tbaa !209
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %1, ptr %i.al, align 8, !tbaa !177
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr null, ptr %i.an, align 8, !tbaa !179
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !179
  store ptr %i.aa, ptr %i.am, align 8, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load i64, ptr %i.ap, align 8
  store i64 %i.aq, ptr %i.ao, align 8
  br label %bb.b

bb.b:                                             ; preds = %list_append.exit, %bb.a
  %.0 = phi ptr [ %i.l, %list_append.exit ], [ %1, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @literal_concat(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not96 = icmp eq ptr %2, null
  br i1 %.not96, label %bb.aj, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = load i64, ptr %1, align 8, !tbaa !61
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 8
  %i.d = and i32 %i.c, 127                        ; 2 uses
  %i.e = icmp eq i32 %i.d, 67
  br i1 %i.e, label %list_append.exit, label %bb.d

list_append.exit:                                 ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.h = tail call noalias nonnull dereferenceable(32) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 32) #33 ; 5 uses
  %i.i = tail call noalias nonnull dereferenceable(1) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 1) #33 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.i, ptr %i.j, align 8, !tbaa !451
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.k, align 8, !tbaa !453
  store i8 0, ptr %i.i, align 1, !tbaa !10
  store i32 0, ptr %i.h, align 8, !tbaa !454
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.g, ptr %i.l, align 8, !tbaa !455
  %i.m = getelementptr i8, ptr %0, i64 288        ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !122
  %i.n = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i.i.i, i32 noundef range(i32 0, 115) 64, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.n, i32 noundef range(i32 0, 115) 64) #29
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !13
  %i.p = load i32, ptr %3, align 4, !tbaa !51
  %i.q = sext i32 %i.p to i64
  %i.r = load i64, ptr %i.n, align 8, !tbaa !61
  %i.s = and i64 %i.r, 32767
  %i.t = shl nsw i64 %i.q, 15
  %i.u = or disjoint i64 %i.s, %i.t
  store i64 %i.u, ptr %i.n, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !208  ; 2 uses
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !208
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i32 %i.w, ptr %i.y, align 8, !tbaa !209
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.h, ptr %i.z, align 8, !tbaa !434
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !437
  store i64 2, ptr %i.aa, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i.i21.i = load ptr, ptr %i.m, align 8, !tbaa !122
  %i.ad = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i21.i, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.ad, i32 noundef range(i32 0, 115) 43) #29
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !13
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !51
  %i.ag = sext i32 %i.af to i64
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !61
  %i.ai = and i64 %i.ah, 32767
  %i.aj = shl nsw i64 %i.ag, 15
  %i.ak = or disjoint i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.ad, align 8, !tbaa !61
  %i.al = load i32, ptr %i.v, align 8, !tbaa !208 ; 2 uses
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.v, align 8, !tbaa !208
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i32 %i.al, ptr %i.an, align 8, !tbaa !209
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr %1, ptr %i.ao, align 8, !tbaa !177
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store ptr null, ptr %i.aq, align 8, !tbaa !179
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !179
  store ptr %i.ad, ptr %i.ap, align 8, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i64, ptr %i.as, align 8
  store i64 %i.at, ptr %i.ar, align 8
  br label %bb.d

bb.d:                                             ; preds = %list_append.exit, %bb.c
  %.087 = phi ptr [ %i.n, %list_append.exit ], [ %1, %bb.c ] ; 29 uses
  %.085 = phi i32 [ 64, %list_append.exit ], [ %i.d, %bb.c ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.av = load i32, ptr %i.au, align 4, !tbaa !170
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  switch i32 %.085, label %bb.i [
    i32 63, label %bb.f
    i32 64, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr i8, ptr %0, i64 288
  %.val105 = load ptr, ptr %i.ax, align 8, !tbaa !122
  %i.ay = tail call ptr @rb_ast_newnode(ptr noundef %.val105, i32 noundef 64, i64 noundef 56, i64 noundef 8) #29 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.ay, i32 noundef 64) #29
  %i.az = load i64, ptr %.087, align 8, !tbaa !61 ; 2 uses
  %i.ba = and i64 %i.az, 128
  %.not.i.i = icmp eq i64 %i.ba, 0
  %.pre8.i.i = load i64, ptr %i.ay, align 8, !tbaa !61 ; 2 uses
  br i1 %.not.i.i, label %str2dstr.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = or i64 %.pre8.i.i, 128                  ; 2 uses
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !61
  %.pre.i.i = load i64, ptr %.087, align 8, !tbaa !61
  br label %str2dstr.exit

str2dstr.exit:                                    ; preds = %bb.f, %bb.g
  %i.bc = phi i64 [ %i.bb, %bb.g ], [ %.pre8.i.i, %bb.f ]
  %i.bd = phi i64 [ %.pre.i.i, %bb.g ], [ %i.az, %bb.f ]
  %i.be = shl i64 %i.bd, 17
  %i.bf = and i64 %i.bc, 32767
  %i.bg = ashr exact i64 %i.be, 17
  %i.bh = and i64 %i.bg, -32768
  %i.bi = or disjoint i64 %i.bh, %i.bf
  store i64 %i.bi, ptr %i.ay, align 8, !tbaa !61
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.087, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !tbaa.struct !13
  %i.bl = getelementptr inbounds nuw i8, ptr %.087, i64 24
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !209
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !209
  %i.bo = getelementptr inbounds nuw i8, ptr %.087, i64 32 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !432
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !434
  %i.br = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.bo, align 8, !tbaa !432
  br label %bb.h

bb.h:                                             ; preds = %str2dstr.exit, %bb.e
  %.188 = phi ptr [ %i.ay, %str2dstr.exit ], [ %.087, %bb.e ]
  %i.bs = tail call fastcc ptr @list_append(ptr noundef nonnull %0, ptr noundef nonnull %.188, ptr noundef nonnull %2)
  br label %bb.aj

bb.i:                                             ; preds = %bb.e, %bb.d
  %i.bt = load i64, ptr %2, align 8, !tbaa !61
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = lshr i32 %i.bu, 8
  %i.bw = and i32 %i.bv, 127
  switch i32 %i.bw, label %bb.aj [
    i32 63, label %bb.j
    i32 64, label %bb.p
    i32 67, label %bb.af
  ]

bb.j:                                             ; preds = %bb.i
  switch i32 %.085, label %.thread129 [
    i32 64, label %bb.k
    i32 63, label %.thread
  ]

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %.087, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !437 ; 2 uses
  %.not11.i = icmp eq ptr %i.by, null
  br i1 %.not11.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !10
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !177 ; 3 uses
  %.not12.i = icmp eq ptr %i.cc, null
  br i1 %.not12.i, label %.thread129, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val.i = load i64, ptr %i.cc, align 8, !tbaa !61
  %i.cd = and i64 %.val.i, 32512
  %i.ce = icmp eq i64 %i.cd, 16128
  br i1 %i.ce, label %.thread, label %.thread129

.thread:                                          ; preds = %bb.j, %bb.k, %bb.m
  %.08.i.pn = phi ptr [ %.087, %bb.j ], [ %i.cc, %bb.m ], [ %.087, %bb.k ]
  %.0128.in = getelementptr inbounds nuw i8, ptr %.08.i.pn, i64 32
  %.0128 = load ptr, ptr %.0128.in, align 8, !tbaa !434
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !432
  %i.ch = tail call fastcc i32 @literal_concat0(ptr noundef nonnull %0, ptr noundef %.0128, ptr noundef %i.cg)
  %.not104 = icmp eq i32 %i.ch, 0
  br i1 %.not104, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.ac, %bb.q, %.thread
  %i.ci = getelementptr i8, ptr %0, i64 288       ; 2 uses
  %.val110 = load ptr, ptr %i.ci, align 8, !tbaa !122
  tail call void @rb_ast_delete_node(ptr noundef %.val110, ptr noundef nonnull %.087) #29
  %.val109 = load ptr, ptr %i.ci, align 8, !tbaa !122
  tail call void @rb_ast_delete_node(ptr noundef %.val109, ptr noundef nonnull %2) #29
  br label %bb.aj

bb.o:                                             ; preds = %.thread
  %i.cj = getelementptr i8, ptr %0, i64 288
  %.val108 = load ptr, ptr %i.cj, align 8, !tbaa !122
  tail call void @rb_ast_delete_node(ptr noundef %.val108, ptr noundef nonnull %2) #29
  br label %bb.aj

.thread129:                                       ; preds = %bb.j, %bb.m, %bb.l
  %i.ck = tail call fastcc ptr @list_append(ptr noundef nonnull %0, ptr noundef nonnull %.087, ptr noundef nonnull %2) ; 0 uses
  br label %bb.aj

bb.p:                                             ; preds = %bb.i
  %i.cl = icmp eq i32 %.085, 63
  br i1 %i.cl, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %.087, i64 32 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !432
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !434
  %i.cq = tail call fastcc i32 @literal_concat0(ptr noundef nonnull %0, ptr noundef %i.cn, ptr noundef %i.cp)
  %.not102 = icmp eq i32 %i.cq, 0
  br i1 %.not102, label %bb.n, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !434
  tail call void @rb_parser_string_free(ptr noundef nonnull %0, ptr noundef %i.cr) #29
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !432
  store ptr %i.cs, ptr %i.co, align 8, !tbaa !434
  store ptr null, ptr %i.cm, align 8, !tbaa !432
  %i.ct = getelementptr i8, ptr %0, i64 288
  %.val107 = load ptr, ptr %i.ct, align 8, !tbaa !122
  tail call void @rb_ast_delete_node(ptr noundef %.val107, ptr noundef nonnull %.087) #29
  br label %bb.aj

bb.s:                                             ; preds = %bb.p
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !434 ; 3 uses
  %.not97 = icmp eq ptr %i.cv, null
  br i1 %.not97, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s, %bb.ad
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !10
  %i.cy = add nsw i64 %i.cx, -1
  %i.cz = getelementptr inbounds nuw i8, ptr %.087, i64 40 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !10
  %i.db = add nsw i64 %i.cy, %i.da
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !10
  %i.dc = getelementptr inbounds nuw i8, ptr %.087, i64 48 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !437 ; 2 uses
  %.not100 = icmp eq ptr %i.dd, null
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !437 ; 3 uses
  br i1 %.not100, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.df, ptr %i.dc, align 8, !tbaa !437
  br label %bb.x

bb.v:                                             ; preds = %bb.t
end_hunk_3
begin_hunk_4_@shadowing_lvar_0:bb.a
  br i1 %i.dr, label %local_id.exit60.thread83, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %indvars.iv.next.i.i.i56 = add nuw nsw i64 %indvars.iv.i.i.i55, 1 ; 2 uses
  %exitcond.not.i.i.i57 = icmp eq i64 %indvars.iv.next.i.i.i56, %wide.trip.count.i.i.i54
  br i1 %exitcond.not.i.i.i57, label %vtable_included.exit.thread.i.i45, label %bb.aa, !llvm.loop !205

vtable_included.exit.thread.i.i45:                ; preds = %bb.ab, %.preheader.i.i.i44, %.critedge37.i.i41
  %i.ds = icmp ult ptr %.03158.i.i42, inttoptr (i64 2 to ptr)
  br i1 %i.ds, label %vtable_add_gen.exit35, label %.preheader.i38.i.i46

.preheader.i38.i.i46:                             ; preds = %vtable_included.exit.thread.i.i45
  %i.dt = getelementptr inbounds nuw i8, ptr %.03158.i.i42, i64 8
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !186 ; 2 uses
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph.i40.i.i48, label %vtable_add_gen.exit35

.lr.ph.i40.i.i48:                                 ; preds = %.preheader.i38.i.i46
  %i.dw = load ptr, ptr %.03158.i.i42, align 8, !tbaa !188
  %wide.trip.count.i41.i.i49 = zext nneg i32 %i.du to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.lr.ph.i40.i.i48
  %indvars.iv.i42.i.i50 = phi i64 [ 0, %.lr.ph.i40.i.i48 ], [ %indvars.iv.next.i43.i.i51, %bb.ad ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.i42.i.i50
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !11
  %i.dz = icmp eq i64 %i.dy, %1
  br i1 %i.dz, label %local_id.exit60.thread83, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %indvars.iv.next.i43.i.i51 = add nuw nsw i64 %indvars.iv.i42.i.i50, 1 ; 2 uses
  %exitcond.not.i44.i.i52 = icmp eq i64 %indvars.iv.next.i43.i.i51, %wide.trip.count.i41.i.i49
  br i1 %exitcond.not.i44.i.i52, label %vtable_add_gen.exit35, label %bb.ac, !llvm.loop !205

local_id.exit60:                                  ; preds = %.critedge.i.i58
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !378
  %i.ec = tail call i32 @rb_parser_local_defined(ptr noundef %0, i64 noundef %1, ptr noundef %i.eb) #29
  %.not23 = icmp eq i32 %i.ec, 0
  %i.ed = icmp eq i64 %1, 3761
  %or.cond = or i1 %i.ed, %.not23
  br i1 %or.cond, label %vtable_add_gen.exit35, label %bb.ae

local_id.exit60.thread83:                         ; preds = %bb.aa, %bb.ac
  %.old = icmp eq i64 %1, 3761
  br i1 %.old, label %vtable_add_gen.exit35, label %bb.ae

bb.ae:                                            ; preds = %local_id.exit60, %local_id.exit60.thread83
  %i.ee = icmp ugt i64 %1, 171
  %i.ef = and i64 %1, 14
  %i.eg = icmp eq i64 %i.ef, 0
  %i.eh = and i1 %i.ee, %i.eg
  br i1 %i.eh, label %bb.af, label %is_private_local_id.exit65.thread

bb.af:                                            ; preds = %bb.ae
  %i.ei = tail call i64 @rb_id2str(i64 noundef %1) #29 ; 2 uses
  %.not.i62 = icmp eq i64 %i.ei, 0
  br i1 %.not.i62, label %is_private_local_id.exit65.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ej = inttoptr i64 %i.ei to ptr               ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !431
  %i.el = and i64 %i.ek, 8192
  %.not.i.i63 = icmp eq i64 %i.el, 0
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 24 ; 2 uses
  br i1 %.not.i.i63, label %is_private_local_id.exit65, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !10
  br label %is_private_local_id.exit65

is_private_local_id.exit65:                       ; preds = %bb.ag, %bb.ah
  %i.eo = phi ptr [ %i.en, %bb.ah ], [ %i.em, %bb.ag ]
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !10
  %.not92 = icmp eq i8 %i.ep, 95
  br i1 %.not92, label %vtable_add_gen.exit35, label %is_private_local_id.exit65.thread

is_private_local_id.exit65.thread:                ; preds = %bb.af, %bb.ae, %is_private_local_id.exit65
  %i.eq = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8, !tbaa !182
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !49
  %i.et = tail call i64 @rb_enc_str_new(ptr noundef nonnull @.str.705, i64 noundef 24, ptr noundef %i.es) #29
  %i.eu = getelementptr i8, ptr %0, i64 368
  %.val.i66 = load i64, ptr %i.eu, align 8, !tbaa !46
  %i.ev = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i66, i64 noundef %i.eq, i32 noundef 1, i64 noundef %i.et) #29 ; 0 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ex = load i16, ptr %i.ew, align 8
  %i.ey = or i16 %i.ex, 512
  store i16 %i.ey, ptr %i.ew, align 8
  br label %vtable_add_gen.exit35

vtable_add_gen.exit35:                            ; preds = %bb.p, %bb.ad, %local_id.exit60.thread83, %.preheader.i38.i.i46, %vtable_included.exit.thread.i.i45, %.preheader.i38.i.i, %vtable_included.exit.thread.i.i, %dvar_curr.exit, %bb.y, %bb.v, %local_id.exit, %is_private_local_id.exit.thread, %is_private_local_id.exit65.thread, %local_id.exit60, %is_private_local_id.exit65, %vtable_add_gen.exit, %is_private_local_id.exit
  %.0 = phi i32 [ 0, %vtable_add_gen.exit ], [ 1, %is_private_local_id.exit65 ], [ 1, %is_private_local_id.exit ], [ 1, %dvar_curr.exit ], [ 1, %local_id.exit60 ], [ 1, %is_private_local_id.exit65.thread ], [ 1, %is_private_local_id.exit.thread ], [ 1, %local_id.exit ], [ 1, %local_id.exit60.thread83 ], [ 0, %bb.v ], [ 0, %bb.y ], [ 1, %bb.ad ], [ 1, %vtable_included.exit.thread.i.i ], [ 1, %.preheader.i38.i.i ], [ 1, %vtable_included.exit.thread.i.i45 ], [ 1, %.preheader.i38.i.i46 ], [ 1, %bb.p ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @aryset_check(ptr noundef captures(none) %0, ptr noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %parser_yyerror.exit39, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8, !tbaa !61    ; 2 uses
  %i.a = and i64 %.val, 32512
  %i.b = icmp eq i64 %i.a, 20224
  br i1 %i.b, label %bb.c, label %.thread44

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !381  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !112  ; 3 uses
  %.not29 = icmp eq ptr %i.f, null
  br i1 %.not29, label %parser_yyerror.exit, label %..thread44_crit_edge

..thread44_crit_edge:                             ; preds = %bb.c
  %.025.val.pre = load i64, ptr %i.f, align 8, !tbaa !61
  br label %.thread44

.thread44:                                        ; preds = %..thread44_crit_edge, %bb.b
  %.025.val = phi i64 [ %.025.val.pre, %..thread44_crit_edge ], [ %.val, %bb.b ] ; 2 uses
  %.02449 = phi ptr [ %i.d, %..thread44_crit_edge ], [ null, %bb.b ] ; 6 uses
  %.02548 = phi ptr [ %i.f, %..thread44_crit_edge ], [ %1, %bb.b ] ; 2 uses
  %i.g = and i64 %.025.val, 32512
  %i.h = icmp eq i64 %i.g, 19456
  br i1 %i.h, label %bb.d, label %.thread57

bb.d:                                             ; preds = %.thread44
  %i.i = getelementptr inbounds nuw i8, ptr %.02548, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !372  ; 3 uses
  %.not30 = icmp eq ptr %i.j, null
  br i1 %.not30, label %parser_yyerror.exit, label %..thread57_crit_edge

..thread57_crit_edge:                             ; preds = %bb.d
  %.126.val.pre = load i64, ptr %i.j, align 8, !tbaa !61
  br label %.thread57

.thread57:                                        ; preds = %..thread57_crit_edge, %.thread44
  %.126.val = phi i64 [ %.126.val.pre, %..thread57_crit_edge ], [ %.025.val, %.thread44 ]
  %.12662 = phi ptr [ %i.j, %..thread57_crit_edge ], [ %.02548, %.thread44 ] ; 3 uses
  %i.k = and i64 %.126.val, 32512
  %i.l = icmp eq i64 %i.k, 19712
  br i1 %i.l, label %bb.e, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread57
  %.0.val84 = load i64, ptr %.12662, align 8, !tbaa !61
  %i.m = and i64 %.0.val84, 32512
  %i.n = icmp eq i64 %i.m, 11008
  br i1 %i.n, label %.lr.ph86, label %.critedge

bb.e:                                             ; preds = %.thread57
  %i.o = getelementptr inbounds nuw i8, ptr %.12662, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !370
  br label %.critedge

.lr.ph:                                           ; preds = %.lr.ph86
  %.0.val = load i64, ptr %i.t, align 8, !tbaa !61
  %i.q = and i64 %.0.val, 32512
  %i.r = icmp eq i64 %i.q, 11008
  br i1 %i.r, label %.lr.ph86, label %.critedge.loopexit, !llvm.loop !618

.lr.ph86:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.06585 = phi ptr [ %i.t, %.lr.ph ], [ %.12662, %.lr.ph.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.06585, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !179  ; 3 uses
  %.not31 = icmp eq ptr %i.t, null
  br i1 %.not31, label %..critedge.loopexit_crit_edge, label %.lr.ph, !llvm.loop !618

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph86
  %i.u = getelementptr inbounds nuw i8, ptr %.06585, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !177
  br label %.critedge, !llvm.loop !618

.critedge.loopexit:                               ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.06585, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !177
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph.preheader, %..critedge.loopexit_crit_edge, %bb.e
  %.1 = phi ptr [ %i.p, %bb.e ], [ null, %.lr.ph.preheader ], [ %i.v, %..critedge.loopexit_crit_edge ], [ %i.x, %.critedge.loopexit ] ; 7 uses
  %.not32 = icmp eq ptr %.1, null
  br i1 %.not32, label %parser_yyerror.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  %.1.val = load i64, ptr %.1, align 8, !tbaa !61
  %i.y = and i64 %.1.val, 32512
  %i.z = icmp eq i64 %i.y, 11520
  br i1 %i.z, label %bb.g, label %parser_yyerror.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.1, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !119
  %.not33 = icmp eq i64 %i.ab, 0
  br i1 %.not33, label %bb.h, label %parser_yyerror.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !42 ; 2 uses
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !51
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !55
  %i.aj = icmp eq i32 %i.ae, %i.ai
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !44 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.1, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !54
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 %i.as
  store ptr %i.at, ptr %i.am, align 8, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %.1, i64 20
  %i.av = load i32, ptr %i.au, align 4, !tbaa !56
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.ap, i64 %i.aw
  store ptr %i.ax, ptr %i.ak, align 8, !tbaa !48
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.019.i = phi ptr [ %i.al, %bb.j ], [ null, %bb.i ], [ null, %bb.h ] ; 2 uses
  %.0.i = phi ptr [ %i.an, %bb.j ], [ null, %bb.i ], [ null, %bb.h ]
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8, !tbaa !182
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !49
  %i.bb = tail call i64 @rb_enc_str_new(ptr noundef nonnull @.str.707, i64 noundef 37, ptr noundef %i.ba) #29
  %i.bc = getelementptr i8, ptr %0, i64 368
  %.val.i.i = load i64, ptr %i.bc, align 8, !tbaa !46
  %i.bd = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i, i64 noundef %i.ay, i32 noundef 1, i64 noundef %i.bb) #29 ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = or i16 %i.bf, 512
  store i16 %i.bg, ptr %i.be, align 8
  %.not.i = icmp eq ptr %.019.i, null
  br i1 %.not.i, label %parser_yyerror.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.0.i, ptr %i.bh, align 8, !tbaa !41
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.019.i, ptr %i.bi, align 8, !tbaa !48
  br label %parser_yyerror.exit

parser_yyerror.exit:                              ; preds = %bb.d, %bb.c, %bb.l, %bb.k, %bb.g, %bb.f, %.critedge
  %.024435481 = phi ptr [ %.02449, %.critedge ], [ %.02449, %bb.l ], [ %.02449, %bb.k ], [ %.02449, %bb.g ], [ %.02449, %bb.f ], [ %.02449, %bb.d ], [ %i.d, %bb.c ] ; 5 uses
  %.not34 = icmp eq ptr %.024435481, null
  br i1 %.not34, label %parser_yyerror.exit39, label %bb.m

bb.m:                                             ; preds = %parser_yyerror.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %.024435481, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !42 ; 2 uses
  %i.bm = load i32, ptr %i.bj, align 4, !tbaa !51
  %i.bn = icmp eq i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.024435481, i64 16
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !55
  %i.bq = icmp eq i32 %i.bl, %i.bp
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !48
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !41
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !44 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.024435481, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !54
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 %i.bz
  store ptr %i.ca, ptr %i.bt, align 8, !tbaa !41
  %i.cb = getelementptr inbounds nuw i8, ptr %.024435481, i64 20
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !56
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds i8, ptr %i.bw, i64 %i.cd
  store ptr %i.ce, ptr %i.br, align 8, !tbaa !48
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.019.i35 = phi ptr [ %i.bs, %bb.o ], [ null, %bb.n ], [ null, %bb.m ] ; 2 uses
  %.0.i36 = phi ptr [ %i.bu, %bb.o ], [ null, %bb.n ], [ null, %bb.m ]
  %i.cf = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8, !tbaa !182
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !49
  %i.ci = tail call i64 @rb_enc_str_new(ptr noundef nonnull @.str.708, i64 noundef 35, ptr noundef %i.ch) #29
  %i.cj = getelementptr i8, ptr %0, i64 368
  %.val.i.i37 = load i64, ptr %i.cj, align 8, !tbaa !46
  %i.ck = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i37, i64 noundef %i.cf, i32 noundef 1, i64 noundef %i.ci) #29 ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.cm = load i16, ptr %i.cl, align 8
  %i.cn = or i16 %i.cm, 512
  store i16 %i.cn, ptr %i.cl, align 8
  %.not.i38 = icmp eq ptr %.019.i35, null
  br i1 %.not.i38, label %parser_yyerror.exit39, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.0.i36, ptr %i.co, align 8, !tbaa !41
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.019.i35, ptr %i.cp, align 8, !tbaa !48
  br label %parser_yyerror.exit39

parser_yyerror.exit39:                            ; preds = %bb.a, %bb.q, %bb.p, %parser_yyerror.exit
  ret void
}

declare i64 @rb_id_attrset(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @arg_concat(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !61
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 8
  %i.d = and i32 %i.c, 127
  switch i32 %i.d, label %bb.p [
    i32 79, label %bb.c
    i32 77, label %bb.g
    i32 76, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !112  ; 2 uses
  %.not35 = icmp eq ptr %i.f, null
  br i1 %.not35, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc ptr @arg_concat(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %2, ptr noundef %3)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.h, align 8, !tbaa !122
  %i.i = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.i, i32 noundef range(i32 0, 115) 43) #29
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !13
  %i.k = load i32, ptr %3, align 4, !tbaa !51
  %i.l = sext i32 %i.k to i64
  %i.m = load i64, ptr %i.i, align 8, !tbaa !61
  %i.n = and i64 %i.m, 32767
  %i.o = shl nsw i64 %i.l, 15
  %i.p = or disjoint i64 %i.n, %i.o
  store i64 %i.p, ptr %i.i, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !208  ; 2 uses
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !208
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i32 %i.r, ptr %i.t, align 8, !tbaa !209
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %2, ptr %i.u, align 8, !tbaa !177
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 1, ptr %i.v, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr null, ptr %i.w, align 8, !tbaa !179
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge = phi ptr [ %i.i, %bb.e ], [ %i.g, %bb.d ]
  store ptr %storemerge, ptr %i.e, align 8, !tbaa !248
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %.val37 = load i64, ptr %2, align 8, !tbaa !61
  %i.x = and i64 %.val37, 32512
  %i.y = icmp eq i64 %i.x, 11008
  br i1 %i.y, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !370
  %i.ab = getelementptr i8, ptr %0, i64 288
  %.val.i.i38 = load ptr, ptr %i.ab, align 8, !tbaa !122
  %i.ac = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i38, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.ac, i32 noundef range(i32 0, 115) 43) #29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !13
  %i.ae = load i32, ptr %3, align 4, !tbaa !51
  %i.af = sext i32 %i.ae to i64
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !61
  %i.ah = and i64 %i.ag, 32767
  %i.ai = shl nsw i64 %i.af, 15
  %i.aj = or disjoint i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.ac, align 8, !tbaa !61
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !208 ; 2 uses
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !208
end_hunk_4
