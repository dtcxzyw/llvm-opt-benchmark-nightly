Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_db-92c62a723a4254ca.ruff_db.3b660a75166acdec-cgu.12?download=true
inline.NumInlined: 931
inline.NumDeleted: 460
begin_hunk_0_@_RNvXs_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB4_16RenderingSortKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp:bb.a
  %i.dc = trunc i32 %.sroa.06.0.copyload to i1
  %i.dd = trunc i32 %.sroa.07.0.copyload to i1
  %or.cond = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond, label %bb.ac, label %bb.z

bb.w:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  %i.de = trunc nuw i32 %i.bi to i1
  %.phi.trans.insert140 = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  br i1 %i.de, label %..thread_crit_edge, label %..thread111_crit_edge

..thread_crit_edge:                               ; preds = %bb.w
  %.pre141 = load ptr, ptr %.phi.trans.insert140, align 8, !alias.scope !2201, !noalias !2204 ; 2 uses
  %.phi.trans.insert142 = getelementptr inbounds nuw i8, ptr %.pre141, i64 24
  %.pre143 = load i64, ptr %.phi.trans.insert142, align 8, !noalias !2206
  br label %.thread

..thread111_crit_edge:                            ; preds = %bb.w
  %.pre = load i32, ptr %.phi.trans.insert140, align 8, !alias.scope !2201, !noalias !2204
  br label %.thread111

.thread:                                          ; preds = %..thread_crit_edge, %bb.s, %bb.q, %bb.r, %.split
  %i.df = phi i64 [ %.pre143, %..thread_crit_edge ], [ %i.bv, %bb.s ], [ %i.bv, %bb.q ], [ %i.bv, %bb.r ], [ %i.bv, %.split ]
  %i.dg = phi ptr [ %.pre141, %..thread_crit_edge ], [ %i.bo, %bb.s ], [ %i.bo, %bb.q ], [ %i.bo, %bb.r ], [ %i.bo, %.split ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !2206, !nonnull !3, !noundef !3
  %i.dj = insertvalue { ptr, i64 } poison, ptr %i.di, 0
  %i.dk = insertvalue { ptr, i64 } %i.dj, i64 %i.df, 1
  br label %_RNvMsc_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB5_11UnifiedFile4path.exit

.thread111:                                       ; preds = %..thread111_crit_edge, %_RNvXs1G_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_11UnifiedFileNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.p
  %i.dl = phi i32 [ %.pre, %..thread111_crit_edge ], [ %i.br, %_RNvXs1G_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_11UnifiedFileNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ %i.br, %bb.p ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !range !1757, !alias.scope !2201, !noalias !2204, !noundef !3
  %i.do = invoke { ptr, i64 } @_RNvXsa_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6renderRDNtB9_2DbEL_NtB5_12FileResolver4path(ptr noundef nonnull %0, i32 noundef %i.dn, i32 noundef %i.dl)
          to label %.thread111._RNvMsc_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB5_11UnifiedFile4path.exit_crit_edge unwind label %bb.t, !inline_history !1758

.thread111._RNvMsc_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB5_11UnifiedFile4path.exit_crit_edge: ; preds = %.thread111
  %.pre144 = load i32, ptr %i.j, align 8, !range !216, !alias.scope !2207, !noalias !2210
  br label %_RNvMsc_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB5_11UnifiedFile4path.exit

_RNvMsc_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB5_11UnifiedFile4path.exit: ; preds = %.thread111._RNvMsc_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB5_11UnifiedFile4path.exit_crit_edge, %.thread
  %i.dp = phi i32 [ %i.bj, %.thread ], [ %.pre144, %.thread111._RNvMsc_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB5_11UnifiedFile4path.exit_crit_edge ]
  %.merged.i = phi { ptr, i64 } [ %i.dk, %.thread ], [ %i.do, %.thread111._RNvMsc_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB5_11UnifiedFile4path.exit_crit_edge ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2207)
  %i.dq = trunc nuw i32 %i.dp to i1
  br i1 %i.dq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_RNvMsc_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB5_11UnifiedFile4path.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !2207, !noalias !2210, !nonnull !3, !noundef !3 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !2212, !nonnull !3, !noundef !3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !2212, !noundef !3
  %i.dx = insertvalue { ptr, i64 } poison, ptr %i.du, 0
  %i.dy = insertvalue { ptr, i64 } %i.dx, i64 %i.dw, 1
  br label %_RNvMsc_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB5_11UnifiedFile4path.exit44

bb.y:                                             ; preds = %_RNvMsc_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB5_11UnifiedFile4path.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !range !1757, !alias.scope !2207, !noalias !2210, !noundef !3
  %i.eb = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ec = load i32, ptr %i.eb, align 8, !alias.scope !2207, !noalias !2210, !noundef !3
  %i.ed = invoke { ptr, i64 } @_RNvXsa_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6renderRDNtB9_2DbEL_NtB5_12FileResolver4path(ptr noundef nonnull %0, i32 noundef %i.ea, i32 noundef %i.ec)
          to label %_RNvMsc_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB5_11UnifiedFile4path.exit44 unwind label %bb.t, !inline_history !1758

_RNvMsc_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB5_11UnifiedFile4path.exit44: ; preds = %bb.x, %bb.y
  %.merged.i42 = phi { ptr, i64 } [ %i.dy, %bb.x ], [ %i.ed, %bb.y ] ; 2 uses
  %i.ee = extractvalue { ptr, i64 } %.merged.i, 1 ; 2 uses
  %i.ef = extractvalue { ptr, i64 } %.merged.i, 0
  %i.eg = extractvalue { ptr, i64 } %.merged.i42, 0
  %i.eh = extractvalue { ptr, i64 } %.merged.i42, 1 ; 2 uses
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.ee, i64 %i.eh)
  %i.ei = tail call i32 @memcmp(ptr %i.ef, ptr %i.eg, i64 %spec.store.select) ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = icmp eq i32 %i.ei, 0
  %i.el = sub i64 %i.ee, %i.eh
  %spec.select = select i1 %i.ek, i64 %i.el, i64 %i.ej ; 2 uses
  %i.em = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select, i64 0)
  %i.en = icmp eq i64 %spec.select, 0
  br i1 %i.en, label %_RNvXs1G_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_11UnifiedFileNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread107, label %bb.ad

