Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.00?download=true
inline.NumInlined: 20395
inline.NumDeleted: 5965
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RNvXs2_NtNtCsidoPH4Qgqxm_12polars_async8executor4taskINtB5_4TaskNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components21partition_distributorNtB15_20PartitionDistributor3run0NCINvB7_5spawnB10_E0NtB7_12TaskMetadataEINtB5_8RunnableB3l_E3runB1d_:bb.a
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !dbg !193785, !noalias !193330
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !dbg !193785, !noalias !193330
  store i32 3, ptr %.sroa.44.0..sroa_idx.i290.i.i.i.i, align 8, !dbg !193785, !noalias !193330
  %i.ih = invoke noundef nonnull ptr @_RNvXsX_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtCscgRAwXFJnXP_4core7default7Default7defaultCs2g09Ig8GZd6_13polars_stream()
          to label %bb.ci unwind label %bb.cf, !dbg !193786, !noalias !193335

bb.cf:                                            ; preds = %bb.ce
  %i.ii = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(48) %i.e) #33
          to label %.body291.i.i.i.i unwind label %bb.cg, !dbg !193787, !noalias !193335

bb.cg:                                            ; preds = %bb.cf
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !193788, !noalias !193335
  unreachable, !dbg !193788

.body291.i.i.i.i:                                 ; preds = %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !193336), !dbg !193780
  call void @llvm.experimental.noalias.scope.decl(metadata !193337), !dbg !193789
  %i.ik = load ptr, ptr %i.aq, align 8, !dbg !193790, !alias.scope !193338, !noalias !193288, !nonnull !5425, !noundef !5425
  %i.il = atomicrmw add ptr %i.ik, i64 -1 release, align 8, !dbg !193791, !noalias !193339
  %i.im = icmp eq i64 %i.il, 1, !dbg !193792
  br i1 %i.im, label %bb.ch, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !193792

bb.ch:                                            ; preds = %.body291.i.i.i.i
  fence acquire, !dbg !193793
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq) #32
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i unwind label %bb.dz, !dbg !193794, !noalias !193289

bb.ci:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !dbg !193788, !noalias !193288
  store i64 0, ptr %i.gg, align 8, !dbg !193788, !alias.scope !193329, !noalias !193288
  store i32 0, ptr %i.gh, align 8, !dbg !193788, !alias.scope !193329, !noalias !193288
  store i64 0, ptr %i.gi, align 8, !dbg !193788, !alias.scope !193329, !noalias !193288
  store i32 0, ptr %i.gj, align 8, !dbg !193788, !alias.scope !193329, !noalias !193288
  store i64 0, ptr %i.gk, align 8, !dbg !193788, !alias.scope !193329, !noalias !193288
  store ptr %i.ih, ptr %i.gl, align 8, !dbg !193788, !alias.scope !193329, !noalias !193288
  store ptr null, ptr %i.gm, align 8, !dbg !193788, !alias.scope !193329, !noalias !193288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !193787, !noalias !193330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i64 48, i1 false), !dbg !193767, !noalias !193288
  store i64 0, ptr %i.gn, align 8, !dbg !193767, !noalias !193288
  store i32 0, ptr %i.go, align 8, !dbg !193767, !noalias !193288
  store i64 0, ptr %i.gp, align 8, !dbg !193767, !noalias !193288
  store i32 0, ptr %i.gq, align 8, !dbg !193767, !noalias !193288
  store i64 0, ptr %i.gr, align 8, !dbg !193767, !noalias !193288
  %i.in = load ptr, ptr %i.aq, align 8, !dbg !193767, !noalias !193288, !nonnull !5425, !noundef !5425
  store ptr %i.in, ptr %i.gs, align 8, !dbg !193767, !noalias !193288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gt, ptr noundef nonnull align 8 dereferenceable(40) %i.gm, i64 40, i1 false), !dbg !193767, !noalias !193288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !193780, !noalias !193288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !193780, !noalias !193288
  invoke void @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2mZqlW55729_12polars_utils11small_bytes10SmallBytesNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components15partition_state14PartitionStateNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullB1S_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.at, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.as)
          to label %bb.ck unwind label %bb.cj, !dbg !193795, !noalias !193289

