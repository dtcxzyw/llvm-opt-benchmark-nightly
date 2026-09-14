Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_convert?download=true
inline.NumInlined: 46
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@pcre2_pattern_convert_8:bb.a
  %i.li = add i64 %i.lg, 1
  store i64 %i.li, ptr %i.y, align 8, !tbaa !34
  %i.lj = icmp ult ptr %i.lh, %i.lf
  br i1 %i.lj, label %convert_glob_print_separator.exit.i.i, label %convert_glob_print_separator.exit.thread.i.i

convert_glob_print_separator.exit.thread.i.i:     ; preds = %convert_glob_write.exit.i.i.i
  %i.lk = add i64 %i.lg, 2
  store i64 %i.lk, ptr %i.y, align 8, !tbaa !34
  br label %convert_glob_write.exit208.i

convert_glob_print_separator.exit.i.i:            ; preds = %convert_glob_write.exit.i.i.i
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 1
  store ptr %i.ll, ptr %6, align 8, !tbaa !32
  store i8 %i.am, ptr %i.lh, align 1, !tbaa !35
  %.pre9.i.i = load i64, ptr %i.y, align 8, !tbaa !34
  %.pre10.i.i = load ptr, ptr %6, align 8, !tbaa !32 ; 3 uses
  %.pre11.i.i = load ptr, ptr %i.x, align 8, !tbaa !33
  %i.lm = icmp ult ptr %.pre10.i.i, %.pre11.i.i
  %i.ln = add i64 %.pre9.i.i, 1
  store i64 %i.ln, ptr %i.y, align 8, !tbaa !34
  br i1 %i.lm, label %bb.el, label %convert_glob_write.exit208.i

bb.el:                                            ; preds = %convert_glob_print_separator.exit.i.i
  %i.lo = getelementptr inbounds nuw i8, ptr %.pre10.i.i, i64 1
  store ptr %i.lo, ptr %6, align 8, !tbaa !32
  store i8 93, ptr %.pre10.i.i, align 1, !tbaa !35
  br label %convert_glob_write.exit208.i

convert_glob_write.exit208.i:                     ; preds = %bb.el, %convert_glob_print_separator.exit.i.i, %convert_glob_print_separator.exit.thread.i.i, %bb.ef, %bb.ee
  %.29319.i = phi i32 [ %.293.i, %bb.ef ], [ %.293.i, %bb.ee ], [ %.29320.i, %convert_glob_print_separator.exit.thread.i.i ], [ %.29320.i, %convert_glob_print_separator.exit.i.i ], [ %.29320.i, %bb.el ]
  store i8 42, ptr %i.z, align 8, !tbaa !35
  %.not127.i = icmp ult ptr %.4.i, %i.u
  %spec.store.select.i = select i1 %.not127.i, i8 63, i8 43
  store i8 %spec.store.select.i, ptr %i.aa, align 1
  %i.lp = load ptr, ptr %6, align 8, !tbaa !32    ; 4 uses
  %i.lq = load ptr, ptr %i.x, align 8, !tbaa !33  ; 2 uses
  %i.lr = load i64, ptr %i.y, align 8, !tbaa !34
  %i.ls = icmp ult ptr %i.lp, %i.lq
  br i1 %i.ls, label %bb.em, label %bb.en

bb.em:                                            ; preds = %convert_glob_write.exit208.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 1
  store i8 42, ptr %i.lp, align 1, !tbaa !35
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %convert_glob_write.exit208.i
  %.115.i218.i = phi ptr [ %i.aa, %bb.em ], [ %i.z, %convert_glob_write.exit208.i ]
  %.1.i219.i = phi ptr [ %i.lt, %bb.em ], [ %i.lp, %convert_glob_write.exit208.i ] ; 4 uses
  %i.lu = icmp ult ptr %.1.i219.i, %i.lq
  br i1 %i.lu, label %bb.eo, label %convert_glob_write_str.exit221.i

bb.eo:                                            ; preds = %bb.en
  %i.lv = load i8, ptr %.115.i218.i, align 1, !tbaa !35
  %i.lw = getelementptr inbounds nuw i8, ptr %.1.i219.i, i64 1
  store i8 %i.lv, ptr %.1.i219.i, align 1, !tbaa !35
  br label %convert_glob_write_str.exit221.i

