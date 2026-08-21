Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.06?download=true
inline.NumInlined: 1705
inline.NumDeleted: 679
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_RNvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting6inject10ra_fixture:bb.a
  %i.en = icmp ult i32 %i.em, %i.el
  br i1 %i.en, label %.invoke, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldjNtNtCsuAhG64lL82_9text_size5range9TextRangeuINtNtNtBa_3ops12control_flow11ControlFlowB1f_ENCNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB2M_11RangeMapper12map_range_ups_0QNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1f_B1f_QNCNvMs0_NtB2O_10ra_fixtureNtB59_17RaFixtureAnalysis12map_range_ups0_0E0E0CslLuZgPVt6hg_3ide.exit.i.i.i, !prof !167

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldjNtNtCsuAhG64lL82_9text_size5range9TextRangeuINtNtNtBa_3ops12control_flow11ControlFlowB1f_ENCNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB2M_11RangeMapper12map_range_ups_0QNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1f_B1f_QNCNvMs0_NtB2O_10ra_fixtureNtB59_17RaFixtureAnalysis12map_range_ups0_0E0E0CslLuZgPVt6hg_3ide.exit.i.i.i: ; preds = %bb.ai
  invoke void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkNtNtCsuAhG64lL82_9text_size5range9TextRangeB1P_QNCNvMs0_NtCs6oosyzwIepl_6ide_db10ra_fixtureNtB2J_17RaFixtureAnalysis12map_range_ups0_0E0INtB7_5FnMutTuB1P_EE8call_mutCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bg, i32 noundef %i.ej, i32 noundef %i.em)
          to label %.noexc58 unwind label %.loopexit

.noexc58:                                         ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldjNtNtCsuAhG64lL82_9text_size5range9TextRangeuINtNtNtBa_3ops12control_flow11ControlFlowB1f_ENCNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB2M_11RangeMapper12map_range_ups_0QNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1f_B1f_QNCNvMs0_NtB2O_10ra_fixtureNtB59_17RaFixtureAnalysis12map_range_ups0_0E0E0CslLuZgPVt6hg_3ide.exit.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !1823, !noalias !1833
  %.pre27.i.i.i = load i32, ptr %i.c, align 4, !range !1359, !alias.scope !1834, !noalias !1837
  %i.eo = trunc nuw i32 %.pre27.i.i.i to i1
  br i1 %i.eo, label %bb.aj, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldjNtNtCsuAhG64lL82_9text_size5range9TextRangeuINtNtNtBa_3ops12control_flow11ControlFlowB1f_ENCNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB2M_11RangeMapper12map_range_ups_0QNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1f_B1f_QNCNvMs0_NtB2O_10ra_fixtureNtB59_17RaFixtureAnalysis12map_range_ups0_0E0E0CslLuZgPVt6hg_3ide.exit.thread.i.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldjNtNtCsuAhG64lL82_9text_size5range9TextRangeuINtNtNtBa_3ops12control_flow11ControlFlowB1f_ENCNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB2M_11RangeMapper12map_range_ups_0QNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1f_B1f_QNCNvMs0_NtB2O_10ra_fixtureNtB59_17RaFixtureAnalysis12map_range_ups0_0E0E0CslLuZgPVt6hg_3ide.exit.thread.i.i.i: ; preds = %.noexc58, %bb.ag
  %i.ep = phi ptr [ %.pre.i.i.i, %.noexc58 ], [ %i.do, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1808
  %exitcond.not.i.i.i = icmp eq i64 %i.dq, %i.dm
  br i1 %exitcond.not.i.i.i, label %.loopexit130, label %.lr.ph.i.i.i

bb.aj:                                            ; preds = %.noexc58
  %i.eq = load <2 x i32>, ptr %i.bi, align 4, !alias.scope !1834, !noalias !1837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1803
  br label %bb.ak

.loopexit130:                                     ; preds = %bb.ae, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldjNtNtCsuAhG64lL82_9text_size5range9TextRangeuINtNtNtBa_3ops12control_flow11ControlFlowB1f_ENCNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB2M_11RangeMapper12map_range_ups_0QNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1f_B1f_QNCNvMs0_NtB2O_10ra_fixtureNtB59_17RaFixtureAnalysis12map_range_ups0_0E0E0CslLuZgPVt6hg_3ide.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1803
  br label %.loopexit137

bb.ak:                                            ; preds = %bb.ab, %bb.aj, %bb.ac
  %i.er = phi <2 x i32> [ %i.dj, %bb.ab ], [ %i.dk, %bb.ac ], [ %i.eq, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store <2 x i64> %i.bv, ptr %i.p, align 16
  store <2 x i32> %i.by, ptr %.sroa.413.0..sroa_idx14, align 16
  store <2 x i32> %i.er, ptr %.sroa.619.0..sroa_idx20, align 8
  invoke void @_RNvMNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlightsNtB2_10Highlights3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.p)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.loopexit137:                                     ; preds = %bb.ad, %.loopexit130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.es = load ptr, ptr %.sroa.611.0..sroa_idx, align 8, !alias.scope !1839, !noalias !1726, !nonnull !19, !noundef !19
  %i.et = load ptr, ptr %.sroa.49.0..sroa_idx, align 8, !alias.scope !1839, !noalias !1726, !nonnull !19, !noundef !19 ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.es
  br i1 %i.eu, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.s

bb.am:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECslLuZgPVt6hg_3ide.exit.i, %.loopexit.split-lp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeEEB1t_.exit
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsgIpRO4v45SJ_7base_db5FilesEECslLuZgPVt6hg_3ide.exit.i.i, %bb.am
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.an:                                            ; preds = %._crit_edge
  %i.ew = load i32, ptr %i.m, align 4, !range !1359, !noundef !19
  %i.ex = trunc nuw i32 %i.ew to i1
  br i1 %i.ex, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ey = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.ez = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.fa = load <2 x i32>, ptr %i.ey, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store <2 x i32> %i.fa, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i32 0, ptr %i.fb, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  store i8 14, ptr %.sroa.431.0..sroa_idx, align 4
  store i64 0, ptr %i.o, align 8
  invoke void @_RNvMNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlightsNtB2_10Highlights3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.o)
          to label %bb.ar unwind label %.loopexit.split-lp143

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %bb.ap
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db10ra_fixture17RaFixtureAnalysisECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(280) %i.x)
          to label %bb.ay unwind label %bb.ax

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.aq

bb.as:                                            ; preds = %bb.ax, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeEEB1t_.exit
  %.pn39 = phi { ptr, i32 } [ %i.fj, %bb.ax ], [ %.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeEEB1t_.exit ]
  invoke void @_RNvXs_Cs6oosyzwIepl_6ide_dbNtB4_12RootDatabaseNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.y)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtCsgIpRO4v45SJ_7base_db5FilesE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fd)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsgIpRO4v45SJ_7base_db5FilesEECslLuZgPVt6hg_3ide.exit.i.i unwind label %bb.aw

bb.au:                                            ; preds = %bb.as
  %i.fe = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtCsgIpRO4v45SJ_7base_db5FilesE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fe)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECslLuZgPVt6hg_3ide.exit.i unwind label %bb.av

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsgIpRO4v45SJ_7base_db5FilesEECslLuZgPVt6hg_3ide.exit.i.i: ; preds = %bb.av, %bb.at
  %i.ff = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCsgIpRO4v45SJ_7base_db5input9CratesMapE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ff)
          to label %.body unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsgIpRO4v45SJ_7base_db5FilesEECslLuZgPVt6hg_3ide.exit.i.i

bb.aw:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsgIpRO4v45SJ_7base_db5FilesEECslLuZgPVt6hg_3ide.exit.i.i, %bb.at
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.au
  %i.fi = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCsgIpRO4v45SJ_7base_db5input9CratesMapE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fi)
          to label %common.resume unwind label %bb.am

bb.ax:                                            ; preds = %bb.aq
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ay:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke void @_RNvXs_Cs6oosyzwIepl_6ide_dbNtB4_12RootDatabaseNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.y)
          to label %bb.ba unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fk = landingpad { ptr, i32 }
          cleanup
  %i.fl = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtCsgIpRO4v45SJ_7base_db5FilesE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fl)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsgIpRO4v45SJ_7base_db5FilesEECslLuZgPVt6hg_3ide.exit.i.i50 unwind label %bb.bc

bb.ba:                                            ; preds = %bb.ay
  %i.fm = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtCsgIpRO4v45SJ_7base_db5FilesE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fm)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCslLuZgPVt6hg_3ide8AnalysisEBD_.exit54 unwind label %bb.bb

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsgIpRO4v45SJ_7base_db5FilesEECslLuZgPVt6hg_3ide.exit.i.i50: ; preds = %bb.bb, %bb.az
  %.pn.i.i51 = phi { ptr, i32 } [ %i.fo, %bb.bb ], [ %i.fk, %bb.az ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCsgIpRO4v45SJ_7base_db5input9CratesMapE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fn)
          to label %common.resume unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsgIpRO4v45SJ_7base_db5FilesEECslLuZgPVt6hg_3ide.exit.i.i50

bb.bc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsgIpRO4v45SJ_7base_db5FilesEECslLuZgPVt6hg_3ide.exit.i.i50, %bb.az
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCslLuZgPVt6hg_3ide8AnalysisEBD_.exit54: ; preds = %bb.ba
  %i.fq = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCsgIpRO4v45SJ_7base_db5input9CratesMapE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting6inject11doc_comment(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [104 x i8], align 8               ; 15 uses
  %i.d = alloca [1 x i8], align 1                 ; 2 uses
  %i.e = alloca [12 x i8], align 4                ; 4 uses
  %i.f = alloca [16 x i8], align 4                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 16               ; 8 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [128 x i8], align 8               ; 5 uses
  %i.r = alloca [4 x i8], align 4                 ; 4 uses
  %i.s = alloca [120 x i8], align 8               ; 11 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 4                ; 8 uses
  %6 = alloca [48 x i8], align 8                  ; 5 uses
  %i.v = alloca [48 x i8], align 8                ; 18 uses
  %i.w = alloca [24 x i8], align 8                ; 11 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 5 uses
  %i.z = alloca [12 x i8], align 4                ; 8 uses
  %i.aa = alloca [72 x i8], align 8               ; 8 uses
  %i.ab = alloca [40 x i8], align 8               ; 5 uses
  %.sroa.5 = alloca [12 x i8], align 4            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @_RNvNtCslLuZgPVt6hg_3ide9doc_links14doc_attributes(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.aa, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %5)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !range !1841, !noundef !19 ; 2 uses
  %.not = icmp eq i32 %i.ad, -1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx180 = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.3.0..sroa_idx180, i64 12, i1 false)
  %.sroa.4181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.4181.0.copyload = load i32, ptr %.sroa.4181.0..sroa_idx, align 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.af = load ptr, ptr %1, align 8, !nonnull !19, !align !449, !noundef !19
  %i.ag = tail call noundef i32 @_RINvMs9_NvNtCsgIpRO4v45SJ_7base_db17editioned_file_id1__NtB8_15EditionedFileId5fieldDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ECslLuZgPVt6hg_3ide(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @62)
  %i.ah = tail call noundef i32 @_RNvMs4_Csdovh4xi6v3I_4spanNtB5_15EditionedFileId7file_id(i32 noundef %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  store i32 %3, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 %4, ptr %i.aj, align 4
  store i32 0, ptr %i.z, align 4
  %i.ak = load ptr, ptr %1, align 8, !nonnull !19, !align !449, !noundef !19 ; 2 uses
  switch i32 %i.ad, label %default.unreachable [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner8hir_docs.exit.thread
    i32 3, label %_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner8hir_docs.exit.thread
    i32 4, label %_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner8hir_docs.exit.thread
  ]

.noexc134.unreachabledefault:                     ; preds = %.noexc134
  unreachable

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, i64 12, i1 false)
  %.sroa.7.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %.sroa.4181.0.copyload, ptr %.sroa.7.12..sroa_idx, align 4
  %i.al = call noundef nonnull align 8 ptr @_RNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB5_9AttrFlags4docs(ptr noundef nonnull %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @28, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.f), !noalias !1842
  %i.am = load ptr, ptr %i.al, align 8, !noalias !1842, !align !449, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1842
  br label %_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner8hir_docs.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1845
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, i64 12, i1 false)
  %i.an = call noundef nonnull align 8 ptr @_RNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB7_9AttrFlags10field_docs11fields_docs(ptr noundef nonnull %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @28, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.e), !noalias !1845 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1845
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !1845, !noundef !19
  %i.aq = zext i32 %.sroa.4181.0.copyload to i64  ; 2 uses
  %i.ar = icmp ugt i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.e, label %_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner8hir_docs.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !1845, !nonnull !19, !noundef !19
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.aq ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !range !30, !noalias !1845, !noundef !19
  %i.aw = trunc nuw i64 %i.av to i1
  br i1 %i.aw, label %bb.f, label %_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner8hir_docs.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.val.i.i = load ptr, ptr %i.ax, align 8, !noalias !1845, !align !449, !noundef !19
  br label %_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner8hir_docs.exit

_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner8hir_docs.exit: ; preds = %bb.f, %bb.c
  %.sroa.0.1.i = phi ptr [ %i.am, %bb.c ], [ %.val.i.i, %bb.f ] ; 5 uses
  %.not105 = icmp eq ptr %.sroa.0.1.i, null
  br i1 %.not105, label %_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner8hir_docs.exit.thread, label %bb.i

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCslLuZgPVt6hg_3ide8AnalysisEBD_.exit, %_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner8hir_docs.exit.thread, %bb.g
  ret void

bb.i:                                             ; preds = %_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner8hir_docs.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !19, !noundef !19
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 16 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !19
  store i64 -1, ptr %i.w, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.az, ptr %.sroa.448.0..sroa_idx, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.bb, ptr %.sroa.549.0..sroa_idx, align 8
  invoke void @_RNvNtCslLuZgPVt6hg_3ide9doc_links29extract_definitions_from_docs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db13documentation13DocumentationECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #37
          to label %common.resume unwind label %bb.bl

bb.k:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %i.bf = load i64, ptr %i.x, align 8, !range !1848, !noundef !19
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !19 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 230584300921369396
  call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %i.be, i64 %i.bh
  store ptr %i.be, ptr %i.y, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.bf, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.be, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %i.bj, ptr %i.bm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.bn = load ptr, ptr %1, align 8, !nonnull !19, !align !449, !noundef !19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %.sroa.0.1.i, ptr %i.k, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.z, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.bn, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %0, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %i.bn, ptr %i.bp, align 8
  invoke void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtBa_6string6StringINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsileJQcQObtj_7hir_def6per_ns9NamespaceEEENtNtNtNtB25_4iter6traits8iterator8Iterator4folduNCINvNtNtB3s_8adapters10filter_map15filter_map_foldBX_TBY_NtNtCs6oosyzwIepl_6ide_db4defs10DefinitionEuNCNvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting6inject11doc_comment0NCINvNvB3m_8for_each4callB50_NCB5O_s_0E0E0EB5U_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.k)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bq = load i64, ptr %i.w, align 8, !range !271, !alias.scope !1849, !noundef !19
  %i.br = icmp eq i64 %i.bq, -1
  br i1 %i.br, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db13documentation13DocumentationECslLuZgPVt6hg_3ide.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

