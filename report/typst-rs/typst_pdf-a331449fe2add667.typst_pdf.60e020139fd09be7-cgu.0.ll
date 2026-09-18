Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7942
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_RNvNtCs8jFhWeO2DFb_9typst_pdf7convert12handle_frame:bb.a
  br i1 %i.bwi, label %bb.qi, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla4text4font4FontECs8jFhWeO2DFb_9typst_pdf.exit

bb.qi:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint4FillECs8jFhWeO2DFb_9typst_pdf.exit272
  fence acquire, !noalias !16502
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsidf7BFzONoc_6krilla4util9PrehashedNtNtNtBL_4text4font4ReprEE9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.es) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla4text4font4FontECs8jFhWeO2DFb_9typst_pdf.exit unwind label %.loopexit.split-lp501

.thread433:                                       ; preds = %.thread433.loopexit, %.thread433.loopexit.split-lp, %bb.om
  %.pn41.pn.i436 = phi { ptr, i32 } [ %.pn41.i, %bb.om ], [ %lpad.loopexit510, %.thread433.loopexit ], [ %lpad.loopexit.split-lp511, %.thread433.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint5PaintECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.er)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint4FillECs8jFhWeO2DFb_9typst_pdf.exit unwind label %bb.qg

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla4text4font4FontECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.nx, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint4FillECs8jFhWeO2DFb_9typst_pdf.exit272, %bb.qi, %.thread427
  %.sroa.5.2.i = phi i64 [ %.sroa.5.1.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint4FillECs8jFhWeO2DFb_9typst_pdf.exit272 ], [ %.sroa.7.0.i, %.thread427 ], [ %.sroa.5.1.i, %bb.qi ], [ %.sroa.7.0, %bb.nx ]
  %.sroa.0.2.i = phi ptr [ %.sroa.0.1.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint4FillECs8jFhWeO2DFb_9typst_pdf.exit272 ], [ %.sroa.0.0.i314, %.thread427 ], [ %.sroa.0.1.i, %bb.qi ], [ %.sroa.0413.0, %bb.nx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es), !noalias !16351
  br i1 %.sroa.4.0.i, label %bb.qj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4tags9TagHandleEBF_.exit

bb.qj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla4text4font4FontECs8jFhWeO2DFb_9typst_pdf.exit
  invoke void @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface10end_tagged(ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %4)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4tags9TagHandleEBF_.exit unwind label %.loopexit.split-lp477

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4tags9TagHandleEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla4text4font4FontECs8jFhWeO2DFb_9typst_pdf.exit, %bb.qj
  %i.bwj = load ptr, ptr %i.et, align 8, !alias.scope !16821, !noundef !10
  %i.bwk = icmp eq ptr %i.bwj, null
  br i1 %i.bwk, label %bb.vw, label %bb.qk

bb.qk:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4tags9TagHandleEBF_.exit
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.et)
          to label %bb.vw unwind label %.loopexit.split-lp

bb.ql:                                            ; preds = %bb.ai
  %i.bwl = getelementptr inbounds nuw i8, ptr %.sroa.07.01144, i64 32
  %i.bwm = getelementptr inbounds nuw i8, ptr %.sroa.07.01144, i64 24
  %i.bwn = load i64, ptr %i.bwm, align 8, !range !25, !noundef !10
  %i.bwo = invoke fastcc { ptr, i64 } @_RNvNtCs8jFhWeO2DFb_9typst_pdf5shape12handle_shape(ptr noalias nofree noundef align 8 dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.bwl, ptr noalias nofree noundef align 8 dereferenceable(976) %4, ptr noalias nofree noundef align 8 dereferenceable(672) %5, i64 noundef %i.bwn, i8 noundef 8)
          to label %bb.vx unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.qm:                                            ; preds = %bb.ai
  %i.bwp = getelementptr inbounds nuw i8, ptr %.sroa.07.01144, i64 40
  %i.bwq = getelementptr inbounds nuw i8, ptr %.sroa.07.01144, i64 24
  %i.bwr = load double, ptr %i.bwq, align 8, !noundef !10
  %i.bws = getelementptr inbounds nuw i8, ptr %.sroa.07.01144, i64 32
  %i.bwt = load double, ptr %i.bws, align 16, !noundef !10
  %i.bwu = getelementptr inbounds nuw i8, ptr %.sroa.07.01144, i64 48
  %i.bwv = load i64, ptr %i.bwu, align 16, !range !25, !noundef !10
  %i.bww = invoke fastcc { ptr, i64 } @_RNvNtCs8jFhWeO2DFb_9typst_pdf5image12handle_image(ptr noalias nofree noundef align 8 dereferenceable(672) %5, ptr noalias nofree noundef align 8 dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bwp, double noundef %i.bwr, double noundef %i.bwt, ptr noalias nofree noundef align 8 dereferenceable(976) %4, i64 noundef %i.bwv)
          to label %bb.vy unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.qn:                                            ; preds = %bb.ai
  %i.bwx = getelementptr inbounds nuw i8, ptr %.sroa.07.01144, i64 48
  %i.bwy = getelementptr inbounds nuw i8, ptr %.sroa.07.01144, i64 24
  %i.bwz = load <2 x double>, ptr %i.bwy, align 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16822)
  call void @llvm.experimental.noalias.scope.decl(metadata !16823)
  call void @llvm.experimental.noalias.scope.decl(metadata !16824)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek), !noalias !16825
  %i.bxa = load i64, ptr %i.bwx, align 16, !range !29, !alias.scope !16824, !noalias !16826, !noundef !10
  switch i64 %i.bxa, label %default.unreachable [
    i64 0, label %bb.qo
    i64 1, label %bb.qs
    i64 2, label %bb.qt
  ]

