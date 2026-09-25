Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_svg-9252d00a33f6f6d4.typst_svg.f56e30c74974af6c-cgu.0?download=true
inline.NumInlined: 2859
inline.NumDeleted: 1255
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvMNtCsl4q486LaARA_9typst_svg5paintNtB4_11SVGRenderer15write_gradients:bb.a
  br i1 %i.adt, label %bb.jm, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources7from_fn6FromFnNCNvMNtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB12_8Gradient49generate_intermediate_stops_for_rgb_interpolation0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Y_8for_each4callTNtNtB14_5color5ColorNtNtNtB16_6layout5ratio5RatioENCNvMNtCsl4q486LaARA_9typst_svg5paintNtB4X_11SVGRenderer15write_gradientss_0E0EB4X_.exit

bb.jm:                                            ; preds = %bb.jl
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.1.i.i.i.i.i.i) #35
          to label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources7from_fn6FromFnNCNvMNtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB12_8Gradient49generate_intermediate_stops_for_rgb_interpolation0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Y_8for_each4callTNtNtB14_5color5ColorNtNtNtB16_6layout5ratio5RatioENCNvMNtCsl4q486LaARA_9typst_svg5paintNtB4X_11SVGRenderer15write_gradientss_0E0EB4X_.exit unwind label %bb.dc

bb.jn:                                            ; preds = %bb.jk
  %i.adu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !4733
  unreachable

bb.jo:                                            ; preds = %bb.jd, %bb.jc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECsl4q486LaARA_9typst_svg.exit34.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !4963
  br label %bb.dg

bb.jp:                                            ; preds = %bb.hq
  %i.adv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body432

.body432:                                         ; preds = %bb.hm, %bb.hn, %bb.ho, %bb.jp
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !4733
  unreachable

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources7from_fn6FromFnNCNvMNtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB12_8Gradient49generate_intermediate_stops_for_rgb_interpolation0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Y_8for_each4callTNtNtB14_5color5ColorNtNtNtB16_6layout5ratio5RatioENCNvMNtCsl4q486LaARA_9typst_svg5paintNtB4X_11SVGRenderer15write_gradientss_0E0EB4X_.exit: ; preds = %bb.jl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECsl4q486LaARA_9typst_svg.exit.i.i11.i, %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.experimental.noalias.scope.decl(metadata !5053)
  call void @llvm.experimental.noalias.scope.decl(metadata !5054)
  %i.adw = load i32, ptr %i.gi, align 8, !range !25, !alias.scope !5055, !noundef !12
  %i.adx = icmp eq i32 %i.adw, 0
  br i1 %i.adx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit325, label %bb.jq

bb.jq:                                            ; preds = %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources7from_fn6FromFnNCNvMNtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB12_8Gradient49generate_intermediate_stops_for_rgb_interpolation0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Y_8for_each4callTNtNtB14_5color5ColorNtNtNtB16_6layout5ratio5RatioENCNvMNtCsl4q486LaARA_9typst_svg5paintNtB4X_11SVGRenderer15write_gradientss_0E0EB4X_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !5056)
  call void @llvm.experimental.noalias.scope.decl(metadata !5057)
  call void @llvm.experimental.noalias.scope.decl(metadata !5058)
  %i.ady = load ptr, ptr %.sroa.654.0..sroa_idx, align 8, !alias.scope !5059, !nonnull !12, !noundef !12
  %i.adz = atomicrmw sub ptr %i.ady, i64 1 release, align 8, !noalias !5059
  %i.aea = icmp eq i64 %i.adz, 1
  br i1 %i.aea, label %bb.jr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit325

bb.jr:                                            ; preds = %bb.jq
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.654.0..sroa_idx) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit325 unwind label %bb.ju

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit: ; preds = %bb.dd, %.body322, %bb.de, %bb.ju
  %.pn156 = phi { ptr, i32 } [ %i.aeg, %bb.ju ], [ %eh.lpad-body323, %bb.de ], [ %eh.lpad-body323, %.body322 ], [ %eh.lpad-body323, %bb.dd ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5060)
  call void @llvm.experimental.noalias.scope.decl(metadata !5061)
  %i.aeb = load i32, ptr %i.gg, align 8, !range !25, !alias.scope !5062, !noundef !12
  %i.aec = icmp eq i32 %i.aeb, 0
  br i1 %i.aec, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit230, label %bb.js

bb.js:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !5063)
  call void @llvm.experimental.noalias.scope.decl(metadata !5064)
  call void @llvm.experimental.noalias.scope.decl(metadata !5065)
  %i.aed = load ptr, ptr %.sroa.650.0..sroa_idx, align 8, !alias.scope !5066, !nonnull !12, !noundef !12
  %i.aee = atomicrmw sub ptr %i.aed, i64 1 release, align 8, !noalias !5066
  %i.aef = icmp eq i64 %i.aee, 1
  br i1 %i.aef, label %bb.jt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit230

bb.jt:                                            ; preds = %bb.js
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.650.0..sroa_idx) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit230 unwind label %bb.x

