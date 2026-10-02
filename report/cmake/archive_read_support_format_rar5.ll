Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_rar5?download=true
inline.NumInlined: 224
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@uncompress_file:bb.a
  br i1 %i.ok, label %.lr.ph831, label %.preheader._crit_edge.i, !llvm.loop !3

.lr.ph831:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.035.i34830 = phi i32 [ %.035.i34, %.preheader.i ], [ %.035.i34829, %.preheader.i.preheader ] ; 3 uses
  %i.ol = sext i32 %.035.i34830 to i64
  %i.om = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %i.ol
  %i.on = load i32, ptr %i.om, align 4, !tbaa !75
  %i.oo = icmp sgt i32 %i.on, %i.nr
  br i1 %i.oo, label %..preheader._crit_edge.i_crit_edge, label %.preheader.i, !llvm.loop !3

..preheader._crit_edge.i_crit_edge:               ; preds = %.lr.ph831
  br label %.preheader._crit_edge.i, !llvm.loop !3

.preheader._crit_edge.i:                          ; preds = %.preheader.i, %..preheader._crit_edge.i_crit_edge, %.preheader.i.preheader
  %.034.i = phi i32 [ 15, %.preheader.i.preheader ], [ %.035.i34830, %..preheader._crit_edge.i_crit_edge ], [ 15, %.preheader.i ] ; 3 uses
  %i.op = add nsw i32 %.034.i, %i.no              ; 2 uses
  %i.oq = ashr i32 %i.op, 3
  %i.or = add nsw i32 %i.oq, %i.mv
  store i32 %i.or, ptr %i.mu, align 4, !tbaa !85
  %i.os = trunc i32 %i.op to i8
  %i.ot = and i8 %i.os, 7
  store i8 %i.ot, ptr %i.mz, align 8, !tbaa !86
  %i.ou = sext i32 %.034.i to i64                 ; 2 uses
  %i.ov = getelementptr [4 x i8], ptr %i.mf, i64 %i.ou
  %i.ow = getelementptr i8, ptr %i.ov, i64 -4
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !75
  %i.oy = sub nsw i32 %i.nr, %i.ox
  %i.oz = sub nsw i32 16, %.034.i
  %i.pa = ashr i32 %i.oy, %i.oz
  %i.pb = getelementptr inbounds [4 x i8], ptr %i.mh, i64 %i.ou
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !75
  %i.pd = add i32 %i.pa, %i.pc                    ; 2 uses
  %i.pe = load i32, ptr %i.lu, align 8, !tbaa !89
  %.not38.i = icmp ult i32 %i.pd, %i.pe
  %spec.store.select.i = select i1 %.not38.i, i32 %i.pd, i32 0
  %i.pf = zext i32 %spec.store.select.i to i64
  %i.pg = getelementptr inbounds nuw [2 x i8], ptr %i.mi, i64 %i.pf
  br label %bb.bs

decode_number.exit:                               ; preds = %bb.bp
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.55) #14
  br label %do_uncompress_file.exit.thread

bb.bs:                                            ; preds = %.preheader._crit_edge.i, %bb.br
  %.180.ph.in = phi ptr [ %i.pg, %.preheader._crit_edge.i ], [ %i.oj, %bb.br ]
  %.180.ph = load i16, ptr %.180.ph.in, align 2, !tbaa !87 ; 6 uses
  %i.ph = zext nneg i16 %.180.ph to i32           ; 2 uses
  %i.pi = icmp ult i16 %.180.ph, 256
  br i1 %i.pi, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.pj = load i64, ptr %i.md, align 8, !tbaa !77
  %i.pk = add nsw i64 %i.ml, 1
  store i64 %i.pk, ptr %i.li, align 8, !tbaa !76
  %i.pl = add nsw i64 %i.ml, %i.pj
  %i.pm = trunc nuw i16 %.180.ph to i8
  %i.pn = load ptr, ptr %i.me, align 8, !tbaa !65
  %i.po = and i64 %i.pl, %i.lf
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.po
  store i8 %i.pm, ptr %i.pp, align 1, !tbaa !32
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.dm, %copy_string.exit157.thread.i.i, %bb.dd, %parse_filter.exit.i.i, %bb.cq, %bb.bt
  %i.pq = load i64, ptr %i.li, align 8, !tbaa !76 ; 2 uses
  %i.pr = load i64, ptr %i.lj, align 8, !tbaa !55
  %i.ps = sub nsw i64 %i.pq, %i.pr
  %i.pt = load i64, ptr %i.lk, align 8, !tbaa !78
  %i.pu = ashr i64 %i.pt, 1
  %i.pv = icmp sgt i64 %i.ps, %i.pu
  br i1 %i.pv, label %do_uncompress_block.exit.i, label %bb.bl

