Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7942
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter7IterMutINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4grid9GridEntryNtNtB1I_5table13TableCellDataEENCNvB2E_11build_tables5_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_:bb.a
  invoke fastcc void @_RINvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator7collectINtB6_8SmallVecBC_EECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.t, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.u) #40
          to label %bb.g unwind label %bb.e, !noalias !22668

bb.g:                                             ; preds = %.cont.i.i32.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !22663
  %.sroa.42.8..sroa_idx.i.i47.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.42.i.i30.i.i.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.42.8..sroa_idx.i.i47.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !22663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !22663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !22663
  %.sroa.49.0..sroa_idx.i.i48.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.49.0..sroa_idx.i.i48.i.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.42.i.i30.i.i.i, i64 39, i1 false), !noalias !22663
  store i8 2, ptr %i.s, align 8, !noalias !22663
  invoke fastcc void @_RNvMs2_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagINtB5_10OrdinalSetNtB5_4AttrE13set_or_removeCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.af, i64 noundef 10, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.s)
          to label %bb.h unwind label %bb.e, !noalias !22654

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !22663
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i.i30.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull align 8 dereferenceable(56) %i.af, i64 56, i1 false), !alias.scope !22669, !noalias !22670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !22641
  call void @_RNvMsY_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagINtB5_3TagNtNtB5_4kind2THE13with_row_span(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ah, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.ag, i32 noundef %..i.i.i), !noalias !22641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !22641
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @_RNvMsY_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagINtB5_3TagNtNtB5_4kind2THE13with_col_span(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bn, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.ah, i32 noundef %.sroa.05.0.i.i.i), !noalias !22641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !22641
  store i64 17, ptr %i.ai, align 8, !noalias !22641
  br label %bb.i

bb.i:                                             ; preds = %bb.ax, %bb.h
  %i.bo = phi i32 [ %.pre108.i.i.i, %bb.ax ], [ %i.bd, %bb.h ]
  %i.bp = phi i32 [ %.pre.i.i.i, %bb.ax ], [ %i.bb, %bb.h ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !22642, !noalias !22643, !nonnull !10, !align !21, !noundef !10 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !22642, !noalias !22643, !nonnull !10, !align !22644, !noundef !10 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !range !14, !noalias !22641, !noundef !10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !noalias !22641 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !22642, !noalias !22643, !nonnull !10, !noundef !10
  %.sroa.09.0.copyload.i.i.i = load i32, ptr %i.by, align 1, !noalias !22641
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.421.0.insert.ext.i.i.i = zext i32 %i.bo to i64
  %.sroa.020.0.insert.ext.i.i.i = zext i32 %i.bp to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !22671)
  call void @llvm.experimental.noalias.scope.decl(metadata !22672)
  %.fr.i52.i.i.i.i = freeze i32 %.sroa.09.0.copyload.i.i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !22673
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !22674
  %.val8.i.i.i.i.i = load ptr, ptr %i.bz, align 8, !alias.scope !22675, !noalias !22676, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22677)
  %.not.i.i.i.i.i.i = icmp eq ptr %.val8.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !22678
  %i.cd = getelementptr inbounds nuw i8, ptr %.val8.i.i.i.i.i, i64 16
  invoke fastcc void @_RNvXsi_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_6StrokeNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.cd) #40
          to label %.noexc.i.i.i unwind label %bb.ay, !noalias !22641

.noexc.i.i.i:                                     ; preds = %bb.j
  invoke void @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_6StrokeNtNtNtB9_6layout3abs3AbsE17unwrap_or_default(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.k)
          to label %.noexc56.i.i.i unwind label %bb.ay, !noalias !22641

.noexc56.i.i.i:                                   ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !22678
  br label %_RNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table34resolve_cell_border_and_background0B9_.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  store i64 -2, ptr %i.o, align 8, !alias.scope !22677, !noalias !22674
  br label %_RNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table34resolve_cell_border_and_background0B9_.exit.i.i.i.i.i

_RNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table34resolve_cell_border_and_background0B9_.exit.i.i.i.i.i: ; preds = %bb.k, %.noexc56.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !22674
  %.val7.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !22675, !noalias !22676, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22679)
  %.not.i9.i.i.i.i.i = icmp eq ptr %.val7.i.i.i.i.i, null
  br i1 %.not.i9.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table34resolve_cell_border_and_background0B9_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !22680
  %i.ce = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i.i, i64 16
  invoke fastcc void @_RNvXsi_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_6StrokeNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ce) #40
          to label %.noexc.i.i.i.i.i unwind label %bb.o, !noalias !22674

.noexc.i.i.i.i.i:                                 ; preds = %bb.l
  invoke void @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_6StrokeNtNtNtB9_6layout3abs3AbsE17unwrap_or_default(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.j)
          to label %.noexc10.i.i.i.i.i unwind label %bb.o, !noalias !22674

