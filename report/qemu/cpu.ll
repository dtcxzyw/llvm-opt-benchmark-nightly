Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cpu?download=true
inline.NumInlined: 224
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@cpu_x86_cpuid:bb.a
  %i.ox = icmp eq i32 %i.ow, 1936487777
  br i1 %i.ox, label %bb.ei, label %.thread622

bb.eg:                                            ; preds = %bb.eb
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 13696
  %i.oz = load i32, ptr %i.oy, align 16
  %i.pa = icmp eq i32 %i.oz, 1751608929
  br i1 %i.pa, label %bb.eh, label %.thread622

bb.eh:                                            ; preds = %bb.eg
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 13700
  %i.pc = load i32, ptr %i.pb, align 4
  %i.pd = icmp eq i32 %i.pc, 538995041
  br i1 %i.pd, label %bb.ei, label %.thread622

bb.ei:                                            ; preds = %bb.eh, %bb.ef, %bb.ed
  store i32 0, ptr %4, align 4
  store i32 0, ptr %3, align 4
  %i.pe = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.pf = load ptr, ptr %i.pe, align 8
  tail call fastcc void @encode_cache_cpuid80000006(ptr noundef %i.pf, ptr noundef null, ptr noundef %5, ptr noundef %6)
  br label %bb.gb

.thread622:                                       ; preds = %bb.eb, %bb.ec, %bb.ed, %bb.ee, %bb.ef, %bb.eh, %bb.eg, %bb.ea
  store i32 0, ptr %3, align 4
  store i32 1107313152, ptr %4, align 4
  %i.pg = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.ph = load ptr, ptr %i.pg, align 8
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 16225
  %i.pj = load i8, ptr %i.pi, align 1, !range !10, !noundef !11
  %i.pk = trunc nuw i8 %i.pj to i1
  br i1 %i.pk, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %.thread622
  %i.pl = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.pm = load ptr, ptr %i.pl, align 8
  br label %bb.ek

bb.ek:                                            ; preds = %.thread622, %bb.ej
  %i.pn = phi ptr [ %i.pm, %bb.ej ], [ null, %.thread622 ]
  tail call fastcc void @encode_cache_cpuid80000006(ptr noundef %i.ph, ptr noundef %i.pn, ptr noundef %5, ptr noundef %6)
  br label %bb.gb

bb.el:                                            ; preds = %bb.i
  store i32 0, ptr %3, align 4
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 16233
  %i.pp = load i8, ptr %i.po, align 1, !range !10, !noundef !11
  %i.pq = trunc nuw i8 %i.pp to i1
  br i1 %i.pq, label %bb.em, label %bb.ep

bb.em:                                            ; preds = %bb.el
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 13692
  %i.ps = load i32, ptr %i.pr, align 4
  %i.pt = icmp eq i32 %i.ps, 1970169159
  br i1 %i.pt, label %bb.en, label %bb.ep

bb.en:                                            ; preds = %bb.em
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 13696
  %i.pv = load i32, ptr %i.pu, align 16
  %i.pw = icmp eq i32 %i.pv, 1231384169
  br i1 %i.pw, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 13700
  %i.py = load i32, ptr %i.px, align 4
  %i.pz = icmp eq i32 %i.py, 1818588270
  br i1 %i.pz, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en, %bb.em, %bb.el
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 13776
  %i.qb = load i64, ptr %i.qa, align 16
  %i.qc = trunc i64 %i.qb to i32
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eo, %bb.ep
  %storemerge593 = phi i32 [ %i.qc, %bb.ep ], [ 0, %bb.eo ]
  store i32 %storemerge593, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 13784
  %i.qe = load i64, ptr %i.qd, align 8
  %i.qf = trunc i64 %i.qe to i32
  store i32 %i.qf, ptr %6, align 4
  br label %bb.gb