bb.bu:                                            ; preds = %bb.bs
  %i.pw = icmp ugt i16 %.180.ph, 261
  br i1 %i.pw, label %bb.bv, label %bb.cr

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.px = add i16 %.180.ph, -262                  ; 3 uses
  %i.py = zext i16 %i.px to i32                   ; 3 uses
  %i.pz = icmp ult i16 %i.px, 8
  br i1 %i.pz, label %decode_code_length.exit.thread182.i.i, label %bb.bw

decode_code_length.exit.thread182.i.i:            ; preds = %bb.bv
  %.015.i.i.i = add nuw nsw i32 %i.py, 2
  br label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.qa = lshr i32 %i.py, 2                       ; 2 uses
  %i.qb = add nsw i32 %i.qa, -1                   ; 2 uses
  %i.qc = and i32 %i.py, 3
  %i.qd = or disjoint i32 %i.qc, 4
  %i.qe = shl i32 %i.qd, %i.qb
  %.01523.i.i.i = add nsw i32 %i.qe, 2
  %i.qf = icmp ugt i16 %i.px, 71
  br i1 %i.qf, label %decode_code_length.exit.thread.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.qg = load i32, ptr %i.ls, align 4, !tbaa !85 ; 2 uses
  %i.qh = sext i32 %i.qg to i64                   ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i64 %i.mo, %i.qh
  br i1 %.not.i.i.i.i.i, label %decode_code_length.exit.i.i, label %read_bits_16.exit.i.i.i.i

read_bits_16.exit.i.i.i.i:                        ; preds = %bb.bx
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 22, ptr noundef nonnull @.str.55) #14, !inline_history !118
  br label %decode_code_length.exit.thread.i.i

decode_code_length.exit.i.i:                      ; preds = %bb.bx
  %i.qi = getelementptr inbounds i8, ptr %.1, i64 %i.qh ; 3 uses
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !32
  %i.qk = zext i8 %i.qj to i32
  %i.ql = shl nuw nsw i32 %i.qk, 16
  %i.qm = getelementptr i8, ptr %i.qi, i64 1
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !32
  %i.qo = zext i8 %i.qn to i32
  %i.qp = shl nuw nsw i32 %i.qo, 8
  %i.qq = or disjoint i32 %i.qp, %i.ql
  %i.qr = getelementptr i8, ptr %i.qi, i64 2
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !32
  %i.qt = zext i8 %i.qs to i32
  %i.qu = or disjoint i32 %i.qq, %i.qt
  %i.qv = load i8, ptr %i.lr, align 8, !tbaa !86
  %i.qw = sext i8 %i.qv to i32                    ; 2 uses
  %i.qx = sub nsw i32 8, %i.qw
  %i.qy = lshr i32 %i.qu, %i.qx
  %i.qz = add nsw i32 %i.qb, %i.qw                ; 2 uses
  %i.ra = ashr i32 %i.qz, 3
  %i.rb = add nsw i32 %i.ra, %i.qg
  store i32 %i.rb, ptr %i.ls, align 4, !tbaa !85
  %i.rc = trunc i32 %i.qz to i8
  %i.rd = and i8 %i.rc, 7
  store i8 %i.rd, ptr %i.lr, align 8, !tbaa !86
  %i.re = and i32 %i.qy, 65535
  %i.rf = sub nsw i32 17, %i.qa
  %i.rg = lshr i32 %i.re, %i.rf
  %.1.i.i.i14 = add nsw i32 %.01523.i.i.i, %i.rg  ; 2 uses
  %i.rh = icmp eq i32 %.1.i.i.i14, -1
  br i1 %i.rh, label %decode_code_length.exit.thread.i.i, label %bb.by

decode_code_length.exit.thread.i.i:               ; preds = %decode_code_length.exit.i.i, %bb.bw, %read_bits_16.exit.i.i.i.i
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 22, ptr noundef nonnull @.str.56) #14, !inline_history !118
  br label %.thread207.i.i

bb.by:                                            ; preds = %decode_code_length.exit.i.i, %decode_code_length.exit.thread182.i.i
  %.118.i184.i.i = phi i32 [ %.015.i.i.i, %decode_code_length.exit.thread182.i.i ], [ %.1.i.i.i14, %decode_code_length.exit.i.i ] ; 4 uses
  %i.ri = call fastcc i32 @decode_number(ptr noundef %0, ptr noundef nonnull %i.ly, ptr noundef readonly %.1, ptr noundef %i.g), !inline_history !118
  %.not129.i.i = icmp eq i32 %i.ri, 0
  br i1 %.not129.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 22, ptr noundef nonnull @.str.57) #14, !inline_history !118
  br label %.thread207.i.i

bb.ca:                                            ; preds = %bb.by
  %i.rj = load i16, ptr %i.g, align 2, !tbaa !87  ; 3 uses
  %i.rk = zext i16 %i.rj to i32                   ; 3 uses
  %i.rl = icmp ult i16 %i.rj, 4
  br i1 %i.rl, label %.thread203.i.i, label %bb.cb