bb.ju:                                            ; preds = %bb.jr
  %i.aeg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit325: ; preds = %bb.jq, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources7from_fn6FromFnNCNvMNtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB12_8Gradient49generate_intermediate_stops_for_rgb_interpolation0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Y_8for_each4callTNtNtB14_5color5ColorNtNtNtB16_6layout5ratio5RatioENCNvMNtCsl4q486LaARA_9typst_svg5paintNtB4X_11SVGRenderer15write_gradientss_0E0EB4X_.exit, %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @llvm.experimental.noalias.scope.decl(metadata !5067)
  call void @llvm.experimental.noalias.scope.decl(metadata !5068)
  %i.aeh = load i32, ptr %i.gg, align 8, !range !25, !alias.scope !5069, !noundef !12
  %i.aei = icmp eq i32 %i.aeh, 0
  br i1 %i.aei, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit329, label %bb.jv

bb.jv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit325
  call void @llvm.experimental.noalias.scope.decl(metadata !5070)
  call void @llvm.experimental.noalias.scope.decl(metadata !5071)
  call void @llvm.experimental.noalias.scope.decl(metadata !5072)
  %i.aej = load ptr, ptr %.sroa.650.0..sroa_idx, align 8, !alias.scope !5073, !nonnull !12, !noundef !12
  %i.aek = atomicrmw sub ptr %i.aej, i64 1 release, align 8, !noalias !5073
  %i.ael = icmp eq i64 %i.aek, 1
  br i1 %i.ael, label %bb.jw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit329

bb.jw:                                            ; preds = %bb.jv
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.650.0..sroa_idx) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit329 unwind label %.loopexit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit329: ; preds = %bb.jv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit325, %bb.jw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %bb.cs

_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit190: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i128 %i.ig, ptr %i.ar, align 16, !noalias !5074
  store i32 %i.if, ptr %i.dw, align 16, !noalias !5074
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrNtB1b_7DedupIdE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.ar) #35
          to label %bb.jx unwind label %.loopexit.split-lp97

.thread76:                                        ; preds = %.loopexit96, %.loopexit.split-lp97, %.body405, %bb.kh, %.thread68
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn71, %.thread68 ], [ %lpad.thr_comm.split-lp, %bb.kh ], [ %eh.lpad-body406, %.body405 ], [ %lpad.loopexit98, %.loopexit96 ], [ %lpad.loopexit.split-lp99, %.loopexit.split-lp97 ]
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit191 unwind label %bb.x

.loopexit96:                                      ; preds = %bb.kf, %bb.kg
  %lpad.loopexit98 = landingpad { ptr, i32 }
          cleanup
  br label %.thread76

.loopexit.split-lp97:                             ; preds = %_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit190, %bb.jx, %bb.jy, %bb.jz, %bb.ka, %bb.kb, %bb.kc, %bb.kd
  %lpad.loopexit.split-lp99 = landingpad { ptr, i32 }
          cleanup
  br label %.thread76

bb.jx:                                            ; preds = %_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr @180, ptr %i.aq, align 8, !noalias !5075
  store i64 7, ptr %i.dx, align 8, !noalias !5075
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aq) #35
          to label %bb.jy unwind label %.loopexit.split-lp97

bb.jy:                                            ; preds = %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr @153, ptr %i.ap, align 8, !noalias !5076
  store i64 4, ptr %i.dy, align 8, !noalias !5076
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @152, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ap) #35
          to label %bb.jz unwind label %.loopexit.split-lp97

bb.jz:                                            ; preds = %bb.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr @162, ptr %i.ao, align 8, !noalias !5077
  store i64 14, ptr %i.dz, align 8, !noalias !5077
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ao) #35
          to label %bb.ka unwind label %.loopexit.split-lp97

bb.ka:                                            ; preds = %bb.jz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr @181, ptr %i.an, align 8, !noalias !5078
  store i64 1, ptr %i.ea, align 8, !noalias !5078
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.an) #35
          to label %bb.kb unwind label %.loopexit.split-lp97

bb.kb:                                            ; preds = %bb.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr @181, ptr %i.am, align 8, !noalias !5079
  store i64 1, ptr %i.eb, align 8, !noalias !5079
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.am) #35
          to label %bb.kc unwind label %.loopexit.split-lp97

bb.kc:                                            ; preds = %bb.kb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr @182, ptr %i.al, align 8, !noalias !5080
  store i64 4, ptr %i.ec, align 8, !noalias !5080
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al) #35
          to label %bb.kd unwind label %.loopexit.split-lp97

bb.kd:                                            ; preds = %bb.kc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr @182, ptr %i.ak, align 8, !noalias !5081
  store i64 4, ptr %i.ed, align 8, !noalias !5081
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ak) #35
          to label %bb.ke unwind label %.loopexit.split-lp97