bb.z:                                             ; preds = %bb.ac, %_RNvXs1G_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_11UnifiedFileNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread107
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2216)
  %i.eo = load i32, ptr %i.j, align 8, !range !216, !alias.scope !2219, !noundef !3
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit46, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2226)
  %i.er = load ptr, ptr %i.eq, align 8, !alias.scope !2229, !nonnull !3, !noundef !3
  %i.es = atomicrmw sub ptr %i.er, i64 1 release, align 8, !noalias !2229
  %i.et = icmp eq i64 %i.es, 1
  br i1 %i.et, label %bb.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit46

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCs9BeaGo73rC4_16ruff_source_file15SourceFileInnerE9drop_slowCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit46 unwind label %bb.ai

bb.ac:                                            ; preds = %_RNvXs1G_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_11UnifiedFileNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread107
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %.sroa.28.0.copyload = load i32, ptr %.sroa.28.0..sroa_idx, align 4 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 4 ; 2 uses
  %i.eu = tail call i8 @llvm.ucmp.i8.i32(i32 %.sroa.2.0.copyload, i32 %.sroa.28.0.copyload)
  %i.ev = icmp eq i32 %.sroa.2.0.copyload, %.sroa.28.0.copyload
  br i1 %i.ev, label %bb.z, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_RNvMsc_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB5_11UnifiedFile4path.exit44
  %.sroa.0.0 = phi i8 [ %i.eu, %bb.ac ], [ %i.em, %_RNvMsc_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB5_11UnifiedFile4path.exit44 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2233)
  %i.ew = load i32, ptr %i.j, align 8, !range !216, !alias.scope !2236, !noundef !3
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit48, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ey = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2243)
  %i.ez = load ptr, ptr %i.ey, align 8, !alias.scope !2246, !nonnull !3, !noundef !3
  %i.fa = atomicrmw sub ptr %i.ez, i64 1 release, align 8, !noalias !2246
  %i.fb = icmp eq i64 %i.fa, 1
  br i1 %i.fb, label %bb.af, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit48

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCs9BeaGo73rC4_16ruff_source_file15SourceFileInnerE9drop_slowCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ey)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit48 unwind label %bb.ai

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit: ; preds = %bb.u, %bb.t, %bb.v, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.fi, %bb.ai ], [ %i.co, %bb.v ], [ %i.co, %bb.t ], [ %i.co, %bb.u ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2247)
  call void @llvm.experimental.noalias.scope.decl(metadata !2250)
  %i.fc = load i32, ptr %i.k, align 8, !range !216, !alias.scope !2253, !noundef !3
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %common.resume, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2254)
  call void @llvm.experimental.noalias.scope.decl(metadata !2257)
  call void @llvm.experimental.noalias.scope.decl(metadata !2260)
  %i.ff = load ptr, ptr %i.fe, align 8, !alias.scope !2263, !nonnull !3, !noundef !3
  %i.fg = atomicrmw sub ptr %i.ff, i64 1 release, align 8, !noalias !2263
  %i.fh = icmp eq i64 %i.fg, 1
  br i1 %i.fh, label %bb.ah, label %common.resume

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCs9BeaGo73rC4_16ruff_source_file15SourceFileInnerE9drop_slowCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fe)
          to label %common.resume unwind label %bb.ao