.thread203.i.i:                                   ; preds = %bb.ca
  %.0.i86.i = add nuw nsw i32 %i.rk, 1
  br label %bb.co

bb.cb:                                            ; preds = %bb.ca
  %i.rm = lshr i32 %i.rk, 1                       ; 4 uses
  %i.rn = add nsw i32 %i.rm, -1                   ; 3 uses
  %i.ro = and i32 %i.rk, 1
  %i.rp = or disjoint i32 %i.ro, 2
  %i.rq = shl i32 %i.rp, %i.rn
  %.0187.i.i = add i32 %i.rq, 1                   ; 3 uses
  %i.rr = icmp ugt i16 %i.rj, 9
  br i1 %i.rr, label %bb.cc, label %bb.ck

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %.not131.i.i = icmp eq i32 %i.rn, 4
  br i1 %.not131.i.i, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.rs = load i32, ptr %i.ls, align 4, !tbaa !85 ; 2 uses
  %i.rt = sext i32 %i.rs to i64                   ; 2 uses
  %i.ru = load i64, ptr %i.lt, align 8, !tbaa !84
  %.not.i.i.i18 = icmp sgt i64 %i.ru, %i.rt
  br i1 %.not.i.i.i18, label %bb.ce, label %read_bits_32.exit.i.i

read_bits_32.exit.i.i:                            ; preds = %bb.cd
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 22, ptr noundef nonnull @.str.59) #14, !inline_history !118
  br label %.thread194.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.rv = getelementptr inbounds i8, ptr %.1, i64 %i.rt ; 2 uses
  %i.rw = load i32, ptr %i.rv, align 1
  %i.rx = call i32 @llvm.bswap.i32(i32 %i.rw)
  %i.ry = load i8, ptr %i.lr, align 8, !tbaa !86
  %i.rz = sext i8 %i.ry to i32                    ; 3 uses
  %i.sa = shl i32 %i.rx, %i.rz
  %i.sb = getelementptr i8, ptr %i.rv, i64 4
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !32
  %i.sd = zext i8 %i.sc to i32
  %i.se = sub nsw i32 8, %i.rz
  %i.sf = lshr i32 %i.sd, %i.se
  %i.sg = or i32 %i.sf, %i.sa
  %i.sh = add nsw i32 %i.rm, -5
  %i.si = add nsw i32 %i.sh, %i.rz                ; 2 uses
  %i.sj = ashr i32 %i.si, 3
  %i.sk = add nsw i32 %i.sj, %i.rs
  store i32 %i.sk, ptr %i.ls, align 4, !tbaa !85
  %i.sl = trunc i32 %i.si to i8
  %i.sm = and i8 %i.sl, 7
  store i8 %i.sm, ptr %i.lr, align 8, !tbaa !86
  %i.sn = sub nsw i32 37, %i.rm
  %i.so = lshr i32 %i.sg, %i.sn
  %i.sp = shl i32 %i.so, 4
  %i.sq = add i32 %i.sp, %.0187.i.i
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cc
  %.1.i85.i = phi i32 [ %i.sq, %bb.ce ], [ %.0187.i.i, %bb.cc ] ; 2 uses
  %i.sr = call fastcc i32 @decode_number(ptr noundef %0, ptr noundef nonnull %i.lz, ptr noundef readonly %.1, ptr noundef %i.h), !inline_history !118
  %.not133.i.i = icmp eq i32 %i.sr, 0
  br i1 %.not133.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 22, ptr noundef nonnull @.str.57) #14, !inline_history !118
  br label %.thread194.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.ss = load i16, ptr %i.h, align 2, !tbaa !87
  %i.st = zext i16 %i.ss to i32                   ; 2 uses
  %i.su = sub nuw nsw i32 2147483646, %i.st
  %.not134.i.i = icmp slt i32 %.1.i85.i, %i.su
  br i1 %.not134.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.58) #14, !inline_history !118
  br label %.thread194.i.i

.thread194.i.i:                                   ; preds = %bb.ci, %bb.cg, %read_bits_32.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  br label %.thread207.i.i

bb.cj:                                            ; preds = %bb.ch
  %i.sv = add nsw i32 %.1.i85.i, %i.st
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cb
  %i.sw = load i32, ptr %i.ls, align 4, !tbaa !85 ; 2 uses
  %i.sx = sext i32 %i.sw to i64                   ; 2 uses
  %i.sy = load i64, ptr %i.lt, align 8, !tbaa !84
  %.not.i.i.i.i = icmp sgt i64 %i.sy, %i.sx
  br i1 %.not.i.i.i.i, label %read_consume_bits.exit.thread.i.i, label %read_consume_bits.exit.i.i

