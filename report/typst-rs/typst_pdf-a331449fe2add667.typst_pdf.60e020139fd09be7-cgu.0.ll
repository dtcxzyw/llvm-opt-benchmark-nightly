Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7940
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvNtCs8jFhWeO2DFb_9typst_pdf7convert12handle_frame:bb.a
  br i1 %.not.i.i253.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i255.i, label %bb.va

bb.uz:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i255.i
  %i.cpx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs8jFhWeO2DFb_9typst_pdf(ptr %.sroa.0303.0.copyload.i, i8 %.sroa.5305.0.copyload.i) #44
          to label %.body249.i unwind label %bb.vb, !noalias !16334, !inline_history !34

bb.va:                                            ; preds = %bb.uy
  %i.cpy = getelementptr i8, ptr %i.cps, i64 -8
  %.val.i.i254.i = load i64, ptr %i.cpy, align 8, !noalias !16334, !noundef !10
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i255.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i255.i: ; preds = %bb.va, %bb.uy
  %.sroa.02.0.i.i256.i = phi i64 [ %.val.i.i254.i, %bb.va ], [ 0, %bb.uy ]
  %i.cpz = icmp eq i64 %i.cpv, %.sroa.02.0.i.i256.i
  %i.cqa = zext i1 %i.cpz to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.lp, i64 noundef %i.cqa)
          to label %bb.vc unwind label %bb.uz, !noalias !16335, !inline_history !34

bb.vb:                                            ; preds = %bb.uz
  %i.cqb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !16334, !inline_history !34
  unreachable

bb.vc:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i255.i
  %i.cqc = load ptr, ptr %i.lp, align 8, !alias.scope !16333, !noalias !16219, !nonnull !10, !noundef !10
  %i.cqd = load i64, ptr %i.lq, align 8, !alias.scope !16333, !noalias !16219, !noundef !10 ; 2 uses
  %i.cqe = getelementptr inbounds nuw [32 x i8], ptr %i.cqc, i64 %i.cqd ; 5 uses
  store i64 1, ptr %i.cqe, align 8, !noalias !16336
  %.sroa.4299.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cqe, i64 8
  store i64 0, ptr %.sroa.4299.0..sroa_idx.i, align 8, !noalias !16336
  %.sroa.5300.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cqe, i64 16
  store ptr %.sroa.0303.0.copyload.i, ptr %.sroa.5300.0..sroa_idx.i, align 8, !noalias !16336
  %.sroa.7301.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cqe, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7301.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7301.i, i64 7, i1 false), !noalias !16336
  %.sroa.7302.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cqe, i64 31
  store i8 %.sroa.5305.0.copyload.i, ptr %.sroa.7302.0..sroa_idx.i, align 1, !noalias !16336
  %i.cqf = add i64 %i.cqd, 1
  store i64 %i.cqf, ptr %i.lq, align 8, !alias.scope !16333, !noalias !16219
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7301.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ed, ptr noundef nonnull align 8 dereferenceable(72) %i.ec, i64 72, i1 false), !noalias !16219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !16219
  %i.cqg = invoke fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.ed)
          to label %bb.vd unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit265.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16227

bb.vd:                                            ; preds = %bb.vc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !16219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !noalias !16219
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit225.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit265.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.vc, %.noexc187.i, %bb.sn, %.loopexit.i, %.noexc177.i, %.noexc176.i, %.noexc175.i, %.noexc174.i, %.split.i.i, %bb.ul, %bb.ss, %.invoke433.i, %.split.us.i.invoke.i
  %lpad.loopexit.split-lp4777 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit237.i: ; preds = %bb.uk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cpe, ptr noundef nonnull align 4 dereferenceable(16) %i.ef, i64 16, i1 false), !noalias !16227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lf, ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i64 24, i1 false), !noalias !16219
  store i32 1, ptr %i.lg, align 8, !noalias !16219
  store i64 -1, ptr %i.lh, align 8, !noalias !16219
  store i64 1, ptr %i.li, align 8, !noalias !16219
  store i64 1, ptr %i.dw, align 8, !noalias !16219
  store ptr %i.cpe, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !16219
  store i64 1, ptr %.sroa.5.0..sroa_idx.i126, align 8, !noalias !16219
  invoke fastcc void @_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext20push_link_annotation(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, i32 noundef -1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.dw)
          to label %.noexc149 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc149:                                        ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit237.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !16219
  br label %bb.uh

.thread.i:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit265.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body249.i, %bb.ur, %.loopexit.split-lp481.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ui, %.thread351.i, %bb.ug, %bb.uf, %bb.tl, %bb.tk, %.body.thread.i.i
  %.pn147321.i = phi { ptr, i32 } [ %i.cpb, %bb.ug ], [ %i.cpb, %bb.uf ], [ %lpad.loopexit.split-lp4788, %.loopexit.split-lp481.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn145.i, %.body249.i ], [ %i.cpm, %bb.ur ], [ %.pn143341.i, %.thread351.i ], [ %.pn143341.i, %bb.ui ], [ %eh.lpad-body4.i.i, %.body.thread.i.i ], [ %i.cno, %bb.tl ], [ %i.cno, %bb.tk ], [ %lpad.loopexit.split-lp4777, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit265.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16337)
  %i.cqh = load i64, ptr %i.ek, align 8, !range !38, !alias.scope !16337, !noalias !16227, !noundef !10 ; 3 uses
  %i.cqi = icmp eq i64 %i.cqh, -2
  br i1 %i.cqi, label %.invoke2399, label %bb.ve

bb.ve:                                            ; preds = %.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16338), !noalias !16227
  switch i64 %i.cqh, label %bb.vf [
    i64 -1, label %.invoke2399
    i64 0, label %.body
  ]

bb.vf:                                            ; preds = %bb.ve
  %.val1.i.i = load ptr, ptr %i.jq, align 8, !alias.scope !16339, !noalias !16227, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.cqh, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16340
  br label %.body

.invoke2399:                                      ; preds = %bb.ve, %.thread.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla11interactive11destination11DestinationECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(16) %i.jq)
          to label %.body unwind label %bb.ri

bb.vg:                                            ; preds = %bb.ai
  %i.cqj = getelementptr inbounds nuw i8, ptr %.sroa.07.01135, i64 32
  %i.cqk = load i8, ptr %i.cqj, align 16, !range !11, !noundef !10
  %i.cql = trunc nuw i8 %i.cqk to i1
  %i.cqm = getelementptr inbounds nuw i8, ptr %.sroa.07.01135, i64 34
  %i.cqn = load i8, ptr %i.cqm, align 2, !range !11, !noundef !10
  %i.cqo = trunc nuw i8 %i.cqn to i1              ; 2 uses
  br i1 %i.cql, label %bb.vm, label %bb.vn

_RNvNtCs8jFhWeO2DFb_9typst_pdf4tags12handle_start.exit: ; preds = %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree10step_break.exit, %bb.cc, %bb.xj, %bb.xg, %bb.xm, %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree10open_group.exit.i.i, %bb.vr, %bb.vo, %.thread441, %.thread436, %bb.vl, %bb.vk, %bb.vj, %bb.vm, %bb.vn
  %.pr445 = load i64, ptr %i.fg, align 8, !alias.scope !16341 ; 3 uses
  %i.cqp = icmp eq i64 %.pr445, 0
  br i1 %i.cqp, label %_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext3pop.exit150, label %bb.vh