.noexc10.i.i.i.i.i:                               ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !22680
  br label %_RNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table34resolve_cell_border_and_background0B9_.exit11.i.i.i.i.i

bb.m:                                             ; preds = %_RNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table34resolve_cell_border_and_background0B9_.exit.i.i.i.i.i
  store i64 -2, ptr %i.n, align 8, !alias.scope !22679, !noalias !22674
  br label %_RNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table34resolve_cell_border_and_background0B9_.exit11.i.i.i.i.i

bb.n:                                             ; preds = %bb.r, %bb.o
  %.pn.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i, %bb.r ], [ %i.cf, %bb.o ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(80) %i.o) #44
          to label %bb.bg unwind label %bb.w, !noalias !22674

bb.o:                                             ; preds = %.noexc.i.i.i.i.i, %bb.l
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_RNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table34resolve_cell_border_and_background0B9_.exit11.i.i.i.i.i: ; preds = %bb.m, %.noexc10.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !22674
  %.val6.i.i.i.i.i = load ptr, ptr %i.cb, align 8, !alias.scope !22675, !noalias !22676, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22681)
  %.not.i12.i.i.i.i.i = icmp eq ptr %.val6.i.i.i.i.i, null
  br i1 %.not.i12.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table34resolve_cell_border_and_background0B9_.exit11.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !22682
  %i.cg = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i, i64 16
  invoke fastcc void @_RNvXsi_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_6StrokeNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.cg) #40
          to label %.noexc13.i.i.i.i.i unwind label %bb.s, !noalias !22674

.noexc13.i.i.i.i.i:                               ; preds = %bb.p
  invoke void @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_6StrokeNtNtNtB9_6layout3abs3AbsE17unwrap_or_default(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.i)
          to label %.noexc14.i.i.i.i.i unwind label %bb.s, !noalias !22674

.noexc14.i.i.i.i.i:                               ; preds = %.noexc13.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !22682
  br label %_RNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table34resolve_cell_border_and_background0B9_.exit15.i.i.i.i.i

bb.q:                                             ; preds = %_RNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table34resolve_cell_border_and_background0B9_.exit11.i.i.i.i.i
  store i64 -2, ptr %i.m, align 8, !alias.scope !22681, !noalias !22674
  br label %_RNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table34resolve_cell_border_and_background0B9_.exit15.i.i.i.i.i

bb.r:                                             ; preds = %bb.v, %bb.s
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.cj, %bb.v ], [ %i.ch, %bb.s ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(80) %i.n) #44
          to label %bb.n unwind label %bb.w, !noalias !22674

bb.s:                                             ; preds = %.noexc13.i.i.i.i.i, %bb.p
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_RNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table34resolve_cell_border_and_background0B9_.exit15.i.i.i.i.i: ; preds = %bb.q, %.noexc14.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !22674
  %.val.i.i.i.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !22675, !noalias !22676, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22683)
  %.not.i16.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i16.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table34resolve_cell_border_and_background0B9_.exit15.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !22684
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 16
  invoke fastcc void @_RNvXsi_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_6StrokeNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ci) #40
          to label %.noexc17.i.i.i.i.i unwind label %bb.v, !noalias !22674

.noexc17.i.i.i.i.i:                               ; preds = %bb.t
  invoke void @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_6StrokeNtNtNtB9_6layout3abs3AbsE17unwrap_or_default(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.h)
          to label %.noexc18.i.i.i.i.i unwind label %bb.v, !noalias !22674

.noexc18.i.i.i.i.i:                               ; preds = %.noexc17.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !22684
  br label %_RINvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB3_5SidesRNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table16PrioritzedStrokeE3mapNCNvB12_34resolve_cell_border_and_background0INtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB7_9visualize6stroke11FixedStrokeEEB18_.exit.i.i.i.i

bb.u:                                             ; preds = %_RNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table34resolve_cell_border_and_background0B9_.exit15.i.i.i.i.i
  store i64 -2, ptr %i.l, align 8, !alias.scope !22683, !noalias !22674
  br label %_RINvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB3_5SidesRNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table16PrioritzedStrokeE3mapNCNvB12_34resolve_cell_border_and_background0INtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB7_9visualize6stroke11FixedStrokeEEB18_.exit.i.i.i.i

bb.v:                                             ; preds = %.noexc17.i.i.i.i.i, %bb.t
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(80) %i.m) #44
          to label %bb.r unwind label %bb.w, !noalias !22674

bb.w:                                             ; preds = %bb.v, %bb.r, %bb.n
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !22674
  unreachable

_RINvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB3_5SidesRNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table16PrioritzedStrokeE3mapNCNvB12_34resolve_cell_border_and_background0INtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB7_9visualize6stroke11FixedStrokeEEB18_.exit.i.i.i.i: ; preds = %bb.u, %.noexc18.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.r, ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 80, i1 false), !noalias !22685
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 80 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cl, ptr noundef nonnull align 8 dereferenceable(80) %i.n, i64 80, i1 false), !noalias !22685
  %i.cm = getelementptr inbounds nuw i8, ptr %i.r, i64 160 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cm, ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 80, i1 false), !noalias !22685
  %i.cn = getelementptr inbounds nuw i8, ptr %i.r, i64 240 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cn, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false), !noalias !22685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !22674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !22674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !22674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !22674
  %i.co = load i64, ptr %i.r, align 8, !range !38, !alias.scope !22686, !noalias !22687, !noundef !10 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.co, -2     ; 6 uses
  %i.cp = load i64, ptr %i.cl, align 8, !range !38, !alias.scope !22688, !noalias !22687, !noundef !10 ; 4 uses
  %i.cq = load i64, ptr %i.cm, align 8, !range !38, !alias.scope !22689, !noalias !22687, !noundef !10 ; 2 uses
  %.not.i8.i.i.i.i.i.i = icmp ne i64 %i.cq, -2    ; 4 uses
  %i.cr = load i64, ptr %i.cn, align 8, !range !38, !alias.scope !22690, !noalias !22687, !noundef !10 ; 2 uses
  %.not.i12.i.i.i.i.i.i.a = icmp ne i64 %i.cr, -2 ; 4 uses
  %.not.i4.i.i.i.i.i.i = icmp ne i64 %i.cp, -2    ; 4 uses
  %brmerge.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i, %.not.i4.i.i.i.i.i.i
  %brmerge156.i.i.i.i.i = or i1 %brmerge.i.i.i.i.i, %.not.i8.i.i.i.i.i.i
  %brmerge157.i.i.i.i.i = or i1 %brmerge156.i.i.i.i.i, %.not.i12.i.i.i.i.i.i.a ; 3 uses
  br i1 %brmerge157.i.i.i.i.i, label %_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag11BorderStyleEKj4_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i, label %_RINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB2_34resolve_cell_border_and_backgrounds_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag11BorderStyleEB8_.exit.i.i.i.i

_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag11BorderStyleEKj4_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i: ; preds = %_RINvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB3_5SidesRNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table16PrioritzedStrokeE3mapNCNvB12_34resolve_cell_border_and_background0INtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB7_9visualize6stroke11FixedStrokeEEB18_.exit.i.i.i.i
  %.not4.i.i.i.i.i.i.i.i = icmp eq i64 %i.co, -1
  %i.cs = select i1 %.not4.i.i.i.i.i.i.i.i, i32 131072, i32 196608
  %.mux.mux.mux.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i32 %i.cs, i32 0
  %.not4.i.i5.i.i.i.i.i.i = icmp eq i64 %i.cp, -1
  %i.ct = select i1 %.not4.i.i5.i.i.i.i.i.i, i32 2, i32 3
  %.not4.i.i9.i.i.i.i.i.i = icmp eq i64 %i.cq, -1
  %i.cu = select i1 %.not4.i.i9.i.i.i.i.i.i, i32 33554432, i32 50331648
  %.not4.i.i13.i.i.i.i.i.i = icmp eq i64 %i.cr, -1
  %i.cv = select i1 %.not4.i.i13.i.i.i.i.i.i, i32 512, i32 768
  %.sroa.35.0.insert.ext.i.i.i.i.i.i.i = select i1 %.not.i8.i.i.i.i.i.i, i32 %i.cu, i32 0
  %.sroa.4117.0.extract.shift.i.i.i.i.i = select i1 %.not.i4.i.i.i.i.i.i, i32 %i.ct, i32 0
  %.sroa.6119.0.extract.shift.i.i.i.i.i = select i1 %.not.i12.i.i.i.i.i.i.a, i32 %i.cv, i32 0
  %.sroa.411.2.insert.insert.i.i.i.i.i = or disjoint i32 %.sroa.4117.0.extract.shift.i.i.i.i.i, %.mux.mux.mux.i.i.i.i.i
  %.sroa.411.3.insert.insert.i.i.i.i.i = or disjoint i32 %.sroa.411.2.insert.insert.i.i.i.i.i, %.sroa.35.0.insert.ext.i.i.i.i.i.i.i
  %i.cw = or disjoint i32 %.sroa.411.3.insert.insert.i.i.i.i.i, %.sroa.6119.0.extract.shift.i.i.i.i.i
  br label %_RINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB2_34resolve_cell_border_and_backgrounds_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag11BorderStyleEB8_.exit.i.i.i.i

bb.x:                                             ; preds = %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14paint_to_color.exit.i.i.i.i, %.noexc47.i.i.i.i, %bb.at, %bb.ar, %bb.ao, %bb.an, %bb.am, %bb.al, %.noexc44.i.i.i.i, %bb.ag, %.noexc42.i.i.i.i, %bb.ae, %.noexc40.i.i.i.i, %bb.ac, %.noexc.i55.i.i.i, %bb.aa
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library6layout5sides5SidesINtNtB4_6option6OptionNtNtNtBI_9visualize6stroke11FixedStrokeEEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(320) %i.r) #44
          to label %bb.bg unwind label %bb.av, !noalias !22691

_RINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB2_34resolve_cell_border_and_backgrounds_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag11BorderStyleEB8_.exit.i.i.i.i: ; preds = %_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag11BorderStyleEKj4_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i, %_RINvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB3_5SidesRNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table16PrioritzedStrokeE3mapNCNvB12_34resolve_cell_border_and_background0INtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB7_9visualize6stroke11FixedStrokeEEB18_.exit.i.i.i.i
  %.sroa.02.0.insert.insert.i.i.i.i.i = phi i32 [ %i.cw, %_RNvXsI_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterRINtNtBb_6option6OptionNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag11BorderStyleEKj4_EINtB1J_4IterB22_EENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i ], [ 255, %_RINvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB3_5SidesRNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table16PrioritzedStrokeE3mapNCNvB12_34resolve_cell_border_and_background0INtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB7_9visualize6stroke11FixedStrokeEEB18_.exit.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !22673
  call void @llvm.experimental.noalias.scope.decl(metadata !22692)
  call void @llvm.experimental.noalias.scope.decl(metadata !22693)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.cz = load <2 x double>, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.db = load <2 x double>, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.r, i64 216
  %i.dd = load double, ptr %i.dc, align 8, !alias.scope !22694, !noalias !22695
  %i.de = insertelement <2 x double> %i.cz, double %i.dd, i64 1
  %i.df = fdiv <2 x double> %i.de, splat (double 1.270000e+02) ; 2 uses
  %i.dg = extractelement <2 x double> %i.df, i64 0
  %i.dh = fptrunc double %i.dg to float           ; 5 uses
  %i.di = extractelement <2 x double> %i.df, i64 1
  %i.dj = fptrunc double %i.di to float           ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.r, i64 296
  %i.dl = load double, ptr %i.dk, align 8, !alias.scope !22696, !noalias !22695
  %i.dm = insertelement <2 x double> %i.db, double %i.dl, i64 1
  %i.dn = fdiv <2 x double> %i.dm, splat (double 1.270000e+02)
  %i.do = fptrunc <2 x double> %i.dn to <2 x float> ; 3 uses
  %i.dp = trunc nuw i32 %i.bu to i1
  br i1 %i.dp, label %.lr.ph.i.split.us.i.i.preheader.i.i.i.i.i, label %.lr.ph.i.split.i.i.preheader.i.i.i.i.i

.lr.ph.i.split.i.i.preheader.i.i.i.i.i:           ; preds = %_RINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB2_34resolve_cell_border_and_backgrounds_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag11BorderStyleEB8_.exit.i.i.i.i
  %.mux.mux.mux.i32.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, float %i.dh, float 0.000000e+00
  br i1 %brmerge157.i.i.i.i.i, label %.split.preheader.i.thread168.i.i.i.i.i, label %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit.i.i.thread.i.i.i.i

.lr.ph.i.split.us.i.i.preheader.i.i.i.i.i:        ; preds = %_RINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB2_34resolve_cell_border_and_backgrounds_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag11BorderStyleEB8_.exit.i.i.i.i
  %i.dq = fcmp une float %i.bw, %i.dh
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %i.dq, i1 false
  br i1 %or.cond.i.i.i.i.i, label %.split.preheader.i.thread168.i.i.i.i.i, label %_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRINtNtBe_6option6OptionfEEE8try_folduNCINvNtNtNtBe_4iter8adapters7flatten15try_flatten_oneB1X_uINtNtNtBe_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB2H_6traits8iterator8Iterator3all5checkRfNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB58_34resolve_cell_border_and_backgrounds0_0fEs_0E0E0B3u_E0B5e_.exit.backedge.i.us.i.i.i.i.i.i.i

_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRINtNtBe_6option6OptionfEEE8try_folduNCINvNtNtNtBe_4iter8adapters7flatten15try_flatten_oneB1X_uINtNtNtBe_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB2H_6traits8iterator8Iterator3all5checkRfNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB58_34resolve_cell_border_and_backgrounds0_0fEs_0E0E0B3u_E0B5e_.exit.backedge.i.us.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.split.us.i.i.preheader.i.i.i.i.i
  %i.dr = extractelement <2 x float> %i.do, i64 0
  %i.ds = fcmp une float %i.bw, %i.dr
  %or.cond173.i.i.i.i.i = select i1 %.not.i4.i.i.i.i.i.i, i1 %i.ds, i1 false
  br i1 %or.cond173.i.i.i.i.i, label %.split.preheader.i.thread170.i.i.i.i.i, label %_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRINtNtBe_6option6OptionfEEE8try_folduNCINvNtNtNtBe_4iter8adapters7flatten15try_flatten_oneB1X_uINtNtNtBe_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB2H_6traits8iterator8Iterator3all5checkRfNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB58_34resolve_cell_border_and_backgrounds0_0fEs_0E0E0B3u_E0B5e_.exit.backedge.i.us.i.i.1.i.i.i.i.i

_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRINtNtBe_6option6OptionfEEE8try_folduNCINvNtNtNtBe_4iter8adapters7flatten15try_flatten_oneB1X_uINtNtNtBe_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB2H_6traits8iterator8Iterator3all5checkRfNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB58_34resolve_cell_border_and_backgrounds0_0fEs_0E0E0B3u_E0B5e_.exit.backedge.i.us.i.i.1.i.i.i.i.i: ; preds = %_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRINtNtBe_6option6OptionfEEE8try_folduNCINvNtNtNtBe_4iter8adapters7flatten15try_flatten_oneB1X_uINtNtNtBe_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB2H_6traits8iterator8Iterator3all5checkRfNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB58_34resolve_cell_border_and_backgrounds0_0fEs_0E0E0B3u_E0B5e_.exit.backedge.i.us.i.i.i.i.i.i.i
  %i.dt = fcmp une float %i.bw, %i.dj
  %or.cond174.i.i.i.i.i = select i1 %.not.i8.i.i.i.i.i.i, i1 %i.dt, i1 false
  %i.du = extractelement <2 x float> %i.do, i64 1
  %i.dv = fcmp une float %i.bw, %i.du
  %or.cond175.i.i.i.i.i = select i1 %.not.i12.i.i.i.i.i.i.a, i1 %i.dv, i1 false
  %or.cond.i.i.i.i = select i1 %or.cond174.i.i.i.i.i, i1 true, i1 %or.cond175.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %.split.preheader.i.i.i.i.i.i, label %bb.y

.split.preheader.i.i.i.i.i.i:                     ; preds = %_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRINtNtBe_6option6OptionfEEE8try_folduNCINvNtNtNtBe_4iter8adapters7flatten15try_flatten_oneB1X_uINtNtNtBe_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB2H_6traits8iterator8Iterator3all5checkRfNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB58_34resolve_cell_border_and_backgrounds0_0fEs_0E0E0B3u_E0B5e_.exit.backedge.i.us.i.i.1.i.i.i.i.i
  %.mux185.mux.mux.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, float %i.dh, float 0.000000e+00
  br i1 %brmerge157.i.i.i.i.i, label %.split.preheader.i.thread168.i.i.i.i.i, label %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit.i.i.thread.i.i.i.i

.split.preheader.i.thread170.i.i.i.i.i:           ; preds = %_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRINtNtBe_6option6OptionfEEE8try_folduNCINvNtNtNtBe_4iter8adapters7flatten15try_flatten_oneB1X_uINtNtNtBe_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB2H_6traits8iterator8Iterator3all5checkRfNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB58_34resolve_cell_border_and_backgrounds0_0fEs_0E0E0B3u_E0B5e_.exit.backedge.i.us.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %.split.preheader.i.thread168.i.i.i.i.i, label %.split.i.thread171.i.i.i.i.i

.split.i.thread171.i.i.i.i.i:                     ; preds = %.split.preheader.i.thread170.i.i.i.i.i
  br label %.split.preheader.i.thread168.i.i.i.i.i

.split.preheader.i.thread168.i.i.i.i.i:           ; preds = %.split.i.thread171.i.i.i.i.i, %.split.preheader.i.thread170.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i, %.lr.ph.i.split.us.i.i.preheader.i.i.i.i.i, %.lr.ph.i.split.i.i.preheader.i.i.i.i.i
  %..i.i.i.i.i.i.i.i = phi float [ %i.dh, %.lr.ph.i.split.us.i.i.preheader.i.i.i.i.i ], [ 0.000000e+00, %.split.i.thread171.i.i.i.i.i ], [ %i.dh, %.split.preheader.i.thread170.i.i.i.i.i ], [ %.mux185.mux.mux.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i ], [ %.mux.mux.mux.i32.i.i.i.i, %.lr.ph.i.split.i.i.preheader.i.i.i.i.i ]
  %i.dw = insertelement <2 x i1> poison, i1 %.not.i4.i.i.i.i.i.i, i64 0
  %i.dx = insertelement <2 x i1> %i.dw, i1 %.not.i12.i.i.i.i.i.i.a, i64 1
  %i.dy = select <2 x i1> %i.dx, <2 x float> %i.do, <2 x float> zeroinitializer
  %..i7.i.i.i.i.i.i.i = select i1 %.not.i8.i.i.i.i.i.i, float %i.dj, float 0.000000e+00
  %i.dz = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store <2 x float> %i.dy, ptr %i.dz, align 4, !alias.scope !22692, !noalias !22697
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store float %..i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !alias.scope !22692, !noalias !22697
  %.sroa.6.0..sroa_idx.i.i54.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store float %..i7.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i54.i.i.i, align 4, !alias.scope !22692, !noalias !22697
  br label %bb.y

_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit.i.i.thread.i.i.i.i: ; preds = %.split.preheader.i.i.i.i.i.i, %.lr.ph.i.split.i.i.preheader.i.i.i.i.i
  store i32 0, ptr %i.q, align 4, !alias.scope !22692, !noalias !22697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !22673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !22698
  br label %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit17.i.i.i.i.i.i

bb.y:                                             ; preds = %.split.preheader.i.thread168.i.i.i.i.i, %_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRINtNtBe_6option6OptionfEEE8try_folduNCINvNtNtNtBe_4iter8adapters7flatten15try_flatten_oneB1X_uINtNtNtBe_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB2H_6traits8iterator8Iterator3all5checkRfNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB58_34resolve_cell_border_and_backgrounds0_0fEs_0E0E0B3u_E0B5e_.exit.backedge.i.us.i.i.1.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi i32 [ 1, %.split.preheader.i.thread168.i.i.i.i.i ], [ 0, %_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRINtNtBe_6option6OptionfEEE8try_folduNCINvNtNtNtBe_4iter8adapters7flatten15try_flatten_oneB1X_uINtNtNtBe_3ops12control_flow11ControlFlowuENCINvNvNtNtNtB2H_6traits8iterator8Iterator3all5checkRfNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB58_34resolve_cell_border_and_backgrounds0_0fEs_0E0E0B3u_E0B5e_.exit.backedge.i.us.i.i.1.i.i.i.i.i ]
  store i32 %storemerge.i.i.i.i.i, ptr %i.q, align 4, !alias.scope !22692, !noalias !22697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !22673
  call void @llvm.experimental.noalias.scope.decl(metadata !22699)
  call void @llvm.experimental.noalias.scope.decl(metadata !22700)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !22701
  call void @llvm.experimental.noalias.scope.decl(metadata !22702)
  call void @llvm.experimental.noalias.scope.decl(metadata !22703)
  %.not.i.i.i33.i.i.i.i = icmp eq i64 %i.co, -2
  call void @llvm.experimental.noalias.scope.decl(metadata !22704)
  br i1 %.not.i.i.i33.i.i.i.i, label %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ea = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22705)
  %i.eb = load i32, ptr %i.ea, align 8, !range !57, !alias.scope !22706, !noalias !22707, !noundef !10
  %i.ec = icmp samesign ult i32 %i.eb, 2
  br i1 %i.ec, label %bb.aa, label %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !22708
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color6to_rgb(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ea)
          to label %.noexc.i55.i.i.i unwind label %bb.x, !noalias !22673