convert_glob_write_str.exit221.i:                 ; preds = %bb.eo, %bb.en
  %.1.i219.1.i = phi ptr [ %i.lw, %bb.eo ], [ %.1.i219.i, %bb.en ]
  %i.lx = add i64 %i.lr, 2
  store ptr %.1.i219.1.i, ptr %6, align 8, !tbaa !32
  store i64 %i.lx, ptr %i.y, align 8, !tbaa !34
  br label %.backedge.i

bb.ep:                                            ; preds = %bb.ah
  br i1 %i.w, label %bb.es, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ly = load i64, ptr %i.y, align 8, !tbaa !34
  %i.lz = add i64 %i.ly, 1
  store i64 %i.lz, ptr %i.y, align 8, !tbaa !34
  %i.ma = load ptr, ptr %6, align 8, !tbaa !32    ; 3 uses
  %i.mb = load ptr, ptr %i.x, align 8, !tbaa !33
  %i.mc = icmp ult ptr %i.ma, %i.mb
  br i1 %i.mc, label %bb.er, label %.backedge.i

bb.er:                                            ; preds = %bb.eq
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 1
  store ptr %i.md, ptr %6, align 8, !tbaa !32
  store i8 46, ptr %i.ma, align 1, !tbaa !35
  br label %.backedge.i

bb.es:                                            ; preds = %bb.ep
  store i8 91, ptr %i.z, align 8, !tbaa !35
  store i8 94, ptr %i.aa, align 1, !tbaa !35
  %i.me = load ptr, ptr %6, align 8, !tbaa !32    ; 4 uses
  %i.mf = load ptr, ptr %i.x, align 8, !tbaa !33  ; 2 uses
  %i.mg = load i64, ptr %i.y, align 8, !tbaa !34  ; 2 uses
  %i.mh = icmp ult ptr %i.me, %i.mf
  br i1 %i.mh, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.mi = getelementptr inbounds nuw i8, ptr %i.me, i64 1
  store i8 91, ptr %i.me, align 1, !tbaa !35
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %.115.i.i223.i = phi ptr [ %i.aa, %bb.et ], [ %i.z, %bb.es ]
  %.1.i.i224.i = phi ptr [ %i.mi, %bb.et ], [ %i.me, %bb.es ] ; 4 uses
  %i.mj = icmp ult ptr %.1.i.i224.i, %i.mf
  br i1 %i.mj, label %bb.ev, label %convert_glob_write_str.exit.i225.i

bb.ev:                                            ; preds = %bb.eu
  %i.mk = load i8, ptr %.115.i.i223.i, align 1, !tbaa !35
  %i.ml = getelementptr inbounds nuw i8, ptr %.1.i.i224.i, i64 1
  store i8 %i.mk, ptr %.1.i.i224.i, align 1, !tbaa !35
  br label %convert_glob_write_str.exit.i225.i

convert_glob_write_str.exit.i225.i:               ; preds = %bb.ev, %bb.eu
  %.1.i.1.i226.i = phi ptr [ %i.ml, %bb.ev ], [ %.1.i.i224.i, %bb.eu ] ; 6 uses
  %i.mm = add i64 %i.mg, 2
  store ptr %.1.i.1.i226.i, ptr %6, align 8, !tbaa !32
  %.pre8.i228.i = load ptr, ptr %i.x, align 8, !tbaa !33 ; 3 uses
  br i1 %.not53.i, label %convert_glob_write.exit.i.i229.i, label %bb.ew

bb.ew:                                            ; preds = %convert_glob_write_str.exit.i225.i
  %i.mn = add i64 %i.mg, 3                        ; 2 uses
  store i64 %i.mn, ptr %i.y, align 8, !tbaa !34
  %i.mo = icmp ult ptr %.1.i.1.i226.i, %.pre8.i228.i
  br i1 %i.mo, label %bb.ex, label %convert_glob_write.exit.i.i229.i

