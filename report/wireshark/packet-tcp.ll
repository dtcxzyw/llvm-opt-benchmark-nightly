Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-tcp?download=true
inline.NumInlined: 257
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dissect_tcp:bb.a

bb.bu:                                            ; preds = %bb.br, %bb.bt, %bb.bs, %bb.bh, %bb.bg
  %i.pr = call i32 @tvb_reported_length(ptr noundef %0) ; 9 uses
  %i.ps = getelementptr i8, ptr %1, i64 272       ; 2 uses
  %i.pt = load i8, ptr %i.ps, align 8, !range !7, !noundef !8
  %i.pu = trunc nuw i8 %i.pt to i1
  br i1 %i.pu, label %bb.cf, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.pv = getelementptr i8, ptr %1, i64 276
  %i.pw = load i8, ptr %i.pv, align 4
  %i.px = and i8 %i.pw, 1
  %.not1166 = icmp eq i8 %i.px, 0
  br i1 %.not1166, label %bb.bw, label %bb.cf

bb.bw:                                            ; preds = %bb.bv
  %i.py = load i8, ptr %i.eg, align 8
  %i.pz = zext i8 %i.py to i32                    ; 2 uses
  %i.qa = icmp ult i32 %i.pr, %i.pz
  br i1 %i.qa, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.qb = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %.01042, ptr noundef %1, ptr noundef nonnull @ei_tcp_short_segment, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.964) ; 0 uses
  %i.qc = getelementptr i8, ptr %i.w, i64 18
  store i8 0, ptr %i.qc, align 2
  br label %bb.cg

bb.by:                                            ; preds = %bb.bw
  %i.qd = sub nuw i32 %i.pr, %i.pz                ; 2 uses
  %i.qe = getelementptr i8, ptr %i.w, i64 20      ; 3 uses
  store i32 %i.qd, ptr %i.qe, align 4
  %i.qf = getelementptr i8, ptr %i.w, i64 18
  store i8 1, ptr %i.qf, align 2
  %i.qg = load ptr, ptr %i.q, align 8
  %i.qh = load i32, ptr @hf_tcp_len, align 4
  %i.qi = call ptr @proto_tree_add_uint(ptr noundef %i.qg, i32 noundef %i.qh, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.qd) ; 2 uses
  %.not.i1260 = icmp eq ptr %i.qi, null
  br i1 %.not.i1260, label %proto_item_set_generated.exit1262, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qj = getelementptr i8, ptr %i.qi, i64 40
  %i.qk = load ptr, ptr %i.qj, align 8            ; 2 uses
  %.not5.i1261 = icmp eq ptr %i.qk, null
  br i1 %.not5.i1261, label %proto_item_set_generated.exit1262, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ql = getelementptr i8, ptr %i.qk, i64 28     ; 2 uses
  %i.qm = load i32, ptr %i.ql, align 4
  %i.qn = or i32 %i.qm, 2
  store i32 %i.qn, ptr %i.ql, align 4
  br label %proto_item_set_generated.exit1262

proto_item_set_generated.exit1262:                ; preds = %bb.by, %bb.bz, %bb.ca
  %i.qo = load i8, ptr @tcp_analyze_seq, align 1, !range !7, !noundef !8
  %i.qp = trunc nuw i8 %i.qo to i1
  br i1 %i.qp, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %proto_item_set_generated.exit1262
  %i.qq = call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef 14, i32 noundef 2)
  br i1 %i.qq, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.qr = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 14)
  %i.qs = zext i16 %i.qr to i32
  %i.qt = getelementptr i8, ptr %i.w, i64 24      ; 2 uses
  store i32 %i.qs, ptr %i.qt, align 8
  %i.qu = load ptr, ptr %i.ek, align 8
  %i.qv = getelementptr i8, ptr %i.qu, i64 53
  %i.qw = load i16, ptr %i.qv, align 1
  %i.qx = and i16 %i.qw, 8
  %.not1167 = icmp eq i16 %i.qx, 0
  %i.qy = call ptr @wmem_file_scope()
  %i.qz = load i32, ptr @proto_tcp, align 4
  %i.ra = load i8, ptr %i.di, align 8
  %i.rb = zext i8 %i.ra to i32
  %i.rc = call ptr @p_get_proto_data(ptr noundef %i.qy, ptr noundef %1, i32 noundef %i.qz, i32 noundef %i.rb) ; 3 uses
  br i1 %.not1167, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.rd = load i32, ptr %i.w, align 8
  %i.re = load i32, ptr %i.dx, align 8
  %i.rf = load i32, ptr %i.qe, align 4
  %i.rg = load i16, ptr %i.ec, align 2
  %i.rh = load i32, ptr %i.qt, align 8
  call fastcc void @tcp_analyze_sequence_number(ptr noundef %1, i32 noundef %i.rd, i32 noundef %i.re, i32 noundef %i.rf, i16 noundef zeroext %i.rg, i32 noundef %i.rh, ptr noundef %.410831368, ptr noundef %i.rc)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %bb.cd, %bb.cb, %proto_item_set_generated.exit1262
  %.41077 = phi ptr [ %.31076, %proto_item_set_generated.exit1262 ], [ %i.rc, %bb.cd ], [ %.31076, %bb.cb ], [ %i.rc, %bb.cc ]
  %i.ri = load i32, ptr %i.dv, align 4
  %i.rj = load i32, ptr %i.qe, align 4
  %i.rk = add i32 %i.rj, %i.ri
  br label %bb.cg

bb.cf:                                            ; preds = %bb.bv, %bb.bu
  %i.rl = getelementptr i8, ptr %i.w, i64 18
  store i8 0, ptr %i.rl, align 2
  br label %bb.cg

bb.cg:                                            ; preds = %bb.bx, %bb.ce, %bb.cf
  %.01097 = phi i32 [ 0, %bb.cf ], [ 0, %bb.bx ], [ %i.rk, %bb.ce ] ; 9 uses
  %.51078 = phi ptr [ %.31076, %bb.cf ], [ %.31076, %bb.bx ], [ %.41077, %bb.ce ] ; 4 uses
  %i.rm = load i16, ptr %i.ec, align 2
  %i.rn = and i16 %i.rm, 2
  %i.ro = icmp eq i16 %i.rn, 0
  %or.cond4 = and i1 %i.mu, %i.ro
  br i1 %or.cond4, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  %i.rp = getelementptr i8, ptr %.410831368, i64 293
  %i.rq = load i8, ptr %i.rp, align 1, !range !7, !noundef !8
  %i.rr = trunc nuw i8 %i.rq to i1
  br i1 %i.rr, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.rs = getelementptr i8, ptr %.410831368, i64 294
  %i.rt = load i8, ptr %i.rs, align 2, !range !7, !noundef !8
  %i.ru = trunc nuw i8 %i.rt to i1
  br i1 %i.ru, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.rv = getelementptr i8, ptr %.410831368, i64 295
  %i.rw = load i8, ptr %i.rv, align 1, !range !7, !noundef !8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ci, %bb.cj, %bb.cg
  %i.rx = phi i8 [ 0, %bb.cg ], [ 1, %bb.ci ], [ %i.rw, %bb.cj ]
  %i.ry = getelementptr i8, ptr %i.w, i64 33      ; 5 uses
  store i8 %i.rx, ptr %i.ry, align 1
  %i.rz = load ptr, ptr %i.u, align 8
  %i.sa = call fastcc ptr @tcp_flags_to_str(ptr noundef %i.rz, ptr noundef %i.w) ; 2 uses
  %i.sb = load ptr, ptr %i.u, align 8
  %i.sc = call ptr @wmem_strbuf_new(ptr noundef %i.sb, ptr noundef nonnull @.str.2) ; 28 uses
  %i.sd = load i16, ptr %i.ec, align 2
  %i.se = and i16 %i.sd, 2048
  %.not.peel.i = icmp eq i16 %i.se, 0
  br i1 %.not.peel.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @wmem_strbuf_append_c(ptr noundef %i.sc, i8 noundef signext 82)
  br label %.peel.next.i