bb.qo:                                            ; preds = %bb.qn
  %i.bxb = getelementptr inbounds nuw i8, ptr %.sroa.07.01144, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16827)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !16828
  store i64 0, ptr %i.dm, align 8, !noalias !16828
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !16828
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !16828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !16828
  store i64 1610612768, ptr %i.jt, align 8, !noalias !16828
  store ptr %i.dm, ptr %i.dl, align 8, !noalias !16828
  store ptr @586, ptr %i.ju, align 8, !noalias !16828
  %i.bxc = getelementptr inbounds nuw i8, ptr %.sroa.07.01144, i64 71
  %i.bxd = load i8, ptr %i.bxc, align 1, !alias.scope !16829, !noalias !16830, !noundef !10 ; 2 uses
  %.not.i.i.i.i = icmp sgt i8 %i.bxd, -1          ; 2 uses
  %i.bxe = and i8 %i.bxd, 127
  %i.bxf = zext nneg i8 %i.bxe to i64
  %i.bxg = load ptr, ptr %i.bxb, align 8, !alias.scope !16829, !noalias !16830, !nonnull !10
  %i.bxh = getelementptr inbounds nuw i8, ptr %.sroa.07.01144, i64 64
  %i.bxi = load i64, ptr %i.bxh, align 16, !alias.scope !16829, !noalias !16830
  %.sroa.3.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 %i.bxi, i64 %i.bxf
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.bxg, ptr %i.bxb
  %i.bxj = invoke noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i, i64 noundef %.sroa.3.0.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dl)
          to label %_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit.i.i unwind label %.loopexit452, !noalias !16831

.loopexit452:                                     ; preds = %bb.qo
  %lpad.loopexit454 = landingpad { ptr, i32 }
          cleanup
  br label %bb.qp

.loopexit.split-lp453:                            ; preds = %bb.qr
  %lpad.loopexit.split-lp455 = landingpad { ptr, i32 }
          cleanup
  br label %bb.qp

bb.qp:                                            ; preds = %.loopexit.split-lp453, %.loopexit452
  %lpad.phi456 = phi { ptr, i32 } [ %lpad.loopexit454, %.loopexit452 ], [ %lpad.loopexit.split-lp455, %.loopexit.split-lp453 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16832)
  %.val.i.i.i = load i64, ptr %i.dm, align 8, !alias.scope !16832, !noalias !16828 ; 2 uses
  %i.bxk = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.bxk, label %.body, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  %.val1.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !16832, !noalias !16828, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16833
  br label %.body

_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit.i.i: ; preds = %bb.qo
  br i1 %i.bxj, label %bb.qr, label %_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB5_12SpecToString14spec_to_stringCs8jFhWeO2DFb_9typst_pdf.exit.i, !prof !13

bb.qr:                                            ; preds = %_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @587, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @164, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @589) #42
          to label %.noexc.i.i unwind label %.loopexit.split-lp453, !noalias !16831

.noexc.i.i:                                       ; preds = %bb.qr
  unreachable

_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB5_12SpecToString14spec_to_stringCs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false), !noalias !16825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !16828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !16828
  br label %.noexc136

bb.qs:                                            ; preds = %bb.qn
  %i.bxl = getelementptr inbounds nuw i8, ptr %.sroa.07.01144, i64 56
  %i.bxm = invoke fastcc noundef ptr @_RNvNtCs8jFhWeO2DFb_9typst_pdf4link10pos_to_xyz(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.js, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.bxl)
          to label %.noexc132 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc132:                                        ; preds = %bb.qs
  %.not138.i = icmp eq ptr %i.bxm, null
  br i1 %.not138.i, label %.thread446, label %bb.qu

bb.qt:                                            ; preds = %bb.qn
  %i.bxn = getelementptr inbounds nuw i8, ptr %.sroa.07.01144, i64 64
  %i.bxo = load ptr, ptr %i.jc, align 8, !alias.scope !16823, !noalias !16834, !noundef !10 ; 3 uses
  %.not133.i = icmp eq ptr %i.bxo, null
  %.val171.pre.i = load i128, ptr %i.bxn, align 16, !alias.scope !16824, !noalias !16826 ; 7 uses
  br i1 %.not133.i, label %.noexc137, label %bb.qv

.noexc136:                                        ; preds = %bb.rt, %bb.sd, %_RNvXs7_NtNtCsidf7BFzONoc_6krilla11interactive11destinationNtB5_16NamedDestinationNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, %bb.qu, %_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB5_12SpecToString14spec_to_stringCs8jFhWeO2DFb_9typst_pdf.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  %.val170.i = load i64, ptr %i.fg, align 8, !alias.scope !16822, !noalias !16835 ; 2 uses
  %.not.i81.i.i = icmp eq i64 %.val170.i, 0
  br i1 %.not.i81.i.i, label %.split.us.i.i, label %.split.i.i, !prof !13

.split.us.i.i:                                    ; preds = %.noexc136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !16836
  br label %.invoke434.i