common.resume:                                    ; preds = %bb.j, %.body, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bs, %bb.n ], [ %.pn114, %.body ], [ %i.bc, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i.i: ; preds = %bb.m
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db13documentation13DocumentationECslLuZgPVt6hg_3ide.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db13documentation13DocumentationECslLuZgPVt6hg_3ide.exit: ; preds = %bb.l, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 0, ptr %i.v, align 8
  %.sroa.358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.358.0..sroa_idx, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.461.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i64 0, ptr %.sroa.552.0..sroa_idx, align 8
  invoke void @_RNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB2_11RangeMapper12add_unmapped(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 15)
          to label %bb.p unwind label %.loopexit.split-lp240.loopexit.split-lp

.body:                                            ; preds = %.loopexit232, %.loopexit.split-lp233.loopexit.split-lp.loopexit, %.loopexit.split-lp233.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp233.loopexit, %.loopexit239, %.loopexit.split-lp240.loopexit.loopexit, %.loopexit.split-lp240.loopexit.loopexit.split-lp, %.loopexit.split-lp240.loopexit.split-lp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsgIpRO4v45SJ_7base_db5FilesEECslLuZgPVt6hg_3ide.exit.i.i, %bb.aj, %bb.ae, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeEEB1t_.exit
  %.pn114 = phi { ptr, i32 } [ %.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeEEB1t_.exit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp240.loopexit.loopexit.split-lp ], [ %i.dr, %bb.ae ], [ %i.dx, %bb.aj ], [ %.pn.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsgIpRO4v45SJ_7base_db5FilesEECslLuZgPVt6hg_3ide.exit.i.i ], [ %lpad.loopexit241, %.loopexit239 ], [ %lpad.loopexit.split-lp247, %.loopexit.split-lp240.loopexit.split-lp ], [ %lpad.loopexit249, %.loopexit.split-lp240.loopexit.loopexit ], [ %lpad.loopexit234, %.loopexit232 ], [ %lpad.loopexit236, %.loopexit.split-lp233.loopexit ], [ %lpad.loopexit243, %.loopexit.split-lp233.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp244, %.loopexit.split-lp233.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db12range_mapper11RangeMapperECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(48) %i.v) #37
          to label %common.resume unwind label %bb.bl

.loopexit239:                                     ; preds = %bb.q
  %lpad.loopexit241 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp240.loopexit.loopexit:          ; preds = %bb.cj, %bb.ct
  %lpad.loopexit249 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp240.loopexit.loopexit.split-lp: ; preds = %bb.cy, %bb.cz
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp240.loopexit.split-lp:          ; preds = %.invoke, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECslLuZgPVt6hg_3ide.exit.i, %bb.cs, %bb.cq, %bb.ap, %bb.am, %bb.ab, %bb.aa, %bb.y, %bb.x, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db13documentation13DocumentationECslLuZgPVt6hg_3ide.exit
  %lpad.loopexit.split-lp247 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db13documentation13DocumentationECslLuZgPVt6hg_3ide.exit
  %i.bu = load ptr, ptr %i.ay, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %i.bv = load i64, ptr %i.ba, align 8, !noundef !19 ; 8 uses
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %.outer

.outer:                                           ; preds = %bb.cz, %bb.p
  %.promoted391 = phi i64 [ %.lcssa358392, %bb.cz ], [ 0, %bb.p ]
  %.lcssa264369.lcssa383426 = phi i64 [ %.lcssa264369, %bb.cz ], [ 0, %bb.p ]
  %.sroa.573.0..sroa_idx.promoted425 = phi i8 [ %.sroa.573.0..sroa_idx.promoted423, %bb.cz ], [ 0, %bb.p ]
  %.sroa.075.0.ph = phi i32 [ %i.gf, %bb.cz ], [ 0, %bb.p ]
  %.sroa.011.0.ph = phi i1 [ true, %bb.cz ], [ false, %bb.p ] ; 2 uses
  %.sroa.03.0.ph = phi i1 [ %.sroa.03.0387, %bb.cz ], [ false, %bb.p ]
  %i.ci = trunc nuw i8 %.sroa.573.0..sroa_idx.promoted425 to i1
  br i1 %i.ci, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.outer, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread
  %.sroa.573.0..sroa_idx.promoted424 = phi i8 [ %.sroa.573.0..sroa_idx.promoted423, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread ], [ 0, %.outer ]
  %.lcssa358394 = phi i64 [ %.lcssa358392, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread ], [ %.promoted391, %.outer ] ; 3 uses
  %.sroa.03.0387 = phi i1 [ %.sroa.03.2, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread ], [ %.sroa.03.0.ph, %.outer ] ; 6 uses
  %.sroa.011.0386 = phi i1 [ %.sroa.011.2, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread ], [ %.sroa.011.0.ph, %.outer ]
  %.sroa.075.0385 = phi i32 [ %i.gf, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread ], [ %.sroa.075.0.ph, %.outer ] ; 2 uses
  %.lcssa264370384 = phi i64 [ %.lcssa264369, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread ], [ %.lcssa264369.lcssa383426, %.outer ] ; 5 uses
  %i.cj = icmp ult i64 %i.bv, %.lcssa358394
  br i1 %i.cj, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph, %bb.t
  %i.ck = phi i64 [ %i.cz, %bb.t ], [ %.lcssa358394, %.lr.ph ] ; 5 uses
  %i.cl = sub nuw i64 %i.bv, %i.ck                ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.ck ; 2 uses
  %i.cn = icmp samesign ult i64 %i.cl, 16
  br i1 %i.cn, label %.preheader.i.i.i, label %bb.q

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.q:                                             ; preds = %.lr.ph.split.i.i
  %i.co = invoke { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cm, i64 noundef range(i64 0, -9223372036854775808) %i.cl)
          to label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i unwind label %.loopexit239

._crit_edge.i.i.i:                                ; preds = %bb.r, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.cl, %bb.r ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.r ], [ 1, %.lr.ph.i.i.i ]
  %i.cp = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.cq = insertvalue { i64, i64 } %i.cp, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.r
  %.sroa.01.05.i.i.i = phi i64 [ %i.cu, %bb.r ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.sroa.01.05.i.i.i
  %i.cs = load i8, ptr %i.cr, align 1, !alias.scope !1854, !noalias !1857, !noundef !19
  %i.ct = icmp eq i8 %i.cs, 10
  br i1 %i.ct, label %._crit_edge.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %i.cu = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cu, %i.cl
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i: ; preds = %bb.q, %._crit_edge.i.i.i
  %.merged.i.i.i = phi { i64, i64 } [ %i.cq, %._crit_edge.i.i.i ], [ %i.co, %bb.q ] ; 2 uses
  %i.cv = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.cw = trunc nuw i64 %i.cv to i1
  br i1 %i.cw, label %bb.s, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i

bb.s:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i
  %i.cx = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.cy = add i64 %i.ck, 1
  %i.cz = add i64 %i.cy, %i.cx                    ; 5 uses
  %.not12.i.i = icmp ugt i64 %i.cz, %i.bv
  %i.da = add i64 %i.ck, %i.cx
  %or.cond.i.i.not = icmp ult i64 %i.da, %i.bv
  br i1 %or.cond.i.i.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  br i1 %.not12.i.i, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %.lr.ph.split.i.i

bb.u:                                             ; preds = %bb.s
  %i.db = add i64 %i.ck, %i.cx                    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.db
  %lhsc = load i8, ptr %i.dc, align 1
  %i.dd = icmp eq i8 %lhsc, 10
  br i1 %i.dd, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %bb.t

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i: ; preds = %bb.u, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i, %bb.t, %.lr.ph
  %.sroa.573.0..sroa_idx.promoted423 = phi i8 [ 1, %.lr.ph ], [ 1, %bb.t ], [ 1, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i ], [ %.sroa.573.0..sroa_idx.promoted424, %bb.u ] ; 2 uses
  %.lcssa358392 = phi i64 [ %.lcssa358394, %.lr.ph ], [ %i.cz, %bb.t ], [ %i.bv, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i ], [ %i.cz, %bb.u ] ; 2 uses
  %.lcssa264369 = phi i64 [ %.lcssa264370384, %.lr.ph ], [ %.lcssa264370384, %bb.t ], [ %.lcssa264370384, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i ], [ %i.cz, %bb.u ] ; 2 uses
  %i.de = phi i1 [ true, %.lr.ph ], [ true, %bb.t ], [ true, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i ], [ false, %bb.u ]
  %.pn455 = phi i64 [ %i.bv, %.lr.ph ], [ %i.bv, %bb.t ], [ %i.bv, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i ], [ %i.db, %bb.u ]
  %.sroa.4.1.i.ph = sub nuw i64 %.pn455, %.lcssa264370384 ; 15 uses
  %.sroa.0.1.i120.ph = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.lcssa264370384 ; 9 uses
  %i.df = icmp ugt i64 %.sroa.4.1.i.ph, 4294967295
  %i.dg = shl nuw i64 %.sroa.4.1.i.ph, 32         ; 2 uses
  %.sroa.09.0.insert.insert.i = select i1 %i.df, i64 513, i64 %i.dg ; 2 uses
  %i.dh = trunc i64 %.sroa.09.0.insert.insert.i to i1
  br i1 %i.dh, label %bb.v, label %bb.bn, !prof !167

bb.v:                                             ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %.invoke

.outer._crit_edge:                                ; preds = %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread, %.outer
  br i1 %.sroa.011.0.ph, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.outer._crit_edge
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db12range_mapper11RangeMapperECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(48) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner8hir_docs.exit.thread

bb.x:                                             ; preds = %.outer._crit_edge
  invoke void @_RNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB2_11RangeMapper12add_unmapped(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 2)
          to label %bb.y unwind label %.loopexit.split-lp240.loopexit.split-lp

_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner8hir_docs.exit.thread: ; preds = %bb.d, %bb.e, %bb.b, %bb.b, %bb.b, %_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner8hir_docs.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.h

bb.y:                                             ; preds = %bb.x
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dj = invoke { i32, i32 } @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl11first_crate(ptr noundef nonnull align 8 %i.di, i32 noundef %i.ah)
          to label %bb.z unwind label %.loopexit.split-lp240.loopexit.split-lp ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.dk = extractvalue { i32, i32 } %i.dj, 0      ; 2 uses
  %.not107 = icmp eq i32 %i.dk, 0
  br i1 %.not107, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dl = extractvalue { i32, i32 } %i.dj, 1
  %i.dm = load ptr, ptr %1, align 8, !nonnull !19, !align !449, !noundef !19
  %i.dn = invoke noundef nonnull align 8 ptr @_RINvMs5_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB8_5Crate4dataNtCs6oosyzwIepl_6ide_db12RootDatabaseECslLuZgPVt6hg_3ide(i32 noundef %i.dk, i32 noundef %i.dl, ptr noundef nonnull align 8 %i.dm)
          to label %bb.an unwind label %.loopexit.split-lp240.loopexit.split-lp

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RNvXs7_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBufINtNtCshzWfHUSfYae_4core7convert7TryFromReE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 1)
          to label %bb.ac unwind label %.loopexit.split-lp240.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  %i.do = load i64, ptr %i.t, align 8, !range !30, !alias.scope !1863, !noalias !1866, !noundef !19
  %i.dp = trunc nuw i64 %i.do to i1
  br i1 %i.dp, label %bb.ad, label %bb.ah, !prof !167

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1868
  %i.dq = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dq, i64 24, i1 false), !noalias !1866
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #38
          to label %bb.af unwind label %bb.ae, !noalias !1868

bb.ae:                                            ; preds = %bb.ad
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #37
          to label %.body unwind label %bb.ag, !noalias !1868

bb.af:                                            ; preds = %bb.ad
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36, !noalias !1868
  unreachable

bb.ah:                                            ; preds = %bb.ac
  %i.dt = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.du, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dt, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 1, ptr %i.i, align 8
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !1869
  %i.dv = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 32, 513) 32, i64 noundef range(i64 8, 129) 8) #39, !noalias !1869 ; 3 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.ai, label %bb.al, !prof !167

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #38
          to label %.noexc122 unwind label %bb.aj

.noexc122:                                        ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.dx = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting6inject11doc_comment:bb.a
.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.bi, %_RNvMs1_NtCsuAhG64lL82_9text_size5rangeNtB5_9TextRange9intersect.exit.i.i.i.i, %bb.be
  %lpad.loopexit.split-lp226 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit225, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp226, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeEEB1t_.exit unwind label %bb.bl

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph, %_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_8find_map5checkjNtNtCsuAhG64lL82_9text_size5range9TextRangeQNCNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB2N_11RangeMapper12map_range_ups_0E0INtNtB8_12control_flow11ControlFlowB20_EECslLuZgPVt6hg_3ide.exit.loopexit
  %i.ey = phi ptr [ %i.em, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph ], [ %i.ew, %_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_8find_map5checkjNtNtCsuAhG64lL82_9text_size5range9TextRangeQNCNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB2N_11RangeMapper12map_range_ups_0E0INtNtB8_12control_flow11ControlFlowB20_EECslLuZgPVt6hg_3ide.exit.loopexit ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1877)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  store ptr %i.ez, ptr %.sroa.438.0..sroa_idx, align 8, !alias.scope !1877, !noalias !1875
  %i.fa = load <2 x i64>, ptr %i.ey, align 8, !noalias !1877
  %.sroa.0155.0.copyload = load i64, ptr %i.ey, align 8, !noalias !1877
  %.sroa.7157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %.sroa.7157.0.copyload = load i64, ptr %.sroa.7157.0..sroa_idx, align 8, !noalias !1877 ; 2 uses
  %.not108 = icmp eq i64 %.sroa.0155.0.copyload, 2
  br i1 %.not108, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, label %bb.au

bb.au:                                            ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 28
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4, !noalias !1877
  %.sroa.8158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %.sroa.8158.0.copyload = load i32, ptr %.sroa.8158.0..sroa_idx, align 8, !noalias !1877
  invoke void @_RNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB2_11RangeMapper12map_range_up(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v, i32 noundef %.sroa.8158.0.copyload, i32 noundef %.sroa.9.0.copyload)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit, %_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_8find_map5checkjNtNtCsuAhG64lL82_9text_size5range9TextRangeQNCNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB2N_11RangeMapper12map_range_ups_0E0INtNtB8_12control_flow11ControlFlowB20_EECslLuZgPVt6hg_3ide.exit.loopexit, %bb.at
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeEEB1t_.exit125 unwind label %bb.ar

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeEEB1t_.exit125: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.av

bb.av:                                            ; preds = %bb.as, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeEEB1t_.exit125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXs_Cs6oosyzwIepl_6ide_dbNtB4_12RootDatabaseNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.s)
          to label %bb.ax unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fb = landingpad { ptr, i32 }
          cleanup
  %i.fc = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtCsgIpRO4v45SJ_7base_db5FilesE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fc)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsgIpRO4v45SJ_7base_db5FilesEECslLuZgPVt6hg_3ide.exit.i.i unwind label %bb.az

bb.ax:                                            ; preds = %bb.av
  %i.fd = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtCsgIpRO4v45SJ_7base_db5FilesE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fd)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECslLuZgPVt6hg_3ide.exit.i unwind label %bb.ay

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsgIpRO4v45SJ_7base_db5FilesEECslLuZgPVt6hg_3ide.exit.i.i: ; preds = %bb.ay, %bb.aw
  %.pn.i.i = phi { ptr, i32 } [ %i.ff, %bb.ay ], [ %i.fb, %bb.aw ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCsgIpRO4v45SJ_7base_db5input9CratesMapE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fe)
          to label %.body unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsgIpRO4v45SJ_7base_db5FilesEECslLuZgPVt6hg_3ide.exit.i.i

bb.az:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsgIpRO4v45SJ_7base_db5FilesEECslLuZgPVt6hg_3ide.exit.i.i, %bb.aw
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.ax
  %i.fh = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCsgIpRO4v45SJ_7base_db5input9CratesMapE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fh)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCslLuZgPVt6hg_3ide8AnalysisEBD_.exit unwind label %.loopexit.split-lp240.loopexit.split-lp