bb.cm:                                            ; preds = %bb.ck
  call void @wmem_strbuf_append(ptr noundef %i.sc, ptr noundef nonnull @.str.1005)
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.cm, %bb.cl
  %i.sf = load i16, ptr %i.ec, align 2
  %i.sg = and i16 %i.sf, 1024
  %.not.peel22.i = icmp eq i16 %i.sg, 0
  br i1 %.not.peel22.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.peel.next.i
  call void @wmem_strbuf_append_c(ptr noundef %i.sc, i8 noundef signext 82)
  br label %.peel.next20.i

bb.co:                                            ; preds = %.peel.next.i
  call void @wmem_strbuf_append(ptr noundef %i.sc, ptr noundef nonnull @.str.1005)
  br label %.peel.next20.i

.peel.next20.i:                                   ; preds = %bb.co, %bb.cn
  %i.sh = load i16, ptr %i.ec, align 2
  %i.si = and i16 %i.sh, 512
  %.not.peel30.i = icmp eq i16 %i.si, 0
  br i1 %.not.peel30.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.peel.next20.i
  call void @wmem_strbuf_append_c(ptr noundef %i.sc, i8 noundef signext 82)
  br label %.peel.next28.i

bb.cq:                                            ; preds = %.peel.next20.i
  call void @wmem_strbuf_append(ptr noundef %i.sc, ptr noundef nonnull @.str.1005)
  br label %.peel.next28.i

.peel.next28.i:                                   ; preds = %bb.cq, %bb.cp
  %i.sj = load i8, ptr %i.ry, align 1, !range !7, !noundef !8
  %i.sk = trunc nuw i8 %i.sj to i1
  br i1 %i.sk, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %.peel.next28.i
  %i.sl = load i16, ptr %i.ec, align 2
  %i.sm = and i16 %i.sl, 256
  %.not.peel38.i = icmp eq i16 %i.sm, 0
  br i1 %.not.peel38.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @wmem_strbuf_append_c(ptr noundef %i.sc, i8 noundef signext 65)
  br label %.peel.next36.i

bb.ct:                                            ; preds = %bb.cr
  call void @wmem_strbuf_append(ptr noundef %i.sc, ptr noundef nonnull @.str.1005)
  br label %.peel.next36.i

bb.cu:                                            ; preds = %.peel.next28.i
  call void @wmem_strbuf_append_c(ptr noundef %i.sc, i8 noundef signext 45)
  br label %.peel.next36.i

.peel.next36.i:                                   ; preds = %bb.cu, %bb.ct, %bb.cs
  %i.sn = load i8, ptr %i.ry, align 1, !range !7, !noundef !8
  %i.so = trunc nuw i8 %i.sn to i1
  %.val.peel47.i = load i16, ptr %i.ec, align 2   ; 3 uses
  br i1 %i.so, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %.peel.next36.i
  %i.sp = and i16 %.val.peel47.i, 128
  %.not.peel46.i = icmp eq i16 %i.sp, 0
  br i1 %.not.peel46.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @wmem_strbuf_append_c(ptr noundef %i.sc, i8 noundef signext 87)
  br label %.peel.next44.i

bb.cx:                                            ; preds = %bb.cv
  call void @wmem_strbuf_append(ptr noundef %i.sc, ptr noundef nonnull @.str.1005)
  br label %.peel.next44.i

bb.cy:                                            ; preds = %.peel.next36.i
  %i.sq = lshr i16 %.val.peel47.i, 6
  %15 = trunc i16 %i.sq to i8
  %spec.select.i.peel48.i = and i8 %15, 4
  %16 = trunc i16 %.val.peel47.i to i8
  %17 = lshr i8 %16, 6
  %.2.i.peel49.i = or disjoint i8 %spec.select.i.peel48.i, %17
  %i.sr = zext nneg i8 %.2.i.peel49.i to i64
  %i.ss = getelementptr i8, ptr @tcp_flags_to_str_first_letter.digits, i64 %i.sr
  %i.st = load i8, ptr %i.ss, align 1
  call void @wmem_strbuf_append_c(ptr noundef %i.sc, i8 noundef signext %i.st)
  br label %.peel.next44.i

.peel.next44.i:                                   ; preds = %bb.cy, %bb.cx, %bb.cw
  %i.su = load i8, ptr %i.ry, align 1, !range !7, !noundef !8
  %i.sv = trunc nuw i8 %i.su to i1
  br i1 %i.sv, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %.peel.next44.i
  call void @wmem_strbuf_append_c(ptr noundef %i.sc, i8 noundef signext 45)
  br label %bb.dd

bb.da:                                            ; preds = %.peel.next44.i
  %i.sw = load i16, ptr %i.ec, align 2
  %i.sx = and i16 %i.sw, 64
  %.not.i1263 = icmp eq i16 %i.sx, 0
  br i1 %.not.i1263, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @wmem_strbuf_append_c(ptr noundef %i.sc, i8 noundef signext 69)
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  call void @wmem_strbuf_append(ptr noundef %i.sc, ptr noundef nonnull @.str.1005)
  br label %bb.dd

bb.dd:                                            ; preds = %bb.cz, %bb.db, %bb.dc
  %i.sy = load i16, ptr %i.ec, align 2
  %i.sz = and i16 %i.sy, 32
  %.not.i1263.1 = icmp eq i16 %i.sz, 0
  br i1 %.not.i1263.1, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @wmem_strbuf_append_c(ptr noundef %i.sc, i8 noundef signext 85)
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd
  call void @wmem_strbuf_append(ptr noundef %i.sc, ptr noundef nonnull @.str.1005)
  br label %bb.dg

bb.dg:                                            ; preds = %bb.de, %bb.df
  %i.ta = load i16, ptr %i.ec, align 2
  %i.tb = and i16 %i.ta, 16
  %.not.i1263.2 = icmp eq i16 %i.tb, 0
  br i1 %.not.i1263.2, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @wmem_strbuf_append_c(ptr noundef %i.sc, i8 noundef signext 65)
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  call void @wmem_strbuf_append(ptr noundef %i.sc, ptr noundef nonnull @.str.1005)
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.di
  %i.tc = load i16, ptr %i.ec, align 2
  %i.td = and i16 %i.tc, 8
  %.not.i1263.3 = icmp eq i16 %i.td, 0
  br i1 %.not.i1263.3, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @wmem_strbuf_append_c(ptr noundef %i.sc, i8 noundef signext 80)
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  call void @wmem_strbuf_append(ptr noundef %i.sc, ptr noundef nonnull @.str.1005)
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dk, %bb.dl
  %i.te = load i16, ptr %i.ec, align 2
  %i.tf = and i16 %i.te, 4
  %.not.i1263.4 = icmp eq i16 %i.tf, 0
  br i1 %.not.i1263.4, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @wmem_strbuf_append_c(ptr noundef %i.sc, i8 noundef signext 82)
  br label %bb.dp

bb.do:                                            ; preds = %bb.dm
  call void @wmem_strbuf_append(ptr noundef %i.sc, ptr noundef nonnull @.str.1005)
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dn, %bb.do
  %i.tg = load i16, ptr %i.ec, align 2
  %i.th = and i16 %i.tg, 2
  %.not.i1263.5 = icmp eq i16 %i.th, 0
  br i1 %.not.i1263.5, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @wmem_strbuf_append_c(ptr noundef %i.sc, i8 noundef signext 83)
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dp
  call void @wmem_strbuf_append(ptr noundef %i.sc, ptr noundef nonnull @.str.1005)
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dq, %bb.dr
  %i.ti = load i16, ptr %i.ec, align 2
  %i.tj = and i16 %i.ti, 1
  %.not.i1263.6 = icmp eq i16 %i.tj, 0
  br i1 %.not.i1263.6, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @wmem_strbuf_append_c(ptr noundef %i.sc, i8 noundef signext 70)
  br label %tcp_flags_to_str_first_letter.exit