bb.vh:                                            ; preds = %_RNvNtCs8jFhWeO2DFb_9typst_pdf4tags12handle_start.exit
  %i.cqq = add nsw i64 %.pr445, -1                ; 3 uses
  store i64 %i.cqq, ptr %i.fg, align 8, !alias.scope !16341
  %i.cqr = load i64, ptr %i.fj, align 8, !range !17, !alias.scope !16341, !noundef !10
  %i.cqs = icmp samesign ult i64 %i.cqq, %i.cqr
  call void @llvm.assume(i1 %i.cqs)
  %i.cqt = icmp ult i64 %.pr445, 82351536043346214
  call void @llvm.assume(i1 %i.cqt)
  br label %_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext3pop.exit150

_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext3pop.exit150: ; preds = %bb.cb, %_RNvNtCs8jFhWeO2DFb_9typst_pdf4tags12handle_start.exit, %bb.vh
  %i.cqu = phi i64 [ 0, %bb.cb ], [ 0, %_RNvNtCs8jFhWeO2DFb_9typst_pdf4tags12handle_start.exit ], [ %i.cqq, %bb.vh ] ; 2 uses
  %i.cqv = icmp eq ptr %i.pb, %i.ih
  br i1 %i.cqv, label %._crit_edge, label %bb.ad

bb.vi:                                            ; preds = %bb.pz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4tags9TagHandleEBF_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et), !noalias !15784
  %i.cqw = insertvalue { ptr, i64 } poison, ptr %.sroa.0.2.i, 0
  %i.cqx = insertvalue { ptr, i64 } %i.cqw, i64 %.sroa.5.2.i, 1
  br label %.loopexit485

bb.vj:                                            ; preds = %bb.qa
  %i.cqy = extractvalue { ptr, i64 } %i.bwh, 0    ; 2 uses
  %.not54 = icmp eq ptr %i.cqy, null
  br i1 %.not54, label %_RNvNtCs8jFhWeO2DFb_9typst_pdf4tags12handle_start.exit, label %.loopexit485

bb.vk:                                            ; preds = %bb.qb
  %i.cqz = extractvalue { ptr, i64 } %i.bwp, 0    ; 2 uses
  %.not53 = icmp eq ptr %i.cqz, null
  br i1 %.not53, label %_RNvNtCs8jFhWeO2DFb_9typst_pdf4tags12handle_start.exit, label %.loopexit485

.thread441:                                       ; preds = %.invoke, %.noexc140, %bb.uh, %.noexc132, %bb.th, %bb.tg, %.noexc144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek), !noalias !16219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  br label %_RNvNtCs8jFhWeO2DFb_9typst_pdf4tags12handle_start.exit

bb.vl:                                            ; preds = %.invoke2387, %bb.ue, %bb.ud
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek), !noalias !16219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  %.not52 = icmp eq ptr %.sroa.0.3.i, null
  br i1 %.not52, label %_RNvNtCs8jFhWeO2DFb_9typst_pdf4tags12handle_start.exit, label %.loopexit485

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs8jFhWeO2DFb_9typst_pdf.exit86: ; preds = %.loopexit485, %bb.y
  %.sroa.8.0 = extractvalue { ptr, i64 } %.pn60, 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs8jFhWeO2DFb_9typst_pdf.exit182

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs8jFhWeO2DFb_9typst_pdf.exit182: ; preds = %bb.xo, %_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext3pop.exit180, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs8jFhWeO2DFb_9typst_pdf.exit86
  %.sroa.8.2 = phi i64 [ %.sroa.8.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs8jFhWeO2DFb_9typst_pdf.exit86 ], [ undef, %_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext3pop.exit180 ], [ undef, %bb.xo ]
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs8jFhWeO2DFb_9typst_pdf.exit86 ], [ null, %_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext3pop.exit180 ], [ null, %bb.xo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb)
  %i.cra = insertvalue { ptr, i64 } poison, ptr %.sroa.0.2, 0
  %i.crb = insertvalue { ptr, i64 } %i.cra, i64 %.sroa.8.2, 1
  ret { ptr, i64 } %i.crb

bb.vm:                                            ; preds = %bb.vg
  br i1 %i.cqo, label %bb.xg, label %_RNvNtCs8jFhWeO2DFb_9typst_pdf4tags12handle_start.exit

bb.vn:                                            ; preds = %bb.vg
  br i1 %i.cqo, label %bb.vo, label %_RNvNtCs8jFhWeO2DFb_9typst_pdf4tags12handle_start.exit

bb.vo:                                            ; preds = %bb.vn
  call void @llvm.experimental.noalias.scope.decl(metadata !16342)
  call void @llvm.experimental.noalias.scope.decl(metadata !16343)
  %i.crc = load ptr, ptr %i.im, align 8, !alias.scope !16342, !nonnull !10, !align !21, !noundef !10 ; 2 uses
  %i.crd = getelementptr inbounds nuw i8, ptr %i.crc, i64 91
  %i.cre = load i8, ptr %i.crd, align 1, !range !11, !noalias !16344, !noundef !10
  %i.crf = trunc nuw i8 %i.cre to i1
  %.not.i151 = xor i1 %i.crf, true
  %i.crg = load i8, ptr %i.in, align 8, !range !11, !alias.scope !16342
  %i.crh = trunc nuw i8 %i.crg to i1
  %or.cond.i = select i1 %.not.i151, i1 true, i1 %i.crh
  br i1 %or.cond.i, label %_RNvNtCs8jFhWeO2DFb_9typst_pdf4tags12handle_start.exit, label %bb.vp

bb.vp:                                            ; preds = %bb.vo
  call void @llvm.experimental.noalias.scope.decl(metadata !16345)
  call void @llvm.experimental.noalias.scope.decl(metadata !16346)
  call void @llvm.experimental.noalias.scope.decl(metadata !16347)
  %i.cri = load i64, ptr %i.io, align 8, !alias.scope !16348, !noundef !10 ; 4 uses
  %i.crj = load i64, ptr %i.ip, align 8, !alias.scope !16348, !noundef !10 ; 4 uses
  %i.crk = icmp ult i64 %i.cri, %i.crj
  br i1 %i.crk, label %bb.vq, label %.invoke2392

bb.vq:                                            ; preds = %bb.vp
  %i.crl = load ptr, ptr %i.iq, align 8, !alias.scope !16348, !nonnull !10, !noundef !10 ; 2 uses
  %i.crm = getelementptr inbounds nuw [4 x i8], ptr %i.crl, i64 %i.cri
  %i.crn = load i32, ptr %i.crm, align 4, !noalias !16349, !noundef !10 ; 2 uses
  %i.cro = add nuw i64 %i.cri, 1                  ; 6 uses
  store i64 %i.cro, ptr %i.io, align 8, !alias.scope !16348
  %i.crp = icmp ult i64 %i.cro, %i.crj
  br i1 %i.crp, label %bb.vr, label %.invoke2392