bb.ba:                                            ; preds = %bb.au
  %.sroa.0159.0.copyload = load ptr, ptr %i.m, align 8 ; 2 uses
  %.sroa.4160.0.copyload = load i32, ptr %.sroa.4160.0..sroa_idx, align 8
  %.sroa.5161.0.copyload = load i32, ptr %.sroa.5161.0..sroa_idx, align 4
  %.sroa.6162.0.copyload = load i64, ptr %.sroa.6162.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8163.0.copyload = load i64, ptr %.sroa.8163.0..sroa_idx, align 8 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0159.0.copyload, i64 40
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0159.0.copyload, i64 32
  %.sroa.045.0.extract.trunc = trunc i64 %.sroa.7157.0.copyload to i32
  %.sroa.446.0.extract.shift = lshr i64 %.sroa.7157.0.copyload, 32
  %.sroa.446.0.extract.trunc = trunc nuw i64 %.sroa.446.0.extract.shift to i32
  %i.fk = or i32 %.sroa.045.0.extract.trunc, 4096
  %exitcond.not.i11261131.not = icmp ult i64 %.sroa.6162.0.copyload, %.sroa.8163.0.copyload
  br i1 %exitcond.not.i11261131.not, label %.lr.ph1128, label %_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_8find_map5checkjNtNtCsuAhG64lL82_9text_size5range9TextRangeQNCNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB2N_11RangeMapper12map_range_ups_0E0INtNtB8_12control_flow11ControlFlowB20_EECslLuZgPVt6hg_3ide.exit.loopexit

.lr.ph1128:                                       ; preds = %bb.ba, %bb.bk
  %umax.i1133 = phi i64 [ %umax.i, %bb.bk ], [ %.sroa.8163.0.copyload, %bb.ba ]
  %.sroa.6162.01132 = phi i64 [ %i.fn, %bb.bk ], [ %.sroa.6162.0.copyload, %bb.ba ]
  %i.fl = load i64, ptr %i.fi, align 8, !noalias !1879, !noundef !19 ; 2 uses
  br label %bb.bc

bb.bb:                                            ; preds = %bb.bf
  %exitcond.not.i = icmp eq i64 %i.fn, %umax.i1133
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_8find_map5checkjNtNtCsuAhG64lL82_9text_size5range9TextRangeQNCNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB2N_11RangeMapper12map_range_ups_0E0INtNtB8_12control_flow11ControlFlowB20_EECslLuZgPVt6hg_3ide.exit.loopexit, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph1128, %bb.bb
  %i.fm = phi i64 [ %.sroa.6162.01132, %.lr.ph1128 ], [ %i.fn, %bb.bb ] ; 4 uses
  %i.fn = add i64 %i.fm, 1                        ; 5 uses
  %i.fo = icmp ult i64 %i.fm, %i.fl
  br i1 %i.fo, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.fp = load ptr, ptr %i.fj, align 8, !noalias !1879, !nonnull !19, !noundef !19
  %i.fq = getelementptr inbounds nuw [20 x i8], ptr %i.fp, i64 %i.fm ; 4 uses
  %i.fr = load i32, ptr %i.fq, align 4, !noalias !1879, !noundef !19 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !noalias !1879, !noundef !19
  %..i.i.i.i.i.i = call noundef i32 @llvm.umax.i32(i32 %.sroa.4160.0.copyload, i32 %i.fr) ; 2 uses
  %..i2.i.i.i.i.i = call noundef i32 @llvm.umin.i32(i32 %.sroa.5161.0.copyload, i32 %i.ft) ; 2 uses
  %i.fu = icmp ult i32 %..i2.i.i.i.i.i, %..i.i.i.i.i.i
  br i1 %i.fu, label %_RNvMs1_NtCsuAhG64lL82_9text_size5rangeNtB5_9TextRange9intersect.exit.i.i.i.i, label %bb.bf

bb.be:                                            ; preds = %bb.bc
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.fm, i64 noundef %i.fl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #35
          to label %.noexc129 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc129:                                        ; preds = %bb.be
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.fv, align 4, !noalias !1879
  %i.fw = trunc i32 %.sroa.0.0.copyload.i.i.i.i to i1
  br i1 %i.fw, label %bb.bg, label %bb.bb

_RNvMs1_NtCsuAhG64lL82_9text_size5rangeNtB5_9TextRange9intersect.exit.i.i.i.i: ; preds = %bb.bd
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #35
          to label %.noexc130 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc130:                                        ; preds = %_RNvMs1_NtCsuAhG64lL82_9text_size5rangeNtB5_9TextRange9intersect.exit.i.i.i.i
  unreachable

bb.bg:                                            ; preds = %bb.bf
  %.sroa.5.0..sroa_idx.i.i.i.i.le = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  %.sroa.5.0.copyload.i.i.i.i.le = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i.le, align 4, !noalias !1879 ; 2 uses
  %i.fx = sub nuw i32 %..i.i.i.i.i.i, %i.fr       ; 2 uses
  %i.fy = add i32 %.sroa.5.0.copyload.i.i.i.i.le, %i.fx ; 2 uses
  %i.fz = icmp ult i32 %i.fy, %i.fx
  br i1 %i.fz, label %bb.bi, label %bb.bh, !prof !167

bb.bh:                                            ; preds = %bb.bg
  %i.ga = sub nuw i32 %..i2.i.i.i.i.i, %i.fr      ; 2 uses
  %i.gb = add i32 %.sroa.5.0.copyload.i.i.i.i.le, %i.ga ; 2 uses
  %i.gc = icmp ult i32 %i.gb, %i.ga
  br i1 %i.gc, label %bb.bi, label %bb.bj, !prof !167

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #35
          to label %.noexc131 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc131:                                        ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i32 %i.fy, ptr %i.es, align 8
  store i32 %i.gb, ptr %i.et, align 4
  store i32 %i.fk, ptr %i.eu, align 16
  store i32 %.sroa.446.0.extract.trunc, ptr %.sroa.446.0..sroa_idx, align 4
  store <2 x i64> %i.fa, ptr %i.l, align 16
  invoke void @_RNvMNtNtCslLuZgPVt6hg_3ide19syntax_highlighting10highlightsNtB2_10Highlights3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.l)
          to label %bb.bk unwind label %.loopexit

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.8163.0.copyload, i64 %i.fn)
  %exitcond.not.i1126.not = icmp ult i64 %i.fn, %.sroa.8163.0.copyload
  br i1 %exitcond.not.i1126.not, label %.lr.ph1128, label %_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_8find_map5checkjNtNtCsuAhG64lL82_9text_size5range9TextRangeQNCNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB2N_11RangeMapper12map_range_ups_0E0INtNtB8_12control_flow11ControlFlowB20_EECslLuZgPVt6hg_3ide.exit.loopexit

bb.bl:                                            ; preds = %.loopexit.split-lp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslLuZgPVt6hg_3ide19syntax_highlighting7HlRangeEEB1t_.exit, %.body, %bb.j
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCslLuZgPVt6hg_3ide8AnalysisEBD_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs6oosyzwIepl_6ide_db12RootDatabaseECslLuZgPVt6hg_3ide.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db12range_mapper11RangeMapperECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(48) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.h

bb.bm:                                            ; preds = %.thread218, %bb.cs, %bb.cq, %bb.ap
  unreachable

bb.bn:                                            ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.09.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32
  %i.ge = add i32 %.sroa.075.0385, 1              ; 2 uses
  %i.gf = add i32 %i.ge, %.sroa.6.0.extract.trunc.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 2, ptr %.sroa.484.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.585.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @134, i64 32, i1 false)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.backedge.i
  %.not.i = phi i1 [ false, %bb.bn ], [ true, %.backedge.i ]
  %i.gg = phi i64 [ 0, %bb.bn ], [ 1, %.backedge.i ]
  %7 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.585.0..sroa_idx, i64 %i.gg ; 2 uses
  %i.gh = load ptr, ptr %7, align 8, !noalias !1891, !nonnull !19, !noundef !19
  %i.gi = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gj = load i64, ptr %i.gi, align 8, !noalias !1891, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1897
  invoke void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i120.ph, i64 noundef %.sroa.4.1.i.ph, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gh, i64 noundef %i.gj)
          to label %.noexc133 unwind label %.loopexit.split-lp233.loopexit

.noexc133:                                        ; preds = %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !1905)
  %i.gk = load i64, ptr %i.c, align 8, !range !30, !alias.scope !1905, !noalias !1908, !noundef !19
  %i.gl = trunc nuw i64 %i.gk to i1
  br i1 %i.gl, label %bb.bp, label %.preheader.i.i.i.i.i.i

bb.bp:                                            ; preds = %.noexc133
  %i.gm = load i64, ptr %i.by, align 8, !alias.scope !1905, !noalias !1908, !noundef !19 ; 2 uses
  %i.gn = icmp eq i64 %i.gm, -1
  %i.go = load ptr, ptr %i.bz, align 8, !alias.scope !1905, !noalias !1908, !nonnull !19, !noundef !19 ; 8 uses
  %i.gp = load i64, ptr %i.ca, align 8, !alias.scope !1905, !noalias !1908, !noundef !19 ; 10 uses
  %i.gq = load ptr, ptr %i.cb, align 8, !alias.scope !1905, !noalias !1908, !nonnull !19, !noundef !19 ; 5 uses
  %i.gr = load i64, ptr %i.cc, align 8, !alias.scope !1905, !noalias !1908, !noundef !19 ; 13 uses
  %i.gs = add nsw i64 %i.gr, -1                   ; 5 uses
  br i1 %i.gn, label %bb.bz, label %bb.br

.preheader.i.i.i.i.i.i:                           ; preds = %.noexc133, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1910
  invoke fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.c) #34
          to label %.noexc134 unwind label %.loopexit232

.noexc134:                                        ; preds = %.preheader.i.i.i.i.i.i
  %i.gt = load i64, ptr %i.b, align 8, !range !18, !noalias !1910, !noundef !19
  switch i64 %i.gt, label %.noexc134.unreachabledefault [
    i64 0, label %.loopexit.i.i.i.i.i.thread.i
    i64 1, label %bb.bq
    i64 2, label %.loopexit.i.i.i.i.i.i
  ]

.loopexit.i.i.i.i.i.thread.i:                     ; preds = %.noexc134
  %i.gu = load i64, ptr %i.bw, align 8, !noalias !1910, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1910
  br label %.loopexit228

bb.bq:                                            ; preds = %.noexc134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1910
  br label %.preheader.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.noexc134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1910
  br label %.backedge.i

