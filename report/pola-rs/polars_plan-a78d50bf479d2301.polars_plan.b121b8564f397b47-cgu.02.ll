Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.02?download=true
inline.NumInlined: 11828
inline.NumDeleted: 4829
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0CsfcROwRM8ZtH_11polars_plan:bb.a
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.vb, !dbg !107728

.thread:                                          ; preds = %bb.eg
  %i.lw = load ptr, ptr %i.fb, align 8, !dbg !107729, !nonnull !4698, !align !4821, !noundef !4698
  %i.lx = load i8, ptr %i.eu, align 8, !dbg !107730, !range !5104, !noundef !4698
  %.sroa.8504.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 472, !dbg !107731
  store ptr %i.kw, ptr %.sroa.8504.0..sroa_idx, align 8, !dbg !107731
  %.sroa.9505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 480, !dbg !107731
  store i64 %i.kx, ptr %.sroa.9505.0..sroa_idx, align 8, !dbg !107731
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 704, !dbg !107731
  store ptr %i.lw, ptr %.sroa.11.0..sroa_idx, align 8, !dbg !107731
  %.sroa.13508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 714, !dbg !107731
  store i8 0, ptr %.sroa.13508.0..sroa_idx, align 2, !dbg !107731
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 715, !dbg !107731
  store i8 %i.ff, ptr %.sroa.14.0..sroa_idx, align 1, !dbg !107731
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 716, !dbg !107731
  store i8 %i.lx, ptr %.sroa.15.0..sroa_idx, align 4, !dbg !107731
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 296, !dbg !107732
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3348.sroa.17.i), !dbg !107733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !dbg !107733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !dbg !107733
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 714, !dbg !107733
  br label %bb.ep, !dbg !107733

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit460: ; preds = %bb.agu, %bb.agv, %bb.agh, %bb.agi, %bb.afz, %bb.aga, %bb.afq, %bb.afr, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit482, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit480, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit472, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit470, %bb.afy, %bb.afv, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit458, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit456
  %.pn216 = phi { ptr, i32 } [ %i.bvl, %bb.afy ], [ %.pn212, %bb.afq ], [ %i.bvd, %bb.afv ], [ %.pn204.pn, %bb.agu ], [ %.pn212, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit458 ], [ %.pn212, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit456 ], [ %i.bvd, %bb.afz ], [ %eh.lpad-body450, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit472 ], [ %eh.lpad-body450, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit470 ], [ %eh.lpad-body450, %bb.agh ], [ %.pn204.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit482 ], [ %.pn204.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit480 ], [ %.pn212, %bb.afr ], [ %i.bvd, %bb.aga ], [ %eh.lpad-body450, %bb.agi ], [ %.pn204.pn, %bb.agv ]
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 283, !dbg !107734
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ma, i8 0, i64 5, i1 false), !dbg !107734
  br label %bb.c, !dbg !107735

bb.ei:                                            ; preds = %bb.ej
  %i.mb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !dbg !107736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej), !dbg !107737
  br label %bb.c, !dbg !107738

bb.ej:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej), !dbg !107739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei), !dbg !107739
  store i64 0, ptr %i.ei, align 8, !dbg !107740, !alias.scope !107072
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ei, i64 8, !dbg !107740
  store ptr inttoptr (i64 8 to ptr), ptr %i.mc, align 8, !dbg !107740, !alias.scope !107072
  %i.md = getelementptr inbounds nuw i8, ptr %i.ei, i64 16, !dbg !107740
  store i64 0, ptr %i.md, align 8, !dbg !107740, !alias.scope !107072
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathE8from_vecCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ej, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ei)
          to label %_RNvXs1_NtCscgRAwXFJnXP_4core7convertINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEINtB5_4IntoINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferB15_EE4intoCsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.ei, !dbg !107741