bb.ex:                                            ; preds = %bb.ew
  %i.mp = getelementptr inbounds nuw i8, ptr %.1.i.1.i226.i, i64 1
  store ptr %i.mp, ptr %6, align 8, !tbaa !32
  store i8 92, ptr %.1.i.1.i226.i, align 1, !tbaa !35
  %.pre.i.i236.i = load ptr, ptr %6, align 8, !tbaa !32
  %.pre.i237.i = load i64, ptr %i.y, align 8, !tbaa !34
  %.pre7.i238.i = load ptr, ptr %i.x, align 8, !tbaa !33
  br label %convert_glob_write.exit.i.i229.i

convert_glob_write.exit.i.i229.i:                 ; preds = %bb.ex, %bb.ew, %convert_glob_write_str.exit.i225.i
  %i.mq = phi ptr [ %.pre7.i238.i, %bb.ex ], [ %.pre8.i228.i, %bb.ew ], [ %.pre8.i228.i, %convert_glob_write_str.exit.i225.i ]
  %i.mr = phi i64 [ %.pre.i237.i, %bb.ex ], [ %i.mn, %bb.ew ], [ %i.mm, %convert_glob_write_str.exit.i225.i ] ; 2 uses
  %i.ms = phi ptr [ %.pre.i.i236.i, %bb.ex ], [ %.1.i.1.i226.i, %bb.ew ], [ %.1.i.1.i226.i, %convert_glob_write_str.exit.i225.i ] ; 3 uses
  %i.mt = add i64 %i.mr, 1
  store i64 %i.mt, ptr %i.y, align 8, !tbaa !34
  %i.mu = icmp ult ptr %i.ms, %i.mq
  br i1 %i.mu, label %convert_glob_print_separator.exit.i232.i, label %convert_glob_print_separator.exit.thread.i230.i

convert_glob_print_separator.exit.thread.i230.i:  ; preds = %convert_glob_write.exit.i.i229.i
  %i.mv = add i64 %i.mr, 2
  store i64 %i.mv, ptr %i.y, align 8, !tbaa !34
  br label %.backedge.i

convert_glob_print_separator.exit.i232.i:         ; preds = %convert_glob_write.exit.i.i229.i
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 1
  store ptr %i.mw, ptr %6, align 8, !tbaa !32
  store i8 %i.am, ptr %i.ms, align 1, !tbaa !35
  %.pre9.i233.i = load i64, ptr %i.y, align 8, !tbaa !34
  %.pre10.i234.i = load ptr, ptr %6, align 8, !tbaa !32 ; 3 uses
  %.pre11.i235.i = load ptr, ptr %i.x, align 8, !tbaa !33
  %i.mx = icmp ult ptr %.pre10.i234.i, %.pre11.i235.i
  %i.my = add i64 %.pre9.i233.i, 1
  store i64 %i.my, ptr %i.y, align 8, !tbaa !34
  br i1 %i.mx, label %bb.ey, label %.backedge.i

bb.ey:                                            ; preds = %convert_glob_print_separator.exit.i232.i
  %i.mz = getelementptr inbounds nuw i8, ptr %.pre10.i234.i, i64 1
  store ptr %i.mz, ptr %6, align 8, !tbaa !32
  store i8 93, ptr %.pre10.i234.i, align 1, !tbaa !35
  br label %.backedge.i

bb.ez:                                            ; preds = %bb.ah
  %.not.i240.i = icmp ult ptr %i.by, %i.u
  br i1 %.not.i240.i, label %bb.fa, label %convert_glob_parse_range.exit.thread.i

bb.fa:                                            ; preds = %bb.ez
  %i.na = load i8, ptr %i.by, align 1, !tbaa !35
  switch i8 %i.na, label %bb.fo [
    i8 33, label %bb.fb
    i8 94, label %bb.fb
  ]

bb.fb:                                            ; preds = %bb.fa, %bb.fa
  %i.nb = getelementptr inbounds nuw i8, ptr %.080.i, i64 2 ; 3 uses
  %.not288.i.i = icmp ult ptr %i.nb, %i.u
  br i1 %.not288.i.i, label %bb.fc, label %convert_glob_parse_range.exit.thread.i

bb.fc:                                            ; preds = %bb.fb
  store i8 91, ptr %i.z, align 8, !tbaa !35
  store i8 94, ptr %i.aa, align 1, !tbaa !35
  br i1 %i.w, label %bb.fd, label %bb.fg