bb.br:                                            ; preds = %bb.bp
  call void @llvm.experimental.noalias.scope.decl(metadata !1911)
  call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  call void @llvm.experimental.noalias.scope.decl(metadata !1916)
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.cd, align 8, !alias.scope !1918, !noalias !1919 ; 2 uses
  %i.gv = add i64 %.promoted.i.i.i.i.i.i.i, %i.gs ; 2 uses
  %i.gw = icmp ult i64 %i.gv, %i.gp
  br i1 %i.gw, label %.lr.ph.i.i.i.i.i.i.i, label %.backedge.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.br
  %i.gx = load i64, ptr %i.ce, align 8, !alias.scope !1918, !noalias !1919, !noundef !19
  %i.gy = load i64, ptr %i.bx, align 8, !alias.scope !1918, !noalias !1919 ; 4 uses
  %i.gz = load i64, ptr %i.cf, align 8, !alias.scope !1918, !noalias !1919 ; 2 uses
  %i.ha = sub i64 %i.gr, %i.gz
  %invariant.op = sub i64 1, %i.gy
  br label %.lr.ph.split.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %bb.bu, %.lr.ph.i.i.i.i.i.i.i
  %.sink70.i.i17.i.i.i.i.i = phi i64 [ %.sink70.i.i.i.i.i.i.i, %bb.bu ], [ %i.gm, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %.sink71.i.i14.i.i.i.i.i = phi i64 [ %.sink71.i.i.i.i.i.i.i, %bb.bu ], [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 7 uses
  %i.hb = phi i64 [ %i.hk, %bb.bu ], [ %i.gv, %.lr.ph.i.i.i.i.i.i.i ]
  %i.hc = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !alias.scope !1914, !noalias !1921, !noundef !19
  %i.he = and i8 %i.hd, 63
  %i.hf = zext nneg i8 %i.he to i64
  %i.hg = shl nuw i64 1, %i.hf
  %i.hh = and i64 %i.hg, %i.gx
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.hh, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %i.hi = add i64 %.sink71.i.i14.i.i.i.i.i, %i.gr
  br label %bb.bu

bb.bt:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %..i.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sink70.i.i17.i.i.i.i.i, i64 %i.gy) ; 2 uses
  %i.hj = icmp ult i64 %..i.i.i.i.i.i.i.i, %i.gr
  br i1 %i.hj, label %.lr.ph1103, label %.preheader36.i.i.i.i.i.i.i.preheader

bb.bu:                                            ; preds = %bb.by, %bb.bx, %bb.bs
  %.sink71.i.i.i.i.i.i.i = phi i64 [ %i.ig, %bb.by ], [ %i.if, %bb.bx ], [ %i.hi, %bb.bs ] ; 2 uses
  %.sink70.i.i.i.i.i.i.i = phi i64 [ 0, %bb.by ], [ %i.ha, %bb.bx ], [ 0, %bb.bs ]
  %i.hk = add i64 %.sink71.i.i.i.i.i.i.i, %i.gs   ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.gp
  br i1 %i.hl, label %.lr.ph.split.i.i.i.i.i.i.i, label %.backedge.i

bb.bv:                                            ; preds = %.lr.ph1103
  %i.hm = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i1101, 1 ; 2 uses
  %i.hn = icmp ult i64 %i.hm, %i.gr
  br i1 %i.hn, label %.lr.ph1103, label %.preheader36.i.i.i.i.i.i.i.preheader

.preheader36.i.i.i.i.i.i.i.preheader:             ; preds = %bb.bv, %bb.bt
  %i.ho = icmp ult i64 %.sink70.i.i17.i.i.i.i.i, %i.gy
  br i1 %i.ho, label %.lr.ph1105, label %.loopexit228

.lr.ph1103:                                       ; preds = %bb.bt, %bb.bv
  %.sroa.04.0.i.i.i.i.i.i.i1101 = phi i64 [ %i.hm, %bb.bv ], [ %..i.i.i.i.i.i.i.i, %bb.bt ] ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.sroa.04.0.i.i.i.i.i.i.i1101
  %i.hq = load i8, ptr %i.hp, align 1, !alias.scope !1916, !noalias !1922, !noundef !19
  %i.hr = add i64 %.sroa.04.0.i.i.i.i.i.i.i1101, %.sink71.i.i14.i.i.i.i.i ; 2 uses
  %i.hs = icmp ult i64 %i.hr, %i.gp
  call void @llvm.assume(i1 %i.hs)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.hr
  %i.hu = load i8, ptr %i.ht, align 1, !alias.scope !1914, !noalias !1921, !noundef !19
  %.not21.i.i.i.i.i.i.i = icmp eq i8 %i.hq, %i.hu
  br i1 %.not21.i.i.i.i.i.i.i, label %bb.bv, label %bb.by

.preheader36.i.i.i.i.i.i.i:                       ; preds = %bb.bw
  %i.hv = icmp ult i64 %.sink70.i.i17.i.i.i.i.i, %i.hw
  br i1 %i.hv, label %.lr.ph1105, label %.loopexit228

.lr.ph1105:                                       ; preds = %.preheader36.i.i.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i.i.i
  %.sroa.2.0.i.i.i.i.i.i.i1104 = phi i64 [ %i.hw, %.preheader36.i.i.i.i.i.i.i ], [ %i.gy, %.preheader36.i.i.i.i.i.i.i.preheader ]
  %i.hw = add i64 %.sroa.2.0.i.i.i.i.i.i.i1104, -1 ; 6 uses
  %i.hx = icmp ult i64 %i.hw, %i.gr
  br i1 %i.hx, label %bb.bw, label %.split32.us.i.i.i.i.i.i.i.invoke

bb.bw:                                            ; preds = %.lr.ph1105
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.hw
  %i.hz = load i8, ptr %i.hy, align 1, !alias.scope !1916, !noalias !1922, !noundef !19
  %i.ia = add i64 %i.hw, %.sink71.i.i14.i.i.i.i.i ; 2 uses
  %i.ib = icmp ult i64 %i.ia, %i.gp
  call void @llvm.assume(i1 %i.ib)
  %i.ic = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.ia
  %i.id = load i8, ptr %i.ic, align 1, !alias.scope !1914, !noalias !1921, !noundef !19
  %.not20.i.i.i.i.i.i.i = icmp eq i8 %i.hz, %i.id
  br i1 %.not20.i.i.i.i.i.i.i, label %.preheader36.i.i.i.i.i.i.i, label %bb.bx

.split32.us.i.i.i.i.i.i.i.invoke:                 ; preds = %.preheader.i.i.i.i.i.i.i, %.lr.ph1105
  %i.ie = phi i64 [ %i.hw, %.lr.ph1105 ], [ %i.im, %.preheader.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ie, i64 noundef range(i64 0, -9223372036854775808) %i.gr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #35
          to label %.split32.us.i.i.i.i.i.i.i.cont unwind label %.loopexit.split-lp233.loopexit.split-lp.loopexit.split-lp

.split32.us.i.i.i.i.i.i.i.cont:                   ; preds = %.split32.us.i.i.i.i.i.i.i.invoke
  unreachable

bb.bx:                                            ; preds = %bb.bw
  %i.if = add i64 %.sink71.i.i14.i.i.i.i.i, %i.gz
  br label %bb.bu

bb.by:                                            ; preds = %.lr.ph1103
  %.reass.i.reass.i.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %.sink71.i.i14.i.i.i.i.i, %invariant.op
  %i.ig = add i64 %.reass.i.reass.i.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i.i.i.i1101
  br label %bb.bu

bb.bz:                                            ; preds = %bb.bp
  call void @llvm.experimental.noalias.scope.decl(metadata !1923)
  call void @llvm.experimental.noalias.scope.decl(metadata !1926)
  call void @llvm.experimental.noalias.scope.decl(metadata !1928)
  %.promoted.i1.i.i.i.i.i.i = load i64, ptr %i.cd, align 8, !alias.scope !1930, !noalias !1931 ; 3 uses
  %i.ih = add i64 %.promoted.i1.i.i.i.i.i.i, %i.gs ; 3 uses
  %i.ii = icmp ult i64 %i.ih, %i.gp
  br i1 %i.ii, label %.lr.ph.i4.i.i.i.i.i.i, label %.backedge.i

.lr.ph.i4.i.i.i.i.i.i:                            ; preds = %bb.bz
  %i.ij = load i64, ptr %i.ce, align 8, !alias.scope !1930, !noalias !1931, !noundef !19 ; 2 uses
  %i.ik = load i64, ptr %i.bx, align 8, !alias.scope !1930, !noalias !1931
  %.fr26.i.i.i.i.i.i = freeze i64 %i.ik           ; 10 uses
  %i.il = load i64, ptr %i.cf, align 8, !alias.scope !1930, !noalias !1931
  %umax.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.fr26.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.gr) ; 2 uses
  %i.im = add i64 %.fr26.i.i.i.i.i.i, -1          ; 2 uses
  %.first_iter.i.i.i.i.i.i.i = icmp ult i64 %i.im, %i.gr
  %i.in = sub i64 1, %.fr26.i.i.i.i.i.i           ; 2 uses
  br i1 %.first_iter.i.i.i.i.i.i.i, label %.lr.ph.split.us.i.us.i.i.i.i.i.i.preheader, label %.lr.ph.split.us.i.i.i.i.i.i.i.preheader

.lr.ph.split.us.i.i.i.i.i.i.i.preheader:          ; preds = %.lr.ph.i4.i.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.i.i1107.not = icmp ult i64 %.fr26.i.i.i.i.i.i, %i.gr
  br label %.lr.ph.split.us.i.i.i.i.i.i.i

.lr.ph.split.us.i.us.i.i.i.i.i.i.preheader:       ; preds = %.lr.ph.i4.i.i.i.i.i.i
  %exitcond.not.i.us.i.i.i.i.i.i1118.not = icmp ult i64 %.fr26.i.i.i.i.i.i, %i.gr
  %.not34.i.us.us.i.i.i.i.i.i1121 = icmp eq i64 %.fr26.i.i.i.i.i.i, 0
  br label %.lr.ph.split.us.i.us.i.i.i.i.i.i

.lr.ph.split.us.i.us.i.i.i.i.i.i:                 ; preds = %.lr.ph.split.us.i.us.i.i.i.i.i.i.preheader, %bb.cc
  %.sink.i.us.i22.i.i.i.i.i = phi i64 [ %.sink.i.us.i.i.i.i.i.i, %bb.cc ], [ %.promoted.i1.i.i.i.i.i.i, %.lr.ph.split.us.i.us.i.i.i.i.i.i.preheader ] ; 7 uses
  %i.io = phi i64 [ %i.jf, %bb.cc ], [ %i.ih, %.lr.ph.split.us.i.us.i.i.i.i.i.i.preheader ]
  %i.ip = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1, !alias.scope !1926, !noalias !1933, !noundef !19
  %i.ir = and i8 %i.iq, 63
  %i.is = zext nneg i8 %i.ir to i64
  %i.it = shl nuw i64 1, %i.is
  %i.iu = and i64 %i.it, %i.ij
  %.not.us.i.us.i.i.i.i.i.i = icmp eq i64 %i.iu, 0
  br i1 %.not.us.i.us.i.i.i.i.i.i, label %bb.cb, label %.preheader35.i.us.i.i.i.i.i.i.preheader

.preheader35.i.us.i.i.i.i.i.i.preheader:          ; preds = %.lr.ph.split.us.i.us.i.i.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i.i.i1118.not, label %.lr.ph1120, label %.preheader.i.us.us.i.i.i.i.i.i.preheader

.preheader35.i.us.i.i.i.i.i.i:                    ; preds = %.lr.ph1120
  %i.iv = add i64 %.sroa.04.0.us.i.us.i.i.i.i.i.i1119, 1 ; 2 uses
  %exitcond.not.i.us.i.i.i.i.i.i = icmp eq i64 %i.iv, %umax.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i.i.i, label %.preheader.i.us.us.i.i.i.i.i.i.preheader, label %.lr.ph1120

.preheader.i.us.us.i.i.i.i.i.i.preheader:         ; preds = %.preheader35.i.us.i.i.i.i.i.i, %.preheader35.i.us.i.i.i.i.i.i.preheader
  br i1 %.not34.i.us.us.i.i.i.i.i.i1121, label %.loopexit228, label %.lr.ph1123

.lr.ph1120:                                       ; preds = %.preheader35.i.us.i.i.i.i.i.i.preheader, %.preheader35.i.us.i.i.i.i.i.i
  %.sroa.04.0.us.i.us.i.i.i.i.i.i1119 = phi i64 [ %i.iv, %.preheader35.i.us.i.i.i.i.i.i ], [ %.fr26.i.i.i.i.i.i, %.preheader35.i.us.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.sroa.04.0.us.i.us.i.i.i.i.i.i1119
  %i.ix = load i8, ptr %i.iw, align 1, !alias.scope !1928, !noalias !1934, !noundef !19
  %i.iy = add i64 %.sroa.04.0.us.i.us.i.i.i.i.i.i1119, %.sink.i.us.i22.i.i.i.i.i ; 2 uses
  %i.iz = icmp ult i64 %i.iy, %i.gp
  call void @llvm.assume(i1 %i.iz)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.iy
  %i.jb = load i8, ptr %i.ja, align 1, !alias.scope !1926, !noalias !1933, !noundef !19
  %.not21.us.i.us.i.i.i.i.i.i = icmp eq i8 %i.ix, %i.jb
  br i1 %.not21.us.i.us.i.i.i.i.i.i, label %.preheader35.i.us.i.i.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph1120
  %i.jc = add i64 %.sink.i.us.i22.i.i.i.i.i, %i.in
  %i.jd = add i64 %i.jc, %.sroa.04.0.us.i.us.i.i.i.i.i.i1119
  br label %bb.cc

bb.cb:                                            ; preds = %.lr.ph.split.us.i.us.i.i.i.i.i.i
  %i.je = add i64 %.sink.i.us.i22.i.i.i.i.i, %i.gr
  br label %bb.cc

bb.cc:                                            ; preds = %.split.us.us.i.i.i.i.i.i, %bb.cb, %bb.ca
  %.sink.i.us.i.i.i.i.i.i = phi i64 [ %i.je, %bb.cb ], [ %i.jd, %bb.ca ], [ %i.jo, %.split.us.us.i.i.i.i.i.i ] ; 2 uses
  %i.jf = add i64 %.sink.i.us.i.i.i.i.i.i, %i.gs  ; 2 uses
  %i.jg = icmp ult i64 %i.jf, %i.gp
  br i1 %i.jg, label %.lr.ph.split.us.i.us.i.i.i.i.i.i, label %.backedge.i

.preheader.i.us.us.i.i.i.i.i.i:                   ; preds = %.lr.ph1123
  %.not34.i.us.us.i.i.i.i.i.i = icmp eq i64 %i.jh, 0
  br i1 %.not34.i.us.us.i.i.i.i.i.i, label %.loopexit228, label %.lr.ph1123

.lr.ph1123:                                       ; preds = %.preheader.i.us.us.i.i.i.i.i.i.preheader, %.preheader.i.us.us.i.i.i.i.i.i
  %.sroa.2.0.us.i.us.us.i.i.i.i.i.i1122 = phi i64 [ %i.jh, %.preheader.i.us.us.i.i.i.i.i.i ], [ %.fr26.i.i.i.i.i.i, %.preheader.i.us.us.i.i.i.i.i.i.preheader ]
  %i.jh = add i64 %.sroa.2.0.us.i.us.us.i.i.i.i.i.i1122, -1 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !alias.scope !1928, !noalias !1934, !noundef !19
  %i.jk = add i64 %i.jh, %.sink.i.us.i22.i.i.i.i.i ; 2 uses
  %i.jl = icmp ult i64 %i.jk, %i.gp
  call void @llvm.assume(i1 %i.jl)
  %i.jm = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.jk
  %i.jn = load i8, ptr %i.jm, align 1, !alias.scope !1926, !noalias !1933, !noundef !19
  %.not20.us.i.us.us.i.i.i.i.i.i = icmp eq i8 %i.jj, %i.jn
  br i1 %.not20.us.i.us.us.i.i.i.i.i.i, label %.preheader.i.us.us.i.i.i.i.i.i, label %.split.us.us.i.i.i.i.i.i

.split.us.us.i.i.i.i.i.i:                         ; preds = %.lr.ph1123
  %i.jo = add i64 %.sink.i.us.i22.i.i.i.i.i, %i.il
  br label %bb.cc

.lr.ph.split.us.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.preheader, %bb.cf
  %.sink.i.i20.i.i.i.i.i = phi i64 [ %.sink.i.i.i.i.i.i.i, %bb.cf ], [ %.promoted.i1.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.jp = phi i64 [ %i.kg, %bb.cf ], [ %i.ih, %.lr.ph.split.us.i.i.i.i.i.i.i.preheader ]
  %i.jq = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.jp
  %i.jr = load i8, ptr %i.jq, align 1, !alias.scope !1926, !noalias !1933, !noundef !19
  %i.js = and i8 %i.jr, 63
  %i.jt = zext nneg i8 %i.js to i64
  %i.ju = shl nuw i64 1, %i.jt
  %i.jv = and i64 %i.ju, %i.ij
  %.not.us.i.i.i.i.i.i.i = icmp eq i64 %i.jv, 0
  br i1 %.not.us.i.i.i.i.i.i.i, label %bb.ce, label %.preheader35.i.i.i.i.i.i.i.preheader

.preheader35.i.i.i.i.i.i.i.preheader:             ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i1107.not, label %.lr.ph1109, label %.preheader.i.i.i.i.i.i.i

.preheader35.i.i.i.i.i.i.i:                       ; preds = %.lr.ph1109
  %i.jw = add i64 %.sroa.04.0.us.i.i.i.i.i.i.i1108, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.jw, %umax.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i, label %.lr.ph1109

.lr.ph1109:                                       ; preds = %.preheader35.i.i.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i.i.i
  %.sroa.04.0.us.i.i.i.i.i.i.i1108 = phi i64 [ %i.jw, %.preheader35.i.i.i.i.i.i.i ], [ %.fr26.i.i.i.i.i.i, %.preheader35.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.sroa.04.0.us.i.i.i.i.i.i.i1108
  %i.jy = load i8, ptr %i.jx, align 1, !alias.scope !1928, !noalias !1934, !noundef !19
  %i.jz = add i64 %.sroa.04.0.us.i.i.i.i.i.i.i1108, %.sink.i.i20.i.i.i.i.i ; 2 uses
  %i.ka = icmp ult i64 %i.jz, %i.gp
  call void @llvm.assume(i1 %i.ka)
  %i.kb = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.jz
  %i.kc = load i8, ptr %i.kb, align 1, !alias.scope !1926, !noalias !1933, !noundef !19
  %.not21.us.i.i.i.i.i.i.i = icmp eq i8 %i.jy, %i.kc
  br i1 %.not21.us.i.i.i.i.i.i.i, label %.preheader35.i.i.i.i.i.i.i, label %bb.cd

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader35.i.i.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i = icmp eq i64 %.fr26.i.i.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i.i.i, label %.loopexit228, label %.split32.us.i.i.i.i.i.i.i.invoke

bb.cd:                                            ; preds = %.lr.ph1109
  %i.kd = add i64 %.sink.i.i20.i.i.i.i.i, %i.in
  %i.ke = add i64 %i.kd, %.sroa.04.0.us.i.i.i.i.i.i.i1108
  br label %bb.cf

bb.ce:                                            ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i
  %i.kf = add i64 %.sink.i.i20.i.i.i.i.i, %i.gr
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.sink.i.i.i.i.i.i.i = phi i64 [ %i.kf, %bb.ce ], [ %i.ke, %bb.cd ] ; 2 uses
  %i.kg = add i64 %.sink.i.i.i.i.i.i.i, %i.gs     ; 2 uses
  %i.kh = icmp ult i64 %i.kg, %i.gp
  br i1 %i.kh, label %.lr.ph.split.us.i.i.i.i.i.i.i, label %.backedge.i

.backedge.i:                                      ; preds = %bb.bu, %bb.cf, %bb.cc, %bb.bz, %bb.br, %.loopexit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1897
  br i1 %.not.i, label %bb.ci, label %bb.bo

.loopexit232:                                     ; preds = %.preheader.i.i.i.i.i.i
  %lpad.loopexit234 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp233.loopexit:                   ; preds = %bb.bo
  %lpad.loopexit236 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp233.loopexit.split-lp.loopexit: ; preds = %bb.da
  %lpad.loopexit243 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp233.loopexit.split-lp.loopexit.split-lp: ; preds = %.split32.us.i.i.i.i.i.i.i.invoke, %.thread218
  %lpad.loopexit.split-lp244 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit228:                                     ; preds = %.preheader36.i.i.i.i.i.i.i.preheader, %.preheader.i.us.us.i.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i.i.i, %.preheader.i.us.us.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.thread.i, %.preheader.i.i.i.i.i.i.i
  %.sroa.3.0.ph.i = phi i64 [ %i.gu, %.loopexit.i.i.i.i.i.thread.i ], [ %.sink.i.i20.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ], [ %.sink.i.us.i22.i.i.i.i.i, %.preheader.i.us.us.i.i.i.i.i.i ], [ %.sink71.i.i14.i.i.i.i.i, %.preheader36.i.i.i.i.i.i.i ], [ %.sink.i.us.i22.i.i.i.i.i, %.preheader.i.us.us.i.i.i.i.i.i.preheader ], [ %.sink71.i.i14.i.i.i.i.i, %.preheader36.i.i.i.i.i.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1897
  %i.ki = xor i1 %.sroa.03.0387, true             ; 2 uses
  %i.kj = add i64 %.sroa.3.0.ph.i, 3              ; 7 uses
  %i.kk = icmp eq i64 %i.kj, 0
  br i1 %i.kk, label %bb.da, label %bb.cg

bb.cg:                                            ; preds = %.loopexit228
  %.not.i137 = icmp ult i64 %i.kj, %.sroa.4.1.i.ph
  br i1 %.not.i137, label %bb.ch, label %.split.i

.split.i:                                         ; preds = %bb.cg
  %i.kl = icmp eq i64 %i.kj, %.sroa.4.1.i.ph
  br i1 %i.kl, label %bb.da, label %.thread218

bb.ch:                                            ; preds = %bb.cg
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i120.ph, i64 %i.kj
  %i.kn = load i8, ptr %i.km, align 1, !alias.scope !1935, !noundef !19
  %i.ko = icmp sgt i8 %i.kn, -65
  br i1 %i.ko, label %bb.da, label %.thread218

bb.ci:                                            ; preds = %.backedge.i
  br i1 %.sroa.011.0386, label %bb.cj, label %8

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 35, ptr %i.j, align 4
  %i.kp = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i120.ph, i64 noundef %.sroa.4.1.i.ph, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 1)
          to label %bb.ck unwind label %.loopexit.split-lp240.loopexit.loopexit

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.kp, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cp
  %.pre-phi = phi i64 [ %i.dg, %bb.ck ], [ %.pre, %bb.cp ]
  %.sroa.093.0 = phi i32 [ %.sroa.075.0385, %bb.ck ], [ %i.ge, %bb.cp ] ; 3 uses
  %.sroa.13.0 = phi i64 [ %.sroa.4.1.i.ph, %bb.ck ], [ %i.kw, %bb.cp ] ; 2 uses
  %.sroa.012.0 = phi ptr [ %.sroa.0.1.i120.ph, %bb.ck ], [ %i.kx, %bb.cp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.kq = icmp ugt i64 %.sroa.13.0, 4294967295
  %.sroa.09.0.insert.insert.i140 = select i1 %i.kq, i64 513, i64 %.pre-phi ; 2 uses
  %i.kr = trunc i64 %.sroa.09.0.insert.insert.i140 to i1
  br i1 %i.kr, label %bb.cm, label %bb.cr, !prof !167

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %.invoke

.invoke:                                          ; preds = %bb.v, %bb.cm
  %.sink = phi ptr [ %i.d, %bb.v ], [ %i.a, %bb.cm ] ; 2 uses
  store i8 2, ptr %.sink, align 1
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 43, ptr noundef nonnull %.sink, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #35
          to label %.cont unwind label %.loopexit.split-lp240.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.cn:                                            ; preds = %bb.ck
  %.not.i145 = icmp ugt i64 %.sroa.4.1.i.ph, 1
  br i1 %.not.i145, label %bb.co, label %.split.i146

.split.i146:                                      ; preds = %bb.cn
  %i.ks = icmp eq i64 %.sroa.4.1.i.ph, 1
  br i1 %i.ks, label %bb.cp, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i120.ph, i64 1
  %i.ku = load i8, ptr %i.kt, align 1, !alias.scope !1938, !noundef !19
  %i.kv = icmp sgt i8 %i.ku, -65
  br i1 %i.kv, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co, %.split.i146
  %i.kw = add i64 %.sroa.4.1.i.ph, -1             ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i120.ph, i64 1
  %.pre = shl nuw i64 %i.kw, 32
  br label %bb.cl

bb.cq:                                            ; preds = %bb.co, %.split.i146
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i120.ph, i64 noundef %.sroa.4.1.i.ph, i64 noundef 1, i64 noundef %.sroa.4.1.i.ph, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #38
          to label %bb.bm unwind label %.loopexit.split-lp240.loopexit.split-lp

bb.cr:                                            ; preds = %bb.cl
  %.sroa.6.0.extract.shift.i.i141 = lshr i64 %.sroa.09.0.insert.insert.i140, 32
  %.sroa.6.0.extract.trunc.i.i142 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i141 to i32
  %i.ky = add i32 %.sroa.093.0, %.sroa.6.0.extract.trunc.i.i142 ; 2 uses
  %.not111 = icmp ugt i32 %.sroa.093.0, %i.ky
  br i1 %.not111, label %bb.cs, label %bb.ct, !prof !167

bb.cs:                                            ; preds = %bb.cr
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #38
          to label %bb.bm unwind label %.loopexit.split-lp240.loopexit.split-lp

bb.ct:                                            ; preds = %bb.cr
  invoke void @_RNvMs_NtNtCsileJQcQObtj_7hir_def5attrs4docsNtB4_4Docs14find_ast_range(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.0.1.i, i32 noundef %.sroa.093.0, i32 noundef %i.ky)
          to label %bb.cu unwind label %.loopexit.split-lp240.loopexit.loopexit

bb.cu:                                            ; preds = %bb.ct
  %i.kz = load i32, ptr %i.u, align 4, !range !1941, !noundef !19 ; 2 uses
  %.not112 = icmp eq i32 %i.kz, 2
  br i1 %.not112, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.la = load <2 x i32>, ptr %.sroa.5152.0..sroa_idx, align 4
  %i.lb = load i32, ptr %i.cg, align 4, !noundef !19
  %i.lc = load i32, ptr %i.ch, align 4, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ld = load i32, ptr %i.z, align 4, !range !1359, !alias.scope !1942, !noalias !1945, !noundef !19
  %i.le = icmp eq i32 %i.kz, %i.ld
  br i1 %i.le, label %bb.cw, label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.cw:                                            ; preds = %bb.cv
  %i.lf = load <2 x i32>, ptr %i.ai, align 4
  %i.lg = icmp eq <2 x i32> %i.la, %i.lf          ; 2 uses
  %i.lh = extractelement <2 x i1> %i.lg, i64 0
  %i.li = extractelement <2 x i1> %i.lg, i64 1
  %or.cond = select i1 %i.li, i1 %i.lh, i1 false
  br i1 %or.cond, label %bb.cy, label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.cx:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.cy:                                            ; preds = %bb.cw
  invoke void @_RNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB2_11RangeMapper3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.012.0, i64 noundef %.sroa.13.0, i32 noundef %i.lb, i32 noundef %i.lc)
          to label %bb.cz unwind label %.loopexit.split-lp240.loopexit.loopexit.split-lp

bb.cz:                                            ; preds = %bb.cy
  invoke void @_RNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB2_11RangeMapper12add_unmapped(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 1)
          to label %.outer unwind label %.loopexit.split-lp240.loopexit.loopexit.split-lp

_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.cw, %bb.cv, %8, %bb.cx
  %.sroa.011.2 = phi i1 [ %.sroa.011.1, %8 ], [ true, %bb.cx ], [ true, %bb.cw ], [ true, %bb.cv ]
  %.sroa.03.2 = phi i1 [ %.sroa.03.1, %8 ], [ %.sroa.03.0387, %bb.cx ], [ %.sroa.03.0387, %bb.cw ], [ %.sroa.03.0387, %bb.cv ]
  br i1 %i.de, label %.outer._crit_edge, label %.lr.ph

bb.da:                                            ; preds = %bb.ch, %.split.i, %.loopexit228
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i120.ph, i64 %i.kj
  %i.lk = sub nuw i64 %.sroa.4.1.i.ph, %i.kj
  %i.ll = invoke noundef zeroext i1 @_RNvNtCs6oosyzwIepl_6ide_db8rust_doc13is_rust_fence(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.lj, i64 noundef %i.lk)
          to label %bb.db unwind label %.loopexit.split-lp233.loopexit.split-lp.loopexit

.thread218:                                       ; preds = %.split.i, %bb.ch
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i120.ph, i64 noundef %.sroa.4.1.i.ph, i64 noundef %i.kj, i64 noundef %.sroa.4.1.i.ph, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #38
          to label %bb.bm unwind label %.loopexit.split-lp233.loopexit.split-lp.loopexit.split-lp

bb.db:                                            ; preds = %bb.da
  %spec.store.select = and i1 %i.ll, %i.ki
  br label %8

8:                                                ; preds = %bb.ci, %bb.db
  %.sroa.011.1 = phi i1 [ %spec.store.select, %bb.db ], [ false, %bb.ci ]
  %.sroa.03.1 = phi i1 [ %i.ki, %bb.db ], [ %.sroa.03.0387, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread
}

; Function Attrs: nonlazybind uwtable
define hidden { i8, i8 } @_RNvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting6inject20module_def_to_hl_tag(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %2, align 8, !range !1947, !noundef !19
  switch i8 %i.a, label %default.unreachable3 [
    i8 0, label %bb.r
    i8 1, label %bb.b
    i8 2, label %bb.b
    i8 3, label %bb.c
    i8 4, label %bb.d
    i8 5, label %bb.e
    i8 6, label %switch.lookup
    i8 7, label %bb.f
    i8 8, label %bb.g
    i8 9, label %bb.h
    i8 10, label %bb.i
    i8 11, label %bb.j
    i8 12, label %bb.k
    i8 13, label %switch.lookup4
    i8 14, label %bb.l
    i8 15, label %bb.m
    i8 16, label %bb.n
    i8 17, label %bb.t
    i8 18, label %bb.s
    i8 19, label %bb.o
    i8 20, label %bb.p
    i8 21, label %bb.d
    i8 22, label %bb.q
    i8 23, label %bb.l
  ]

default.unreachable3:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4, !range !335, !noundef !19
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 8, !noundef !19
  %i.f = tail call noundef zeroext i1 @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module13is_crate_root(i32 noundef %i.c, i32 noundef %i.e, ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %1)
  %. = select i1 %i.f, i8 4, i8 18
  br label %bb.t

bb.d:                                             ; preds = %bb.a, %bb.a
  br label %bb.t

bb.e:                                             ; preds = %bb.a
  br label %bb.t

switch.lookup:                                    ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !range !1941, !noundef !19
  %switch.cast = trunc nuw i32 %i.h to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 465686, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  br label %bb.t

bb.f:                                             ; preds = %bb.a
  br label %bb.t

bb.g:                                             ; preds = %bb.a
  br label %bb.t

bb.h:                                             ; preds = %bb.a
  br label %bb.t

bb.i:                                             ; preds = %bb.a
  br label %bb.t

bb.j:                                             ; preds = %bb.a
  br label %bb.t

bb.k:                                             ; preds = %bb.a
  br label %bb.t

switch.lookup4:                                   ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.02.0.copyload = load i32, ptr %i.i, align 4
  %switch.cast5 = trunc i32 %.sroa.02.0.copyload to i24
  %switch.shiftamt6 = shl nuw nsw i24 %switch.cast5, 3
  %switch.downshift7 = lshr i24 918298, %switch.shiftamt6
  %switch.masked8 = trunc i24 %switch.downshift7 to i8
  br label %bb.t

bb.l:                                             ; preds = %bb.a, %bb.a
  br label %bb.t

bb.m:                                             ; preds = %bb.a
  br label %bb.t

bb.n:                                             ; preds = %bb.a
  br label %bb.t

bb.o:                                             ; preds = %bb.a
  br label %bb.t

bb.p:                                             ; preds = %bb.a
  br label %bb.t

bb.q:                                             ; preds = %bb.a
  br label %bb.t

bb.r:                                             ; preds = %bb.a
  br label %bb.t

bb.s:                                             ; preds = %bb.a
  br label %bb.t

bb.t:                                             ; preds = %switch.lookup4, %switch.lookup, %bb.s, %bb.b, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.c, %bb.a, %bb.r
  %.sroa.3.0 = phi i8 [ undef, %bb.a ], [ %., %bb.c ], [ 8, %bb.b ], [ 12, %bb.q ], [ 16, %bb.r ], [ 9, %bb.e ], [ 4, %bb.d ], [ 23, %bb.p ], [ 14, %bb.s ], [ 29, %bb.f ], [ 2, %bb.g ], [ 21, %bb.h ], [ 24, %bb.i ], [ 25, %bb.j ], [ 11, %bb.k ], [ %switch.masked, %switch.lookup ], [ 15, %bb.l ], [ 13, %bb.m ], [ 6, %bb.n ], [ %switch.masked8, %switch.lookup4 ], [ 1, %bb.o ]
  %.sroa.0.0 = phi i8 [ 3, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %switch.lookup ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %switch.lookup4 ], [ 0, %bb.o ]
  %i.j = insertvalue { i8, i8 } poison, i8 %.sroa.0.0, 0
  %i.k = insertvalue { i8, i8 } %i.j, i8 %.sroa.3.0, 1
  ret { i8, i8 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvNvNtCslLuZgPVt6hg_3ide16extend_selection16extend_list_item16nearby_delimiter(i16 noundef range(i16 4, 20) %0, ptr %.0.val, i1 noundef zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !noalias !1948, !noundef !19 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c, !prof !167

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #38, !noalias !1948
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EEEECslLuZgPVt6hg_3ide.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i, %bb.j
  %i.g = invoke { i64, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB1I_6cursor10SyntaxNodeNtB2w_11SyntaxTokenENCNvMs4_B2w_B2u_20siblings_with_tokens0ENvYIB1E_INtNtB1I_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB44_11SyntaxTokenB4q_EEINtNtBc_7convert4FromB1D_E4fromENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB6d_4find5checkB3W_NCNvNvNtCslLuZgPVt6hg_3ide16extend_selection16extend_list_item16nearby_delimiter0E0INtNtNtBc_3ops12control_flow11ControlFlowB3W_EEB7t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.m unwind label %bb.k       ; 2 uses

bb.c:                                             ; preds = %bb.a
  %i.h = add nuw i32 %i.e, 1
  store i32 %i.h, ptr %i.d, align 4, !noalias !1948
  %i.i = zext i1 %1 to i8
  store i64 0, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store ptr %.0.val, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i8 %i.i, ptr %.sroa.54.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1951)
  store i64 0, ptr %i.j, align 8, !alias.scope !1951
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1954)
  %i.k = invoke noundef i64 @_RNvXs_NvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBc_7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB2p_6cursor10SyntaxNodeNtB3d_11SyntaxTokenENCNvMs4_B3d_B3b_20siblings_with_tokens0ENvYIB2l_INtNtB2p_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB4L_11SyntaxTokenB57_EEINtNtBe_7convert4FromB2k_E4fromENtB4_13SpecAdvanceBy15spec_advance_byCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef range(i64 0, -1) 0)
          to label %.noexc18 unwind label %bb.k

.noexc18:                                         ; preds = %bb.c
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.d, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6filterNCNvNvNtCslLuZgPVt6hg_3ide16extend_selection16extend_list_item16nearby_delimiters0_0EB2v_.exit

bb.d:                                             ; preds = %.noexc18
  call void @llvm.experimental.noalias.scope.decl(metadata !1957)
  call void @llvm.experimental.noalias.scope.decl(metadata !1960)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1963
  %i.l = load i64, ptr %i.c, align 8, !range !18, !alias.scope !1963, !noundef !19 ; 2 uses
  %i.m = load ptr, ptr %.sroa.43.0..sroa_idx, align 8, !alias.scope !1963 ; 7 uses
  store i64 2, ptr %i.c, align 8, !alias.scope !1963
  %.not.i.i.i.i = icmp eq i64 %i.l, 2
  br i1 %.not.i.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6filterNCNvNvNtCslLuZgPVt6hg_3ide16extend_selection16extend_list_item16nearby_delimiters0_0EB2v_.exit.thread, label %bb.e

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE6filterNCNvNvNtCslLuZgPVt6hg_3ide16extend_selection16extend_list_item16nearby_delimiters0_0EB2v_.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1963
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4skip4SkipINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB2c_6cursor10SyntaxNodeNtB30_11SyntaxTokenENCNvMs4_B30_B2Y_20siblings_with_tokens0ENvYIB28_INtNtB2c_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB4y_11SyntaxTokenB4U_EEINtNtB4_7convert4FromB27_E4fromEEECslLuZgPVt6hg_3ide.exit29

bb.e:                                             ; preds = %bb.d
  store i64 %i.l, ptr %i.b, align 8, !noalias !1963
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %i.n, align 8, !noalias !1963
  %.val13.i.i.i.i = load i8, ptr %.sroa.54.0..sroa_idx, align 8, !range !334, !alias.scope !1963, !noundef !19
  %i.o = trunc nuw i8 %.val13.i.i.i.i to i1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = invoke { i64, ptr } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan6cursorINtNtB7_13utility_types11NodeOrTokenNtB5_10SyntaxNodeNtB5_11SyntaxTokenE21prev_sibling_or_token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.j unwind label %bb.h, !noalias !1964

bb.g:                                             ; preds = %bb.e
  %i.q = invoke { i64, ptr } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan6cursorINtNtB7_13utility_types11NodeOrTokenNtB5_10SyntaxNodeNtB5_11SyntaxTokenE21next_sibling_or_token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.j unwind label %bb.h, !noalias !1964

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !noalias !1964, !noundef !19
end_hunk_1
begin_hunk_2_@_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSENtB7_5Float10from_str_rCslLuZgPVt6hg_3ide:bb.a
bb.bo:                                            ; preds = %bb.bm
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %.sroa.4.0611754.i
  %i.ph = load i8, ptr %i.pg, align 1, !alias.scope !2386, !noalias !2367, !noundef !19
  %i.pi = icmp sgt i8 %i.ph, -65
  br i1 %i.pi, label %bb.bn, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i, !prof !42

.thread499.i:                                     ; preds = %bb.bh, %bb.bg
  %i.pj = icmp eq i8 %.sroa.028.0, 1
  br i1 %i.pj, label %bb.ex, label %bb.ew

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit249.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit306.i, %.body.i, %.loopexit.split-lp544.loopexit.split-lp.i, %.loopexit.split-lp544.loopexit.i, %.loopexit543.i
  %.pn203.pn.pn.i = phi { ptr, i32 } [ %.pn203.pn.i, %.body.i ], [ %.pn199.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit306.i ], [ %lpad.loopexit545.i, %.loopexit543.i ], [ %lpad.loopexit548.i, %.loopexit.split-lp544.loopexit.i ], [ %lpad.loopexit.split-lp549.i, %.loopexit.split-lp544.loopexit.split-lp.i ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.y)
          to label %common.resume.i unwind label %bb.ea, !noalias !2367

.loopexit543.i:                                   ; preds = %.lr.ph629.i
  %lpad.loopexit545.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit249.i

.loopexit.split-lp544.loopexit.i:                 ; preds = %bb.ev, %.thread514.i
  %lpad.loopexit548.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit249.i

.loopexit.split-lp544.loopexit.split-lp.i:        ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit307.i, %bb.bx, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i
  %lpad.loopexit.split-lp549.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit249.i

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i: ; preds = %bb.bn
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %reass.sub648.i
  %i.pl = load i8, ptr %i.pk, align 1, !alias.scope !2386, !noalias !2367, !noundef !19
  %i.pm = icmp sgt i8 %i.pl, -65
  br i1 %i.pm, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i, !prof !43

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i, %bb.bo, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E13with_capacityCslLuZgPVt6hg_3ide.exit.i
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1, i64 noundef range(i64 1, 0) %.sroa.18.1, i64 noundef %.sroa.4.0611754.i, i64 noundef %reass.sub648.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #38
          to label %bb.bp unwind label %.loopexit.split-lp544.loopexit.split-lp.i, !noalias !2367

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i, %bb.bn, %bb.bl
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %.sroa.4.0611754.i
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %reass.sub648.i ; 5 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.pq = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  br label %.outer.i

bb.bp:                                            ; preds = %bb.cw, %bb.cv, %bb.bx, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i
  unreachable

.outer.i:                                         ; preds = %.outer.i.backedge, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i
  %.sroa.0373.1.ph.i = phi ptr [ %i.pn, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i ], [ %.sroa.0373.1.ph.i.be, %.outer.i.backedge ]
  %.sroa.053.0.ph.i = phi i128 [ 1, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i ], [ %.sroa.053.0.ph.i.be, %.outer.i.backedge ] ; 3 uses
  %.sroa.049.0.ph.i = phi i128 [ 0, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i ], [ %.sroa.049.0.ph.i.be, %.outer.i.backedge ] ; 2 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bt, %.outer.i
  %.sroa.0373.1.i = phi ptr [ %.sroa.0373.2.ph.i, %bb.bt ], [ %.sroa.0373.1.ph.i, %.outer.i ] ; 6 uses
  %i.ps = icmp eq ptr %.sroa.0373.1.i, %i.po
  br i1 %i.ps, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 1 ; 3 uses
  %i.pu = load i8, ptr %.sroa.0373.1.i, align 1, !alias.scope !2355, !noalias !2389, !noundef !19 ; 5 uses
  %i.pv = icmp sgt i8 %i.pu, -1
  br i1 %i.pv, label %bb.bs, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i242.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i242.i: ; preds = %bb.br
  %i.pw = and i8 %i.pu, 31
  %i.px = zext nneg i8 %i.pw to i32               ; 3 uses
  %i.py = icmp ne ptr %i.pt, %i.po
  call void @llvm.assume(i1 %i.py)
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 2 ; 3 uses
  %i.qa = load i8, ptr %i.pt, align 1, !alias.scope !2355, !noalias !2389, !noundef !19
  %i.qb = shl nuw nsw i32 %i.px, 6
  %i.qc = and i8 %i.qa, 63
  %i.qd = zext nneg i8 %i.qc to i32               ; 2 uses
  %i.qe = or disjoint i32 %i.qb, %i.qd
  %i.qf = icmp samesign ugt i8 %i.pu, -33
  br i1 %i.qf, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i245.i, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.qg = zext nneg i8 %i.pu to i32
  br label %bb.bt

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i245.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i242.i
  %i.qh = icmp ne ptr %i.pz, %i.po
  call void @llvm.assume(i1 %i.qh)
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 3 ; 3 uses
  %i.qj = load i8, ptr %i.pz, align 1, !alias.scope !2355, !noalias !2389, !noundef !19
  %i.qk = shl nuw nsw i32 %i.qd, 6
  %i.ql = and i8 %i.qj, 63
  %i.qm = zext nneg i8 %i.ql to i32
  %i.qn = or disjoint i32 %i.qk, %i.qm            ; 2 uses
  %i.qo = shl nuw nsw i32 %i.px, 12
  %i.qp = or disjoint i32 %i.qn, %i.qo
  %i.qq = icmp samesign ugt i8 %i.pu, -17
  br i1 %i.qq, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i246.i, label %bb.bt

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i246.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i245.i
  %i.qr = icmp ne ptr %i.qi, %i.po
  call void @llvm.assume(i1 %i.qr)
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 4
  %i.qt = load i8, ptr %i.qi, align 1, !alias.scope !2355, !noalias !2389, !noundef !19
  %i.qu = shl nuw nsw i32 %i.px, 18
  %i.qv = and i32 %i.qu, 1835008
  %i.qw = shl nuw nsw i32 %i.qn, 6
  %i.qx = and i8 %i.qt, 63
  %i.qy = zext nneg i8 %i.qx to i32
  %i.qz = or disjoint i32 %i.qw, %i.qy
  %i.ra = or disjoint i32 %i.qz, %i.qv
  br label %bb.bt

bb.bt:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i246.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i245.i, %bb.bs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i242.i
  %.sroa.0373.2.ph.i = phi ptr [ %i.pz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i242.i ], [ %i.qi, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i245.i ], [ %i.qs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i246.i ], [ %i.pt, %bb.bs ] ; 3 uses
  %.sroa.4.0.i243.ph.i = phi i32 [ %i.qe, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i242.i ], [ %i.qp, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i245.i ], [ %i.ra, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i246.i ], [ %i.qg, %bb.bs ] ; 3 uses
  %i.rb = icmp samesign ult i32 %.sroa.4.0.i243.ph.i, 1114112
  call void @llvm.assume(i1 %i.rb)
  %i.rc = icmp eq i32 %.sroa.4.0.i243.ph.i, 46
  br i1 %i.rc, label %bb.bq, label %bb.bv

bb.bu:                                            ; preds = %bb.bq
  %i.rd = icmp eq i128 %.sroa.053.0.ph.i, 1
  br i1 %i.rd, label %bb.by, label %.thread514.i

bb.bv:                                            ; preds = %bb.bt
  %i.re = add nsw i32 %.sroa.4.0.i243.ph.i, -48   ; 2 uses
  %i.rf = icmp ult i32 %i.re, 10
  br i1 %i.rf, label %bb.bw, label %bb.bx, !prof !1077

bb.bw:                                            ; preds = %bb.bv
  %i.rg = mul i128 %.sroa.053.0.ph.i, 10          ; 3 uses
  %i.rh = mul i128 %.sroa.049.0.ph.i, 10
  %i.ri = zext nneg i32 %i.re to i128
  %i.rj = add i128 %i.rh, %i.ri                   ; 2 uses
  %i.rk = icmp ugt i128 %i.rg, 34028236692093846346337460743176821144
  br i1 %i.rk, label %.thread514.i, label %.outer.i.backedge

.outer.i.backedge:                                ; preds = %bb.bw, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i, %._crit_edge.i
  %.sroa.0373.1.ph.i.be = phi ptr [ %.sroa.0373.2.ph.i, %bb.bw ], [ %.sroa.0373.2512518.i, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i ], [ %.sroa.0373.2512518.i, %._crit_edge.i ]
  %.sroa.053.0.ph.i.be = phi i128 [ %i.rg, %bb.bw ], [ 1, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i ], [ 1, %._crit_edge.i ]
  %.sroa.049.0.ph.i.be = phi i128 [ %i.rj, %bb.bw ], [ 0, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i ], [ 0, %._crit_edge.i ]
  br label %.outer.i

bb.bx:                                            ; preds = %bb.bv
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #38
          to label %bb.bp unwind label %.loopexit.split-lp544.loopexit.split-lp.i, !noalias !2367

bb.by:                                            ; preds = %bb.bu
  %.sroa.072.0.i = call i32 @llvm.abs.i32(i32 %storemerge.i, i1 false)
  %i.rl = sext i32 %.sroa.072.0.i to i64          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2381
  %i.rm = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 5 uses
  store i64 0, ptr %i.rm, align 16, !noalias !2381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2392
  %i.rn = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 0, ptr %i.rn, align 16, !noalias !2392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2392
  store i64 0, ptr %i.f, align 16, !noalias !2396
  %.sroa.4375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4375.0..sroa_idx.i, align 8, !noalias !2396
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i128 625, ptr %.sroa.5.0..sroa_idx.i, align 16, !noalias !2396
  invoke void @_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendoE6extendINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(32) %i.f)
          to label %bb.cb unwind label %bb.bz, !noalias !2397

bb.bz:                                            ; preds = %bb.by
  %i.ro = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.g)
          to label %.body.i unwind label %bb.ca, !noalias !2397

bb.ca:                                            ; preds = %bb.bz
  %i.rp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36, !noalias !2397
  unreachable

.thread514.i:                                     ; preds = %bb.bw, %bb.bu
  %.sroa.049.1520.i = phi i128 [ %.sroa.049.0.ph.i, %bb.bu ], [ %i.rj, %bb.bw ] ; 2 uses
  %.sroa.053.1519.i = phi i128 [ %.sroa.053.0.ph.i, %bb.bu ], [ %i.rg, %bb.bw ]
  %.sroa.0373.2512518.i = phi ptr [ %i.po, %bb.bu ], [ %.sroa.0373.2.ph.i, %bb.bw ] ; 2 uses
  %i.rq = invoke { ptr, ptr } @_RNvXsO_Csjpcu9PwIgok_8smallvecQINtB5_8SmallVecAoj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.y)
          to label %bb.es unwind label %.loopexit.split-lp544.loopexit.i, !noalias !2367 ; 2 uses

.body.i:                                          ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit254.i, %bb.bz
  %.pn203.pn.i = phi { ptr, i32 } [ %i.ro, %bb.bz ], [ %.pn203.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit254.i ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit249.i unwind label %bb.ea, !noalias !2367

bb.cb:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.r, ptr noundef nonnull align 16 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !2398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2381
  %i.rr = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 5 uses
  store i64 0, ptr %i.rr, align 16, !noalias !2381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2381
  %i.rs = and i64 %i.rl, 7
  %4 = getelementptr inbounds nuw [16 x i8], ptr @69, i64 %i.rs
  %i.rt = load i128, ptr %4, align 16, !noalias !2381, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2399
  %i.ru = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 0, ptr %i.ru, align 16, !noalias !2399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2399
  store i64 0, ptr %i.d, align 16, !noalias !2403
  %.sroa.4377.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.4377.0..sroa_idx.i, align 8, !noalias !2403
  %.sroa.5378.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i128 %i.rt, ptr %.sroa.5378.0..sroa_idx.i, align 16, !noalias !2403
  invoke void @_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendoE6extendINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(32) %i.d)
          to label %bb.ce unwind label %bb.cc, !noalias !2404

bb.cc:                                            ; preds = %bb.cb
  %i.rv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.e)
          to label %.body251.i unwind label %bb.cd, !noalias !2404

bb.cd:                                            ; preds = %bb.cc
  %i.rw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36, !noalias !2404
  unreachable

.body251.i:                                       ; preds = %bb.eb, %bb.cc
  %.pn203.i = phi { ptr, i32 } [ %i.rv, %bb.cc ], [ %i.yz, %bb.eb ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.q)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit254.i unwind label %bb.ea, !noalias !2367

bb.ce:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2399
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.p, ptr noundef nonnull align 16 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !2405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2399
  %i.rx = lshr i64 %i.rl, 3                       ; 2 uses
  %.not191643.i = icmp eq i64 %i.rx, 0
  br i1 %.not191643.i, label %._crit_edge647.i, label %.lr.ph646.i

.lr.ph646.i:                                      ; preds = %bb.ce
  %i.ry = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  br label %bb.ec

._crit_edge647.i:                                 ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit354.i, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.w, ptr noundef nonnull align 16 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !2381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.v, ptr noundef nonnull align 16 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !2381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %i.r, i64 48, i1 false), !noalias !2381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull align 16 dereferenceable(48) %i.s, i64 48, i1 false), !noalias !2381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2381
  %i.se = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.sf = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.sg = icmp sgt i32 %storemerge.i, -1
  %i.sh = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 7 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 7 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %.off215.i = add nsw i8 %.sroa.028.0, -1
  %switch216.i = icmp ult i8 %.off215.i, 3
  br label %bb.cg