bb.du:                                            ; preds = %bb.ds
  call void @wmem_strbuf_append(ptr noundef %i.sc, ptr noundef nonnull @.str.1005)
  br label %tcp_flags_to_str_first_letter.exit

tcp_flags_to_str_first_letter.exit:               ; preds = %bb.du, %bb.dt
  %i.tk = call ptr @wmem_strbuf_finalize(ptr noundef %i.sc)
  %i.tl = load ptr, ptr %i.ar, align 8
  call void (ptr, i32, ptr, ...) @col_append_lstr(ptr noundef %i.tl, i32 noundef 25, ptr noundef nonnull @.str.965, ptr noundef %i.sa, ptr noundef nonnull @.str.966, ptr noundef nonnull inttoptr (i64 -1 to ptr))
  %i.tm = load i32, ptr %i.dv, align 4
  %.val1241 = load ptr, ptr %i.ar, align 8
  call void @col_append_str_uint(ptr noundef %.val1241, i32 noundef 25, ptr noundef nonnull @.str.967, i32 noundef %i.tm, ptr noundef nonnull @.str.854)
  %i.tn = load i16, ptr %i.ec, align 2
  %i.to = and i16 %i.tn, 16
  %.not1168 = icmp eq i16 %i.to, 0
  br i1 %.not1168, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %tcp_flags_to_str_first_letter.exit
  %i.tp = load i32, ptr %i.dy, align 4
  %.val1240 = load ptr, ptr %i.ar, align 8
  call void @col_append_str_uint(ptr noundef %.val1240, i32 noundef 25, ptr noundef nonnull @.str.968, i32 noundef %i.tp, ptr noundef nonnull @.str.854)
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %tcp_flags_to_str_first_letter.exit
  %i.tq = load i8, ptr @tcp_summary_in_tree, align 1, !range !7, !noundef !8
  %i.tr = trunc nuw i8 %i.tq to i1
  br i1 %i.tr, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.ts = load ptr, ptr %i.q, align 8
  %i.tt = load i32, ptr %i.dv, align 4
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ts, ptr noundef nonnull @.str.969, i32 noundef %i.tt)
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.tu = icmp eq ptr %.01042, null               ; 2 uses
  %or.cond6 = or i1 %.11071, %i.tu
  br i1 %or.cond6, label %proto_item_set_hidden.exit1266, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.tv = load i8, ptr @tcp_relative_seq, align 1, !range !7, !noundef !8
  %i.tw = trunc nuw i8 %i.tv to i1
  %i.tx = load i8, ptr @tcp_analyze_seq, align 1, !range !7
  %i.ty = trunc nuw i8 %i.tx to i1
  %or.cond8 = select i1 %i.tw, i1 %i.ty, i1 false
  %i.tz = load i32, ptr @hf_tcp_seq, align 4      ; 2 uses
  %i.ua = load i32, ptr %i.dv, align 4            ; 3 uses
  br i1 %or.cond8, label %bb.ea, label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  %i.ub = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef nonnull %.01042, i32 noundef %i.tz, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef %i.ua, ptr noundef nonnull @.str.970, i32 noundef %i.ua) ; 0 uses
  %i.uc = load i32, ptr @hf_tcp_seq_abs, align 4
  %i.ud = load i32, ptr %i.w, align 8
  %i.ue = call ptr @proto_tree_add_uint(ptr noundef nonnull %.01042, i32 noundef %i.uc, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef %i.ud) ; 2 uses
  %i.uf = load i8, ptr @read_seq_as_syn_cookie, align 1, !range !7, !noundef !8
  %i.ug = trunc nuw i8 %i.uf to i1
  br i1 %i.ug, label %bb.eb, label %proto_item_set_hidden.exit1266

bb.eb:                                            ; preds = %bb.ea
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ue, ptr noundef nonnull @.str.971)
  %i.uh = load i32, ptr @ett_tcp_syncookie, align 4
  %i.ui = call ptr @proto_item_add_subtree(ptr noundef %i.ue, i32 noundef %i.uh) ; 3 uses
  %i.uj = load i32, ptr @hf_tcp_syncookie_time, align 4
  %i.uk = call ptr @proto_tree_add_bits_item(ptr noundef %i.ui, i32 noundef %i.uj, ptr noundef %0, i32 noundef 32, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.ul = load i32, ptr @hf_tcp_syncookie_mss, align 4
  %i.um = call ptr @proto_tree_add_bits_item(ptr noundef %i.ui, i32 noundef %i.ul, ptr noundef %0, i32 noundef 37, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.un = load i32, ptr @hf_tcp_syncookie_hash, align 4
  %i.uo = call ptr @proto_tree_add_item(ptr noundef %i.ui, i32 noundef %i.un, ptr noundef %0, i32 noundef 5, i32 noundef 3, i32 noundef 0) ; 0 uses
  br label %proto_item_set_hidden.exit1266

bb.ec:                                            ; preds = %bb.dz
  %i.up = call ptr @proto_tree_add_uint(ptr noundef nonnull %.01042, i32 noundef %i.tz, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef %i.ua) ; 0 uses
  %i.uq = load i32, ptr @hf_tcp_seq_abs, align 4
  %i.ur = load i32, ptr %i.w, align 8
  %i.us = call ptr @proto_tree_add_uint(ptr noundef nonnull %.01042, i32 noundef %i.uq, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef %i.ur) ; 2 uses
  %.not.i1264 = icmp eq ptr %i.us, null
  br i1 %.not.i1264, label %proto_item_set_hidden.exit1266, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ut = getelementptr i8, ptr %i.us, i64 40
  %i.uu = load ptr, ptr %i.ut, align 8            ; 2 uses
  %.not5.i1265 = icmp eq ptr %i.uu, null
  br i1 %.not5.i1265, label %proto_item_set_hidden.exit1266, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.uv = getelementptr i8, ptr %i.uu, i64 28     ; 2 uses
  %i.uw = load i32, ptr %i.uv, align 4
  %i.ux = or i32 %i.uw, 1
  store i32 %i.ux, ptr %i.uv, align 4
  br label %proto_item_set_hidden.exit1266

proto_item_set_hidden.exit1266:                   ; preds = %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dy
  %i.uy = load i8, ptr %i.eg, align 8             ; 2 uses
end_hunk_0
begin_hunk_1_@dissect_tcp:bb.a
  %.pre1441.pre = load ptr, ptr %i.q, align 8     ; 4 uses
  br i1 %.not1176, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.yz = load i32, ptr %i.dy, align 4
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.pre1441.pre, ptr noundef nonnull @.str.975, i32 noundef %i.yz)
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.za = getelementptr i8, ptr %i.w, i64 18
  %i.zb = load i8, ptr %i.za, align 2, !range !7, !noundef !8
  %i.zc = trunc nuw i8 %i.zb to i1
  br i1 %i.zc, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.zd = getelementptr i8, ptr %i.w, i64 20
  %i.ze = load i32, ptr %i.zd, align 4
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.pre1441.pre, ptr noundef nonnull @.str.976, i32 noundef %i.ze)
  br label %bb.fh

bb.fh:                                            ; preds = %._crit_edge, %bb.ff, %bb.fg
  %i.zf = phi ptr [ %.pre1440, %._crit_edge ], [ %.pre1441.pre, %bb.ff ], [ %.pre1441.pre, %bb.fg ]
  %i.zg = load i8, ptr %i.eg, align 8
  %i.zh = zext i8 %i.zg to i32
  call void @proto_item_set_len(ptr noundef %i.zf, i32 noundef %i.zh)
  %i.zi = getelementptr i8, ptr %i.w, i64 18      ; 7 uses
  %i.zj = load i8, ptr %i.zi, align 2, !range !7, !noundef !8
  %i.zk = trunc nuw i8 %i.zj to i1
  br i1 %i.zk, label %bb.fi, label %proto_item_set_generated.exit1282

