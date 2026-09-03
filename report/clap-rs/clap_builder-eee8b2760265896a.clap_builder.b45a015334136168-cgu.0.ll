Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_builder-eee8b2760265896a.clap_builder.b45a015334136168-cgu.0?download=true
inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser19possible_subcommand:bb.a

.lr.ph.i.i.i.i22:                                 ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i20, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowB1R_ENCNvMs2_NtB15_7commandNtB2M_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1R_NCNCNvMs_NtNtB17_6parser6parserNtB4z_6Parser19possible_subcommand00E0E0B17_.exit.i.i.i.i29
  %i.ca = phi ptr [ %i.cb, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowB1R_ENCNvMs2_NtB15_7commandNtB2M_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1R_NCNCNvMs_NtNtB17_6parser6parserNtB4z_6Parser19possible_subcommand00E0E0B17_.exit.i.i.i.i29 ], [ %i.bv, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i20 ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  %i.cc = getelementptr i8, ptr %i.ca, i64 8
  %.val9.i.i.i.i23 = load i64, ptr %i.cc, align 8, !noalias !11478, !noundef !11
  %.not.i.i.i.i.i.i.i.i24 = icmp samesign ult i64 %.val9.i.i.i.i23, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i24, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowB1R_ENCNvMs2_NtB15_7commandNtB2M_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1R_NCNCNvMs_NtNtB17_6parser6parserNtB4z_6Parser19possible_subcommand00E0E0B17_.exit.i.i.i.i29, label %_RNCNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB8_6Parser19possible_subcommand00Bc_.exit.i.i.i.i.i.i25

_RNCNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB8_6Parser19possible_subcommand00Bc_.exit.i.i.i.i.i.i25: ; preds = %.lr.ph.i.i.i.i22
  %.val8.i.i.i.i26 = load ptr, ptr %i.ca, align 8, !noalias !11478, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i.i.i.i.i27 = tail call i32 @bcmp(ptr nonnull readonly %i.d, ptr nonnull readonly %.val8.i.i.i.i26, i64 range(i64 0, -9223372036854775808) %i.f), !alias.scope !11479, !noalias !11478
  %bcmp.i.i.i.fr.i.i.i.i.i.i28 = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i27
  %i.cd = icmp eq i32 %bcmp.i.i.i.fr.i.i.i.i.i.i28, 0
  br i1 %i.cd, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapReQNCNvMs_NtNtBW_6parser6parserNtB2L_6Parser19possible_subcommand0EBW_.exit39, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowB1R_ENCNvMs2_NtB15_7commandNtB2M_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1R_NCNCNvMs_NtNtB17_6parser6parserNtB4z_6Parser19possible_subcommand00E0E0B17_.exit.i.i.i.i29

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowB1R_ENCNvMs2_NtB15_7commandNtB2M_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1R_NCNCNvMs_NtNtB17_6parser6parserNtB4z_6Parser19possible_subcommand00E0E0B17_.exit.i.i.i.i29: ; preds = %_RNCNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB8_6Parser19possible_subcommand00Bc_.exit.i.i.i.i.i.i25, %.lr.ph.i.i.i.i22
  %i.ce = icmp eq ptr %i.cb, %i.by
  br i1 %i.ce, label %.loopexit.i30, label %.lr.ph.i.i.i.i22

.loopexit.i30:                                    ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowB1R_ENCNvMs2_NtB15_7commandNtB2M_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1R_NCNCNvMs_NtNtB17_6parser6parserNtB4z_6Parser19possible_subcommand00E0E0B17_.exit.i.i.i.i29, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i20
  %i.cf = icmp eq ptr %i.bo, %i.ar
  br i1 %i.cf, label %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandReEBa_.exit.thread, label %.lr.ph.i15

_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandReEBa_.exit.loopexit: ; preds = %.split.i.i.i.i.i
  %.phi.trans.insert67 = getelementptr inbounds nuw i8, ptr %i.u, i64 560
  %.pre = load ptr, ptr %.phi.trans.insert67, align 8
  br label %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandReEBa_.exit.thread

_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandReEBa_.exit.thread: ; preds = %.loopexit.i30, %_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB8_7Command15find_subcommandReE0Bc_.exit.i.i, %bb.g, %bb.i, %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandReEBa_.exit.loopexit, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapReQNCNvMs_NtNtBW_6parser6parserNtB2L_6Parser19possible_subcommand0EBW_.exit, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapReQNCNvMs_NtNtBW_6parser6parserNtB2L_6Parser19possible_subcommand0EBW_.exit39, %bb.a, %bb.e, %bb.c
  %.sroa.6.1 = phi i64 [ undef, %bb.e ], [ %i.x, %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandReEBa_.exit.loopexit ], [ undef, %bb.c ], [ %i.x, %_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB8_7Command15find_subcommandReE0Bc_.exit.i.i ], [ undef, %bb.a ], [ undef, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapReQNCNvMs_NtNtBW_6parser6parserNtB2L_6Parser19possible_subcommand0EBW_.exit39 ], [ %.sroa.5.0.pn.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapReQNCNvMs_NtNtBW_6parser6parserNtB2L_6Parser19possible_subcommand0EBW_.exit ], [ undef, %bb.i ], [ %i.x, %bb.g ], [ %.sroa.5.0.pn.i, %.loopexit.i30 ]
  %.sroa.0.1 = phi ptr [ null, %bb.e ], [ %.pre, %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandReEBa_.exit.loopexit ], [ null, %bb.c ], [ null, %_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB8_7Command15find_subcommandReE0Bc_.exit.i.i ], [ null, %bb.a ], [ null, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapReQNCNvMs_NtNtBW_6parser6parserNtB2L_6Parser19possible_subcommand0EBW_.exit39 ], [ %.pn.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapReQNCNvMs_NtNtBW_6parser6parserNtB2L_6Parser19possible_subcommand0EBW_.exit ], [ null, %bb.i ], [ %i.aa, %bb.g ], [ %.pn.i, %.loopexit.i30 ]
  %i.cg = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.ch = insertvalue { ptr, i64 } %i.cg, i64 %.sroa.6.1, 1
  ret { ptr, i64 } %i.ch
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser5react(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull align 8 captures(none) %1, i8 noundef range(i8 -1, 3) %2, i8 noundef range(i8 0, 3) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %4, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %8) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [14 x i8], align 2                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [16 x i8], align 16               ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.45.i71.i = alloca [31 x i8], align 1     ; 4 uses
  %i.q = alloca [120 x i8], align 8               ; 12 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [14 x i8], align 2                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 9 uses
  %i.v = alloca [16 x i8], align 16               ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.45.i.i = alloca [31 x i8], align 1       ; 4 uses
  %i.z = alloca [120 x i8], align 8               ; 12 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [14 x i8], align 2               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 9 uses
  %i.ae = alloca [16 x i8], align 16              ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 7 uses
  %i.aq = alloca [24 x i8], align 8               ; 7 uses
  %i.ar = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.5173.i = alloca [16 x i8], align 8       ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.5169.i = alloca [16 x i8], align 8       ; 4 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [24 x i8], align 8               ; 14 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [3 x i8], align 1                ; 3 uses
  %i.az = alloca [24 x i8], align 8               ; 5 uses
  %i.ba = alloca [24 x i8], align 8               ; 6 uses
  %i.bb = alloca [24 x i8], align 8               ; 4 uses
  %i.bc = alloca [24 x i8], align 8               ; 4 uses
  %i.bd = alloca [24 x i8], align 8               ; 4 uses
  %i.be = alloca [24 x i8], align 8               ; 6 uses
  %i.bf = alloca [24 x i8], align 8               ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 6 uses
  %i.bh = alloca [24 x i8], align 8               ; 4 uses
  %i.bi = alloca [24 x i8], align 8               ; 4 uses
  %i.bj = alloca [24 x i8], align 8               ; 4 uses
  %i.bk = alloca [24 x i8], align 8               ; 6 uses
  %i.bl = alloca [24 x i8], align 8               ; 4 uses
  %i.bm = alloca [24 x i8], align 8               ; 4 uses
  %i.bn = alloca [24 x i8], align 8               ; 4 uses
  %i.bo = alloca [24 x i8], align 8               ; 4 uses
  %i.bp = alloca [24 x i8], align 8               ; 6 uses
  %i.bq = alloca [24 x i8], align 8               ; 4 uses
  %i.br = alloca [32 x i8], align 8               ; 4 uses
  %i.bs = alloca [32 x i8], align 8               ; 5 uses
  %i.bt = alloca [24 x i8], align 8               ; 13 uses
  %i.bu = alloca [4 x i8], align 4                ; 15 uses
  %i.bv = tail call fastcc noundef align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15resolve_pending(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(120) %8) #43 ; 2 uses
  %.not = icmp eq ptr %i.bv, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bv, ptr %i.bw, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.dw

bb.c:                                             ; preds = %bb.a
  %.not252 = icmp eq i8 %3, 2                     ; 3 uses
  br i1 %.not252, label %bb.d, label %._RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15verify_num_args.exit_crit_edge

._RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15verify_num_args.exit_crit_edge: ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15verify_num_args.exit

bb.d:                                             ; preds = %bb.c
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !11, !noundef !11
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !11 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11689)
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !11690, !nonnull !11, !align !17, !noundef !11 ; 6 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 700
  %.val.i = load i32, ptr %i.cd, align 4, !noalias !11690, !noundef !11
  %i.ce = getelementptr i8, ptr %i.cc, i64 704
  %.val10.i = load i32, ptr %i.ce, align 8, !noalias !11690
  %.not.i.i = trunc i32 %.val.i to i1
  %i.cf = trunc i32 %.val10.i to i1
  %.sroa.0.0.i.i = select i1 %.not.i.i, i1 true, i1 %i.cf
  br i1 %.sroa.0.0.i.i, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15verify_num_args.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0161.0.copyload.i = load i64, ptr %i.cg, align 8, !alias.scope !11691, !noalias !11689
  %.sroa.4.0..sroa_idx162.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx162.i, align 8, !alias.scope !11691, !noalias !11689 ; 6 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !11691, !noalias !11689 ; 3 uses
  %i.ch = trunc nuw i64 %.sroa.0161.0.copyload.i to i1
  br i1 %i.ch, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.ci = icmp ne i64 %.sroa.4.0.copyload.i, 0
  %i.cj = icmp eq i64 %i.ca, 0
  %or.cond.i = and i1 %i.cj, %i.ci
  br i1 %or.cond.i, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #44, !noalias !11690
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ck = icmp eq i64 %.sroa.4.0.copyload.i, %.sroa.5.0.copyload.i
  br i1 %i.ck, label %bb.al, label %bb.am

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !11690
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11693)
  %.not.i17.i = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %.not.i17.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !range !25, !alias.scope !11694, !noalias !11695, !noundef !11
  %.not6.i.i = icmp eq i64 %i.cm, -1
  %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT..i.i = select i1 %.not6.i.i, ptr @_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT, ptr %i.cl ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11696)
  %i.cn = load i64, ptr %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT..i.i, align 8, !range !48, !alias.scope !11696, !noalias !11695, !noundef !11
  switch i64 %i.cn, label %default.unreachable336 [
    i64 0, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i.i
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.m
    i64 4, label %bb.n
  ]