.split.i.i:                                       ; preds = %.noexc136
  %.val169.i = load ptr, ptr %i.fk, align 8, !alias.scope !16822, !noalias !16835, !nonnull !10, !noundef !10
  %i.bxp = getelementptr [112 x i8], ptr %.val169.i, i64 %.val170.i
  %i.bxq = getelementptr i8, ptr %i.bxp, i64 -112 ; 4 uses
  %i.bxr = extractelement <2 x double> %i.bwz, i64 0
  %i.bxs = fcmp uno double %i.bxr, 0.000000e+00
  %i.bxt = fadd <2 x double> %i.bwz, zeroinitializer ; 2 uses
  %i.bxu = extractelement <2 x double> %i.bxt, i64 0
  %spec.store.select2.i.i = select i1 %i.bxs, double 0.000000e+00, double %i.bxu ; 2 uses
  %i.bxv = extractelement <2 x double> %i.bwz, i64 1
  %i.bxw = fcmp uno double %i.bxv, 0.000000e+00
  %i.bxx = extractelement <2 x double> %i.bxt, i64 1
  %spec.store.select1.i.i = select i1 %i.bxw, double 0.000000e+00, double %i.bxx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !16836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dk, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.bxq, i64 48, i1 false), !noalias !16837
  %i.bxy = invoke { double, double } @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5pointNtB2_5Point9transform(double noundef 0.000000e+00, double noundef %spec.store.select1.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.dk)
          to label %.noexc174.i unwind label %.body.thread373.i.loopexit, !noalias !16826 ; 2 uses

.noexc174.i:                                      ; preds = %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !16836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !16836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dk, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.bxq, i64 48, i1 false), !noalias !16837
  %i.bxz = invoke { double, double } @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5pointNtB2_5Point9transform(double noundef %spec.store.select2.i.i, double noundef %spec.store.select1.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.dk)
          to label %.noexc175.i unwind label %.body.thread373.i.loopexit, !noalias !16826 ; 2 uses

.noexc175.i:                                      ; preds = %.noexc174.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !16836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !16836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dk, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.bxq, i64 48, i1 false), !noalias !16837
  %i.bya = invoke { double, double } @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5pointNtB2_5Point9transform(double noundef %spec.store.select2.i.i, double noundef 0.000000e+00, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.dk)
          to label %.noexc176.i unwind label %.body.thread373.i.loopexit, !noalias !16826 ; 2 uses

.noexc176.i:                                      ; preds = %.noexc175.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !16836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !16836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dk, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.bxq, i64 48, i1 false), !noalias !16837
  %i.byb = invoke { double, double } @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5pointNtB2_5Point9transform(double noundef 0.000000e+00, double noundef 0.000000e+00, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.dk)
          to label %.noexc177.i unwind label %.body.thread373.i.loopexit, !noalias !16826 ; 2 uses

.noexc177.i:                                      ; preds = %.noexc176.i
  %i.byc = extractvalue { double, double } %i.bxy, 1
  %i.byd = extractvalue { double, double } %i.bxz, 1
  %i.bye = insertelement <2 x double> poison, double %i.byc, i64 0
  %i.byf = insertelement <2 x double> %i.bye, double %i.byd, i64 1
  %i.byg = fdiv <2 x double> %i.byf, splat (double 1.270000e+02) ; 2 uses
  %6 = extractelement <2 x double> %i.byg, i64 0
  %7 = fptrunc double %6 to float                 ; 2 uses
  %8 = call nsz float @llvm.maximumnum.f32(float %7, float -inf)
  %9 = extractelement <2 x double> %i.byg, i64 1
  %10 = fptrunc double %9 to float                ; 2 uses
  %11 = call nsz float @llvm.maximumnum.f32(float %8, float %10)
  %i.byh = extractvalue { double, double } %i.bya, 1
  %i.byi = extractvalue { double, double } %i.bxy, 0
  %i.byj = insertelement <2 x double> poison, double %i.byh, i64 0
  %i.byk = insertelement <2 x double> %i.byj, double %i.byi, i64 1
  %i.byl = fdiv <2 x double> %i.byk, splat (double 1.270000e+02) ; 2 uses
  %12 = extractelement <2 x double> %i.byl, i64 0
  %13 = fptrunc double %12 to float               ; 2 uses
  %14 = call nsz float @llvm.maximumnum.f32(float %11, float %13)
  %15 = extractelement <2 x double> %i.byl, i64 1
  %16 = fptrunc double %15 to float               ; 2 uses
  %17 = call nsz float @llvm.maximumnum.f32(float %16, float -inf)
  %i.bym = extractvalue { double, double } %i.bxz, 0
  %i.byn = extractvalue { double, double } %i.bya, 0
  %i.byo = insertelement <2 x double> poison, double %i.bym, i64 0
  %i.byp = insertelement <2 x double> %i.byo, double %i.byn, i64 1
  %i.byq = fdiv <2 x double> %i.byp, splat (double 1.270000e+02) ; 2 uses
  %18 = extractelement <2 x double> %i.byq, i64 0
  %19 = fptrunc double %18 to float               ; 2 uses
  %20 = call nsz float @llvm.maximumnum.f32(float %17, float %19)
  %21 = extractelement <2 x double> %i.byq, i64 1
  %22 = fptrunc double %21 to float               ; 2 uses
  %23 = call nsz float @llvm.maximumnum.f32(float %20, float %22)
  %24 = call nsz float @llvm.minimumnum.f32(float %7, float +inf)
  %25 = call nsz float @llvm.minimumnum.f32(float %24, float %10)
  %26 = call nsz float @llvm.minimumnum.f32(float %25, float %13)
  %27 = call nsz float @llvm.minimumnum.f32(float %16, float +inf)
  %28 = call nsz float @llvm.minimumnum.f32(float %27, float %19)
  %29 = call nsz float @llvm.minimumnum.f32(float %28, float %22)
  %30 = extractvalue { double, double } %i.byb, 0
  %31 = extractvalue { double, double } %i.byb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !16836
  %32 = insertelement <2 x double> poison, double %30, i64 0
  %33 = insertelement <2 x double> %32, double %31, i64 1
  %34 = fdiv <2 x double> %33, splat (double 1.270000e+02) ; 2 uses
  %35 = extractelement <2 x double> %34, i64 0
  %36 = fptrunc double %35 to float               ; 2 uses
  %37 = extractelement <2 x double> %34, i64 1
  %38 = fptrunc double %37 to float               ; 2 uses
  %39 = call nsz float @llvm.minimumnum.f32(float %29, float %36)
  %40 = call nsz float @llvm.minimumnum.f32(float %26, float %38)
  %41 = call nsz float @llvm.maximumnum.f32(float %23, float %36)
  %42 = call nsz float @llvm.maximumnum.f32(float %14, float %38)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !16836
  invoke void @_RNvMs2_NtCsidf7BFzONoc_6krilla4geomNtB5_4Rect9from_ltrb(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.dj, float noundef %39, float noundef %40, float noundef %41, float noundef %42)
          to label %.noexc178.i unwind label %.body.thread373.i.loopexit, !noalias !16826