bb.fi:                                            ; preds = %bb.fh
  %i.zl = load i8, ptr @tcp_relative_seq, align 1, !range !7, !noundef !8
  %i.zm = trunc nuw i8 %i.zl to i1
  %i.zn = load i8, ptr @tcp_analyze_seq, align 1, !range !7
  %i.zo = trunc nuw i8 %i.zn to i1
  %or.cond12 = select i1 %i.zm, i1 %i.zo, i1 false
  %i.zp = load i16, ptr %i.ec, align 2
  %i.zq = and i16 %i.zp, 3
  %.not1178 = icmp eq i16 %i.zq, 0                ; 2 uses
  %i.zr = load i32, ptr @hf_tcp_nxtseq, align 4   ; 4 uses
  br i1 %or.cond12, label %bb.fj, label %bb.fm

bb.fj:                                            ; preds = %bb.fi
  br i1 %.not1178, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.zs = add i32 %.01097, 1                      ; 2 uses
  %i.zt = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %.01042, i32 noundef %i.zr, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.zs, ptr noundef nonnull @.str.970, i32 noundef %i.zs)
  br label %bb.fp

bb.fl:                                            ; preds = %bb.fj
  %i.zu = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %.01042, i32 noundef %i.zr, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %.01097, ptr noundef nonnull @.str.970, i32 noundef %.01097)
  br label %bb.fp

bb.fm:                                            ; preds = %bb.fi
  br i1 %.not1178, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.zv = add i32 %.01097, 1
  %i.zw = call ptr @proto_tree_add_uint(ptr noundef %.01042, i32 noundef %i.zr, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.zv)
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  %i.zx = call ptr @proto_tree_add_uint(ptr noundef %.01042, i32 noundef %i.zr, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %.01097)
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fn, %bb.fo, %bb.fk, %bb.fl
  %.01045 = phi ptr [ %i.zt, %bb.fk ], [ %i.zu, %bb.fl ], [ %i.zw, %bb.fn ], [ %i.zx, %bb.fo ] ; 2 uses
  %.not.i1280 = icmp eq ptr %.01045, null
  br i1 %.not.i1280, label %proto_item_set_generated.exit1282, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.zy = getelementptr i8, ptr %.01045, i64 40
  %i.zz = load ptr, ptr %i.zy, align 8            ; 2 uses
  %.not5.i1281 = icmp eq ptr %i.zz, null
  br i1 %.not5.i1281, label %proto_item_set_generated.exit1282, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aaa = getelementptr i8, ptr %i.zz, i64 28    ; 2 uses
  %i.aab = load i32, ptr %i.aaa, align 4
  %i.aac = or i32 %i.aab, 2
  store i32 %i.aac, ptr %i.aaa, align 4
  br label %proto_item_set_generated.exit1282

proto_item_set_generated.exit1282:                ; preds = %bb.fr, %bb.fq, %bb.fp, %bb.fh
  %i.aad = load i32, ptr @hf_tcp_ack, align 4
  %i.aae = load i32, ptr %i.dy, align 4
  %i.aaf = call ptr @proto_tree_add_uint(ptr noundef %.01042, i32 noundef %i.aad, ptr noundef %0, i32 noundef 8, i32 noundef 4, i32 noundef %i.aae) ; 3 uses
  %i.aag = load i32, ptr @hf_tcp_ack_abs, align 4
  %i.aah = load i32, ptr %i.dx, align 8
  %i.aai = call ptr @proto_tree_add_uint(ptr noundef %.01042, i32 noundef %i.aag, ptr noundef %0, i32 noundef 8, i32 noundef 4, i32 noundef %i.aah) ; 2 uses
  %i.aaj = load i16, ptr %i.ec, align 2
  %i.aak = and i16 %i.aaj, 16
  %.not1179 = icmp eq i16 %i.aak, 0
  br i1 %.not1179, label %bb.gb, label %bb.fs

bb.fs:                                            ; preds = %proto_item_set_generated.exit1282
  %i.aal = load i8, ptr @tcp_relative_seq, align 1, !range !7, !noundef !8
  %i.aam = trunc nuw i8 %i.aal to i1
  %i.aan = load i8, ptr @tcp_analyze_seq, align 1, !range !7 ; 4 uses
  %i.aao = trunc nuw i8 %i.aan to i1
  %or.cond14 = select i1 %i.aam, i1 %i.aao, i1 false
  br i1 %or.cond14, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aaf, ptr noundef nonnull @.str.977)
  %.pre1442.a = load i8, ptr @tcp_analyze_seq, align 1, !range !7
  br label %proto_item_set_hidden.exit1285

bb.fu:                                            ; preds = %bb.fs
  %.not.i1283 = icmp eq ptr %i.aai, null
  br i1 %.not.i1283, label %proto_item_set_hidden.exit1285, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.aap = getelementptr i8, ptr %i.aai, i64 40
  %i.aaq = load ptr, ptr %i.aap, align 8          ; 2 uses
  %.not5.i1284 = icmp eq ptr %i.aaq, null
  br i1 %.not5.i1284, label %proto_item_set_hidden.exit1285, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.aar = getelementptr i8, ptr %i.aaq, i64 28   ; 2 uses
  %i.aas = load i32, ptr %i.aar, align 4
  %i.aat = or i32 %i.aas, 1
  store i32 %i.aat, ptr %i.aar, align 4
  br label %proto_item_set_hidden.exit1285

proto_item_set_hidden.exit1285:                   ; preds = %bb.fw, %bb.fv, %bb.fu, %bb.ft
  %i.aau = phi i8 [ %i.aan, %bb.fw ], [ %i.aan, %bb.fv ], [ %i.aan, %bb.fu ], [ %.pre1442.a, %bb.ft ]
  %i.aav = load i16, ptr %i.ec, align 2
  %i.aaw = and i16 %i.aav, 2
  %i.aax = icmp ne i16 %i.aaw, 0
  %i.aay = trunc nuw i8 %i.aau to i1
  %or.cond16 = select i1 %i.aax, i1 %i.aay, i1 false
  br i1 %or.cond16, label %bb.fx, label %.critedge1391

bb.fx:                                            ; preds = %proto_item_set_hidden.exit1285
  %i.aaz = load i8, ptr @tcp_relative_seq, align 1, !range !7, !noundef !8
  %i.aba = trunc nuw i8 %i.aaz to i1
  br i1 %i.aba, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.abb = load i32, ptr %i.dy, align 4
  %i.abc = icmp ugt i32 %i.abb, 1
  br i1 %i.abc, label %.critedge1391.sink.split, label %.thread1376

bb.fz:                                            ; preds = %bb.fx
  br i1 %i.mu, label %bb.ga, label %.critedge1391

bb.ga:                                            ; preds = %bb.fz
  %i.abd = load i32, ptr %i.dy, align 4
  %i.abe = getelementptr i8, ptr %.410831368, i64 184
  %i.abf = load ptr, ptr %i.abe, align 8
  %i.abg = load i32, ptr %i.abf, align 8
  %i.abh = sub i32 %i.abd, %i.abg
  %i.abi = icmp ugt i32 %i.abh, 1
  br i1 %i.abi, label %.critedge1391.sink.split, label %.thread1376.thread

.thread1376:                                      ; preds = %bb.fy
  br i1 %i.mu, label %.thread1376.thread, label %.critedge1391

.thread1376.thread:                               ; preds = %bb.ga, %.thread1376
  %i.abj = getelementptr i8, ptr %.410831368, i64 290
  %i.abk = load i8, ptr %i.abj, align 2, !range !7, !noundef !8
  %i.abl = trunc nuw i8 %i.abk to i1
  br i1 %i.abl, label %.critedge1391.sink.split, label %.critedge1391

bb.gb:                                            ; preds = %proto_item_set_generated.exit1282
  %i.abm = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 8)
  %.not1180 = icmp eq i32 %i.abm, 0
  br i1 %.not1180, label %.critedge1391, label %.critedge1391.sink.split