_RNvXs1_NtCscgRAwXFJnXP_4core7convertINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEINtB5_4IntoINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferB15_EE4intoCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !dbg !107736
  %i.me = getelementptr inbounds nuw i8, ptr %i.cm, i64 8, !dbg !107742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.me, ptr noundef nonnull align 8 dereferenceable(24) %i.ej, i64 24, i1 false), !dbg !107743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej), !dbg !107737
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 32, !dbg !107742
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !107742
  store i64 18, ptr %i.cm, align 8, !dbg !107742
  br label %bb.ek, !dbg !107744

common.ret:                                       ; preds = %bb.aed, %bb.to, %bb.te, %bb.ek
  %.sink = phi i8 [ 4, %bb.aed ], [ 5, %bb.to ], [ 3, %bb.te ], [ 1, %bb.ek ]
  store i8 %.sink, ptr %i.ek, align 8, !dbg !107745
  ret void, !dbg !107745

bb.ek:                                            ; preds = %bb.aft, %_RNvXs1_NtCscgRAwXFJnXP_4core7convertINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEINtB5_4IntoINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferB15_EE4intoCsfcROwRM8ZtH_11polars_plan.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.cm, i64 72, i1 false), !dbg !107746
  br label %common.ret, !dbg !107746

bb.el:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @734) #50, !dbg !107489
  unreachable, !dbg !107489

bb.em:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @734) #50, !dbg !107489
  unreachable, !dbg !107489

bb.en:                                            ; preds = %bb.ha, %bb.gz
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %.body323, !dbg !107747

.body323:                                         ; preds = %.body.i, %bb.en
  %i.mg = phi ptr [ %i.mh, %bb.en ], [ %i.sc, %.body.i ]
  %eh.lpad-body324 = phi { ptr, i32 } [ %i.mf, %bb.en ], [ %.pn105.i, %.body.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvNtNtCslpwjCj2YNBy_9polars_io10path_utils12hugging_face15expand_paths_hf0ECsfcROwRM8ZtH_11polars_plan(ptr noundef nonnull align 8 %i.mg) #45
          to label %bb.va unwind label %bb.bn, !dbg !107748

bb.eo:                                            ; preds = %bb.a
  %.phi.trans.insert1429 = getelementptr inbounds nuw i8, ptr %1, i64 714
  %.pre1430 = load i8, ptr %.phi.trans.insert1429, align 2, !dbg !107733, !range !5089, !noalias !107073
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 296, !dbg !107732 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3348.sroa.17.i), !dbg !107733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !dbg !107733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !dbg !107733
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 714, !dbg !107733 ; 21 uses
  switch i8 %.pre1430, label %default.unreachable1515 [
    i8 0, label %bb.ep
    i8 1, label %bb.gz
    i8 2, label %bb.ha
    i8 3, label %bb.pb
    i8 4, label %bb.hc
  ], !dbg !107733

bb.ep:                                            ; preds = %.thread, %bb.eo
  %i.mj = phi ptr [ %i.lz, %.thread ], [ %i.mi, %bb.eo ] ; 8 uses
  %i.mk = phi ptr [ %i.ly, %.thread ], [ %i.mh, %bb.eo ] ; 9 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 713, !dbg !107749
  store i8 0, ptr %i.ml, align 1, !dbg !107749, !noalias !107073
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 472, !dbg !107749
  %i.mn = load ptr, ptr %i.mm, align 8, !dbg !107749, !noalias !107073, !nonnull !4698, !align !4821, !noundef !4698 ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 480, !dbg !107749
  %i.mp = load i64, ptr %i.mo, align 8, !dbg !107749, !noalias !107073, !noundef !4698 ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 715, !dbg !107750
  %i.mr = load i8, ptr %i.mq, align 1, !dbg !107750, !range !5104, !noalias !107073, !noundef !4698
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 704, !dbg !107751
  %i.mt = load ptr, ptr %i.ms, align 8, !dbg !107751, !noalias !107073, !nonnull !4698, !align !4821, !noundef !4698 ; 4 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 712, !dbg !107752
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 716, !dbg !107752
  %i.mw = load i8, ptr %i.mv, align 4, !dbg !107752, !range !5104, !noalias !107073, !noundef !4698
  store i8 %i.mw, ptr %i.mu, align 8, !dbg !107752, !noalias !107073
  %i.mx = icmp eq i64 %i.mp, 0, !dbg !107753
  br i1 %i.mx, label %bb.er, label %bb.eq, !dbg !107754, !prof !4710

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !dbg !107755, !noalias !107073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !dbg !107755, !noalias !107073
  invoke void @_RNvMs1_NtNtCs1lTGjXZLbkb_7reqwest10async_impl6clientNtB5_13ClientBuilder3new(ptr noalias noundef nonnull sret([1016 x i8]) align 8 captures(none) dereferenceable(1016) %i.ch)
          to label %bb.et unwind label %bb.es, !dbg !107755, !noalias !107074

