Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.05?download=true
inline.NumInlined: 10337
inline.NumDeleted: 5105
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_orderingNtB4_19SimplifyIRNodeOrder23simplify_ir_node_orders:bb.a
  %i.fe = icmp eq i32 %i.fd, 1, !dbg !120048
  br i1 %i.fe, label %bb.z, label %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit190.thread, !dbg !120048

bb.z:                                             ; preds = %bb.y
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bm, i64 52, !dbg !120049
  %i.fg = load i32, ptr %i.ff, align 4, !dbg !120049, !range !4515, !alias.scope !119404, !noundef !3394
  %i.fh = icmp eq i32 %i.fg, 1, !dbg !120050
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bm, i64 40, !dbg !120049 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !dbg !120050, !alias.scope !119404
  %.sroa.018.0.i181 = select i1 %i.fh, ptr %i.fi, ptr %i.fj, !dbg !120050
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bm, i64 36, !dbg !120051
  %i.fl = load i32, ptr %i.fk, align 4, !dbg !120051, !range !4515, !alias.scope !119404, !noundef !3394
  %i.fm = icmp eq i32 %i.fl, 1, !dbg !120052
  %i.fn = load ptr, ptr %i.bn, align 8, !dbg !120052, !alias.scope !119404
  %.sroa.014.0.i182 = select i1 %i.fm, ptr %i.bn, ptr %i.fn, !dbg !120052
  %.sroa.015.0.copyload.i183 = load i64, ptr %.sroa.014.0.i182, align 4, !dbg !120053, !noalias !119405
  %.sroa.019.0.copyload.i184 = load i64, ptr %.sroa.018.0.i181, align 4, !dbg !120054, !noalias !119405
  store i64 %.sroa.015.0.copyload.i183, ptr %i.n, align 8, !dbg !120055, !alias.scope !119406, !noalias !119407
  %.sroa.4.0..sroa_idx.i185 = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !120055
  store i64 %.sroa.019.0.copyload.i184, ptr %.sroa.4.0..sroa_idx.i185, align 8, !dbg !120055, !alias.scope !119406, !noalias !119407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !120056, !noalias !119407
  call void @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyNtBQ_4EdgeE16get_disjoint_mutKj2_EBW_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ey, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.n), !dbg !120057, !noalias !119408
  %i.fo = load ptr, ptr %i.m, align 8, !dbg !120058, !noalias !119407, !noundef !3394 ; 4 uses
  %.not.i186 = icmp eq ptr %i.fo, null, !dbg !120058
  br i1 %.not.i186, label %bb.aa, label %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit190, !dbg !120059, !prof !3463

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #43, !dbg !120060, !noalias !119408
  unreachable, !dbg !120060

_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit190.thread: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !120061
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @522) #43, !dbg !120062
  unreachable, !dbg !120062

_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit190: ; preds = %bb.z
  %.sroa.2.0..sroa_idx.i187 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !120063
  %.sroa.2.0.copyload.i188 = load i64, ptr %.sroa.2.0..sroa_idx.i187, align 8, !dbg !120063, !noalias !119407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !120064, !noalias !119407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !120061
  %i.fp = inttoptr i64 %.sroa.2.0.copyload.i188 to ptr, !dbg !120065 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bt, i64 64, !dbg !120066 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 16, !dbg !120066, !nonnull !3394, !noundef !3394 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bt, i64 72, !dbg !120067 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !dbg !120067, !noundef !3394 ; 2 uses
  %.idx376 = mul nuw nsw i64 %i.ft, 112, !dbg !120068
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.idx376, !dbg !120068
  %i.fv = icmp eq i64 %i.ft, 0, !dbg !120069
  %.phi.trans.insert391 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre392 = load ptr, ptr %.phi.trans.insert391, align 8 ; 6 uses
  br i1 %i.fv, label %._crit_edge, label %.lr.ph369, !dbg !119427

.lr.ph369:                                        ; preds = %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit190
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.fx = getelementptr inbounds nuw i8, ptr %.pre392, i64 16 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.pre392, i64 8
  br label %bb.ci, !dbg !119427

bb.ab:                                            ; preds = %bb.h
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bt, i64 64, !dbg !120070 ; 8 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !120071
  %i.gb = load ptr, ptr %i.ga, align 8, !dbg !120071, !nonnull !3394, !align !3446, !noundef !3394
  call void @llvm.experimental.noalias.scope.decl(metadata !119428), !dbg !120072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !120073
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bm, i64 32, !dbg !120073
  %i.gd = load i32, ptr %i.gc, align 8, !dbg !120073, !alias.scope !119428, !noundef !3394
  %i.ge = icmp eq i32 %i.gd, 2, !dbg !120074
  br i1 %i.ge, label %bb.ac, label %bb.dc, !dbg !120074

bb.ac:                                            ; preds = %bb.ab
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bm, i64 48, !dbg !120075
  %i.gg = load i32, ptr %i.gf, align 8, !dbg !120075, !alias.scope !119428, !noundef !3394
  %i.gh = icmp eq i32 %i.gg, 1, !dbg !120076
  br i1 %i.gh, label %bb.ad, label %bb.dc, !dbg !120076

bb.ad:                                            ; preds = %bb.ac
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bm, i64 36, !dbg !120077
  %i.gj = load i32, ptr %i.gi, align 4, !dbg !120077, !range !4515, !alias.scope !119428, !noundef !3394
  %i.gk = icmp eq i32 %i.gj, 1, !dbg !120078
  %i.gl = load ptr, ptr %i.bn, align 8, !dbg !120078, !alias.scope !119428
  %.sroa.07.0.i = select i1 %i.gk, ptr %i.bn, ptr %i.gl, !dbg !120078
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bm, i64 52, !dbg !120079
  %i.gn = load i32, ptr %i.gm, align 4, !dbg !120079, !range !4515, !alias.scope !119428, !noundef !3394
  %i.go = icmp eq i32 %i.gn, 1, !dbg !120080
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bm, i64 40, !dbg !120079 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !dbg !120080, !alias.scope !119428
  %.sroa.08.0.i = select i1 %i.go, ptr %i.gp, ptr %i.gq, !dbg !120080
  %.sroa.09.0.copyload.i = load i64, ptr %.sroa.08.0.i, align 4, !dbg !120081, !noalias !119435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.07.0.i, i64 16, i1 false), !dbg !120082, !noalias !119435
  %.sroa.4.0..sroa_idx.i191 = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !120083
  store i64 %.sroa.09.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i191, align 4, !dbg !120083, !alias.scope !119436, !noalias !119437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !120084, !noalias !119437
  call void @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyNtBQ_4EdgeE16get_disjoint_mutKj3_EBW_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gb, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(24) %i.l), !dbg !120085, !noalias !119438
  %i.gr = load ptr, ptr %i.k, align 8, !dbg !120086, !noalias !119437, !noundef !3394 ; 6 uses
  %.not.i192 = icmp eq ptr %i.gr, null, !dbg !120086
  br i1 %.not.i192, label %bb.ae, label %bb.db, !dbg !120087, !prof !3463

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #43, !dbg !120088, !noalias !119438
  unreachable, !dbg !120088

bb.af:                                            ; preds = %bb.h
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !119989
  %i.gt = load ptr, ptr %i.gs, align 8, !dbg !119989, !nonnull !3394, !align !3446, !noundef !3394
  call void @llvm.experimental.noalias.scope.decl(metadata !119439), !dbg !119990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !120089
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bm, i64 32, !dbg !120089
  %i.gv = load i32, ptr %i.gu, align 8, !dbg !120089, !alias.scope !119439, !noundef !3394
  %i.gw = icmp eq i32 %i.gv, 2, !dbg !120090
  br i1 %i.gw, label %bb.ag, label %bb.ea, !dbg !120090

bb.ag:                                            ; preds = %bb.af
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bm, i64 48, !dbg !120091
  %i.gy = load i32, ptr %i.gx, align 8, !dbg !120091, !alias.scope !119439, !noundef !3394
  %i.gz = icmp eq i32 %i.gy, 1, !dbg !120092
  br i1 %i.gz, label %bb.ah, label %bb.ea, !dbg !120092

bb.ah:                                            ; preds = %bb.ag
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bm, i64 36, !dbg !120093
  %i.hb = load i32, ptr %i.ha, align 4, !dbg !120093, !range !4515, !alias.scope !119439, !noundef !3394
  %i.hc = icmp eq i32 %i.hb, 1, !dbg !120094
  %i.hd = load ptr, ptr %i.bn, align 8, !dbg !120094, !alias.scope !119439
  %.sroa.07.0.i195 = select i1 %i.hc, ptr %i.bn, ptr %i.hd, !dbg !120094
  %i.he = getelementptr inbounds nuw i8, ptr %i.bm, i64 52, !dbg !120095
  %i.hf = load i32, ptr %i.he, align 4, !dbg !120095, !range !4515, !alias.scope !119439, !noundef !3394
  %i.hg = icmp eq i32 %i.hf, 1, !dbg !120096
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bm, i64 40, !dbg !120095 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !dbg !120096, !alias.scope !119439
  %.sroa.08.0.i196 = select i1 %i.hg, ptr %i.hh, ptr %i.hi, !dbg !120096
  %.sroa.09.0.copyload.i197 = load i64, ptr %.sroa.08.0.i196, align 4, !dbg !120097, !noalias !119440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.07.0.i195, i64 16, i1 false), !dbg !120098, !noalias !119440
  %.sroa.4.0..sroa_idx.i198 = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !120099
  store i64 %.sroa.09.0.copyload.i197, ptr %.sroa.4.0..sroa_idx.i198, align 4, !dbg !120099, !alias.scope !119441, !noalias !119442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !120100, !noalias !119442
  call void @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyNtBQ_4EdgeE16get_disjoint_mutKj3_EBW_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gt, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(24) %i.j), !dbg !120101, !noalias !119443
  %i.hj = load ptr, ptr %i.i, align 8, !dbg !120102, !noalias !119442, !noundef !3394
  %.not.i199 = icmp eq ptr %i.hj, null, !dbg !120102
  br i1 %.not.i199, label %bb.ai, label %bb.dz, !dbg !120103, !prof !3463

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #43, !dbg !120104, !noalias !119443
  unreachable, !dbg !120104

bb.aj:                                            ; preds = %bb.h
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !120105
  %i.hl = load ptr, ptr %i.hk, align 8, !dbg !120105, !nonnull !3394, !align !3446, !noundef !3394
  call void @llvm.experimental.noalias.scope.decl(metadata !119444), !dbg !120106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !120107
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bm, i64 32, !dbg !120107
  %i.hn = load i32, ptr %i.hm, align 8, !dbg !120107, !alias.scope !119444, !noundef !3394
  %i.ho = icmp eq i32 %i.hn, 1, !dbg !120108
  br i1 %i.ho, label %bb.ak, label %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit213.thread, !dbg !120108

bb.ak:                                            ; preds = %bb.aj
  %i.hp = getelementptr inbounds nuw i8, ptr %i.bm, i64 48, !dbg !120109
  %i.hq = load i32, ptr %i.hp, align 8, !dbg !120109, !alias.scope !119444, !noundef !3394
  %i.hr = icmp eq i32 %i.hq, 1, !dbg !120110
  br i1 %i.hr, label %bb.al, label %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit213.thread, !dbg !120110