bb.cj:                                            ; preds = %bb.ci
  %i.io = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !193796, !noalias !193288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !193796, !noalias !193288
  br label %.body295.i.i.i.i, !dbg !193797

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !193796, !noalias !193288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !193796, !noalias !193288
  %i.ip = load i64, ptr %i.au, align 8, !dbg !193765, !noalias !193288, !noundef !5425
  %i.iq = load i64, ptr %i.gu, align 8, !dbg !193798, !range !5518, !alias.scope !193340, !noalias !193288, !noundef !5425
  %i.ir = icmp eq i64 %i.iq, -9223372036854775808, !dbg !193798
  br i1 %i.ir, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTjINtNtB4_6option6OptionNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components15partition_state14PartitionStateEEEB1e_.exit.i.i.i.i, label %bb.cl, !dbg !193798

bb.cl:                                            ; preds = %bb.ck
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.gu)
          to label %bb.co unwind label %bb.cm, !dbg !193799, !noalias !193289

bb.cm:                                            ; preds = %bb.cl
  %i.is = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !193341), !dbg !193799
  call void @llvm.experimental.noalias.scope.decl(metadata !193342), !dbg !193800
  %i.it = load ptr, ptr %i.gv, align 8, !dbg !193801, !alias.scope !193343, !noalias !193288, !nonnull !5425, !noundef !5425
  %i.iu = atomicrmw add ptr %i.it, i64 -1 release, align 8, !dbg !193802, !noalias !193344
  %i.iv = icmp eq i64 %i.iu, 1, !dbg !193803
  br i1 %i.iv, label %bb.cn, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i, !dbg !193803

bb.cn:                                            ; preds = %bb.cm
  fence acquire, !dbg !193804
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gv) #32
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i unwind label %bb.ct, !dbg !193805, !noalias !193289

bb.co:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !193345), !dbg !193799
  call void @llvm.experimental.noalias.scope.decl(metadata !193346), !dbg !193806
  %i.iw = load ptr, ptr %i.gv, align 8, !dbg !193807, !alias.scope !193347, !noalias !193288, !nonnull !5425, !noundef !5425
  %i.ix = atomicrmw add ptr %i.iw, i64 -1 release, align 8, !dbg !193808, !noalias !193348
  %i.iy = icmp eq i64 %i.ix, 1, !dbg !193809
  br i1 %i.iy, label %bb.cp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit3.i.i.i.i.i.i.i, !dbg !193809

bb.cp:                                            ; preds = %bb.co
  fence acquire, !dbg !193810
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gv) #32
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit3.i.i.i.i.i.i.i unwind label %bb.cr, !dbg !193811, !noalias !193289

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i: ; preds = %bb.cr, %bb.cn, %bb.cm
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.jb, %bb.cr ], [ %i.is, %bb.cn ], [ %i.is, %bb.cm ] ; 2 uses
  %i.iz = load ptr, ptr %i.gw, align 8, !dbg !193812, !alias.scope !193349, !noalias !193288, !noundef !5425
  %i.ja = icmp eq ptr %i.iz, null, !dbg !193812
  br i1 %i.ja, label %.body295.i.i.i.i, label %bb.cq, !dbg !193812

bb.cq:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9file_sink16FileSinkTaskDataEBQ_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.gw)
          to label %.body295.i.i.i.i unwind label %bb.ct, !dbg !193812, !noalias !193289

bb.cr:                                            ; preds = %bb.cp
  %i.jb = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit3.i.i.i.i.i.i.i: ; preds = %bb.cp, %bb.co
  %i.jc = load ptr, ptr %i.gw, align 8, !dbg !193813, !alias.scope !193350, !noalias !193288, !noundef !5425
  %i.jd = icmp eq ptr %i.jc, null, !dbg !193813
  br i1 %i.jd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTjINtNtB4_6option6OptionNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components15partition_state14PartitionStateEEEB1e_.exit.i.i.i.i, label %bb.cs, !dbg !193813

bb.cs:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit3.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9file_sink16FileSinkTaskDataEBQ_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.gw)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTjINtNtB4_6option6OptionNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components15partition_state14PartitionStateEEEB1e_.exit.i.i.i.i unwind label %bb.cu, !dbg !193813, !noalias !193289