.invoke2392:                                      ; preds = %bb.xi, %bb.xh, %_RNvXs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mut.exit.i.i, %bb.vq, %bb.vp, %bb.ao, %bb.an
  %i.crq = phi i64 [ %i.qz, %bb.ao ], [ %i.cri, %bb.vp ], [ %i.cro, %bb.vq ], [ %i.cvu, %_RNvXs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mut.exit.i.i ], [ %i.cyf, %bb.xh ], [ %i.qt, %bb.an ], [ %i.cyl, %bb.xi ]
  %i.crr = phi i64 [ %i.qu, %bb.ao ], [ %i.crj, %bb.vp ], [ %i.crj, %bb.vq ], [ %.val3.i.i, %_RNvXs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mut.exit.i.i ], [ %i.cyg, %bb.xh ], [ %i.qu, %bb.an ], [ %i.cyg, %bb.xi ]
  %i.crs = phi ptr [ @168, %bb.ao ], [ @168, %bb.vp ], [ @168, %bb.vq ], [ @60, %_RNvXs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mut.exit.i.i ], [ @168, %bb.xh ], [ @168, %bb.an ], [ @168, %bb.xi ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.crq, i64 noundef %i.crr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.crs) #42
          to label %.cont2393 unwind label %.loopexit.split-lp

.cont2393:                                        ; preds = %.invoke2392
  unreachable

bb.vr:                                            ; preds = %bb.vq
  %i.crt = getelementptr inbounds nuw [4 x i8], ptr %i.crl, i64 %i.cro
  %i.cru = load i32, ptr %i.crt, align 4, !noalias !16349, !noundef !10 ; 5 uses
  %i.crv = icmp eq i32 %i.crn, %i.cru
  br i1 %i.crv, label %_RNvNtCs8jFhWeO2DFb_9typst_pdf4tags12handle_start.exit, label %bb.vs

bb.vs:                                            ; preds = %bb.vr
  call void @llvm.experimental.noalias.scope.decl(metadata !16350)
  %i.crw = load i64, ptr %i.ir, align 8, !alias.scope !16351, !noundef !10
  %i.crx = load i64, ptr %i.is, align 8, !alias.scope !16351, !noundef !10 ; 3 uses
  %i.cry = icmp ult i64 %i.crx, %i.crw
  br i1 %i.cry, label %bb.vt, label %bb.wp

bb.vt:                                            ; preds = %bb.vs
  %i.crz = load ptr, ptr %i.it, align 8, !alias.scope !16351, !nonnull !10, !noundef !10
  %i.csa = getelementptr inbounds nuw [8 x i8], ptr %i.crz, i64 %i.crx ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.csa, align 4, !noalias !16352
  %i.csb = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.csc = icmp eq i64 %i.cro, %i.csb
  br i1 %i.csc, label %.invoke2388, label %bb.wp

.invoke2388:                                      ; preds = %bb.vt, %bb.xl
  %.sink2402 = phi ptr [ %i.cyu, %bb.xl ], [ %i.csa, %bb.vt ]
  %.sink2401 = phi i64 [ %i.cyr, %bb.xl ], [ %i.crx, %bb.vt ]
  %.sink = phi i64 [ %i.cyl, %bb.xl ], [ %i.cro, %bb.vt ]
  %i.csd = phi i32 [ %i.cyk, %bb.xl ], [ %i.crn, %bb.vt ]
  %i.cse = phi i32 [ %i.cyo, %bb.xl ], [ %i.cru, %bb.vt ] ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i174 = getelementptr inbounds nuw i8, ptr %.sink2402, i64 4
  %.sroa.6.0.copyload.i.i.i175 = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i174, align 4, !noalias !10
  %i.csf = add nuw i64 %.sink2401, 1
  store i64 %i.csf, ptr %i.is, align 8
  %.sroa.54.8.insert.ext.i.i = zext i32 %.sroa.6.0.copyload.i.i.i175 to i64
  %.sroa.54.8.insert.shift.i.i = shl nuw i64 %.sroa.54.8.insert.ext.i.i, 32
  %.sroa.54.8.insert.insert.i.i = add nuw nsw i64 %.sroa.54.8.insert.shift.i.i, %.sink ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16353)
  call void @llvm.experimental.noalias.scope.decl(metadata !16354)
  %.sroa.4.0.extract.shift.i = lshr i64 %.sroa.54.8.insert.insert.i.i, 32
  %.sroa.4.0.extract.trunc.i = trunc i64 %.sroa.4.0.extract.shift.i to i16 ; 2 uses
  %.not.i2409 = icmp eq i16 %.sroa.4.0.extract.trunc.i, 0
  br i1 %.not.i2409, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc2429, %.invoke2388
  %.sroa.5.0.extract.shift.i = lshr i64 %.sroa.54.8.insert.insert.i.i, 48 ; 2 uses
  %i.csg = load i64, ptr %i.iu, align 8, !alias.scope !16355, !noundef !10 ; 2 uses
  %.not.i.i2410 = icmp eq i64 %i.csg, 0
  br i1 %.not.i.i2410, label %.invoke4170, label %_RNvXs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mut.exit.i, !prof !13

_RNvXs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mut.exit.i: ; preds = %._crit_edge.i
  %i.csh = load ptr, ptr %i.iv, align 8, !alias.scope !16355, !nonnull !10, !noundef !10
  %i.csi = getelementptr [160 x i8], ptr %i.csh, i64 %i.csg ; 11 uses
  %i.csj = load ptr, ptr %i.im, align 8, !alias.scope !16353, !nonnull !10, !align !21, !noundef !10
  %i.csk = getelementptr i8, ptr %i.csj, i64 90
  %.val.i2411 = load i8, ptr %i.csk, align 2, !noalias !16356
  call void @llvm.experimental.noalias.scope.decl(metadata !16357)
  call void @llvm.experimental.noalias.scope.decl(metadata !16358)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.5.i.i.i)
  %i.csl = getelementptr i8, ptr %i.csi, i64 -64  ; 2 uses
  %i.csm = getelementptr i8, ptr %i.csi, i64 -48  ; 3 uses
  %i.csn = load i64, ptr %i.csm, align 16, !alias.scope !16357, !noalias !16356, !noundef !10 ; 6 uses
  %i.cso = icmp ult i64 %i.csn, 2305843009213693952
  call void @llvm.assume(i1 %i.cso)
  %i.csp = getelementptr i8, ptr %i.csi, i64 -80  ; 3 uses
  %i.csq = load i64, ptr %i.csp, align 16, !alias.scope !16357, !noalias !16356, !noundef !10 ; 6 uses
  %i.csr = icmp ult i64 %i.csq, 230584300921369396
  call void @llvm.assume(i1 %i.csr)
  %i.css = icmp eq i64 %.sroa.5.0.extract.shift.i, 0
  br i1 %i.css, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree10step_break.exit, label %.lr.ph.i.i2412

.lr.ph.i.i2412:                                   ; preds = %_RNvXs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mut.exit.i
  %i.cst = load i64, ptr %i.fg, align 8, !alias.scope !16359
  %.fr.i.i = freeze i64 %i.cst
  %.not1.i.i.i = icmp eq i64 %.fr.i.i, 0
  %i.csu = load i64, ptr %0, align 8, !range !19, !alias.scope !16359
  %.not.i.not.i.i = icmp eq i64 %i.csu, 0         ; 2 uses
  %i.csv = load ptr, ptr %i.fk, align 8, !alias.scope !16359, !nonnull !10
  %i.csw = getelementptr inbounds nuw i8, ptr %i.csv, i64 96
  %i.csx = icmp ne i8 %.val.i2411, 3
  %i.csy = getelementptr i8, ptr %i.csi, i64 -56
  %.sroa.3.0..sroa_idx.i.i.i2413 = getelementptr i8, ptr %i.csi, i64 -144
  %i.csz = getelementptr i8, ptr %i.csi, i64 -96  ; 2 uses
  %i.cta = getelementptr i8, ptr %i.csi, i64 -88
  %i.ctb = load i64, ptr %i.ix, align 8, !alias.scope !16353, !noalias !16360, !noundef !10 ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.preheader.i, !prof !13