read_consume_bits.exit.thread.i.i:                ; preds = %bb.ck
  %i.sz = getelementptr inbounds i8, ptr %.1, i64 %i.sx ; 3 uses
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !32
  %i.tb = zext i8 %i.ta to i32
  %i.tc = shl nuw nsw i32 %i.tb, 16
  %i.td = getelementptr i8, ptr %i.sz, i64 1
  %i.te = load i8, ptr %i.td, align 1, !tbaa !32
  %i.tf = zext i8 %i.te to i32
  %i.tg = shl nuw nsw i32 %i.tf, 8
  %i.th = or disjoint i32 %i.tg, %i.tc
  %i.ti = getelementptr i8, ptr %i.sz, i64 2
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !32
  %i.tk = zext i8 %i.tj to i32
  %i.tl = or disjoint i32 %i.th, %i.tk
  %i.tm = load i8, ptr %i.lr, align 8, !tbaa !86
  %i.tn = sext i8 %i.tm to i32                    ; 2 uses
  %i.to = sub nsw i32 8, %i.tn
  %i.tp = lshr i32 %i.tl, %i.to
  %i.tq = add nsw i32 %i.rn, %i.tn                ; 2 uses
  %i.tr = ashr i32 %i.tq, 3
  %i.ts = add nsw i32 %i.tr, %i.sw
  store i32 %i.ts, ptr %i.ls, align 4, !tbaa !85
  %i.tt = trunc i32 %i.tq to i8
  %i.tu = and i8 %i.tt, 7
  store i8 %i.tu, ptr %i.lr, align 8, !tbaa !86
  %i.tv = and i32 %i.tp, 65535
  %i.tw = sub nuw nsw i32 17, %i.rm
  %i.tx = lshr i32 %i.tv, %i.tw
  %i.ty = add nsw i32 %i.tx, %.0187.i.i
  br label %bb.cl

read_consume_bits.exit.i.i:                       ; preds = %bb.ck
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 22, ptr noundef nonnull @.str.55) #14, !inline_history !118
  br label %.thread207.i.i

bb.cl:                                            ; preds = %read_consume_bits.exit.thread.i.i, %bb.cj
  %.4.i.i = phi i32 [ %i.sv, %bb.cj ], [ %i.ty, %read_consume_bits.exit.thread.i.i ] ; 6 uses
  %i.tz = icmp sgt i32 %.4.i.i, 256
  br i1 %i.tz, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.ua = add nuw nsw i32 %.118.i184.i.i, 1
  %i.ub = icmp samesign ugt i32 %.4.i.i, 8192
  br i1 %i.ub, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.uc = icmp samesign ugt i32 %.4.i.i, 262144
  %spec.select.v.i.i = select i1 %i.uc, i32 3, i32 2
  %spec.select.i84.i = add nsw i32 %spec.select.v.i.i, %.118.i184.i.i
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %bb.cl, %.thread203.i.i
  %.4205.i.i = phi i32 [ %.4.i.i, %bb.cl ], [ %.4.i.i, %bb.cn ], [ %.4.i.i, %bb.cm ], [ %.0.i86.i, %.thread203.i.i ] ; 2 uses
  %.0101.i.i = phi i32 [ %.118.i184.i.i, %bb.cl ], [ %spec.select.i84.i, %bb.cn ], [ %i.ua, %bb.cm ], [ %.118.i184.i.i, %.thread203.i.i ] ; 6 uses
  %i.ud = load i32, ptr %i.ma, align 8, !tbaa !75
  store i32 %i.ud, ptr %i.mb, align 4, !tbaa !75
  %i.ue = load <2 x i32>, ptr %i.lw, align 8, !tbaa !75
  store <2 x i32> %i.ue, ptr %i.mc, align 4, !tbaa !75
  store i32 %.4205.i.i, ptr %i.lw, align 8, !tbaa !75
  store i32 %.0101.i.i, ptr %i.lv, align 8, !tbaa !131
  %.val140.i.i = load ptr, ptr %i.n, align 8, !tbaa !50
  %.val140.val.i.i = load ptr, ptr %.val140.i.i, align 8, !tbaa !52 ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.val140.val.i.i, i64 104
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !79 ; 6 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.val140.val.i.i, i64 112 ; 3 uses
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !76 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %.val140.val.i.i, i64 136
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !77
  %i.ul = add nsw i64 %i.uk, %i.ui                ; 3 uses
  %i.um = getelementptr inbounds nuw i8, ptr %.val140.val.i.i, i64 80 ; 4 uses
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !65
  %i.uo = icmp eq ptr %i.un, null
  br i1 %i.uo, label %.thread210.i.i, label %.preheader.i.i.i

.thread210.i.i:                                   ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  br label %do_uncompress_file.exit.thread

.preheader.i.i.i:                                 ; preds = %bb.co
  %i.up = icmp sgt i32 %.0101.i.i, 0
  br i1 %i.up, label %.lr.ph.i.i.i15, label %bb.cq