bb.er:                                            ; preds = %bb.ep
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @743, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @744) #46
          to label %bb.gy unwind label %bb.gx, !dbg !107756, !noalias !107074

bb.es:                                            ; preds = %bb.eq
  %i.my = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !dbg !107757, !noalias !107073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !dbg !107758, !noalias !107073
  br label %.body.i, !dbg !107759

bb.et:                                            ; preds = %bb.eq
  %i.mz = load ptr, ptr @_RNvNtNtCslpwjCj2YNBy_9polars_io5cloud7options10USER_AGENT, align 8, !dbg !107760, !noalias !107073, !nonnull !4698, !noundef !4698
  %i.na = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCslpwjCj2YNBy_9polars_io5cloud7options10USER_AGENT, i64 8), align 8, !dbg !107760, !noalias !107073, !noundef !4698
  invoke fastcc void @_RINvMs2_NtNtCs1lTGjXZLbkb_7reqwest10async_impl6clientNtB6_13ClientBuilder10user_agentReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(1016) %i.ci, ptr noalias noundef align 8 captures(address) dereferenceable(1016) %i.ch, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.mz, i64 noundef %i.na)
          to label %bb.ev unwind label %bb.eu, !dbg !107761, !noalias !107074

bb.eu:                                            ; preds = %bb.et
  %i.nb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !dbg !107757, !noalias !107073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !dbg !107758, !noalias !107073
  br label %.body.i, !dbg !107759

bb.ev:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !dbg !107757, !noalias !107073
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ci, i64 995, !dbg !107762 ; 2 uses
  store i8 0, ptr %i.nc, align 1, !dbg !107762, !alias.scope !107076, !noalias !107077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(994) %i.cj, ptr noundef nonnull align 8 dereferenceable(994) %i.ci, i64 994, i1 false), !dbg !107763, !noalias !107073
  %.sroa.7.0..sroa_idx275.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 995, !dbg !107764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %.sroa.7.0..sroa_idx275.i, ptr noundef nonnull align 1 dereferenceable(21) %i.nc, i64 21, i1 false), !dbg !107763, !noalias !107073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !dbg !107758, !noalias !107073
  %.sroa.6.0..sroa_idx273.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 994, !dbg !107764
  store i8 1, ptr %.sroa.6.0..sroa_idx273.i, align 2, !dbg !107764, !alias.scope !107078, !noalias !107073
  %i.nd = load i64, ptr %i.mt, align 8, !dbg !107765, !range !4858, !noalias !107074, !noundef !4698
  %.not.i322 = icmp eq i64 %i.nd, 2, !dbg !107765
  br i1 %.not.i322, label %bb.gf, label %bb.ew, !dbg !107766

bb.ew:                                            ; preds = %bb.ev
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mt, i64 104, !dbg !107765
  %i.nf = load i64, ptr %i.ne, align 8, !dbg !107765, !range !5129, !noalias !107074, !noundef !4698
  %cond.i = icmp eq i64 %i.nf, 3, !dbg !107766
  br i1 %cond.i, label %bb.ey, label %bb.gf, !dbg !107766

bb.ex:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1d9mkheQt2j_4http6header4name10HeaderNameECsfcROwRM8ZtH_11polars_plan.exit55.i.i, %bb.fk, %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs1d9mkheQt2j_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.fb, %bb.fa
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk, !dbg !107767