.noexc.i55.i.i.i:                                 ; preds = %bb.aa
  %i.ed = load float, ptr %i.f, align 4, !noalias !22708, !noundef !10
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ef = load float, ptr %i.ee, align 4, !noalias !22708, !noundef !10
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.eh = load float, ptr %i.eg, align 4, !noalias !22708, !noundef !10
  %i.ei = invoke i24 @_RNvMsa_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB5_13NaiveRgbColor7new_f32(float noundef %i.ed, float noundef %i.ef, float noundef %i.eh)
          to label %.noexc39.i.i.i.i unwind label %bb.x, !noalias !22673

.noexc39.i.i.i.i:                                 ; preds = %.noexc.i55.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !22708
  %i.ej = zext i24 %i.ei to i32
  %i.ek = shl nuw i32 %i.ej, 8
  %i.el = or disjoint i32 %i.ek, 1
  %.pre.i.i.i.i = load i64, ptr %i.cl, align 8, !range !38, !alias.scope !22709, !noalias !22707
  br label %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit.i.i.i.i.i.i

_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit.i.i.i.i.i.i: ; preds = %.noexc39.i.i.i.i, %bb.z, %bb.y
  %i.em = phi i64 [ %i.cp, %bb.y ], [ %.pre.i.i.i.i, %.noexc39.i.i.i.i ], [ %i.cp, %bb.z ]
  %.sroa.02.0.insert.insert.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.y ], [ %i.el, %.noexc39.i.i.i.i ], [ 0, %bb.z ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22710)
  %.not.i15.i.i.i.i.i.i = icmp eq i64 %i.em, -2
  call void @llvm.experimental.noalias.scope.decl(metadata !22711)
  br i1 %.not.i15.i.i.i.i.i.i, label %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit17.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit.i.i.i.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.r, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22712)
  %i.eo = load i32, ptr %i.en, align 8, !range !57, !alias.scope !22713, !noalias !22707, !noundef !10
  %i.ep = icmp samesign ult i32 %i.eo, 2
  br i1 %i.ep, label %bb.ac, label %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit17.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !22714
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color6to_rgb(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.en)
          to label %.noexc40.i.i.i.i unwind label %bb.x, !noalias !22673