bb.fd:                                            ; preds = %bb.fc
  br i1 %.not53.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  store i8 92, ptr %i.ab, align 2, !tbaa !35
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.0.i.i = phi i32 [ 3, %bb.fe ], [ 2, %bb.fd ]  ; 2 uses
  %i.nc = zext nneg i32 %.0.i.i to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.nc
  store i8 %i.am, ptr %i.nd, align 1, !tbaa !35
  %i.ne = add nuw nsw i32 %.0.i.i, 1
  %i.nf = zext nneg i32 %i.ne to i64
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fc
  %.1.i241.i = phi i64 [ 3, %bb.fc ], [ %i.nf, %bb.ff ] ; 2 uses
  %i.ng = load ptr, ptr %6, align 8, !tbaa !32    ; 4 uses
  %i.nh = load ptr, ptr %i.x, align 8, !tbaa !33  ; 4 uses
  %i.ni = load i64, ptr %i.y, align 8, !tbaa !34
  %i.nj = icmp ult ptr %i.ng, %i.nh
  br i1 %i.nj, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.nk = load i8, ptr %i.z, align 8, !tbaa !35
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ng, i64 1
  store i8 %i.nk, ptr %i.ng, align 1, !tbaa !35
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fg, %bb.fh
  %.115.i.i242.i = phi ptr [ %i.ai, %bb.fh ], [ %i.z, %bb.fg ] ; 3 uses
  %.1.i.i243.i = phi ptr [ %i.nl, %bb.fh ], [ %i.ng, %bb.fg ] ; 4 uses
  %i.nm = icmp ult ptr %.1.i.i243.i, %i.nh
  br i1 %i.nm, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.nn = getelementptr inbounds nuw i8, ptr %.115.i.i242.i, i64 1
  %i.no = load i8, ptr %.115.i.i242.i, align 1, !tbaa !35
  %i.np = getelementptr inbounds nuw i8, ptr %.1.i.i243.i, i64 1
  store i8 %i.no, ptr %.1.i.i243.i, align 1, !tbaa !35
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fi, %bb.fj
  %.115.i.i242.i.1 = phi ptr [ %i.nn, %bb.fj ], [ %.115.i.i242.i, %bb.fi ] ; 3 uses
  %.1.i.i243.i.1 = phi ptr [ %i.np, %bb.fj ], [ %.1.i.i243.i, %bb.fi ] ; 4 uses
  %7 = icmp ult ptr %.1.i.i243.i.1, %i.nh
  br i1 %7, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.nq = getelementptr inbounds nuw i8, ptr %.115.i.i242.i.1, i64 1
  %i.nr = load i8, ptr %.115.i.i242.i.1, align 1, !tbaa !35
  %i.ns = getelementptr inbounds nuw i8, ptr %.1.i.i243.i.1, i64 1
  store i8 %i.nr, ptr %.1.i.i243.i.1, align 1, !tbaa !35
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.115.i.i242.i.2 = phi ptr [ %i.nq, %bb.fl ], [ %.115.i.i242.i.1, %bb.fk ]
  %.1.i.i243.i.2 = phi ptr [ %i.ns, %bb.fl ], [ %.1.i.i243.i.1, %bb.fk ] ; 4 uses
  %.not.i.i.i.2 = icmp ne i64 %.1.i241.i, 3
  %i.nt = icmp ult ptr %.1.i.i243.i.2, %i.nh
  %or.cond376 = select i1 %.not.i.i.i.2, i1 %i.nt, i1 false
  br i1 %or.cond376, label %bb.fn, label %convert_glob_write_str.exit.i244.i

bb.fn:                                            ; preds = %bb.fm
  %i.nu = load i8, ptr %.115.i.i242.i.2, align 1, !tbaa !35
  %i.nv = getelementptr inbounds nuw i8, ptr %.1.i.i243.i.2, i64 1
  store i8 %i.nu, ptr %.1.i.i243.i.2, align 1, !tbaa !35
  br label %convert_glob_write_str.exit.i244.i