.lr.ph.split.i.preheader.i:                       ; preds = %.lr.ph.i.i2412
  %i.ctc = load ptr, ptr %i.iw, align 8, !alias.scope !16353, !nonnull !10
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i2412
  %i.ctd = zext i32 %i.cse to i64                 ; 2 uses
  %i.cte = icmp ugt i64 %i.ctb, %i.ctd
  br i1 %i.cte, label %.invoke4170, label %.split.us.i.i2414

.lr.ph.split.i.i:                                 ; preds = %bb.wo, %.lr.ph.split.i.preheader.i
  %.sroa.0.06.i = phi i32 [ %i.ctk, %bb.wo ], [ %i.cse, %.lr.ph.split.i.preheader.i ] ; 4 uses
  %.sroa.04.058.i.i = phi i32 [ %.sroa.04.1.i1217.i, %bb.wo ], [ undef, %.lr.ph.split.i.preheader.i ]
  %.sroa.2.057.i.i = phi i32 [ %.sroa.2.1.i1118.i, %bb.wo ], [ 2, %.lr.ph.split.i.preheader.i ]
  %.sroa.51.056.i.i = phi i64 [ %i.ctf, %bb.wo ], [ %.sroa.5.0.extract.shift.i, %.lr.ph.split.i.preheader.i ]
  %.sroa.5.sroa.3.055.i.i = phi i8 [ %.sroa.5.sroa.3.1.i1019.i, %bb.wo ], [ undef, %.lr.ph.split.i.preheader.i ]
  %i.ctf = add nsw i64 %.sroa.51.056.i.i, -1      ; 2 uses
  %i.ctg = zext i32 %.sroa.0.06.i to i64          ; 3 uses
  %i.cth = icmp ugt i64 %i.ctb, %i.ctg
  br i1 %i.cth, label %bb.vu, label %.split.us.i.i2414

.split.us.i.i2414:                                ; preds = %.lr.ph.split.i.i, %.lr.ph.split.us.i.i
  %.us-phi.i.i = phi i64 [ %i.ctd, %.lr.ph.split.us.i.i ], [ %i.ctg, %.lr.ph.split.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi.i.i, i64 noundef %i.ctb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #42
          to label %.noexc2421 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2421:                                       ; preds = %.split.us.i.i2414
  unreachable

bb.vu:                                            ; preds = %.lr.ph.split.i.i
  %i.cti = getelementptr inbounds nuw [80 x i8], ptr %i.ctc, i64 %i.ctg ; 6 uses
  %i.ctj = getelementptr inbounds nuw i8, ptr %i.cti, i64 72
  %i.ctk = load i32, ptr %i.ctj, align 8, !noalias !16361, !noundef !10
  %i.ctl = getelementptr inbounds nuw i8, ptr %i.cti, i64 24 ; 3 uses
  br i1 %.not.i.not.i.i, label %_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext9page_size.exit.i.i, label %bb.vv

bb.vv:                                            ; preds = %bb.vu
  %i.ctm = load <2 x double>, ptr %i.csw, align 8, !noalias !16362
  br label %_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext9page_size.exit.i.i

_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext9page_size.exit.i.i: ; preds = %bb.vv, %bb.vu
  %i.ctn = phi <2 x double> [ undef, %bb.vu ], [ %i.ctm, %bb.vv ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16363)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16364
  %i.cto = load i8, ptr %i.ctl, align 8, !range !53, !alias.scope !16363, !noalias !16365, !noundef !10 ; 2 uses
  %i.ctp = icmp eq i8 %i.cto, 1
  br i1 %i.ctp, label %bb.vw, label %bb.wa

bb.vw:                                            ; preds = %_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext9page_size.exit.i.i
  %i.ctq = getelementptr inbounds nuw i8, ptr %i.cti, i64 25
  %i.ctr = load i8, ptr %i.ctq, align 1, !range !77, !alias.scope !16363, !noalias !16365, !noundef !10 ; 2 uses
  %i.cts = icmp ne i8 %i.ctr, 10
  %or.cond.i.not144.i.i = or i1 %i.csx, %i.cts    ; 2 uses
  %brmerge.i.i = select i1 %or.cond.i.not144.i.i, i1 true, i1 %.not.i.not.i.i
  br i1 %brmerge.i.i, label %.thread13.i, label %bb.vx

.thread13.i:                                      ; preds = %bb.vw
  %.mux.i.i = select i1 %or.cond.i.not144.i.i, i8 %i.ctr, i8 11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16364
  br label %bb.wo

bb.vx:                                            ; preds = %bb.vw
  %i.ctt = fdiv <2 x double> %i.ctn, splat (double 1.270000e+02)
  %i.ctu = fptrunc <2 x double> %i.ctt to <2 x float> ; 2 uses
  %i.ctv = extractelement <2 x float> %i.ctu, i64 0
  %i.ctw = extractelement <2 x float> %i.ctu, i64 1
  invoke void @_RNvMs2_NtCsidf7BFzONoc_6krilla4geomNtB5_4Rect9from_ltrb(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.c, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %i.ctv, float noundef %i.ctw)
          to label %.noexc2422 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2422:                                       ; preds = %bb.vx
  %i.ctx = load i32, ptr %i.c, align 4, !range !14, !noalias !16366, !noundef !10
  %i.cty = trunc nuw i32 %i.ctx to i1
  br i1 %i.cty, label %bb.vy, label %.invoke4170, !prof !16

bb.vy:                                            ; preds = %.noexc2422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.sroa.5.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.ow, i64 16, i1 false), !noalias !16364
  %.pre.pre.pre.i.i = load i8, ptr %i.ctl, align 8, !range !53, !noalias !16365
  br label %bb.wa

.invoke4170:                                      ; preds = %._crit_edge.i, %.noexc2422, %.lr.ph.split.us.i.i
  %i.ctz = phi ptr [ @224, %.lr.ph.split.us.i.i ], [ @219, %.noexc2422 ], [ @537, %._crit_edge.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ctz) #42
          to label %.cont4171 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont4171:                                        ; preds = %.invoke4170
  unreachable

._crit_edge.i.i2416:                              ; preds = %bb.wo
  %i.cua = getelementptr i8, ptr %i.csi, i64 -36  ; 2 uses
  %i.cub = load i32, ptr %i.cua, align 4, !range !32, !alias.scope !16357, !noalias !16356, !noundef !10
  %.not16.i.i = icmp ne i32 %i.cub, 2
  %.not17.i.i2417 = icmp eq i32 %.sroa.2.1.i1118.i, 2
  %or.cond.i.i = select i1 %.not16.i.i, i1 true, i1 %.not17.i.i2417
  br i1 %or.cond.i.i, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree10step_break.exit, label %bb.vz

