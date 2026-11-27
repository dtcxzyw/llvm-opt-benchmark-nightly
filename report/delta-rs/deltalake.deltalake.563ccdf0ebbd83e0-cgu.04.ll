Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.04?download=true
inline.NumInlined: 6517
inline.NumDeleted: 2392
begin_hunk_0_@_RNvXs70_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt:bb.a
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ca, ptr %i.j, align 8
  %i.cb = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @471, i64 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) @472, i64 noundef 16, ptr noundef nonnull %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @470, ptr noalias noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 5, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @456)
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
  store ptr @473, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.cd, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @474, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.ce, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr @87, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.cf, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr @475, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr %i.cg, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store ptr @85, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store ptr %i.i, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store ptr @456, ptr %i.cs, align 8
  %i.ct = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @482, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @481, i64 noundef 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.h, i64 noundef 6)
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
  store ptr @473, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.cv, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @115, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.cw, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr @133, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.cx, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr @474, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %i.cy, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr @483, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr %i.g, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store ptr @456, ptr %i.dk, align 8
  %i.dl = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @486, i64 noundef 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @485, i64 noundef 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.f, i64 noundef 6)
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
  store ptr @473, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.dn, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @87, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.do, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @88, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.dp, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @487, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.dq, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr @488, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr %i.dr, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr @489, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr %i.ds, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr @490, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store ptr %i.dt, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store ptr @491, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr %i.e, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store ptr @456, ptr %i.el, align 8
  %i.em = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @498, i64 noundef 14, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @497, i64 noundef 9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef 9)
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
  %i.es = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @502, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) @503, i64 noundef 10, ptr noundef nonnull %i.en, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @499, ptr noalias noundef nonnull readonly captures(address, read_provenance) @504, i64 noundef 14, ptr noundef nonnull %i.eo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115, ptr noalias noundef nonnull readonly captures(address, read_provenance) @505, i64 noundef 7, ptr noundef nonnull %i.ep, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @500, ptr noalias noundef nonnull readonly captures(address, read_provenance) @402, i64 noundef 7, ptr noundef nonnull %i.eq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @501, ptr noalias noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 5, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @456)
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
  store ptr @116, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.eu, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @87, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.ev, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @87, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.ew, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @87, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.ex, ptr %i.fg, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @85, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.b, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @456, ptr %i.fj, align 8
  %i.fk = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @511, i64 noundef 12, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @510, i64 noundef 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.aw, %bb.b ], [ %i.ba, %bb.c ], [ %i.bd, %bb.d ], [ %i.bi, %bb.e ], [ %i.bo, %bb.f ], [ %i.bt, %bb.g ], [ %i.by, %bb.h ], [ %i.cb, %bb.i ], [ %i.ct, %bb.j ], [ %i.dl, %bb.k ], [ %i.em, %bb.l ], [ %i.es, %bb.m ], [ %i.fk, %bb.n ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs73_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(616) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(616) %1) unnamed_addr #3 !guid !17185 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !75, !noundef !21 ; 3 uses
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 2) ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !75, !noundef !21 ; 4 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 2)
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.b, label %default.unreachable334 [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.o
    i64 9, label %bb.p
    i64 10, label %bb.q
    i64 11, label %bb.r
    i64 12, label %bb.s
  ]