default.unreachable336:                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i.i

bb.l:                                             ; preds = %bb.j
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i.i

bb.m:                                             ; preds = %bb.j
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i.i

bb.n:                                             ; preds = %bb.j
  %i.co = getelementptr inbounds nuw i8, ptr %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT..i.i, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !11696, !noalias !11695, !nonnull !11, !noundef !11
  %i.cq = getelementptr inbounds nuw i8, ptr %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT..i.i, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !11696, !noalias !11695, !nonnull !11, !align !17, !noundef !11
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i.i

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.sroa.6.0.i.i.i = phi ptr [ %i.cr, %bb.n ], [ @256, %bb.k ], [ @257, %bb.l ], [ @258, %bb.m ], [ @255, %bb.j ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.cp, %bb.n ], [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %bb.l ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.j ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i.i.i, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !invariant.load !11, !noalias !11697, !nonnull !11
  %i.cu = tail call { ptr, ptr } %i.ct(ptr noundef nonnull %.sroa.0.0.i.i.i) #45, !noalias !11697, !inline_history !11491 ; 2 uses
  %i.cv = extractvalue { ptr, ptr } %i.cu, 0      ; 2 uses
  %.not7.i.i = icmp eq ptr %i.cv, null
  br i1 %.not7.i.i, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.i
  store i64 0, ptr %i.aw, align 8, !alias.scope !11692, !noalias !11698
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cw, align 8, !alias.scope !11692, !noalias !11698
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 0, ptr %i.cx, align 8, !alias.scope !11692, !noalias !11698
  br label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator23get_possible_values_cli.exit.i

bb.p:                                             ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i.i
  %i.cy = extractvalue { ptr, ptr } %i.cu, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cy) ]
  call fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEINtB2_18SpecFromIterNestedB11_INtNtB6_5boxed3BoxDNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iteratorp4ItemB11_EL_EE9from_iterB17_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.aw, ptr noundef nonnull %i.cv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cy) #43, !noalias !11698
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !11690
  %.phi.trans.insert189.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.pre190.i = load i64, ptr %.phi.trans.insert189.i, align 8, !noalias !11690
  %i.cz = mul nuw nsw i64 %.pre190.i, 72
  br label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator23get_possible_values_cli.exit.i