bb.al:                                            ; preds = %bb.ak
  %i.hs = getelementptr inbounds nuw i8, ptr %i.bm, i64 52, !dbg !120111
  %i.ht = load i32, ptr %i.hs, align 4, !dbg !120111, !range !4515, !alias.scope !119444, !noundef !3394
  %i.hu = icmp eq i32 %i.ht, 1, !dbg !120112
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bm, i64 40, !dbg !120111 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !dbg !120112, !alias.scope !119444
  %.sroa.018.0.i204 = select i1 %i.hu, ptr %i.hv, ptr %i.hw, !dbg !120112
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bm, i64 36, !dbg !120113
  %i.hy = load i32, ptr %i.hx, align 4, !dbg !120113, !range !4515, !alias.scope !119444, !noundef !3394
  %i.hz = icmp eq i32 %i.hy, 1, !dbg !120114
  %i.ia = load ptr, ptr %i.bn, align 8, !dbg !120114, !alias.scope !119444
  %.sroa.014.0.i205 = select i1 %i.hz, ptr %i.bn, ptr %i.ia, !dbg !120114
  %.sroa.015.0.copyload.i206 = load i64, ptr %.sroa.014.0.i205, align 4, !dbg !120115, !noalias !119445
  %.sroa.019.0.copyload.i207 = load i64, ptr %.sroa.018.0.i204, align 4, !dbg !120116, !noalias !119445
  store i64 %.sroa.015.0.copyload.i206, ptr %i.h, align 8, !dbg !120117, !alias.scope !119446, !noalias !119447
  %.sroa.4.0..sroa_idx.i208 = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !120117
  store i64 %.sroa.019.0.copyload.i207, ptr %.sroa.4.0..sroa_idx.i208, align 8, !dbg !120117, !alias.scope !119446, !noalias !119447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !120118, !noalias !119447
  call void @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyNtBQ_4EdgeE16get_disjoint_mutKj2_EBW_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.hl, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.h), !dbg !120119, !noalias !119448
  %i.ib = load ptr, ptr %i.g, align 8, !dbg !120120, !noalias !119447, !noundef !3394 ; 3 uses
  %.not.i209 = icmp eq ptr %i.ib, null, !dbg !120120
  br i1 %.not.i209, label %bb.am, label %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit213, !dbg !120121, !prof !3463

bb.am:                                            ; preds = %bb.al
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #43, !dbg !120122, !noalias !119448
  unreachable, !dbg !120122

_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit213.thread: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !120123
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @530) #43, !dbg !120124
  unreachable, !dbg !120124

_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit213: ; preds = %bb.al
  %.sroa.2.0..sroa_idx.i210 = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !120125
  %.sroa.2.0.copyload.i211 = load i64, ptr %.sroa.2.0..sroa_idx.i210, align 8, !dbg !120125, !noalias !119447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !120126, !noalias !119447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !120123
  %i.ic = inttoptr i64 %.sroa.2.0.copyload.i211 to ptr, !dbg !120127 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !120128
  %i.ie = getelementptr inbounds nuw i8, ptr %i.bt, i64 48, !dbg !120128 ; 5 uses
  %i.if = load i8, ptr %i.ie, align 16, !dbg !120128, !range !3721, !noundef !3394
  %i.ig = trunc nuw i8 %i.if to i1, !dbg !120128
  br i1 %i.ig, label %bb.es, label %bb.er, !dbg !120128

bb.an:                                            ; preds = %bb.h
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !120129
  %i.ii = load ptr, ptr %i.ih, align 8, !dbg !120129, !nonnull !3394, !align !3446, !noundef !3394
  call void @llvm.experimental.noalias.scope.decl(metadata !119451), !dbg !120130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !120131
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bm, i64 32, !dbg !120131
  %i.ik = load i32, ptr %i.ij, align 8, !dbg !120131, !alias.scope !119451, !noundef !3394
  %i.il = icmp eq i32 %i.ik, 1, !dbg !120132
  br i1 %i.il, label %bb.ao, label %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit223.thread, !dbg !120132

bb.ao:                                            ; preds = %bb.an
  %i.im = getelementptr inbounds nuw i8, ptr %i.bm, i64 48, !dbg !120133
  %i.in = load i32, ptr %i.im, align 8, !dbg !120133, !alias.scope !119451, !noundef !3394
  %i.io = icmp eq i32 %i.in, 1, !dbg !120134
  br i1 %i.io, label %bb.ap, label %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit223.thread, !dbg !120134

bb.ap:                                            ; preds = %bb.ao
  %i.ip = getelementptr inbounds nuw i8, ptr %i.bm, i64 52, !dbg !120135
  %i.iq = load i32, ptr %i.ip, align 4, !dbg !120135, !range !4515, !alias.scope !119451, !noundef !3394
  %i.ir = icmp eq i32 %i.iq, 1, !dbg !120136
  %i.is = getelementptr inbounds nuw i8, ptr %i.bm, i64 40, !dbg !120135 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !dbg !120136, !alias.scope !119451
  %.sroa.018.0.i214 = select i1 %i.ir, ptr %i.is, ptr %i.it, !dbg !120136
  %i.iu = getelementptr inbounds nuw i8, ptr %i.bm, i64 36, !dbg !120137
  %i.iv = load i32, ptr %i.iu, align 4, !dbg !120137, !range !4515, !alias.scope !119451, !noundef !3394
  %i.iw = icmp eq i32 %i.iv, 1, !dbg !120138
  %i.ix = load ptr, ptr %i.bn, align 8, !dbg !120138, !alias.scope !119451
  %.sroa.014.0.i215 = select i1 %i.iw, ptr %i.bn, ptr %i.ix, !dbg !120138
  %.sroa.015.0.copyload.i216 = load i64, ptr %.sroa.014.0.i215, align 4, !dbg !120139, !noalias !119452
  %.sroa.019.0.copyload.i217 = load i64, ptr %.sroa.018.0.i214, align 4, !dbg !120140, !noalias !119452
  store i64 %.sroa.015.0.copyload.i216, ptr %i.f, align 8, !dbg !120141, !alias.scope !119453, !noalias !119454
  %.sroa.4.0..sroa_idx.i218 = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !120141
  store i64 %.sroa.019.0.copyload.i217, ptr %.sroa.4.0..sroa_idx.i218, align 8, !dbg !120141, !alias.scope !119453, !noalias !119454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !120142, !noalias !119454
  call void @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyNtBQ_4EdgeE16get_disjoint_mutKj2_EBW_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ii, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.f), !dbg !120143, !noalias !119455
  %i.iy = load ptr, ptr %i.e, align 8, !dbg !120144, !noalias !119454, !noundef !3394 ; 2 uses
  %.not.i219 = icmp eq ptr %i.iy, null, !dbg !120144
  br i1 %.not.i219, label %bb.aq, label %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit223, !dbg !120145, !prof !3463

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #43, !dbg !120146, !noalias !119455
  unreachable, !dbg !120146

_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit223.thread: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !120147
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @531) #43, !dbg !120148
  unreachable, !dbg !120148

_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit223: ; preds = %bb.ap
  %.sroa.2.0..sroa_idx.i220 = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !120149
  %.sroa.2.0.copyload.i221 = load i64, ptr %.sroa.2.0..sroa_idx.i220, align 8, !dbg !120149, !noalias !119454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !120150, !noalias !119454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !120147
  %i.iz = inttoptr i64 %.sroa.2.0.copyload.i221 to ptr, !dbg !120151
  %i.ja = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !120152
  %.val157 = load i64, ptr %i.ja, align 8, !dbg !120153, !range !3904, !noundef !3394 ; 3 uses
  %i.jb = icmp ne i64 %.val157, 5, !dbg !120154
  call void @llvm.assume(i1 %i.jb), !dbg !120154
  %i.jc = add nsw i64 %.val157, -3, !dbg !120154
  %i.jd = icmp samesign ugt i64 %.val157, 2, !dbg !120154
  %i.je = select i1 %i.jd, i64 %i.jc, i64 2, !dbg !120154
  switch i64 %i.je, label %bb.fa [
    i64 0, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_19SimplifyIRNodeOrder23simplify_ir_node_orderss5_0EBY_.exit
    i64 1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_19SimplifyIRNodeOrder23simplify_ir_node_orderss5_0EBY_.exit
    i64 2, label %_RNvMs_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB4_10FunctionIR15has_equal_order.exit
    i64 3, label %_RNvMs_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB4_10FunctionIR18is_order_producing.exit
    i64 4, label %_RNvMs_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB4_10FunctionIR18is_order_producing.exit
    i64 5, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_19SimplifyIRNodeOrder23simplify_ir_node_orderss5_0EBY_.exit
    i64 6, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_19SimplifyIRNodeOrder23simplify_ir_node_orderss5_0EBY_.exit
    i64 7, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_19SimplifyIRNodeOrder23simplify_ir_node_orderss5_0EBY_.exit
    i64 8, label %_RNvMs_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB4_10FunctionIR18is_order_producing.exit
  ], !dbg !120155

bb.ar:                                            ; preds = %bb.h
  %i.jf = getelementptr inbounds nuw i8, ptr %i.bm, i64 40, !dbg !120156 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bm, i64 48, !dbg !120156
  %i.jh = load i32, ptr %i.jg, align 8, !dbg !120156, !noundef !3394 ; 2 uses
  %i.ji = zext i32 %i.jh to i64, !dbg !120156
  store i64 %i.ji, ptr %i.y, align 8, !dbg !120156
  %i.jj = icmp eq i32 %i.jh, 1, !dbg !120157
  br i1 %i.jj, label %bb.fb, label %bb.fc, !dbg !120157, !prof !3464

bb.as:                                            ; preds = %bb.h
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !120158
  %i.jl = load ptr, ptr %i.jk, align 8, !dbg !120158, !nonnull !3394, !align !3446, !noundef !3394
  call void @llvm.experimental.noalias.scope.decl(metadata !119460), !dbg !120159
  %i.jm = getelementptr inbounds nuw i8, ptr %i.bm, i64 32, !dbg !120160
  %i.jn = load i32, ptr %i.jm, align 8, !dbg !120160, !alias.scope !119460, !noundef !3394
  %i.jo = icmp eq i32 %i.jn, 1, !dbg !120161
  %i.jp = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.jq = load i32, ptr %i.jp, align 8, !alias.scope !119460
  %i.jr = icmp eq i32 %i.jq, 0
  %or.cond.i = select i1 %i.jo, i1 %i.jr, i1 false, !dbg !120161
  br i1 %or.cond.i, label %bb.at, label %bb.fy, !dbg !120161

bb.at:                                            ; preds = %bb.as
  %i.js = getelementptr inbounds nuw i8, ptr %i.bm, i64 36, !dbg !120162
  %i.jt = load i32, ptr %i.js, align 4, !dbg !120162, !range !4515, !alias.scope !119460, !noundef !3394
  %i.ju = icmp eq i32 %i.jt, 1, !dbg !120163
  %i.jv = load ptr, ptr %i.bn, align 8, !dbg !120163, !alias.scope !119460
  %.sroa.017.0.i = select i1 %i.ju, ptr %i.bn, ptr %i.jv, !dbg !120163
  %.sroa.018.0.copyload.i = load i64, ptr %.sroa.017.0.i, align 4, !dbg !120164, !noalias !119461
  %i.jw = call i64 @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyNtBQ_4EdgeE16get_disjoint_mutKj1_EBW_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.jl, i64 noundef %.sroa.018.0.copyload.i), !dbg !120165, !noalias !119460 ; 2 uses
  %.not.i225 = icmp eq i64 %i.jw, 0, !dbg !120166
  br i1 %.not.i225, label %bb.au, label %bb.fx, !dbg !120167, !prof !3463

bb.au:                                            ; preds = %bb.at
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #43, !dbg !120168, !noalias !119460
  unreachable, !dbg !120168

bb.av:                                            ; preds = %bb.h, %bb.h
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @542) #43, !dbg !120169
  unreachable, !dbg !120169

bb.aw:                                            ; preds = %bb.h
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !120170
  %i.jy = load ptr, ptr %i.jx, align 8, !dbg !120170, !nonnull !3394, !align !3446, !noundef !3394
  call void @llvm.experimental.noalias.scope.decl(metadata !119462), !dbg !120171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !120172
  %i.jz = getelementptr inbounds nuw i8, ptr %i.bm, i64 32, !dbg !120172
  %i.ka = load i32, ptr %i.jz, align 8, !dbg !120172, !alias.scope !119462, !noundef !3394
  %i.kb = icmp eq i32 %i.ka, 2, !dbg !120173
  br i1 %i.kb, label %bb.ax, label %bb.gp, !dbg !120173

bb.ax:                                            ; preds = %bb.aw
  %i.kc = getelementptr inbounds nuw i8, ptr %i.bm, i64 48, !dbg !120174
  %i.kd = load i32, ptr %i.kc, align 8, !dbg !120174, !alias.scope !119462, !noundef !3394
  %i.ke = icmp eq i32 %i.kd, 1, !dbg !120175
  br i1 %i.ke, label %bb.ay, label %bb.gp, !dbg !120175

