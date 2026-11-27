Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.11?download=true
inline.NumInlined: 10475
inline.NumDeleted: 2844
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 108
begin_hunk_0_@_RNvXs70_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt:bb.a
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ca, ptr %i.j, align 8
  %i.cb = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @701, i64 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) @702, i64 noundef 16, ptr noundef nonnull %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @700, ptr noalias noundef nonnull readonly captures(address, read_provenance) @674, i64 noundef 5, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @684)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %i.ch, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.cc, ptr %i.h, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @703, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.cd, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @704, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.ce, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr @371, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.cf, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr @705, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr %i.cg, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store ptr @369, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store ptr %i.i, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store ptr @684, ptr %i.cs, align 8
  %i.ct = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @712, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @711, i64 noundef 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.h, i64 noundef 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %i.cz, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.cu, ptr %i.f, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @703, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.cv, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @516, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.cw, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr @517, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.cx, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr @704, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %i.cy, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr @713, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr %i.g, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store ptr @684, ptr %i.dk, align 8
  %i.dl = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @716, i64 noundef 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @715, i64 noundef 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.f, i64 noundef 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.du, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.dm, ptr %i.d, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @703, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.dn, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @371, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.do, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @372, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.dp, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @717, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.dq, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr @718, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr %i.dr, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr @719, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr %i.ds, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr @720, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store ptr %i.dt, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store ptr @721, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr %i.e, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store ptr @684, ptr %i.el, align 8
  %i.em = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @728, i64 noundef 14, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @727, i64 noundef 9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef 9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %i.er, ptr %i.c, align 8
  %i.es = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @732, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) @733, i64 noundef 10, ptr noundef nonnull %i.en, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @729, ptr noalias noundef nonnull readonly captures(address, read_provenance) @734, i64 noundef 14, ptr noundef nonnull %i.eo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @516, ptr noalias noundef nonnull readonly captures(address, read_provenance) @735, i64 noundef 7, ptr noundef nonnull %i.ep, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @730, ptr noalias noundef nonnull readonly captures(address, read_provenance) @650, i64 noundef 7, ptr noundef nonnull %i.eq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @731, ptr noalias noundef nonnull readonly captures(address, read_provenance) @674, i64 noundef 5, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @684)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.ey, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.et, ptr %i.a, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @654, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.eu, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @371, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.ev, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @371, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.ew, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @371, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.ex, ptr %i.fg, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @369, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.b, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @684, ptr %i.fj, align 8
  %i.fk = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @741, i64 noundef 12, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @740, i64 noundef 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.aw, %bb.b ], [ %i.ba, %bb.c ], [ %i.bd, %bb.d ], [ %i.bi, %bb.e ], [ %i.bo, %bb.f ], [ %i.bt, %bb.g ], [ %i.by, %bb.h ], [ %i.cb, %bb.i ], [ %i.ct, %bb.j ], [ %i.dl, %bb.k ], [ %i.em, %bb.l ], [ %i.es, %bb.m ], [ %i.fk, %bb.n ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs73_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(616) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(616) %1) unnamed_addr #2 !guid !31602 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !103, !noundef !32 ; 3 uses
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 2) ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !103, !noundef !32 ; 4 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 2)
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.b:                                             ; preds = %bb.a
  switch i64 %i.b, label %default.unreachable204 [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.l
    i64 9, label %bb.m
    i64 10, label %bb.n
    i64 11, label %bb.o
    i64 12, label %bb.p
  ]