bb.ke:                                            ; preds = %bb.kd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.aem = load ptr, ptr %i.ii, align 8, !nonnull !12, !noundef !12
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 96
  %i.aeo = load <2 x double>, ptr %i.aen, align 8 ; 3 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %.sroa.01.01177, i64 32
  %i.aeq = load double, ptr %i.aep, align 16, !noundef !12
  %i.aer = fdiv double 1.000000e+00, %i.aeq       ; 2 uses
  %.inv = fcmp ord double %i.aer, 0.000000e+00
  %spec.store.select = select i1 %.inv, double %i.aer, double 0.000000e+00 ; 2 uses
  %i.aes = fadd <2 x double> %i.aeo, splat (double 5.000000e-01)
  %i.aet = fmul <2 x double> %i.aes, splat (double 1.270000e+02) ; 2 uses
  %i.aeu = fcmp ord <2 x double> %i.aet, zeroinitializer
  %i.aev = fmul <2 x double> %i.aet, splat (double 5.000000e-01)
  %i.aew = select <2 x i1> %i.aeu, <2 x double> %i.aev, <2 x double> zeroinitializer ; 2 uses
  %i.aex = fcmp ord <2 x double> %i.aew, zeroinitializer
  %i.aey = select <2 x i1> %i.aex, <2 x double> %i.aew, <2 x double> zeroinitializer ; 3 uses
  %i.aez = fdiv <2 x double> %i.aey, splat (double 1.270000e+02)
  %i.afa = fmul <2 x double> %i.aez, splat (double 1.000000e+09)
  %i.afb = call <2 x double> @llvm.round.v2f64(<2 x double> %i.afa)
  %i.afc = fdiv <2 x double> %i.afb, splat (double 1.000000e+09) ; 3 uses
  %i.afd = extractelement <2 x double> %i.afc, i64 0 ; 4 uses
  %i.afe = call i64 @llvm.fptosi.sat.i64.f64(double %i.afd) ; 3 uses
  %i.aff = sitofp i64 %i.afe to double
  %i.afg = call double @llvm.fabs.f64(double %i.afd)
  %i.afh = fcmp ueq double %i.afg, +inf
  %i.afi = bitcast double %i.afd to i64           ; 3 uses
  %i.afj = and i64 %i.afi, 4503599627370495
  %i.afk = icmp eq i64 %i.afj, 0
  %i.afl = icmp slt i64 %i.afi, 0
  %.1.i.i.i443 = select i1 %i.afl, ptr @254, ptr @253
  %i.afm = and i64 %i.afi, -9218868437227405313
  %i.afn = icmp eq i64 %i.afm, -9223372036854775808
  %.sroa.4.0.i.i.i444 = select i1 %i.afn, i64 4, i64 3
  %.sroa.0.0.i.i.i445 = select i1 %i.afk, ptr %.1.i.i.i443, ptr @255
  %i.afo = icmp sgt i64 %i.afe, -1
  %.sroa.0.0.i.i1.i446 = call i64 @llvm.abs.i64(i64 %i.afe, i1 false) ; 3 uses
  %i.afp = icmp ugt i64 %.sroa.0.0.i.i1.i446, 9999
  %1 = extractelement <2 x double> %i.afc, i64 1  ; 4 uses
  %2 = call i64 @llvm.fptosi.sat.i64.f64(double %1) ; 3 uses
  %3 = sitofp i64 %2 to double
  %i.afq = insertelement <2 x double> poison, double %i.aff, i64 0
  %i.afr = insertelement <2 x double> %i.afq, double %3, i64 1
  %i.afs = fcmp oeq <2 x double> %i.afc, %i.afr   ; 2 uses
  %i.aft = call double @llvm.fabs.f64(double %1)
  %i.afu = fcmp ueq double %i.aft, +inf
  %i.afv = bitcast double %1 to i64               ; 3 uses
  %i.afw = and i64 %i.afv, 4503599627370495
  %i.afx = icmp eq i64 %i.afw, 0
  %i.afy = icmp slt i64 %i.afv, 0
  %.1.i.i.i = select i1 %i.afy, ptr @254, ptr @253
  %i.afz = and i64 %i.afv, -9218868437227405313
  %i.aga = icmp eq i64 %i.afz, -9223372036854775808
  %.sroa.4.0.i.i.i = select i1 %i.aga, i64 4, i64 3
  %.sroa.0.0.i.i.i = select i1 %i.afx, ptr %.1.i.i.i, ptr @255
  %i.agb = icmp sgt i64 %2, -1
  %.sroa.0.0.i.i1.i = call i64 @llvm.abs.i64(i64 %2, i1 false) ; 3 uses
  %i.agc = icmp ugt i64 %.sroa.0.0.i.i1.i, 9999
  %i.agd = extractelement <2 x i1> %i.afs, i64 0
  %i.age = extractelement <2 x i1> %i.afs, i64 1
  %i.agf = extractelement <2 x double> %i.aey, i64 0 ; 2 uses
  %i.agg = extractelement <2 x double> %i.aey, i64 1 ; 2 uses
  br label %bb.kf

.invoke:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit416, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECsl4q486LaARA_9typst_svg.exit228
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit269.backedge unwind label %bb.c

bb.kf:                                            ; preds = %bb.ke, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit416
  %.sroa.079.01174 = phi i64 [ 0, %bb.ke ], [ %i.agh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit416 ] ; 2 uses
  %i.agh = add nuw nsw i64 %.sroa.079.01174, 1    ; 3 uses
  %i.agi = load ptr, ptr %i.ii, align 8, !nonnull !12, !noundef !12
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 88
  %i.agk = load double, ptr %i.agj, align 8, !noundef !12
  %i.agl = uitofp nneg i64 %.sroa.079.01174 to double ; 2 uses
  %i.agm = fmul nnan double %i.agl, f0x3F91DF46A2529D39
  %i.agn = fadd double %i.agm, %i.agk             ; 2 uses
  %.inv135 = fcmp ord double %i.agn, 0.000000e+00
  %spec.store.select3 = select i1 %.inv135, double %i.agn, double 0.000000e+00
  %i.ago = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB2_8Gradient20correct_aspect_ratio(double noundef %spec.store.select3, double noundef %spec.store.select)
          to label %bb.kg unwind label %.loopexit96 ; 2 uses