bb.ey:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !dbg !107768, !noalias !107073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %i.cg, ptr noundef nonnull align 8 dereferenceable(1016) %i.cj, i64 1016, i1 false), !dbg !107768, !noalias !107073
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i), !dbg !107769
  %i.nh = getelementptr i8, ptr %i.mt, i64 120, !dbg !107770
  %.val123.i = load ptr, ptr %i.nh, align 8, !dbg !107770, !noalias !107074, !nonnull !4698, !noundef !4698 ; 2 uses
  %i.ni = getelementptr i8, ptr %i.mt, i64 128, !dbg !107770
  %.val124.i = load i64, ptr %i.ni, align 8, !dbg !107770, !noalias !107074, !noundef !4698 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !107079), !dbg !107769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !dbg !107771, !noalias !107073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !dbg !107771, !noalias !107080
  %i.nj = icmp eq i64 %.val124.i, 0, !dbg !107772 ; 2 uses
  br i1 %i.nj, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtCs1d9mkheQt2j_4http6header3map9HeaderMapNtBJ_14MaxSizeReachedE6expectCsfcROwRM8ZtH_11polars_plan.exit.i.i, label %bb.ez, !dbg !107772

bb.ez:                                            ; preds = %bb.ey
  %i.nk = udiv i64 %.val124.i, 3, !dbg !107773
  %i.nl = add nuw nsw i64 %i.nk, %.val124.i, !dbg !107774 ; 2 uses
  %i.nm = icmp samesign ult i64 %i.nl, 2, !dbg !107775
  %i.nn = add nsw i64 %i.nl, -1, !dbg !107775
  %i.no = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.nn, i1 true), !dbg !107775
  %i.np = lshr i64 -1, %i.no, !dbg !107775
  %.sroa.013.0.i.i.i = select i1 %i.nm, i64 0, i64 %i.np, !dbg !107775 ; 4 uses
  %i.nq = add nuw nsw i64 %.sroa.013.0.i.i.i, 1, !dbg !107776 ; 4 uses
  %i.nr = icmp samesign ugt i64 %.sroa.013.0.i.i.i, 32767, !dbg !107777
  br i1 %i.nr, label %bb.fk, label %bb.fa, !dbg !107777

bb.fa:                                            ; preds = %bb.ez
  %i.ns = trunc nuw nsw i64 %.sroa.013.0.i.i.i to i16, !dbg !107778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !107779, !noalias !107081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !dbg !107780, !noalias !107082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !107781, !noalias !107082
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, i64 noundef %i.nq, i1 noundef zeroext false, i64 noundef 2, i64 noundef 4)
          to label %.noexc.i unwind label %bb.ex, !dbg !107781, !noalias !107074

.noexc.i:                                         ; preds = %bb.fa
  %i.nt = load i64, ptr %i.ba, align 8, !dbg !107781, !range !4740, !noalias !107082, !noundef !4698
  %i.nu = trunc nuw i64 %i.nt to i1, !dbg !107782
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8, !dbg !107783
  %i.nw = load i64, ptr %i.nv, align 8, !dbg !107783, !range !4741, !noalias !107082, !noundef !4698 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16, !dbg !107783 ; 2 uses
  br i1 %i.nu, label %bb.fb, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i, !dbg !107782, !prof !4710

bb.fb:                                            ; preds = %.noexc.i
  %i.ny = load i64, ptr %i.nx, align 8, !dbg !107784, !noalias !107082
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.nw, i64 %i.ny) #46
          to label %.noexc138.i unwind label %bb.ex, !dbg !107785, !noalias !107074