_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %.split115, %bb.dv, %bb.dk, %bb.dd, %bb.ck, %bb.cb, %bb.br, %bb.bp, %bb.bi, %bb.bd, %bb.av, %bb.aq, %bb.ao, %bb.dh, %bb.cv, %bb.as, %bb.ah, %bb.q, %bb.p, %bb.k, %bb.j, %.split127, %.split125, %.split124, %_RNvXs8Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %.split119, %.split118, %.split117, %_RNvXs7d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %_RNvXs5V_NtCs4lawaffTVVK_9sqlparser3astNtB6_8JsonPathNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %_RNvXsar_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12TableVersionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %.split112, %.split, %bb.dw, %bb.dt, %bb.dq, %bb.do, %bb.dm, %bb.du, %bb.dr, %bb.dp, %bb.dn, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.df, %bb.dg, %_RNvXshd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_16XmlPassingClauseNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.dj, %bb.o, %bb.di, %bb.de, %bb.db, %bb.cy, %bb.ct, %bb.cq, %bb.co, %bb.cm, %bb.dc, %bb.da, %bb.cz, %bb.cu, %bb.cr, %bb.cp, %bb.cn, %bb.n, %bb.cl, %bb.ci, %bb.cf, %bb.cj, %bb.cg, %bb.ce, %bb.cd, %bb.m, %bb.cc, %bb.bz, %bb.bv, %bb.bt, %bb.ca, %bb.bx, %bb.bw, %bb.bu, %bb.l, %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.bq, %bb.bn, %bb.bl, %bb.bo, %bb.bm, %bb.i, %bb.h, %bb.bf, %bb.bh, %bb.bg, %bb.be, %bb.bb, %bb.az, %bb.bc, %bb.ba, %bb.ax, %bb.g, %bb.f, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit107, %bb.au, %bb.at, %bb.e, %bb.d, %bb.an, %bb.al, %bb.am, %bb.aj, %bb.af, %bb.ac, %bb.aa, %bb.x, %bb.v, %bb.s, %bb.ak, %bb.ag, %bb.ad, %bb.ab, %bb.y, %bb.w, %bb.t, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit104, %bb.c, %bb.a, %bb.dl, %bb.bs, %bb.bj, %bb.aw, %bb.ar, %bb.ap
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.fm, %bb.ap ], [ false, %bb.d ], [ false, %bb.j ], [ false, %bb.al ], [ %i.fs, %bb.ar ], [ false, %bb.e ], [ %.mux, %bb.ao ], [ %.mux172, %bb.dv ], [ %i.go, %bb.aw ], [ false, %bb.f ], [ %.mux152, %bb.aq ], [ false, %bb.cv ], [ false, %.split125 ], [ %i.ii, %bb.bj ], [ false, %bb.h ], [ %.mux156, %bb.bd ], [ false, %.split124 ], [ false, %bb.as ], [ %i.jk, %bb.bs ], [ false, %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ %.mux160, %bb.bp ], [ false, %_RNvXs8Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.dh ], [ false, %.split119 ], [ false, %.split118 ], [ %i.pe, %bb.dl ], [ false, %bb.df ], [ %.mux168, %bb.dd ], [ false, %.split117 ], [ false, %bb.ah ], [ %i.fb, %bb.am ], [ false, %bb.c ], [ false, %bb.aj ], [ false, %bb.af ], [ false, %bb.ac ], [ false, %bb.aa ], [ false, %bb.x ], [ false, %bb.v ], [ false, %bb.s ], [ false, %bb.ak ], [ false, %bb.ag ], [ false, %bb.ad ], [ false, %bb.ab ], [ false, %bb.y ], [ false, %bb.w ], [ false, %bb.t ], [ false, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit104 ], [ false, %bb.an ], [ false, %bb.at ], [ false, %bb.au ], [ false, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit107 ], [ %i.hp, %bb.be ], [ false, %bb.g ], [ %.mux154, %bb.av ], [ false, %bb.bb ], [ false, %bb.az ], [ false, %bb.bc ], [ false, %bb.ba ], [ false, %bb.ax ], [ false, %bb.bg ], [ false, %bb.bh ], [ false, %bb.bf ], [ %i.je, %bb.bq ], [ false, %bb.i ], [ %.mux158, %bb.bi ], [ false, %bb.bn ], [ false, %bb.bl ], [ false, %bb.bo ], [ false, %bb.bm ], [ %i.kr, %bb.cc ], [ false, %bb.l ], [ %.mux162, %bb.br ], [ false, %bb.bz ], [ false, %bb.bv ], [ false, %bb.bt ], [ false, %bb.ca ], [ false, %bb.bx ], [ false, %bb.bw ], [ false, %bb.bu ], [ %i.lr, %bb.cl ], [ false, %bb.m ], [ %.mux164, %bb.cb ], [ false, %bb.ci ], [ false, %bb.cf ], [ false, %bb.cj ], [ false, %bb.cg ], [ false, %bb.ce ], [ false, %bb.cd ], [ %i.oc, %bb.de ], [ false, %bb.n ], [ %.mux166, %bb.ck ], [ false, %bb.db ], [ false, %bb.cy ], [ false, %bb.ct ], [ false, %bb.cq ], [ false, %bb.co ], [ false, %bb.cm ], [ false, %bb.dc ], [ false, %bb.da ], [ false, %bb.cz ], [ false, %bb.cu ], [ false, %bb.cr ], [ false, %bb.cp ], [ false, %bb.cn ], [ false, %bb.di ], [ false, %bb.o ], [ false, %bb.dj ], [ false, %_RNvXshd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_16XmlPassingClauseNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.dg ], [ %i.qu, %bb.dw ], [ false, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ %.mux170, %bb.dk ], [ false, %bb.dt ], [ false, %bb.dq ], [ false, %bb.do ], [ false, %bb.dm ], [ false, %bb.du ], [ false, %bb.dr ], [ false, %bb.dp ], [ false, %bb.dn ], [ false, %_RNvXs7d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %.split127 ], [ false, %bb.k ], [ false, %bb.p ], [ false, %.split ], [ false, %.split112 ], [ false, %_RNvXsar_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12TableVersionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %_RNvXs5V_NtCs4lawaffTVVK_9sqlparser3astNtB6_8JsonPathNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.q ], [ false, %.split115 ]
  ret i1 %.sroa.0.0