bb.q:                                             ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i.i
  store i64 0, ptr %i.aw, align 8, !alias.scope !11692, !noalias !11698
  %i.da = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.da, align 8, !alias.scope !11692, !noalias !11698
  %i.db = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 0, ptr %i.db, align 8, !alias.scope !11692, !noalias !11698
  br label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator23get_possible_values_cli.exit.i

_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator23get_possible_values_cli.exit.i: ; preds = %bb.q, %bb.p, %bb.o
  %.idx384 = phi i64 [ %i.cz, %bb.p ], [ 0, %bb.q ], [ 0, %bb.o ] ; 2 uses
  %i.dc = phi ptr [ %.pre.i, %bb.p ], [ inttoptr (i64 8 to ptr), %bb.q ], [ inttoptr (i64 8 to ptr), %bb.o ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.idx384 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !11699
  %i.dg = icmp samesign eq i64 %.idx384, 0
  br i1 %i.dg, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1W_6filter6FilterINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB3z_6parser6parserNtB4M_6Parser15verify_num_args0ENCB4H_s_0EE9from_iterB3z_.exit.i, label %.lr.ph381

bb.r:                                             ; preds = %.lr.ph381
  %i.dh = icmp eq ptr %i.dj, %i.df
  br i1 %i.dh, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1W_6filter6FilterINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB3z_6parser6parserNtB4M_6Parser15verify_num_args0ENCB4H_s_0EE9from_iterB3z_.exit.i, label %.lr.ph381

.lr.ph381:                                        ; preds = %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator23get_possible_values_cli.exit.i, %bb.r
  %i.di = phi ptr [ %i.dj, %bb.r ], [ %i.dc, %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator23get_possible_values_cli.exit.i ] ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 72 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.dl = load i8, ptr %i.dk, align 8, !range !34, !noalias !11700, !noundef !11
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.r, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB1y_6parser6parserNtB2L_6Parser15verify_num_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB1y_6parser6parserNtB2L_6Parser15verify_num_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i: ; preds = %.lr.ph381
  %i.dn = getelementptr i8, ptr %i.di, i64 48
  %.val.i.i.i = load ptr, ptr %i.dn, align 8, !noalias !11701, !nonnull !11, !noundef !11
  %i.do = getelementptr i8, ptr %i.di, i64 56
  %.val2.i.i.i = load i64, ptr %i.do, align 8, !noalias !11701, !noundef !11 ; 7 uses
  %.not.i.i.i.i.i = icmp slt i64 %.val2.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s, !prof !21

bb.s:                                             ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB1y_6parser6parserNtB2L_6Parser15verify_num_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i
  %i.dp = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.dp, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.s
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !11702
  %i.dq = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.i.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !11702 ; 3 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB1y_6parser6parserNtB2L_6Parser15verify_num_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i ], [ 0, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB1y_6parser6parserNtB2L_6Parser15verify_num_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.val2.i.i.i) #46, !noalias !11703
  unreachable

bb.u:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr nonnull readonly align 1 %.val.i.i.i, i64 %.val2.i.i.i, i1 false), !noalias !11703
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.u, %bb.s
  %.sroa.7.0.ph.i.i = phi ptr [ %i.dq, %bb.u ], [ inttoptr (i64 1 to ptr), %bb.s ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !11704
  %i.ds = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 96, i64 noundef range(i64 1, 9) 8) #43, !noalias !11704 ; 6 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.v, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i