.loopexit.i:                                      ; preds = %._crit_edge, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB1J_9IeeeFloatNtB1J_5HalfSE19from_decimal_strings_0ECslLuZgPVt6hg_3ide.exit.i, %bb.dh, %bb.dg, %bb.da, %bb.cq, %bb.cp, %bb.ck, %bb.cj, %bb.ch, %bb.cg
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

.loopexit.split-lp.i:                             ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.i, %.thread524.i, %bb.cw, %bb.cv
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.cf:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit258.i unwind label %bb.ea, !noalias !2367

bb.cg:                                            ; preds = %bb.do, %._crit_edge647.i
  %.sroa.077.0.i = phi i32 [ 0, %._crit_edge647.i ], [ %i.sr, %bb.do ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2381
  %i.sn = and i32 %.sroa.077.0.i, 63
  %i.so = zext nneg i32 %i.sn to i64
  %i.sp = shl i64 128, %i.so                      ; 3 uses
  %i.sq = add i64 %i.sp, -1                       ; 6 uses
  store i64 %i.sq, ptr %i.m, align 8, !noalias !2381
  %i.sr = add i32 %.sroa.077.0.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2381
  %i.ss = load i64, ptr %i.pq, align 16, !alias.scope !2406, !noalias !2409, !noundef !19 ; 2 uses
  %i.st = icmp ugt i64 %i.ss, 2                   ; 2 uses
  %i.su = load ptr, ptr %i.y, align 16, !alias.scope !2406, !noalias !2409, !nonnull !19
  %i.sv = load i64, ptr %i.pr, align 8, !alias.scope !2406, !noalias !2409
  %.sink11.i255.i = select i1 %i.st, ptr %i.su, ptr %i.y
  %.sink10.i256.i = select i1 %i.st, i64 %i.sv, i64 %i.ss
  %i.sw = invoke fastcc { i32, i8 } @_RNCNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5HalfSE19from_decimal_string0CslLuZgPVt6hg_3ide(ptr nonnull %i.m, ptr noalias nofree noundef align 16 dereferenceable(48) %i.u, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i255.i, i64 noundef %.sink10.i256.i)
          to label %bb.ch unwind label %.loopexit.i, !noalias !2367 ; 2 uses

bb.ch:                                            ; preds = %bb.cg
  %i.sx = load i64, ptr %i.se, align 16, !alias.scope !2411, !noalias !2414, !noundef !19 ; 2 uses
  %i.sy = icmp ugt i64 %i.sx, 2                   ; 2 uses
  %i.sz = load ptr, ptr %i.w, align 16, !alias.scope !2411, !noalias !2414, !nonnull !19
  %i.ta = load i64, ptr %i.sf, align 8, !alias.scope !2411, !noalias !2414
  %.sink11.i259.i = select i1 %i.sy, ptr %i.sz, ptr %i.w
  %.sink10.i260.i = select i1 %i.sy, i64 %i.ta, i64 %i.sx
  %i.tb = invoke fastcc { i32, i8 } @_RNCNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5HalfSE19from_decimal_string0CslLuZgPVt6hg_3ide(ptr nonnull %i.m, ptr noalias nofree noundef align 16 dereferenceable(48) %i.v, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i259.i, i64 noundef %.sink10.i260.i)
          to label %bb.ci unwind label %.loopexit.i, !noalias !2367 ; 2 uses

bb.ci:                                            ; preds = %bb.ch
  %i.tc = extractvalue { i32, i8 } %i.sw, 0
  %i.td = extractvalue { i32, i8 } %i.sw, 1
  %i.te = extractvalue { i32, i8 } %i.tb, 0       ; 2 uses
  %i.tf = extractvalue { i32, i8 } %i.tb, 1       ; 2 uses
  %i.tg = add i32 %i.tc, %storemerge.i            ; 2 uses
  %i.th = add i64 %i.sp, -12                      ; 3 uses
  %i.ti = icmp ne i8 %i.td, 0
  %i.tj = zext i1 %i.ti to i128
  br i1 %i.sg, label %bb.cp, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.tk = sub i32 %i.tg, %i.te
  store i32 %i.tk, ptr %i.l, align 4, !noalias !2381
  %i.tl = load i64, ptr %i.sh, align 16, !alias.scope !2416, !noalias !2419, !noundef !19 ; 2 uses
  %i.tm = icmp ugt i64 %i.tl, 2
  %i.tn = load i64, ptr %i.si, align 8, !alias.scope !2416, !noalias !2419
  %.sink10.i263.i = select i1 %i.tm, i64 %i.tn, i64 %i.tl
  invoke void @_RNvMsf_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6resizeCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.t, i64 noundef %.sink10.i263.i, i128 noundef 0)
          to label %bb.ck unwind label %.loopexit.i, !noalias !2367