bb.vz:                                            ; preds = %._crit_edge.i.i2416
  %i.cuc = getelementptr i8, ptr %i.csi, i64 -40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.415.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.sroa.5.i.i.i, i64 16, i1 false), !noalias !16364
  store i32 %.sroa.04.1.i1217.i, ptr %i.cuc, align 8, !alias.scope !16357, !noalias !16356
  store i32 %.sroa.2.1.i1118.i, ptr %i.cua, align 4, !alias.scope !16357, !noalias !16356
  %.sroa.5.0..sroa_idx.i.i2418 = getelementptr i8, ptr %i.csi, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i2418, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.sroa.5.i.i.i, i64 16, i1 false), !noalias !16367
  %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr i8, ptr %i.csi, i64 -16
  store i8 %.sroa.5.sroa.3.1.i1019.i, ptr %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 16, !alias.scope !16357, !noalias !16356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16364
  store i32 %.sroa.2.1.i1118.i, ptr %i.oz, align 4, !noalias !16364
  store i8 %.sroa.5.sroa.3.1.i1019.i, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !16364
  store i32 0, ptr %i.d, align 8, !noalias !16364
  invoke void @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface12start_tagged(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.d)
          to label %.noexc2424 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2424:                                       ; preds = %bb.vz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16364
  br label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree10step_break.exit

bb.wa:                                            ; preds = %bb.vy, %_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext9page_size.exit.i.i
  %i.cud = phi i8 [ %.pre.pre.pre.i.i, %bb.vy ], [ %i.cto, %_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext9page_size.exit.i.i ] ; 3 uses
  %.sroa.5.sroa.3.1.i.i = phi i8 [ 10, %bb.vy ], [ %.sroa.5.sroa.3.055.i.i, %_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext9page_size.exit.i.i ] ; 2 uses
  %.sroa.2.1.i.i = phi i32 [ 1, %bb.vy ], [ %.sroa.2.057.i.i, %_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext9page_size.exit.i.i ] ; 2 uses
  %.sroa.04.1.i.i = phi i32 [ %.sroa.0.06.i, %bb.vy ], [ %.sroa.04.058.i.i, %_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext9page_size.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16364
  %switch.tableidx4706 = add nsw i8 %i.cud, -6    ; 3 uses
  %i.cue = icmp ult i8 %switch.tableidx4706, 15
  br i1 %i.cue, label %switch.hole_check4708, label %bb.wf

switch.hole_check4708:                            ; preds = %bb.wa
  %switch.maskindex4710 = zext nneg i8 %switch.tableidx4706 to i16
  %switch.shifted4711 = lshr i16 30721, %switch.maskindex4710
  %switch.lobit4712 = trunc i16 %switch.shifted4711 to i1
  br i1 %switch.lobit4712, label %switch.lookup4709, label %bb.wf

switch.lookup4709:                                ; preds = %switch.hole_check4708
  %i.cuf = zext nneg i8 %switch.tableidx4706 to i64
  %switch.gep4713 = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree11close_group, i64 %i.cuf
  %switch.load4714 = load i8, ptr %switch.gep4713, align 1
  %switch.ext4715 = zext i8 %switch.load4714 to i64
  %i.cug = getelementptr inbounds nuw i8, ptr %i.cti, i64 %switch.ext4715
  %.sroa.8.0.i.i = load i32, ptr %i.cug, align 4, !noalias !16365, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !16368)
  %i.cuh = load i64, ptr %i.csm, align 16, !alias.scope !16369, !noalias !16356, !noundef !10 ; 7 uses
  %i.cui = icmp ult i64 %i.cuh, 2305843009213693952
  call void @llvm.assume(i1 %i.cui)
  %i.cuj = icmp samesign ugt i64 %i.csn, %i.cuh
  br i1 %i.cuj, label %bb.wc, label %bb.wb, !prof !13

bb.wb:                                            ; preds = %switch.lookup4709
  %i.cuk = load i64, ptr %i.csl, align 16, !range !17, !alias.scope !16369, !noalias !16356, !noundef !10
  %i.cul = icmp eq i64 %i.cuh, %i.cuk
  br i1 %i.cul, label %bb.wd, label %.noexc2426

bb.wc:                                            ; preds = %switch.lookup4709
  invoke void @_RNvNvMs_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, 2305843009213693952) %i.csn, i64 noundef %i.cuh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #42
          to label %.noexc2425 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2425:                                       ; preds = %bb.wc
  unreachable

bb.wd:                                            ; preds = %bb.wb
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBT_7context7BBoxCtxEE8grow_oneBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.csl) #38
          to label %.noexc2426 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2426:                                       ; preds = %bb.wd, %bb.wb
  %i.cum = load ptr, ptr %i.csy, align 8, !alias.scope !16369, !noalias !16356, !nonnull !10, !noundef !10
  %i.cun = getelementptr inbounds nuw [4 x i8], ptr %i.cum, i64 %i.csn ; 3 uses
  %i.cuo = icmp samesign ult i64 %i.csn, %i.cuh
  br i1 %i.cuo, label %bb.we, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBL_7context7BBoxCtxEE10insert_mutBN_.exit.i.i

bb.we:                                            ; preds = %.noexc2426
  %i.cup = getelementptr inbounds nuw i8, ptr %i.cun, i64 4
  %i.cuq = sub nuw nsw i64 %i.cuh, %i.csn
  %i.cur = shl nuw nsw i64 %i.cuq, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cup, ptr nonnull align 4 %i.cun, i64 %i.cur, i1 false), !noalias !16370
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBL_7context7BBoxCtxEE10insert_mutBN_.exit.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBL_7context7BBoxCtxEE10insert_mutBN_.exit.i.i: ; preds = %bb.we, %.noexc2426
  store i32 %.sroa.8.0.i.i, ptr %i.cun, align 4, !noalias !16370
  %i.cus = add nuw nsw i64 %i.cuh, 1
  store i64 %i.cus, ptr %i.csm, align 16, !alias.scope !16369, !noalias !16356
  %.pr.i.i = load i8, ptr %i.ctl, align 8, !noalias !16365
  br label %bb.wf

end_hunk_0
begin_hunk_1_@_RNvNtCs8jFhWeO2DFb_9typst_pdf7convert12handle_frame:bb.a
  %i.cwg = load ptr, ptr %i.fk, align 8, !alias.scope !16391, !nonnull !10, !noundef !10
  %i.cwh = getelementptr inbounds nuw i8, ptr %i.cwg, i64 96
  %i.cwi = load <2 x double>, ptr %i.cwh, align 8, !noalias !16392
  br label %_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext9page_size.exit.i.i.i

_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext9page_size.exit.i.i.i: ; preds = %bb.wu, %bb.wt
  %i.cwj = phi <2 x double> [ undef, %bb.wt ], [ %i.cwi, %bb.wu ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16393)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !16394
  %i.cwk = load i8, ptr %i.cwd, align 8, !range !53, !alias.scope !16393, !noalias !16394, !noundef !10
  %i.cwl = icmp eq i8 %i.cwk, 1
  br i1 %i.cwl, label %bb.wv, label %bb.wz

bb.wv:                                            ; preds = %_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext9page_size.exit.i.i.i
  %i.cwm = getelementptr inbounds nuw i8, ptr %i.cvw, i64 25
  %i.cwn = load i8, ptr %i.cwm, align 1, !range !77, !alias.scope !16393, !noalias !16394, !noundef !10 ; 2 uses
  %i.cwo = icmp ne i8 %.val4.i.i, 3
  %i.cwp = icmp ne i8 %i.cwn, 10
  %or.cond.i.not16.i.i.i = or i1 %i.cwo, %i.cwp   ; 2 uses
  %brmerge.i.i.i = or i1 %.not.i.not.i.i.i154, %or.cond.i.not16.i.i.i
  %.mux.i.i.i = select i1 %or.cond.i.not16.i.i.i, i8 %i.cwn, i8 11
  br i1 %brmerge.i.i.i, label %bb.wy, label %bb.ww