bb.ct:                                            ; preds = %bb.cq, %bb.cn
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !193799, !noalias !193289
  unreachable, !dbg !193799

.body295.i.i.i.i:                                 ; preds = %bb.cu, %bb.cq, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i, %bb.cj
  %.pn148.i.i.i.i = phi { ptr, i32 } [ %i.io, %bb.cj ], [ %i.jf, %bb.cu ], [ %.pn.i.i.i.i.i.i.i, %bb.cq ], [ %.pn.i.i.i.i.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(48) %i.ap) #33
          to label %bb.es unwind label %bb.dz, !dbg !193797, !noalias !193289

bb.cu:                                            ; preds = %bb.cs
  %i.jf = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body295.i.i.i.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTjINtNtB4_6option6OptionNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components15partition_state14PartitionStateEEEB1e_.exit.i.i.i.i: ; preds = %bb.cs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit3.i.i.i.i.i.i.i, %bb.ck
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(48) %i.ap)
          to label %bb.cx unwind label %bb.cv, !dbg !193797, !noalias !193289

bb.cv:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTjINtNtB4_6option6OptionNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components15partition_state14PartitionStateEEEB1e_.exit.i.i.i.i
  %i.jg = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !193351), !dbg !193797
  call void @llvm.experimental.noalias.scope.decl(metadata !193352), !dbg !193814
  %i.jh = load ptr, ptr %i.gl, align 8, !dbg !193815, !alias.scope !193353, !noalias !193288, !nonnull !5425, !noundef !5425
  %i.ji = atomicrmw add ptr %i.jh, i64 -1 release, align 8, !dbg !193816, !noalias !193354
  %i.jj = icmp eq i64 %i.ji, 1, !dbg !193817
  br i1 %i.jj, label %bb.cw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit298.i.i.i.i, !dbg !193817

bb.cw:                                            ; preds = %bb.cv
  fence acquire, !dbg !193818
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gl) #32
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit298.i.i.i.i unwind label %bb.dz, !dbg !193819, !noalias !193289

bb.cx:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTjINtNtB4_6option6OptionNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components15partition_state14PartitionStateEEEB1e_.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !193355), !dbg !193797
  call void @llvm.experimental.noalias.scope.decl(metadata !193356), !dbg !193820
  %i.jk = load ptr, ptr %i.gl, align 8, !dbg !193821, !alias.scope !193357, !noalias !193288, !nonnull !5425, !noundef !5425
  %i.jl = atomicrmw add ptr %i.jk, i64 -1 release, align 8, !dbg !193822, !noalias !193358
  %i.jm = icmp eq i64 %i.jl, 1, !dbg !193823
  br i1 %i.jm, label %bb.cy, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit300.i.i.i.i, !dbg !193823