_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.dv, %bb.dw, %.lr.ph, %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query22XmlNamespaceDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, %.lr.ph168, %.split243, %bb.da, %bb.db, %.split140, %bb.de, %_RNvXsc5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14OrderByOptionsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %.lr.ph172, %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, %.lr.ph176, %.lr.ph181, %.split242, %bb.cp, %.lr.ph186, %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit115, %.split241, %bb.ca, %.split280, %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.bz, %.lr.ph190, %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, %.lr.ph194, %bb.n, %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query4JoinNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, %.split131, %bb.el, %._crit_edge, %._crit_edge182, %bb.cs, %bb.ch, %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.bs, %bb.bl, %bb.bg, %bb.ay, %bb.at, %bb.ar, %bb.dj, %bb.av, %bb.ak, %bb.t, %bb.s, %bb.j, %bb.k, %.split148, %.split146, %.split145, %_RNvXs8Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %.split136, %.split134, %.split133, %_RNvXs7d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %_RNvXs5V_NtCs4lawaffTVVK_9sqlparser3astNtB6_8JsonPathNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %_RNvXsar_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12TableVersionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %.split128, %.split, %bb.em, %bb.ej, %bb.eg, %bb.ee, %bb.ec, %bb.ek, %bb.eh, %bb.ef, %bb.ed, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query22XmlNamespaceDefinitionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit, %bb.dx, %bb.r, %bb.dy, %bb.ds, %bb.dp, %bb.dm, %bb.dh, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit, %bb.cw, %bb.cu, %bb.do, %bb.dn, %bb.di, %bb.cv, %bb.q, %bb.ct, %bb.cq, %bb.cl, %bb.cr, %bb.ck, %bb.cj, %bb.p, %bb.ci, %bb.cf, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit, %bb.bv, %bb.cg, %bb.cd, %bb.cc, %bb.o, %bb.bt, %bb.bq, %bb.bo, %bb.br, %bb.bp, %bb.i, %bb.h, %bb.bi, %bb.bk, %bb.bj, %bb.bh, %bb.be, %bb.bc, %bb.bf, %bb.bd, %bb.ba, %bb.g, %bb.f, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit103, %bb.ax, %bb.aw, %bb.e, %bb.d, %bb.aq, %bb.ao, %bb.ap, %bb.am, %bb.ai, %bb.af, %bb.ad, %bb.aa, %bb.y, %bb.v, %bb.an, %bb.aj, %bb.ag, %bb.ae, %bb.ab, %bb.z, %bb.w, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit100, %bb.c, %bb.a, %bb.eb, %bb.bu, %bb.bm, %bb.az, %bb.au, %bb.as
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.fz, %bb.as ], [ false, %bb.d ], [ false, %_RNvXs7d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.ao ], [ %i.gf, %bb.au ], [ false, %bb.e ], [ %.mux, %bb.ar ], [ %.mux272, %bb.el ], [ %i.hb, %bb.az ], [ false, %bb.f ], [ %.mux252, %bb.at ], [ false, %bb.ak ], [ false, %.split133 ], [ %i.iv, %bb.bm ], [ false, %bb.h ], [ %.mux256, %bb.bg ], [ false, %.split241 ], [ false, %.split134 ], [ %i.jx, %bb.bu ], [ false, %.split148 ], [ %.mux260, %bb.bs ], [ false, %.split136 ], [ false, %.lr.ph181 ], [ false, %_RNvXs8Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %.lr.ph194 ], [ %i.sk, %bb.eb ], [ false, %bb.dj ], [ %.mux268, %._crit_edge182 ], [ false, %.split145 ], [ false, %.split242 ], [ %i.fo, %bb.ap ], [ false, %bb.c ], [ false, %bb.am ], [ false, %bb.ai ], [ false, %bb.af ], [ false, %bb.ad ], [ false, %bb.aa ], [ false, %bb.y ], [ false, %bb.v ], [ false, %bb.an ], [ false, %bb.aj ], [ false, %bb.ag ], [ false, %bb.ae ], [ false, %bb.ab ], [ false, %bb.z ], [ false, %bb.w ], [ false, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit100 ], [ false, %bb.aq ], [ false, %bb.aw ], [ false, %bb.ax ], [ false, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit103 ], [ %i.ic, %bb.bh ], [ false, %bb.g ], [ %.mux254, %bb.ay ], [ false, %bb.be ], [ false, %bb.bc ], [ false, %bb.bf ], [ false, %bb.bd ], [ false, %bb.ba ], [ false, %bb.bj ], [ false, %bb.bk ], [ false, %bb.bi ], [ %i.jr, %bb.bt ], [ false, %bb.i ], [ %.mux258, %bb.bl ], [ false, %bb.bq ], [ false, %bb.bo ], [ false, %bb.br ], [ false, %bb.bp ], [ %i.mc, %bb.ci ], [ false, %bb.o ], [ %.mux262, %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.cf ], [ false, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit ], [ false, %bb.bv ], [ false, %bb.cg ], [ false, %bb.cd ], [ false, %bb.cc ], [ false, %bb.av ], [ %i.nl, %bb.ct ], [ false, %bb.p ], [ %.mux264, %bb.ch ], [ false, %bb.cq ], [ false, %bb.cl ], [ false, %bb.cr ], [ false, %.lr.ph168 ], [ false, %bb.ck ], [ false, %bb.cj ], [ %i.qt, %bb.ds ], [ false, %bb.q ], [ %.mux266, %bb.cs ], [ false, %bb.dp ], [ false, %bb.dm ], [ false, %bb.dh ], [ false, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit ], [ false, %bb.cw ], [ false, %bb.cu ], [ false, %.split146 ], [ false, %bb.do ], [ false, %bb.dn ], [ false, %bb.di ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.cv ], [ false, %bb.dy ], [ false, %bb.r ], [ false, %.lr.ph176 ], [ false, %bb.dx ], [ false, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query22XmlNamespaceDefinitionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit ], [ %i.ua, %bb.em ], [ false, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ %.mux270, %._crit_edge ], [ false, %bb.ej ], [ false, %bb.eg ], [ false, %bb.ee ], [ false, %bb.ec ], [ false, %bb.ek ], [ false, %bb.eh ], [ false, %bb.ef ], [ false, %bb.ed ], [ false, %.split131 ], [ false, %.split243 ], [ false, %bb.s ], [ false, %.split ], [ false, %.split128 ], [ false, %_RNvXsar_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12TableVersionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %_RNvXs5V_NtCs4lawaffTVVK_9sqlparser3astNtB6_8JsonPathNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.t ], [ false, %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query4JoinNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit ], [ false, %bb.n ], [ false, %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit ], [ false, %.lr.ph190 ], [ false, %bb.bz ], [ false, %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %.split280 ], [ false, %bb.ca ], [ false, %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit115 ], [ false, %.lr.ph186 ], [ false, %bb.cp ], [ false, %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit ], [ false, %.lr.ph172 ], [ false, %_RNvXsc5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14OrderByOptionsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.de ], [ false, %.split140 ], [ false, %bb.db ], [ false, %bb.da ], [ false, %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query22XmlNamespaceDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit ], [ false, %.lr.ph ], [ false, %bb.dw ], [ false, %bb.dv ]
  ret i1 %.sroa.0.0