bb.v:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #46, !noalias !11699
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  store i64 %.val2.i.i.i, ptr %i.ds, align 8, !noalias !11699
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %.sroa.7.0.ph.i.i, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !11699
  %.sroa.513.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store i64 %.val2.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !noalias !11699
  store i64 4, ptr %i.ak, align 8, !noalias !11699
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  store ptr %i.ds, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !11699
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !11699
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11706)
  br label %bb.w

bb.w:                                             ; preds = %bb.ad, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i
  %i.du = phi ptr [ %i.ds, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i ], [ %i.ej, %bb.ad ]
  %.sroa.8165.0.copyload.i = phi i64 [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i ], [ %i.el, %bb.ad ] ; 6 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.dj, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i ], [ %i.dx, %bb.ad ]
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w
  %i.dv = phi ptr [ %i.dx, %bb.y ], [ %.sroa.0.0.i.i.i.i, %bb.w ] ; 5 uses
  %i.dw = icmp eq ptr %i.dv, %i.df
  br i1 %i.dw, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1D_6filter6FilterINtNtNtB1H_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB3g_6parser6parserNtB4t_6Parser15verify_num_args0ENCB4o_s_0EE11spec_extendB3g_.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 72 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.dz = load i8, ptr %i.dy, align 8, !range !34, !noalias !11707, !noundef !11
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.x, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB1y_6parser6parserNtB2L_6Parser15verify_num_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB1y_6parser6parserNtB2L_6Parser15verify_num_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i.i.i: ; preds = %bb.y
  %i.eb = getelementptr i8, ptr %i.dv, i64 48
  %.val.i.i.i.i.i = load ptr, ptr %i.eb, align 8, !noalias !11708, !nonnull !11, !noundef !11
  %i.ec = getelementptr i8, ptr %i.dv, i64 56
  %.val2.i.i.i.i.i = load i64, ptr %i.ec, align 8, !noalias !11708, !noundef !11 ; 7 uses
  %.not.i.i.i.i.i.i.i = icmp slt i64 %.val2.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.aa, label %bb.z, !prof !21

bb.z:                                             ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB1y_6parser6parserNtB2L_6Parser15verify_num_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i.i.i
  %i.ed = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ed, label %bb.ac, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %bb.z
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !11709
  %i.ee = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !11709 ; 3 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB1y_6parser6parserNtB2L_6Parser15verify_num_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ 0, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB1y_6parser6parserNtB2L_6Parser15verify_num_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i.i.i ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i) #46, !noalias !11710
  unreachable

bb.ab:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ee, ptr nonnull readonly align 1 %.val.i.i.i.i.i, i64 %.val2.i.i.i.i.i, i1 false), !noalias !11710
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.sroa.7.0.ph.i.i.i.i = phi ptr [ %i.ee, %bb.ab ], [ inttoptr (i64 1 to ptr), %bb.z ]
  %i.eg = icmp samesign ult i64 %.sroa.8165.0.copyload.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.eg)
  %i.eh = load i64, ptr %i.ak, align 8, !range !12, !alias.scope !11711, !noalias !11699, !noundef !11
  %i.ei = icmp eq i64 %.sroa.8165.0.copyload.i, %i.eh
  br i1 %i.ei, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, label %bb.ad

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %bb.ac
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak, i64 noundef %.sroa.8165.0.copyload.i, i64 noundef 1, i64 noundef 8, i64 noundef 24) #43, !noalias !11699
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !11711, !noalias !11699
  br label %bb.ad

bb.ad:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, %bb.ac
  %i.ej = phi ptr [ %.pre.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ], [ %i.du, %bb.ac ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %.sroa.8165.0.copyload.i ; 3 uses
  store i64 %.val2.i.i.i.i.i, ptr %i.ek, align 8, !noalias !11712
  %.sroa.49.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %.sroa.7.0.ph.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !noalias !11712
  %.sroa.510.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i64 %.val2.i.i.i.i.i, ptr %.sroa.510.0..sroa_idx.i.i.i.i, align 8, !noalias !11712
  %i.el = add nuw nsw i64 %.sroa.8165.0.copyload.i, 1 ; 2 uses
  store i64 %i.el, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !11711, !noalias !11699
  br label %bb.w

end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser5react:bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.nu) #46
  unreachable

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i.lr.ph: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  store i64 %i.ms, ptr %i.bt, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  store ptr %i.oc, ptr %i.oe, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 5 uses
  store i64 0, ptr %i.of, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.oh = load ptr, ptr %i.og, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.oi = load i64, ptr %5, align 8, !range !12, !noundef !11 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.nu ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ol = trunc nuw i64 %.sroa.013.1 to i1
  br label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit
  %.sroa.4.0267 = phi ptr [ %i.oh, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i.lr.ph ], [ %i.om, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit ] ; 4 uses
  %.sroa.13.0266 = phi i64 [ 0, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i.lr.ph ], [ %i.on, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit ] ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.4.0267, i64 24 ; 3 uses
  %.sroa.0.0.copyload1.i = load i64, ptr %.sroa.4.0267, align 8, !noalias !11802 ; 4 uses
  %.not.i160 = icmp eq i64 %.sroa.0.0.copyload1.i, -1
  br i1 %.not.i160, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge, label %bb.cl