bb.er:                                            ; preds = %bb.i
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 16244
  %i.qh = load i32, ptr %i.qg, align 4            ; 2 uses
  store i32 %i.qh, ptr %3, align 4
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 13760
  %i.qj = load i64, ptr %i.qi, align 16
  %i.qk = and i64 %i.qj, 536870912
  %.not592 = icmp eq i64 %i.qk, 0
  br i1 %.not592, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 13736
  %i.qm = load i64, ptr %i.ql, align 8
  %i.qn = and i64 %i.qm, 65536
  %.not.i = icmp eq i64 %i.qn, 0
  %..i = select i1 %.not.i, i32 12288, i32 14592
  %i.qo = or i32 %..i, %i.qh                      ; 2 uses
  store i32 %i.qo, ptr %3, align 4
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 16248
  %i.qq = load i32, ptr %i.qp, align 8
  %i.qr = shl i32 %i.qq, 16
  %i.qs = or i32 %i.qo, %i.qr
  store i32 %i.qs, ptr %3, align 4
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 13792
  %i.qu = load i64, ptr %i.qt, align 16
  %i.qv = trunc i64 %i.qu to i32
  store i32 %i.qv, ptr %4, align 4
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 16233
  %i.qx = load i8, ptr %i.qw, align 1, !range !10, !noundef !11
  %i.qy = trunc nuw i8 %i.qx to i1
  br i1 %i.qy, label %bb.eu, label %.thread626

bb.eu:                                            ; preds = %bb.et
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 13692
  %i.ra = load i32, ptr %i.qz, align 4
  switch i32 %i.ra, label %.thread626 [
    i32 1970169159, label %bb.ev
    i32 1953391939, label %bb.ex
    i32 1750278176, label %bb.ez
  ]

bb.ev:                                            ; preds = %bb.eu
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 13696
  %i.rc = load i32, ptr %i.rb, align 16
  %i.rd = icmp eq i32 %i.rc, 1231384169
  br i1 %i.rd, label %bb.ew, label %.thread626

bb.ew:                                            ; preds = %bb.ev
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 13700
  %i.rf = load i32, ptr %i.re, align 4
  %i.rg = icmp eq i32 %i.rf, 1818588270
  br i1 %i.rg, label %bb.fb, label %.thread626

bb.ex:                                            ; preds = %bb.eu
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 13696
  %i.ri = load i32, ptr %i.rh, align 16
  %i.rj = icmp eq i32 %i.ri, 1215460705
  br i1 %i.rj, label %bb.ey, label %.thread626

bb.ey:                                            ; preds = %bb.ex
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 13700
  %i.rl = load i32, ptr %i.rk, align 4
  %i.rm = icmp eq i32 %i.rl, 1936487777
  br i1 %i.rm, label %bb.fb, label %.thread626

bb.ez:                                            ; preds = %bb.eu
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 13696
  %i.ro = load i32, ptr %i.rn, align 16
  %i.rp = icmp eq i32 %i.ro, 1751608929
  br i1 %i.rp, label %bb.fa, label %.thread626

bb.fa:                                            ; preds = %bb.ez
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 13700
  %i.rr = load i32, ptr %i.rq, align 4
  %i.rs = icmp eq i32 %i.rr, 538995041
  br i1 %i.rs, label %bb.fb, label %.thread626

bb.fb:                                            ; preds = %bb.fa, %bb.ey, %bb.ew
  store i32 0, ptr %6, align 4
  store i32 0, ptr %5, align 4
  br label %bb.gb

.thread626:                                       ; preds = %bb.eu, %bb.ev, %bb.ew, %bb.ex, %bb.ey, %bb.fa, %bb.ez, %bb.et
  %i.rt = icmp ugt i32 %i.j, 1
  br i1 %i.rt, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %.thread626
  %i.ru = tail call fastcc i32 @apicid_pkg_offset(ptr noundef nonnull %i.b)
  %i.rv = shl nuw nsw i32 %i.ru, 12
  %i.rw = add i32 %i.j, -1
  %i.rx = or i32 %i.rv, %i.rw
  br label %bb.fd

bb.fd:                                            ; preds = %.thread626, %bb.fc
  %storemerge = phi i32 [ %i.rx, %bb.fc ], [ 0, %.thread626 ]
  store i32 %storemerge, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %bb.gb

bb.fe:                                            ; preds = %bb.i
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 13768
  %i.rz = load i64, ptr %i.ry, align 8
  %i.sa = and i64 %i.rz, 4
  %.not = icmp eq i64 %i.sa, 0
  br i1 %.not, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  store i32 1, ptr %3, align 4
  store i32 16, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 13856
  %i.sc = load i64, ptr %i.sb, align 16
  %i.sd = trunc i64 %i.sc to i32
  store i32 %i.sd, ptr %6, align 4
  br label %bb.gb

bb.fg:                                            ; preds = %bb.fe
  store i32 0, ptr %3, align 4
  store i32 0, ptr %4, align 4
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %bb.gb