.critedge1391.sink.split:                         ; preds = %bb.gb, %.thread1376.thread, %bb.fy, %bb.ga
  %ei_tcp_ack_nonzero.sink = phi ptr [ @ei_tcp_analysis_tfo_ignored, %.thread1376.thread ], [ @ei_tcp_analysis_tfo_ack, %bb.fy ], [ @ei_tcp_analysis_tfo_ack, %bb.ga ], [ @ei_tcp_ack_nonzero, %bb.gb ]
  %i.abn = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.aaf, ptr noundef nonnull %ei_tcp_ack_nonzero.sink) ; 0 uses
  br label %.critedge1391

.critedge1391:                                    ; preds = %.critedge1391.sink.split, %bb.fz, %bb.gb, %proto_item_set_hidden.exit1285, %.thread1376, %.thread1376.thread
  br i1 %.not1136, label %proto_item_set_generated.exit1288, label %bb.gc

bb.gc:                                            ; preds = %.critedge1391
  %i.abo = load i32, ptr @hf_tcp_hdr_len, align 4
  %i.abp = load i8, ptr %i.eg, align 8
  %i.abq = zext i8 %i.abp to i32                  ; 3 uses
  %i.abr = lshr i32 %i.abq, 2
  %i.abs = call ptr (ptr, i32, ptr, i32, i32, i32, i32, ptr, ...) @proto_tree_add_uint_bits_format_value(ptr noundef %.01042, i32 noundef %i.abo, ptr noundef %0, i32 noundef 96, i32 noundef 4, i32 noundef %i.abq, i32 noundef 0, ptr noundef nonnull @.str.973, i32 noundef %i.abq, i32 noundef %i.abr) ; 0 uses
  %i.abt = load i32, ptr @hf_tcp_flags, align 4
  %i.abu = load i16, ptr %i.ec, align 2
  %i.abv = zext i16 %i.abu to i32                 ; 2 uses
  %i.abw = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %.01042, i32 noundef %i.abt, ptr noundef %0, i32 noundef 12, i32 noundef 2, i32 noundef %i.abv, ptr noundef nonnull @.str.978, i32 noundef %i.abv, ptr noundef %i.sa)
  %i.abx = load i32, ptr @ett_tcp_flags, align 4
  %i.aby = call ptr @proto_item_add_subtree(ptr noundef %i.abw, i32 noundef %i.abx) ; 12 uses
  %i.abz = load i32, ptr @hf_tcp_flags_res, align 4
  %i.aca = load i16, ptr %i.ec, align 2
  %i.acb = zext i16 %i.aca to i64
  %i.acc = call ptr @proto_tree_add_boolean(ptr noundef %i.aby, i32 noundef %i.abz, ptr noundef %0, i32 noundef 12, i32 noundef 1, i64 noundef %i.acb) ; 0 uses
  %i.acd = load i8, ptr %i.ry, align 1, !range !7, !noundef !8
  %i.ace = trunc nuw i8 %i.acd to i1
  br i1 %i.ace, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %.val = load i16, ptr %i.ec, align 2            ; 2 uses
  %i.acf = lshr i16 %.val, 6
  %i.acg = trunc i16 %i.acf to i8
  %spec.select.i.a = and i8 %i.acg, 4             ; 2 uses
  %18 = trunc i16 %.val to i8
  %19 = lshr i8 %18, 6
  %.2.i = or disjoint i8 %spec.select.i.a, %19
  %i.ach = load i32, ptr @hf_tcp_flags_ace, align 4
  %i.aci = zext nneg i8 %.2.i to i32              ; 4 uses
  %.not1181.not.not = icmp eq i8 %spec.select.i.a, 0
  %i.acj = select i1 %.not1181.not.not, i32 48, i32 49
  %i.ack = and i32 %i.aci, 2
  %.not1182 = icmp eq i32 %i.ack, 0
  %i.acl = select i1 %.not1182, i32 48, i32 49
  %i.acm = and i32 %i.aci, 1
  %i.acn = or disjoint i32 %i.acm, 48
  %i.aco = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.aby, i32 noundef %i.ach, ptr noundef %0, i32 noundef 12, i32 noundef 2, i32 noundef %i.aci, ptr noundef nonnull @.str.979, i32 noundef %i.acj, i32 noundef %i.acl, i32 noundef %i.acn, i32 noundef %i.aci) ; 0 uses
  br label %bb.gf

bb.ge:                                            ; preds = %bb.gc
  %i.acp = load i32, ptr @hf_tcp_flags_ae, align 4
  %i.acq = load i16, ptr %i.ec, align 2
  %i.acr = zext i16 %i.acq to i64
  %i.acs = call ptr @proto_tree_add_boolean(ptr noundef %i.aby, i32 noundef %i.acp, ptr noundef %0, i32 noundef 12, i32 noundef 1, i64 noundef %i.acr) ; 0 uses
  %i.act = load i32, ptr @hf_tcp_flags_cwr, align 4
  %i.acu = load i16, ptr %i.ec, align 2
  %i.acv = zext i16 %i.acu to i64
  %i.acw = call ptr @proto_tree_add_boolean(ptr noundef %i.aby, i32 noundef %i.act, ptr noundef %0, i32 noundef 13, i32 noundef 1, i64 noundef %i.acv) ; 0 uses
  %i.acx = load i32, ptr @hf_tcp_flags_ece, align 4
  %i.acy = load i16, ptr %i.ec, align 2
  %i.acz = zext i16 %i.acy to i64
  %i.ada = call ptr @proto_tree_add_boolean(ptr noundef %i.aby, i32 noundef %i.acx, ptr noundef %0, i32 noundef 13, i32 noundef 1, i64 noundef %i.acz) ; 0 uses
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %i.adb = load i32, ptr @hf_tcp_flags_urg, align 4
  %i.adc = load i16, ptr %i.ec, align 2
  %i.add = zext i16 %i.adc to i64
  %i.ade = call ptr @proto_tree_add_boolean(ptr noundef %i.aby, i32 noundef %i.adb, ptr noundef %0, i32 noundef 13, i32 noundef 1, i64 noundef %i.add) ; 0 uses
  %i.adf = load i32, ptr @hf_tcp_flags_ack, align 4
  %i.adg = load i16, ptr %i.ec, align 2
  %i.adh = zext i16 %i.adg to i64
  %i.adi = call ptr @proto_tree_add_boolean(ptr noundef %i.aby, i32 noundef %i.adf, ptr noundef %0, i32 noundef 13, i32 noundef 1, i64 noundef %i.adh) ; 0 uses
  %i.adj = load i32, ptr @hf_tcp_flags_push, align 4
  %i.adk = load i16, ptr %i.ec, align 2
  %i.adl = zext i16 %i.adk to i64
  %i.adm = call ptr @proto_tree_add_boolean(ptr noundef %i.aby, i32 noundef %i.adj, ptr noundef %0, i32 noundef 13, i32 noundef 1, i64 noundef %i.adl) ; 0 uses
  %i.adn = load i32, ptr @hf_tcp_flags_reset, align 4
  %i.ado = load i16, ptr %i.ec, align 2
  %i.adp = zext i16 %i.ado to i64
  %i.adq = call ptr @proto_tree_add_boolean(ptr noundef %i.aby, i32 noundef %i.adn, ptr noundef %0, i32 noundef 13, i32 noundef 1, i64 noundef %i.adp) ; 3 uses
  %i.adr = load i32, ptr @hf_tcp_flags_syn, align 4
  %i.ads = load i16, ptr %i.ec, align 2
  %i.adt = zext i16 %i.ads to i64
  %i.adu = call ptr @proto_tree_add_boolean(ptr noundef %i.aby, i32 noundef %i.adr, ptr noundef %0, i32 noundef 13, i32 noundef 1, i64 noundef %i.adt) ; 3 uses
  %i.adv = load i32, ptr @hf_tcp_flags_fin, align 4
  %i.adw = load i16, ptr %i.ec, align 2
  %i.adx = zext i16 %i.adw to i64
  %i.ady = call ptr @proto_tree_add_boolean(ptr noundef %i.aby, i32 noundef %i.adv, ptr noundef %0, i32 noundef 13, i32 noundef 1, i64 noundef %i.adx) ; 3 uses
  %i.adz = load i32, ptr @hf_tcp_flags_str, align 4
  %i.aea = call ptr @proto_tree_add_string(ptr noundef %i.aby, i32 noundef %i.adz, ptr noundef %0, i32 noundef 12, i32 noundef 2, ptr noundef %i.tk) ; 4 uses
  %.not.i1286 = icmp eq ptr %i.aea, null
  br i1 %.not.i1286, label %proto_item_set_generated.exit1288, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aeb = getelementptr i8, ptr %i.aea, i64 40
  %i.aec = load ptr, ptr %i.aeb, align 8          ; 2 uses
  %.not5.i1287 = icmp eq ptr %i.aec, null
  br i1 %.not5.i1287, label %proto_item_set_generated.exit1288, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.aed = getelementptr i8, ptr %i.aec, i64 28   ; 2 uses
  %i.aee = load i32, ptr %i.aed, align 4
  %i.aef = or i32 %i.aee, 2
  store i32 %i.aef, ptr %i.aed, align 4
  br label %proto_item_set_generated.exit1288