bb.kg:                                            ; preds = %bb.kf
  %i.agp = fneg double %i.ago
  %i.agq = fcmp uno double %i.ago, 0.000000e+00
  %spec.store.select4 = select i1 %i.agq, double 0.000000e+00, double %i.agp ; 5 uses
  %i.agr = load ptr, ptr %i.ii, align 8, !nonnull !12, !noundef !12
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 88
  %i.agt = load double, ptr %i.ags, align 8, !noundef !12
  %i.agu = uitofp nneg i64 %i.agh to double       ; 2 uses
  %i.agv = fmul nnan double %i.agu, f0x3F91DF46A2529D39
  %i.agw = fadd double %i.agv, %i.agt             ; 2 uses
  %.inv136 = fcmp ord double %i.agw, 0.000000e+00
  %spec.store.select6 = select i1 %.inv136, double %i.agw, double 0.000000e+00
  %i.agx = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB2_8Gradient20correct_aspect_ratio(double noundef %spec.store.select6, double noundef %spec.store.select)
          to label %bb.kj unwind label %.loopexit96 ; 2 uses

.thread80:                                        ; preds = %_RINvMs0_Csl4q486LaARA_9typst_svgINtB6_12DeduplicatorNtNtB6_5paint14SVGSubGradientE15insert_with_valBO_NCNvMBQ_NtB6_11SVGRenderer15write_gradients0EB6_.exit, %bb.ns
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread68

bb.kh:                                            ; preds = %bb.od
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread76

bb.ki:                                            ; preds = %bb.lq, %bb.lr, %bb.ln, %bb.lm, %bb.ll, %bb.lk, %bb.lj
  %i.agy = landingpad { ptr, i32 }
          cleanup
  br label %.thread68

bb.kj:                                            ; preds = %bb.kg
  %i.agz = fneg double %i.agx
  %i.aha = fcmp uno double %i.agx, 0.000000e+00
  %spec.store.select7 = select i1 %i.aha, double 0.000000e+00, double %i.agz ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.dl, i8 0, i64 15, i1 false)
  store i8 -128, ptr %.sroa.4106.0..sroa_idx, align 1
  store double 1.000000e+00, ptr %i.ee, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ef, i8 0, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !5082)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store double %i.agf, ptr %i.aj, align 16, !noalias !5082
  store double %i.agg, ptr %i.ei, align 8, !noalias !5082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !5082
  store ptr %i.dl, ptr %i.ai, align 8, !noalias !5082
  store ptr %i.aj, ptr %i.ej, align 8, !noalias !5082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !5082
  store double %i.agf, ptr %i.ah, align 8, !noalias !5082
  store double %i.agg, ptr %i.ek, align 8, !noalias !5082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !5082
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false), !noalias !5082
  %i.ahb = invoke noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag)
          to label %bb.kl unwind label %bb.kk

bb.kk:                                            ; preds = %_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_intB7_.exit.i453, %_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatdECsl4q486LaARA_9typst_svg.exit.i440, %bb.kr, %_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_intB7_.exit.i, %_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatdECsl4q486LaARA_9typst_svg.exit.i, %bb.la, %.noexc.i, %bb.kn, %bb.km, %bb.kj
  %i.ahc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCsl4q486LaARA_9typst_svg4path14SvgPathBuilderNCNvMB1s_B1q_7move_to0EEB1u_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.ai) #32
          to label %.thread68 unwind label %bb.li

bb.kl:                                            ; preds = %bb.kj
  br i1 %i.ahb, label %bb.km, label %bb.kn

bb.km:                                            ; preds = %bb.kl
  %i.ahd = invoke noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ek, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.el)
          to label %bb.ko unwind label %bb.kk

bb.kn:                                            ; preds = %bb.ko, %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !5082
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef 2)
          to label %_RNvXs4_NtCsl4q486LaARA_9typst_svg5writeINtB5_12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_str.exit.i unwind label %bb.kk

bb.ko:                                            ; preds = %bb.km
  br i1 %i.ahd, label %bb.kp, label %bb.kn

bb.kp:                                            ; preds = %bb.ko
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !5082
  br label %bb.lj

_RNvXs4_NtCsl4q486LaARA_9typst_svg5writeINtB5_12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_str.exit.i: ; preds = %bb.kn
  br i1 %i.agd, label %bb.ks, label %bb.kq

bb.kq:                                            ; preds = %_RNvXs4_NtCsl4q486LaARA_9typst_svg5writeINtB5_12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_str.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  br i1 %i.afh, label %_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatdECsl4q486LaARA_9typst_svg.exit.i440, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.ahe = invoke noundef i64 @_RNvNtCseqBJZIMdYtm_3ryu6pretty8format64(double noundef %i.afd, ptr noundef nonnull dereferenceable(24) %i.n)
          to label %_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatdECsl4q486LaARA_9typst_svg.exit.i440 unwind label %bb.kk

_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatdECsl4q486LaARA_9typst_svg.exit.i440: ; preds = %bb.kq, %bb.kr
  %.sroa.0.0.i.i441 = phi ptr [ %i.n, %bb.kr ], [ %.sroa.0.0.i.i.i445, %bb.kq ] ; 2 uses
  %.sroa.4.0.i.pn.i.i442 = phi i64 [ %i.ahe, %bb.kr ], [ %.sroa.4.0.i.i.i444, %bb.kq ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i441) ]
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i441, i64 noundef %.sroa.4.0.i.pn.i.i442)
          to label %.noexc462 unwind label %bb.kk