convert_glob_write_str.exit.i244.i:               ; preds = %bb.fn, %bb.fm
  %.1.i.i243.i.lcssa = phi ptr [ %.1.i.i243.i.2, %bb.fm ], [ %i.nv, %bb.fn ]
  %i.nw = add i64 %i.ni, %.1.i241.i
  store ptr %.1.i.i243.i.lcssa, ptr %6, align 8, !tbaa !32
  store i64 %i.nw, ptr %i.y, align 8, !tbaa !34
  br label %convert_glob_write.exit.i245.i

bb.fo:                                            ; preds = %bb.fa
  %i.nx = load i64, ptr %i.y, align 8, !tbaa !34
  %i.ny = add i64 %i.nx, 1
  store i64 %i.ny, ptr %i.y, align 8, !tbaa !34
  %i.nz = load ptr, ptr %6, align 8, !tbaa !32    ; 3 uses
  %i.oa = load ptr, ptr %i.x, align 8, !tbaa !33
  %i.ob = icmp ult ptr %i.nz, %i.oa
  br i1 %i.ob, label %bb.fp, label %convert_glob_write.exit.i245.i

bb.fp:                                            ; preds = %bb.fo
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nz, i64 1
  store ptr %i.oc, ptr %6, align 8, !tbaa !32
  store i8 91, ptr %i.nz, align 1, !tbaa !35
  br label %convert_glob_write.exit.i245.i

convert_glob_write.exit.i245.i:                   ; preds = %bb.fp, %bb.fo, %convert_glob_write_str.exit.i244.i
  %.not298.i.i = phi i1 [ false, %convert_glob_write_str.exit.i244.i ], [ true, %bb.fo ], [ true, %bb.fp ] ; 2 uses
  %.0259.i.i = phi ptr [ %i.nb, %convert_glob_write_str.exit.i244.i ], [ %i.by, %bb.fo ], [ %i.by, %bb.fp ] ; 3 uses
  %i.od = load i8, ptr %.0259.i.i, align 1, !tbaa !35
  %i.oe = icmp eq i8 %i.od, 93
  br i1 %i.oe, label %bb.fq, label %bb.fu

bb.fq:                                            ; preds = %convert_glob_write.exit.i245.i
  store i8 92, ptr %i.z, align 8, !tbaa !35
  store i8 93, ptr %i.aa, align 1, !tbaa !35
  %i.of = load ptr, ptr %6, align 8, !tbaa !32    ; 4 uses
  %i.og = load ptr, ptr %i.x, align 8, !tbaa !33  ; 2 uses
  %i.oh = load i64, ptr %i.y, align 8, !tbaa !34
  %i.oi = icmp ult ptr %i.of, %i.og
  br i1 %i.oi, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 1
  store i8 92, ptr %i.of, align 1, !tbaa !35
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.115.i312.i.i = phi ptr [ %i.aa, %bb.fr ], [ %i.z, %bb.fq ]
  %.1.i313.i.i = phi ptr [ %i.oj, %bb.fr ], [ %i.of, %bb.fq ] ; 4 uses
  %i.ok = icmp ult ptr %.1.i313.i.i, %i.og
  br i1 %i.ok, label %bb.ft, label %convert_glob_write_str.exit315.i.i

bb.ft:                                            ; preds = %bb.fs
  %i.ol = load i8, ptr %.115.i312.i.i, align 1, !tbaa !35
  %i.om = getelementptr inbounds nuw i8, ptr %.1.i313.i.i, i64 1
  store i8 %i.ol, ptr %.1.i313.i.i, align 1, !tbaa !35
  br label %convert_glob_write_str.exit315.i.i

convert_glob_write_str.exit315.i.i:               ; preds = %bb.ft, %bb.fs
  %.1.i313.1.i.i = phi ptr [ %i.om, %bb.ft ], [ %.1.i313.i.i, %bb.fs ]
  %i.on = add i64 %i.oh, 2
  store ptr %.1.i313.1.i.i, ptr %6, align 8, !tbaa !32
  store i64 %i.on, ptr %i.y, align 8, !tbaa !34
  %i.oo = getelementptr inbounds nuw i8, ptr %.0259.i.i, i64 1
  br label %bb.fu