bb.ai:                                            ; preds = %bb.af, %bb.ab
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit46: ; preds = %bb.aa, %bb.z, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !2264)
  call void @llvm.experimental.noalias.scope.decl(metadata !2267)
  %i.fj = load i32, ptr %i.k, align 8, !range !216, !alias.scope !2270, !noundef !3
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit51, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit46
  %i.fl = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2271)
  call void @llvm.experimental.noalias.scope.decl(metadata !2274)
  call void @llvm.experimental.noalias.scope.decl(metadata !2277)
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !2280, !nonnull !3, !noundef !3
  %i.fn = atomicrmw sub ptr %i.fm, i64 1 release, align 8, !noalias !2280
  %i.fo = icmp eq i64 %i.fn, 1
  br i1 %i.fo, label %bb.ak, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit51

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCs9BeaGo73rC4_16ruff_source_file15SourceFileInnerE9drop_slowCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fl)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit51

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit51: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit46, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit57

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit57: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit54, %bb.av, %bb.aw, %bb.ax, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.fp = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3 ; 10 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 232
  %i.fr = load i8, ptr %i.fq, align 8, !range !544, !noundef !3
  %i.fs = load ptr, ptr %i.al, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 232
  %i.fu = load i8, ptr %i.ft, align 8, !range !544, !noundef !3
  %i.fv = call i8 @llvm.ucmp.i8.i8(i8 %i.fr, i8 %i.fu)
  switch i8 %i.fv, label %bb.ay [
    i8 -1, label %bb.an
    i8 0, label %bb.az
    i8 1, label %bb.bc
  ]

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit48: ; preds = %bb.ae, %bb.ad, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !2281)
  call void @llvm.experimental.noalias.scope.decl(metadata !2284)
  %i.fw = load i32, ptr %i.k, align 8, !range !216, !alias.scope !2287, !noundef !3
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit52, label %bb.al

bb.al:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit48
  %i.fy = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2288)
  call void @llvm.experimental.noalias.scope.decl(metadata !2291)
  call void @llvm.experimental.noalias.scope.decl(metadata !2294)
  %i.fz = load ptr, ptr %i.fy, align 8, !alias.scope !2297, !nonnull !3, !noundef !3
  %i.ga = atomicrmw sub ptr %i.fz, i64 1 release, align 8, !noalias !2297
  %i.gb = icmp eq i64 %i.ga, 1
  br i1 %i.gb, label %bb.am, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit52

bb.am:                                            ; preds = %bb.al
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCs9BeaGo73rC4_16ruff_source_file15SourceFileInnerE9drop_slowCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fy)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit52

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit52: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit48, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.an

bb.an:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit57, %bb.bc, %_RNvXs1A_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_12DiagnosticIdNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs56aZGHL6Dc6_7ruff_db.exit83, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit52
  %.sroa.0.1 = phi i8 [ %.sroa.0.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit52 ], [ %i.jv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs56aZGHL6Dc6_7ruff_db.exit83 ], [ %.sroa.0.0.i, %_RNvXs1A_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_12DiagnosticIdNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit ], [ -1, %bb.bc ], [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit57 ]
  ret i8 %.sroa.0.1

bb.ao:                                            ; preds = %bb.au, %bb.ah, %bb.v, %.body
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38
  unreachable

common.resume:                                    ; preds = %bb.cb, %bb.bi, %bb.ar, %.body, %bb.ah, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit, %bb.ag, %bb.au, %bb.as, %bb.at
  %common.resume.op = phi { ptr, i32 } [ %i.id, %bb.bi ], [ %i.gg, %bb.as ], [ %.pn25, %.body ], [ %i.gg, %bb.at ], [ %.pn, %bb.ag ], [ %i.gg, %bb.ar ], [ %.pn, %bb.ah ], [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit ], [ %i.gg, %bb.au ], [ %i.ka, %bb.cb ]
  resume { ptr, i32 } %common.resume.op

bb.ap:                                            ; preds = %bb.l
  %i.gd = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !2298
  %i.ge = icmp eq i64 %i.gd, 1
  br i1 %i.ge, label %bb.aq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit54

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCs9BeaGo73rC4_16ruff_source_file15SourceFileInnerE9drop_slowCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.6.0..sroa_idx135)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit54 unwind label %bb.ar

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit54: ; preds = %bb.l, %bb.l, %bb.ap, %bb.aq
  %i.gf = load i32, ptr %i.bh, align 8, !range !2309, !noundef !3 ; 2 uses
  %.not23 = icmp eq i32 %i.gf, 2
  br i1 %.not23, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit57, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gh = load i32, ptr %i.bh, align 8, !range !2309, !noundef !3 ; 2 uses
  %.not22 = icmp eq i32 %i.gh, 2
  br i1 %.not22, label %common.resume, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !2310)
  call void @llvm.experimental.noalias.scope.decl(metadata !2313)
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %common.resume, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !2316)
  call void @llvm.experimental.noalias.scope.decl(metadata !2319)
  call void @llvm.experimental.noalias.scope.decl(metadata !2322)
  %i.gj = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2325, !nonnull !3, !noundef !3
  %i.gk = atomicrmw sub ptr %i.gj, i64 1 release, align 8, !noalias !2325
  %i.gl = icmp eq i64 %i.gk, 1
  br i1 %i.gl, label %bb.au, label %common.resume

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCs9BeaGo73rC4_16ruff_source_file15SourceFileInnerE9drop_slowCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.6.0..sroa_idx)
          to label %common.resume unwind label %bb.ao