bb.cy:                                            ; preds = %bb.cx
  fence acquire, !dbg !193824
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gl) #32
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit300.i.i.i.i unwind label %bb.cz, !dbg !193825, !noalias !193289

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit298.i.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils11small_bytes10SmallBytesECs2g09Ig8GZd6_13polars_stream.exit320.i.i.i.i, %bb.et, %bb.es, %bb.cz, %bb.cw, %bb.cv
  %.pn150.i.i.i.i = phi { ptr, i32 } [ %i.jn, %bb.cz ], [ %i.ii, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils11small_bytes10SmallBytesECs2g09Ig8GZd6_13polars_stream.exit320.i.i.i.i ], [ %i.jg, %bb.cv ], [ %i.jg, %bb.cw ], [ %.pn148.i.i.i.i, %bb.et ], [ %.pn148.i.i.i.i, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !193797, !noalias !193288
  br label %bb.ev, !dbg !193761

bb.cz:                                            ; preds = %bb.cy
  %i.jn = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit298.i.i.i.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit300.i.i.i.i: ; preds = %bb.cy, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !193797, !noalias !193288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !193797, !noalias !193288
  br label %bb.da, !dbg !193764

bb.da:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit300.i.i.i.i, %bb.bx
  %.sroa.031.0.i.i.i.i = phi i8 [ 1, %bb.bx ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit300.i.i.i.i ], !dbg !193826 ; 12 uses
  %.sroa.08.0.i.i.i.i = phi i64 [ %i.ib, %bb.bx ], [ %i.ip, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECs2g09Ig8GZd6_13polars_stream.exit300.i.i.i.i ], !dbg !193827 ; 5 uses
  %.val233.i.i.i.i = load i64, ptr %i.gx, align 8, !dbg !193828, !noalias !193288, !noundef !5425 ; 3 uses
  %i.jo = uitofp i64 %.val233.i.i.i.i to double, !dbg !193829
  %i.jp = fdiv double %i.jo, %i.gz, !dbg !193830
  %i.jq = fmul double %i.jp, %i.gy, !dbg !193831
  %i.jr = call i64 @llvm.fptoui.sat.i64.f64(double %i.jq), !dbg !193832
  %.val250.i.i.i.i = load ptr, ptr %i.ha, align 8, !dbg !193833, !noalias !193288 ; 2 uses
  %.val251.i.i.i.i = load i64, ptr %i.hb, align 8, !dbg !193833, !noalias !193288, !noundef !5425
  %.not1061.i.i.i.i = icmp ult i64 %.sroa.08.0.i.i.i.i, %.val251.i.i.i.i, !dbg !193834
  %i.js = getelementptr inbounds nuw [160 x i8], ptr %.val250.i.i.i.i, i64 %.sroa.08.0.i.i.i.i, !dbg !193834 ; 18 uses
  br i1 %.not1061.i.i.i.i, label %bb.dc, label %bb.db, !dbg !193835, !prof !5572

bb.db:                                            ; preds = %bb.da
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @519) #35
          to label %.noexc223.i.i.i.i unwind label %bb.de, !dbg !193836, !noalias !193289

.noexc223.i.i.i.i:                                ; preds = %bb.db
  unreachable, !dbg !193836

bb.dc:                                            ; preds = %bb.da
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val250.i.i.i.i) ]
  %i.jt = icmp ugt i64 %.val233.i.i.i.i, 4294967295, !dbg !193837
  %i.ju = trunc nuw i64 %.val233.i.i.i.i to i32, !dbg !193837
  br i1 %i.jt, label %bb.dd, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !193838, !prof !5434

bb.dd:                                            ; preds = %bb.dc
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1019, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1028, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @520) #37
          to label %.noexc230.i.i.i.i unwind label %bb.de, !dbg !193839, !noalias !193289

.noexc230.i.i.i.i:                                ; preds = %bb.dd
  unreachable

bb.de:                                            ; preds = %bb.dd, %bb.db
  %i.jv = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.ex

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !193840, !noalias !193288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef nonnull align 8 dereferenceable(48) %i.aw, i64 48, i1 false), !dbg !193840, !noalias !193288
  %i.jw = invoke noundef nonnull align 8 ptr @_RNvMNtCs1LHh8CLbVkQ_11polars_core5frameNtNtB2_9dataframe9DataFrame26vstack_mut_owned_unchecked(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.js, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ao)
          to label %bb.dg unwind label %bb.df, !dbg !193841, !noalias !193289 ; 0 uses

bb.df:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.jx = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !193842, !noalias !193288
  br label %.thread953.i.i.i.i, !dbg !193843

bb.dg:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !193842, !noalias !193288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !193844, !noalias !193288
  %i.jy = getelementptr inbounds nuw i8, ptr %i.js, i64 56, !dbg !193844 ; 2 uses
  %i.jz = load i64, ptr %i.jy, align 8, !dbg !193844, !noalias !193289, !noundef !5425
  %i.ka = getelementptr inbounds nuw i8, ptr %i.js, i64 64, !dbg !193844 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 8, !dbg !193844, !noalias !193289, !noundef !5425
  invoke void @_RNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components4sizeNtB2_15RowCountAndSize3add(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.an, i64 noundef %i.jz, i32 noundef %i.kb, i64 noundef %i.jr, i32 noundef %i.ju)
          to label %bb.dh unwind label %bb.di, !dbg !193845, !noalias !193289

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.experimental.noalias.scope.decl(metadata !193360), !dbg !193844
  %i.kc = load i64, ptr %i.an, align 8, !dbg !193846, !range !5556, !alias.scope !193361, !noalias !193288, !noundef !5425 ; 2 uses
  %.not.i305.i.i.i.i = icmp eq i64 %i.kc, 18, !dbg !193846
  %i.kd = load i64, ptr %i.hc, align 8, !dbg !193847, !alias.scope !193362, !noalias !193288 ; 2 uses
  %i.ke = load i32, ptr %i.hd, align 8, !dbg !193847, !alias.scope !193362, !noalias !193288 ; 2 uses
  br i1 %.not.i305.i.i.i.i, label %bb.dj, label %bb.ei, !dbg !193848