.noexc40.i.i.i.i:                                 ; preds = %bb.ac
  %i.eq = load float, ptr %i.e, align 4, !noalias !22714, !noundef !10
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.es = load float, ptr %i.er, align 4, !noalias !22714, !noundef !10
  %i.et = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.eu = load float, ptr %i.et, align 4, !noalias !22714, !noundef !10
  %i.ev = invoke i24 @_RNvMsa_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB5_13NaiveRgbColor7new_f32(float noundef %i.eq, float noundef %i.es, float noundef %i.eu)
          to label %.noexc41.i.i.i.i unwind label %bb.x, !noalias !22673

.noexc41.i.i.i.i:                                 ; preds = %.noexc40.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22714
  %i.ew = zext i24 %i.ev to i32
  %i.ex = shl nuw i32 %i.ew, 8
  %i.ey = or disjoint i32 %i.ex, 1
  br label %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit17.i.i.i.i.i.i

_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit17.i.i.i.i.i.i: ; preds = %.noexc41.i.i.i.i, %bb.ab, %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit.i.i.i.i.i.i, %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit.i.i.thread.i.i.i.i
  %.sroa.02.0.insert.insert.i.i.i.i72.i.i.i.i = phi i32 [ %.sroa.02.0.insert.insert.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit.i.i.i.i.i.i ], [ %.sroa.02.0.insert.insert.i.i.i.i.i.i.i.i, %.noexc41.i.i.i.i ], [ %.sroa.02.0.insert.insert.i.i.i.i.i.i.i.i, %bb.ab ], [ 0, %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit.i.i.thread.i.i.i.i ] ; 5 uses
  %.sroa.02.0.insert.insert.i.i16.i.i.i.i.i.i = phi i32 [ 0, %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit.i.i.i.i.i.i ], [ %i.ey, %.noexc41.i.i.i.i ], [ 0, %bb.ab ], [ 0, %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit.i.i.thread.i.i.i.i ] ; 7 uses
  %.sroa.2.0.extract.trunc.i6073.in.i.i.i.i = lshr i32 %.fr.i52.i.i.i.i, 8
  %.sroa.2.0.extract.trunc.i6073.i.i.i.i = trunc i32 %.sroa.2.0.extract.trunc.i6073.in.i.i.i.i to i8 ; 4 uses
  %.sroa.3.0.extract.trunc.i6174.in.i.i.i.i = lshr i32 %.fr.i52.i.i.i.i, 16
  %.sroa.3.0.extract.trunc.i6174.i.i.i.i = trunc i32 %.sroa.3.0.extract.trunc.i6174.in.i.i.i.i to i8 ; 4 uses
  %.sroa.4.0.extract.shift.i6275.i.i.i.i = lshr i32 %.fr.i52.i.i.i.i, 24 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22715)
  %i.ez = load i64, ptr %i.cm, align 8, !range !38, !alias.scope !22716, !noalias !22707, !noundef !10
  %.not.i18.i.i.i.i.i.i = icmp eq i64 %i.ez, -2
  call void @llvm.experimental.noalias.scope.decl(metadata !22717)
  br i1 %.not.i18.i.i.i.i.i.i, label %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit20.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit17.i.i.i.i.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.r, i64 192 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22718)
  %i.fb = load i32, ptr %i.fa, align 8, !range !57, !alias.scope !22719, !noalias !22707, !noundef !10
  %i.fc = icmp samesign ult i32 %i.fb, 2
  br i1 %i.fc, label %bb.ae, label %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit20.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22720
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color6to_rgb(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fa)
          to label %.noexc42.i.i.i.i unwind label %bb.x, !noalias !22673