bb.av:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit54
  call void @llvm.experimental.noalias.scope.decl(metadata !2326)
  call void @llvm.experimental.noalias.scope.decl(metadata !2329)
  %i.gm = icmp eq i32 %i.gf, 0
  br i1 %i.gm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit57, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !2332)
  call void @llvm.experimental.noalias.scope.decl(metadata !2335)
  call void @llvm.experimental.noalias.scope.decl(metadata !2338)
  %i.gn = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2341, !nonnull !3, !noundef !3
  %i.go = atomicrmw sub ptr %i.gn, i64 1 release, align 8, !noalias !2341
  %i.gp = icmp eq i64 %i.go, 1
  br i1 %i.gp, label %bb.ax, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit57

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCs9BeaGo73rC4_16ruff_source_file15SourceFileInnerE9drop_slowCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.6.0..sroa_idx)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit57

bb.ay:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit57
  unreachable

bb.az:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit57
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %.sroa.084.0.copyload = load i64, ptr %i.gr, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %.sroa.585.0.copyload = load i64, ptr %.sroa.585.0..sroa_idx, align 8 ; 2 uses
  %.sroa.086.0.copyload = load i64, ptr %i.gq, align 8 ; 2 uses
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %.sroa.487.0.copyload = load ptr, ptr %.sroa.487.0..sroa_idx, align 8 ; 2 uses
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %.sroa.588.0.copyload = load i64, ptr %.sroa.588.0..sroa_idx, align 8 ; 2 uses
  %i.gs = call i8 @llvm.scmp.i8.i64(i64 %.sroa.084.0.copyload, i64 %.sroa.086.0.copyload)
  %i.gt = icmp eq i64 %.sroa.084.0.copyload, %.sroa.086.0.copyload
  br i1 %i.gt, label %bb.ba, label %_RNvXs1A_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_12DiagnosticIdNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

bb.ba:                                            ; preds = %bb.az
  %i.gu = icmp eq i64 %.sroa.084.0.copyload, 3
  br i1 %i.gu, label %bb.bb, label %_RNvXs1A_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_12DiagnosticIdNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.thread

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.487.0.copyload) ]
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %.sroa.585.0.copyload, i64 %.sroa.588.0.copyload)
  %i.gv = call i32 @memcmp(ptr nonnull %.sroa.4.0.copyload, ptr nonnull %.sroa.487.0.copyload, i64 %spec.store.select.i), !noalias !2342 ; 2 uses
  %i.gw = sext i32 %i.gv to i64
  %i.gx = icmp eq i32 %i.gv, 0
  %i.gy = sub i64 %.sroa.585.0.copyload, %.sroa.588.0.copyload
  %spec.select.i = select i1 %i.gx, i64 %i.gy, i64 %i.gw
  %i.gz = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i, i64 0)
  br label %_RNvXs1A_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_12DiagnosticIdNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

_RNvXs1A_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_12DiagnosticIdNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit: ; preds = %bb.az, %bb.bb
  %.sroa.0.0.i = phi i8 [ %i.gz, %bb.bb ], [ %i.gs, %bb.az ] ; 2 uses
  %i.ha = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.ha, label %_RNvXs1A_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_12DiagnosticIdNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.thread, label %bb.an

bb.bc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanEBF_.exit57
  br label %bb.an

_RNvXs1A_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_12DiagnosticIdNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.thread: ; preds = %bb.ba, %_RNvXs1A_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_12DiagnosticIdNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !2346)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fp, i64 208
  %i.hc = load ptr, ptr %i.hb, align 8, !noalias !2349, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.hc, null
  br i1 %.not.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_RNvXs1A_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_12DiagnosticIdNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.thread
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fp, i64 216
  %i.he = load i64, ptr %i.hd, align 8, !noalias !2349, !noundef !3
  br label %.loopexit125

bb.be:                                            ; preds = %_RNvXs1A_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_12DiagnosticIdNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.thread
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fp, i64 192
  %i.hg = load ptr, ptr %i.hf, align 8, !noalias !2349, !nonnull !3, !noundef !3 ; 5 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fp, i64 200
  %i.hi = load i64, ptr %i.hh, align 8, !noalias !2349, !noundef !3 ; 5 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  %i.hk = load ptr, ptr %i.hj, align 8, !noalias !2351, !nonnull !3, !noundef !3 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fp, i64 56
  %i.hm = load i64, ptr %i.hl, align 8, !noalias !2351, !noundef !3 ; 2 uses
  %.idx180 = mul nuw nsw i64 %i.hm, 80
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 %.idx180
  %i.ho = icmp eq i64 %i.hm, 0
  br i1 %i.ho, label %.loopexit125, label %.lr.ph177

bb.bf:                                            ; preds = %.lr.ph177
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hr, i64 80 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.hn
  br i1 %i.hq, label %.loopexit125, label %.lr.ph177

.lr.ph177:                                        ; preds = %bb.be, %bb.bf
  %i.hr = phi ptr [ %i.hp, %bb.bf ], [ %i.hk, %bb.be ] ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 72
  %i.ht = load i8, ptr %i.hs, align 8, !range !241, !noalias !2354, !noundef !3
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic18primary_annotation.exit.i58, label %bb.bf