.noexc178.i:                                      ; preds = %.noexc177.i
  %i.byr = load i32, ptr %i.dj, align 4, !range !14, !noalias !16836, !noundef !10
  %i.bys = trunc nuw i32 %i.byr to i1
  br i1 %i.bys, label %bb.se, label %.invoke434.i, !prof !16

.invoke434.i:                                     ; preds = %.noexc178.i, %.split.us.i.i
  %i.byt = phi ptr [ @223, %.split.us.i.i ], [ @258, %.noexc178.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.byt) #42
          to label %.cont435.i unwind label %.body.thread373.i.loopexit.split-lp, !noalias !16826

.cont435.i:                                       ; preds = %.invoke434.i
  unreachable

bb.qu:                                            ; preds = %.noexc132
  store ptr null, ptr %i.jq, align 8, !noalias !16825
  store ptr %i.bxm, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !16825
  store i64 -2, ptr %i.ek, align 8, !noalias !16825
  br label %.noexc136

bb.qv:                                            ; preds = %bb.qt
  %.sroa.5.0.copyload.i119 = load ptr, ptr %.sroa.5.0..sroa_idx267.i, align 8, !alias.scope !16823, !noalias !16834 ; 2 uses
  %.sroa.6.0.copyload.i121 = load ptr, ptr %.sroa.6.0..sroa_idx.i120, align 8, !alias.scope !16823, !noalias !16834 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.5.0.copyload.i119, null
  br i1 %.not.i.i, label %bb.rh, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i121) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !16838
  invoke void @_RNvMsR_NtNtCsdaEETE4DqmE_13typst_library5model4linkNtB5_16LateLinkResolver7resolve(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.di, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bxo, i128 noundef %.val171.pre.i)
          to label %.noexc133 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc133:                                        ; preds = %bb.qw
  call void @llvm.experimental.noalias.scope.decl(metadata !16839)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !16840
  call void @llvm.experimental.noalias.scope.decl(metadata !16841)
  call void @llvm.experimental.noalias.scope.decl(metadata !16842)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i.i, i8 0, i64 40, i1 false), !noalias !16840
  %i.byu = load i64, ptr %i.di, align 8, !range !29, !alias.scope !16843, !noalias !16844, !noundef !10 ; 5 uses
  %i.byv = icmp ne i64 %i.byu, 2                  ; 2 uses
  %i.byw = zext i1 %i.byv to i64                  ; 2 uses
  store i64 8, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !alias.scope !16845, !noalias !16846
  %i.byx = xor i64 %i.byw, 110374107243891
  %i.byy = select i1 %i.byv, i64 -2243131504935184429, i64 -2243131504935184428 ; 2 uses
  %i.byz = call noundef i64 @llvm.fshl.i64(i64 %i.byx, i64 8387220255154660722, i64 16)
  %i.bza = xor i64 %i.byz, %i.byy                 ; 2 uses
  %i.bzb = add i64 %i.bza, -2389206912058073146   ; 2 uses
  %i.bzc = call noundef i64 @llvm.fshl.i64(i64 %i.bza, i64 -8882027881020349520, i64 21)
  %i.bzd = xor i64 %i.bzc, %i.bzb                 ; 2 uses
  store i64 %i.bzd, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !16847, !noalias !16846
  %i.bze = add nsw i64 %i.byy, 4148644332920354933 ; 2 uses
  %i.bzf = xor i64 %i.bze, -2011800273400728795   ; 3 uses
  store i64 %i.bzf, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !16847, !noalias !16846
  %i.bzg = call noundef i64 @llvm.fshl.i64(i64 %i.bze, i64 1905512827985170496, i64 32) ; 2 uses
  store i64 %i.bzg, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !16847, !noalias !16846
  %i.bzh = xor i64 %i.bzb, %i.byw                 ; 2 uses
  store i64 %i.bzh, ptr %i.dh, align 8, !alias.scope !16845, !noalias !16846
  %.not.i.i.i180.i = icmp eq i64 %i.byu, 2        ; 2 uses
  br i1 %.not.i.i.i180.i, label %bb.rk, label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i: ; preds = %.noexc133
  call void @llvm.experimental.noalias.scope.decl(metadata !16848)
  call void @llvm.experimental.noalias.scope.decl(metadata !16849)
  store i64 16, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !alias.scope !16850, !noalias !16851
  %i.bzi = xor i64 %i.bzd, %i.byu                 ; 3 uses
  %i.bzj = add nsw i64 %i.bzh, %i.bzf             ; 3 uses
  %i.bzk = call noundef i64 @llvm.fshl.i64(i64 %i.bzf, i64 -115655853030513824, i64 13)
  %i.bzl = xor i64 %i.bzj, %i.bzk                 ; 3 uses
  %i.bzm = call noundef i64 @llvm.fshl.i64(i64 %i.bzj, i64 %i.bzj, i64 32)
  %i.bzn = add i64 %i.bzi, %i.bzg                 ; 2 uses
  %i.bzo = call noundef i64 @llvm.fshl.i64(i64 %i.bzi, i64 %i.bzi, i64 16)
  %i.bzp = xor i64 %i.bzn, %i.bzo                 ; 3 uses
  %i.bzq = add i64 %i.bzp, %i.bzm                 ; 2 uses
  %i.bzr = call noundef i64 @llvm.fshl.i64(i64 %i.bzp, i64 %i.bzp, i64 21)
  %i.bzs = xor i64 %i.bzr, %i.bzq
  store i64 %i.bzs, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !16852, !noalias !16851
  %i.bzt = add i64 %i.bzn, %i.bzl                 ; 3 uses
  %i.bzu = call noundef i64 @llvm.fshl.i64(i64 %i.bzl, i64 %i.bzl, i64 17)
  %i.bzv = xor i64 %i.bzt, %i.bzu
  store i64 %i.bzv, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !16852, !noalias !16851
  %i.bzw = call noundef i64 @llvm.fshl.i64(i64 %i.bzt, i64 %i.bzt, i64 32)
  store i64 %i.bzw, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !16852, !noalias !16851
  %i.bzx = xor i64 %i.bzq, %i.byu
  store i64 %i.bzx, ptr %i.dh, align 8, !alias.scope !16850, !noalias !16851
  %i.bzy = trunc nuw i64 %i.byu to i1
  %i.bzz = load i8, ptr %i.je, align 1, !alias.scope !16853, !noalias !16854, !noundef !10 ; 2 uses
  %.not.i.i.i.i.i.i = icmp sgt i8 %i.bzz, -1      ; 2 uses
  %i.caa = and i8 %i.bzz, 127
  %i.cab = zext nneg i8 %i.caa to i64
  %i.cac = load ptr, ptr %i.jd, align 8, !alias.scope !16853, !noalias !16854, !nonnull !10
  %i.cad = load i64, ptr %i.jf, align 8, !alias.scope !16853, !noalias !16854
  %.sroa.3.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 %i.cad, i64 %i.cab
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %i.cac, ptr %i.jd
  call fastcc void @_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.dh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i.i, i64 noundef %.sroa.3.0.i.i.i.i.i.i) #40, !noalias !16855
  %i.cae = load i64, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !alias.scope !16856, !noalias !16851, !noundef !10
  %i.caf = add i64 %i.cae, 1
  store i64 %i.caf, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !alias.scope !16856, !noalias !16851
  %i.cag = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !alias.scope !16856, !noalias !16851, !noundef !10 ; 6 uses
  %i.cah = sub i64 8, %i.cag                      ; 3 uses
  %i.cai = shl i64 %i.cag, 3
  %i.caj = and i64 %i.cai, 56
  %i.cak = shl nuw i64 255, %i.caj
  %i.cal = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i, align 8, !alias.scope !16856, !noalias !16851, !noundef !10
  %i.cam = or i64 %i.cak, %i.cal                  ; 5 uses
  store i64 %i.cam, ptr %.sroa.14.0..sroa_idx.i.i.i, align 8, !alias.scope !16856, !noalias !16851
  %i.can = icmp ugt i64 %i.cah, 1                 ; 2 uses
  br i1 %i.bzy, label %bb.qx, label %bb.re