bb.ay:                                            ; preds = %bb.ax
  %i.kf = getelementptr inbounds nuw i8, ptr %i.bm, i64 36, !dbg !120176
  %i.kg = load i32, ptr %i.kf, align 4, !dbg !120176, !range !4515, !alias.scope !119462, !noundef !3394
  %i.kh = icmp eq i32 %i.kg, 1, !dbg !120177
  %i.ki = load ptr, ptr %i.bn, align 8, !dbg !120177, !alias.scope !119462
  %.sroa.07.0.i226 = select i1 %i.kh, ptr %i.bn, ptr %i.ki, !dbg !120177
  %i.kj = getelementptr inbounds nuw i8, ptr %i.bm, i64 52, !dbg !120178
  %i.kk = load i32, ptr %i.kj, align 4, !dbg !120178, !range !4515, !alias.scope !119462, !noundef !3394
  %i.kl = icmp eq i32 %i.kk, 1, !dbg !120179
  %i.km = getelementptr inbounds nuw i8, ptr %i.bm, i64 40, !dbg !120178 ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !dbg !120179, !alias.scope !119462
  %.sroa.08.0.i227 = select i1 %i.kl, ptr %i.km, ptr %i.kn, !dbg !120179
  %.sroa.09.0.copyload.i228 = load i64, ptr %.sroa.08.0.i227, align 4, !dbg !120180, !noalias !119463
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.07.0.i226, i64 16, i1 false), !dbg !120181, !noalias !119463
  %.sroa.4.0..sroa_idx.i229 = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !120182
  store i64 %.sroa.09.0.copyload.i228, ptr %.sroa.4.0..sroa_idx.i229, align 4, !dbg !120182, !alias.scope !119464, !noalias !119465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !120183, !noalias !119465
  call void @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyNtBQ_4EdgeE16get_disjoint_mutKj3_EBW_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.jy, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(24) %i.d), !dbg !120184, !noalias !119466
  %i.ko = load ptr, ptr %i.c, align 8, !dbg !120185, !noalias !119465, !noundef !3394 ; 3 uses
  %.not.i230 = icmp eq ptr %i.ko, null, !dbg !120185
  br i1 %.not.i230, label %bb.az, label %bb.go, !dbg !120186, !prof !3463

bb.az:                                            ; preds = %bb.ay
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #43, !dbg !120187, !noalias !119466
  unreachable, !dbg !120187

bb.ba:                                            ; preds = %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit
  %.val134 = load i8, ptr %i.da, align 8, !dbg !120188, !noundef !3394
  %i.kp = trunc i8 %.val134 to i1, !dbg !120189
  %i.kq = and i8 %i.dd, 2
  %i.kr = icmp ne i8 %i.kq, 0
  %or.cond341 = or i1 %i.kr, %i.kp, !dbg !120190
  br i1 %or.cond341, label %bb.bb, label %bb.bc, !dbg !120190

bb.bb:                                            ; preds = %bb.ba, %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit, %bb.bc
  %.val128 = load i8, ptr %i.ct, align 1, !dbg !120191, !range !3721, !noundef !3394
  %i.ks = trunc nuw i8 %.val128 to i1, !dbg !120192
  br i1 %i.ks, label %bb.bd, label %bb.be, !dbg !120193

bb.bc:                                            ; preds = %bb.ba
  store i8 1, ptr %i.ct, align 1, !dbg !120194
  br label %bb.bb, !dbg !120195

bb.bd:                                            ; preds = %bb.bb
  store i8 1, ptr %i.cu, align 1, !dbg !120196
  br label %bb.be, !dbg !120197

bb.be:                                            ; preds = %bb.bb, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !120198
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_19SimplifyIRNodeOrder23simplify_ir_node_orderss5_0EBY_.exit, !dbg !120199

bb.bf:                                            ; preds = %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit170
  %.sroa.077.0.copyload.val = load i8, ptr %i.dx, align 1, !dbg !120200, !range !3721, !noundef !3394
  %i.kt = trunc nuw i8 %.sroa.077.0.copyload.val to i1, !dbg !120201
  br i1 %i.kt, label %bb.bg, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_19SimplifyIRNodeOrder23simplify_ir_node_orderss5_0EBY_.exit, !dbg !120202

bb.bg:                                            ; preds = %bb.bf, %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit170
  store i8 1, ptr %i.dw, align 1, !dbg !120203
  store i8 1, ptr %i.dx, align 1, !dbg !120204
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_19SimplifyIRNodeOrder23simplify_ir_node_orderss5_0EBY_.exit, !dbg !120205

bb.bh:                                            ; preds = %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit180
  %i.ku = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !120206
  %i.kv = load i64, ptr %i.ku, align 8, !dbg !120206, !range !3524, !noundef !3394
  %.not101 = icmp eq i64 %i.kv, 0, !dbg !120207
  br i1 %.not101, label %bb.bj, label %bb.bi, !dbg !120208
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_orderingNtB4_19SimplifyIRNodeOrder23simplify_ir_node_orders:bb.a
  unreachable, !dbg !120465

.thread:                                          ; preds = %bb.dz
  store i8 1, ptr %.sroa.6278.0.copyload, align 1, !dbg !120466
  br label %bb.ec, !dbg !120467

bb.eb:                                            ; preds = %bb.dz
  %.sroa.469.0.copyload.val.pre = load i8, ptr %.sroa.6278.0.copyload, align 1, !dbg !120468, !range !3721
  %i.st = trunc nuw i8 %.sroa.469.0.copyload.val.pre to i1, !dbg !120469
  br i1 %i.st, label %bb.ec, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_19SimplifyIRNodeOrder23simplify_ir_node_orderss5_0EBY_.exit, !dbg !120467

bb.ec:                                            ; preds = %.thread, %bb.eb
  store i8 1, ptr %i.sr, align 1, !dbg !120470
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_19SimplifyIRNodeOrder23simplify_ir_node_orderss5_0EBY_.exit, !dbg !120471

bb.ed:                                            ; preds = %bb.h
  %i.su = getelementptr inbounds nuw i8, ptr %i.bt, i64 32, !dbg !120472
  %i.sv = load ptr, ptr %i.su, align 16, !dbg !120472, !nonnull !3394, !noundef !3394
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 64, !dbg !120473
  %i.sx = load i64, ptr %i.sw, align 8, !dbg !120473, !noundef !3394
  %i.sy = getelementptr inbounds nuw i8, ptr %i.bt, i64 24, !dbg !120474
  %i.sz = load i64, ptr %i.sy, align 8, !dbg !120474, !noundef !3394 ; 2 uses
  %i.ta = icmp ult i64 %i.sz, 82351536043346213, !dbg !120475
  call void @llvm.assume(i1 %i.ta), !dbg !120476
  %i.tb = icmp ne i64 %i.sx, %i.sz, !dbg !119765
  br label %bb.ee, !dbg !120477

bb.ee:                                            ; preds = %bb.h, %bb.ed
  %.sroa.07.0 = phi i1 [ %i.tb, %bb.ed ], [ false, %bb.h ], !dbg !119525 ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !120478
  %i.td = load ptr, ptr %i.tc, align 8, !dbg !120478, !nonnull !3394, !align !3446, !noundef !3394
  call void @llvm.experimental.noalias.scope.decl(metadata !119775), !dbg !120479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !120480
  %i.te = getelementptr inbounds nuw i8, ptr %i.bm, i64 32, !dbg !120480
  %i.tf = load i32, ptr %i.te, align 8, !dbg !120480, !alias.scope !119775, !noundef !3394
  %i.tg = icmp eq i32 %i.tf, 1, !dbg !120481
  br i1 %i.tg, label %bb.ef, label %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit244.thread, !dbg !120481

bb.ef:                                            ; preds = %bb.ee
  %i.th = getelementptr inbounds nuw i8, ptr %i.bm, i64 48, !dbg !120482
  %i.ti = load i32, ptr %i.th, align 8, !dbg !120482, !alias.scope !119775, !noundef !3394
  %i.tj = icmp eq i32 %i.ti, 1, !dbg !120483
  br i1 %i.tj, label %bb.eg, label %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit244.thread, !dbg !120483

bb.eg:                                            ; preds = %bb.ef
  %i.tk = getelementptr inbounds nuw i8, ptr %i.bm, i64 52, !dbg !120484
  %i.tl = load i32, ptr %i.tk, align 4, !dbg !120484, !range !4515, !alias.scope !119775, !noundef !3394
  %i.tm = icmp eq i32 %i.tl, 1, !dbg !120485
  %i.tn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40, !dbg !120484 ; 2 uses
  %i.to = load ptr, ptr %i.tn, align 8, !dbg !120485, !alias.scope !119775
  %.sroa.018.0.i235 = select i1 %i.tm, ptr %i.tn, ptr %i.to, !dbg !120485
  %i.tp = getelementptr inbounds nuw i8, ptr %i.bm, i64 36, !dbg !120486
  %i.tq = load i32, ptr %i.tp, align 4, !dbg !120486, !range !4515, !alias.scope !119775, !noundef !3394
  %i.tr = icmp eq i32 %i.tq, 1, !dbg !120487
  %i.ts = load ptr, ptr %i.bn, align 8, !dbg !120487, !alias.scope !119775
  %.sroa.014.0.i236 = select i1 %i.tr, ptr %i.bn, ptr %i.ts, !dbg !120487
  %.sroa.015.0.copyload.i237 = load i64, ptr %.sroa.014.0.i236, align 4, !dbg !120488, !noalias !119776
  %.sroa.019.0.copyload.i238 = load i64, ptr %.sroa.018.0.i235, align 4, !dbg !120489, !noalias !119776
  store i64 %.sroa.015.0.copyload.i237, ptr %i.b, align 8, !dbg !120490, !alias.scope !119777, !noalias !119778
  %.sroa.4.0..sroa_idx.i239 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !120490
  store i64 %.sroa.019.0.copyload.i238, ptr %.sroa.4.0..sroa_idx.i239, align 8, !dbg !120490, !alias.scope !119777, !noalias !119778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !120491, !noalias !119778
  call void @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyNtBQ_4EdgeE16get_disjoint_mutKj2_EBW_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.td, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b), !dbg !120492, !noalias !119779
  %i.tt = load ptr, ptr %i.a, align 8, !dbg !120493, !noalias !119778, !noundef !3394 ; 4 uses
  %.not.i240 = icmp eq ptr %i.tt, null, !dbg !120493
  br i1 %.not.i240, label %bb.eh, label %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit244, !dbg !120494, !prof !3463

bb.eh:                                            ; preds = %bb.eg
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #43, !dbg !120495, !noalias !119779
  unreachable, !dbg !120495

_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit244.thread: ; preds = %bb.ee, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !120496
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @529) #43, !dbg !120497
  unreachable, !dbg !120497

_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit244: ; preds = %bb.eg
  %.sroa.2.0..sroa_idx.i241 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !120498
  %.sroa.2.0.copyload.i242 = load i64, ptr %.sroa.2.0..sroa_idx.i241, align 8, !dbg !120498, !noalias !119778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !120499, !noalias !119778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !120496
  %i.tu = inttoptr i64 %.sroa.2.0.copyload.i242 to ptr, !dbg !120500 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !120501
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !120502
  %i.tw = load ptr, ptr %i.tv, align 8, !dbg !120502, !nonnull !3394, !align !3446, !noundef !3394 ; 2 uses
  call void @_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils5arena4NodeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4expr16ObservableOrdersE5clearB1B_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.tw), !dbg !120503
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !120504
  %i.ty = load ptr, ptr %i.tx, align 8, !dbg !120504, !nonnull !3394, !align !3446, !noundef !3394
  %i.tz = getelementptr inbounds nuw i8, ptr %i.af, i64 17, !dbg !120505
  store i8 0, ptr %i.tz, align 1, !dbg !120505, !alias.scope !119782
  store ptr %i.tw, ptr %i.af, align 8, !dbg !120505, !alias.scope !119782
  %i.ua = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !120505 ; 2 uses
  store i8 0, ptr %i.ua, align 8, !dbg !120505, !alias.scope !119782
  %i.ub = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !120505
  store ptr %i.ty, ptr %i.ub, align 8, !dbg !120505, !alias.scope !119782
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !120506
  %i.ud = load ptr, ptr %i.uc, align 8, !dbg !120506, !nonnull !3394, !align !3446, !noundef !3394 ; 3 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 16, !dbg !120507 ; 2 uses
  store i64 0, ptr %i.ue, align 8, !dbg !120507
  %i.uf = getelementptr inbounds nuw i8, ptr %i.bt, i64 16, !dbg !120508
  %i.ug = load ptr, ptr %i.uf, align 16, !dbg !120508, !nonnull !3394, !noundef !3394 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.bt, i64 24, !dbg !120509
  %i.ui = load i64, ptr %i.uh, align 8, !dbg !120509, !noundef !3394
  %i.uj = getelementptr inbounds nuw [112 x i8], ptr %i.ug, i64 %i.ui, !dbg !120510
  call void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1N_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENCNvMs_NtNtB2X_9optimizer17simplify_orderingNtB3T_19SimplifyIRNodeOrder23simplify_ir_node_orders0EEB2Z_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ud, ptr noundef nonnull %i.ug, ptr noundef nonnull %i.uj), !dbg !120511
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ud, i64 8, !dbg !120512
  %i.ul = load ptr, ptr %i.uk, align 8, !dbg !120512, !nonnull !3394, !noundef !3394
  %i.um = load i64, ptr %i.ue, align 8, !dbg !120513, !noundef !3394
  %.sroa.056.0.copyload.val117 = load i8, ptr %i.tu, align 1, !dbg !120514, !range !3721, !noundef !3394
  %i.un = trunc nuw i8 %.sroa.056.0.copyload.val117 to i1, !dbg !120515
  br i1 %i.un, label %bb.ei, label %bb.ej, !dbg !120516