.noexc462:                                        ; preds = %_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatdECsl4q486LaARA_9typst_svg.exit.i440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.noexc.i

bb.ks:                                            ; preds = %_RNvXs4_NtCsl4q486LaARA_9typst_svg5writeINtB5_12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_str.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !5083)
  br i1 %i.afp, label %.lr.ph.i.i.i457, label %._crit_edge.i.i.i447

._crit_edge.i.i.i447:                             ; preds = %.lr.ph.i.i.i457, %bb.ks
  %.sroa.09.0.lcssa.i.i.i448 = phi i64 [ 20, %bb.ks ], [ %i.aho, %.lr.ph.i.i.i457 ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i449 = phi i64 [ %.sroa.0.0.i.i1.i446, %bb.ks ], [ %i.ahh, %.lr.ph.i.i.i457 ] ; 3 uses
  %i.ahf = icmp samesign ugt i64 %.sroa.0.1.lcssa.i.i.i449, 99
  br i1 %i.ahf, label %bb.kt, label %bb.ku

.lr.ph.i.i.i457:                                  ; preds = %bb.ks, %.lr.ph.i.i.i457
  %.sroa.0.129.i.i.i458 = phi i64 [ %i.ahh, %.lr.ph.i.i.i457 ], [ %.sroa.0.0.i.i1.i446, %bb.ks ] ; 3 uses
  %.sroa.09.028.i.i.i459 = phi i64 [ %i.aho, %.lr.ph.i.i.i457 ], [ 20, %bb.ks ] ; 2 uses
  %i.ahg = urem i64 %.sroa.0.129.i.i.i458, 10000
  %i.ahh = udiv i64 %.sroa.0.129.i.i.i458, 10000  ; 2 uses
  %.lhs.trunc.i.i.i460 = trunc nuw nsw i64 %i.ahg to i16 ; 2 uses
  %i.ahi = udiv i16 %.lhs.trunc.i.i.i460, 100
  %i.ahj = shl nuw nsw i16 %i.ahi, 1
  %i.ahk = zext nneg i16 %i.ahj to i64
  %i.ahl = urem i16 %.lhs.trunc.i.i.i460, 100
  %i.ahm = shl nuw nsw i16 %i.ahl, 1
  %i.ahn = zext nneg i16 %i.ahm to i64
  %i.aho = add i64 %.sroa.09.028.i.i.i459, -4     ; 3 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr @367, i64 %i.ahk
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.aho
  %i.ahr = load i16, ptr %i.ahp, align 1, !noalias !5083
  store i16 %i.ahr, ptr %i.ahq, align 1, !alias.scope !5083
  %i.ahs = getelementptr inbounds nuw i8, ptr @367, i64 %i.ahn
  %i.aht = getelementptr i8, ptr %i.m, i64 %.sroa.09.028.i.i.i459
  %i.ahu = getelementptr i8, ptr %i.aht, i64 -2
  %i.ahv = load i16, ptr %i.ahs, align 1, !noalias !5083
  store i16 %i.ahv, ptr %i.ahu, align 1, !alias.scope !5083
  %i.ahw = icmp ugt i64 %.sroa.0.129.i.i.i458, 99999999
  br i1 %i.ahw, label %.lr.ph.i.i.i457, label %._crit_edge.i.i.i447

bb.kt:                                            ; preds = %._crit_edge.i.i.i447
  %.lhs.trunc24.i.i.i455 = trunc nuw i64 %.sroa.0.1.lcssa.i.i.i449 to i16 ; 2 uses
  %i.ahx = urem i16 %.lhs.trunc24.i.i.i455, 100
  %i.ahy = shl nuw nsw i16 %i.ahx, 1
  %i.ahz = zext nneg i16 %i.ahy to i64
  %i.aia = udiv i16 %.lhs.trunc24.i.i.i455, 100
  %.zext27.i.i.i456 = zext nneg i16 %i.aia to i64
  %i.aib = add i64 %.sroa.09.0.lcssa.i.i.i448, -2 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr @367, i64 %i.ahz
  %i.aid = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.aib
  %i.aie = load i16, ptr %i.aic, align 1, !noalias !5083
  store i16 %i.aie, ptr %i.aid, align 1, !alias.scope !5083
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %._crit_edge.i.i.i447
  %.sroa.09.1.i.i.i450 = phi i64 [ %i.aib, %bb.kt ], [ %.sroa.09.0.lcssa.i.i.i448, %._crit_edge.i.i.i447 ] ; 2 uses
  %.sroa.0.2.i.i.i451 = phi i64 [ %.zext27.i.i.i456, %bb.kt ], [ %.sroa.0.1.lcssa.i.i.i449, %._crit_edge.i.i.i447 ] ; 3 uses
  %i.aif = icmp samesign ult i64 %.sroa.0.2.i.i.i451, 10
  br i1 %i.aif, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.aig = shl nuw nsw i64 %.sroa.0.2.i.i.i451, 1
  %i.aih = add i64 %.sroa.09.1.i.i.i450, -2       ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr @367, i64 %i.aig
  %i.aij = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.aih
  %i.aik = load i16, ptr %i.aii, align 1, !noalias !5083
  store i16 %i.aik, ptr %i.aij, align 1, !alias.scope !5083
  br label %bb.kx

bb.kw:                                            ; preds = %bb.ku
  %i.ail = add i64 %.sroa.09.1.i.i.i450, -1       ; 2 uses
  %i.aim = trunc nuw nsw i64 %.sroa.0.2.i.i.i451 to i8
  %i.ain = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ail
  %i.aio = or disjoint i8 %i.aim, 48
  store i8 %i.aio, ptr %i.ain, align 1, !alias.scope !5083
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %bb.kv
  %.sroa.09.2.i.i.i452 = phi i64 [ %i.ail, %bb.kw ], [ %i.aih, %bb.kv ] ; 2 uses
  br i1 %i.afo, label %_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_intB7_.exit.i453, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.aip = add i64 %.sroa.09.2.i.i.i452, -1       ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.aip
  store i8 45, ptr %i.aiq, align 1, !alias.scope !5083
  br label %_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_intB7_.exit.i453

_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_intB7_.exit.i453: ; preds = %bb.ky, %bb.kx
  %.sroa.09.3.i.i.i454 = phi i64 [ %.sroa.09.2.i.i.i452, %bb.kx ], [ %i.aip, %bb.ky ] ; 2 uses
  %i.air = sub i64 20, %.sroa.09.3.i.i.i454       ; 2 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.09.3.i.i.i454
  %i.ait = icmp ult i64 %i.air, 21
  call void @llvm.assume(i1 %i.ait)
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ais, i64 noundef %i.air)
          to label %.noexc463 unwind label %bb.kk