proto_item_set_generated.exit1288:                ; preds = %bb.gh, %bb.gg, %bb.gf, %.critedge1391
  %.01092 = phi ptr [ null, %.critedge1391 ], [ %i.adu, %bb.gf ], [ %i.adu, %bb.gg ], [ %i.adu, %bb.gh ] ; 3 uses
  %.01091 = phi ptr [ null, %.critedge1391 ], [ %i.ady, %bb.gf ], [ %i.ady, %bb.gg ], [ %i.ady, %bb.gh ]
  %.01090 = phi ptr [ null, %.critedge1391 ], [ %i.adq, %bb.gf ], [ %i.adq, %bb.gg ], [ %i.adq, %bb.gh ] ; 2 uses
  %.11046 = phi ptr [ %i.aaf, %.critedge1391 ], [ null, %bb.gf ], [ %i.aea, %bb.gg ], [ %i.aea, %bb.gh ]
  %i.aeg = load i16, ptr %i.ec, align 2           ; 2 uses
  %i.aeh = zext i16 %i.aeg to i32                 ; 2 uses
  %i.aei = and i32 %i.aeh, 2
  %.not1184 = icmp eq i32 %i.aei, 0
  br i1 %.not1184, label %bb.gq, label %bb.gi

bb.gi:                                            ; preds = %proto_item_set_generated.exit1288
  %i.aej = and i32 %i.aeh, 16
  %.not1185 = icmp eq i32 %i.aej, 0
  %i.aek = getelementptr i8, ptr %.410831368, i64 288 ; 2 uses
  br i1 %.not1185, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.ael = load i16, ptr %i.y, align 4
  %i.aem = zext i16 %i.ael to i32
  %i.aen = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %.01092, ptr noundef nonnull @ei_tcp_connection_synack, ptr noundef nonnull @.str.980, i32 noundef %i.aem) ; 0 uses
  %i.aeo = load i16, ptr %i.y, align 4
  store i16 %i.aeo, ptr %i.aek, align 8
  br label %bb.gl

bb.gk:                                            ; preds = %bb.gi
  %i.aep = load i16, ptr %i.aa, align 2
  %i.aeq = zext i16 %i.aep to i32
  %i.aer = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %.01092, ptr noundef nonnull @ei_tcp_connection_syn, ptr noundef nonnull @.str.981, i32 noundef %i.aeq) ; 0 uses
  %i.aes = load i16, ptr %i.aa, align 2
  store i16 %i.aes, ptr %i.aek, align 8
  %i.aet = getelementptr i8, ptr %.410831368, i64 224
  %i.aeu = getelementptr i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.aet, ptr noundef align 8 dereferenceable(16) %i.aeu, i64 16, i1 false)
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %i.aev = load i8, ptr @tcp_desegment, align 1, !range !7, !noundef !8
  %i.aew = trunc nuw i8 %i.aev to i1
  %i.aex = load i8, ptr @tcp_reassemble_out_of_order, align 1, !range !7
  %i.aey = trunc nuw i8 %i.aex to i1
  %or.cond20 = select i1 %i.aew, i1 %i.aey, i1 false
  %or.cond22 = and i1 %i.mu, %or.cond20
  br i1 %or.cond22, label %bb.gm, label %bb.gp

bb.gm:                                            ; preds = %bb.gl
  %i.aez = load ptr, ptr %i.ek, align 8
  %i.afa = getelementptr i8, ptr %i.aez, i64 53
  %i.afb = load i16, ptr %i.afa, align 1
  %i.afc = and i16 %i.afb, 8
  %.not1186 = icmp eq i16 %i.afc, 0
  br i1 %.not1186, label %bb.gn, label %bb.gp

bb.gn:                                            ; preds = %bb.gm
  %i.afd = getelementptr i8, ptr %.410831368, i64 176
  %i.afe = load ptr, ptr %i.afd, align 8
  %i.aff = getelementptr i8, ptr %i.afe, i64 44   ; 2 uses
  %i.afg = load i32, ptr %i.aff, align 4
  %i.afh = icmp eq i32 %i.afg, 0
  br i1 %i.afh, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.afi = load i32, ptr %i.dv, align 4
  %i.afj = add i32 %i.afi, 1
  store i32 %i.afj, ptr %i.aff, align 4
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gn, %bb.go, %bb.gm, %bb.gl
  %i.afk = getelementptr i8, ptr %.410831368, i64 176
  %i.afl = load ptr, ptr %i.afk, align 8
  %i.afm = getelementptr i8, ptr %i.afl, i64 25
  store i8 1, ptr %i.afm, align 1
  %.pre1443.a = load i16, ptr %i.ec, align 2
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %proto_item_set_generated.exit1288
  %i.afn = phi i16 [ %.pre1443.a, %bb.gp ], [ %i.aeg, %proto_item_set_generated.exit1288 ]
  %i.afo = and i16 %i.afn, 1
  %.not1187 = icmp eq i16 %i.afo, 0
  br i1 %.not1187, label %bb.gt, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.afp = call ptr @expert_add_info(ptr noundef %1, ptr noundef %.01091, ptr noundef nonnull @ei_tcp_connection_fin) ; 0 uses
  %i.afq = getelementptr i8, ptr %.410831368, i64 184
  %i.afr = load ptr, ptr %i.afq, align 8
  %i.afs = getelementptr i8, ptr %i.afr, i64 26
  %i.aft = load i8, ptr %i.afs, align 2, !range !7, !noundef !8
  %i.afu = trunc nuw i8 %i.aft to i1
  br i1 %i.afu, label %.sink.split1679.a, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.afv = getelementptr i8, ptr %.410831368, i64 176
  %i.afw = load ptr, ptr %i.afv, align 8
  %i.afx = getelementptr i8, ptr %i.afw, i64 26
  store i8 1, ptr %i.afx, align 2
  br label %.sink.split1679.a

.sink.split1679.a:                                ; preds = %bb.gr, %bb.gs
  %ei_tcp_connection_fin_active.sink = phi ptr [ @ei_tcp_connection_fin_active, %bb.gs ], [ @ei_tcp_connection_fin_passive, %bb.gr ]
  %i.afy = call ptr @expert_add_info(ptr noundef %1, ptr noundef %.11046, ptr noundef nonnull %ei_tcp_connection_fin_active.sink) ; 0 uses
  br label %bb.gt