default.unreachable204:                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i64 %i.c, 3
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.h = load i8, ptr %i.g, align 8, !range !41, !noundef !32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.j = load i8, ptr %i.i, align 8, !range !41, !noundef !32
  %i.k = icmp eq i8 %i.h, %i.j
  br i1 %i.k, label %bb.q, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load i8, ptr %i.l, align 8, !range !41, !noundef !32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.o = load i8, ptr %i.n, align 8, !range !41, !noundef !32
  %i.p = icmp eq i8 %i.m, %i.o
  br i1 %i.p, label %bb.an, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.r) #57
  br i1 %i.s, label %bb.aq, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = load i8, ptr %i.t, align 8, !range !41, !noundef !32
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.w = load i8, ptr %i.v, align 8, !range !41, !noundef !32
  %i.x = icmp eq i8 %i.u, %i.w
  br i1 %i.x, label %bb.as, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.g:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.z = load i8, ptr %i.y, align 8, !range !41, !noundef !32
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ab = load i8, ptr %i.aa, align 8, !range !41, !noundef !32
  %i.ac = icmp eq i8 %i.z, %i.ab
  br i1 %i.ac, label %bb.ax, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.h:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ae) #57
  br i1 %i.af, label %bb.bf, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.i:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ah) #57
  br i1 %i.ai, label %bb.bk, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.j:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !32, !noundef !32 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !32, !noundef !32 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31604)
  %i.an = tail call fastcc noundef zeroext i1 @_RNvXs73_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(640) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(640) %i.am) #57, !inline_history !31605
  br i1 %i.an, label %bb.k, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 632
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !31603, !noundef !32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 632
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !31604, !noundef !32
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 624
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !31604, !nonnull !32, !noundef !32
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 624
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !31603, !nonnull !32, !noundef !32
  %i.ax = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query4JoinINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.au, i64 noundef %i.ap), !inline_history !31605
  br i1 %i.ax, label %bb.br, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.l:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !32, !noundef !32
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !32, !noundef !32
  %i.be = tail call fastcc noundef zeroext i1 @_RNvXs73_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.bd) #57
  br i1 %i.be, label %bb.bt, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.m:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !32, !noundef !32
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !32, !noundef !32
  %i.bl = tail call fastcc noundef zeroext i1 @_RNvXs73_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.bk) #57
  br i1 %i.bl, label %bb.cd, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.n:                                             ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !32, !noundef !32
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !32, !noundef !32
  %i.bs = tail call fastcc noundef zeroext i1 @_RNvXs73_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.bp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.br) #57
  br i1 %i.bs, label %bb.cm, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.o:                                             ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !32 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.by = load i64, ptr %i.bx, align 8, !noundef !32
  %i.bz = icmp eq i64 %i.bw, %i.by
  br i1 %i.bz, label %bb.df, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.p:                                             ; preds = %bb.b
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.val88 = load i64, ptr %i.ca, align 8, !noundef !32 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.val90 = load i64, ptr %i.cb, align 8, !noundef !32
  %i.cc = icmp eq i64 %.val88, %.val90
  br i1 %i.cc, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 344
  %.val89 = load ptr, ptr %i.cd, align 8, !nonnull !32, !noundef !32
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.val87 = load ptr, ptr %i.ce, align 8, !nonnull !32, !noundef !32
  %i.cf = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %.val87, ptr noundef nonnull %.val89, i64 noundef %.val88)
  br i1 %i.cf, label %bb.dm, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.q:                                             ; preds = %bb.c
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.val84 = load i64, ptr %i.cg, align 8, !noundef !32 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.val86 = load i64, ptr %i.ch, align 8, !noundef !32
  %i.ci = icmp eq i64 %.val84, %.val86
  br i1 %i.ci, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit104, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit104: ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.val85 = load ptr, ptr %i.cj, align 8, !nonnull !32, !noundef !32
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.val83 = load ptr, ptr %i.ck, align 8, !nonnull !32, !noundef !32
  %i.cl = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %.val83, ptr noundef nonnull %.val85, i64 noundef %.val84)
  br i1 %i.cl, label %bb.r, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.r:                                             ; preds = %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit104
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !range !33, !noundef !32
  %.not70 = icmp eq i64 %i.cn, -9223372036854775808
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !range !33, !noundef !32
  %i.cq = icmp eq i64 %i.cp, -9223372036854775808 ; 2 uses
  br i1 %.not70, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.cq, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %.split

bb.t:                                             ; preds = %bb.r
  br i1 %i.cq, label %bb.u, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.s
  %i.cr = tail call fastcc noundef zeroext i1 @_RNvXsa7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10TableAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.co) #57
  br i1 %i.cr, label %bb.u, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.u:                                             ; preds = %.split, %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !range !33, !noundef !32
  %.not72 = icmp eq i64 %i.ct, -9223372036854775808
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !range !33, !noundef !32
  %i.cw = icmp eq i64 %i.cv, -9223372036854775808 ; 2 uses
  br i1 %.not72, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.cw, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %.split112