bb.qx:                                            ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i
  br i1 %i.can, label %bb.qz, label %bb.qy

bb.qy:                                            ; preds = %bb.qx
  %i.cao = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !16857, !noalias !16858, !noundef !10
  %i.cap = xor i64 %i.cao, %i.cam                 ; 3 uses
  %i.caq = load i64, ptr %i.dh, align 8, !alias.scope !16859, !noalias !16858, !noundef !10
  %i.car = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !16859, !noalias !16858, !noundef !10 ; 3 uses
  %i.cas = add i64 %i.car, %i.caq                 ; 3 uses
  %i.cat = call noundef i64 @llvm.fshl.i64(i64 %i.car, i64 %i.car, i64 13)
  %i.cau = xor i64 %i.cat, %i.cas                 ; 3 uses
  %i.cav = call noundef i64 @llvm.fshl.i64(i64 %i.cas, i64 %i.cas, i64 32)
  %i.caw = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !16859, !noalias !16858, !noundef !10
  %i.cax = add i64 %i.caw, %i.cap                 ; 2 uses
  %i.cay = call noundef i64 @llvm.fshl.i64(i64 %i.cap, i64 %i.cap, i64 16)
  %i.caz = xor i64 %i.cax, %i.cay                 ; 3 uses
  %i.cba = add i64 %i.caz, %i.cav                 ; 2 uses
  %i.cbb = call noundef i64 @llvm.fshl.i64(i64 %i.caz, i64 %i.caz, i64 21)
  %i.cbc = xor i64 %i.cbb, %i.cba
  store i64 %i.cbc, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !16859, !noalias !16858
  %i.cbd = add i64 %i.cax, %i.cau                 ; 3 uses
  %i.cbe = call noundef i64 @llvm.fshl.i64(i64 %i.cau, i64 %i.cau, i64 17)
  %i.cbf = xor i64 %i.cbd, %i.cbe
  store i64 %i.cbf, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !16859, !noalias !16858
  %i.cbg = call noundef i64 @llvm.fshl.i64(i64 %i.cbd, i64 %i.cbd, i64 32)
  store i64 %i.cbg, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !16859, !noalias !16858
  %i.cbh = xor i64 %i.cba, %i.cam
  store i64 %i.cbh, ptr %i.dh, align 8, !alias.scope !16857, !noalias !16858
  %i.cbi = add i64 %i.cag, -7
  %i.cbj = shl nuw nsw i64 %i.cah, 3
  %i.cbk = lshr i64 255, %i.cbj
  store i64 %i.cbk, ptr %.sroa.14.0..sroa_idx.i.i.i, align 8, !alias.scope !16857, !noalias !16858
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i