bb.di:                                            ; preds = %bb.dg
  %i.kf = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !193849, !noalias !193288
  br label %.thread953.i.i.i.i, !dbg !193843

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !193849, !noalias !193288
  store i64 %i.kd, ptr %i.jy, align 8, !dbg !193850, !noalias !193289
  store i32 %i.ke, ptr %i.ka, align 8, !dbg !193850, !noalias !193289
  %i.kg = invoke { i64, i32 } @_RNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components15partition_stateNtB2_14PartitionState13buffered_size(ptr noundef nonnull align 8 %i.js)
          to label %bb.dk unwind label %bb.ed, !dbg !193851, !noalias !193289 ; 2 uses

bb.dk:                                            ; preds = %bb.dj
  %i.kh = extractvalue { i64, i32 } %i.kg, 0, !dbg !193852
  %i.ki = extractvalue { i64, i32 } %i.kg, 1, !dbg !193852
  %i.kj = invoke { i32, i32 } @_RNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components23partition_morsel_senderNtB2_21PartitionMorselSender17next_rows_to_take(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.he, i64 noundef %i.kh, i32 noundef %i.ki, i1 noundef zeroext false)
          to label %bb.dl unwind label %bb.ed, !dbg !193853, !noalias !193289

bb.dl:                                            ; preds = %bb.dk
  %i.kk = extractvalue { i32, i32 } %i.kj, 0, !dbg !193854
  %.not1062.i.i.i.i = icmp eq i32 %i.kk, 0, !dbg !193855
  br i1 %.not1062.i.i.i.i, label %bb.dm, label %bb.dn, !dbg !193856

bb.dm:                                            ; preds = %.thread945.i.i.i.i, %bb.ec, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !193750, !noalias !193288
  %i.kl = trunc nuw i8 %.sroa.031.0.i.i.i.i to i1, !dbg !193750
  br i1 %i.kl, label %bb.ef, label %bb.ee, !dbg !193750

bb.dn:                                            ; preds = %bb.dl
  %i.km = getelementptr inbounds nuw i8, ptr %i.js, i64 96, !dbg !193857 ; 6 uses
  %.val257.i.i.i.i = load ptr, ptr %i.km, align 8, !dbg !193858, !noalias !193289, !noundef !5425
  %.not.i306.i.i.i.i = icmp eq ptr %.val257.i.i.i.i, null, !dbg !193859
  br i1 %.not.i306.i.i.i.i, label %bb.do, label %.thread945.i.i.i.i, !dbg !193857

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !193860, !noalias !193288
  %.val239.i.i.i.i = load ptr, ptr %i.hf, align 8, !dbg !193861, !noalias !193288, !nonnull !5425, !noundef !5425 ; 2 uses
  %i.kn = atomicrmw add ptr %.val239.i.i.i.i, i64 1 monotonic, align 8, !dbg !193862, !noalias !193289
  %i.ko = icmp slt i64 %i.kn, 0, !dbg !193863
  br i1 %i.ko, label %bb.dp, label %_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync9semaphore9SemaphoreENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !193863

bb.dp:                                            ; preds = %bb.do
  call void @llvm.trap(), !dbg !193864
  unreachable, !dbg !193864

_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync9semaphore9SemaphoreENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.do
  invoke void @_RNvMNtNtCskmDBXs7hs3c_5tokio4sync9semaphoreNtB2_9Semaphore17try_acquire_owned(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.am, ptr noundef nonnull %.val239.i.i.i.i)
          to label %bb.dq unwind label %.thread934.i.i.i.i, !dbg !193865, !noalias !193289