bb.w:                                             ; preds = %bb.u
  br i1 %i.cw, label %bb.x, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

.split112:                                        ; preds = %bb.v
  %i.cx = tail call fastcc noundef zeroext i1 @_RNvXs6f_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17TableFunctionArgsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cu) #57
  br i1 %i.cx, label %bb.x, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.x:                                             ; preds = %.split112, %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !32 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.db = load i64, ptr %i.da, align 8, !noundef !32
  %i.dc = icmp eq i64 %i.cz, %i.db
  br i1 %i.dc, label %bb.y, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !32, !noundef !32
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !32, !noundef !32
  %i.dh = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.de, i64 noundef %i.cz)
  br i1 %i.dh, label %bb.z, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.z:                                             ; preds = %bb.y
  %.not74 = icmp eq i64 %i.a, 2
  br i1 %.not74, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.di = icmp eq i64 %i.a, %i.c
  br i1 %i.di, label %_RNvXsar_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12TableVersionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.ab:                                            ; preds = %bb.z
  %.not177 = icmp eq i64 %i.c, 2
  br i1 %.not177, label %bb.ac, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXsar_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12TableVersionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.aa
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dl = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.dk) #57, !inline_history !15
  br i1 %i.dl, label %bb.ac, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.ac:                                            ; preds = %_RNvXsar_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12TableVersionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.ab
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.dn = load i64, ptr %i.dm, align 8, !noundef !32 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.dp = load i64, ptr %i.do, align 8, !noundef !32
  %i.dq = icmp eq i64 %i.dn, %i.dp
  br i1 %i.dq, label %bb.ad, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.ds = load ptr, ptr %i.dr, align 8, !nonnull !32, !noundef !32
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !32, !noundef !32
  %i.dv = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.du, ptr noundef nonnull %i.ds, i64 noundef %i.dn)
  br i1 %i.dv, label %bb.ae, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.dx = load i64, ptr %i.dw, align 8, !range !33, !noundef !32
  %.not76 = icmp eq i64 %i.dx, -9223372036854775808
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.dz = load i64, ptr %i.dy, align 8, !range !33, !noundef !32
  %i.ea = icmp eq i64 %i.dz, -9223372036854775808 ; 2 uses
  br i1 %.not76, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %i.ea, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  br i1 %i.ea, label %bb.ai, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.ah:                                            ; preds = %bb.af
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 600
  %.val92 = load i64, ptr %i.eb, align 8, !noundef !32 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 600
  %.val94 = load i64, ptr %i.ec, align 8, !noundef !32
  %i.ed = icmp eq i64 %.val92, %.val94
  br i1 %i.ed, label %_RNvXs5V_NtCs4lawaffTVVK_9sqlparser3astNtB6_8JsonPathNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs5V_NtCs4lawaffTVVK_9sqlparser3astNtB6_8JsonPathNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.ah
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 592
  %.val93 = load ptr, ptr %i.ee, align 8, !nonnull !32, !noundef !32
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 592
  %.val91 = load ptr, ptr %i.ef, align 8, !nonnull !32, !noundef !32
  %i.eg = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast12JsonPathElemINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %.val91, ptr noundef nonnull %.val93, i64 noundef %.val92)
  br i1 %i.eg, label %bb.ai, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.ai:                                            ; preds = %_RNvXs5V_NtCs4lawaffTVVK_9sqlparser3astNtB6_8JsonPathNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.ag
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ei = load i64, ptr %i.eh, align 8, !range !38, !noundef !32 ; 2 uses
  %.not78 = icmp eq i64 %i.ei, 2
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ek = load i64, ptr %i.ej, align 8, !range !38, !noundef !32 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 2                    ; 2 uses
  br i1 %.not78, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.el, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %.split115

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.el, label %bb.al, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