bb.cl:                                            ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0267, i64 8
  %.sroa.9.sroa.0.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx2.i, align 8, !noalias !11803, !nonnull !11, !noundef !11 ; 4 uses
  %.sroa.9.sroa.5.0..sroa.7.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.0267, i64 16
  %.sroa.9.sroa.5.0.copyload = load i64, ptr %.sroa.9.sroa.5.0..sroa.7.0..sroa_idx2.i.sroa_idx, align 8, !noalias !11803 ; 3 uses
  %i.on = add nuw nsw i64 %.sroa.13.0266, 1
  %i.oo = call noundef zeroext i1 @_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt8contains(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9.sroa.0.0.copyload, i64 noundef %.sroa.9.sroa.5.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef %.sroa.0.05.i) #43
  br i1 %i.oo, label %bb.co, label %bb.cp

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread
  %i.op = phi ptr [ %i.ob, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread ], [ %i.oj, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i ] ; 2 uses
  %i.oq = phi i64 [ %i.oa, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread ], [ %i.oi, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i ] ; 2 uses
  %i.or = phi ptr [ %i.nz, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread ], [ %i.oh, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i ] ; 2 uses
  %.sroa.4.2.ph = phi ptr [ %i.nz, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread ], [ %i.om, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i ] ; 3 uses
  %i.os = ptrtoint ptr %i.op to i64
  %i.ot = ptrtoint ptr %.sroa.4.2.ph to i64
  %i.ou = sub nuw i64 %i.os, %i.ot
  %i.ov = udiv exact i64 %i.ou, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !11804)
  %i.ow = icmp eq ptr %i.op, %.sroa.4.2.ph
  br i1 %i.ow, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i163

.lr.ph.i.i.i.i163:                                ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
  %.sroa.0.03.i.i.i.i164 = phi i64 [ %i.oy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ], [ 0, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge ] ; 2 uses
  %i.ox = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4.2.ph, i64 %.sroa.0.03.i.i.i.i164 ; 2 uses
  %i.oy = add nuw nsw i64 %.sroa.0.03.i.i.i.i164, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11805)
  %.val.i.i.i.i.i165 = load i64, ptr %i.ox, align 8, !range !12, !alias.scope !11806, !noalias !11807, !noundef !11 ; 2 uses
  %i.oz = icmp eq i64 %.val.i.i.i.i.i165, 0
  br i1 %i.oz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i.i.i.i163
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %.val1.i.i.i.i.i166 = load ptr, ptr %i.pa, align 8, !alias.scope !11806, !noalias !11807, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i166, i64 noundef %.val.i.i.i.i.i165, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !11808
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %bb.cm, %.lr.ph.i.i.i.i163
  %i.pb = icmp eq i64 %i.oy, %i.ov
  br i1 %i.pb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i163

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge
  %i.pc = phi ptr [ %i.or, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ], [ %i.or, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge ], [ %i.oh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit ]
  %i.pd = phi i64 [ %i.oq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ], [ %i.oq, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge ], [ %i.oi, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit ] ; 2 uses
  %i.pe = icmp eq i64 %i.pd, 0
  br i1 %i.pe, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECsfu0rQaTkGUu_12clap_builder.exit, label %bb.cn

bb.cn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %i.pf = mul nuw i64 %i.pd, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pc, i64 noundef %i.pf, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !11807
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %bb.cy

bb.co:                                            ; preds = %bb.cl
  %i.pg = load ptr, ptr %i.ok, align 8, !nonnull !11, !align !17, !noundef !11
  %i.ph = getelementptr i8, ptr %i.pg, i64 700
  %i.pi = load <2 x i32>, ptr %i.ph, align 4
  %i.pj = and <2 x i32> %i.pi, splat (i32 64)
  %i.pk = icmp ne <2 x i32> %i.pj, zeroinitializer ; 2 uses
  %i.pl = extractelement <2 x i1> %i.pk, i64 0
  %i.pm = extractelement <2 x i1> %i.pk, i64 1
  %.sroa.0.0.i168 = select i1 %i.pl, i1 true, i1 %i.pm
  %i.pn = icmp eq i64 %.sroa.4.1, %.sroa.13.0266
  %i.po = and i1 %.sroa.0.0.i168, %i.ol
  %or.cond111 = select i1 %i.po, i1 %i.pn, i1 false
  br i1 %or.cond111, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co, %bb.cl
  %i.pp = load i64, ptr %i.of, align 8, !alias.scope !11809, !noalias !11810, !noundef !11 ; 3 uses
  %i.pq = load i64, ptr %i.bt, align 8, !range !12, !alias.scope !11809, !noalias !11810, !noundef !11
  %i.pr = icmp eq i64 %i.pp, %i.pq
  br i1 %i.pr, label %bb.cq, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8push_mutCsfu0rQaTkGUu_12clap_builder.exit

bb.cq:                                            ; preds = %bb.cp
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt) #42, !noalias !11810
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8push_mutCsfu0rQaTkGUu_12clap_builder.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8push_mutCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.cp, %bb.cq
  %i.ps = load ptr, ptr %i.oe, align 8, !alias.scope !11809, !noalias !11810, !nonnull !11, !noundef !11
  %i.pt = getelementptr inbounds nuw [24 x i8], ptr %i.ps, i64 %i.pp ; 3 uses
  store i64 %.sroa.0.0.copyload1.i, ptr %i.pt, align 8
  %.sroa.4209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  store ptr %.sroa.9.sroa.0.0.copyload, ptr %.sroa.4209.0..sroa_idx, align 8
  %.sroa.5210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  store i64 %.sroa.9.sroa.5.0.copyload, ptr %.sroa.5210.0..sroa_idx, align 8
  %i.pu = add i64 %i.pp, 1
  store i64 %i.pu, ptr %i.of, align 8, !alias.scope !11809, !noalias !11810
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit

bb.cr:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt5split(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9.sroa.0.0.copyload, i64 noundef %.sroa.9.sroa.5.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef %.sroa.0.05.i) #43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.experimental.noalias.scope.decl(metadata !11811)
  %i.pv = call { ptr, i64 } @_RNvXs_NtCs3RZUOUhPFQ6_8clap_lex3extNtB4_5SplitNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs) #43, !noalias !11812 ; 2 uses
  %i.pw = extractvalue { ptr, i64 } %i.pv, 0      ; 2 uses
  %.not.i14.i = icmp eq ptr %i.pw, null
  br i1 %.not.i14.i, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtCs3RZUOUhPFQ6_8clap_lex3ext5SplitNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB3d_6Parser5reacts_0EEB3h_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cr, %bb.cw
  %i.px = phi ptr [ %i.ql, %bb.cw ], [ %i.pw, %bb.cr ]
  %i.py = phi { ptr, i64 } [ %i.qk, %bb.cw ], [ %i.pv, %bb.cr ]
  %i.pz = extractvalue { ptr, i64 } %i.py, 1      ; 7 uses
  %.not.i.i.i.i = icmp slt i64 %i.pz, 0
  br i1 %.not.i.i.i.i, label %bb.ct, label %bb.cs, !prof !21

bb.cs:                                            ; preds = %.lr.ph.i
  %i.qa = icmp eq i64 %i.pz, 0
  br i1 %i.qa, label %bb.cv, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i169

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i169: ; preds = %bb.cs
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !11813
  %i.qb = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.pz, i64 noundef range(i64 1, 9) 1) #43, !noalias !11813 ; 3 uses
  %i.qc = icmp eq ptr %i.qb, null
  br i1 %i.qc, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i169, %.lr.ph.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i169 ], [ 0, %.lr.ph.i ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.pz) #46, !noalias !11814
  unreachable

bb.cu:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i169
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qb, ptr nonnull readonly align 1 %i.px, i64 %i.pz, i1 false), !noalias !11815
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cs
  %.sroa.7.0.ph.i = phi ptr [ %i.qb, %bb.cu ], [ inttoptr (i64 1 to ptr), %bb.cs ]
  %i.qd = load i64, ptr %i.of, align 8, !alias.scope !11811, !noalias !11816, !noundef !11 ; 5 uses
  %i.qe = icmp ult i64 %i.qd, 384307168202282326
  call void @llvm.assume(i1 %i.qe)
  %i.qf = load i64, ptr %i.bt, align 8, !range !12, !alias.scope !11811, !noalias !11816, !noundef !11
  %i.qg = icmp eq i64 %i.qd, %i.qf
  br i1 %i.qg, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i171, label %bb.cw

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i171: ; preds = %bb.cv
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt, i64 noundef %i.qd, i64 noundef 1, i64 noundef 8, i64 noundef 24) #43
  br label %bb.cw

bb.cw:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i171, %bb.cv
  %i.qh = load ptr, ptr %i.oe, align 8, !alias.scope !11811, !noalias !11816, !nonnull !11, !noundef !11
  %i.qi = getelementptr inbounds nuw [24 x i8], ptr %i.qh, i64 %i.qd ; 3 uses
  store i64 %i.pz, ptr %i.qi, align 8, !noalias !11811
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  store ptr %.sroa.7.0.ph.i, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !11811
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  store i64 %i.pz, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !11811
  %i.qj = add nuw nsw i64 %i.qd, 1
  store i64 %i.qj, ptr %i.of, align 8, !alias.scope !11811, !noalias !11816
  %i.qk = call { ptr, i64 } @_RNvXs_NtCs3RZUOUhPFQ6_8clap_lex3extNtB4_5SplitNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs) #43, !noalias !11812 ; 2 uses
  %i.ql = extractvalue { ptr, i64 } %i.qk, 0      ; 2 uses
  %.not.i.i170 = icmp eq ptr %i.ql, null
  br i1 %.not.i.i170, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtCs3RZUOUhPFQ6_8clap_lex3ext5SplitNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB3d_6Parser5reacts_0EEB3h_.exit, label %.lr.ph.i

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtCs3RZUOUhPFQ6_8clap_lex3ext5SplitNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB3d_6Parser5reacts_0EEB3h_.exit: ; preds = %bb.cw, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  %i.qm = icmp eq i64 %.sroa.0.0.copyload1.i, 0
  br i1 %i.qm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit, label %bb.cx

bb.cx:                                            ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtCs3RZUOUhPFQ6_8clap_lex3ext5SplitNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB3d_6Parser5reacts_0EEB3h_.exit
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.sroa.0.0.copyload, i64 noundef %.sroa.0.0.copyload1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !11817
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.cx, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtCs3RZUOUhPFQ6_8clap_lex3ext5SplitNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB3d_6Parser5reacts_0EEB3h_.exit, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8push_mutCsfu0rQaTkGUu_12clap_builder.exit
  %i.qn = icmp eq ptr %i.om, %i.oj
  br i1 %i.qn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i

bb.cy:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECsfu0rQaTkGUu_12clap_builder.exit, %bb.cc, %bb.bv, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB30_6parser6parserNtB3V_6Parser5react0EEB30_.exit
  %i.qo = getelementptr inbounds nuw i8, ptr %4, i64 596
  %i.qp = load i8, ptr %i.qo, align 4, !range !53, !alias.scope !11818, !noundef !11 ; 2 uses
  %.not.i173 = icmp eq i8 %i.qp, -1
  %9 = select i1 %.not.i173, i8 0, i8 %i.qp
  switch i8 %9, label %default.unreachable [
    i8 0, label %bb.cz
    i8 1, label %bb.da
    i8 2, label %bb.db
    i8 3, label %bb.dc
    i8 4, label %bb.dd
    i8 5, label %bb.de
    i8 6, label %bb.df
    i8 7, label %bb.dg
    i8 8, label %bb.dh
  ]