.noexc42.i.i.i.i:                                 ; preds = %bb.ae
  %i.fd = load float, ptr %i.d, align 4, !noalias !22720, !noundef !10
  %i.fe = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ff = load float, ptr %i.fe, align 4, !noalias !22720, !noundef !10
  %i.fg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fh = load float, ptr %i.fg, align 4, !noalias !22720, !noundef !10
  %i.fi = invoke i24 @_RNvMsa_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB5_13NaiveRgbColor7new_f32(float noundef %i.fd, float noundef %i.ff, float noundef %i.fh)
          to label %.noexc43.i.i.i.i unwind label %bb.x, !noalias !22673

.noexc43.i.i.i.i:                                 ; preds = %.noexc42.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22720
  %i.fj = zext i24 %i.fi to i32
  %i.fk = shl nuw i32 %i.fj, 8
  %i.fl = or disjoint i32 %i.fk, 1
  br label %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit20.i.i.i.i.i.i

_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit20.i.i.i.i.i.i: ; preds = %.noexc43.i.i.i.i, %bb.ad, %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit17.i.i.i.i.i.i
  %.sroa.02.0.insert.insert.i.i19.i.i.i.i.i.i = phi i32 [ 0, %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit17.i.i.i.i.i.i ], [ %i.fl, %.noexc43.i.i.i.i ], [ 0, %bb.ad ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22721)
  %i.fm = load i64, ptr %i.cn, align 8, !range !38, !alias.scope !22722, !noalias !22707, !noundef !10
  %.not.i21.i.i.i.i.i.i = icmp eq i64 %i.fm, -2
  call void @llvm.experimental.noalias.scope.decl(metadata !22723)
  br i1 %.not.i21.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit20.i.i.i.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.r, i64 272 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22724)
  %i.fo = load i32, ptr %i.fn, align 8, !range !57, !alias.scope !22725, !noalias !22707, !noundef !10
  %i.fp = icmp samesign ult i32 %i.fo, 2
  br i1 %i.fp, label %bb.ag, label %.lr.ph.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22726
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color6to_rgb(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fn)
          to label %.noexc44.i.i.i.i unwind label %bb.x, !noalias !22673