.split115:                                        ; preds = %bb.aj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31607)
  %i.em = icmp eq i64 %i.ei, %i.ek
  br i1 %i.em, label %_RNvXs7d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs7d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %.split115
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !31606, !nonnull !32, !noundef !32
  %i.eq = load ptr, ptr %i.en, align 8, !alias.scope !31607, !nonnull !32, !noundef !32
  %i.er = tail call fastcc noundef zeroext i1 @_RNvXs7n_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableSampleNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.ep, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.eq) #57, !noalias !31608, !inline_history !31601
  br i1 %i.er, label %bb.al, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.al:                                            ; preds = %_RNvXs7d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.ak
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.et = load i64, ptr %i.es, align 8, !noundef !32 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ev = load i64, ptr %i.eu, align 8, !noundef !32
  %i.ew = icmp eq i64 %i.et, %i.ev
  br i1 %i.ew, label %bb.am, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.ey = load ptr, ptr %i.ex, align 8, !nonnull !32, !noundef !32
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.fa = load ptr, ptr %i.ez, align 8, !nonnull !32, !noundef !32
  %i.fb = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableIndexHintsINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.fa, ptr noundef nonnull %i.ey, i64 noundef %i.et)
  br label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.an:                                            ; preds = %bb.d
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fd = load ptr, ptr %i.fc, align 8, !nonnull !32, !noundef !32
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ff = load ptr, ptr %i.fe, align 8, !nonnull !32, !noundef !32
end_hunk_0
begin_hunk_1_@_RNvXsg_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.xt = load ptr, ptr %i.xs, align 8, !alias.scope !33403, !nonnull !32, !noundef !32 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.xv = load ptr, ptr %i.xu, align 8, !alias.scope !33404, !nonnull !32, !noundef !32 ; 2 uses
  %i.xw = icmp eq ptr %i.xt, %i.xv
  br i1 %i.xw, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xt, i64 16
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xv, i64 16
  %i.xz = tail call fastcc noundef zeroext i1 @_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.xx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.xy) #57, !inline_history !33323
  br label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ef:                                            ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33407)
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.yb = load i8, ptr %i.ya, align 8, !range !41, !alias.scope !33406, !noundef !32
  %i.yc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.yd = load i8, ptr %i.yc, align 8, !range !41, !alias.scope !33407, !noundef !32
  %i.ye = icmp eq i8 %i.yb, %i.yd
  br i1 %i.ye, label %bb.eg, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.eg:                                            ; preds = %bb.ef
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.yg = load i64, ptr %i.yf, align 8, !alias.scope !33406, !noundef !32 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.yi = load i64, ptr %i.yh, align 8, !alias.scope !33407, !noundef !32
  %i.yj = icmp eq i64 %i.yg, %i.yi
  br i1 %i.yj, label %bb.eh, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.eh:                                            ; preds = %bb.eg
  %i.yk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.yl = load ptr, ptr %i.yk, align 16, !alias.scope !33407, !nonnull !32, !noundef !32
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.yn = load ptr, ptr %i.ym, align 16, !alias.scope !33406, !nonnull !32, !noundef !32
  %bcmp.i32 = tail call i32 @bcmp(ptr nonnull %i.yn, ptr nonnull %i.yl, i64 %i.yg), !noalias !33408
  %i.yo = icmp eq i32 %bcmp.i32, 0
  br i1 %i.yo, label %bb.ei, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ei:                                            ; preds = %bb.eh
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.yq = load ptr, ptr %i.yp, align 16, !alias.scope !33406, !nonnull !32, !noundef !32 ; 6 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ys = load ptr, ptr %i.yr, align 16, !alias.scope !33407, !nonnull !32, !noundef !32 ; 6 uses
  %i.yt = icmp eq ptr %i.yq, %i.ys
  br i1 %i.yt, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33410)
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yq, i64 64
  %i.yv = load ptr, ptr %i.yu, align 8, !alias.scope !33409, !noalias !33408, !nonnull !32, !noundef !32 ; 4 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.ys, i64 64
  %i.yx = load ptr, ptr %i.yw, align 8, !alias.scope !33410, !noalias !33408, !nonnull !32, !noundef !32 ; 4 uses
  %i.yy = icmp eq ptr %i.yv, %i.yx
  br i1 %i.yy, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33412)
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yv, i64 24
  %i.za = load i64, ptr %i.yz, align 8, !alias.scope !33411, !noalias !33413, !noundef !32 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yx, i64 24
  %i.zc = load i64, ptr %i.zb, align 8, !alias.scope !33412, !noalias !33413, !noundef !32
  %i.zd = icmp eq i64 %i.za, %i.zc
  br i1 %i.zd, label %bb.el, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.el:                                            ; preds = %bb.ek
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yx, i64 16
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  %i.zg = load ptr, ptr %i.ze, align 8, !alias.scope !33412, !noalias !33413, !nonnull !32, !noundef !32
  %i.zh = load ptr, ptr %i.zf, align 8, !alias.scope !33411, !noalias !33413, !nonnull !32, !noundef !32
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 16
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  %i.zk = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.zi, ptr noundef nonnull %i.zj, i64 noundef %i.za), !noalias !33414
  br i1 %i.zk, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i33, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i33: ; preds = %bb.el
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yv, i64 32
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yx, i64 32
  %i.zn = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.zl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.zm), !noalias !33413
  br i1 %i.zn, label %bb.em, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.em:                                            ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i33, %bb.ej
  %i.zo = getelementptr inbounds nuw i8, ptr %i.yq, i64 32
  %i.zp = load i64, ptr %i.zo, align 8, !alias.scope !33409, !noalias !33408, !noundef !32 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.ys, i64 32
  %i.zr = load i64, ptr %i.zq, align 8, !alias.scope !33410, !noalias !33408, !noundef !32
  %i.zs = icmp eq i64 %i.zp, %i.zr
  br i1 %i.zs, label %bb.en, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.en:                                            ; preds = %bb.em
  %i.zt = getelementptr inbounds nuw i8, ptr %i.ys, i64 24
  %i.zu = load ptr, ptr %i.zt, align 8, !alias.scope !33410, !noalias !33408, !nonnull !32, !noundef !32
  %i.zv = getelementptr inbounds nuw i8, ptr %i.yq, i64 24
  %i.zw = load ptr, ptr %i.zv, align 8, !alias.scope !33409, !noalias !33408, !nonnull !32, !noundef !32
  %i.zx = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.zw, ptr noundef nonnull %i.zu, i64 noundef %i.zp), !noalias !33413
  br i1 %i.zx, label %bb.eo, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.eo:                                            ; preds = %bb.en
  %i.zy = getelementptr inbounds nuw i8, ptr %i.yq, i64 56
  %i.zz = load i64, ptr %i.zy, align 8, !alias.scope !33409, !noalias !33408, !noundef !32 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.ys, i64 56
  %i.aab = load i64, ptr %i.aaa, align 8, !alias.scope !33410, !noalias !33408, !noundef !32
  %i.aac = icmp eq i64 %i.zz, %i.aab
  br i1 %i.aac, label %bb.ep, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ep:                                            ; preds = %bb.eo
  %i.aad = getelementptr inbounds nuw i8, ptr %i.ys, i64 48
  %i.aae = load ptr, ptr %i.aad, align 8, !alias.scope !33410, !noalias !33408, !nonnull !32, !noundef !32
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.yq, i64 48
  %i.aag = load ptr, ptr %i.aaf, align 8, !alias.scope !33409, !noalias !33408, !nonnull !32, !noundef !32
  %i.aah = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.aag, ptr noundef nonnull %i.aae, i64 noundef %i.zz), !noalias !33413
  br label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsgz_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_19UpdateTableFromKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 !guid !33415 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !36, !noundef !32
  %i.b = load i64, ptr %1, align 8, !range !36, !noundef !32
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !32
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !32, !noundef !32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !32, !noundef !32
  %i.m = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.l, ptr noundef nonnull %i.j, i64 noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.sink.split, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ %i.m, %.sink.split ], [ false, %bb.b ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXshM_NtCs4lawaffTVVK_9sqlparser3astNtB6_11FunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(664) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(664) %1) unnamed_addr #2 !guid !33426 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !59, !noundef !32 ; 3 uses
  %i.b = icmp ne i64 %i.a, 70
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -69
  %i.d = icmp samesign ugt i64 %i.a, 68
  %i.e = select i1 %i.d, i64 %i.c, i64 1          ; 3 uses
  %i.f = load i64, ptr %1, align 8, !range !59, !noundef !32 ; 3 uses
  %i.g = icmp ne i64 %i.f, 70
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -69
  %i.i = icmp samesign ugt i64 %i.f, 68
  %i.j = select i1 %i.i, i64 %i.h, i64 1          ; 2 uses
  %.not = icmp eq i64 %i.e, %i.j
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