bb.ww:                                            ; preds = %bb.wv
  %i.cwq = fdiv <2 x double> %i.cwj, splat (double 1.270000e+02)
  %i.cwr = fptrunc <2 x double> %i.cwq to <2 x float> ; 2 uses
  %i.cws = extractelement <2 x float> %i.cwr, i64 0
  %i.cwt = extractelement <2 x float> %i.cwr, i64 1
  invoke void @_RNvMs2_NtCsidf7BFzONoc_6krilla4geomNtB5_4Rect9from_ltrb(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.cz, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %i.cws, float noundef %i.cwt)
          to label %.noexc163 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc163:                                        ; preds = %bb.ww
  %i.cwu = load i32, ptr %i.cz, align 4, !range !14, !noalias !16395, !noundef !10
  %i.cwv = trunc nuw i32 %i.cwu to i1
  br i1 %i.cwv, label %bb.wx, label %.invoke2390, !prof !16

bb.wx:                                            ; preds = %.noexc163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.sroa.5.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.iy, i64 16, i1 false), !noalias !16394
  br label %bb.wy

bb.wy:                                            ; preds = %bb.wx, %bb.wv
  %.sroa.9.0.ph.i.i.i = phi i8 [ %.mux.i.i.i, %bb.wv ], [ 10, %bb.wx ] ; 2 uses
  %.sroa.0.0.ph.i.i.i = phi i32 [ 0, %bb.wv ], [ 1, %bb.wx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !16394
  store i32 %i.cru, ptr %i.cvx, align 8, !alias.scope !16387, !noalias !16386
  store i32 %.sroa.0.0.ph.i.i.i, ptr %i.cvy, align 4, !alias.scope !16387, !noalias !16386
  %.sroa.42.sroa.4.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.cvs, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.42.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.sroa.5.i.i.i.i, i64 16, i1 false), !noalias !16396
  %.sroa.42.sroa.5.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.cvs, i64 -16
  store i8 %.sroa.9.0.ph.i.i.i, ptr %.sroa.42.sroa.5.0..sroa_idx.i.i.i, align 16, !alias.scope !16387, !noalias !16386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !16394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !16394
  store i32 %.sroa.0.0.ph.i.i.i, ptr %i.iz, align 4, !noalias !16394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i155, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.sroa.5.i.i.i.i, i64 16, i1 false), !noalias !16394
  store i8 %.sroa.9.0.ph.i.i.i, ptr %.sroa.66.0..sroa_idx.i.i.i, align 8, !noalias !16394
  store i32 0, ptr %i.db, align 8, !noalias !16394
  invoke void @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface12start_tagged(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dc, ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.db)
          to label %.noexc165 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc165:                                        ; preds = %bb.wy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !16394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !16394
  br label %bb.wr

bb.wz:                                            ; preds = %_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext9page_size.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !16394
  br label %bb.wr

switch.hole_check4718:                            ; preds = %bb.wr
  %switch.maskindex4720 = zext nneg i8 %switch.tableidx4716 to i16
  %switch.shifted4721 = lshr i16 30721, %switch.maskindex4720
  %switch.lobit4722 = trunc i16 %switch.shifted4721 to i1
  br i1 %switch.lobit4722, label %switch.lookup4719, label %bb.xb

switch.lookup4719:                                ; preds = %switch.hole_check4718
  %i.cww = zext nneg i8 %switch.tableidx4716 to i64
  %switch.gep4723 = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree11close_group, i64 %i.cww
  %switch.load4724 = load i8, ptr %switch.gep4723, align 1
  %switch.ext4725 = zext i8 %switch.load4724 to i64
  %i.cwx = getelementptr inbounds nuw i8, ptr %i.cvw, i64 %switch.ext4725
  %.sroa.8.0.i.i.i = load i32, ptr %i.cwx, align 4, !noalias !16389, !noundef !10
  %i.cwy = getelementptr i8, ptr %i.cvs, i64 -64  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16397)
  %i.cwz = getelementptr i8, ptr %i.cvs, i64 -48  ; 2 uses
  %i.cxa = load i64, ptr %i.cwz, align 8, !alias.scope !16398, !noalias !16399, !noundef !10 ; 3 uses
  %i.cxb = load i64, ptr %i.cwy, align 8, !range !17, !alias.scope !16398, !noalias !16399, !noundef !10
  %i.cxc = icmp eq i64 %i.cxa, %i.cxb
  br i1 %i.cxc, label %bb.xa, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBM_7context7BBoxCtxEE8push_mutBO_.exit.i.i.i

bb.xa:                                            ; preds = %switch.lookup4719
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBT_7context7BBoxCtxEE8grow_oneBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cwy) #38
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBM_7context7BBoxCtxEE8push_mutBO_.exit.i.i.i unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBM_7context7BBoxCtxEE8push_mutBO_.exit.i.i.i: ; preds = %bb.xa, %switch.lookup4719
  %i.cxd = getelementptr i8, ptr %i.cvs, i64 -56
  %i.cxe = load ptr, ptr %i.cxd, align 8, !alias.scope !16398, !noalias !16399, !nonnull !10, !noundef !10
  %i.cxf = getelementptr inbounds nuw [4 x i8], ptr %i.cxe, i64 %i.cxa
  store i32 %.sroa.8.0.i.i.i, ptr %i.cxf, align 4, !noalias !16400
  %i.cxg = add i64 %i.cxa, 1
  store i64 %i.cxg, ptr %i.cwz, align 8, !alias.scope !16398, !noalias !16399
  %.pr.i.i.i = load i8, ptr %i.cwa, align 8, !noalias !16389
  br label %bb.xb

bb.xb:                                            ; preds = %switch.hole_check4718, %bb.wr, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBM_7context7BBoxCtxEE8push_mutBO_.exit.i.i.i
  %i.cxh = phi i8 [ %i.cwb, %bb.wr ], [ %.pr.i.i.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBM_7context7BBoxCtxEE8push_mutBO_.exit.i.i.i ], [ %i.cwb, %switch.hole_check4718 ]
  %i.cxi = icmp eq i8 %i.cxh, 25
  br i1 %i.cxi, label %bb.xc, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree10open_group.exit.i.i

bb.xc:                                            ; preds = %bb.xb
  %i.cxj = getelementptr inbounds nuw i8, ptr %i.cvw, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !16394
  call void @llvm.experimental.noalias.scope.decl(metadata !16401)
  call void @llvm.experimental.noalias.scope.decl(metadata !16402)
  %i.cxk = load i64, ptr %i.cxj, align 8, !range !54, !alias.scope !16402, !noalias !16389, !noundef !10 ; 2 uses
  %switch.i.i = icmp samesign ult i64 %i.cxk, 2
  br i1 %switch.i.i, label %_RNvXs5_NtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4textNtB5_8TextAttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i, label %_RNvXs5_NtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4textNtB5_8TextAttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.sink.split.i.i