.lr.ph.i.i.i15:                                   ; preds = %.preheader.i.i.i
  %i.uq = sext i32 %.4205.i.i to i64              ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %.0101.i.i to i64 ; 2 uses
  %xtraiter944 = and i64 %wide.trip.count.i.i.i, 1
  %i.ur = icmp eq i32 %.0101.i.i, 1
  br i1 %i.ur, label %.epil.preheader943, label %.lr.ph.i.i.i15.new

.lr.ph.i.i.i15.new:                               ; preds = %.lr.ph.i.i.i15
  %unroll_iter947 = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cp, %.lr.ph.i.i.i15.new
  %indvars.iv.i.i.i16 = phi i64 [ 0, %.lr.ph.i.i.i15.new ], [ %indvars.iv.next.i.i.i17.1, %bb.cp ] ; 3 uses
  %niter948 = phi i64 [ 0, %.lr.ph.i.i.i15.new ], [ %niter948.next.1, %bb.cp ]
  %i.us = add i64 %i.ul, %indvars.iv.i.i.i16      ; 2 uses
  %i.ut = and i64 %i.us, %i.ug
  %i.uu = sub i64 %i.us, %i.uq
  %i.uv = and i64 %i.uu, %i.ug
  %i.uw = load ptr, ptr %i.um, align 8, !tbaa !65 ; 2 uses
  %i.ux = getelementptr inbounds i8, ptr %i.uw, i64 %i.uv
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !32
  %i.uz = getelementptr inbounds i8, ptr %i.uw, i64 %i.ut
  store i8 %i.uy, ptr %i.uz, align 1, !tbaa !32
  %indvars.iv.next.i.i.i17 = or disjoint i64 %indvars.iv.i.i.i16, 1
  %i.va = add i64 %i.ul, %indvars.iv.next.i.i.i17 ; 2 uses
  %i.vb = and i64 %i.va, %i.ug
  %i.vc = sub i64 %i.va, %i.uq
  %i.vd = and i64 %i.vc, %i.ug
  %i.ve = load ptr, ptr %i.um, align 8, !tbaa !65 ; 2 uses
  %i.vf = getelementptr inbounds i8, ptr %i.ve, i64 %i.vd
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !32
  %i.vh = getelementptr inbounds i8, ptr %i.ve, i64 %i.vb
  store i8 %i.vg, ptr %i.vh, align 1, !tbaa !32
  %indvars.iv.next.i.i.i17.1 = add nuw nsw i64 %indvars.iv.i.i.i16, 2 ; 2 uses
  %niter948.next.1 = add i64 %niter948, 2         ; 2 uses
  %niter948.ncmp.1 = icmp eq i64 %niter948.next.1, %unroll_iter947
  br i1 %niter948.ncmp.1, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %bb.cp, !llvm.loop !124

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %bb.cp
  %lcmp.mod945.not = icmp eq i64 %xtraiter944, 0
  br i1 %lcmp.mod945.not, label %._crit_edge.loopexit.i.i.i, label %.epil.preheader943

.epil.preheader943:                               ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.i.i15
  %indvars.iv.i.i.i16.epil.init = phi i64 [ 0, %.lr.ph.i.i.i15 ], [ %indvars.iv.next.i.i.i17.1, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod946 = trunc i32 %.0101.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod946)
  %i.vi = add i64 %i.ul, %indvars.iv.i.i.i16.epil.init ; 2 uses
  %i.vj = and i64 %i.vi, %i.ug
  %i.vk = sub i64 %i.vi, %i.uq
  %i.vl = and i64 %i.vk, %i.ug
  %i.vm = load ptr, ptr %i.um, align 8, !tbaa !65 ; 2 uses
  %i.vn = getelementptr inbounds i8, ptr %i.vm, i64 %i.vl
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !32
  %i.vp = getelementptr inbounds i8, ptr %i.vm, i64 %i.vj
  store i8 %i.vo, ptr %i.vp, align 1, !tbaa !32
  br label %._crit_edge.loopexit.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.epil.preheader943
  %.pre.i.i.i = load i64, ptr %i.uh, align 8, !tbaa !76
  br label %bb.cq

.thread207.i.i:                                   ; preds = %read_consume_bits.exit.i.i, %.thread194.i.i, %bb.bz, %decode_code_length.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  br label %do_uncompress_file.exit.thread

bb.cq:                                            ; preds = %._crit_edge.loopexit.i.i.i, %.preheader.i.i.i
  %i.vq = phi i64 [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ui, %.preheader.i.i.i ]
end_hunk_0
begin_hunk_1_@parse_filter_data:bb.a