bb.c:                                             ; preds = %bb.a
  %i.k = tail call i8 @llvm.scmp.i8.i64(i64 %i.e, i64 %i.j)
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.p = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.n) ; 2 uses
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.m, label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.t = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) #57 ; 2 uses
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.t, label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.g:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33428)
  %i.x = load i64, ptr %i.v, align 8, !range !56, !alias.scope !33427, !noundef !32
  %i.y = tail call i64 @llvm.usub.sat.i64(i64 %i.x, i64 68) ; 2 uses
  %i.z = load i64, ptr %i.w, align 8, !range !56, !alias.scope !33428, !noundef !32 ; 2 uses
  %i.aa = tail call i64 @llvm.usub.sat.i64(i64 %i.z, i64 68) ; 2 uses
  switch i64 %i.y, label %default.unreachable [
    i64 0, label %bb.h
    i64 1, label %bb.i
    i64 2, label %bb.j
  ]

default.unreachable:                              ; preds = %bb.t, %bb.m, %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp samesign ult i64 %i.z, 69
  br i1 %i.ab, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.aa, 1
  br i1 %i.ac, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ad = tail call i8 @llvm.scmp.i8.i64(i64 %i.y, i64 %i.aa)
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.k:                                             ; preds = %bb.h
  %i.ae = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.w) #57, !inline_history !33419
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.l:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.af, align 8, !alias.scope !33427, !nonnull !32, !noundef !32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load i64, ptr %i.ag, align 8, !alias.scope !33427, !noundef !32
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i = load ptr, ptr %i.ah, align 8, !alias.scope !33428, !nonnull !32, !noundef !32
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val3.i = load i64, ptr %i.ai, align 8, !alias.scope !33428, !noundef !32
  %i.aj = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2.i, i64 noundef %.val3.i), !noalias !33429
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.m:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33431)
  %i.am = load i64, ptr %i.al, align 8, !range !56, !alias.scope !33430, !noundef !32
  %i.an = tail call i64 @llvm.usub.sat.i64(i64 %i.am, i64 68) ; 2 uses
  %i.ao = load i64, ptr %i.ak, align 8, !range !56, !alias.scope !33431, !noundef !32 ; 2 uses
  %i.ap = tail call i64 @llvm.usub.sat.i64(i64 %i.ao, i64 68) ; 2 uses
  switch i64 %i.an, label %default.unreachable [
    i64 0, label %bb.n
    i64 1, label %bb.o
    i64 2, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.aq = icmp samesign ult i64 %i.ao, 69
  br i1 %i.aq, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ar = icmp eq i64 %i.ap, 1
  br i1 %i.ar, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.as = tail call i8 @llvm.scmp.i8.i64(i64 %i.an, i64 %i.ap)
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit25

bb.q:                                             ; preds = %bb.n
  %i.at = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ak) #57, !inline_history !33419
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit25