_RNvXs5_NtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4textNtB5_8TextAttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.sink.split.i.i: ; preds = %bb.xc
  %i.cxl = getelementptr inbounds nuw i8, ptr %i.cvw, i64 40
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ja, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cxl)
          to label %_RNvXs5_NtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4textNtB5_8TextAttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs5_NtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4textNtB5_8TextAttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXs5_NtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4textNtB5_8TextAttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.sink.split.i.i, %bb.xc
  store i64 %i.cxk, ptr %i.da, align 8, !alias.scope !16401, !noalias !16394
  call void @llvm.experimental.noalias.scope.decl(metadata !16403)
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr i8, ptr %i.cvs, i64 -144
  store i32 -1, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 16, !alias.scope !16404, !noalias !16399
  %i.cxm = getelementptr i8, ptr %i.cvs, i64 -96  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !16405
  store i32 %i.cru, ptr %i.cy, align 8, !noalias !16405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jb, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.da, i64 32, i1 false), !noalias !16406
  call void @llvm.experimental.noalias.scope.decl(metadata !16407)
  call void @llvm.experimental.noalias.scope.decl(metadata !16408)
  %i.cxn = getelementptr i8, ptr %i.cvs, i64 -80  ; 2 uses
  %i.cxo = load i64, ptr %i.cxn, align 16, !alias.scope !16409, !noalias !16399, !noundef !10 ; 3 uses
  %i.cxp = load i64, ptr %i.cxm, align 16, !range !17, !alias.scope !16409, !noalias !16399, !noundef !10
  %i.cxq = icmp eq i64 %i.cxo, %i.cxp
  br i1 %i.cxq, label %bb.xd, label %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4textNtB2_9TextAttrs4push.exit.i.i.i

bb.xd:                                            ; preds = %_RNvXs5_NtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4textNtB5_8TextAttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBU_6groups5GroupENtNtNtBU_4tree4text8TextAttrEE8grow_oneBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cxm)
          to label %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4textNtB2_9TextAttrs4push.exit.i.i.i unwind label %bb.xe, !noalias !16410

bb.xe:                                            ; preds = %bb.xd
  %i.cxr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cxs = load i64, ptr %i.jb, align 8, !range !54, !alias.scope !16411, !noalias !16405, !noundef !10
  %switch.i.i.i.i.i.i.i = icmp samesign ult i64 %i.cxs, 2
  br i1 %switch.i.i.i.i.i.i.i, label %.body, label %.sink.split.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.xe
  %i.cxt = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cxt)
          to label %.body unwind label %bb.xf, !noalias !16412

bb.xf:                                            ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.cxu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !16412
  unreachable

_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4textNtB2_9TextAttrs4push.exit.i.i.i: ; preds = %bb.xd, %_RNvXs5_NtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4textNtB5_8TextAttrNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i
  %i.cxv = getelementptr i8, ptr %i.cvs, i64 -88
  %i.cxw = load ptr, ptr %i.cxv, align 8, !alias.scope !16409, !noalias !16399, !nonnull !10, !noundef !10
  %i.cxx = getelementptr inbounds nuw [40 x i8], ptr %i.cxw, i64 %i.cxo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cxx, ptr noundef nonnull align 8 dereferenceable(40) %i.cy, i64 40, i1 false), !noalias !16412
  %i.cxy = add i64 %i.cxo, 1
  store i64 %i.cxy, ptr %i.cxn, align 16, !alias.scope !16409, !noalias !16399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !16405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !16394
  br label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree10open_group.exit.i.i

_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree10open_group.exit.i.i: ; preds = %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4textNtB2_9TextAttrs4push.exit.i.i.i, %bb.xb
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.5.i.i.i.i)
  br label %_RNvNtCs8jFhWeO2DFb_9typst_pdf4tags12handle_start.exit

bb.xg:                                            ; preds = %bb.vm
  call void @llvm.experimental.noalias.scope.decl(metadata !16413)
  %i.cxz = load ptr, ptr %i.im, align 8, !alias.scope !16413, !nonnull !10, !align !21, !noundef !10
  %i.cya = getelementptr inbounds nuw i8, ptr %i.cxz, i64 91
  %i.cyb = load i8, ptr %i.cya, align 1, !range !11, !noalias !16414, !noundef !10
  %i.cyc = trunc nuw i8 %i.cyb to i1
  %.not.i171 = xor i1 %i.cyc, true
  %i.cyd = load i8, ptr %i.in, align 8, !range !11, !alias.scope !16413
  %i.cye = trunc nuw i8 %i.cyd to i1
  %or.cond.i172 = select i1 %.not.i171, i1 true, i1 %i.cye
  br i1 %or.cond.i172, label %_RNvNtCs8jFhWeO2DFb_9typst_pdf4tags12handle_start.exit, label %bb.xh

bb.xh:                                            ; preds = %bb.xg
  call void @llvm.experimental.noalias.scope.decl(metadata !16415)
  call void @llvm.experimental.noalias.scope.decl(metadata !16416)
  %i.cyf = load i64, ptr %i.io, align 8, !alias.scope !16417, !noundef !10 ; 4 uses
  %i.cyg = load i64, ptr %i.ip, align 8, !alias.scope !16417, !noundef !10 ; 4 uses
  %i.cyh = icmp ult i64 %i.cyf, %i.cyg
  br i1 %i.cyh, label %bb.xi, label %.invoke2392

bb.xi:                                            ; preds = %bb.xh
  %i.cyi = load ptr, ptr %i.iq, align 8, !alias.scope !16417, !nonnull !10, !noundef !10 ; 2 uses
  %i.cyj = getelementptr inbounds nuw [4 x i8], ptr %i.cyi, i64 %i.cyf
  %i.cyk = load i32, ptr %i.cyj, align 4, !noalias !16418, !noundef !10 ; 3 uses
  %i.cyl = add nuw i64 %i.cyf, 1                  ; 6 uses
  store i64 %i.cyl, ptr %i.io, align 8, !alias.scope !16417
  %i.cym = icmp ult i64 %i.cyl, %i.cyg
  br i1 %i.cym, label %bb.xj, label %.invoke2392

bb.xj:                                            ; preds = %bb.xi
  %i.cyn = getelementptr inbounds nuw [4 x i8], ptr %i.cyi, i64 %i.cyl
  %i.cyo = load i32, ptr %i.cyn, align 4, !noalias !16418, !noundef !10 ; 2 uses
  %i.cyp = icmp eq i32 %i.cyk, %i.cyo
  br i1 %i.cyp, label %_RNvNtCs8jFhWeO2DFb_9typst_pdf4tags12handle_start.exit, label %bb.xk

bb.xk:                                            ; preds = %bb.xj
  call void @llvm.experimental.noalias.scope.decl(metadata !16419)
  %i.cyq = load i64, ptr %i.ir, align 8, !alias.scope !16420, !noundef !10
  %i.cyr = load i64, ptr %i.is, align 8, !alias.scope !16420, !noundef !10 ; 3 uses
  %i.cys = icmp ult i64 %i.cyr, %i.cyq
  br i1 %i.cys, label %bb.xl, label %bb.xm

bb.xl:                                            ; preds = %bb.xk
  %i.cyt = load ptr, ptr %i.it, align 8, !alias.scope !16420, !nonnull !10, !noundef !10
  %i.cyu = getelementptr inbounds nuw [8 x i8], ptr %i.cyt, i64 %i.cyr ; 2 uses
  %.sroa.0.0.copyload.i.i.i173 = load i32, ptr %i.cyu, align 4, !noalias !16421
  %i.cyv = zext i32 %.sroa.0.0.copyload.i.i.i173 to i64
  %i.cyw = icmp eq i64 %i.cyl, %i.cyv
  br i1 %i.cyw, label %.invoke2388, label %bb.xm