bb.c:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.b
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 22, ptr noundef nonnull @.str.55) #14
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds i8, ptr %2, i64 %i.ac ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !32
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 16
  %i.ah = getelementptr i8, ptr %i.ad, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !32
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 8
  %i.al = or disjoint i32 %i.ak, %i.ag
  %i.am = lshr i32 %i.al, %i.ab
  %i.an = lshr i32 %i.am, 8
  %i.ao = and i32 %i.an, 255                      ; 2 uses
  %i.ap = add nsw i32 %i.v, 1                     ; 2 uses
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !85
  store i8 %i.x, ptr %i.f, align 8, !tbaa !86
  %exitcond.not = icmp eq i32 %i.z, 0
  br i1 %exitcond.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %.not.i.1 = icmp sgt i64 %i.e, %i.aq
  br i1 %.not.i.1, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds i8, ptr %2, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !32
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 16
  %i.av = getelementptr i8, ptr %i.ar, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !32
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 8
  %i.az = or disjoint i32 %i.ay, %i.au
  %i.ba = lshr i32 %i.az, %i.ab
  %i.bb = and i32 %i.ba, 65280
  %i.bc = or disjoint i32 %i.bb, %i.ao            ; 2 uses
  %i.bd = add nsw i32 %i.v, 2                     ; 2 uses
  store i32 %i.bd, ptr %i.a, align 4, !tbaa !85
  store i8 %i.x, ptr %i.f, align 8, !tbaa !86
  %exitcond.not.1 = icmp eq i32 %i.z, 1
  br i1 %exitcond.not.1, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %.not.i.2 = icmp sgt i64 %i.e, %i.be
  br i1 %.not.i.2, label %bb.h, label %bb.c

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.be ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !32
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 16
  %i.bj = getelementptr i8, ptr %i.bf, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !32
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 8
  %i.bn = or disjoint i32 %i.bm, %i.bi
  %i.bo = lshr i32 %i.bn, %i.ab
  %i.bp = shl nuw nsw i32 %i.bo, 8
  %i.bq = and i32 %i.bp, 16711680
  %i.br = or disjoint i32 %i.bq, %i.bc            ; 2 uses
  %i.bs = add nsw i32 %i.v, 3                     ; 2 uses
  store i32 %i.bs, ptr %i.a, align 4, !tbaa !85
  store i8 %i.x, ptr %i.f, align 8, !tbaa !86
  %exitcond.not.2 = icmp eq i32 %i.z, 2
  br i1 %exitcond.not.2, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %.not.i.3 = icmp sgt i64 %i.e, %i.bt
  br i1 %.not.i.3, label %bb.j, label %bb.c

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds i8, ptr %2, i64 %i.bt ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !32
  %i.bw = zext i8 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 16
  %i.by = getelementptr i8, ptr %i.bu, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !32
  %i.ca = zext i8 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 8
  %i.cc = or disjoint i32 %i.cb, %i.bx
  %i.cd = lshr i32 %i.cc, %i.ab
  %i.ce = shl i32 %i.cd, 16
  %i.cf = and i32 %i.ce, -16777216
  %i.cg = or disjoint i32 %i.cf, %i.br
  %i.ch = add nsw i32 %i.v, 4
  store i32 %i.ch, ptr %i.a, align 4, !tbaa !85
  store i8 %i.x, ptr %i.f, align 8, !tbaa !86
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f, %bb.d
  %.lcssa = phi i32 [ %i.ao, %bb.d ], [ %i.bc, %bb.f ], [ %i.br, %bb.h ], [ %i.cg, %bb.j ]
  store i32 %.lcssa, ptr %3, align 4, !tbaa !75
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %read_consume_bits.exit, %bb.k
  %.2 = phi i32 [ 0, %bb.k ], [ -30, %bb.c ], [ -30, %read_consume_bits.exit ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @push_data_ready(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %update_crc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 19384 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !143
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 19392 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !144
  %i.g = add nsw i64 %i.f, %i.d
  %.not30 = icmp eq i64 %4, %i.g
  br i1 %.not30, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 19304 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !58
  %.not31.not = icmp eq i8 %i.i, 0
  br i1 %.not31.not, label %bb.e, label %.critedge.1

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 22, ptr noundef nonnull @.str.65) #14
  br label %update_crc.exit

.critedge.1:                                      ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 19336 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !58
  %.not31.not.1 = icmp eq i8 %i.k, 0
  br i1 %.not31.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.1
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 22, ptr noundef nonnull @.str.66) #14
  br label %update_crc.exit