default.unreachable334:                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i64 %i.c, 3
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.h = load i8, ptr %i.g, align 8, !range !85, !noundef !21
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.j = load i8, ptr %i.i, align 8, !range !85, !noundef !21
  %i.k = icmp eq i8 %i.h, %i.j
  br i1 %i.k, label %bb.t, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load i8, ptr %i.l, align 8, !range !85, !noundef !21
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.o = load i8, ptr %i.n, align 8, !range !85, !noundef !21
  %i.p = icmp eq i8 %i.m, %i.o
  br i1 %i.p, label %bb.aq, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.r) #42
  br i1 %i.s, label %bb.at, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = load i8, ptr %i.t, align 8, !range !85, !noundef !21
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.w = load i8, ptr %i.v, align 8, !range !85, !noundef !21
  %i.x = icmp eq i8 %i.u, %i.w
  br i1 %i.x, label %bb.av, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.z = load i8, ptr %i.y, align 8, !range !85, !noundef !21
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ab = load i8, ptr %i.aa, align 8, !range !85, !noundef !21
  %i.ac = icmp eq i8 %i.z, %i.ab
  br i1 %i.ac, label %bb.ba, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ae) #42
  br i1 %i.af, label %bb.bi, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.i:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ah) #42
  br i1 %i.ai, label %bb.bn, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !21, !noundef !21 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !21, !noundef !21 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17187)
  %i.an = tail call fastcc noundef zeroext i1 @_RNvXs73_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(640) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(640) %i.am) #42, !inline_history !111
  br i1 %i.an, label %bb.k, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 632
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !17186, !noundef !21 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 632
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !17187, !noundef !21
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.l, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 624
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !17187, !nonnull !21, !noundef !21
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 624
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !17186, !nonnull !21, !noundef !21
  %.not156191.not = icmp eq i64 %i.ap, 0
  br i1 %.not156191.not, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph194

bb.m:                                             ; preds = %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query4JoinNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit
  %i.ax = add nuw i64 %.sroa.01.0.i.i192, 1       ; 2 uses
  %exitcond208.not = icmp eq i64 %i.ax, %i.ap
  br i1 %exitcond208.not, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph194