bb.ei:                                            ; preds = %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit244
  %.val116 = load i8, ptr %i.tt, align 1, !dbg !120517, !range !3721, !noundef !3394
  %i.uo = trunc nuw i8 %.val116 to i1, !dbg !120518
  %i.up = xor i1 %.sroa.07.0, true
  %spec.select = or i1 %i.up, %i.uo, !dbg !120519
  br label %bb.ej, !dbg !120519

bb.ej:                                            ; preds = %bb.ei, %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit244
  %.sroa.011.0 = phi i1 [ false, %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit244 ], [ %spec.select, %bb.ei ], !dbg !120520
  %i.uq = call noundef i8 @_RNvMs0_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering4exprNtB5_19ExprOrderSimplifier24simplify_projected_exprs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ul, i64 noundef %i.um, i1 noundef zeroext %.sroa.011.0), !dbg !120521 ; 3 uses
  %i.ur = trunc i8 %i.uq to i1, !dbg !120522
  %or.cond = or i1 %.sroa.07.0, %i.ur, !dbg !120523 ; 2 uses
  br i1 %or.cond, label %bb.el, label %bb.ek, !dbg !120523

bb.ek:                                            ; preds = %bb.ej, %bb.el
  %i.us = and i8 %i.uq, 2                         ; 3 uses
  %i.ut = icmp ne i8 %i.us, 0
  %or.cond351 = and i1 %.sroa.07.0, %i.ut, !dbg !120524
  br i1 %or.cond351, label %.thread428, label %bb.em, !dbg !120524

bb.el:                                            ; preds = %bb.ej
  %.sroa.056.0.copyload.val = load i8, ptr %i.tu, align 1, !dbg !120525, !range !3721, !noundef !3394
  %i.uu = trunc nuw i8 %.sroa.056.0.copyload.val to i1, !dbg !120526
  br i1 %i.uu, label %bb.ek, label %._crit_edge393, !dbg !120527

._crit_edge393:                                   ; preds = %bb.el
  %.pre394 = and i8 %i.uq, 2, !dbg !120528
  br label %bb.eo, !dbg !120527

bb.em:                                            ; preds = %bb.ek
  %.val130 = load i8, ptr %i.ua, align 8, !dbg !120529, !noundef !3394
  %i.uv = and i8 %.val130, 1, !dbg !120530
  %.not354 = icmp eq i8 %i.uv, 0, !dbg !120530
  br i1 %.not354, label %bb.en, label %bb.eo, !dbg !120531

bb.en:                                            ; preds = %bb.em
  store i8 1, ptr %i.tt, align 1, !dbg !120532
  br label %bb.eo, !dbg !120533

bb.eo:                                            ; preds = %._crit_edge393, %bb.en, %bb.em
  %.pre-phi = phi i8 [ %.pre394, %._crit_edge393 ], [ %i.us, %bb.em ], [ %i.us, %bb.en ], !dbg !120528
  %.not355 = icmp eq i8 %.pre-phi, 0, !dbg !120528
  br i1 %.not355, label %bb.ep, label %.thread428, !dbg !120534

bb.ep:                                            ; preds = %bb.eo
  %.val115 = load i8, ptr %i.tt, align 1, !dbg !120535, !range !3721, !noundef !3394
  %i.uw = trunc nuw i8 %.val115 to i1, !dbg !120536
  %.not352 = xor i1 %i.uw, true, !dbg !120537
  %or.cond353 = and i1 %or.cond, %.not352, !dbg !120537
  br i1 %or.cond353, label %.thread428, label %bb.eq, !dbg !120537

.thread428:                                       ; preds = %bb.ek, %bb.ep, %bb.eo, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !120538
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_19SimplifyIRNodeOrder23simplify_ir_node_orderss5_0EBY_.exit, !dbg !120539

bb.eq:                                            ; preds = %bb.ep
  store i8 1, ptr %i.tu, align 1, !dbg !120540
  br label %.thread428, !dbg !120541

bb.er:                                            ; preds = %bb.et, %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit213
  store i8 0, ptr %i.ie, align 16, !dbg !120542
  store i8 1, ptr %i.ic, align 1, !dbg !120543
  br label %bb.eu, !dbg !120544

bb.es:                                            ; preds = %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit213
  %.sroa.064.0.copyload.val = load i8, ptr %i.ic, align 1, !dbg !120545, !range !3721, !noundef !3394
  %i.ux = trunc nuw i8 %.sroa.064.0.copyload.val to i1, !dbg !120546
  br i1 %i.ux, label %bb.et, label %bb.eu, !dbg !120547

bb.et:                                            ; preds = %bb.es
  %i.uy = load i64, ptr %i.id, align 8, !dbg !120548, !range !3524, !noundef !3394
  %.not92 = icmp eq i64 %i.uy, 0, !dbg !120549
  br i1 %.not92, label %bb.er, label %bb.eu, !dbg !120550

bb.eu:                                            ; preds = %bb.es, %bb.et, %bb.er
  %.val114 = load i8, ptr %i.ib, align 1, !dbg !120551, !range !3721, !noundef !3394
  %i.uz = trunc nuw i8 %.val114 to i1, !dbg !120552
  br i1 %i.uz, label %bb.ex, label %bb.ev, !dbg !120553

bb.ev:                                            ; preds = %bb.eu
  %i.va = load i8, ptr %i.ie, align 16, !dbg !120554, !range !3721, !noundef !3394
  %i.vb = trunc nuw i8 %i.va to i1, !dbg !120554
  br i1 %i.vb, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_19SimplifyIRNodeOrder23simplify_ir_node_orderss5_0EBY_.exit, label %bb.ew, !dbg !120554

bb.ew:                                            ; preds = %bb.ev
  %i.vc = getelementptr inbounds nuw i8, ptr %i.bt, i64 49, !dbg !120555
  %i.vd = load i8, ptr %i.vc, align 1, !dbg !120555, !range !3859, !noundef !3394
  %switch106 = icmp samesign ult i8 %i.vd, 2, !dbg !120556
  br i1 %switch106, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_19SimplifyIRNodeOrder23simplify_ir_node_orderss5_0EBY_.exit, label %.thread431, !dbg !120556

.thread431:                                       ; preds = %bb.ew
  store i8 0, ptr %i.ie, align 16, !dbg !120557
  br label %bb.ez, !dbg !120558

bb.ex:                                            ; preds = %bb.eu
  %.phi.trans.insert387 = getelementptr inbounds nuw i8, ptr %i.bt, i64 49
  %.pre388 = load i8, ptr %.phi.trans.insert387, align 1, !dbg !120559, !range !3859
  %i.ve = icmp samesign ult i8 %.pre388, 2, !dbg !120558
  store i8 0, ptr %i.ie, align 16, !dbg !120557
  br i1 %i.ve, label %bb.ey, label %bb.ez, !dbg !120558

bb.ey:                                            ; preds = %bb.ex
  %i.vf = getelementptr inbounds nuw i8, ptr %i.bt, i64 49, !dbg !120559
  store i8 3, ptr %i.vf, align 1, !dbg !120560
  br label %bb.ez, !dbg !120561

bb.ez:                                            ; preds = %.thread431, %bb.ex, %bb.ey
  store i8 1, ptr %i.ib, align 1, !dbg !120562
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_19SimplifyIRNodeOrder23simplify_ir_node_orderss5_0EBY_.exit, !dbg !120563

bb.fa:                                            ; preds = %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit223
  unreachable, !dbg !120154

_RNvMs_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB4_10FunctionIR18is_order_producing.exit: ; preds = %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit223, %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit223, %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit223
  %.val113 = load i8, ptr %i.iy, align 1, !dbg !120564, !range !3721, !noundef !3394
  %i.vg = trunc nuw i8 %.val113 to i1, !dbg !120565
  br i1 %i.vg, label %_RNvMs_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB4_10FunctionIR15has_equal_order.exit, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_19SimplifyIRNodeOrder23simplify_ir_node_orderss5_0EBY_.exit, !dbg !120566

_RNvMs_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB4_10FunctionIR15has_equal_order.exit: ; preds = %_RINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph16unpack_edges_mutNtB4_7EdgeKeyNtB4_4EdgeKj1_KB1Z_Kj2_EBa_.exit223, %_RNvMs_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB4_10FunctionIR18is_order_producing.exit
  store i8 1, ptr %i.iz, align 1, !dbg !120567
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_19SimplifyIRNodeOrder23simplify_ir_node_orderss5_0EBY_.exit, !dbg !120568

bb.fb:                                            ; preds = %bb.ar
  %i.vh = getelementptr inbounds nuw i8, ptr %i.bm, i64 52, !dbg !120569
  %i.vi = load i32, ptr %i.vh, align 4, !dbg !120569, !range !4515, !noundef !3394
  %i.vj = icmp eq i32 %i.vi, 1, !dbg !120570
  br i1 %i.vj, label %bb.fe, label %bb.fd, !dbg !120570

bb.fc:                                            ; preds = %bb.ar
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @417, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @535) #43, !dbg !120571
  unreachable, !dbg !120571

bb.fd:                                            ; preds = %bb.fb
  %i.vk = load ptr, ptr %i.jf, align 8, !dbg !120572, !noundef !3394
  br label %bb.fe, !dbg !120573

bb.fe:                                            ; preds = %bb.fd, %bb.fb
  %.sroa.048.0 = phi ptr [ %i.vk, %bb.fd ], [ %i.jf, %bb.fb ], !dbg !120574 ; 2 uses
  %i.vl = load i32, ptr %.sroa.048.0, align 4, !dbg !120575, !range !4515, !noundef !3394 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.sroa.048.0, i64 4, !dbg !120575
  %i.vn = load i32, ptr %i.vm, align 4, !dbg !120575, !noundef !3394 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !120576
  %i.vp = getelementptr inbounds nuw i8, ptr %i.bt, i64 60, !dbg !120576 ; 2 uses
  %i.vq = load i8, ptr %i.vp, align 4, !dbg !120576, !range !3721, !noundef !3394
  %i.vr = trunc nuw i8 %i.vq to i1, !dbg !120576
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8, !dbg !120577 ; 3 uses
  br i1 %i.vr, label %bb.ff, label %._crit_edge384, !dbg !120576

._crit_edge384:                                   ; preds = %bb.fe, %bb.fi
  store i8 0, ptr %i.vp, align 4, !dbg !120578
  %i.vu = call noundef ptr @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyNtBP_4EdgeE7get_mutBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.vt, i32 noundef %i.vl, i32 noundef %i.vn), !dbg !120579 ; 2 uses
  %.not88 = icmp eq ptr %i.vu, null, !dbg !120580
  br i1 %.not88, label %bb.fk, label %bb.fj, !dbg !120581, !prof !3463

bb.ff:                                            ; preds = %bb.fe
  %i.vv = call noundef ptr @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyNtBP_4EdgeE3getBV_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.vt, i32 noundef %i.vl, i32 noundef %i.vn), !dbg !120582 ; 2 uses
  %.not86 = icmp eq ptr %i.vv, null, !dbg !120583
  br i1 %.not86, label %bb.fh, label %bb.fg, !dbg !120584, !prof !3463