_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic18primary_annotation.exit.i58: ; preds = %.lr.ph177
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  %i.hw = load ptr, ptr %i.hv, align 8, !noalias !2349, !noundef !3 ; 2 uses
  %.not8.i = icmp eq ptr %i.hw, null
  br i1 %.not8.i, label %.loopexit125, label %bb.bg

end_hunk_0
begin_hunk_1_@_RNvXs1_CshFWUtO0bu8g_6caminoNtB5_11Utf8PathBufNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt
declare noundef zeroext i1 @_RNvXs1_CshFWUtO0bu8g_6caminoNtB5_11Utf8PathBufNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_CshFWUtO0bu8g_6caminoNtB5_8Utf8PathNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs2MoD74u7shA_14ruff_text_size4sizeNtB2_8TextSizeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCs45bxiIjzMqg_5salsa12active_queryNtB5_10QueryStackNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs2AWtUsOyxgP_3std2io5errorNtB2_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_CshFWUtO0bu8g_6caminoNtB5_8Utf8PathNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtCs45bxiIjzMqg_5salsa12active_queryNtB5_9BacktraceNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull, i64 noundef) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs4_NtNtCs56aZGHL6Dc6_7ruff_db8vendored4pathINtNtCscdodAO9FK5_5alloc5boxed3BoxNtB5_12VendoredPathEINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_15VendoredPathBufE4from(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs1_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa26next_memo_ingredient_index(ptr noalias noundef align 8 dereferenceable(1368), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa21lookup_ingredient_mut(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(1368), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtNtCs45bxiIjzMqg_5salsa5table4memoNtB5_14MemoTableTypes3set(ptr noalias noundef align 8 dereferenceable(24), i32 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs3_NtNtCs56aZGHL6Dc6_7ruff_db8vendored4pathINtNtCscdodAO9FK5_5alloc5boxed3BoxNtB5_12VendoredPathEINtNtCs4NRVxsYgnAr_4core7convert4FromRB1h_E4from(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXsu_NtNtCs56aZGHL6Dc6_7ruff_db6system4pathINtNtCscdodAO9FK5_5alloc5boxed3BoxNtB5_17SystemVirtualPathEINtNtCs4NRVxsYgnAr_4core7convert4FromRB1f_E4from(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXsv_NtNtCs56aZGHL6Dc6_7ruff_db6system4pathINtNtCscdodAO9FK5_5alloc5boxed3BoxNtB5_17SystemVirtualPathEINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_20SystemVirtualPathBufE4from(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsg_NtNtCs33Yq3JqQgDT_9get_size25impls9std_typesINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtCsg7m2K3K1Fzf_11compact_str13CompactStringNtNtCs56aZGHL6Dc6_7ruff_db6system8FileTypeEENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB2a_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs5_Cs3KgJnhBcDJh_12newtype_uuidINtB5_9TypedUuidNtNtCs6AO9qwSTTuL_11quick_junit6report10ReportKindENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCs4NRVxsYgnAr_4core4sync6atomic6AtomicbEE9drop_slowCsizY4S0OBG5z_6ignore(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #25

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCs9BeaGo73rC4_16ruff_source_file15SourceFileInnerE9drop_slowCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #25

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerE9drop_slowBJ_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #25

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs7_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1p_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsb2V9IiE8ECc_7seahash6streamNtB5_9SeaHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write(ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsb2V9IiE8ECc_7seahash6streamNtB5_9SeaHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher8write_u8(ptr noalias noundef align 8 dereferenceable(56), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXsa_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6renderRDNtB9_2DbEL_NtB5_12FileResolver4path(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32, i32) #27

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #34

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXs2_NtNtCs2AWtUsOyxgP_3std2io6cursorINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEENtB7_5Write9write_allCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #24

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs1_NtNtCsigX4YvXbBTX_4zstd6stream3rawNtB5_7DecoderNtB5_9Operation6reinit(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXs1_NtNtCsigX4YvXbBTX_4zstd6stream3rawNtB6_7DecoderNtB6_9Operation3runShECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMsp_Cs5A7SZreX83v_9zstd_safeINtB5_9OutBufferShE3posCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreaderINtB5_9BufReaderINtNtNtCsb9zoKkpXuBA_3zip4read7readers12CryptoReaderINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorNtNtCs56aZGHL6Dc6_7ruff_db8vendored11ArchiveDataEEENtB9_7BufRead7consumeB2G_(ptr noalias noundef align 8 dereferenceable(80), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXs1_NtNtCsigX4YvXbBTX_4zstd6stream3rawNtB6_7DecoderNtB6_9Operation6finishShECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table8slots_ofINtNtB8_8interned5ValueNtCs56aZGHL6Dc6_7ruff_db10PythonFileEEB1h_(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs45bxiIjzMqg_5salsa8database12memory_usage8SlotInfoEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB2e_IB2e_NtNtBZ_5table11ErasedSlotsNCINvMs4_B3d_NtB3d_5Table8slots_ofINtNtBZ_8interned5ValueNtCs56aZGHL6Dc6_7ruff_db10PythonFileEE0ENCNvMs6_B4c_INtB4c_14IngredientImplB4w_E13entries_inner0ENCNvXsb_B4c_B5m_NtNtBZ_10ingredient10Ingredient12memory_usage0EE9from_iterB4y_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i1 } @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE11insert_fullCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRmNtB6_5Debug3fmtCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc5boxed3BoxeENtB6_7Display3fmtCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtNtCs56aZGHL6Dc6_7ruff_db8vendored4pathNtB5_12VendoredPathNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableNtNtCs45bxiIjzMqg_5salsa8interned8ValueKeyNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathENtB6_5Debug3fmtB1a_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path17SystemVirtualPathENtB6_5Debug3fmtB1a_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs56aZGHL6Dc6_7ruff_db8vendored4path12VendoredPathENtB6_5Debug3fmtB1a_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_CshFWUtO0bu8g_6caminoNtB5_11Utf8PathBufNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeINtNtNtBa_5slice4iter4IterB14_EECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXsO_NtCscdodAO9FK5_5alloc6stringINtNtB7_5boxed3BoxeEINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_6StringE4from(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs45bxiIjzMqg_5salsa10ingredient9fmt_index(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef range(i32 1, 0), i32 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5write(ptr noalias noundef nonnull, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCs2AWtUsOyxgP_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull, ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtNtCsb9zoKkpXuBA_3zip4read12magic_finderINtB5_21OptimisticMagicFinderNtB5_7ForwardE9new_emptyCs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias noundef writable sret([1408 x i8]) align 32 captures(none) dereferenceable(1408)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #27

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #31 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #32 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #37 = { cold }
attributes #38 = { cold noreturn nounwind }
attributes #39 = { noreturn }
attributes #40 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{i8 -1, i8 10}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE8push_mutCs56aZGHL6Dc6_7ruff_db: argument 0"}
!7 = distinct !{!7, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE8push_mutCs56aZGHL6Dc6_7ruff_db"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE8push_mutCs56aZGHL6Dc6_7ruff_db: argument 1"}
!10 = !{i64 0, i64 -9223372036854775808}
!11 = !{i8 0, i8 10}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE8push_mutCs56aZGHL6Dc6_7ruff_db: argument 0"}
!14 = distinct !{!14, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE8push_mutCs56aZGHL6Dc6_7ruff_db"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE8push_mutCs56aZGHL6Dc6_7ruff_db: argument 1"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_RNvXs1Y_NtCs2AWtUsOyxgP_3std4pathNtB6_9ComponentNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 0"}
!19 = distinct !{!19, !"_RNvXs1Y_NtCs2AWtUsOyxgP_3std4pathNtB6_9ComponentNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq"}
!20 = !{!21}
!21 = distinct !{!21, !19, !"_RNvXs1Y_NtCs2AWtUsOyxgP_3std4pathNtB6_9ComponentNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 1"}
!22 = !{!23, !25}
!23 = distinct !{!23, !24, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 0"}
!24 = distinct !{!24, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq"}
!25 = distinct !{!25, !24, !"_RNvXsG_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_5OsStrNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 1"}
!26 = !{!18, !21}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE8push_mutCs56aZGHL6Dc6_7ruff_db: argument 0"}
!29 = distinct !{!29, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE8push_mutCs56aZGHL6Dc6_7ruff_db"}
!30 = !{!31}
!31 = distinct !{!31, !29, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE8push_mutCs56aZGHL6Dc6_7ruff_db: argument 1"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE8push_mutCs56aZGHL6Dc6_7ruff_db: argument 0"}
!34 = distinct !{!34, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE8push_mutCs56aZGHL6Dc6_7ruff_db"}
!35 = !{!36}
!36 = distinct !{!36, !34, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE8push_mutCs56aZGHL6Dc6_7ruff_db: argument 1"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE8push_mutCs56aZGHL6Dc6_7ruff_db: argument 0"}
!39 = distinct !{!39, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE8push_mutCs56aZGHL6Dc6_7ruff_db"}
!40 = !{!41}
!41 = distinct !{!41, !39, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE8push_mutCs56aZGHL6Dc6_7ruff_db: argument 1"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE8push_mutCs56aZGHL6Dc6_7ruff_db: argument 0"}
!44 = distinct !{!44, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE8push_mutCs56aZGHL6Dc6_7ruff_db"}
!45 = !{!46}
!46 = distinct !{!46, !44, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE8push_mutCs56aZGHL6Dc6_7ruff_db: argument 1"}
!47 = !{i64 0, i64 2}
!48 = !{i64 0, i64 -9223372036854775807}
!49 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!50 = !{i64 -1, i64 -9223372036854775808}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_RNCNvNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs14create_dir_all0B7_: argument 0"}
!53 = distinct !{!53, !"_RNCNvNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs14create_dir_all0B7_"}
!54 = !{!55}
!55 = distinct !{!55, !53, !"_RNCNvNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs14create_dir_all0B7_: argument 1"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_RNCNvNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs18get_or_create_file0B7_: argument 0"}
!58 = distinct !{!58, !"_RNCNvNtNtCs56aZGHL6Dc6_7ruff_db6system9memory_fs18get_or_create_file0B7_"}
!59 = !{!60, !62}
!60 = distinct !{!60, !61, !"_RNvMNtCscdodAO9FK5_5alloc3vecINtB2_3VecNtNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render5junit22DiagnosticWithLocationE3newBJ_: argument 0"}
!61 = distinct !{!61, !"_RNvMNtCscdodAO9FK5_5alloc3vecINtB2_3VecNtNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render5junit22DiagnosticWithLocationE3newBJ_"}
!62 = distinct !{!62, !63, !"_RNvYNvMNtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render5junit22DiagnosticWithLocationE3newINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_onceBM_: argument 0"}
!63 = distinct !{!63, !"_RNvYNvMNtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render5junit22DiagnosticWithLocationE3newINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_onceBM_"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryReINtNtBd_3vec3VecNtNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render5junit22DiagnosticWithLocationEE12insert_entryB1I_: argument 0"}
!66 = distinct !{!66, !"_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryReINtNtBd_3vec3VecNtNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render5junit22DiagnosticWithLocationEE12insert_entryB1I_"}
!67 = !{!68}
!68 = distinct !{!68, !66, !"_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryReINtNtBd_3vec3VecNtNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render5junit22DiagnosticWithLocationEE12insert_entryB1I_: argument 1"}
!69 = !{!65, !68, !70}
!70 = distinct !{!70, !66, !"_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryReINtNtBd_3vec3VecNtNtNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic6render5junit22DiagnosticWithLocationEE12insert_entryB1I_: argument 2"}
!71 = !{!65, !70}
!72 = !{!65, !68}
!73 = !{!68, !70}
!74 = !{!75, !77, !78}
!75 = distinct !{!75, !76, !"_RINvYNtNtCsb9zoKkpXuBA_3zip4spec13Zip32CDEBlockNtB5_14FixedSizeBlock5writeINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEECs56aZGHL6Dc6_7ruff_db: argument 0"}
!76 = distinct !{!76, !"_RINvYNtNtCsb9zoKkpXuBA_3zip4spec13Zip32CDEBlockNtB5_14FixedSizeBlock5writeINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEECs56aZGHL6Dc6_7ruff_db"}
!77 = distinct !{!77, !76, !"_RINvYNtNtCsb9zoKkpXuBA_3zip4spec13Zip32CDEBlockNtB5_14FixedSizeBlock5writeINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEECs56aZGHL6Dc6_7ruff_db: argument 1"}
!78 = distinct !{!78, !76, !"_RINvYNtNtCsb9zoKkpXuBA_3zip4spec13Zip32CDEBlockNtB5_14FixedSizeBlock5writeINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEECs56aZGHL6Dc6_7ruff_db: argument 2"}
!79 = !{!75, !78}
!80 = !{i64 8}
!81 = !{!82, !84}
!82 = distinct !{!82, !83, !"_RINvYNtNtCsb9zoKkpXuBA_3zip4spec13Zip32CDEBlockNtB5_14FixedSizeBlock5writeQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEECs56aZGHL6Dc6_7ruff_db: argument 0"}
!83 = distinct !{!83, !"_RINvYNtNtCsb9zoKkpXuBA_3zip4spec13Zip32CDEBlockNtB5_14FixedSizeBlock5writeQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEECs56aZGHL6Dc6_7ruff_db"}
!84 = distinct !{!84, !83, !"_RINvYNtNtCsb9zoKkpXuBA_3zip4spec13Zip32CDEBlockNtB5_14FixedSizeBlock5writeQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEECs56aZGHL6Dc6_7ruff_db: argument 1"}
!85 = !{!82}
!86 = !{!87, !89, !90}
!87 = distinct !{!87, !88, !"_RINvYNtNtCsb9zoKkpXuBA_3zip4spec13Zip64CDEBlockNtB5_14FixedSizeBlock5writeINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEECs56aZGHL6Dc6_7ruff_db: argument 0"}
!88 = distinct !{!88, !"_RINvYNtNtCsb9zoKkpXuBA_3zip4spec13Zip64CDEBlockNtB5_14FixedSizeBlock5writeINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEECs56aZGHL6Dc6_7ruff_db"}
!89 = distinct !{!89, !88, !"_RINvYNtNtCsb9zoKkpXuBA_3zip4spec13Zip64CDEBlockNtB5_14FixedSizeBlock5writeINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEECs56aZGHL6Dc6_7ruff_db: argument 1"}
!90 = distinct !{!90, !88, !"_RINvYNtNtCsb9zoKkpXuBA_3zip4spec13Zip64CDEBlockNtB5_14FixedSizeBlock5writeINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEECs56aZGHL6Dc6_7ruff_db: argument 2"}
!91 = !{!87, !90}
!92 = !{!93, !95}
!93 = distinct !{!93, !94, !"_RINvYNtNtCsb9zoKkpXuBA_3zip4spec13Zip64CDEBlockNtB5_14FixedSizeBlock5writeQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEECs56aZGHL6Dc6_7ruff_db: argument 0"}
!94 = distinct !{!94, !"_RINvYNtNtCsb9zoKkpXuBA_3zip4spec13Zip64CDEBlockNtB5_14FixedSizeBlock5writeQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEECs56aZGHL6Dc6_7ruff_db"}
!95 = distinct !{!95, !94, !"_RINvYNtNtCsb9zoKkpXuBA_3zip4spec13Zip64CDEBlockNtB5_14FixedSizeBlock5writeQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEECs56aZGHL6Dc6_7ruff_db: argument 1"}
!96 = !{!93}
!97 = !{i8 -2, i8 42}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs56aZGHL6Dc6_7ruff_db5files9directory16DirectoryListingNtBZ_21DirectoryListingErrorEEB13_: argument 0"}
!100 = distinct !{!100, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs56aZGHL6Dc6_7ruff_db5files9directory16DirectoryListingNtBZ_21DirectoryListingErrorEEB13_"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTNtCsg7m2K3K1Fzf_11compact_str13CompactStringNtNtCs56aZGHL6Dc6_7ruff_db6system8FileTypeEEB1p_: argument 0"}
!103 = distinct !{!103, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTNtCsg7m2K3K1Fzf_11compact_str13CompactStringNtNtCs56aZGHL6Dc6_7ruff_db6system8FileTypeEEB1p_"}
!104 = !{i8 0, i8 -38}
!105 = !{!106, !108, !110, !112, !102}
!106 = distinct !{!106, !107, !"_RNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop: argument 0"}
!107 = distinct !{!107, !"_RNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop"}
!108 = distinct !{!108, !109, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsg7m2K3K1Fzf_11compact_str4repr4ReprECs56aZGHL6Dc6_7ruff_db: argument 0"}
!109 = distinct !{!109, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsg7m2K3K1Fzf_11compact_str4repr4ReprECs56aZGHL6Dc6_7ruff_db"}
!110 = distinct !{!110, !111, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsg7m2K3K1Fzf_11compact_str13CompactStringECs56aZGHL6Dc6_7ruff_db: argument 0"}
!111 = distinct !{!111, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsg7m2K3K1Fzf_11compact_str13CompactStringECs56aZGHL6Dc6_7ruff_db"}
!112 = distinct !{!112, !113, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCsg7m2K3K1Fzf_11compact_str13CompactStringNtNtCs56aZGHL6Dc6_7ruff_db6system8FileTypeEEB1o_: argument 0"}
!113 = distinct !{!113, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCsg7m2K3K1Fzf_11compact_str13CompactStringNtNtCs56aZGHL6Dc6_7ruff_db6system8FileTypeEEB1o_"}
!114 = !{!102, !99}
!115 = !{!116, !118, !120, !122, !102}
!116 = distinct !{!116, !117, !"_RNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop: argument 0"}
!117 = distinct !{!117, !"_RNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop"}
!118 = distinct !{!118, !119, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsg7m2K3K1Fzf_11compact_str4repr4ReprECs56aZGHL6Dc6_7ruff_db: argument 0"}
!119 = distinct !{!119, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsg7m2K3K1Fzf_11compact_str4repr4ReprECs56aZGHL6Dc6_7ruff_db"}
!120 = distinct !{!120, !121, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsg7m2K3K1Fzf_11compact_str13CompactStringECs56aZGHL6Dc6_7ruff_db: argument 0"}
!121 = distinct !{!121, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsg7m2K3K1Fzf_11compact_str13CompactStringECs56aZGHL6Dc6_7ruff_db"}
!122 = distinct !{!122, !123, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCsg7m2K3K1Fzf_11compact_str13CompactStringNtNtCs56aZGHL6Dc6_7ruff_db6system8FileTypeEEB1o_: argument 0"}
!123 = distinct !{!123, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCsg7m2K3K1Fzf_11compact_str13CompactStringNtNtCs56aZGHL6Dc6_7ruff_db6system8FileTypeEEB1o_"}
!124 = !{i64 -2, i64 -9223372036854775802}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb9zoKkpXuBA_3zip6result8ZipErrorECs56aZGHL6Dc6_7ruff_db: argument 0"}
!127 = distinct !{!127, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb9zoKkpXuBA_3zip6result8ZipErrorECs56aZGHL6Dc6_7ruff_db"}
!128 = !{i64 1, i64 536870913}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2isvxI5XMib_9quick_xml6writer11IndentationEECs56aZGHL6Dc6_7ruff_db: argument 0"}
!131 = distinct !{!131, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2isvxI5XMib_9quick_xml6writer11IndentationEECs56aZGHL6Dc6_7ruff_db"}
!132 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesEECs56aZGHL6Dc6_7ruff_db: argument 0"}
!135 = distinct !{!135, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesEECs56aZGHL6Dc6_7ruff_db"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db: argument 0"}
!138 = distinct !{!138, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db"}
!139 = !{!137, !134}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesEECs56aZGHL6Dc6_7ruff_db: argument 0"}
!142 = distinct !{!142, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesEECs56aZGHL6Dc6_7ruff_db"}
end_hunk_1