bb.e:                                             ; preds = %.critedge.1, %.preheader
  %.lcssa = phi ptr [ %i.h, %.preheader ], [ %i.j, %.critedge.1 ] ; 4 uses
  store i8 1, ptr %.lcssa, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  store ptr %2, ptr %i.l, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  store i64 %3, ptr %i.m, align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  store i64 %4, ptr %i.n, align 8, !tbaa !62
  store i64 %4, ptr %i.c, align 8, !tbaa !143
  store i64 %3, ptr %i.e, align 8, !tbaa !144
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 19444
  %i.p = load i32, ptr %i.o, align 4, !tbaa !81
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 19448 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !83
  %i.s = zext i32 %i.r to i64
  %i.t = trunc i64 %3 to i32
  %i.u = tail call i64 @cm_zlib_crc32(i64 noundef %i.s, ptr noundef %2, i32 noundef %i.t) #14
  %i.v = trunc i64 %i.u to i32
  store i32 %i.v, ptr %i.q, align 8, !tbaa !83
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 21240
  %i.x = load i8, ptr %i.w, align 8, !tbaa !82
  %i.y = icmp sgt i8 %i.x, 0
  br i1 %i.y, label %bb.h, label %update_crc.exit

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 19488
  %i.aa = tail call i32 @blake2sp_update(ptr noundef nonnull %i.z, ptr noundef %2, i64 noundef %3) #14 ; 0 uses
  br label %update_crc.exit

update_crc.exit:                                  ; preds = %bb.h, %bb.g, %bb.a, %bb.d, %bb.c
  %.2 = phi i32 [ -30, %bb.d ], [ -30, %bb.c ], [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.h ]
  ret i32 %.2
}