bb.gt:                                            ; preds = %.sink.split1679.a, %bb.gq
  %i.afz = load i16, ptr %i.ec, align 2
  %i.aga = and i16 %i.afz, 4
  %.not1188 = icmp eq i16 %i.aga, 0
  br i1 %.not1188, label %bb.he, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.agb = call ptr @expert_add_info(ptr noundef %1, ptr noundef %.01090, ptr noundef nonnull @ei_tcp_connection_rst) ; 0 uses
  %i.agc = load ptr, ptr %i.ek, align 8
  %i.agd = getelementptr i8, ptr %i.agc, i64 53
  %i.age = load i16, ptr %i.agd, align 1
  %i.agf = and i16 %i.age, 8
  %.not1189 = icmp eq i16 %i.agf, 0
  br i1 %.not1189, label %bb.gv, label %bb.hc

bb.gv:                                            ; preds = %bb.gu
  %i.agg = getelementptr i8, ptr %.410831368, i64 176
  %i.agh = load ptr, ptr %i.agg, align 8          ; 3 uses
  %i.agi = getelementptr i8, ptr %i.agh, i64 26
  %i.agj = load i8, ptr %i.agi, align 2, !range !7, !noundef !8
  %i.agk = trunc nuw i8 %i.agj to i1
  br i1 %i.agk, label %bb.hc, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.agl = getelementptr i8, ptr %.410831368, i64 184
  %i.agm = load ptr, ptr %i.agl, align 8          ; 3 uses
  %i.agn = getelementptr i8, ptr %i.agm, i64 26
  %i.ago = load i8, ptr %i.agn, align 2, !range !7, !noundef !8
  %i.agp = trunc nuw i8 %i.ago to i1
  br i1 %i.agp, label %bb.hc, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
end_hunk_1
begin_hunk_2_@tcp_analyze_sequence_number:bb.a
  %indvars.iv.next123.i.1 = add nsw i64 %indvars.iv122.i, -2 ; 4 uses
  %i.arc = getelementptr [8 x i8], ptr %i.arb, i64 %indvars.iv.next123.i.1
  %i.ard = load i32, ptr %i.arc, align 8
  %i.are = getelementptr [8 x i8], ptr %i.arb, i64 %indvars.iv.next123.i
  store i32 %i.ard, ptr %i.are, align 8
  %i.arf = load ptr, ptr %i.ne, align 8
  %i.arg = getelementptr i8, ptr %i.arf, i64 32
  %i.arh = load ptr, ptr %i.arg, align 8
  %i.ari = getelementptr i8, ptr %i.arh, i64 112  ; 2 uses
  %i.arj = getelementptr [8 x i8], ptr %i.ari, i64 %indvars.iv.next123.i.1
  %i.ark = getelementptr i8, ptr %i.arj, i64 4
  %i.arl = load i32, ptr %i.ark, align 4
  %i.arm = getelementptr [8 x i8], ptr %i.ari, i64 %indvars.iv.next123.i
  %i.arn = getelementptr i8, ptr %i.arm, i64 4
  store i32 %i.arl, ptr %i.arn, align 4
  %i.aro = icmp sgt i64 %indvars.iv.next123.i.1, %i.apo
  br i1 %i.aro, label %.lr.ph106.i, label %._crit_edge107.loopexit.i, !llvm.loop !47

._crit_edge107.loopexit.i:                        ; preds = %.lr.ph106.i, %.lr.ph106.i.prol.loopexit
  %.pre.i = load ptr, ptr %i.ne, align 8
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre.i, i64 32
  %.pre132.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %._crit_edge107.i

._crit_edge107.i:                                 ; preds = %._crit_edge107.loopexit.i, %.preheader.i
  %i.arp = phi ptr [ %.pre132.i, %._crit_edge107.loopexit.i ], [ %i.aov, %.preheader.i ]
  %i.arq = getelementptr i8, ptr %i.arp, i64 112
  %i.arr = zext nneg i32 %.085.lcssa142.i to i64  ; 2 uses
  %i.ars = getelementptr [8 x i8], ptr %i.arq, i64 %i.arr
  store i32 %1, ptr %i.ars, align 8
  %i.art = load ptr, ptr %i.ne, align 8
  %i.aru = getelementptr i8, ptr %i.art, i64 32
  %i.arv = load ptr, ptr %i.aru, align 8
  %i.arw = getelementptr [8 x i8], ptr %i.arv, i64 %i.arr
  %i.arx = getelementptr i8, ptr %i.arw, i64 116
  store i32 %.1643, ptr %i.arx, align 4
  %i.ary = add nuw nsw i32 %i.aoy, 1              ; 2 uses
  br label %bb.hh

bb.hg:                                            ; preds = %bb.he
  %i.arz = getelementptr i8, ptr %i.apa, i64 4
  %i.asa = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %.1643, ptr %i.arz, align 4
  %i.asb = add nuw nsw i32 %i.aoy, 1
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %._crit_edge107.i
  %.08598.i = phi i32 [ %i.asa, %bb.hg ], [ %.085.lcssa142.i, %._crit_edge107.i ] ; 3 uses
  %i.asc = phi i32 [ %i.asb, %bb.hg ], [ %i.ary, %._crit_edge107.i ]
  %.08695.i = phi i32 [ 0, %bb.hg ], [ 1, %._crit_edge107.i ]
  %i.asd = phi i32 [ %i.aoy, %bb.hg ], [ %i.ary, %._crit_edge107.i ] ; 2 uses
  %i.ase = add nuw i32 %.08598.i, 1               ; 4 uses
  %i.asf = icmp slt i32 %i.ase, %i.asd
  br i1 %i.asf, label %.lr.ph111.i, label %.critedge3.i

.lr.ph111.i:                                      ; preds = %bb.hh
  %i.asg = zext nneg i32 %.08598.i to i64
  %i.ash = sext i32 %i.ase to i64
  %i.asi = xor i32 %.08598.i, -1
  %i.asj = add i32 %i.asd, %i.asi                 ; 2 uses
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hl, %.lr.ph111.i
  %indvars.iv125.i = phi i64 [ %i.ash, %.lr.ph111.i ], [ %indvars.iv.next126.i, %bb.hl ] ; 2 uses
  %.082108.i = phi i32 [ 0, %.lr.ph111.i ], [ %i.asy, %bb.hl ] ; 2 uses
  %i.ask = load ptr, ptr %i.ne, align 8
  %i.asl = getelementptr i8, ptr %i.ask, i64 32
  %i.asm = load ptr, ptr %i.asl, align 8
  %i.asn = getelementptr i8, ptr %i.asm, i64 112  ; 2 uses
  %i.aso = getelementptr [8 x i8], ptr %i.asn, i64 %indvars.iv125.i ; 2 uses
  %i.asp = load i32, ptr %i.aso, align 8
  %i.asq = sub i32 %i.asp, %.1643
  %i.asr = icmp slt i32 %i.asq, 1
  br i1 %i.asr, label %bb.hj, label %.critedge3.i

bb.hj:                                            ; preds = %bb.hi
  %i.ass = getelementptr i8, ptr %i.aso, i64 4
  %i.ast = load i32, ptr %i.ass, align 4          ; 2 uses
  %i.asu = sub i32 %.1643, %i.ast
  %i.asv = icmp slt i32 %i.asu, 0
  br i1 %i.asv, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  %i.asw = getelementptr [8 x i8], ptr %i.asn, i64 %i.asg
  %i.asx = getelementptr i8, ptr %i.asw, i64 4
  store i32 %i.ast, ptr %i.asx, align 4
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %i.asy = add nuw i32 %.082108.i, 1              ; 2 uses
  %indvars.iv.next126.i = add nsw i64 %indvars.iv125.i, 1
  %exitcond128.not.i = icmp eq i32 %i.asy, %i.asj
  br i1 %exitcond128.not.i, label %.critedge3.i, label %bb.hi, !llvm.loop !48

.critedge3.i:                                     ; preds = %bb.hl, %bb.hi, %bb.hh
  %.082.lcssa.i = phi i32 [ 0, %bb.hh ], [ %.082108.i, %bb.hi ], [ %i.asj, %bb.hl ] ; 3 uses
  %i.asz = sub i32 %.08695.i, %.082.lcssa.i
  %i.ata = sub i32 %i.asc, %.082.lcssa.i          ; 2 uses
  %i.atb = icmp slt i32 %i.ase, %i.ata
  br i1 %i.atb, label %.lr.ph116.preheader.i, label %._crit_edge117.i