bb.fu:                                            ; preds = %convert_glob_write_str.exit315.i.i, %convert_glob_write.exit.i245.i
  %.0265.i.i = phi i32 [ 1, %convert_glob_write_str.exit315.i.i ], [ 0, %convert_glob_write.exit.i245.i ]
  %.1260.i.i = phi ptr [ %i.oo, %convert_glob_write_str.exit315.i.i ], [ %.0259.i.i, %convert_glob_write.exit.i245.i ] ; 3 uses
  %.0250.i.i = phi i32 [ 93, %convert_glob_write_str.exit315.i.i ], [ 0, %convert_glob_write.exit.i245.i ]
  %i.op = icmp ult ptr %.1260.i.i, %i.u
  br i1 %i.op, label %.lr.ph.i.i, label %convert_glob_parse_range.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.fu, %.backedge.i.i
  %.1251374.i.i = phi i32 [ %.1251.be.i.i, %.backedge.i.i ], [ %.0250.i.i, %bb.fu ] ; 7 uses
  %.2261373.i.i = phi ptr [ %.2261.be.i.i, %.backedge.i.i ], [ %.1260.i.i, %bb.fu ] ; 20 uses
  %.1266372.i.i = phi i32 [ %.1266.be.i.i, %.backedge.i.i ], [ %.0265.i.i, %bb.fu ] ; 6 uses
  %.0268371.i.i = phi i32 [ %.0268.be.i.i, %.backedge.i.i ], [ 0, %bb.fu ] ; 11 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.2261373.i.i, i64 1 ; 3 uses
  %i.or = load i8, ptr %.2261373.i.i, align 1, !tbaa !35 ; 2 uses
  %i.os = zext i8 %i.or to i32                    ; 10 uses
  %i.ot = icmp ugt i8 %i.or, -65
  %or.cond.i.i = select i1 %i.q, i1 %i.ot, i1 false
  br i1 %or.cond.i.i, label %bb.fv, label %bb.ge

bb.fv:                                            ; preds = %.lr.ph.i.i
  %i.ou = and i32 %i.os, 32
  %i.ov = icmp eq i32 %i.ou, 0
  br i1 %i.ov, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.ow = shl nuw nsw i32 %i.os, 6
  %i.ox = and i32 %i.ow, 1984
  %i.oy = getelementptr inbounds nuw i8, ptr %.2261373.i.i, i64 2
  %i.oz = load i8, ptr %i.oq, align 1, !tbaa !35
  %i.pa = and i8 %i.oz, 63
  %i.pb = zext nneg i8 %i.pa to i32
  %i.pc = or disjoint i32 %i.ox, %i.pb
  br label %bb.ge

bb.fx:                                            ; preds = %bb.fv
  %i.pd = and i32 %i.os, 16
  %i.pe = icmp eq i32 %i.pd, 0
  %i.pf = load i8, ptr %i.oq, align 1, !tbaa !35
  %i.pg = and i8 %i.pf, 63
  %i.ph = zext nneg i8 %i.pg to i32               ; 4 uses
  br i1 %i.pe, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.pi = shl nuw nsw i32 %i.os, 12
  %i.pj = and i32 %i.pi, 61440
  %i.pk = shl nuw nsw i32 %i.ph, 6
  %i.pl = or disjoint i32 %i.pk, %i.pj
  %i.pm = getelementptr inbounds nuw i8, ptr %.2261373.i.i, i64 2
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !35
  %i.po = and i8 %i.pn, 63
  %i.pp = zext nneg i8 %i.po to i32
  %i.pq = or disjoint i32 %i.pl, %i.pp
  %i.pr = getelementptr inbounds nuw i8, ptr %.2261373.i.i, i64 3
  br label %bb.ge

bb.fz:                                            ; preds = %bb.fx
  %i.ps = and i32 %i.os, 8
  %i.pt = icmp eq i32 %i.ps, 0
  br i1 %i.pt, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.pu = shl nuw nsw i32 %i.os, 18
  %i.pv = and i32 %i.pu, 1835008
  %i.pw = shl nuw nsw i32 %i.ph, 12
  %i.px = or disjoint i32 %i.pw, %i.pv
  %i.py = getelementptr inbounds nuw i8, ptr %.2261373.i.i, i64 2
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !35
  %i.qa = and i8 %i.pz, 63
  %i.qb = zext nneg i8 %i.qa to i32
  %i.qc = shl nuw nsw i32 %i.qb, 6
  %i.qd = or disjoint i32 %i.qc, %i.px
  %i.qe = getelementptr inbounds nuw i8, ptr %.2261373.i.i, i64 3
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !35
  %i.qg = and i8 %i.qf, 63
  %i.qh = zext nneg i8 %i.qg to i32
  %i.qi = or disjoint i32 %i.qd, %i.qh
  %i.qj = getelementptr inbounds nuw i8, ptr %.2261373.i.i, i64 4
  br label %bb.ge