default.unreachable:                              ; preds = %bb.cy
  unreachable

bb.cz:                                            ; preds = %bb.cy
  br i1 %.not252, label %switch.early.test, label %bb.dq

switch.early.test:                                ; preds = %bb.cz
  switch i8 %2, label %bb.dr [
    i8 -1, label %bb.dq
    i8 2, label %bb.dq
  ]

bb.da:                                            ; preds = %bb.cy
  br i1 %.not252, label %switch.early.test118, label %bb.eb

switch.early.test118:                             ; preds = %bb.da
  switch i8 %2, label %bb.ec [
    i8 -1, label %bb.eb
    i8 2, label %bb.eb
  ]

bb.db:                                            ; preds = %bb.cy
  %i.qq = load i64, ptr %i.lf, align 8, !noundef !11 ; 2 uses
  %i.qr = icmp ult i64 %i.qq, 384307168202282326
  call void @llvm.assume(i1 %i.qr)
  %i.qs = icmp eq i64 %i.qq, 0
  br i1 %i.qs, label %bb.eg, label %bb.ef

bb.dc:                                            ; preds = %bb.cy
  %i.qt = load i64, ptr %i.lf, align 8, !noundef !11 ; 2 uses
  %i.qu = icmp ult i64 %i.qt, 384307168202282326
  call void @llvm.assume(i1 %i.qu)
  %i.qv = icmp eq i64 %i.qt, 0
  br i1 %i.qv, label %bb.es, label %bb.er

bb.dd:                                            ; preds = %bb.cy
  %i.qw = load i64, ptr %i.lf, align 8, !noundef !11 ; 2 uses
  %i.qx = icmp ult i64 %i.qw, 384307168202282326
  call void @llvm.assume(i1 %i.qx)
  %i.qy = icmp eq i64 %i.qw, 0
  %i.qz = getelementptr inbounds nuw i8, ptr %4, i64 536 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %4, i64 544 ; 2 uses
  br i1 %i.qy, label %bb.fc, label %bb.fb