bb.fh:                                            ; preds = %bb.i
  store i32 0, ptr %3, align 4
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 15421
  %i.sf = load i8, ptr %i.se, align 1, !range !10, !noundef !11
  %i.sg = trunc nuw i8 %i.sf to i1
  br i1 %i.sg, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  tail call fastcc void @x86_cpu_get_cache_cpuid(i32 noundef -2147483619, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %bb.gb

bb.fj:                                            ; preds = %bb.fh
  switch i32 %2, label %bb.fo [
    i32 0, label %bb.fk
    i32 1, label %bb.fl
    i32 2, label %bb.fm
    i32 3, label %bb.fn
  ]

bb.fk:                                            ; preds = %bb.fj
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 14536
  %i.si = load ptr, ptr %i.sh, align 8
  tail call fastcc void @encode_cache_cpuid8000001d(ptr noundef %i.si, ptr noundef nonnull %i.b, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %bb.fp

bb.fl:                                            ; preds = %bb.fj
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 14544
  %i.sk = load ptr, ptr %i.sj, align 8
  tail call fastcc void @encode_cache_cpuid8000001d(ptr noundef %i.sk, ptr noundef nonnull %i.b, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %bb.fp

bb.fm:                                            ; preds = %bb.fj
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 14552
  %i.sm = load ptr, ptr %i.sl, align 8
  tail call fastcc void @encode_cache_cpuid8000001d(ptr noundef %i.sm, ptr noundef nonnull %i.b, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %bb.fp

bb.fn:                                            ; preds = %bb.fj
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 14560
  %i.so = load ptr, ptr %i.sn, align 8
  tail call fastcc void @encode_cache_cpuid8000001d(ptr noundef %i.so, ptr noundef nonnull %i.b, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fj
  store i32 0, ptr %6, align 4
  store i32 0, ptr %5, align 4
  store i32 0, ptr %4, align 4
  store i32 0, ptr %3, align 4
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 16234
  %i.sq = load i8, ptr %i.sp, align 2, !range !10, !noundef !11
  %i.sr = trunc nuw i8 %i.sq to i1
  br i1 %i.sr, label %bb.fq, label %bb.gb

bb.fq:                                            ; preds = %bb.fp
  %i.ss = load i32, ptr %6, align 4
  %i.st = and i32 %i.ss, 3
  store i32 %i.st, ptr %6, align 4
  br label %bb.gb

bb.fr:                                            ; preds = %bb.i
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 16336
  %i.sv = load i32, ptr %i.su, align 16
  %i.sw = icmp slt i32 %i.sv, 256
  br i1 %i.sw, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  tail call fastcc void @encode_topo_cpuid8000001e(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %bb.gb

bb.ft:                                            ; preds = %bb.fr
  store i32 0, ptr %3, align 4
  store i32 0, ptr %4, align 4
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %bb.gb

bb.fu:                                            ; preds = %bb.i
  store i32 0, ptr %6, align 4
  store i32 0, ptr %5, align 4
  store i32 0, ptr %4, align 4
  store i32 0, ptr %3, align 4
  br label %bb.gb

bb.fv:                                            ; preds = %bb.i
  store i32 0, ptr %6, align 4
  store i32 0, ptr %5, align 4
  store i32 0, ptr %4, align 4
  store i32 0, ptr %3, align 4
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 13800
  %i.sy = load i64, ptr %i.sx, align 8
  %i.sz = trunc i64 %i.sy to i32
  store i32 %i.sz, ptr %3, align 4
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 13808
  %i.tb = load i64, ptr %i.ta, align 16
  %i.tc = trunc i64 %i.tb to i32
  store i32 %i.tc, ptr %4, align 4
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 13816
  %i.te = load i64, ptr %i.td, align 8
  %i.tf = trunc i64 %i.te to i32
  store i32 %i.tf, ptr %5, align 4
  br label %bb.gb

bb.fw:                                            ; preds = %bb.i
  store i32 0, ptr %6, align 4
  store i32 0, ptr %5, align 4
  store i32 0, ptr %4, align 4
  store i32 0, ptr %3, align 4
  br label %bb.gb

bb.fx:                                            ; preds = %bb.i
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 13688
  %i.th = load i32, ptr %i.tg, align 8
  store i32 %i.th, ptr %3, align 4
  store i32 0, ptr %4, align 4
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %bb.gb

bb.fy:                                            ; preds = %bb.i
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 13704
  %i.tj = load i32, ptr %i.ti, align 8
  store i32 %i.tj, ptr %3, align 4
  store i32 0, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 13832
  %i.tl = load i64, ptr %i.tk, align 8
  %i.tm = trunc i64 %i.tl to i32
  store i32 %i.tm, ptr %6, align 4
  br label %bb.gb

bb.fz:                                            ; preds = %bb.i, %bb.i, %bb.i
  store i32 0, ptr %3, align 4
  store i32 0, ptr %4, align 4
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %bb.gb

bb.ga:                                            ; preds = %bb.i
  store i32 0, ptr %3, align 4
  store i32 0, ptr %4, align 4
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %bb.gb

bb.gb:                                            ; preds = %bb.bm, %bb.dz, %bb.ei, %bb.ek, %bb.dr, %bb.dw, %bb.dx, %bb.cq, %bb.ck, %bb.cg, %bb.ak, %bb.ax, %bb.az, %bb.ba, %bb.au, %bb.at, %bb.aw, %bb.av, %bb.ar, %bb.am, %bb.al, %bb.ac, %bb.ah, %bb.ai, %bb.fs, %bb.ft, %bb.fp, %bb.fq, %bb.ff, %bb.fg, %bb.dj, %bb.dk, %bb.dl, %bb.dm, %bb.dn, %bb.do, %bb.di, %.thread618, %bb.cx, %bb.cy, %bb.ct, %bb.cu, %bb.cr, %bb.cs, %bb.cp, %bb.cl, %bb.cm, %bb.cj, %bb.ch, %bb.ci, %bb.cf, %bb.cd, %bb.by, %bb.ca, %bb.cb, %bb.bz, %bb.bw, %bb.bh, %bb.bj, %bb.bk, %bb.bi, %bb.w, %bb.y, %bb.x, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.fi, %bb.fd, %bb.fb, %bb.eq, %bb.dp, %bb.cz, %x86_has_cpuid_0x1f.exit.thread, %bb.co, %bb.ce, %bb.cc, %bb.bv, %bb.bo, %bb.bl, %bb.bc, %bb.bb, %bb.j, %bb.i
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i32 0, 129) i32 @apicid_pkg_offset(ptr nofree noundef readonly captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 12
  %.val.i.i = load i32, ptr %i.a, align 4         ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.b, label %apicid_core_offset.exit.i.i, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.432, i32 noundef 70, ptr noundef nonnull @__func__.apicid_bitwidth_for_count, ptr noundef nonnull @.str.433) #21
  unreachable

apicid_core_offset.exit.i.i:                      ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val2.i.i = load i32, ptr %i.b, align 4        ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.val2.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %apicid_module_offset.exit.i, !prof !14

bb.c:                                             ; preds = %apicid_core_offset.exit.i.i
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.432, i32 noundef 70, ptr noundef nonnull @__func__.apicid_bitwidth_for_count, ptr noundef nonnull @.str.433) #21
  unreachable

apicid_module_offset.exit.i:                      ; preds = %apicid_core_offset.exit.i.i
  %i.c = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.c, align 4           ; 2 uses
  %.not.i.i.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i.i.i, label %bb.d, label %apicid_die_offset.exit, !prof !14

bb.d:                                             ; preds = %apicid_module_offset.exit.i
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.432, i32 noundef 70, ptr noundef nonnull @__func__.apicid_bitwidth_for_count, ptr noundef nonnull @.str.433) #21
  unreachable

apicid_die_offset.exit:                           ; preds = %apicid_module_offset.exit.i
  %.val = load i32, ptr %0, align 4               ; 2 uses
  %.not.i.i = icmp eq i32 %.val, 0
  br i1 %.not.i.i, label %bb.e, label %apicid_die_width.exit, !prof !14

bb.e:                                             ; preds = %apicid_die_offset.exit
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.432, i32 noundef 70, ptr noundef nonnull @__func__.apicid_bitwidth_for_count, ptr noundef nonnull @.str.433) #21
  unreachable

apicid_die_width.exit:                            ; preds = %apicid_die_offset.exit
  %i.d = add i32 %.val.i.i, -1
  %i.e = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.d, i1 false)
  %i.f = add i32 %.val2.i.i, -1
  %i.g = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.f, i1 false)
  %i.h = add i32 %.val.i, -1
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.h, i1 false)
  %i.j = add i32 %.val, -1
  %i.k = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.j, i1 false)
  %i.l = add nuw nsw i32 %i.e, %i.g
  %i.m = add nuw nsw i32 %i.l, %i.i
  %i.n = add nuw nsw i32 %i.m, %i.k
  %i.o = sub nuw nsw i32 128, %i.n
  ret i32 %i.o
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @x86_cpu_get_cache_cpuid(i32 noundef range(i32 -2147483643, 5) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #4 {
bb.a:
  switch i32 %0, label %host_cpuid.exit [
    i32 2, label %bb.b
    i32 4, label %bb.b
    i32 -2147483643, label %bb.c
    i32 -2147483642, label %bb.c
    i32 -2147483619, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.a = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,{cx},~{cc},~{dirflag},~{fpsr},~{flags}"(i32 0, i32 0) #20, !srcloc !13
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.b = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,{cx},~{cc},~{dirflag},~{fpsr},~{flags}"(i32 -2147483648, i32 0) #20, !srcloc !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { i32, i32, i32, i32 } [ %i.a, %bb.b ], [ %i.b, %bb.c ]
  %.0 = extractvalue { i32, i32, i32, i32 } %.pn, 0
  %i.c = icmp ugt i32 %0, %.0
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %2, align 4
  store i32 0, ptr %3, align 4
  store i32 0, ptr %4, align 4
  br label %host_cpuid.exit.sink.split

bb.f:                                             ; preds = %bb.d
  %i.d = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,{cx},~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1) #20, !srcloc !13 ; 4 uses
  %i.e = extractvalue { i32, i32, i32, i32 } %i.d, 1
  %i.f = extractvalue { i32, i32, i32, i32 } %i.d, 2
  %i.g = extractvalue { i32, i32, i32, i32 } %i.d, 3
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = extractvalue { i32, i32, i32, i32 } %i.d, 0
  store i32 %i.h, ptr %2, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not12.i = icmp eq ptr %3, null
  br i1 %.not12.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.e, ptr %3, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not13.i = icmp eq ptr %4, null
  br i1 %.not13.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.f, ptr %4, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not14.i = icmp eq ptr %5, null
  br i1 %.not14.i, label %host_cpuid.exit, label %host_cpuid.exit.sink.split

host_cpuid.exit.sink.split:                       ; preds = %bb.l, %bb.e
  %.sink = phi i32 [ 0, %bb.e ], [ %i.g, %bb.l ]
  store i32 %.sink, ptr %5, align 4
  br label %host_cpuid.exit

host_cpuid.exit:                                  ; preds = %host_cpuid.exit.sink.split, %bb.l, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @encode_cache_cpuid2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5) unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1
  store i32 1, ptr %2, align 4
  store i32 0, ptr %5, align 4
  store i32 0, ptr %4, align 4
  store i32 0, ptr %3, align 4
  %i.b = load ptr, ptr %1, align 8
  %i.c = call fastcc zeroext i8 @cpuid2_cache_descriptor(ptr noundef %i.b, ptr noundef %i.a)
  %i.d = zext i8 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call fastcc zeroext i8 @cpuid2_cache_descriptor(ptr noundef %i.f, ptr noundef %i.a)
  %i.h = zext i8 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call fastcc zeroext i8 @cpuid2_cache_descriptor(ptr noundef %i.j, ptr noundef %i.a)
  %i.l = zext i8 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call fastcc zeroext i8 @cpuid2_cache_descriptor(ptr noundef %i.n, ptr noundef %i.a)
  %i.p = zext i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32724
  %i.r = load i8, ptr %i.q, align 4, !range !10, !noundef !11
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 30152
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp ugt i32 %i.u, 3
  %i.w = load i8, ptr %i.a, align 1, !range !10
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond = select i1 %i.v, i1 true, i1 %i.x
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32721
  %i.z = load i8, ptr %i.y, align 1, !range !10, !noundef !11
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.p, ptr %4, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = shl nuw nsw i32 %i.d, 16
  %i.ac = shl nuw nsw i32 %i.h, 8
  %i.ad = or disjoint i32 %i.ac, %i.ab
  %i.ae = or disjoint i32 %i.ad, %i.l
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  store i32 0, ptr %4, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %storemerge = phi i32 [ %i.ae, %bb.e ], [ 255, %bb.f ]
  store i32 %storemerge, ptr %5, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

end_hunk_0