.lr.ph194:                                        ; preds = %bb.l, %bb.m
  %.sroa.01.0.i.i192 = phi i64 [ %i.ax, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [1280 x i8], ptr %i.aw, i64 %.sroa.01.0.i.i192 ; 3 uses
  %i.az = getelementptr inbounds nuw [1280 x i8], ptr %i.au, i64 %.sroa.01.0.i.i192 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17191)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1272
  %i.bb = load i8, ptr %i.ba, align 8, !range !85, !alias.scope !17192, !noundef !21
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 1272
  %i.bd = load i8, ptr %i.bc, align 8, !range !85, !alias.scope !17193, !noundef !21
  %i.be = icmp eq i8 %i.bb, %i.bd
  br i1 %i.be, label %bb.n, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.n:                                             ; preds = %.lr.ph194
  %i.bf = tail call fastcc noundef zeroext i1 @_RNvXs73_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1280) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1280) %i.az) #42, !inline_history !17154
  br i1 %i.bf, label %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query4JoinNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query4JoinNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 616
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 616
  %i.bi = tail call fastcc noundef zeroext i1 @_RNvXsaL_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12JoinOperatorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(656) %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(656) %i.bh) #42, !inline_history !17154
  br i1 %i.bi, label %bb.m, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.o:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !21, !noundef !21
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !21, !noundef !21
  %i.bp = tail call fastcc noundef zeroext i1 @_RNvXs73_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.bo) #42
  br i1 %i.bp, label %bb.bv, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.p:                                             ; preds = %bb.b
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !21, !noundef !21
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !21, !noundef !21
  %i.bw = tail call fastcc noundef zeroext i1 @_RNvXs73_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.bv) #42
  br i1 %i.bw, label %bb.cj, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.q:                                             ; preds = %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !21, !noundef !21
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !21, !noundef !21
  %i.cd = tail call fastcc noundef zeroext i1 @_RNvXs73_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.ca, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.cc) #42
  br i1 %i.cd, label %bb.cu, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.r:                                             ; preds = %bb.b
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !21 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !21
  %i.cm = icmp eq i64 %i.cj, %i.cl
  br i1 %i.cm, label %bb.dt, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.s:                                             ; preds = %bb.b
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.val88 = load i64, ptr %i.cn, align 8, !noundef !21 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.val90 = load i64, ptr %i.co, align 8, !noundef !21
  %i.cp = icmp eq i64 %.val88, %.val90
  br i1 %i.cp, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 344
  %.val89 = load ptr, ptr %i.cq, align 8, !nonnull !21, !noundef !21
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.val87 = load ptr, ptr %i.cr, align 8, !nonnull !21, !noundef !21
  %i.cs = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %.val87, ptr noundef nonnull %.val89, i64 noundef %.val88)
  br i1 %i.cs, label %bb.ec, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.t:                                             ; preds = %bb.c
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.val84 = load i64, ptr %i.ct, align 8, !noundef !21 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.val86 = load i64, ptr %i.cu, align 8, !noundef !21
  %i.cv = icmp eq i64 %.val84, %.val86
  br i1 %i.cv, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit100, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit100: ; preds = %bb.t
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.val85 = load ptr, ptr %i.cw, align 8, !nonnull !21, !noundef !21
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.val83 = load ptr, ptr %i.cx, align 8, !nonnull !21, !noundef !21
  %i.cy = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %.val83, ptr noundef nonnull %.val85, i64 noundef %.val84)
  br i1 %i.cy, label %bb.u, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.u:                                             ; preds = %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit100
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !range !22, !noundef !21
  %.not70 = icmp eq i64 %i.da, -9223372036854775808
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !range !22, !noundef !21
  %i.dd = icmp eq i64 %i.dc, -9223372036854775808 ; 2 uses
  br i1 %.not70, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.dd, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit, label %.split

bb.w:                                             ; preds = %bb.u
  br i1 %i.dd, label %bb.x, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

.split:                                           ; preds = %bb.v
  %i.de = tail call fastcc noundef zeroext i1 @_RNvXsa7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10TableAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.db) #42
  br i1 %i.de, label %bb.x, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.x:                                             ; preds = %.split, %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !range !22, !noundef !21
  %.not72 = icmp eq i64 %i.dg, -9223372036854775808
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !range !22, !noundef !21
  %i.dj = icmp eq i64 %i.di, -9223372036854775808 ; 2 uses
  br i1 %.not72, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %i.dj, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit, label %.split128

bb.z:                                             ; preds = %bb.x
  br i1 %i.dj, label %bb.aa, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

.split128:                                        ; preds = %bb.y
  %i.dk = tail call fastcc noundef zeroext i1 @_RNvXs6f_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17TableFunctionArgsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.df, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dh) #42
  br i1 %i.dk, label %bb.aa, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.aa:                                            ; preds = %.split128, %bb.z
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !21 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.do = load i64, ptr %i.dn, align 8, !noundef !21
  %i.dp = icmp eq i64 %i.dm, %i.do
  br i1 %i.dp, label %bb.ab, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.dr = load ptr, ptr %i.dq, align 8, !nonnull !21, !noundef !21
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !21, !noundef !21
  %i.du = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.dt, ptr noundef nonnull %i.dr, i64 noundef %i.dm)
  br i1 %i.du, label %bb.ac, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.ac:                                            ; preds = %bb.ab
  %.not74 = icmp eq i64 %i.a, 2
  br i1 %.not74, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dv = icmp eq i64 %i.a, %i.c
  br i1 %i.dv, label %_RNvXsar_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12TableVersionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.ae:                                            ; preds = %bb.ac
  %.not289 = icmp eq i64 %i.c, 2
  br i1 %.not289, label %bb.af, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