bb.fg:                                            ; preds = %bb.ff
  %.val111 = load i8, ptr %i.vv, align 1, !dbg !120585, !range !3721, !noundef !3394
  %i.vw = trunc nuw i8 %.val111 to i1, !dbg !120586
  br i1 %i.vw, label %bb.fi, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_19SimplifyIRNodeOrder23simplify_ir_node_orderss5_0EBY_.exit, !dbg !120587

bb.fh:                                            ; preds = %bb.ff
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #43, !dbg !120588
  unreachable, !dbg !120588

bb.fi:                                            ; preds = %bb.fg
  %i.vx = load i64, ptr %i.vo, align 8, !dbg !120589, !range !3524, !noundef !3394
  %.not87 = icmp eq i64 %i.vx, 0, !dbg !120590
  br i1 %.not87, label %._crit_edge384, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_19SimplifyIRNodeOrder23simplify_ir_node_orderss5_0EBY_.exit, !dbg !120591

bb.fj:                                            ; preds = %._crit_edge384
  store i8 1, ptr %i.vu, align 1, !dbg !120592
  %i.vy = getelementptr inbounds nuw i8, ptr %i.bm, i64 36, !dbg !120593
  %i.vz = load i32, ptr %i.vy, align 4, !dbg !120593, !range !4515, !noundef !3394
  %i.wa = icmp eq i32 %i.vz, 1, !dbg !120594
  br i1 %i.wa, label %bb.fm, label %bb.fl, !dbg !120594

bb.fk:                                            ; preds = %._crit_edge384
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @533) #43, !dbg !120595
  unreachable, !dbg !120595

bb.fl:                                            ; preds = %bb.fj
  %i.wb = load ptr, ptr %i.bn, align 8, !dbg !120596, !noundef !3394
  br label %bb.fm, !dbg !120597

bb.fm:                                            ; preds = %bb.fj, %bb.fl
  %.sroa.049.0 = phi ptr [ %i.wb, %bb.fl ], [ %i.bn, %bb.fj ], !dbg !120598 ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.bm, i64 32, !dbg !120599
  %i.wd = load i32, ptr %i.wc, align 8, !dbg !120599, !noundef !3394 ; 2 uses
  %i.we = zext i32 %i.wd to i64, !dbg !120599
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.049.0) ], !dbg !120600
  %.idx = shl nuw nsw i64 %i.we, 3, !dbg !120601
  %i.wf = getelementptr inbounds nuw i8, ptr %.sroa.049.0, i64 %.idx, !dbg !120601
  %i.wg = icmp eq i32 %i.wd, 0, !dbg !120602
  br i1 %i.wg, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_19SimplifyIRNodeOrder23simplify_ir_node_orderss5_0EBY_.exit, label %.lr.ph, !dbg !120603

.lr.ph:                                           ; preds = %bb.fm, %bb.fn
  %.sroa.024.0367 = phi ptr [ %i.wl, %bb.fn ], [ %.sroa.049.0, %bb.fm ] ; 3 uses
  %i.wh = load i32, ptr %.sroa.024.0367, align 4, !dbg !120604, !range !4515, !noundef !3394
  %i.wi = getelementptr inbounds nuw i8, ptr %.sroa.024.0367, i64 4, !dbg !120604
  %i.wj = load i32, ptr %i.wi, align 4, !dbg !120604, !noundef !3394
  %i.wk = call noundef ptr @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyNtBP_4EdgeE7get_mutBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.vt, i32 noundef %i.wh, i32 noundef %i.wj), !dbg !120605 ; 2 uses
  %.not89 = icmp eq ptr %i.wk, null, !dbg !120606
  br i1 %.not89, label %bb.fo, label %bb.fn, !dbg !120607, !prof !3463

bb.fn:                                            ; preds = %.lr.ph
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.024.0367, i64 8, !dbg !120608 ; 2 uses
  store i8 1, ptr %i.wk, align 1, !dbg !120609
  %i.wm = icmp eq ptr %i.wl, %i.wf, !dbg !120602
  br i1 %i.wm, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_19SimplifyIRNodeOrder23simplify_ir_node_orderss5_0EBY_.exit, label %.lr.ph, !dbg !120603

bb.fo:                                            ; preds = %.lr.ph
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @534) #43, !dbg !120610
  unreachable, !dbg !120610

bb.fp:                                            ; preds = %bb.j
  %i.wn = load ptr, ptr %i.bn, align 8, !dbg !120611, !noundef !3394
  br label %bb.fq, !dbg !120612

bb.fq:                                            ; preds = %bb.j, %bb.fp
  %.sroa.047.0 = phi ptr [ %i.wn, %bb.fp ], [ %i.bn, %bb.j ], !dbg !120613 ; 3 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.bm, i64 32, !dbg !120614
  %i.wp = load i32, ptr %i.wo, align 8, !dbg !120614, !noundef !3394 ; 2 uses
  %i.wq = zext i32 %i.wp to i64, !dbg !120614
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.047.0) ], !dbg !120615
  %.idx454 = shl nuw nsw i64 %i.wq, 3, !dbg !120616
  %i.wr = getelementptr inbounds nuw i8, ptr %.sroa.047.0, i64 %.idx454, !dbg !120616
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !120617
  %i.wt = load ptr, ptr %i.ws, align 8, !dbg !120617, !nonnull !3394, !align !3446, !noundef !3394 ; 2 uses
  %i.wu = icmp eq i32 %i.wp, 0, !dbg !120618
  br i1 %i.wu, label %._crit_edge452, label %.lr.ph451, !dbg !120619

bb.fr:                                            ; preds = %_RNCNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_orderingNtB6_19SimplifyIRNodeOrder23simplify_ir_node_orderss4_0Bc_.exit.i
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wx, i64 8, !dbg !120620 ; 2 uses
  %i.ww = icmp eq ptr %i.wv, %i.wr, !dbg !120618
  br i1 %i.ww, label %._crit_edge452, label %.lr.ph451, !dbg !120619

.lr.ph451:                                        ; preds = %bb.fq, %bb.fr
  %i.wx = phi ptr [ %i.wv, %bb.fr ], [ %.sroa.047.0, %bb.fq ] ; 3 uses
  %.val3.i247 = load i32, ptr %i.wx, align 4, !dbg !120621, !range !4515, !noalias !119856, !noundef !3394
  %i.wy = getelementptr i8, ptr %i.wx, i64 4, !dbg !120621
  %.val4.i248 = load i32, ptr %i.wy, align 4, !dbg !120621, !noalias !119856, !noundef !3394
  %i.wz = call noundef ptr @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyNtBP_4EdgeE3getBV_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.wt, i32 noundef %.val3.i247, i32 noundef %.val4.i248), !dbg !120622, !noalias !119856 ; 2 uses
  %.not.i.i249 = icmp eq ptr %i.wz, null, !dbg !120623
  br i1 %.not.i.i249, label %bb.fs, label %_RNCNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_orderingNtB6_19SimplifyIRNodeOrder23simplify_ir_node_orderss4_0Bc_.exit.i, !dbg !120624, !prof !3463

bb.fs:                                            ; preds = %.lr.ph451
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @391) #43, !dbg !120625, !noalias !119856
  unreachable, !dbg !120625

_RNCNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_orderingNtB6_19SimplifyIRNodeOrder23simplify_ir_node_orderss4_0Bc_.exit.i: ; preds = %.lr.ph451
  %i.xa = load i8, ptr %i.wz, align 1, !dbg !120626, !range !3721, !noalias !119856, !noundef !3394
  %i.xb = trunc nuw i8 %i.xa to i1, !dbg !120626
  br i1 %i.xb, label %bb.fr, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_19SimplifyIRNodeOrder23simplify_ir_node_orderss5_0EBY_.exit, !dbg !120621

._crit_edge452:                                   ; preds = %bb.fr, %bb.fq
  %i.xc = getelementptr inbounds nuw i8, ptr %i.bm, i64 40, !dbg !120627 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.bm, i64 52, !dbg !120627
  %i.xe = load i32, ptr %i.xd, align 4, !dbg !120627, !range !4515, !noundef !3394
  %i.xf = icmp eq i32 %i.xe, 1, !dbg !120628
  br i1 %i.xf, label %bb.fu, label %bb.ft, !dbg !120628

bb.ft:                                            ; preds = %._crit_edge452
  %i.xg = load ptr, ptr %i.xc, align 8, !dbg !120629, !noundef !3394
  br label %bb.fu, !dbg !120630

bb.fu:                                            ; preds = %._crit_edge452, %bb.ft
  %.sroa.050.0 = phi ptr [ %i.xg, %bb.ft ], [ %i.xc, %._crit_edge452 ], !dbg !120631 ; 3 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.bm, i64 48, !dbg !120632
  %i.xi = load i32, ptr %i.xh, align 8, !dbg !120632, !noundef !3394 ; 2 uses
  %i.xj = zext i32 %i.xi to i64, !dbg !120632
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.050.0) ], !dbg !120633
  %.idx378 = shl nuw nsw i64 %i.xj, 3, !dbg !120634
  %i.xk = getelementptr inbounds nuw i8, ptr %.sroa.050.0, i64 %.idx378, !dbg !120634
  %i.xl = icmp eq i32 %i.xi, 0, !dbg !120635
  br i1 %i.xl, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_19SimplifyIRNodeOrder23simplify_ir_node_orderss5_0EBY_.exit, label %.lr.ph375, !dbg !120636

.lr.ph375:                                        ; preds = %bb.fu, %bb.fv
  %.sroa.031.0373 = phi ptr [ %i.xq, %bb.fv ], [ %.sroa.050.0, %bb.fu ] ; 3 uses
  %i.xm = load i32, ptr %.sroa.031.0373, align 4, !dbg !120637, !range !4515, !noundef !3394
  %i.xn = getelementptr inbounds nuw i8, ptr %.sroa.031.0373, i64 4, !dbg !120637
  %i.xo = load i32, ptr %i.xn, align 4, !dbg !120637, !noundef !3394
  %i.xp = call noundef ptr @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyNtBP_4EdgeE7get_mutBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.wt, i32 noundef %i.xm, i32 noundef %i.xo), !dbg !120638 ; 2 uses
  %.not105 = icmp eq ptr %i.xp, null, !dbg !120639
  br i1 %.not105, label %bb.fw, label %bb.fv, !dbg !120640, !prof !3463

bb.fv:                                            ; preds = %.lr.ph375
  %i.xq = getelementptr inbounds nuw i8, ptr %.sroa.031.0373, i64 8, !dbg !120641 ; 2 uses
  store i8 1, ptr %i.xp, align 1, !dbg !120642
  %i.xr = icmp eq ptr %i.xq, %i.xk, !dbg !120635
  br i1 %i.xr, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_19SimplifyIRNodeOrder23simplify_ir_node_orderss5_0EBY_.exit, label %.lr.ph375, !dbg !120636

bb.fw:                                            ; preds = %.lr.ph375
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @536) #43, !dbg !120643
  unreachable, !dbg !120643

bb.fx:                                            ; preds = %bb.at
  %i.xs = inttoptr i64 %i.jw to ptr, !dbg !120159 ; 2 uses
  %i.xt = load i64, ptr %i.bt, align 16, !dbg !120644, !range !3911, !noundef !3394 ; 2 uses
  %i.xu = icmp ult i64 %i.xt, -9223372036854775807, !dbg !120644
  br i1 %i.xu, label %bb.fz, label %bb.ga, !dbg !120645