declare i32 @blake2sp_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(1) }
attributes #17 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !34}
!1 = distinct !{!1, !34}
!2 = distinct !{!2, !34}
!3 = distinct !{!3, !34}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 long", !14, i64 0}
!16 = !{!"cdeque", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !15, i64 8}
!17 = !{!16, !13, i64 4}
!18 = !{!16, !15, i64 8}
!19 = !{!"long", !9, i64 0}
!20 = !{!"generic_header", !9, i64 0, !9, i64 0, !9, i64 0, !10, i64 4, !10, i64 8}
!21 = !{!"main_header", !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !10, i64 4}
!22 = !{!"p1 omnipotent char", !14, i64 0}
!23 = !{!"decode_table", !10, i64 0, !9, i64 4, !9, i64 68, !10, i64 132, !9, i64 136, !9, i64 1160, !9, i64 3208}
!24 = !{!"comp_state", !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !19, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !10, i64 96, !23, i64 100, !23, i64 3920, !23, i64 7740, !23, i64 11560, !23, i64 15380, !16, i64 19200, !19, i64 19216, !19, i64 19224, !9, i64 19232, !9, i64 19248}
!25 = !{!"blake2sp_state__", !9, i64 0, !9, i64 1088, !9, i64 1224, !19, i64 1736, !19, i64 1744}
!26 = !{!"file_header", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !9, i64 32, !9, i64 32, !9, i64 32, !9, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !9, i64 84, !25, i64 120, !9, i64 1872, !19, i64 1880, !19, i64 1888, !19, i64 1896}
!27 = !{!"bit_reader", !9, i64 0, !10, i64 4}
!28 = !{!"multivolume", !10, i64 0, !22, i64 8}
!29 = !{!"compressed_block_header", !9, i64 0, !9, i64 1}
!30 = !{!"rar5", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !19, i64 16, !19, i64 24, !20, i64 32, !21, i64 44, !24, i64 56, !26, i64 19368, !27, i64 21272, !28, i64 21280, !29, i64 21296, !10, i64 21300, !10, i64 21304}
!31 = !{!30, !10, i64 21300}
!32 = !{!9, !9, i64 0}
!33 = !{!19, !19, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"p1 _ZTS14archive_vtable", !14, i64 0}
!36 = !{!"archive_string", !22, i64 0, !19, i64 8, !19, i64 16}
!37 = !{!"p1 _ZTS19archive_string_conv", !14, i64 0}
!38 = !{!"archive", !10, i64 0, !10, i64 4, !35, i64 8, !10, i64 16, !22, i64 24, !10, i64 32, !10, i64 36, !22, i64 40, !36, i64 48, !22, i64 72, !10, i64 80, !10, i64 84, !37, i64 88, !22, i64 96, !19, i64 104, !19, i64 112, !19, i64 120, !9, i64 128, !19, i64 136}
!39 = !{!"p1 _ZTS13archive_entry", !14, i64 0}
!40 = !{!"p1 _ZTS22archive_read_data_node", !14, i64 0}
!41 = !{!"archive_read_client", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !10, i64 48, !10, i64 52, !19, i64 56, !40, i64 64}
!42 = !{!"p1 _ZTS19archive_read_filter", !14, i64 0}
!43 = !{!"p1 _ZTS25archive_format_descriptor", !14, i64 0}
!44 = !{!"p1 _ZTS20archive_read_extract", !14, i64 0}
!45 = !{!"p1 _ZTS23archive_read_passphrase", !14, i64 0}
!46 = !{!"any p2 pointer", !14, i64 0}
!47 = !{!"p2 _ZTS23archive_read_passphrase", !46, i64 0}
!48 = !{!"", !45, i64 0, !47, i64 8, !10, i64 16, !14, i64 24, !14, i64 32}
!49 = !{!"archive_read", !38, i64 0, !39, i64 144, !10, i64 152, !19, i64 160, !19, i64 168, !41, i64 176, !9, i64 248, !42, i64 632, !10, i64 640, !19, i64 648, !10, i64 656, !10, i64 660, !9, i64 664, !43, i64 2072, !44, i64 2080, !14, i64 2088, !48, i64 2096}
!50 = !{!49, !43, i64 2072}
!51 = !{!"archive_format_descriptor", !14, i64 0, !22, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80}
!52 = !{!51, !14, i64 0}
!53 = !{!30, !10, i64 21304}
!54 = !{!30, !10, i64 8}
!55 = !{!30, !19, i64 120}
!56 = !{!30, !19, i64 19376}
!57 = !{!"data_ready", !9, i64 0, !22, i64 8, !19, i64 16, !19, i64 24}
!58 = !{!57, !9, i64 0}
!59 = !{!57, !22, i64 8}
!60 = !{!14, !14, i64 0}
!61 = !{!57, !19, i64 16}
!62 = !{!57, !19, i64 24}
!63 = !{!30, !10, i64 64}
!64 = !{!30, !19, i64 19368}
!65 = !{!30, !22, i64 80}
!66 = !{!30, !22, i64 88}
!67 = !{!30, !22, i64 21288}
!68 = !{!16, !13, i64 6}
!69 = !{!16, !13, i64 0}
!70 = !{!16, !13, i64 2}
!71 = !{!30, !10, i64 12}
!72 = !{!30, !10, i64 40}
!73 = !{!30, !10, i64 21280}
!74 = !{!30, !10, i64 48}
!75 = !{!10, !10, i64 0}
!76 = !{!30, !19, i64 112}
!77 = !{!30, !19, i64 136}
!78 = !{!30, !19, i64 72}
!79 = !{!30, !19, i64 104}
!80 = !{!30, !19, i64 21248}
!81 = !{!30, !10, i64 19444}
!82 = !{!30, !9, i64 21240}
!83 = !{!30, !10, i64 19448}
!84 = !{!30, !19, i64 144}
!85 = !{!30, !10, i64 21276}
!86 = !{!30, !9, i64 21272}
!87 = !{!13, !13, i64 0}
!88 = !{!23, !10, i64 132}
!89 = !{!23, !10, i64 0}
!90 = distinct !{!90, !34}
!91 = distinct !{!91, !34}
!92 = distinct !{!92, !34}
!93 = distinct !{!93, !34}
!94 = !{!30, !10, i64 0}
!95 = !{!49, !10, i64 16}
!96 = !{!49, !22, i64 24}
!97 = !{!30, !10, i64 4}
!98 = distinct !{null}
!99 = distinct !{ptr @rar5_read_data_skip, null}
!100 = !{!30, !10, i64 36}
!101 = !{ptr @rar5_read_data_skip}
!102 = !{!30, !10, i64 68}
!103 = !{!30, !19, i64 21264}
!104 = distinct !{!104, !34}
!105 = distinct !{!105, !34}
!106 = !{!30, !10, i64 19432}
!107 = !{!30, !10, i64 19436}
!108 = !{!30, !10, i64 19440}
!109 = !{!30, !19, i64 19408}
!110 = !{!30, !19, i64 19416}
!111 = !{!30, !19, i64 19424}
!112 = !{!30, !19, i64 21256}
!113 = !{!36, !22, i64 0}
!114 = distinct !{null, null}
!115 = !{!30, !19, i64 128}
!116 = distinct !{null}
!117 = distinct !{null, null, null, null}
!118 = distinct !{null, null}
!119 = distinct !{null, null, null}
!120 = distinct !{null, null, null, null, null}
!121 = distinct !{!121, !34}
!122 = distinct !{!122, !34}
!123 = distinct !{!123, !34}
!124 = distinct !{!124, !34}
!125 = distinct !{!125, !34}
!126 = distinct !{!126, !34}
!127 = distinct !{!127, !34}
!128 = distinct !{!128, !34}
!129 = !{!30, !22, i64 96}
!130 = !{!29, !9, i64 0}
!131 = !{!30, !10, i64 152}
!132 = !{!30, !19, i64 19272}
!133 = !{!30, !19, i64 19280}
!134 = !{!"filter_info", !10, i64 0, !10, i64 4, !10, i64 8, !19, i64 16, !19, i64 24, !13, i64 32}
!135 = !{!134, !10, i64 0}
!136 = !{!134, !19, i64 16}
!137 = !{!134, !19, i64 24}
!138 = !{!134, !10, i64 4}
!139 = distinct !{!139, !34}
!140 = distinct !{!140, !34}
!141 = distinct !{!141, !34}
!142 = distinct !{!142, !34}
!143 = !{!30, !19, i64 19384}
!144 = !{!30, !19, i64 19392}
end_hunk_1