bb.dq:                                            ; preds = %_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync9semaphore9SemaphoreENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.kp = load ptr, ptr %i.am, align 8, !dbg !193860, !noalias !193288, !noundef !5425 ; 2 uses
  %i.kq = icmp eq ptr %i.kp, null, !dbg !193860
  br i1 %i.kq, label %bb.eb, label %bb.dr, !dbg !193866

bb.dr:                                            ; preds = %bb.dq
  %i.kr = load i32, ptr %i.hg, align 8, !dbg !193867, !noalias !193288, !noundef !5425
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !193868, !noalias !193288
  %i.ks = getelementptr inbounds nuw i8, ptr %i.js, i64 88, !dbg !193869 ; 3 uses
  %i.kt = load i64, ptr %i.ks, align 8, !dbg !193869, !noalias !193289, !noundef !5425
  %i.ku = getelementptr inbounds nuw i8, ptr %i.js, i64 48, !dbg !193870
  %.val243.i.i.i.i = load ptr, ptr %i.ku, align 8, !dbg !193871, !noalias !193289, !nonnull !5425, !noundef !5425 ; 2 uses
  %i.kv = atomicrmw add ptr %.val243.i.i.i.i, i64 1 monotonic, align 8, !dbg !193872, !noalias !193289
  %i.kw = icmp slt i64 %i.kv, 0, !dbg !193873
  br i1 %i.kw, label %bb.ds, label %_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !193873

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.trap(), !dbg !193874
  unreachable, !dbg !193874

_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.dr
  %i.kx = getelementptr inbounds nuw i8, ptr %i.js, i64 72, !dbg !193875
  %i.ky = load i64, ptr %i.kx, align 8, !dbg !193875, !noalias !193289, !noundef !5425
  %i.kz = getelementptr inbounds nuw i8, ptr %i.js, i64 80, !dbg !193875
  %i.la = load i32, ptr %i.kz, align 8, !dbg !193875, !noalias !193289, !noundef !5425
  invoke void @_RNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components22partition_sink_starterNtB2_20PartitionSinkStarter10start_sink(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hh, ptr noundef nonnull %.val243.i.i.i.i, i64 noundef %i.kt, i64 noundef %i.ky, i32 noundef %i.la, ptr noundef nonnull %i.kp, i32 noundef %i.kr)
          to label %bb.dt unwind label %bb.dw, !dbg !193876, !noalias !193289

bb.dt:                                            ; preds = %_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !193364), !dbg !193868
  %i.lb = load i64, ptr %i.al, align 8, !dbg !193877, !range !5556, !alias.scope !193365, !noalias !193288, !noundef !5425 ; 2 uses
  %.not.i307.i.i.i.i = icmp eq i64 %i.lb, 18, !dbg !193877
  %.sroa.8522.sroa.0.0.copyload860.i.i.i.i = load i64, ptr %i.hi, align 8, !dbg !193878, !alias.scope !193366, !noalias !193288 ; 3 uses
  %i.lc = load <2 x i32>, ptr %.sroa.8522.sroa.8.0..sroa_idx862.i.i.i.i, align 8, !dbg !193878, !noalias !193288 ; 5 uses
  %i.ld = load <2 x i64>, ptr %.sroa.8522.sroa.9.i.i.i.i.sroa.7.0..sroa.8522.sroa.9.0..sroa_idx864.i.i.i.i.sroa_idx89, align 8, !dbg !193878, !noalias !193288 ; 4 uses
  %i.le = load <2 x i32>, ptr %.sroa.8522.sroa.11.0..sroa_idx869.i.i.i.i, align 8, !dbg !193878, !alias.scope !193366, !noalias !193288 ; 4 uses
  br i1 %.not.i307.i.i.i.i, label %bb.du, label %bb.dx, !dbg !193879

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !193880, !noalias !193288
  %i.lf = load ptr, ptr %i.km, align 8, !dbg !193881, !alias.scope !193367, !noalias !193289, !noundef !5425
  %i.lg = icmp eq ptr %i.lf, null, !dbg !193881
  br i1 %i.lg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9file_sink16FileSinkTaskDataEEB1c_.exit.i.i.i.i, label %bb.dv, !dbg !193881