bb.fy:                                            ; preds = %bb.as
end_hunk_1
begin_hunk_2_@llvm.umin.i16
!120357 = !DILocation(line: 8, column: 1, scope: !119467, inlinedAt: !119123)
!120358 = !DILocation(line: 271, column: 24, scope: !119120)
!120359 = !DILocation(line: 272, column: 25, scope: !119120)
!120360 = !DILocation(line: 276, column: 21, scope: !119120)
!120361 = !DILocation(line: 269, column: 17, scope: !119120)
!120362 = !DILocation(line: 274, column: 38, scope: !119120)
!120363 = !DILocation(line: 29, column: 18, scope: !119386, inlinedAt: !119124)
!120364 = !DILocation(line: 274, column: 29, scope: !119120)
!120365 = !DILocation(line: 280, column: 25, scope: !119120)
!120366 = !DILocation(line: 283, column: 21, scope: !119120)
!120367 = !DILocation(line: 284, column: 21, scope: !119120)
!120368 = !DILocation(line: 279, column: 17, scope: !119120)
!120369 = !DILocation(line: 281, column: 33, scope: !119120)
!120370 = !DILocation(line: 29, column: 18, scope: !119386, inlinedAt: !119125)
!120371 = !DILocation(line: 281, column: 25, scope: !119120)
!120372 = !DILocation(line: 286, column: 13, scope: !118770)
!120373 = !DILocation(line: 286, column: 13, scope: !118595)
!120374 = !DILocation(line: 1015, column: 18, scope: !118835, inlinedAt: !118836)
!120375 = !DILocation(line: 181, column: 90, scope: !118834, inlinedAt: !118792)
!120376 = !DILocation(line: 184, column: 2, scope: !118791, inlinedAt: !118792)
!120377 = !DILocation(line: 1015, column: 18, scope: !119126, inlinedAt: !119660)
!120378 = !DILocation(line: 328, column: 21, scope: !119127)
!120379 = !DILocation(line: 132, column: 17, scope: !119127)
!120380 = !DILocation(line: 280, column: 19, scope: !118661, inlinedAt: !119662)
!120381 = !DILocation(line: 133, column: 42, scope: !119127)
!120382 = !DILocation(line: 105, column: 9, scope: !118662, inlinedAt: !119128)
!120383 = !DILocation(line: 330, column: 40, scope: !119131)
!120384 = !DILocation(line: 3005, column: 13, scope: !119132, inlinedAt: !119666)
!120385 = !DILocation(line: 614, column: 9, scope: !118769, inlinedAt: !119677)
!120386 = !DILocation(line: 1841, column: 86, scope: !119011, inlinedAt: !119673)
!120387 = !DILocation(line: 961, column: 18, scope: !118776, inlinedAt: !119682)
!120388 = !DILocation(line: 27, column: 14, scope: !119136, inlinedAt: !119685)
!120389 = !DILocation(line: 614, column: 9, scope: !119019, inlinedAt: !119696)
!120390 = !DILocation(line: 1841, column: 86, scope: !119021, inlinedAt: !119692)
!120391 = !DILocation(line: 332, column: 48, scope: !119133)
!120392 = !DILocation(line: 3005, column: 13, scope: !119138, inlinedAt: !119697)
!120393 = !DILocation(line: 614, column: 9, scope: !118769, inlinedAt: !119708)
!120394 = !DILocation(line: 1841, column: 86, scope: !119011, inlinedAt: !119704)
!120395 = !DILocation(line: 961, column: 18, scope: !118776, inlinedAt: !119713)
!120396 = !DILocation(line: 27, column: 14, scope: !119142, inlinedAt: !119716)
!120397 = !DILocation(line: 614, column: 9, scope: !119019, inlinedAt: !119727)
!120398 = !DILocation(line: 1841, column: 86, scope: !119021, inlinedAt: !119723)
!120399 = !DILocation(line: 336, column: 49, scope: !119139)
!120400 = !DILocation(line: 8, column: 1, scope: !119728, inlinedAt: !119150)
!120401 = !DILocation(line: 8, column: 1, scope: !119467, inlinedAt: !119152)
!120402 = !DILocation(line: 339, column: 26, scope: !119147)
!120403 = !DILocation(line: 1016, column: 21, scope: !119126, inlinedAt: !119660)
!120404 = !DILocation(line: 340, column: 30, scope: !119147)
!120405 = !DILocation(line: 8, column: 1, scope: !119467, inlinedAt: !119154)
!120406 = !DILocation(line: 340, column: 26, scope: !119147)
!120407 = !DILocation(line: 339, column: 17, scope: !119147)
!120408 = !DILocation(line: 444, column: 20, scope: !119155, inlinedAt: !119736)
!120409 = !DILocation(line: 343, column: 44, scope: !119156)
!120410 = !DILocation(line: 343, column: 24, scope: !119156)
!120411 = !DILocation(line: 340, column: 17, scope: !119147)
!120412 = !DILocation(line: 344, column: 36, scope: !119156)
!120413 = !DILocation(line: 29, column: 18, scope: !119386, inlinedAt: !119159)
!120414 = !DILocation(line: 344, column: 24, scope: !119156)
!120415 = !DILocation(line: 357, column: 29, scope: !119147)
!120416 = !DILocation(line: 29, column: 18, scope: !119386, inlinedAt: !119160)
!120417 = !DILocation(line: 357, column: 20, scope: !119147)
!120418 = !DILocation(line: 345, column: 38, scope: !119156)
!120419 = !DILocation(line: 29, column: 18, scope: !119386, inlinedAt: !119161)
!120420 = !DILocation(line: 345, column: 29, scope: !119156)
!120421 = !DILocation(line: 345, column: 68, scope: !119156)
!120422 = !DILocation(line: 29, column: 18, scope: !119386, inlinedAt: !119162)
!120423 = !DILocation(line: 345, column: 56, scope: !119156)
!120424 = !DILocation(line: 394, column: 13, scope: !119127)
!120425 = !DILocation(line: 347, column: 25, scope: !119156)
!120426 = !DILocation(line: 348, column: 25, scope: !119156)
!120427 = !DILocation(line: 349, column: 25, scope: !119156)
!120428 = !DILocation(line: 344, column: 21, scope: !119156)
!120429 = !DILocation(line: 119, column: 23, scope: !119163, inlinedAt: !119739)
!120430 = !DILocation(line: 357, column: 47, scope: !119147)
!120431 = !DILocation(line: 358, column: 21, scope: !119147)
!120432 = !DILocation(line: 359, column: 21, scope: !119147)
!120433 = !DILocation(line: 360, column: 21, scope: !119147)
!120434 = !DILocation(line: 361, column: 21, scope: !119147)
!120435 = !DILocation(line: 357, column: 17, scope: !119147)
!120436 = !DILocation(line: 364, column: 32, scope: !119147)
!120437 = !DILocation(line: 29, column: 18, scope: !119386, inlinedAt: !119164)
!120438 = !DILocation(line: 364, column: 20, scope: !119147)
!120439 = !DILocation(line: 444, column: 20, scope: !119155, inlinedAt: !119744)
!120440 = !DILocation(line: 119, column: 23, scope: !119163, inlinedAt: !119745)
!120441 = !DILocation(line: 365, column: 21, scope: !119147)
!120442 = !DILocation(line: 444, column: 20, scope: !119155, inlinedAt: !119750)
!120443 = !DILocation(line: 367, column: 21, scope: !119147)
!120444 = !DILocation(line: 0, scope: !119147)
!120445 = !DILocation(line: 376, column: 32, scope: !119147)
!120446 = !DILocation(line: 29, column: 18, scope: !119386, inlinedAt: !119165)
!120447 = !DILocation(line: 376, column: 20, scope: !119147)
!120448 = !DILocation(line: 370, column: 82, scope: !119147)
!120449 = !DILocation(line: 444, column: 20, scope: !119155, inlinedAt: !119755)
!120450 = !DILocation(line: 119, column: 23, scope: !119163, inlinedAt: !119756)
!120451 = !DILocation(line: 378, column: 30, scope: !119147)
!120452 = !DILocation(line: 378, column: 24, scope: !119147)
!120453 = !DILocation(line: 384, column: 21, scope: !119147)
!120454 = !DILocation(line: 444, column: 20, scope: !119155, inlinedAt: !119761)
!120455 = !DILocation(line: 386, column: 21, scope: !119147)
!120456 = !DILocation(line: 394, column: 13, scope: !118595)
!120457 = !DILocation(line: 389, column: 81, scope: !119147)
!120458 = !DILocation(line: 1015, column: 18, scope: !118835, inlinedAt: !118865)
!120459 = !DILocation(line: 181, column: 90, scope: !118834, inlinedAt: !118839)
!120460 = !DILocation(line: 184, column: 2, scope: !118791, inlinedAt: !118839)
!120461 = !DILocation(line: 1015, column: 18, scope: !119126, inlinedAt: !119764)
!120462 = !DILocation(line: 399, column: 29, scope: !119166)
!120463 = !DILocation(line: 29, column: 18, scope: !119386, inlinedAt: !119167)
!120464 = !DILocation(line: 399, column: 20, scope: !119166)
!120465 = !DILocation(line: 1016, column: 21, scope: !119126, inlinedAt: !119764)
!120466 = !DILocation(line: 400, column: 21, scope: !119166)
!120467 = !DILocation(line: 403, column: 20, scope: !119166)
!120468 = !DILocation(line: 403, column: 30, scope: !119166)
!120469 = !DILocation(line: 29, column: 18, scope: !119386, inlinedAt: !119168)
!120470 = !DILocation(line: 404, column: 21, scope: !119166)
!120471 = !DILocation(line: 403, column: 17, scope: !119166)
!120472 = !DILocation(line: 444, column: 20, scope: !119169, inlinedAt: !119767)
!120473 = !DILocation(line: 1331, column: 9, scope: !119173, inlinedAt: !119773)
!120474 = !DILocation(line: 3024, column: 19, scope: !119178, inlinedAt: !119774)
!120475 = !DILocation(line: 3029, column: 37, scope: !119179, inlinedAt: !119774)
!120476 = !DILocation(line: 3029, column: 18, scope: !119179, inlinedAt: !119774)
!120477 = !DILocation(line: 144, column: 21, scope: !118595)
!120478 = !DILocation(line: 124, column: 21, scope: !119180)
!120479 = !DILocation(line: 122, column: 17, scope: !119180)
!120480 = !DILocation(line: 281, column: 62, scope: !118614, inlinedAt: !119185)
!120481 = !DILocation(line: 851, column: 12, scope: !118620, inlinedAt: !119189)
!120482 = !DILocation(line: 281, column: 62, scope: !118614, inlinedAt: !119191)
!120483 = !DILocation(line: 851, column: 12, scope: !118620, inlinedAt: !119195)
!120484 = !DILocation(line: 60, column: 9, scope: !118635, inlinedAt: !119197)
!120485 = !DILocation(line: 41, column: 12, scope: !118636, inlinedAt: !119196)
!120486 = !DILocation(line: 60, column: 9, scope: !118635, inlinedAt: !119199)
!120487 = !DILocation(line: 41, column: 12, scope: !118636, inlinedAt: !119198)
!120488 = !DILocation(line: 1718, column: 17, scope: !118643, inlinedAt: !119202)
!120489 = !DILocation(line: 1718, column: 17, scope: !118643, inlinedAt: !119203)
!120490 = !DILocation(line: 1721, column: 9, scope: !118649, inlinedAt: !119209)
!120491 = !DILocation(line: 181, column: 46, scope: !118656, inlinedAt: !119183)
!120492 = !DILocation(line: 181, column: 56, scope: !118656, inlinedAt: !119183)
!120493 = !DILocation(line: 1014, column: 15, scope: !118657, inlinedAt: !119210)
!120494 = !DILocation(line: 1014, column: 9, scope: !118657, inlinedAt: !119210)
!120495 = !DILocation(line: 1016, column: 21, scope: !118657, inlinedAt: !119210)
!120496 = !DILocation(line: 184, column: 2, scope: !118616, inlinedAt: !119183)
!120497 = !DILocation(line: 1016, column: 21, scope: !118659, inlinedAt: !119780)
!120498 = !DILocation(line: 1015, column: 18, scope: !118657, inlinedAt: !119210)
!120499 = !DILocation(line: 181, column: 90, scope: !118656, inlinedAt: !119183)
!120500 = !DILocation(line: 1015, column: 18, scope: !118659, inlinedAt: !119780)
!120501 = !DILocation(line: 150, column: 21, scope: !119211)
!120502 = !DILocation(line: 132, column: 17, scope: !119211)
!120503 = !DILocation(line: 280, column: 19, scope: !118661, inlinedAt: !119781)
!120504 = !DILocation(line: 133, column: 42, scope: !119211)
!120505 = !DILocation(line: 105, column: 9, scope: !118662, inlinedAt: !119212)
!120506 = !DILocation(line: 151, column: 40, scope: !119215)
!120507 = !DILocation(line: 3005, column: 13, scope: !119216, inlinedAt: !119784)
!120508 = !DILocation(line: 614, column: 9, scope: !118769, inlinedAt: !119792)
!120509 = !DILocation(line: 1841, column: 86, scope: !119011, inlinedAt: !119788)
!120510 = !DILocation(line: 961, column: 18, scope: !118776, inlinedAt: !119797)
!120511 = !DILocation(line: 27, column: 14, scope: !119220, inlinedAt: !119799)
!120512 = !DILocation(line: 614, column: 9, scope: !119019, inlinedAt: !119810)
!120513 = !DILocation(line: 1841, column: 86, scope: !119021, inlinedAt: !119806)
!120514 = !DILocation(line: 157, column: 30, scope: !119217)
!120515 = !DILocation(line: 29, column: 18, scope: !119386, inlinedAt: !119222)
!120516 = !DILocation(line: 157, column: 21, scope: !119217)
!120517 = !DILocation(line: 157, column: 57, scope: !119217)
!120518 = !DILocation(line: 29, column: 18, scope: !119386, inlinedAt: !119223)
!120519 = !DILocation(line: 157, column: 49, scope: !119217)
!120520 = !DILocation(line: 157, scope: !119217)
!120521 = !DILocation(line: 155, column: 51, scope: !119217)
!120522 = !DILocation(line: 8, column: 1, scope: !119467, inlinedAt: !119226)
!120523 = !DILocation(line: 160, column: 45, scope: !119224)
!120524 = !DILocation(line: 163, column: 25, scope: !119224)
!120525 = !DILocation(line: 162, column: 34, scope: !119224)
!120526 = !DILocation(line: 29, column: 18, scope: !119386, inlinedAt: !119227)
!120527 = !DILocation(line: 162, column: 25, scope: !119224)
!120528 = !DILocation(line: 8, column: 1, scope: !119467, inlinedAt: !119230)
!120529 = !DILocation(line: 164, column: 28, scope: !119224)
!120530 = !DILocation(line: 8, column: 1, scope: !119467, inlinedAt: !119232)
!120531 = !DILocation(line: 166, column: 21, scope: !119228)
!120532 = !DILocation(line: 167, column: 21, scope: !119228)
!120533 = !DILocation(line: 166, column: 17, scope: !119228)
!120534 = !DILocation(line: 170, column: 21, scope: !119228)
!120535 = !DILocation(line: 171, column: 33, scope: !119228)
!120536 = !DILocation(line: 29, column: 18, scope: !119386, inlinedAt: !119233)
!120537 = !DILocation(line: 171, column: 25, scope: !119228)
!120538 = !DILocation(line: 176, column: 13, scope: !119211)
!120539 = !DILocation(line: 176, column: 13, scope: !118595)
!120540 = !DILocation(line: 174, column: 21, scope: !119228)
!120541 = !DILocation(line: 170, column: 17, scope: !119228)
!120542 = !DILocation(line: 294, column: 21, scope: !118897)
!120543 = !DILocation(line: 295, column: 21, scope: !118897)
!120544 = !DILocation(line: 293, column: 17, scope: !118897)
!120545 = !DILocation(line: 293, column: 57, scope: !118897)
!120546 = !DILocation(line: 29, column: 18, scope: !119386, inlinedAt: !119234)
!120547 = !DILocation(line: 293, column: 48, scope: !118897)
!120548 = !DILocation(line: 636, column: 18, scope: !119811, inlinedAt: !119814)
!120549 = !DILocation(line: 429, column: 9, scope: !119236, inlinedAt: !119814)
!120550 = !DILocation(line: 293, column: 75, scope: !118897)
!120551 = !DILocation(line: 298, column: 28, scope: !118897)
!120552 = !DILocation(line: 29, column: 18, scope: !119386, inlinedAt: !119238)
!120553 = !DILocation(line: 298, column: 20, scope: !118897)
!120554 = !DILocation(line: 299, column: 26, scope: !118897)
!120555 = !DILocation(line: 300, column: 34, scope: !118897)
!120556 = !DILocation(line: 300, column: 28, scope: !118897)
!120557 = !DILocation(line: 305, column: 21, scope: !118897)
!120558 = !DILocation(line: 307, column: 21, scope: !118897)
!120559 = !DILocation(line: 307, column: 27, scope: !118897)
!120560 = !DILocation(line: 308, column: 47, scope: !118897)
!120561 = !DILocation(line: 308, column: 76, scope: !118897)
!120562 = !DILocation(line: 312, column: 21, scope: !118897)
!120563 = !DILocation(line: 298, column: 17, scope: !118897)
!120564 = !DILocation(line: 467, column: 58, scope: !118929)
!120565 = !DILocation(line: 29, column: 18, scope: !119386, inlinedAt: !119239)
!120566 = !DILocation(line: 467, column: 21, scope: !118929)
!120567 = !DILocation(line: 470, column: 21, scope: !118929)
!120568 = !DILocation(line: 467, column: 17, scope: !118929)
!120569 = !DILocation(line: 60, column: 9, scope: !118606, inlinedAt: !119822)
!120570 = !DILocation(line: 41, column: 12, scope: !118610, inlinedAt: !119821)
!120571 = !DILocation(line: 409, column: 17, scope: !119823)
!120572 = !DILocation(line: 44, column: 22, scope: !118610, inlinedAt: !119821)
!120573 = !DILocation(line: 41, column: 9, scope: !118610, inlinedAt: !119821)
!120574 = !DILocation(line: 0, scope: !118610, inlinedAt: !119821)
!120575 = !DILocation(line: 411, column: 36, scope: !118932)
!120576 = !DILocation(line: 413, column: 21, scope: !119241)
!120577 = !DILocation(line: 0, scope: !119241)
!120578 = !DILocation(line: 416, column: 21, scope: !119241)
!120579 = !DILocation(line: 116, column: 36, scope: !119241)
!120580 = !DILocation(line: 1014, column: 15, scope: !119060, inlinedAt: !119824)
!120581 = !DILocation(line: 1014, column: 9, scope: !119060, inlinedAt: !119824)
!120582 = !DILocation(line: 110, column: 36, scope: !119241)
!120583 = !DILocation(line: 1014, column: 15, scope: !119032, inlinedAt: !119825)
!120584 = !DILocation(line: 1014, column: 9, scope: !119032, inlinedAt: !119825)
!120585 = !DILocation(line: 414, column: 49, scope: !119241)
!120586 = !DILocation(line: 29, column: 18, scope: !119386, inlinedAt: !119242)
!120587 = !DILocation(line: 414, column: 25, scope: !119241)
!120588 = !DILocation(line: 1016, column: 21, scope: !119032, inlinedAt: !119825)
!120589 = !DILocation(line: 636, column: 18, scope: !119826, inlinedAt: !119829)
!120590 = !DILocation(line: 429, column: 9, scope: !119243, inlinedAt: !119829)
!120591 = !DILocation(line: 414, column: 67, scope: !119241)
!120592 = !DILocation(line: 417, column: 21, scope: !119241)
!120593 = !DILocation(line: 60, column: 9, scope: !118606, inlinedAt: !119838)
!120594 = !DILocation(line: 41, column: 12, scope: !118610, inlinedAt: !119837)
!120595 = !DILocation(line: 1016, column: 21, scope: !119060, inlinedAt: !119824)
!120596 = !DILocation(line: 44, column: 22, scope: !118610, inlinedAt: !119837)
!120597 = !DILocation(line: 41, column: 9, scope: !118610, inlinedAt: !119837)
!120598 = !DILocation(line: 0, scope: !118610, inlinedAt: !119837)
!120599 = !DILocation(line: 281, column: 62, scope: !118609, inlinedAt: !119836)
!120600 = !DILocation(line: 407, column: 18, scope: !119034, inlinedAt: !119843)
!120601 = !DILocation(line: 961, column: 18, scope: !119039, inlinedAt: !119844)
!120602 = !DILocation(line: 1717, column: 9, scope: !119063, inlinedAt: !119848)
!120603 = !DILocation(line: 180, column: 28, scope: !119248, inlinedAt: !119847)
!120604 = !DILocation(line: 419, column: 40, scope: !119249)
!120605 = !DILocation(line: 116, column: 36, scope: !119249)
!120606 = !DILocation(line: 1014, column: 15, scope: !119060, inlinedAt: !119850)
!120607 = !DILocation(line: 1014, column: 9, scope: !119060, inlinedAt: !119850)
!120608 = !DILocation(line: 659, column: 28, scope: !119069, inlinedAt: !119851)
!120609 = !DILocation(line: 419, column: 25, scope: !119249)
!120610 = !DILocation(line: 1016, column: 21, scope: !119060, inlinedAt: !119850)
!120611 = !DILocation(line: 44, column: 22, scope: !118610, inlinedAt: !119362)
!120612 = !DILocation(line: 41, column: 9, scope: !118610, inlinedAt: !119362)
!120613 = !DILocation(line: 0, scope: !118610, inlinedAt: !119362)
!120614 = !DILocation(line: 281, column: 62, scope: !118609, inlinedAt: !119361)
!120615 = !DILocation(line: 407, column: 18, scope: !119034, inlinedAt: !119854)
!120616 = !DILocation(line: 961, column: 18, scope: !119039, inlinedAt: !119855)
!120617 = !DILocation(line: 475, column: 40, scope: !118595)
!120618 = !DILocation(line: 1717, column: 9, scope: !119252, inlinedAt: !119260)
!120619 = !DILocation(line: 180, column: 28, scope: !119255, inlinedAt: !119259)
!120620 = !DILocation(line: 659, column: 28, scope: !119261, inlinedAt: !119262)
!120621 = !DILocation(line: 315, column: 25, scope: !119257, inlinedAt: !119258)
!120622 = !DILocation(line: 110, column: 36, scope: !119265, inlinedAt: !119266)
!120623 = !DILocation(line: 1014, column: 15, scope: !119267, inlinedAt: !119268)
!120624 = !DILocation(line: 1014, column: 9, scope: !119267, inlinedAt: !119268)
!120625 = !DILocation(line: 1016, column: 21, scope: !119267, inlinedAt: !119268)
!120626 = !DILocation(line: 29, column: 18, scope: !119857, inlinedAt: !119271)
!120627 = !DILocation(line: 60, column: 9, scope: !118606, inlinedAt: !119866)
!120628 = !DILocation(line: 41, column: 12, scope: !118610, inlinedAt: !119865)
!120629 = !DILocation(line: 44, column: 22, scope: !118610, inlinedAt: !119865)
!120630 = !DILocation(line: 41, column: 9, scope: !118610, inlinedAt: !119865)
!120631 = !DILocation(line: 0, scope: !118610, inlinedAt: !119865)
!120632 = !DILocation(line: 281, column: 62, scope: !118609, inlinedAt: !119864)
!120633 = !DILocation(line: 407, column: 18, scope: !119034, inlinedAt: !119871)
!120634 = !DILocation(line: 961, column: 18, scope: !119039, inlinedAt: !119872)
!120635 = !DILocation(line: 1717, column: 9, scope: !119063, inlinedAt: !119876)
!120636 = !DILocation(line: 180, column: 28, scope: !119276, inlinedAt: !119875)
!120637 = !DILocation(line: 477, column: 40, scope: !119277)
!120638 = !DILocation(line: 116, column: 36, scope: !119277)
!120639 = !DILocation(line: 1014, column: 15, scope: !119060, inlinedAt: !119878)
!120640 = !DILocation(line: 1014, column: 9, scope: !119060, inlinedAt: !119878)
!120641 = !DILocation(line: 659, column: 28, scope: !119069, inlinedAt: !119879)
!120642 = !DILocation(line: 477, column: 25, scope: !119277)
!120643 = !DILocation(line: 1016, column: 21, scope: !119060, inlinedAt: !119878)
!120644 = !DILocation(line: 506, column: 59, scope: !119279)
!120645 = !DILocation(line: 506, column: 24, scope: !119279)
!120646 = !DILocation(line: 1016, column: 21, scope: !119280, inlinedAt: !119881)
!120647 = !DILocation(line: 507, column: 25, scope: !119279)
!120648 = !DILocation(line: 132, column: 17, scope: !119279)
!120649 = !DILocation(line: 280, column: 19, scope: !118661, inlinedAt: !119883)
!120650 = !DILocation(line: 133, column: 42, scope: !119279)
!120651 = !DILocation(line: 105, column: 9, scope: !118662, inlinedAt: !119281)
!120652 = !DILocation(line: 508, column: 44, scope: !119284)
!120653 = !DILocation(line: 3005, column: 13, scope: !119285, inlinedAt: !119887)
!120654 = !DILocation(line: 386, column: 15, scope: !119288, inlinedAt: !119290)
!120655 = !DILocation(line: 386, column: 9, scope: !119288, inlinedAt: !119290)
!120656 = !DILocation(line: 27, column: 14, scope: !119291, inlinedAt: !119894)
!120657 = !DILocation(line: 614, column: 9, scope: !119019, inlinedAt: !119905)
!120658 = !DILocation(line: 1841, column: 86, scope: !119021, inlinedAt: !119901)
!120659 = !DILocation(line: 511, column: 42, scope: !119289)
!120660 = !DILocation(line: 8, column: 1, scope: !119467, inlinedAt: !119295)
!120661 = !DILocation(line: 514, column: 30, scope: !119293)
!120662 = !DILocation(line: 342, column: 15, scope: !119296, inlinedAt: !119297)
!120663 = !DILocation(line: 342, column: 9, scope: !119296, inlinedAt: !119297)
!120664 = !DILocation(line: 344, column: 40, scope: !119298, inlinedAt: !119297)
!120665 = !DILocation(line: 344, column: 55, scope: !119296, inlinedAt: !119297)
!120666 = !DILocation(line: 0, scope: !119296, inlinedAt: !119297)
!120667 = !DILocation(line: 346, column: 17, scope: !119296, inlinedAt: !119297)
!120668 = !DILocation(line: 350, column: 19, scope: !119299, inlinedAt: !119297)
!120669 = !DILocation(line: 350, column: 50, scope: !119296, inlinedAt: !119297)
!120670 = !DILocation(line: 352, column: 6, scope: !119296, inlinedAt: !119297)
!120671 = !DILocation(line: 518, column: 21, scope: !119278)
!120672 = !DILocation(line: 515, column: 34, scope: !119293)
!120673 = !DILocation(line: 8, column: 1, scope: !119467, inlinedAt: !119303)
!120674 = !DILocation(line: 515, column: 30, scope: !119293)
!120675 = !DILocation(line: 514, column: 21, scope: !119293)
!120676 = !DILocation(line: 516, column: 17, scope: !119279)
!120677 = !DILocation(line: 506, column: 17, scope: !119278)
!120678 = !DILocation(line: 515, column: 21, scope: !119293)
!120679 = !DILocation(line: 518, column: 57, scope: !119278)
!120680 = !DILocation(line: 29, column: 18, scope: !119386, inlinedAt: !119304)
!120681 = !DILocation(line: 518, column: 49, scope: !119278)
!120682 = !DILocation(line: 519, column: 21, scope: !119278)
!120683 = !DILocation(line: 355, column: 15, scope: !119307, inlinedAt: !119308)
!120684 = !DILocation(line: 355, column: 9, scope: !119307, inlinedAt: !119308)
!120685 = !DILocation(line: 357, column: 40, scope: !119309, inlinedAt: !119308)
!120686 = !DILocation(line: 357, column: 72, scope: !119307, inlinedAt: !119308)
!120687 = !DILocation(line: 0, scope: !119307, inlinedAt: !119308)
!120688 = !DILocation(line: 359, column: 17, scope: !119307, inlinedAt: !119308)
!120689 = !DILocation(line: 363, column: 19, scope: !119310, inlinedAt: !119308)
!120690 = !DILocation(line: 363, column: 67, scope: !119307, inlinedAt: !119308)
!120691 = !DILocation(line: 1015, column: 18, scope: !118835, inlinedAt: !118992)
!120692 = !DILocation(line: 181, column: 90, scope: !118834, inlinedAt: !118966)
!120693 = !DILocation(line: 184, column: 2, scope: !118791, inlinedAt: !118966)
!120694 = !DILocation(line: 1015, column: 18, scope: !119126, inlinedAt: !119911)
!120695 = !DILocation(line: 435, column: 29, scope: !119311)
!120696 = !DILocation(line: 29, column: 18, scope: !119386, inlinedAt: !119312)
!120697 = !DILocation(line: 435, column: 20, scope: !119311)
!120698 = !DILocation(line: 1016, column: 21, scope: !119126, inlinedAt: !119911)
!120699 = !DILocation(line: 436, column: 37, scope: !119311)
!120700 = !DILocation(line: 29, column: 18, scope: !119386, inlinedAt: !119313)
!120701 = !DILocation(line: 436, column: 25, scope: !119311)
!120702 = !DILocation(line: 436, column: 67, scope: !119311)
!120703 = !DILocation(line: 29, column: 18, scope: !119386, inlinedAt: !119314)
!120704 = !DILocation(line: 436, column: 55, scope: !119311)
!120705 = !DILocation(line: 438, column: 21, scope: !119311)
!120706 = !DILocation(line: 439, column: 21, scope: !119311)
!120707 = !DILocation(line: 440, column: 21, scope: !119311)
!120708 = !DILocation(line: 442, column: 38, scope: !119311)
!120709 = !DILocation(line: 445, column: 21, scope: !119316)
!120710 = !DILocation(line: 447, column: 25, scope: !119316)
!120711 = !DILocation(line: 99, column: 9, scope: !511, inlinedAt: !119322)
!120712 = !DILocation(line: 101, column: 9, scope: !511, inlinedAt: !119322)
!120713 = !DILocation(line: 248, column: 11, scope: !516, inlinedAt: !119318)
!120714 = !DILocation(line: 248, column: 5, scope: !516, inlinedAt: !119318)
!120715 = !DILocation(line: 250, column: 19, scope: !516, inlinedAt: !119318)
!120716 = !DILocation(line: 445, column: 35, scope: !119316)
!120717 = !DILocation(line: 229, column: 12, scope: !3003, inlinedAt: !119326)
!120718 = !DILocation(line: 1016, column: 21, scope: !3006, inlinedAt: !119330)
!120719 = !DILocation(line: 135, column: 5, scope: !3002, inlinedAt: !119323)
!120720 = !DILocation(line: 132, column: 5, scope: !3002, inlinedAt: !119323)
!120721 = !DILocation(line: 231, column: 27, scope: !3003, inlinedAt: !119326)
!120722 = !DILocation(line: 929, column: 22, scope: !3007, inlinedAt: !119331)
!120723 = !DILocation(line: 930, column: 49, scope: !3009, inlinedAt: !119331)
!120724 = !DILocation(line: 454, column: 21, scope: !119316)
!120725 = !DILocation(line: 454, column: 22, scope: !119316)
!120726 = !DILocation(line: 435, column: 17, scope: !119311)
!120727 = distinct !DISubprogram(name: "pushdown", linkageName: "_RNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer19projection_pushdownNtB4_25ProjectionPushdownVisitor8pushdown", scope: !124926, file: !3982, line: 235, type: !3395, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3394)
!120728 = distinct !DILexicalBlock(scope: !120727, file: !3982, line: 243, column: 9)
!120729 = distinct !DISubprogram(name: "as_slice<polars_plan::plans::ir::IR, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE8as_sliceBK_", scope: !3515, file: !3396, line: 1824, type: !3395, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3394)
!120730 = distinct !DILexicalBlock(scope: !120728, file: !3982, line: 273, column: 9)
!120731 = distinct !DILexicalBlock(scope: !120730, file: !3561, line: 429, column: 9)
!120732 = distinct !DISubprogram(name: "get<polars_plan::plans::ir::IR>", linkageName: "_RNvMs0_NtCs2mZqlW55729_12polars_utils5arenaINtB5_5ArenaNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE3getBX_", scope: !3976, file: !3665, line: 106, type: !3395, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3394)
!120733 = distinct !DISubprogram(name: "deref<polars_plan::plans::ir::IR, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefBL_", scope: !3627, file: !3396, line: 3755, type: !3395, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3394)
!120734 = distinct !DISubprogram(name: "get<polars_plan::plans::ir::IR>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE3getB14_", scope: !3491, file: !3489, line: 218, type: !3395, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3394)
!120735 = distinct !DISubprogram(name: "get<polars_plan::plans::ir::IR, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IR3getjEBB_", scope: !3493, file: !3492, line: 572, type: !3395, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3394)
!120736 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, polars_plan::plans::ir::IR>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREB17_", scope: !3566, file: !3508, line: 613, type: !3395, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3394)
!120737 = distinct !DISubprogram(name: "as_ptr<polars_plan::plans::ir::IR, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE6as_ptrBK_", scope: !3515, file: !3396, line: 1939, type: !3395, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3394)
!120738 = distinct !DISubprogram(name: "ptr<polars_plan::plans::ir::IR, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE3ptrBS_", scope: !3510, file: !3508, line: 295, type: !3395, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3394)
!120739 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, polars_plan::plans::ir::IR>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREB12_", scope: !3566, file: !3508, line: 608, type: !3395, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3394)
!120740 = distinct !DILexicalBlock(scope: !120730, file: !3561, line: 45, column: 13)
!120741 = distinct !DILexicalBlock(scope: !120730, file: !3982, line: 277, column: 9)
!120742 = distinct !DISubprogram(name: "as_mut_slice<polars_plan::plans::ir::IR, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE12as_mut_sliceBK_", scope: !3515, file: !3396, line: 1860, type: !3395, scopeLine: 1860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3394)
!120743 = distinct !DISubprogram(name: "get_mut<polars_plan::plans::ir::IR>", linkageName: "_RNvMs0_NtCs2mZqlW55729_12polars_utils5arenaINtB5_5ArenaNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE7get_mutBX_", scope: !3976, file: !3665, line: 118, type: !3395, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3394)
!120744 = distinct !DISubprogram(name: "deref_mut<polars_plan::plans::ir::IR, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRENtNtNtCscgRAwXFJnXP_4core3ops5deref8DerefMut9deref_mutBL_", scope: !3675, file: !3396, line: 3763, type: !3395, scopeLine: 3763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3394)
!120745 = distinct !DISubprogram(name: "get_mut<polars_plan::plans::ir::IR>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE7get_mutB14_", scope: !3491, file: !3489, line: 228, type: !3395, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3394)
!120746 = distinct !DISubprogram(name: "get_mut<polars_plan::plans::ir::IR, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IR7get_mutjEBB_", scope: !3493, file: !3492, line: 599, type: !3395, scopeLine: 599, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3394)
!120747 = distinct !DISubprogram(name: "as_mut_ptr<polars_plan::plans::ir::IR, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRE10as_mut_ptrBK_", scope: !3515, file: !3396, line: 2023, type: !3395, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3394)
!120748 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<polars_schema::schema::Schema<polars_core::datatypes::dtype::DataType, ()>>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEE6as_refCsfcROwRM8ZtH_11polars_plan", scope: !3441, file: !3428, line: 440, type: !3395, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3394)
!120749 = distinct !DILexicalBlock(scope: !120741, file: !3982, line: 1813, column: 13)
!120750 = distinct !DISubprogram(name: "deref<polars_schema::schema::Schema<polars_core::datatypes::dtype::DataType, ()>, alloc::alloc::Global>", linkageName: "_RNvXsw_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCsfcROwRM8ZtH_11polars_plan", scope: !3623, file: !3620, line: 2427, type: !3395, scopeLine: 2427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3394)
!120751 = distinct !DISubprogram(name: "inner<polars_schema::schema::Schema<polars_core::datatypes::dtype::DataType, ()>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE5innerCsfcROwRM8ZtH_11polars_plan", scope: !3622, file: !3620, line: 2104, type: !3395, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3394)
!120752 = distinct !DILexicalBlock(scope: !120741, file: !3982, line: 1758, column: 13)
!120753 = distinct !DILexicalBlock(scope: !120741, file: !3982, line: 403, column: 13)
!120754 = distinct !DILexicalBlock(scope: !120741, file: !3982, line: 425, column: 13)
!120755 = distinct !DILexicalBlock(scope: !120754, file: !3982, line: 432, column: 17)
!120756 = distinct !DILexicalBlock(scope: !120741, file: !3982, line: 2059, column: 13)
!120757 = distinct !DILexicalBlock(scope: !120756, file: !3982, line: 2060, column: 17)
!120758 = distinct !DILexicalBlock(scope: !120741, file: !3982, line: 866, column: 13)
!120759 = distinct !DILexicalBlock(scope: !120758, file: !3561, line: 45, column: 13)
end_hunk_2