bb.gb:                                            ; preds = %bb.fz
  %i.qk = and i32 %i.os, 4
  %i.ql = icmp eq i32 %i.qk, 0
  %i.qm = getelementptr inbounds nuw i8, ptr %.2261373.i.i, i64 2
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !35
  %i.qo = and i8 %i.qn, 63
  %i.qp = zext nneg i8 %i.qo to i32               ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.2261373.i.i, i64 3
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !35
  %i.qs = and i8 %i.qr, 63
  %i.qt = zext nneg i8 %i.qs to i32               ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.2261373.i.i, i64 4
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !35
  %i.qw = and i8 %i.qv, 63
  %i.qx = zext nneg i8 %i.qw to i32               ; 2 uses
  br i1 %i.ql, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.qy = shl nuw i32 %i.os, 24
  %i.qz = and i32 %i.qy, 50331648
  %i.ra = shl nuw nsw i32 %i.ph, 18
  %i.rb = or disjoint i32 %i.ra, %i.qz
  %i.rc = shl nuw nsw i32 %i.qp, 12
  %i.rd = or disjoint i32 %i.rc, %i.rb
  %i.re = shl nuw nsw i32 %i.qt, 6
  %i.rf = or disjoint i32 %i.rd, %i.re
  %i.rg = or disjoint i32 %i.rf, %i.qx
  %i.rh = getelementptr inbounds nuw i8, ptr %.2261373.i.i, i64 5
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gb
  %i.ri = shl i32 %i.os, 30
  %i.rj = and i32 %i.ri, 1073741824
  %i.rk = shl nuw nsw i32 %i.ph, 24
  %i.rl = or disjoint i32 %i.rk, %i.rj
  %i.rm = shl nuw nsw i32 %i.qp, 18
  %i.rn = or disjoint i32 %i.rm, %i.rl
  %i.ro = shl nuw nsw i32 %i.qt, 12
  %i.rp = or disjoint i32 %i.rn, %i.ro
  %i.rq = shl nuw nsw i32 %i.qx, 6
  %i.rr = or disjoint i32 %i.rp, %i.rq
  %i.rs = getelementptr inbounds nuw i8, ptr %.2261373.i.i, i64 5
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !35
  %i.ru = and i8 %i.rt, 63
  %i.rv = zext nneg i8 %i.ru to i32
  %i.rw = or disjoint i32 %i.rr, %i.rv
  %i.rx = getelementptr inbounds nuw i8, ptr %.2261373.i.i, i64 6
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc, %bb.ga, %bb.fy, %bb.fw, %.lr.ph.i.i
  %.3262.i.i = phi ptr [ %i.oy, %bb.fw ], [ %i.pr, %bb.fy ], [ %i.qj, %bb.ga ], [ %i.rh, %bb.gc ], [ %i.rx, %bb.gd ], [ %i.oq, %.lr.ph.i.i ] ; 48 uses
  %.0252.i.i = phi i32 [ %i.pc, %bb.fw ], [ %i.pq, %bb.fy ], [ %i.qi, %bb.ga ], [ %i.rg, %bb.gc ], [ %i.rw, %bb.gd ], [ %i.os, %.lr.ph.i.i ] ; 6 uses
  %i.ry = icmp eq i32 %.0252.i.i, 93
  br i1 %i.ry, label %bb.gf, label %bb.gs

bb.gf:                                            ; preds = %bb.ge
  %i.rz = load i64, ptr %i.y, align 8, !tbaa !34
  %i.sa = add i64 %i.rz, 1
  store i64 %i.sa, ptr %i.y, align 8, !tbaa !34
  %i.sb = load ptr, ptr %6, align 8, !tbaa !32    ; 3 uses
end_hunk_0