.noexc463:                                        ; preds = %_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_intB7_.exit.i453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.noexc.i

.noexc.i:                                         ; preds = %.noexc463, %.noexc462
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 1)
          to label %.noexc1.i unwind label %bb.kk

.noexc1.i:                                        ; preds = %.noexc.i
  br i1 %i.age, label %bb.lb, label %bb.kz

bb.kz:                                            ; preds = %.noexc1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br i1 %i.afu, label %_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatdECsl4q486LaARA_9typst_svg.exit.i, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.aiu = invoke noundef i64 @_RNvNtCseqBJZIMdYtm_3ryu6pretty8format64(double noundef %1, ptr noundef nonnull dereferenceable(24) %i.p)
          to label %_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatdECsl4q486LaARA_9typst_svg.exit.i unwind label %bb.kk

_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatdECsl4q486LaARA_9typst_svg.exit.i: ; preds = %bb.kz, %bb.la
  %.sroa.0.0.i.i435 = phi ptr [ %i.p, %bb.la ], [ %.sroa.0.0.i.i.i, %bb.kz ] ; 2 uses
  %.sroa.4.0.i.pn.i.i = phi i64 [ %i.aiu, %bb.la ], [ %.sroa.4.0.i.i.i, %bb.kz ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i435) ]
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i435, i64 noundef %.sroa.4.0.i.pn.i.i)
          to label %.noexc438 unwind label %bb.kk

.noexc438:                                        ; preds = %_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatdECsl4q486LaARA_9typst_svg.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.lj