.noexc138.i:                                      ; preds = %bb.fb
  unreachable, !dbg !107785

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i: ; preds = %.noexc.i
  %i.nz = load ptr, ptr %i.nx, align 8, !dbg !107786, !noalias !107082, !nonnull !4698, !noundef !4698
  %i.oa = icmp ult i64 %.sroa.013.0.i.i.i, %i.nw, !dbg !107787
  call void @llvm.assume(i1 %i.oa), !dbg !107788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !107789, !noalias !107082
  store i64 %i.nw, ptr %i.bb, align 8, !dbg !107790, !noalias !107082
  %i.ob = getelementptr inbounds nuw i8, ptr %i.bb, i64 8, !dbg !107790
  store ptr %i.nz, ptr %i.ob, align 8, !dbg !107790, !noalias !107082
  %i.oc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16, !dbg !107790
  store i64 0, ptr %i.oc, align 8, !dbg !107790, !noalias !107082
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1d9mkheQt2j_4http6header3map3PosE11extend_withCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb, i64 noundef %i.nq, i16 noundef -1, i16 noundef 0)
          to label %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs1d9mkheQt2j_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.fc, !dbg !107791, !noalias !107083

bb.fc:                                            ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i
  %i.od = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1d9mkheQt2j_4http6header3map3PosEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.bb) #45
          to label %bb.gk unwind label %bb.fd, !dbg !107792, !noalias !107083

bb.fd:                                            ; preds = %bb.fc
  %i.oe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !107793, !noalias !107083
  unreachable, !dbg !107793

_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs1d9mkheQt2j_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !dbg !107794, !noalias !107081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !dbg !107792, !noalias !107082
  %i.of = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs1d9mkheQt2j_4http6header3map3PosE16into_boxed_sliceCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bd)
          to label %.noexc141.i unwind label %bb.ex, !dbg !107795, !noalias !107074 ; 2 uses

.noexc141.i:                                      ; preds = %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs1d9mkheQt2j_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan.exit.i.i.i
  %i.og = extractvalue { ptr, i64 } %i.of, 0, !dbg !107795 ; 4 uses
  %i.oh = extractvalue { ptr, i64 } %i.of, 1, !dbg !107795 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !107796, !noalias !107081
  %i.oi = lshr i64 %i.nq, 2, !dbg !107797
  %i.oj = sub nuw nsw i64 %i.nq, %i.oi, !dbg !107798 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !107799, !noalias !107081
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bc, i64 noundef %i.oj, i1 noundef zeroext false, i64 noundef 8, i64 noundef 104)
          to label %bb.fg unwind label %bb.fe, !dbg !107799, !noalias !107084

bb.fe:                                            ; preds = %bb.fh, %.noexc141.i
  %i.ok = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ol = icmp eq i64 %i.oh, 0, !dbg !107800
  br i1 %i.ol, label %bb.gk, label %bb.ff, !dbg !107800

bb.ff:                                            ; preds = %bb.fe
  %i.om = shl nuw nsw i64 %i.oh, 2, !dbg !107801
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.og) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.og, i64 noundef range(i64 1, 0) %i.om, i64 noundef 2) #48, !dbg !107802, !noalias !107084
  br label %bb.gk, !dbg !107803

bb.fg:                                            ; preds = %.noexc141.i
  %i.on = load i64, ptr %i.bc, align 8, !dbg !107799, !range !4740, !noalias !107081, !noundef !4698
  %i.oo = trunc nuw i64 %i.on to i1, !dbg !107804
  %i.op = getelementptr inbounds nuw i8, ptr %i.bc, i64 8, !dbg !107805
  %i.oq = load i64, ptr %i.op, align 8, !dbg !107805, !range !4741, !noalias !107081, !noundef !4698 ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.bc, i64 16, !dbg !107805 ; 2 uses
  br i1 %i.oo, label %bb.fh, label %bb.fi, !dbg !107804, !prof !4710

bb.fh:                                            ; preds = %bb.fg
  %i.os = load i64, ptr %i.or, align 8, !dbg !107806, !noalias !107081
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.oq, i64 %i.os) #46
          to label %bb.fj unwind label %bb.fe, !dbg !107807, !noalias !107084