.lr.ph116.preheader.i:                            ; preds = %.critedge3.i
  %i.atc = sext i32 %i.ase to i64
  %i.atd = sext i32 %i.ata to i64
  br label %.lr.ph116.i

._crit_edge117.i:                                 ; preds = %bb.hn, %.critedge3.i
  %i.ate = load ptr, ptr %i.ne, align 8
  %i.atf = getelementptr i8, ptr %i.ate, i64 32
  %i.atg = load ptr, ptr %i.atf, align 8
  %i.ath = getelementptr i8, ptr %i.atg, i64 14   ; 2 uses
  %i.ati = load i8, ptr %i.ath, align 2
  %i.atj = trunc i32 %i.asz to i8
  %i.atk = add i8 %i.ati, %i.atj
  store i8 %i.atk, ptr %i.ath, align 2
  br label %tcp_track_contiguity.exit

.lr.ph116.i:                                      ; preds = %bb.hn, %.lr.ph116.preheader.i
  %indvars.iv129.i = phi i64 [ %i.atc, %.lr.ph116.preheader.i ], [ %indvars.iv.next130.i, %bb.hn ] ; 4 uses
  %i.atl = trunc nsw i64 %indvars.iv129.i to i32
  %i.atm = add i32 %.082.lcssa.i, %i.atl          ; 2 uses
  %i.atn = icmp slt i32 %i.atm, 100
  br i1 %i.atn, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %.lr.ph116.i
  %i.ato = load ptr, ptr %i.ne, align 8
  %i.atp = getelementptr i8, ptr %i.ato, i64 32
  %i.atq = load ptr, ptr %i.atp, align 8
  %i.atr = getelementptr i8, ptr %i.atq, i64 112  ; 2 uses
  %i.ats = sext i32 %i.atm to i64                 ; 2 uses
  %i.att = getelementptr [8 x i8], ptr %i.atr, i64 %i.ats
  %i.atu = load i32, ptr %i.att, align 8
  %i.atv = getelementptr [8 x i8], ptr %i.atr, i64 %indvars.iv129.i
  store i32 %i.atu, ptr %i.atv, align 8
  %i.atw = load ptr, ptr %i.ne, align 8
  %i.atx = getelementptr i8, ptr %i.atw, i64 32
  %i.aty = load ptr, ptr %i.atx, align 8
  %i.atz = getelementptr i8, ptr %i.aty, i64 112  ; 2 uses
  %i.aua = getelementptr [8 x i8], ptr %i.atz, i64 %i.ats
  %i.aub = getelementptr i8, ptr %i.aua, i64 4
  %i.auc = load i32, ptr %i.aub, align 4
  %i.aud = getelementptr [8 x i8], ptr %i.atz, i64 %indvars.iv129.i
  %i.aue = getelementptr i8, ptr %i.aud, i64 4
  store i32 %i.auc, ptr %i.aue, align 4
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %.lr.ph116.i
  %indvars.iv.next130.i = add nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %exitcond971.not = icmp eq i64 %indvars.iv.next130.i, %i.atd
  br i1 %exitcond971.not, label %._crit_edge117.i, label %.lr.ph116.i, !llvm.loop !49

tcp_track_contiguity.exit:                        ; preds = %._crit_edge117.i, %._crit_edge.i, %bb.he, %.critedge842, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef ptr @tcp_flags_to_str(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(64) ptr @wmem_alloc(ptr noundef %0, i64 noundef 64) #24 ; 6 uses
  store i8 0, ptr %i.a, align 1
  %i.b = getelementptr i8, ptr %1, i64 33
  %i.c = getelementptr i8, ptr %1, i64 34         ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.f
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.02226 = phi ptr [ %i.a, %bb.a ], [ %.2, %bb.f ] ; 3 uses
  %i.d = load i16, ptr %i.c, align 2
  %i.e = zext i16 %i.d to i32
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
  %i.g = shl nuw nsw i32 1, %i.f
  %i.h = and i32 %i.g, %i.e
  %.not24 = icmp eq i32 %i.h, 0
  br i1 %.not24, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.a, align 1
  %.not25 = icmp eq i8 %i.i, 0
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @g_stpcpy(ptr noundef %.02226, ptr noundef nonnull @.str.1002)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi ptr [ %i.j, %bb.d ], [ %.02226, %bb.c ]
  %i.k = getelementptr [4 x i8], ptr @tcp_flags_to_str.flags, i64 %indvars.iv
  %i.l = tail call ptr @g_stpcpy(ptr noundef %.1, ptr noundef %i.k)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.2 = phi ptr [ %i.l, %bb.e ], [ %.02226, %bb.b ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i8, ptr %i.b, align 1, !range !7, !noundef !8
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  %i.o = select i1 %i.n, i64 6, i64 9
  %i.p = icmp samesign ult i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %bb.b, label %bb.g, !llvm.loop !52

bb.g:                                             ; preds = %bb.f
  %.pre29 = load i16, ptr %i.c, align 2           ; 3 uses
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = lshr i16 %.pre29, 6
  %2 = trunc i16 %i.q to i8
  %spec.select.i = and i8 %2, 4
  %3 = trunc i16 %.pre29 to i8
  %4 = lshr i8 %3, 6
  %.2.i = or disjoint i8 %spec.select.i, %4
  %i.r = tail call ptr @g_stpcpy(ptr noundef %.2, ptr noundef nonnull @.str.1003)
  %5 = zext nneg i8 %.2.i to i64
  %i.s = getelementptr [2 x i8], ptr @tcp_flags_to_str.digit, i64 %5
  %i.t = tail call ptr @g_stpcpy(ptr noundef %i.r, ptr noundef %i.s)
  %.pre = load i16, ptr %i.c, align 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = phi i16 [ %.pre, %bb.h ], [ %.pre29, %bb.g ]
  %.3 = phi ptr [ %i.t, %bb.h ], [ %.2, %bb.g ]   ; 3 uses
  %i.v = and i16 %i.u, 3584
  %.not = icmp eq i16 %i.v, 0
  %.pre31 = load i8, ptr %i.a, align 1            ; 2 uses
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not23 = icmp eq i8 %.pre31, 0
  br i1 %.not23, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = tail call ptr @g_stpcpy(ptr noundef %.3, ptr noundef nonnull @.str.1002)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.4 = phi ptr [ %i.w, %bb.k ], [ %.3, %bb.j ]   ; 2 uses
  %i.x = tail call ptr @g_stpcpy(ptr noundef %.4, ptr noundef nonnull @.str.61) ; 0 uses
  %.pre30 = load i8, ptr %i.a, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.y = phi i8 [ %.pre30, %bb.l ], [ %.pre31, %bb.i ]
  %.5 = phi ptr [ %.4, %bb.l ], [ %.3, %bb.i ]
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aa = tail call ptr @g_stpcpy(ptr noundef %.5, ptr noundef nonnull @.str.1004) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid
declare void @col_append_lstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bits_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_bits_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @except_setup_clean(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @tcp_tap_cleanup(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr @tcp_tap, align 4
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @tap_queue_packet(i32 noundef %i.a, ptr noundef %i.b, ptr noundef %i.d)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @nstime_is_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @try_val_to_str_ext(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_int_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_int(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @in_cksum_ret_partial(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @in_cksum_shouldbe(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_checksum(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_prepend_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_stpcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append_c(ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_finalize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_str_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_get_protocol_short_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @find_protocol_by_id(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @dissector_get_uint_handle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @dissector_handle_get_protocol_short_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector_with_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memcpy(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wmem_strong_hash(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_array_new(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wmem_array_append(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_none_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wmem_array_get_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_array_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_list_frame_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_get_str(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_itree_find_intervals(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint64(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_itree_insert(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2
end_hunk_2