bb.qz:                                            ; preds = %bb.qx
  %i.cbl = add i64 %i.cag, 1
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i: ; preds = %bb.qz, %bb.qy
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ %i.cbl, %bb.qz ], [ %i.cbi, %bb.qy ]
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !alias.scope !16857, !noalias !16858
  %i.cbm = load i8, ptr %i.jh, align 1, !alias.scope !16860, !noalias !16854, !noundef !10 ; 2 uses
  %.not.i1.i.i.i.i.i = icmp sgt i8 %i.cbm, -1     ; 2 uses
  %i.cbn = and i8 %i.cbm, 127
  %i.cbo = zext nneg i8 %i.cbn to i64
  %i.cbp = load ptr, ptr %i.jg, align 8, !alias.scope !16860, !noalias !16854, !nonnull !10
  %i.cbq = load i64, ptr %i.ji, align 8, !alias.scope !16860, !noalias !16854
  %.sroa.3.0.i2.i.i.i.i.i = select i1 %.not.i1.i.i.i.i.i, i64 %i.cbq, i64 %i.cbo
  %.sroa.0.0.i3.i.i.i.i.i = select i1 %.not.i1.i.i.i.i.i, ptr %i.cbp, ptr %i.jg
  call fastcc void @_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.dh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i3.i.i.i.i.i, i64 noundef %.sroa.3.0.i2.i.i.i.i.i) #40, !noalias !16855
  %i.cbr = load i64, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !alias.scope !16861, !noalias !16862, !noundef !10
  %i.cbs = add i64 %i.cbr, 1
  store i64 %i.cbs, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !alias.scope !16861, !noalias !16862
  %i.cbt = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !alias.scope !16861, !noalias !16862, !noundef !10 ; 4 uses
  %i.cbu = sub i64 8, %i.cbt                      ; 2 uses
  %i.cbv = shl i64 %i.cbt, 3
  %i.cbw = and i64 %i.cbv, 56
  %i.cbx = shl nuw i64 255, %i.cbw
  %i.cby = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i, align 8, !alias.scope !16861, !noalias !16862, !noundef !10
  %i.cbz = or i64 %i.cbx, %i.cby                  ; 3 uses
  store i64 %i.cbz, ptr %.sroa.14.0..sroa_idx.i.i.i, align 8, !alias.scope !16861, !noalias !16862
  %i.cca = icmp ugt i64 %i.cbu, 1
  br i1 %i.cca, label %bb.rb, label %bb.ra

bb.ra:                                            ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i
  %i.ccb = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !16861, !noalias !16862, !noundef !10
  %i.ccc = xor i64 %i.ccb, %i.cbz                 ; 3 uses
  %i.ccd = load i64, ptr %i.dh, align 8, !alias.scope !16863, !noalias !16862, !noundef !10
  %i.cce = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !16863, !noalias !16862, !noundef !10 ; 3 uses
  %i.ccf = add i64 %i.cce, %i.ccd                 ; 3 uses
  %i.ccg = call noundef i64 @llvm.fshl.i64(i64 %i.cce, i64 %i.cce, i64 13)
  %i.cch = xor i64 %i.ccg, %i.ccf                 ; 3 uses
  %i.cci = call noundef i64 @llvm.fshl.i64(i64 %i.ccf, i64 %i.ccf, i64 32)
  %i.ccj = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !16863, !noalias !16862, !noundef !10
  %i.cck = add i64 %i.ccj, %i.ccc                 ; 2 uses
  %i.ccl = call noundef i64 @llvm.fshl.i64(i64 %i.ccc, i64 %i.ccc, i64 16)
  %i.ccm = xor i64 %i.cck, %i.ccl                 ; 3 uses
  %i.ccn = add i64 %i.ccm, %i.cci                 ; 2 uses
  %i.cco = call noundef i64 @llvm.fshl.i64(i64 %i.ccm, i64 %i.ccm, i64 21)
  %i.ccp = xor i64 %i.cco, %i.ccn
  store i64 %i.ccp, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !16863, !noalias !16862
  %i.ccq = add i64 %i.cck, %i.cch                 ; 3 uses
  %i.ccr = call noundef i64 @llvm.fshl.i64(i64 %i.cch, i64 %i.cch, i64 17)
  %i.ccs = xor i64 %i.ccq, %i.ccr
  store i64 %i.ccs, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !16863, !noalias !16862
  %i.cct = call noundef i64 @llvm.fshl.i64(i64 %i.ccq, i64 %i.ccq, i64 32)
  store i64 %i.cct, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !16863, !noalias !16862
  %i.ccu = xor i64 %i.ccn, %i.cbz
  store i64 %i.ccu, ptr %i.dh, align 8, !alias.scope !16861, !noalias !16862
  %i.ccv = add i64 %i.cbt, -7
  %i.ccw = shl nuw nsw i64 %i.cbu, 3