bb.dv:                                            ; preds = %bb.du
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9file_sink16FileSinkTaskDataEBQ_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.km)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9file_sink16FileSinkTaskDataEEB1c_.exit.i.i.i.i unwind label %.thread938.i.i.i.i, !dbg !193881, !noalias !193289

.thread938.i.i.i.i:                               ; preds = %bb.dv
  %i.lh = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  store i64 %.sroa.8522.sroa.0.0.copyload860.i.i.i.i, ptr %i.km, align 8, !dbg !193882, !noalias !193289
  %.sroa.8882.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.js, i64 104, !dbg !193882
  %i.li = extractelement <2 x i32> %i.lc, i64 0, !dbg !193882
  store i32 %i.li, ptr %.sroa.8882.0..sroa_idx.i.i.i.i, align 8, !dbg !193882, !noalias !193289
  %.sroa.9885.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.js, i64 108, !dbg !193882
  %i.lj = extractelement <2 x i32> %i.lc, i64 1, !dbg !193882
  store i32 %i.lj, ptr %.sroa.9885.0..sroa_idx.i.i.i.i, align 4, !dbg !193882, !noalias !193289
  %.sroa.8522.sroa.9.i.i.i.i.sroa.7.0..sroa.9885.0..sroa_idx.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.js, i64 112, !dbg !193882
  %i.lk = extractelement <2 x i64> %i.ld, i64 0, !dbg !193882
  store i64 %i.lk, ptr %.sroa.8522.sroa.9.i.i.i.i.sroa.7.0..sroa.9885.0..sroa_idx.i.i.i.i.sroa_idx, align 8, !dbg !193882, !noalias !193289
  %.sroa.10887.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.js, i64 120, !dbg !193882
  %i.ll = extractelement <2 x i64> %i.ld, i64 1, !dbg !193882
  store i64 %i.ll, ptr %.sroa.10887.0..sroa_idx.i.i.i.i, align 8, !dbg !193882, !noalias !193289
  %.sroa.11890.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.js, i64 128, !dbg !193882
  %i.lm = extractelement <2 x i32> %i.le, i64 0, !dbg !193882
  store i32 %i.lm, ptr %.sroa.11890.0..sroa_idx.i.i.i.i, align 8, !dbg !193882, !noalias !193289
  %.sroa.12893.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.js, i64 132, !dbg !193882
  %i.ln = extractelement <2 x i32> %i.le, i64 1, !dbg !193882
  store i32 %i.ln, ptr %.sroa.12893.0..sroa_idx.i.i.i.i, align 4, !dbg !193882, !noalias !193289
  br label %bb.ea, !dbg !193883

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9file_sink16FileSinkTaskDataEEB1c_.exit.i.i.i.i: ; preds = %bb.dv, %bb.du
  store i64 %.sroa.8522.sroa.0.0.copyload860.i.i.i.i, ptr %i.km, align 8, !dbg !193882, !noalias !193289
  %.sroa.8882.0..sroa_idx883.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.js, i64 104, !dbg !193882
  store <2 x i32> %i.lc, ptr %.sroa.8882.0..sroa_idx883.i.i.i.i, align 8, !dbg !193882, !noalias !193289
  %.sroa.8522.sroa.9.i.i.i.i.sroa.7.0..sroa.9885.0..sroa_idx886.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.js, i64 112, !dbg !193882
  store <2 x i64> %i.ld, ptr %.sroa.8522.sroa.9.i.i.i.i.sroa.7.0..sroa.9885.0..sroa_idx886.i.i.i.i.sroa_idx, align 8, !dbg !193882, !noalias !193289
  %.sroa.11890.0..sroa_idx891.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.js, i64 128, !dbg !193882
  store <2 x i32> %i.le, ptr %.sroa.11890.0..sroa_idx891.i.i.i.i, align 8, !dbg !193882, !noalias !193289
  %i.lo = load i64, ptr %i.ks, align 8, !dbg !193884, !noalias !193289, !noundef !5425
  %i.lp = add i64 %i.lo, 1, !dbg !193884
end_hunk_0