_RNvXsar_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12TableVersionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.ad
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dy = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.dx) #42, !inline_history !13
  br i1 %i.dy, label %bb.af, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.af:                                            ; preds = %_RNvXsar_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12TableVersionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.ae
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ea = load i64, ptr %i.dz, align 8, !noundef !21 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.ec = load i64, ptr %i.eb, align 8, !noundef !21
  %i.ed = icmp eq i64 %i.ea, %i.ec
  br i1 %i.ed, label %bb.ag, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.ag:                                            ; preds = %bb.af
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.ef = load ptr, ptr %i.ee, align 8, !nonnull !21, !noundef !21
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.eh = load ptr, ptr %i.eg, align 8, !nonnull !21, !noundef !21
  %i.ei = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.eh, ptr noundef nonnull %i.ef, i64 noundef %i.ea)
  br i1 %i.ei, label %bb.ah, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.ah:                                            ; preds = %bb.ag
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ek = load i64, ptr %i.ej, align 8, !range !22, !noundef !21
  %.not76 = icmp eq i64 %i.ek, -9223372036854775808
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.em = load i64, ptr %i.el, align 8, !range !22, !noundef !21
  %i.en = icmp eq i64 %i.em, -9223372036854775808 ; 2 uses
  br i1 %.not76, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.en, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  br i1 %i.en, label %bb.al, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.ak:                                            ; preds = %bb.ai
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 600
  %.val92 = load i64, ptr %i.eo, align 8, !noundef !21 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 600
  %.val94 = load i64, ptr %i.ep, align 8, !noundef !21
  %i.eq = icmp eq i64 %.val92, %.val94
  br i1 %i.eq, label %_RNvXs5V_NtCs4lawaffTVVK_9sqlparser3astNtB6_8JsonPathNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

_RNvXs5V_NtCs4lawaffTVVK_9sqlparser3astNtB6_8JsonPathNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.ak
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 592
  %.val93 = load ptr, ptr %i.er, align 8, !nonnull !21, !noundef !21
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 592
  %.val91 = load ptr, ptr %i.es, align 8, !nonnull !21, !noundef !21
  %i.et = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast12JsonPathElemINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %.val91, ptr noundef nonnull %.val93, i64 noundef %.val92)
  br i1 %i.et, label %bb.al, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.al:                                            ; preds = %_RNvXs5V_NtCs4lawaffTVVK_9sqlparser3astNtB6_8JsonPathNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.aj
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ev = load i64, ptr %i.eu, align 8, !range !20, !noundef !21 ; 2 uses
  %.not78 = icmp eq i64 %i.ev, 2
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ex = load i64, ptr %i.ew, align 8, !range !20, !noundef !21 ; 2 uses
  %i.ey = icmp eq i64 %i.ex, 2                    ; 2 uses
  br i1 %.not78, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  br i1 %i.ey, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit, label %.split131

bb.an:                                            ; preds = %bb.al
  br i1 %i.ey, label %bb.ao, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

.split131:                                        ; preds = %bb.am
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17195)
  %i.ez = icmp eq i64 %i.ev, %i.ex
  br i1 %i.ez, label %_RNvXs7d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

_RNvXs7d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %.split131
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !17194, !nonnull !21, !noundef !21
  %i.fd = load ptr, ptr %i.fa, align 8, !alias.scope !17195, !nonnull !21, !noundef !21
  %i.fe = tail call fastcc noundef zeroext i1 @_RNvXs7n_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableSampleNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.fc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.fd) #42, !noalias !17196, !inline_history !17158
  br i1 %i.fe, label %bb.ao, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.ao:                                            ; preds = %_RNvXs7d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.an
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.fg = load i64, ptr %i.ff, align 8, !noundef !21 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.fi = load i64, ptr %i.fh, align 8, !noundef !21
  %i.fj = icmp eq i64 %i.fg, %i.fi
  br i1 %i.fj, label %bb.ap, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.ap:                                            ; preds = %bb.ao
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.fl = load ptr, ptr %i.fk, align 8, !nonnull !21, !noundef !21
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.fn = load ptr, ptr %i.fm, align 8, !nonnull !21, !noundef !21
  %i.fo = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableIndexHintsINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.fn, ptr noundef nonnull %i.fl, i64 noundef %i.fg)
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit

bb.aq:                                            ; preds = %bb.d
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fq = load ptr, ptr %i.fp, align 8, !nonnull !21, !noundef !21
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.fs = load ptr, ptr %i.fr, align 8, !nonnull !21, !noundef !21
end_hunk_0