bb.lb:                                            ; preds = %.noexc1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !5084)
  br i1 %i.agc, label %.lr.ph.i.i.i436, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i436, %bb.lb
  %.sroa.09.0.lcssa.i.i.i = phi i64 [ 20, %bb.lb ], [ %i.aje, %.lr.ph.i.i.i436 ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i = phi i64 [ %.sroa.0.0.i.i1.i, %bb.lb ], [ %i.aix, %.lr.ph.i.i.i436 ] ; 3 uses
  %i.aiv = icmp samesign ugt i64 %.sroa.0.1.lcssa.i.i.i, 99
  br i1 %i.aiv, label %bb.lc, label %bb.ld

.lr.ph.i.i.i436:                                  ; preds = %bb.lb, %.lr.ph.i.i.i436
  %.sroa.0.129.i.i.i = phi i64 [ %i.aix, %.lr.ph.i.i.i436 ], [ %.sroa.0.0.i.i1.i, %bb.lb ] ; 3 uses
  %.sroa.09.028.i.i.i = phi i64 [ %i.aje, %.lr.ph.i.i.i436 ], [ 20, %bb.lb ] ; 2 uses
  %i.aiw = urem i64 %.sroa.0.129.i.i.i, 10000
  %i.aix = udiv i64 %.sroa.0.129.i.i.i, 10000     ; 2 uses
  %.lhs.trunc.i.i.i = trunc nuw nsw i64 %i.aiw to i16 ; 2 uses
  %i.aiy = udiv i16 %.lhs.trunc.i.i.i, 100
  %i.aiz = shl nuw nsw i16 %i.aiy, 1
  %i.aja = zext nneg i16 %i.aiz to i64
  %i.ajb = urem i16 %.lhs.trunc.i.i.i, 100
  %i.ajc = shl nuw nsw i16 %i.ajb, 1
  %i.ajd = zext nneg i16 %i.ajc to i64
  %i.aje = add i64 %.sroa.09.028.i.i.i, -4        ; 3 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr @367, i64 %i.aja
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aje
  %i.ajh = load i16, ptr %i.ajf, align 1, !noalias !5084
  store i16 %i.ajh, ptr %i.ajg, align 1, !alias.scope !5084
  %i.aji = getelementptr inbounds nuw i8, ptr @367, i64 %i.ajd
  %i.ajj = getelementptr i8, ptr %i.o, i64 %.sroa.09.028.i.i.i
  %i.ajk = getelementptr i8, ptr %i.ajj, i64 -2
  %i.ajl = load i16, ptr %i.aji, align 1, !noalias !5084
  store i16 %i.ajl, ptr %i.ajk, align 1, !alias.scope !5084
  %i.ajm = icmp ugt i64 %.sroa.0.129.i.i.i, 99999999
  br i1 %i.ajm, label %.lr.ph.i.i.i436, label %._crit_edge.i.i.i

bb.lc:                                            ; preds = %._crit_edge.i.i.i
  %.lhs.trunc24.i.i.i = trunc nuw i64 %.sroa.0.1.lcssa.i.i.i to i16 ; 2 uses
  %i.ajn = urem i16 %.lhs.trunc24.i.i.i, 100
  %i.ajo = shl nuw nsw i16 %i.ajn, 1
  %i.ajp = zext nneg i16 %i.ajo to i64
  %i.ajq = udiv i16 %.lhs.trunc24.i.i.i, 100
  %.zext27.i.i.i = zext nneg i16 %i.ajq to i64
  %i.ajr = add i64 %.sroa.09.0.lcssa.i.i.i, -2    ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr @367, i64 %i.ajp
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ajr
  %i.aju = load i16, ptr %i.ajs, align 1, !noalias !5084
  store i16 %i.aju, ptr %i.ajt, align 1, !alias.scope !5084
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %._crit_edge.i.i.i
  %.sroa.09.1.i.i.i = phi i64 [ %i.ajr, %bb.lc ], [ %.sroa.09.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i = phi i64 [ %.zext27.i.i.i, %bb.lc ], [ %.sroa.0.1.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ajv = icmp samesign ult i64 %.sroa.0.2.i.i.i, 10
  br i1 %i.ajv, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.ajw = shl nuw nsw i64 %.sroa.0.2.i.i.i, 1
  %i.ajx = add i64 %.sroa.09.1.i.i.i, -2          ; 2 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr @367, i64 %i.ajw
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ajx
  %i.aka = load i16, ptr %i.ajy, align 1, !noalias !5084
  store i16 %i.aka, ptr %i.ajz, align 1, !alias.scope !5084
  br label %bb.lg

bb.lf:                                            ; preds = %bb.ld
  %i.akb = add i64 %.sroa.09.1.i.i.i, -1          ; 2 uses
  %i.akc = trunc nuw nsw i64 %.sroa.0.2.i.i.i to i8
  %i.akd = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.akb
  %i.ake = or disjoint i8 %i.akc, 48
  store i8 %i.ake, ptr %i.akd, align 1, !alias.scope !5084
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %bb.le
  %.sroa.09.2.i.i.i = phi i64 [ %i.akb, %bb.lf ], [ %i.ajx, %bb.le ] ; 2 uses
  br i1 %i.agb, label %_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_intB7_.exit.i, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.akf = add i64 %.sroa.09.2.i.i.i, -1          ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.akf
  store i8 45, ptr %i.akg, align 1, !alias.scope !5084
  br label %_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_intB7_.exit.i

_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_intB7_.exit.i: ; preds = %bb.lh, %bb.lg
  %.sroa.09.3.i.i.i = phi i64 [ %.sroa.09.2.i.i.i, %bb.lg ], [ %i.akf, %bb.lh ] ; 2 uses
  %i.akh = sub i64 20, %.sroa.09.3.i.i.i          ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.09.3.i.i.i
  %i.akj = icmp ult i64 %i.akh, 21
  call void @llvm.assume(i1 %i.akj)
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aki, i64 noundef %i.akh)
          to label %.noexc439 unwind label %bb.kk

.noexc439:                                        ; preds = %_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_intB7_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.lj

bb.li:                                            ; preds = %bb.kk
  %i.akk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.lj:                                            ; preds = %bb.kp, %.noexc438, %.noexc439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !5082
  %i.akl = load <2 x double>, ptr %i.aj, align 16, !noalias !5085 ; 2 uses
  store <2 x double> %i.akl, ptr %i.eg, align 8, !alias.scope !5086, !noalias !5087
  store <2 x double> %i.akl, ptr %i.ef, align 8, !alias.scope !5086, !noalias !5087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !5082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.akm = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5angleNtB2_5Angle3cos(double noundef %spec.store.select4)
          to label %bb.lk unwind label %bb.ki

bb.lk:                                            ; preds = %bb.lj
  %i.akn = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5angleNtB2_5Angle3sin(double noundef %spec.store.select4)
          to label %bb.ll unwind label %bb.ki

bb.ll:                                            ; preds = %bb.lk
  %i.ako = insertelement <2 x double> poison, double %i.akm, i64 0
  %i.akp = insertelement <2 x double> %i.ako, double %i.akn, i64 1
  %i.akq = fmul <2 x double> %i.akp, <double -2.000000e+00, double 2.000000e+00> ; 2 uses
  %i.akr = fcmp ord <2 x double> %i.akq, zeroinitializer
  %i.aks = select <2 x i1> %i.akr, <2 x double> %i.akq, <2 x double> zeroinitializer
  %i.akt = fadd <2 x double> %i.aeo, %i.aks       ; 2 uses
  %i.aku = fcmp ord <2 x double> %i.akt, zeroinitializer
  %i.akv = fadd <2 x double> %i.akt, splat (double 5.000000e-01)
  %i.akw = fmul <2 x double> %i.akv, splat (double 1.270000e+02)
  %i.akx = select <2 x i1> %i.aku, <2 x double> %i.akw, <2 x double> splat (double 6.350000e+01) ; 2 uses
  %i.aky = fmul <2 x double> %i.akx, splat (double 5.000000e-01)
  %i.akz = fcmp ord <2 x double> %i.akx, zeroinitializer
  %i.ala = select <2 x i1> %i.akz, <2 x double> %i.aky, <2 x double> zeroinitializer ; 2 uses
  %i.alb = fcmp ord <2 x double> %i.ala, zeroinitializer
  %i.alc = select <2 x i1> %i.alb, <2 x double> %i.ala, <2 x double> zeroinitializer ; 2 uses
  %i.ald = extractelement <2 x double> %i.alc, i64 0
  %i.ale = extractelement <2 x double> %i.alc, i64 1
  invoke fastcc void @_RNvMNtCsl4q486LaARA_9typst_svg4pathNtB2_14SvgPathBuilder7line_to(ptr noalias nofree noundef align 8 dereferenceable(56) %i.dl, double noundef %i.ald, double noundef %i.ale)
          to label %bb.lm unwind label %bb.ki

bb.lm:                                            ; preds = %bb.ll
  %i.alf = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5angleNtB2_5Angle3cos(double noundef %spec.store.select7)
          to label %bb.ln unwind label %bb.ki

bb.ln:                                            ; preds = %bb.lm
  %i.alg = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5angleNtB2_5Angle3sin(double noundef %spec.store.select7)
          to label %bb.lo unwind label %bb.ki

bb.lo:                                            ; preds = %bb.ln
  %i.alh = insertelement <2 x double> poison, double %i.alf, i64 0
  %i.ali = insertelement <2 x double> %i.alh, double %i.alg, i64 1
  %i.alj = fmul <2 x double> %i.ali, <double -2.000000e+00, double 2.000000e+00> ; 2 uses
  %i.alk = fcmp ord <2 x double> %i.alj, zeroinitializer
  %i.all = select <2 x i1> %i.alk, <2 x double> %i.alj, <2 x double> zeroinitializer
  %i.alm = fadd <2 x double> %i.aeo, %i.all       ; 2 uses
  %i.aln = fcmp ord <2 x double> %i.alm, zeroinitializer
  %i.alo = fadd <2 x double> %i.alm, splat (double 5.000000e-01)
  %i.alp = fmul <2 x double> %i.alo, splat (double 1.270000e+02)
  %i.alq = select <2 x i1> %i.aln, <2 x double> %i.alp, <2 x double> splat (double 6.350000e+01) ; 2 uses
  %i.alr = fcmp ord <2 x double> %i.alq, zeroinitializer
  %i.als = fmul <2 x double> %i.alq, splat (double 5.000000e-01)
  %i.alt = select <2 x i1> %i.alr, <2 x double> %i.als, <2 x double> zeroinitializer ; 2 uses
  %i.alu = fcmp ord <2 x double> %i.alt, zeroinitializer
  %i.alv = select <2 x i1> %i.alu, <2 x double> %i.alt, <2 x double> zeroinitializer ; 5 uses
  %i.alw = load double, ptr %i.ee, align 8, !alias.scope !5088, !noundef !12
  %i.alx = load <2 x double>, ptr %i.eg, align 8, !alias.scope !5088 ; 2 uses
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 2)
          to label %_RNvXs4_NtCsl4q486LaARA_9typst_svg5writeINtB5_12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_str.exit.i364 unwind label %bb.lp

_RNvXs4_NtCsl4q486LaARA_9typst_svg5writeINtB5_12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_str.exit.i364: ; preds = %bb.lo
  %i.aly = shufflevector <2 x double> %i.alx, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.alz = fcmp uno <4 x double> %i.aly, zeroinitializer
  %i.ama = fneg <2 x double> %i.alx
  %i.amb = shufflevector <2 x double> %i.ama, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.amc = select <4 x i1> %i.alz, <4 x double> zeroinitializer, <4 x double> %i.amb
  %i.amd = shufflevector <2 x double> %i.alv, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ame = shufflevector <4 x double> <double 1.270000e+02, double 1.270000e+02, double poison, double poison>, <4 x double> %i.amd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.amf = fadd <4 x double> %i.ame, %i.amc       ; 2 uses
  %i.amg = fcmp ord <4 x double> %i.amf, zeroinitializer
  %i.amh = select <4 x i1> %i.amg, <4 x double> %i.amf, <4 x double> zeroinitializer
  %i.ami = insertelement <4 x double> poison, double %i.alw, i64 0
  %i.amj = shufflevector <4 x double> %i.ami, <4 x double> poison, <4 x i32> zeroinitializer
  %i.amk = fmul <4 x double> %i.amj, %i.amh       ; 3 uses
  %i.aml = fcmp ord <4 x double> %i.amk, zeroinitializer ; 2 uses
  %i.amm = shufflevector <4 x double> %i.amk, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.amn = fdiv <2 x double> %i.amm, splat (double 1.270000e+02)
  %i.amo = shufflevector <4 x i1> %i.aml, <4 x i1> poison, <2 x i32> <i32 0, i32 1>
  %i.amp = select <2 x i1> %i.amo, <2 x double> %i.amn, <2 x double> zeroinitializer ; 2 uses
  %i.amq = shufflevector <4 x double> %i.amk, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.amr = fdiv <2 x double> %i.amq, splat (double 1.270000e+02)
end_hunk_0