bb.de:                                            ; preds = %bb.cy
  %i.rb = icmp ne i8 %2, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.rd = load ptr, ptr %i.rc, align 8, !nonnull !11, !align !17, !noundef !11
  call fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command14write_help_err(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.rd, i1 noundef zeroext %i.rb) #43
  %i.re = load ptr, ptr %i.rc, align 8, !nonnull !11, !align !17, !noundef !11
  %i.rf = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error7for_appB4_(i8 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.re, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.sink.split

bb.df:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.rh = load ptr, ptr %i.rg, align 8, !nonnull !11, !align !17, !noundef !11
  call fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command14write_help_err(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.rh, i1 noundef zeroext false) #43
  %i.ri = load ptr, ptr %i.rg, align 8, !nonnull !11, !align !17, !noundef !11
  %i.rj = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error7for_appB4_(i8 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.ri, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.sink.split

bb.dg:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.rk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.rl = load ptr, ptr %i.rk, align 8, !nonnull !11, !align !17, !noundef !11
  call fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command14write_help_err(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.rl, i1 noundef zeroext true) #43
  %i.rm = load ptr, ptr %i.rk, align 8, !nonnull !11, !align !17, !noundef !11
  %i.rn = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error7for_appB4_(i8 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.rm, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.sink.split

bb.dh:                                            ; preds = %bb.cy
  %.not251 = icmp eq i8 %2, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ro = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !nonnull !11, !align !17, !noundef !11 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11819)
  call void @llvm.experimental.noalias.scope.decl(metadata !11820)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11821
  br i1 %.not251, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 608
  %i.rr = load ptr, ptr %i.rq, align 8, !alias.scope !11822, !noalias !11823, !noundef !11 ; 3 uses
  %.not.i.i.i174 = icmp eq ptr %i.rr, null        ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rp, i64 616
  %i.rt = load i64, ptr %i.rs, align 8, !alias.scope !11822, !noalias !11823 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rp, i64 624
  %i.rv = load ptr, ptr %i.ru, align 8, !alias.scope !11822, !noalias !11823, !noundef !11 ; 2 uses
  %.not33.i.i.i = icmp eq ptr %i.rv, null
  br i1 %.not33.i.i.i, label %bb.dl, label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rp, i64 624
  %i.rx = load ptr, ptr %i.rw, align 8, !alias.scope !11822, !noalias !11823, !noundef !11 ; 3 uses
  %.not37.i.i.i = icmp eq ptr %i.rx, null         ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rp, i64 632
  %i.rz = load i64, ptr %i.ry, align 8, !alias.scope !11822, !noalias !11823 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rp, i64 608
  %i.sb = load ptr, ptr %i.sa, align 8, !alias.scope !11822, !noalias !11823, !noundef !11 ; 2 uses
  %.not38.i.i.i = icmp eq ptr %i.sb, null
  br i1 %.not38.i.i.i, label %bb.do, label %bb.dn

bb.dk:                                            ; preds = %bb.di
  br i1 %.not.i.i.i174, label %bb.dm, label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser11version_err.exit

bb.dl:                                            ; preds = %bb.di
  %spec.select.i.i.i = select i1 %.not.i.i.i174, i64 0, i64 %i.rt
  %spec.select44.i.i.i = select i1 %.not.i.i.i174, ptr inttoptr (i64 1 to ptr), ptr %i.rr
  br label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser11version_err.exit

bb.dm:                                            ; preds = %bb.dk
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rp, i64 632
  %i.sd = load i64, ptr %i.sc, align 8, !alias.scope !11822, !noalias !11823, !noundef !11
  br label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser11version_err.exit

bb.dn:                                            ; preds = %bb.dj
  br i1 %.not37.i.i.i, label %bb.dp, label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser11version_err.exit

bb.do:                                            ; preds = %bb.dj
  %spec.select57.i.i.i = select i1 %.not37.i.i.i, ptr inttoptr (i64 1 to ptr), ptr %i.rx
  %spec.select58.i.i.i = select i1 %.not37.i.i.i, i64 0, i64 %i.rz
  br label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser11version_err.exit

bb.dp:                                            ; preds = %bb.dn
  %i.se = getelementptr inbounds nuw i8, ptr %i.rp, i64 616
  %i.sf = load i64, ptr %i.se, align 8, !alias.scope !11822, !noalias !11823, !noundef !11
  br label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser11version_err.exit

_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser11version_err.exit: ; preds = %bb.dk, %bb.dl, %bb.dm, %bb.dn, %bb.do, %bb.dp
  %.sink53.i.i.i = phi ptr [ %i.rv, %bb.dm ], [ %spec.select57.i.i.i, %bb.do ], [ %i.rx, %bb.dn ], [ %i.sb, %bb.dp ], [ %spec.select44.i.i.i, %bb.dl ], [ %i.rr, %bb.dk ]
  %.sink51.i.i.i = phi i64 [ %i.sd, %bb.dm ], [ %spec.select58.i.i.i, %bb.do ], [ %i.rz, %bb.dn ], [ %i.sf, %bb.dp ], [ %spec.select.i.i.i, %bb.dl ], [ %i.rt, %bb.dk ]
  store ptr %.sink53.i.i.i, ptr %i.d, align 8, !noalias !11821, !captures !22
  %i.sg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sink51.i.i.i, ptr %i.sg, align 8, !noalias !11821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11821
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rp, i64 272
  %i.si = load i64, ptr %i.sh, align 8, !range !13, !alias.scope !11822, !noalias !11823, !noundef !11
  %.not42.i.i.i = icmp eq i64 %i.si, -1           ; 2 uses
  %..i.i.i = select i1 %.not42.i.i.i, i64 560, i64 280
  %.56.i.i.i = select i1 %.not42.i.i.i, i64 568, i64 288
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rp, i64 %..i.i.i
  %i.sk = getelementptr inbounds nuw i8, ptr %i.rp, i64 %.56.i.i.i
  %.sink.i.i.i = load i64, ptr %i.sk, align 8, !alias.scope !11822, !noalias !11823, !noundef !11
  %.sink47.i.i.i = load ptr, ptr %i.sj, align 8, !alias.scope !11822, !noalias !11823, !nonnull !11, !noundef !11
  store ptr %.sink47.i.i.i, ptr %i.c, align 8, !noalias !11821
  %i.sl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sink.i.i.i, ptr %i.sl, align 8, !noalias !11821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11821
  store ptr %i.c, ptr %i.b, align 8, !noalias !11821
  %.sroa.424.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.424.0..sroa_idx.i.i.i, align 8, !noalias !11821
  %i.sm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.sm, align 8, !noalias !11821
  %.sroa.428.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.428.0..sroa_idx.i.i.i, align 8, !noalias !11821
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @202, ptr noundef nonnull %i.b) #43, !noalias !11819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11821
  %i.sn = load ptr, ptr %i.ro, align 8, !nonnull !11, !align !17, !noundef !11
  %i.so = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error7for_appB4_(i8 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.sn, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.sink.split

bb.dq:                                            ; preds = %switch.early.test, %switch.early.test, %bb.cz, %bb.dr
  %i.sp = getelementptr inbounds nuw i8, ptr %4, i64 536
  %.val141 = load ptr, ptr %i.sp, align 8         ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %4, i64 544
  %.val142 = load i64, ptr %i.sq, align 8         ; 2 uses
  %i.sr = call fastcc noundef zeroext i1 @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher6remove(ptr noalias nofree noundef align 8 dereferenceable(120) %8, ptr %.val141, i64 %.val142) #43
  br i1 %i.sr, label %bb.ds, label %bb.dt

bb.dr:                                            ; preds = %switch.early.test
  %i.ss = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.st = load i64, ptr %i.ss, align 8, !noundef !11
  %i.su = add i64 %i.st, 1
  store i64 %i.su, ptr %i.ss, align 8
  br label %bb.dq

bb.ds:                                            ; preds = %bb.dq
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.sw = load ptr, ptr %i.sv, align 8, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.sx = getelementptr i8, ptr %i.sw, i64 700
  %i.sy = load <2 x i32>, ptr %i.sx, align 4
  %i.sz = and <2 x i32> %i.sy, splat (i32 8)
  %i.ta = icmp ne <2 x i32> %i.sz, zeroinitializer ; 2 uses
  %i.tb = extractelement <2 x i1> %i.ta, i64 0
  %i.tc = extractelement <2 x i1> %i.ta, i64 1
  %.sroa.0.0.i176 = select i1 %i.tb, i1 true, i1 %i.tc
  br i1 %.sroa.0.0.i176, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.du, %bb.ds, %bb.dq
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16start_custom_arg(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(120) %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4, i8 noundef %3) #43
  %i.td = call fastcc noundef align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15push_arg_values(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %5, i8 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(120) %8) #43 ; 2 uses
  %.not107 = icmp eq ptr %i.td, null
  br i1 %.not107, label %bb.ea, label %bb.dz

bb.du:                                            ; preds = %bb.ds
  %i.te = getelementptr inbounds nuw i8, ptr %4, i64 136
end_hunk_1