bb.r:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i21 = load ptr, ptr %i.au, align 8, !alias.scope !33430, !nonnull !32, !noundef !32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i22 = load i64, ptr %i.av, align 8, !alias.scope !33430, !noundef !32
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i23 = load ptr, ptr %i.aw, align 8, !alias.scope !33431, !nonnull !32, !noundef !32
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val3.i24 = load i64, ptr %i.ax, align 8, !alias.scope !33431, !noundef !32
  %i.ay = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i21, i64 noundef %.val1.i22, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2.i23, i64 noundef %.val3.i24), !noalias !33432
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit25

_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit25: ; preds = %bb.p, %bb.q, %bb.r
  %.sroa.0.0.i20 = phi i8 [ %i.at, %bb.q ], [ %i.as, %bb.p ], [ %i.ay, %bb.r ] ; 2 uses
  %i.az = icmp eq i8 %.sroa.0.0.i20, 0
  br i1 %i.az, label %bb.s, label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.s:                                             ; preds = %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit25
  %.val18 = load i8, ptr %i.m, align 8, !range !94, !noundef !32
  %.val19 = load i8, ptr %i.o, align 8, !range !94, !noundef !32
  %i.ba = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.val18, i8 %.val19)
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %bb.l, %bb.k, %bb.j, %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit31, %bb.f, %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit25, %bb.e, %bb.z, %bb.s, %bb.c
  %.sroa.0.0 = phi i8 [ %i.k, %bb.c ], [ %i.ba, %bb.s ], [ %.sroa.0.0.i20, %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit25 ], [ %i.p, %bb.e ], [ %i.br, %bb.z ], [ %.sroa.0.0.i26, %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit31 ], [ %i.t, %bb.f ], [ %i.ae, %bb.k ], [ %i.ad, %bb.j ], [ %i.aj, %bb.l ]
  ret i8 %.sroa.0.0

bb.t:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33434)
  %i.bd = load i64, ptr %i.bc, align 8, !range !56, !alias.scope !33433, !noundef !32
  %i.be = tail call i64 @llvm.usub.sat.i64(i64 %i.bd, i64 68) ; 2 uses
  %i.bf = load i64, ptr %i.bb, align 8, !range !56, !alias.scope !33434, !noundef !32 ; 2 uses
  %i.bg = tail call i64 @llvm.usub.sat.i64(i64 %i.bf, i64 68) ; 2 uses
  switch i64 %i.be, label %default.unreachable [
    i64 0, label %bb.u
    i64 1, label %bb.v
    i64 2, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.bh = icmp samesign ult i64 %i.bf, 69
  br i1 %i.bh, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bi = icmp eq i64 %i.bg, 1
  br i1 %i.bi, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.bj = tail call i8 @llvm.scmp.i8.i64(i64 %i.be, i64 %i.bg)
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit31

bb.x:                                             ; preds = %bb.u
  %i.bk = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.bc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.bb) #57, !inline_history !33419
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit31

bb.y:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.val.i27 = load ptr, ptr %i.bl, align 8, !alias.scope !33433, !nonnull !32, !noundef !32
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.val1.i28 = load i64, ptr %i.bm, align 8, !alias.scope !33433, !noundef !32
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 344
  %.val2.i29 = load ptr, ptr %i.bn, align 8, !alias.scope !33434, !nonnull !32, !noundef !32
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.val3.i30 = load i64, ptr %i.bo, align 8, !alias.scope !33434, !noundef !32
  %i.bp = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i27, i64 noundef %.val1.i28, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2.i29, i64 noundef %.val3.i30), !noalias !33435
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit31