end_hunk_0
begin_hunk_1_@_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 1, 0) i32 @_RNvMs2_NtCsidf7BFzONoc_6krilla9serializeNtB5_16SerializeContext24register_font_identifier(ptr noalias nofree noundef align 8 dereferenceable(600), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCsidf7BFzONoc_6krilla9serializeNtB5_16SerializeContext25register_validation_error(ptr noalias nofree noundef align 8 dereferenceable(600), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare { i32, float } @_RNvMs_NtCs1g8rKHBQsN9_6skrifa7metricsNtB4_12GlyphMetrics13advance_width(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i24 @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface13context_color(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface26has_complex_fill_or_stroke(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform10pre_concat(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 4 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsidf7BFzONoc_6krilla4text5glyph10draw_glyph(ptr noundef nonnull, i24, i32 noundef, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMsm_NtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB5_7Content6fields(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs8_NtNtCsdaEETE4DqmE_13typst_library11foundations4dictNtB5_4DictNtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iter(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color8to_space(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color7to_vec4(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #32

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare { double, double } @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5pointNtB2_5Point9transform(double noundef, double noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { double, double } @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5pointNtB2_5Point3min(double noundef, double noundef, double noundef, double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { double, double } @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5pointNtB2_5Point3max(double noundef, double noundef, double noundef, double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 1, 0) i32 @_RNvMs1_NtCsidf7BFzONoc_6krilla9serializeNtB5_16SerializeContext7new_ref(ptr noalias nofree noundef align 8 dereferenceable(600)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCsltn4C36Q1Af_10pdf_writer6object3RefmEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_mNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECsidf7BFzONoc_6krilla(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsidf7BFzONoc_6krilla4text5type312ColoredGlyphTNtBU_14FontIdentifierNtNtBU_5glyph8PDFGlyphEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1G_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EBW_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BU_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTmTNtNtCsidf7BFzONoc_6krilla4text14FontIdentifierNtNtBU_5glyph8PDFGlyphEEE14reserve_rehashNCINvNtB8_3map11make_hashermBR_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0EBW_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE14reserve_rehashNCINvNtB8_3map11make_hasheroBR_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableToNtNtCsltn4C36Q1Af_10pdf_writer6object3RefEE14reserve_rehashNCINvNtB8_3map11make_hasheroBR_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECsidf7BFzONoc_6krilla(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTttEE14reserve_rehashNCINvNtB8_3map11make_hasherttNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsdTnyOZvPSTq_9subsetter(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvNtNtCsidf7BFzONoc_6krilla8graphics5image20get_icc_profile_type(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCs2qDE43xvXom_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #33

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCs2qDE43xvXom_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216), i8 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #33

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #27

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs7_NtCsltn4C36Q1Af_10pdf_writer6objectNtB5_3StrNtNtB5_6sealed6Sealed5write(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsg_NtCsltn4C36Q1Af_10pdf_writer6objectNtB5_4NameNtNtB5_6sealed6Sealed5write(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs9_NtCsltn4C36Q1Af_10pdf_writer6objectNtB5_7TextStrNtNtB5_6sealed6Sealed5write(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #27

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() unnamed_addr #29

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCsf1gSX8u3EQ2_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCsidf7BFzONoc_6krilla4pageNtB5_4PageNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(416)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsidf7BFzONoc_6krilla7surfaceNtB4_7SurfaceNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtNtCsidf7BFzONoc_6krilla11interactive10annotationNtB5_14LinkAnnotation20new_with_quad_points(ptr dead_on_unwind noalias nofree noundef writable sret([112 x i8]) align 8 captures(none) dereferenceable(112), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCsidf7BFzONoc_6krilla4pageNtB5_4Page21add_tagged_annotation(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(416), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCsidf7BFzONoc_6krilla4pageNtB5_4Page14add_annotation(ptr noalias nofree noundef align 8 dereferenceable(416), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface12start_tagged(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(976), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface10end_tagged(ptr noalias nofree noundef align 8 dereferenceable(976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCsidf7BFzONoc_6krilla4geomNtB5_4Rect9from_ltrb(ptr dead_on_unwind noalias nofree noundef writable sret([20 x i8]) align 4 captures(none) dereferenceable(20), float noundef, float noundef, float noundef, float noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry7current() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry14inject_or_push(ptr noundef nonnull align 128, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry25increment_terminate_count(ptr noundef nonnull align 128) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCsidf7BFzONoc_6krilla4geomNtB5_4Rect9transform(ptr dead_on_unwind noalias nofree noundef writable sret([20 x i8]) align 4 captures(none) dereferenceable(20), ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minimumnum.f32(float, float) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maximumnum.f32(float, float) #27

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8, i1 noundef zeroext, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #7

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB2_7TagKind8location(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsz_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_5Color5space(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtNtCsdaEETE4DqmE_13typst_library11foundations5arrayNtB5_5ArrayNtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iter(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef align 8 dereferenceable(72), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor7to_vec4(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(20)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCsidf7BFzONoc_6krilla4geomNtB5_4Rect9from_xywh(ptr dead_on_unwind noalias nofree noundef writable sret([20 x i8]) align 4 captures(none) dereferenceable(20), float noundef, float noundef, float noundef, float noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsidf7BFzONoc_6krilla7contentNtB2_14ContentBuilder11expand_bbox(ptr noalias nofree noundef align 8 dereferenceable(656), ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsidf7BFzONoc_6krilla7contentNtB2_14ContentBuilder29content_set_stroke_properties(ptr noalias nofree noundef align 8 dereferenceable(656), ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128), ptr noalias nofree noundef align 8 dereferenceable(600), ptr noalias nofree noundef align 8 dereferenceable(2200)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsidf7BFzONoc_6krilla7contentNtB2_14ContentBuilder16set_fill_opacity(ptr noalias nofree noundef align 8 dereferenceable(656), float noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsidf7BFzONoc_6krilla7contentNtB2_14ContentBuilder18set_stroke_opacity(ptr noalias nofree noundef align 8 dereferenceable(656), float noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsidf7BFzONoc_6krilla7contentNtB2_14ContentBuilder27content_set_fill_properties(ptr noalias nofree noundef align 8 dereferenceable(656), ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), ptr noalias nofree noundef align 8 dereferenceable(600), ptr noalias nofree noundef align 8 dereferenceable(2200)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs1_NtCsidf7BFzONoc_6krilla9serializeNtB5_16SerializeContext23register_font_container(ptr noalias nofree noundef align 8 dereferenceable(600), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtNtCsidf7BFzONoc_6krilla9configure8validateNtB4_10Validators27requires_codepoint_mappings(i1 noundef zeroext, i8 noundef range(i8 -1, 11)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsidf7BFzONoc_6krilla8graphics14graphics_stateNtB4_9ExtGStateNtNtB8_9serialize9Cacheable9serialize(ptr noundef nonnull, ptr noalias nofree noundef align 8 dereferenceable(600), ptr noalias nofree noundef align 8 dereferenceable(2200), i32 noundef range(i32 1, 0)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #31

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsidf7BFzONoc_6krilla6stream14deflate_encode(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry9terminate(ptr noundef nonnull align 128) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i128 @_RNvMs3_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6vtableINtB5_6HandleRNtNtB7_3raw10RawContentNtB5_13ContentVtableE4hash(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs5_NtNtCsdaEETE4DqmE_13typst_library11foundations5bytesNtB5_5BytesINtNtCs3oUPovFnLWP_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs7_NtCsidf7BFzONoc_6krilla4geomNtB5_11PathBuilder6finish(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtCsidf7BFzONoc_6krilla4geomNtB5_4Path9transform(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXs_NtCs7tN9tvpkfrg_12typst_layout10introspectNtB4_17PagedIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector12Introspector4page(ptr noundef nonnull align 8, i128 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs7_NtNtCsdaEETE4DqmE_13typst_library6layout4pageNtB5_10PageRanges13includes_page(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsc_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8Gradient6sample(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef range(i64 0, 2), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color6to_rgb(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #33

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs8_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedString3new(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsdaEETE4DqmE_13typst_library4text4itemNtB2_8TextItem4bbox(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5shapeNtB2_5Shape4bbox(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvMNtNtCsidf7BFzONoc_6krilla4text4fontNtB2_4Font12new_variable(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i32 noundef, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface3pop(ptr noalias nofree noundef align 8 dereferenceable(976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs2_NtCsidf7BFzONoc_6krilla3pdfNtB5_11PdfDocument3new(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs7_NtNtCsidf7BFzONoc_6krilla8graphics5imageNtB5_5Image18from_jpeg_with_icc(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef, ptr, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout9transformNtB2_9Transform10pre_concat(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout9transformNtB2_9Transform9rotate_at(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), double noundef, double noundef, double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCsidf7BFzONoc_6krilla11interchange5embedNtB5_8MimeType3new(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface14push_clip_path(ptr noalias nofree noundef align 8 dereferenceable(976), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCs7tN9tvpkfrg_12typst_layout8documentNtB5_4Page19fill_or_transparent(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5labelNtB2_5Label7resolve(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i64 1, 0) i64 @_RNvMNtNtCsdaEETE4DqmE_13typst_library5model7headingNtB2_11HeadingElem13resolve_level(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(192), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs6xpQEr8gLsQ_11typst_utils8version_7version(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library4text4langNtB4_6Locale8rfc_3066(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), i56) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMsm_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB5_7TagKind8alt_text(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #27

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsY_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagINtB5_3TagNtNtB5_4kind2THE2TH(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsY_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagINtB5_3TagNtNtB5_4kind2THE13with_row_span(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsY_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagINtB5_3TagNtNtB5_4kind2THE13with_col_span(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs10_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagINtB6_3TagNtNtB6_4kind2TDE13with_row_span(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs10_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagINtB6_3TagNtNtB6_4kind2TDE13with_col_span(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_6StrokeNtNtNtB9_6layout3abs3AbsE17unwrap_or_default(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsloFShupyl5J_6comemo7memoize16register_evictor(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCsbMQOdixSu6G_5image6images8dynimageNtB4_12DynamicImage8to_luma8(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCsbMQOdixSu6G_5image6images8dynimageNtB4_12DynamicImage7to_rgb8(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs0_NtCsidf7BFzONoc_6krilla4textNtNtB5_3cid7CIDFontNtB5_7PdfFont14get_codepoints(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136), i32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsidf7BFzONoc_6krilla4textNtNtB5_3cid7CIDFontNtB5_7PdfFont14set_codepoints(ptr noalias nofree noundef align 8 dereferenceable(136), i32, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

end_hunk_1