bb.xm:                                            ; preds = %bb.xl, %bb.xk
  %i.cyx = invoke fastcc noundef i32 @_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree11close_group(ptr noalias nofree noundef nonnull align 8 dereferenceable(672) %5, ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %4, i32 noundef %i.cyk)
          to label %_RNvNtCs8jFhWeO2DFb_9typst_pdf4tags12handle_start.exit unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext3pop.exit: ; preds = %._crit_edge
  %i.cyy = add nsw i64 %i.pk, -1                  ; 3 uses
  store i64 %i.cyy, ptr %i.fg, align 8, !alias.scope !16422
  %i.cyz = load i64, ptr %i.fj, align 8, !range !17, !alias.scope !16422, !noundef !10 ; 2 uses
  %i.cza = icmp samesign ult i64 %i.cyy, %i.cyz
  call void @llvm.assume(i1 %i.cza)
  %i.czb = icmp ult i64 %i.pk, 82351536043346214
  call void @llvm.assume(i1 %i.czb)
  %i.czc = icmp eq i64 %i.cyy, 0
  br i1 %i.czc, label %_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext3pop.exit180, label %bb.xn

bb.xn:                                            ; preds = %_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext3pop.exit
  %i.czd = add nsw i64 %i.pk, -2                  ; 2 uses
  store i64 %i.czd, ptr %i.fg, align 8, !alias.scope !16423
  %i.cze = icmp samesign ult i64 %i.czd, %i.cyz
  call void @llvm.assume(i1 %i.cze)
  br label %_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext3pop.exit180

_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext3pop.exit180: ; preds = %._crit_edge, %bb.xn, %_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext3pop.exit
  %i.czf = load ptr, ptr %i.fb, align 8, !alias.scope !16424, !noundef !10
  %i.czg = icmp eq ptr %i.czf, null
  br i1 %i.czg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs8jFhWeO2DFb_9typst_pdf.exit182, label %bb.xo

bb.xo:                                            ; preds = %_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext3pop.exit180
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fb)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs8jFhWeO2DFb_9typst_pdf.exit182 unwind label %bb.b

bb.xp:                                            ; preds = %bb.xq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs8jFhWeO2DFb_9typst_pdf.exit
  resume { ptr, i32 } %.pn61

bb.xq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs8jFhWeO2DFb_9typst_pdf.exit
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(24) %3) #44
          to label %bb.xp unwind label %bb.z
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs8jFhWeO2DFb_9typst_pdf7convert13convert_error(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(672) %1, i1 noundef zeroext %2, i8 noundef range(i8 -1, 11) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i8 noundef range(i8 0, 5) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 44 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [15 x i8], align 8                ; 6 uses
  %.sroa.72228 = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.72220 = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.72212 = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.72204 = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.72196 = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.72188 = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.72180 = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.72172 = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.72164 = alloca [7 x i8], align 8         ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.72156 = alloca [7 x i8], align 8         ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.72148 = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.72140 = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.72132 = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.72124 = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.72116 = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.72108 = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.72100 = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.72092 = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.72084 = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.72076 = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.72068 = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.72060 = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.72052 = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.72044 = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.72036 = alloca [7 x i8], align 8         ; 4 uses
  %.sroa.0104 = alloca [15 x i8], align 8         ; 11 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 7 uses
  %i.z = alloca [16 x i8], align 8                ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [2 x i8], align 1                ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 4 uses
  %i.af = alloca [72 x i8], align 8               ; 12 uses
  %i.ag = alloca [72 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [16 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 4 uses
  %i.al = alloca [72 x i8], align 8               ; 12 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [16 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 4 uses
  %i.ar = alloca [72 x i8], align 8               ; 12 uses
  %i.as = alloca [40 x i8], align 8               ; 9 uses
  %i.at = alloca [16 x i8], align 8               ; 8 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [16 x i8], align 8               ; 7 uses
  %i.ax = alloca [32 x i8], align 8               ; 7 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [16 x i8], align 8               ; 7 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [16 x i8], align 8               ; 7 uses
  %i.bd = alloca [16 x i8], align 8               ; 8 uses
  %i.be = alloca [16 x i8], align 8               ; 7 uses
  %i.bf = alloca [16 x i8], align 8               ; 5 uses
  %i.bg = alloca [72 x i8], align 8               ; 12 uses
  %i.bh = alloca [16 x i8], align 8               ; 8 uses
  %i.bi = alloca [16 x i8], align 8               ; 5 uses
  %i.bj = alloca [16 x i8], align 8               ; 7 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
  %i.bl = alloca [72 x i8], align 8               ; 12 uses
  %i.bm = alloca [16 x i8], align 8               ; 8 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [16 x i8], align 8               ; 7 uses
  %i.bp = alloca [16 x i8], align 8               ; 5 uses
  %i.bq = alloca [72 x i8], align 8               ; 12 uses
  %i.br = alloca [16 x i8], align 8               ; 8 uses
  %i.bs = alloca [16 x i8], align 8               ; 5 uses
  %i.bt = alloca [16 x i8], align 8               ; 7 uses
  %i.bu = alloca [16 x i8], align 8               ; 5 uses
  %i.bv = alloca [72 x i8], align 8               ; 12 uses
  %i.bw = alloca [16 x i8], align 8               ; 8 uses
  %i.bx = alloca [16 x i8], align 8               ; 5 uses
  %i.by = alloca [16 x i8], align 8               ; 7 uses
  %i.bz = alloca [16 x i8], align 8               ; 5 uses
  %i.ca = alloca [72 x i8], align 8               ; 12 uses
  %i.cb = alloca [16 x i8], align 8               ; 8 uses
  %i.cc = alloca [16 x i8], align 8               ; 5 uses
  %i.cd = alloca [16 x i8], align 8               ; 7 uses
  %i.ce = alloca [16 x i8], align 8               ; 5 uses
  %i.cf = alloca [72 x i8], align 8               ; 12 uses
  %i.cg = alloca [16 x i8], align 8               ; 8 uses
  %i.ch = alloca [16 x i8], align 8               ; 5 uses
  %i.ci = alloca [16 x i8], align 8               ; 7 uses
  %i.cj = alloca [16 x i8], align 8               ; 5 uses
  %i.ck = alloca [72 x i8], align 8               ; 12 uses
  %i.cl = alloca [16 x i8], align 8               ; 8 uses
  %i.cm = alloca [16 x i8], align 8               ; 5 uses
  %i.cn = alloca [16 x i8], align 8               ; 7 uses
  %i.co = alloca [16 x i8], align 8               ; 5 uses
  %i.cp = alloca [72 x i8], align 8               ; 12 uses
  %i.cq = alloca [16 x i8], align 8               ; 8 uses
  %i.cr = alloca [16 x i8], align 8               ; 5 uses
  %i.cs = alloca [16 x i8], align 8               ; 7 uses
  %i.ct = alloca [16 x i8], align 8               ; 5 uses
  %i.cu = alloca [72 x i8], align 8               ; 12 uses
  %i.cv = alloca [16 x i8], align 8               ; 5 uses
  %i.cw = alloca [16 x i8], align 8               ; 7 uses
  %i.cx = alloca [16 x i8], align 8               ; 4 uses
  %i.cy = alloca [16 x i8], align 8               ; 5 uses
  %i.cz = alloca [16 x i8], align 8               ; 7 uses
  %i.da = alloca [16 x i8], align 8               ; 4 uses
  %i.db = alloca [16 x i8], align 8               ; 7 uses
  %i.dc = alloca [16 x i8], align 8               ; 7 uses
end_hunk_1