bb.fi:                                            ; preds = %bb.fg
  %i.ot = load ptr, ptr %i.or, align 8, !dbg !107808, !noalias !107081, !nonnull !4698, !noundef !4698
  %i.ou = icmp samesign ule i64 %i.oj, %i.oq, !dbg !107809
  call void @llvm.assume(i1 %i.ou), !dbg !107810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !107811, !noalias !107081
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.og) ]
  br label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtCs1d9mkheQt2j_4http6header3map9HeaderMapNtBJ_14MaxSizeReachedE6expectCsfcROwRM8ZtH_11polars_plan.exit.i.i, !dbg !107812

bb.fj:                                            ; preds = %bb.fh
  unreachable

bb.fk:                                            ; preds = %bb.ez
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @808, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #46
          to label %.noexc142.i unwind label %bb.ex, !dbg !107813, !noalias !107074

.noexc142.i:                                      ; preds = %bb.fk
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtCs1d9mkheQt2j_4http6header3map9HeaderMapNtBJ_14MaxSizeReachedE6expectCsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %bb.fi, %bb.ey
  %.sroa.21.0.ph.i.i = phi i16 [ %i.ns, %bb.fi ], [ 0, %bb.ey ]
  %.sroa.19.0.ph.i.i = phi i64 [ %i.oh, %bb.fi ], [ 0, %bb.ey ]
  %.sroa.17.0.ph.i.i = phi ptr [ %i.og, %bb.fi ], [ inttoptr (i64 2 to ptr), %bb.ey ] ; 2 uses
  %.sroa.9.0.ph.i.i = phi ptr [ %i.ot, %bb.fi ], [ inttoptr (i64 8 to ptr), %bb.ey ] ; 2 uses
  %.sroa.757.0.ph.i.i = phi i64 [ %i.oq, %bb.fi ], [ 0, %bb.ey ] ; 2 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 40, !dbg !107814 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !dbg !107815, !noalias !107080
  store i64 0, ptr %i.bm, align 8, !dbg !107814, !alias.scope !107085, !noalias !107080
  %.sroa.757.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 24, !dbg !107814 ; 2 uses
  store i64 %.sroa.757.0.ph.i.i, ptr %.sroa.757.0..sroa_idx.i.i, align 8, !dbg !107814, !alias.scope !107085, !noalias !107080
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 32, !dbg !107814 ; 2 uses
  store ptr %.sroa.9.0.ph.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !dbg !107814, !alias.scope !107085, !noalias !107080
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 56, !dbg !107814 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.13.0..sroa_idx.i.i, align 8, !dbg !107814, !alias.scope !107085, !noalias !107080
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 64, !dbg !107814 ; 2 uses
  store i64 0, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !dbg !107814, !alias.scope !107085, !noalias !107080
  %.sroa.17.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 72, !dbg !107814 ; 2 uses
  store ptr %.sroa.17.0.ph.i.i, ptr %.sroa.17.0..sroa_idx.i.i, align 8, !dbg !107814, !alias.scope !107085, !noalias !107080
  %.sroa.19.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 80, !dbg !107814 ; 3 uses
  store i64 %.sroa.19.0.ph.i.i, ptr %.sroa.19.0..sroa_idx.i.i, align 8, !dbg !107814, !alias.scope !107085, !noalias !107080
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 88, !dbg !107814
  store i16 %.sroa.21.0.ph.i.i, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !dbg !107814, !alias.scope !107085, !noalias !107080
  %.idx.i.i = mul nuw nsw i64 %.val124.i, 48, !dbg !107816
  %i.ov = getelementptr inbounds nuw i8, ptr %.val123.i, i64 %.idx.i.i, !dbg !107816
  br i1 %i.nj, label %.loopexit.i.thread, label %.lr.ph.i.i, !dbg !107817