bb.ck:                                            ; preds = %bb.cj
  %i.to = load i64, ptr %i.sj, align 16, !alias.scope !2421, !noalias !2424, !noundef !19 ; 2 uses
  %i.tp = icmp ugt i64 %i.to, 2                   ; 2 uses
  %i.tq = load ptr, ptr %i.t, align 16, !alias.scope !2421, !noalias !2424, !nonnull !19
  %.sink10.i268.i = select i1 %i.tp, ptr %i.tq, ptr %i.t
  %.val532.i = load i64, ptr %i.sk, align 8, !noalias !2381
  %i.tr = select i1 %i.tp, i64 %.val532.i, i64 %i.to
  %i.ts = load i64, ptr %i.sh, align 16, !alias.scope !2426, !noalias !2429, !noundef !19 ; 2 uses
  %i.tt = icmp ugt i64 %i.ts, 2                   ; 2 uses
  %i.tu = load ptr, ptr %i.u, align 16, !alias.scope !2426, !noalias !2429, !nonnull !19
  %.sink10.i270.i = select i1 %i.tt, ptr %i.tu, ptr %i.u
  %.val534.i = load i64, ptr %i.si, align 8, !noalias !2381
  %i.tv = select i1 %i.tt, i64 %.val534.i, i64 %i.ts
  %i.tw = load i64, ptr %i.sl, align 16, !alias.scope !2431, !noalias !2434, !noundef !19 ; 2 uses
  %i.tx = icmp ugt i64 %i.tw, 2                   ; 2 uses
  %i.ty = load ptr, ptr %i.v, align 16, !alias.scope !2431, !noalias !2434, !nonnull !19
  %.sink10.i273.i = select i1 %i.tx, ptr %i.ty, ptr %i.v
  %.val536.i = load i64, ptr %i.sm, align 8, !noalias !2381
  %i.tz = select i1 %i.tx, i64 %.val536.i, i64 %i.tw
  %i.ua = invoke fastcc noundef i8 @_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div(ptr noalias nofree noundef nonnull align 16 %.sink10.i268.i, i64 noundef %i.tr, ptr noalias nofree noundef align 4 dereferenceable(4) %i.l, ptr noalias nofree noundef nonnull align 16 %.sink10.i270.i, i64 noundef %i.tv, ptr noalias nofree noundef nonnull align 16 %.sink10.i273.i, i64 noundef %i.tz, i64 noundef %i.sq)
          to label %bb.cl unwind label %.loopexit.i, !noalias !2367 ; 2 uses

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslLuZgPVt6hg_3ide(ptr noundef nonnull %i.u, ptr noundef nonnull %i.t, i64 noundef 6)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit.i unwind label %bb.cm, !noalias !2367