_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit31: ; preds = %bb.w, %bb.x, %bb.y
  %.sroa.0.0.i26 = phi i8 [ %i.bk, %bb.x ], [ %i.bj, %bb.w ], [ %i.bp, %bb.y ] ; 2 uses
  %i.bq = icmp eq i8 %.sroa.0.0.i26, 0
  br i1 %i.bq, label %bb.z, label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.z:                                             ; preds = %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit31
  %.val = load i8, ptr %i.r, align 8, !range !94, !noundef !32
  %.val17 = load i8, ptr %i.s, align 8, !range !94, !noundef !32
  %i.br = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.val, i8 %.val17)
  br label %_RNvXshs_NtCs4lawaffTVVK_9sqlparser3astNtB6_15FunctionArgExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXshV_NtCs4lawaffTVVK_9sqlparser3astNtB6_11CloseCursorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #21 !guid !33436 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !33, !noundef !32
  %i.b = icmp ne i64 %i.a, -9223372036854775808   ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !33, !noundef !32
  %i.d = icmp ne i64 %i.c, -9223372036854775808   ; 2 uses
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond = and i1 %i.b, %i.d
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.e, %bb.d, %bb.b, %bb.a, %bb.h
  %.sroa.0.0.shrunk = phi i1 [ %i.t, %bb.g ], [ false, %bb.e ], [ %i.u, %bb.h ], [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.d ]
  ret i1 %.sroa.0.0.shrunk

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !32
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !32, !noundef !32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !32, !noundef !32
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.n, ptr nonnull %i.l, i64 %i.g)
  %i.o = icmp eq i32 %bcmp, 0
  br i1 %i.o, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i32, ptr %i.p, align 8, !range !123, !noundef !32 ; 2 uses
  %.not = icmp eq i32 %i.q, 1114112
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load i32, ptr %i.r, align 8, !range !123, !noundef !32 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq i32 %i.q, %i.s
  br label %bb.c

bb.h:                                             ; preds = %bb.f
  %i.u = icmp eq i32 %i.s, 1114112
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXshW_NtCs4lawaffTVVK_9sqlparser3astNtB6_11CloseCursorNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #2 !guid !33437 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !33, !noundef !32
  %i.b = icmp ne i64 %i.a, -9223372036854775808   ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !33, !noundef !32
  %i.d = icmp ne i64 %i.c, -9223372036854775808   ; 2 uses
  %or.cond = and i1 %i.b, %i.d
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.neg = sext i1 %i.d to i8
  %i.e = zext i1 %i.b to i8
  %i.f = add nsw i8 %.neg, %i.e
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %i.g, %bb.c ], [ %i.f, %bb.b ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsha_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_16XmlPassingClauseNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !33438 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1682, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1440, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1681)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsi5_NtCs4lawaffTVVK_9sqlparser3astNtB6_10DropDomainNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 !guid !33439 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !41, !noundef !32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !41, !noundef !32
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load i64, ptr %i.f, align 8, !noundef !32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4 = load i64, ptr %i.g, align 8, !noundef !32
  %i.h = icmp eq i64 %.val2, %.val4
  br i1 %i.h, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.i, align 8, !nonnull !32, !noundef !32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.j, align 8, !nonnull !32, !noundef !32
  %i.k = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %.val, ptr noundef nonnull %.val3, i64 noundef %.val2)
  br i1 %i.k, label %bb.c, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.c:                                             ; preds = %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.m = load i8, ptr %i.l, align 1, !range !40, !noundef !32 ; 2 uses
  %.not = icmp eq i8 %i.m, 2
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.o = load i8, ptr %i.n, align 1, !range !40, !noundef !32 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.d, %bb.b, %bb.a, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.e
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.q, %bb.e ], [ false, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ %i.p, %bb.d ]
  ret i1 %.sroa.0.0.shrunk

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq i8 %i.m, %i.o
  br label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.q = icmp eq i8 %i.o, 2
  br label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXsi6_NtCs4lawaffTVVK_9sqlparser3astNtB6_10DropDomainNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 !guid !33440 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !41, !noundef !32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !41, !noundef !32
  %i.e = sub nsw i8 %i.b, %i.d                    ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8, !nonnull !32, !noundef !32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val8 = load i64, ptr %i.h, align 8, !noundef !32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9 = load ptr, ptr %i.i, align 8, !nonnull !32, !noundef !32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i64, ptr %i.j, align 8, !noundef !32
  %i.k = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val9, i64 noundef %.val10) ; 2 uses
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.n = load i8, ptr %i.m, align 1, !range !40, !noundef !32 ; 2 uses
  %.not = icmp eq i8 %i.n, 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.p = load i8, ptr %i.o, align 1, !range !40, !noundef !32 ; 3 uses
  br i1 %.not, label %bb.e, label %bb.d
end_hunk_1