.loopexit.i.thread:                               ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtCs1d9mkheQt2j_4http6header3map9HeaderMapNtBJ_14MaxSizeReachedE6expectCsfcROwRM8ZtH_11polars_plan.exit.i.i
  %i.ow = ptrtoint ptr %.sroa.17.0.ph.i.i to i64, !dbg !107817
  %i.ox = ptrtoint ptr %.sroa.9.0.ph.i.i to i64, !dbg !107817
  %i.oy = inttoptr i64 %.sroa.757.0.ph.i.i to ptr, !dbg !107817
  %.sroa.8281.0..sroa_idx.i1524 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8, !dbg !107818
  %.sroa.8281.0.copyload.i1525 = load i64, ptr %.sroa.8281.0..sroa_idx.i1524, align 8, !dbg !107818, !noalias !107087
  %.sroa.12.0..sroa_idx.i1526 = getelementptr inbounds nuw i8, ptr %i.bm, i64 16, !dbg !107818
  %.sroa.12.sroa.0.0.copyload.i1527 = load i64, ptr %.sroa.12.0..sroa_idx.i1526, align 8, !dbg !107818, !noalias !107087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19.0..sroa_idx.i.i, i64 16, i1 false), !dbg !107818, !noalias !107087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !dbg !107819, !noalias !107080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !dbg !107820, !noalias !107073
  br label %bb.gc, !dbg !107821

.lr.ph.i.i:                                       ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtCs1d9mkheQt2j_4http6header3map9HeaderMapNtBJ_14MaxSizeReachedE6expectCsfcROwRM8ZtH_11polars_plan.exit.i.i
  %i.oz = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.pa = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.pc = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.pd = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.pe = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %.sroa.68.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.sroa.68.i.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %.sroa.6.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %.sroa.6.i.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 3 uses
  %.sroa.6.i.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %.sroa.621.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.621.i.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %.sroa.615.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.615.i.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.sroa.615.i.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  br label %bb.fl, !dbg !107817

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1d9mkheQt2j_4http6header4name10HeaderNameECsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %bb.fq, %bb.fp, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.pn.i.i = phi { ptr, i32 } [ %lpad.phi74.i.i, %bb.fp ], [ %lpad.phi74.i.i, %bb.fq ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1d9mkheQt2j_4http6header3map9HeaderMapECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(96) %i.bm) #45
          to label %bb.gk unwind label %bb.ga, !dbg !107819, !noalias !107088

.loopexit.i.i:                                    ; preds = %bb.fx, %bb.ft, %bb.fl
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1d9mkheQt2j_4http6header4name10HeaderNameECsfcROwRM8ZtH_11polars_plan.exit.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.fz, %bb.fv, %bb.fn
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1d9mkheQt2j_4http6header4name10HeaderNameECsfcROwRM8ZtH_11polars_plan.exit.i.i

bb.fl:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs1d9mkheQt2j_4http6header5value11HeaderValueEECsfcROwRM8ZtH_11polars_plan.exit.i.i, %.lr.ph.i.i
  %.sroa.029.075.i.i = phi ptr [ %.val123.i, %.lr.ph.i.i ], [ %i.pg, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs1d9mkheQt2j_4http6header5value11HeaderValueEECsfcROwRM8ZtH_11polars_plan.exit.i.i ] ; 5 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.029.075.i.i, i64 48, !dbg !107822 ; 2 uses
  %i.ph = getelementptr i8, ptr %.sroa.029.075.i.i, i64 8, !dbg !107823
  %.sroa.029.0.val.i.i = load ptr, ptr %i.ph, align 8, !dbg !107823, !alias.scope !107079, !noalias !107089, !nonnull !4698, !noundef !4698
  %i.pi = getelementptr i8, ptr %.sroa.029.075.i.i, i64 16, !dbg !107823
  %.sroa.029.0.val51.i.i = load i64, ptr %i.pi, align 8, !dbg !107823, !alias.scope !107079, !noalias !107089, !noundef !4698
  %i.pj = getelementptr i8, ptr %.sroa.029.075.i.i, i64 32, !dbg !107824
  %.val.i.i = load ptr, ptr %i.pj, align 8, !dbg !107824, !alias.scope !107079, !noalias !107089, !nonnull !4698, !noundef !4698
  %i.pk = getelementptr i8, ptr %.sroa.029.075.i.i, i64 40, !dbg !107824
  %.val50.i.i = load i64, ptr %i.pk, align 8, !dbg !107824, !alias.scope !107079, !noalias !107089, !noundef !4698
end_hunk_0