bb.cm:                                            ; preds = %bb.cl
  %i.ub = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #36, !noalias !2367
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.cl
  %i.uc = load i32, ptr %i.l, align 4, !noalias !2381, !noundef !19 ; 2 uses
  %i.ud = icmp slt i32 %i.uc, -14
  br i1 %i.ud, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit.i
  %i.ue = sub nuw nsw i32 -14, %i.uc
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = add i64 %i.th, %i.uf                    ; 2 uses
  %i.uh = call i64 @llvm.usub.sat.i64(i64 %i.sq, i64 %i.ug)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit.i
  %.sroa.094.0.i = phi i64 [ %i.uh, %bb.cn ], [ 11, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit.i ]
  %.sroa.085.0.i = phi i64 [ %i.ug, %bb.cn ], [ %i.th, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit.i ]
  %i.ui = or i8 %i.ua, %i.tf
  %i.uj = icmp eq i8 %i.ui, 0
  %.sroa.099.0.i = select i1 %i.uj, i128 0, i128 2
  br label %bb.ct

bb.cp:                                            ; preds = %bb.ci
  %i.uk = add i32 %i.te, %i.tg
  store i32 %i.uk, ptr %i.l, align 4, !noalias !2381
  %i.ul = load i64, ptr %i.sh, align 16, !alias.scope !2436, !noalias !2439, !noundef !19 ; 2 uses
  %i.um = icmp ugt i64 %i.ul, 2
  %i.un = load i64, ptr %i.si, align 8, !alias.scope !2436, !noalias !2439
  %.sink10.i266.i = select i1 %i.um, i64 %i.un, i64 %i.ul
  %i.uo = load i64, ptr %i.sl, align 16, !alias.scope !2441, !noalias !2444, !noundef !19 ; 2 uses
  %i.up = icmp ugt i64 %i.uo, 2
  %i.uq = load i64, ptr %i.sm, align 8, !alias.scope !2441, !noalias !2444
  %.sink10.i280.i = select i1 %i.up, i64 %i.uq, i64 %i.uo
end_hunk_2
begin_hunk_3_@_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSENtB7_5Float10from_str_rCslLuZgPVt6hg_3ide:bb.a
bb.bo:                                            ; preds = %bb.bm
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %.sroa.4.0611754.i
  %i.ph = load i8, ptr %i.pg, align 1, !alias.scope !2657, !noalias !2638, !noundef !19
  %i.pi = icmp sgt i8 %i.ph, -65
  br i1 %i.pi, label %bb.bn, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i, !prof !42

.thread499.i:                                     ; preds = %bb.bh, %bb.bg
  %i.pj = icmp eq i8 %.sroa.028.0, 1
  br i1 %i.pj, label %bb.ex, label %bb.ew

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit249.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit306.i, %.body.i, %.loopexit.split-lp544.loopexit.split-lp.i, %.loopexit.split-lp544.loopexit.i, %.loopexit543.i
  %.pn203.pn.pn.i = phi { ptr, i32 } [ %.pn203.pn.i, %.body.i ], [ %.pn199.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit306.i ], [ %lpad.loopexit545.i, %.loopexit543.i ], [ %lpad.loopexit548.i, %.loopexit.split-lp544.loopexit.i ], [ %lpad.loopexit.split-lp549.i, %.loopexit.split-lp544.loopexit.split-lp.i ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.y)
          to label %common.resume.i unwind label %bb.ea, !noalias !2638

.loopexit543.i:                                   ; preds = %.lr.ph629.i
  %lpad.loopexit545.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit249.i

.loopexit.split-lp544.loopexit.i:                 ; preds = %bb.ev, %.thread514.i
  %lpad.loopexit548.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit249.i

.loopexit.split-lp544.loopexit.split-lp.i:        ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit307.i, %bb.bx, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i
  %lpad.loopexit.split-lp549.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit249.i

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i: ; preds = %bb.bn
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %reass.sub648.i
  %i.pl = load i8, ptr %i.pk, align 1, !alias.scope !2657, !noalias !2638, !noundef !19
  %i.pm = icmp sgt i8 %i.pl, -65
  br i1 %i.pm, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i, !prof !43

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i, %bb.bo, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E13with_capacityCslLuZgPVt6hg_3ide.exit.i
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1, i64 noundef range(i64 1, 0) %.sroa.18.1, i64 noundef %.sroa.4.0611754.i, i64 noundef %reass.sub648.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #38
          to label %bb.bp unwind label %.loopexit.split-lp544.loopexit.split-lp.i, !noalias !2638

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i, %bb.bn, %bb.bl
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %.sroa.4.0611754.i
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %reass.sub648.i ; 5 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.pq = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  br label %.outer.i

bb.bp:                                            ; preds = %bb.cw, %bb.cv, %bb.bx, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread505.i
  unreachable

.outer.i:                                         ; preds = %.outer.i.backedge, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i
  %.sroa.0373.1.ph.i = phi ptr [ %i.pn, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i ], [ %.sroa.0373.1.ph.i.be, %.outer.i.backedge ]
  %.sroa.053.0.ph.i = phi i128 [ 1, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i ], [ %.sroa.053.0.ph.i.be, %.outer.i.backedge ] ; 3 uses
  %.sroa.049.0.ph.i = phi i128 [ 0, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i ], [ %.sroa.049.0.ph.i.be, %.outer.i.backedge ] ; 2 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bt, %.outer.i
  %.sroa.0373.1.i = phi ptr [ %.sroa.0373.2.ph.i, %bb.bt ], [ %.sroa.0373.1.ph.i, %.outer.i ] ; 6 uses
  %i.ps = icmp eq ptr %.sroa.0373.1.i, %i.po
  br i1 %i.ps, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 1 ; 3 uses
  %i.pu = load i8, ptr %.sroa.0373.1.i, align 1, !alias.scope !2626, !noalias !2660, !noundef !19 ; 5 uses
  %i.pv = icmp sgt i8 %i.pu, -1
  br i1 %i.pv, label %bb.bs, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i242.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i242.i: ; preds = %bb.br
  %i.pw = and i8 %i.pu, 31
  %i.px = zext nneg i8 %i.pw to i32               ; 3 uses
  %i.py = icmp ne ptr %i.pt, %i.po
  call void @llvm.assume(i1 %i.py)
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 2 ; 3 uses
  %i.qa = load i8, ptr %i.pt, align 1, !alias.scope !2626, !noalias !2660, !noundef !19
  %i.qb = shl nuw nsw i32 %i.px, 6
  %i.qc = and i8 %i.qa, 63
  %i.qd = zext nneg i8 %i.qc to i32               ; 2 uses
  %i.qe = or disjoint i32 %i.qb, %i.qd
  %i.qf = icmp samesign ugt i8 %i.pu, -33
  br i1 %i.qf, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i245.i, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.qg = zext nneg i8 %i.pu to i32
  br label %bb.bt

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i245.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i242.i
  %i.qh = icmp ne ptr %i.pz, %i.po
  call void @llvm.assume(i1 %i.qh)
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 3 ; 3 uses
  %i.qj = load i8, ptr %i.pz, align 1, !alias.scope !2626, !noalias !2660, !noundef !19
  %i.qk = shl nuw nsw i32 %i.qd, 6
  %i.ql = and i8 %i.qj, 63
  %i.qm = zext nneg i8 %i.ql to i32
  %i.qn = or disjoint i32 %i.qk, %i.qm            ; 2 uses
  %i.qo = shl nuw nsw i32 %i.px, 12
  %i.qp = or disjoint i32 %i.qn, %i.qo
  %i.qq = icmp samesign ugt i8 %i.pu, -17
  br i1 %i.qq, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i246.i, label %bb.bt

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i246.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i245.i
  %i.qr = icmp ne ptr %i.qi, %i.po
  call void @llvm.assume(i1 %i.qr)
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0373.1.i, i64 4
  %i.qt = load i8, ptr %i.qi, align 1, !alias.scope !2626, !noalias !2660, !noundef !19
  %i.qu = shl nuw nsw i32 %i.px, 18
  %i.qv = and i32 %i.qu, 1835008
  %i.qw = shl nuw nsw i32 %i.qn, 6
  %i.qx = and i8 %i.qt, 63
  %i.qy = zext nneg i8 %i.qx to i32
  %i.qz = or disjoint i32 %i.qw, %i.qy
  %i.ra = or disjoint i32 %i.qz, %i.qv
  br label %bb.bt

bb.bt:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i246.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i245.i, %bb.bs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i242.i
  %.sroa.0373.2.ph.i = phi ptr [ %i.pz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i242.i ], [ %i.qi, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i245.i ], [ %i.qs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i246.i ], [ %i.pt, %bb.bs ] ; 3 uses
  %.sroa.4.0.i243.ph.i = phi i32 [ %i.qe, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i242.i ], [ %i.qp, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i245.i ], [ %i.ra, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i246.i ], [ %i.qg, %bb.bs ] ; 3 uses
  %i.rb = icmp samesign ult i32 %.sroa.4.0.i243.ph.i, 1114112
  call void @llvm.assume(i1 %i.rb)
  %i.rc = icmp eq i32 %.sroa.4.0.i243.ph.i, 46
  br i1 %i.rc, label %bb.bq, label %bb.bv