.noexc44.i.i.i.i:                                 ; preds = %bb.ag
  %i.fq = load float, ptr %i.c, align 4, !noalias !22726, !noundef !10
  %i.fr = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.fs = load float, ptr %i.fr, align 4, !noalias !22726, !noundef !10
  %i.ft = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.fu = load float, ptr %i.ft, align 4, !noalias !22726, !noundef !10
  %i.fv = invoke i24 @_RNvMsa_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB5_13NaiveRgbColor7new_f32(float noundef %i.fq, float noundef %i.fs, float noundef %i.fu)
          to label %.noexc45.i.i.i.i unwind label %bb.x, !noalias !22673

.noexc45.i.i.i.i:                                 ; preds = %.noexc44.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22726
  %i.fw = zext i24 %i.fv to i32
  %i.fx = shl nuw i32 %i.fw, 8
  %i.fy = or disjoint i32 %i.fx, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc45.i.i.i.i, %bb.af, %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit20.i.i.i.i.i.i
  %.sroa.02.0.insert.insert.i.i22.i.i.i.i.i.i = phi i32 [ 0, %_RNCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13resolve_sidesNCNvB4_34resolve_cell_border_and_backgrounds1_0NtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag13NaiveRgbColorE0Ba_.exit20.i.i.i.i.i.i ], [ %i.fy, %.noexc45.i.i.i.i ], [ 0, %bb.af ] ; 8 uses
  store i32 %.sroa.02.0.insert.insert.i.i.i.i72.i.i.i.i, ptr %i.g, align 4, !alias.scope !22702, !noalias !22727
  %i.fz = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  store i32 %.sroa.02.0.insert.insert.i.i16.i.i.i.i.i.i, ptr %i.fz, align 4, !alias.scope !22702, !noalias !22727
  %i.ga = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store i32 %.sroa.02.0.insert.insert.i.i19.i.i.i.i.i.i, ptr %i.ga, align 4, !alias.scope !22702, !noalias !22727
  %i.gb = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  store i32 %.sroa.02.0.insert.insert.i.i22.i.i.i.i.i.i, ptr %i.gb, align 4, !alias.scope !22702, !noalias !22727
  %i.gc = trunc i32 %.fr.i52.i.i.i.i to i1
  %i.gd = lshr i32 %.sroa.02.0.insert.insert.i.i.i.i72.i.i.i.i, 24
  %i.ge = lshr i32 %.sroa.02.0.insert.insert.i.i.i.i72.i.i.i.i, 16
  %i.gf = trunc i32 %i.ge to i8
  %i.gg = lshr i32 %.sroa.02.0.insert.insert.i.i.i.i72.i.i.i.i, 8 ; 2 uses
  %i.gh = trunc i32 %i.gg to i8
  %i.gi = lshr i32 %.sroa.02.0.insert.insert.i.i16.i.i.i.i.i.i, 24
  %i.gj = lshr i32 %.sroa.02.0.insert.insert.i.i16.i.i.i.i.i.i, 16
  %i.gk = trunc i32 %i.gj to i8
  %i.gl = lshr i32 %.sroa.02.0.insert.insert.i.i16.i.i.i.i.i.i, 8 ; 2 uses
  %i.gm = trunc i32 %i.gl to i8
  %i.gn = lshr i32 %.sroa.02.0.insert.insert.i.i19.i.i.i.i.i.i, 24
  %i.go = lshr i32 %.sroa.02.0.insert.insert.i.i19.i.i.i.i.i.i, 16
  %i.gp = trunc i32 %i.go to i8
  %i.gq = lshr i32 %.sroa.02.0.insert.insert.i.i19.i.i.i.i.i.i, 8 ; 2 uses
  %i.gr = trunc i32 %i.gq to i8
  %i.gs = lshr i32 %.sroa.02.0.insert.insert.i.i22.i.i.i.i.i.i, 24
  %i.gt = lshr i32 %.sroa.02.0.insert.insert.i.i22.i.i.i.i.i.i, 16
  %i.gu = trunc i32 %i.gt to i8
end_hunk_0