bb.bu:                                            ; preds = %bb.bq
  %i.rd = icmp eq i128 %.sroa.053.0.ph.i, 1
  br i1 %i.rd, label %bb.by, label %.thread514.i

bb.bv:                                            ; preds = %bb.bt
  %i.re = add nsw i32 %.sroa.4.0.i243.ph.i, -48   ; 2 uses
  %i.rf = icmp ult i32 %i.re, 10
  br i1 %i.rf, label %bb.bw, label %bb.bx, !prof !1077

bb.bw:                                            ; preds = %bb.bv
  %i.rg = mul i128 %.sroa.053.0.ph.i, 10          ; 3 uses
  %i.rh = mul i128 %.sroa.049.0.ph.i, 10
  %i.ri = zext nneg i32 %i.re to i128
  %i.rj = add i128 %i.rh, %i.ri                   ; 2 uses
  %i.rk = icmp ugt i128 %i.rg, 34028236692093846346337460743176821144
  br i1 %i.rk, label %.thread514.i, label %.outer.i.backedge

.outer.i.backedge:                                ; preds = %bb.bw, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i, %._crit_edge.i
  %.sroa.0373.1.ph.i.be = phi ptr [ %.sroa.0373.2.ph.i, %bb.bw ], [ %.sroa.0373.2512518.i, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i ], [ %.sroa.0373.2512518.i, %._crit_edge.i ]
  %.sroa.053.0.ph.i.be = phi i128 [ %i.rg, %bb.bw ], [ 1, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i ], [ 1, %._crit_edge.i ]
  %.sroa.049.0.ph.i.be = phi i128 [ %i.rj, %bb.bw ], [ 0, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i ], [ 0, %._crit_edge.i ]
  br label %.outer.i

bb.bx:                                            ; preds = %bb.bv
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #38
          to label %bb.bp unwind label %.loopexit.split-lp544.loopexit.split-lp.i, !noalias !2638

bb.by:                                            ; preds = %bb.bu
  %.sroa.072.0.i = call i32 @llvm.abs.i32(i32 %storemerge.i, i1 false)
  %i.rl = sext i32 %.sroa.072.0.i to i64          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2652
  %i.rm = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 5 uses
  store i64 0, ptr %i.rm, align 16, !noalias !2652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2663
  %i.rn = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 0, ptr %i.rn, align 16, !noalias !2663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2663
  store i64 0, ptr %i.f, align 16, !noalias !2667
  %.sroa.4375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4375.0..sroa_idx.i, align 8, !noalias !2667
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i128 625, ptr %.sroa.5.0..sroa_idx.i, align 16, !noalias !2667
  invoke void @_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendoE6extendINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(32) %i.f)
          to label %bb.cb unwind label %bb.bz, !noalias !2668

bb.bz:                                            ; preds = %bb.by
  %i.ro = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.g)
          to label %.body.i unwind label %bb.ca, !noalias !2668

bb.ca:                                            ; preds = %bb.bz
  %i.rp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36, !noalias !2668
  unreachable

.thread514.i:                                     ; preds = %bb.bw, %bb.bu
  %.sroa.049.1520.i = phi i128 [ %.sroa.049.0.ph.i, %bb.bu ], [ %i.rj, %bb.bw ] ; 2 uses
  %.sroa.053.1519.i = phi i128 [ %.sroa.053.0.ph.i, %bb.bu ], [ %i.rg, %bb.bw ]
  %.sroa.0373.2512518.i = phi ptr [ %i.po, %bb.bu ], [ %.sroa.0373.2.ph.i, %bb.bw ] ; 2 uses
  %i.rq = invoke { ptr, ptr } @_RNvXsO_Csjpcu9PwIgok_8smallvecQINtB5_8SmallVecAoj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.y)
          to label %bb.es unwind label %.loopexit.split-lp544.loopexit.i, !noalias !2638 ; 2 uses

.body.i:                                          ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit254.i, %bb.bz
  %.pn203.pn.i = phi { ptr, i32 } [ %i.ro, %bb.bz ], [ %.pn203.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit254.i ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit249.i unwind label %bb.ea, !noalias !2638

bb.cb:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.r, ptr noundef nonnull align 16 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !2669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2652
  %i.rr = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 5 uses
  store i64 0, ptr %i.rr, align 16, !noalias !2652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2652
  %i.rs = and i64 %i.rl, 7
  %4 = getelementptr inbounds nuw [16 x i8], ptr @69, i64 %i.rs
  %i.rt = load i128, ptr %4, align 16, !noalias !2652, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2670
  %i.ru = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 0, ptr %i.ru, align 16, !noalias !2670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2670
  store i64 0, ptr %i.d, align 16, !noalias !2674
  %.sroa.4377.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.4377.0..sroa_idx.i, align 8, !noalias !2674
  %.sroa.5378.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i128 %i.rt, ptr %.sroa.5378.0..sroa_idx.i, align 16, !noalias !2674
  invoke void @_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendoE6extendINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(32) %i.d)
          to label %bb.ce unwind label %bb.cc, !noalias !2675

bb.cc:                                            ; preds = %bb.cb
  %i.rv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.e)
          to label %.body251.i unwind label %bb.cd, !noalias !2675

bb.cd:                                            ; preds = %bb.cc
  %i.rw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36, !noalias !2675
  unreachable

.body251.i:                                       ; preds = %bb.eb, %bb.cc
  %.pn203.i = phi { ptr, i32 } [ %i.rv, %bb.cc ], [ %i.yz, %bb.eb ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.q)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit254.i unwind label %bb.ea, !noalias !2638

bb.ce:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2670
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.p, ptr noundef nonnull align 16 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !2676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2670
  %i.rx = lshr i64 %i.rl, 3                       ; 2 uses
  %.not191643.i = icmp eq i64 %i.rx, 0
  br i1 %.not191643.i, label %._crit_edge647.i, label %.lr.ph646.i

.lr.ph646.i:                                      ; preds = %bb.ce
  %i.ry = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  br label %bb.ec

._crit_edge647.i:                                 ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit354.i, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.w, ptr noundef nonnull align 16 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !2652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.v, ptr noundef nonnull align 16 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !2652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %i.r, i64 48, i1 false), !noalias !2652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull align 16 dereferenceable(48) %i.s, i64 48, i1 false), !noalias !2652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2652
  %i.se = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.sf = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.sg = icmp sgt i32 %storemerge.i, -1
  %i.sh = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 7 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 7 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %.off215.i = add nsw i8 %.sroa.028.0, -1
  %switch216.i = icmp ult i8 %.off215.i, 3
  br label %bb.cg

.loopexit.i:                                      ; preds = %._crit_edge, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB1J_9IeeeFloatNtB1J_5QuadSE19from_decimal_strings_0ECslLuZgPVt6hg_3ide.exit.i, %bb.dh, %bb.dg, %bb.da, %bb.cq, %bb.cp, %bb.ck, %bb.cj, %bb.ch, %bb.cg
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

.loopexit.split-lp.i:                             ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.i, %.thread524.i, %bb.cw, %bb.cv
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.cf:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit258.i unwind label %bb.ea, !noalias !2638

bb.cg:                                            ; preds = %bb.do, %._crit_edge647.i
  %.sroa.077.0.i = phi i32 [ 0, %._crit_edge647.i ], [ %i.sr, %bb.do ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2652
  %i.sn = and i32 %.sroa.077.0.i, 63
  %i.so = zext nneg i32 %i.sn to i64
  %i.sp = shl i64 128, %i.so                      ; 3 uses
  %i.sq = add i64 %i.sp, -1                       ; 6 uses
  store i64 %i.sq, ptr %i.m, align 8, !noalias !2652
  %i.sr = add i32 %.sroa.077.0.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2652
  %i.ss = load i64, ptr %i.pq, align 16, !alias.scope !2677, !noalias !2680, !noundef !19 ; 2 uses
  %i.st = icmp ugt i64 %i.ss, 2                   ; 2 uses
  %i.su = load ptr, ptr %i.y, align 16, !alias.scope !2677, !noalias !2680, !nonnull !19
  %i.sv = load i64, ptr %i.pr, align 8, !alias.scope !2677, !noalias !2680
  %.sink11.i255.i = select i1 %i.st, ptr %i.su, ptr %i.y
  %.sink10.i256.i = select i1 %i.st, i64 %i.sv, i64 %i.ss
  %i.sw = invoke fastcc { i32, i8 } @_RNCNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5QuadSE19from_decimal_string0CslLuZgPVt6hg_3ide(ptr nonnull %i.m, ptr noalias nofree noundef align 16 dereferenceable(48) %i.u, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i255.i, i64 noundef %.sink10.i256.i)
          to label %bb.ch unwind label %.loopexit.i, !noalias !2638 ; 2 uses

bb.ch:                                            ; preds = %bb.cg
  %i.sx = load i64, ptr %i.se, align 16, !alias.scope !2682, !noalias !2685, !noundef !19 ; 2 uses
  %i.sy = icmp ugt i64 %i.sx, 2                   ; 2 uses
  %i.sz = load ptr, ptr %i.w, align 16, !alias.scope !2682, !noalias !2685, !nonnull !19
  %i.ta = load i64, ptr %i.sf, align 8, !alias.scope !2682, !noalias !2685
  %.sink11.i259.i = select i1 %i.sy, ptr %i.sz, ptr %i.w
  %.sink10.i260.i = select i1 %i.sy, i64 %i.ta, i64 %i.sx
  %i.tb = invoke fastcc { i32, i8 } @_RNCNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5QuadSE19from_decimal_string0CslLuZgPVt6hg_3ide(ptr nonnull %i.m, ptr noalias nofree noundef align 16 dereferenceable(48) %i.v, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i259.i, i64 noundef %.sink10.i260.i)
          to label %bb.ci unwind label %.loopexit.i, !noalias !2638 ; 2 uses

bb.ci:                                            ; preds = %bb.ch
  %i.tc = extractvalue { i32, i8 } %i.sw, 0
  %i.td = extractvalue { i32, i8 } %i.sw, 1
  %i.te = extractvalue { i32, i8 } %i.tb, 0       ; 2 uses
  %i.tf = extractvalue { i32, i8 } %i.tb, 1       ; 2 uses
  %i.tg = add i32 %i.tc, %storemerge.i            ; 2 uses
  %i.th = add i64 %i.sp, -114                     ; 3 uses
  %i.ti = icmp ne i8 %i.td, 0
  %i.tj = zext i1 %i.ti to i128
  br i1 %i.sg, label %bb.cp, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.tk = sub i32 %i.tg, %i.te
  store i32 %i.tk, ptr %i.l, align 4, !noalias !2652
  %i.tl = load i64, ptr %i.sh, align 16, !alias.scope !2687, !noalias !2690, !noundef !19 ; 2 uses
  %i.tm = icmp ugt i64 %i.tl, 2
  %i.tn = load i64, ptr %i.si, align 8, !alias.scope !2687, !noalias !2690
  %.sink10.i263.i = select i1 %i.tm, i64 %i.tn, i64 %i.tl
  invoke void @_RNvMsf_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6resizeCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.t, i64 noundef %.sink10.i263.i, i128 noundef 0)
          to label %bb.ck unwind label %.loopexit.i, !noalias !2638

bb.ck:                                            ; preds = %bb.cj
  %i.to = load i64, ptr %i.sj, align 16, !alias.scope !2692, !noalias !2695, !noundef !19 ; 2 uses
  %i.tp = icmp ugt i64 %i.to, 2                   ; 2 uses
  %i.tq = load ptr, ptr %i.t, align 16, !alias.scope !2692, !noalias !2695, !nonnull !19
  %.sink10.i268.i = select i1 %i.tp, ptr %i.tq, ptr %i.t
  %.val532.i = load i64, ptr %i.sk, align 8, !noalias !2652
  %i.tr = select i1 %i.tp, i64 %.val532.i, i64 %i.to
  %i.ts = load i64, ptr %i.sh, align 16, !alias.scope !2697, !noalias !2700, !noundef !19 ; 2 uses
  %i.tt = icmp ugt i64 %i.ts, 2                   ; 2 uses
  %i.tu = load ptr, ptr %i.u, align 16, !alias.scope !2697, !noalias !2700, !nonnull !19
  %.sink10.i270.i = select i1 %i.tt, ptr %i.tu, ptr %i.u
  %.val534.i = load i64, ptr %i.si, align 8, !noalias !2652
  %i.tv = select i1 %i.tt, i64 %.val534.i, i64 %i.ts
  %i.tw = load i64, ptr %i.sl, align 16, !alias.scope !2702, !noalias !2705, !noundef !19 ; 2 uses
  %i.tx = icmp ugt i64 %i.tw, 2                   ; 2 uses
  %i.ty = load ptr, ptr %i.v, align 16, !alias.scope !2702, !noalias !2705, !nonnull !19
  %.sink10.i273.i = select i1 %i.tx, ptr %i.ty, ptr %i.v
  %.val536.i = load i64, ptr %i.sm, align 8, !noalias !2652
  %i.tz = select i1 %i.tx, i64 %.val536.i, i64 %i.tw
  %i.ua = invoke fastcc noundef i8 @_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div(ptr noalias nofree noundef nonnull align 16 %.sink10.i268.i, i64 noundef %i.tr, ptr noalias nofree noundef align 4 dereferenceable(4) %i.l, ptr noalias nofree noundef nonnull align 16 %.sink10.i270.i, i64 noundef %i.tv, ptr noalias nofree noundef nonnull align 16 %.sink10.i273.i, i64 noundef %i.tz, i64 noundef %i.sq)
          to label %bb.cl unwind label %.loopexit.i, !noalias !2638 ; 2 uses

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslLuZgPVt6hg_3ide(ptr noundef nonnull %i.u, ptr noundef nonnull %i.t, i64 noundef 6)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit.i unwind label %bb.cm, !noalias !2638

bb.cm:                                            ; preds = %bb.cl
  %i.ub = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #36, !noalias !2638
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.cl
  %i.uc = load i32, ptr %i.l, align 4, !noalias !2652, !noundef !19 ; 2 uses
  %i.ud = icmp slt i32 %i.uc, -16382
  br i1 %i.ud, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit.i
  %i.ue = sub nuw nsw i32 -16382, %i.uc
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = add i64 %i.th, %i.uf                    ; 2 uses
  %i.uh = call i64 @llvm.usub.sat.i64(i64 %i.sq, i64 %i.ug)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit.i
  %.sroa.094.0.i = phi i64 [ %i.uh, %bb.cn ], [ 113, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit.i ]
  %.sroa.085.0.i = phi i64 [ %i.ug, %bb.cn ], [ %i.th, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit.i ]
  %i.ui = or i8 %i.ua, %i.tf
  %i.uj = icmp eq i8 %i.ui, 0
  %.sroa.099.0.i = select i1 %i.uj, i128 0, i128 2
  br label %bb.ct

bb.cp:                                            ; preds = %bb.ci
  %i.uk = add i32 %i.te, %i.tg
  store i32 %i.uk, ptr %i.l, align 4, !noalias !2652
  %i.ul = load i64, ptr %i.sh, align 16, !alias.scope !2707, !noalias !2710, !noundef !19 ; 2 uses
  %i.um = icmp ugt i64 %i.ul, 2
  %i.un = load i64, ptr %i.si, align 8, !alias.scope !2707, !noalias !2710
  %.sink10.i266.i = select i1 %i.um, i64 %i.un, i64 %i.ul
  %i.uo = load i64, ptr %i.sl, align 16, !alias.scope !2712, !noalias !2715, !noundef !19 ; 2 uses
  %i.up = icmp ugt i64 %i.uo, 2
  %i.uq = load i64, ptr %i.sm, align 8, !alias.scope !2712, !noalias !2715
  %.sink10.i280.i = select i1 %i.up, i64 %i.uq, i64 %i.uo
end_hunk_3
