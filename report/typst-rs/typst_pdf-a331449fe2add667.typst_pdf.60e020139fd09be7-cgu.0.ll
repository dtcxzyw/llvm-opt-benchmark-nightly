Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7940
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RINvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB3_5Color8mix_iterINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtB3_13WeightedColorKj2_EAB1U_B2f_ECs8jFhWeO2DFb_9typst_pdf:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i, %_RNvXs9_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedStringINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCsakL8LGkl72C_4ecow6string9EcoStringE4fromCs8jFhWeO2DFb_9typst_pdf.exit320, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit340, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !2527)
  %i.tr = load i64, ptr %i.ad, align 8, !range !30, !alias.scope !2527, !noundef !10 ; 3 uses
  %i.ts = icmp eq i64 %i.tr, -1
  br i1 %i.ts, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.gd

bb.gd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2528)
  call void @llvm.experimental.noalias.scope.decl(metadata !2529)
  %i.tt = icmp eq i64 %i.tr, 2
  br i1 %i.tt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.experimental.noalias.scope.decl(metadata !2530)
  %i.tu = icmp eq i64 %i.tr, 0
  br i1 %i.tu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.experimental.noalias.scope.decl(metadata !2531)
  %.val.i.i.i.i.i = load ptr, ptr %i.ge, align 8, !alias.scope !2532 ; 4 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ad, i64 23
  %.val1.i.i.i.i.i = load i8, ptr %i.tv, align 1, !alias.scope !2532, !noundef !10
  %.not.i.i.i.i.i.i.i341 = icmp sgt i8 %.val1.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i341, label %bb.gg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, inttoptr (i64 16 to ptr)
  %i.tw = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i342

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i342: ; preds = %bb.gg
  %i.tx = atomicrmw add ptr %i.tw, i64 -1 release, align 8, !noalias !2532
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.tx, 1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i343, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i343: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i342
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2532
  %i.ty = getelementptr i8, ptr %.val.i.i.i.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i.i344 = load i64, ptr %i.ty, align 8, !noalias !2532, !noundef !10 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i.i345 = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i344, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i.i345, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i346, label %.noexc347, !prof !16

.noexc347:                                        ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i343
  call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i346: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i343
  %i.tz = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i.i344, 16
  %i.ua = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.tw, ptr %i.ua, align 8, !noalias !2532
  store i64 8, ptr %i.a, align 8, !noalias !2532
  %i.ub = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.tz, ptr %i.ub, align 8, !noalias !2532
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2532
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit

.thread:                                          ; preds = %bb.bt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit264, %bb.bu, %.body
  %.pn235396 = phi { ptr, i32 } [ %.pn235, %.body ], [ %.pn233, %bb.bu ], [ %.pn233, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit264 ], [ %.pn233, %bb.bt ]
  %.sroa.0129.2395 = phi i1 [ %.sroa.0129.2, %.body ], [ true, %bb.bu ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit264 ], [ true, %bb.bt ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ab) #44
          to label %.body286 unwind label %bb.dg

bb.gh:                                            ; preds = %.body286
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ad) #44
          to label %.thread427 unwind label %bb.dg

.thread427:                                       ; preds = %.body286, %bb.gh, %.loopexit447
  %.pn239430 = phi { ptr, i32 } [ %eh.lpad-body251, %.loopexit447 ], [ %.pn237, %.body286 ], [ %.pn237, %bb.gh ]
  resume { ptr, i32 } %.pn239430

.loopexit447:                                     ; preds = %.thread730, %bb.o, %bb.n, %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.bn, %bb.bm, %.thread.i, %bb.am
  %eh.lpad-body251 = phi { ptr, i32 } [ %.pn42.pn114.i, %.thread.i ], [ %i.bi, %.thread730 ], [ %.pn42.i, %bb.am ], [ %.pn42.pn114.i, %bb.bn ], [ %.pn42.pn114.i, %bb.bm ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bj, %bb.n ], [ %i.bj, %bb.o ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorj2_ECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(64) %1) #44
          to label %.thread427 unwind label %bb.dg
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic10with_hintsINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB1k_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 10 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2560)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2561
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %2, i64 40, i1 false), !alias.scope !2562, !noalias !2560
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i = load i64, ptr %i.d, align 8, !noalias !2561, !noundef !10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val4.i = load i64, ptr %i.e, align 8, !noalias !2561, !noundef !10 ; 2 uses
  %.not.i = icmp eq i64 %.val4.i, %.val.i
  br i1 %.not.i, label %bb.c, label %bb.f

bb.b:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENvMs2_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB23_7SpannedB1x_NtB23_8DiagSpanE8detachedENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.p, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.ba, %bb.p ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(72) %1) #44
          to label %bb.s unwind label %bb.r

bb.c:                                             ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2561
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %2, i64 40, i1 false), !noalias !2560
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !2563, !noalias !2561, !noundef !10 ; 5 uses
  %.promoted.i = load i64, ptr %i.g, align 8, !alias.scope !2563, !noalias !2561 ; 4 uses
  %i.j = icmp ult i64 %.promoted.i, %i.i
  br i1 %i.j, label %.lr.ph.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENvMs2_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB23_7SpannedB1x_NtB23_8DiagSpanE8detachedENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = load i8, ptr %i.k, align 8, !range !11, !alias.scope !2563, !noalias !2564, !noundef !10
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = load ptr, ptr %i.a, align 8, !alias.scope !2563, !noalias !2564, !nonnull !10, !noundef !10 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !2561
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  br i1 %i.m, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %.pre.i = load i64, ptr %i.q, align 8, !alias.scope !2565
  %.val.i.us.pre.i = load ptr, ptr %i.c, align 8, !alias.scope !2565
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.e, %.lr.ph.split.us.preheader.i
  %.val.i.us.i = phi ptr [ %i.y, %bb.e ], [ %.val.i.us.pre.i, %.lr.ph.split.us.preheader.i ] ; 2 uses
  %i.r = phi i64 [ %i.ab, %bb.e ], [ %.pre.i, %.lr.ph.split.us.preheader.i ]
  %i.s = phi i64 [ %i.t, %bb.e ], [ %.promoted.i, %.lr.ph.split.us.preheader.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2567)
  %i.t = add nuw i64 %i.s, 1                      ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.s ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.us.i = load ptr, ptr %i.u, align 8, !noalias !2568 ; 2 uses
  %.sroa.5.0..sroa_idx2.i.i.i.us.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5.0.copyload3.i.i.i.us.i = load i64, ptr %.sroa.5.0..sroa_idx2.i.i.i.us.i, align 8, !noalias !2568 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2569)
  %.not.i.i.us.i = icmp eq ptr %.val.i.us.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.us.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.i
  %i.v = getelementptr i8, ptr %.val.i.us.i, i64 -8
  %.val.i.i.us.i = load i64, ptr %i.v, align 8, !noalias !2570, !noundef !10
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i: ; preds = %bb.d, %.lr.ph.split.us.i
  %.sroa.02.0.i.i.us.i = phi i64 [ %.val.i.i.us.i, %bb.d ], [ 0, %.lr.ph.split.us.i ]
  %i.w = icmp eq i64 %i.r, %.sroa.02.0.i.i.us.i
  %i.x = zext i1 %i.w to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.x)
          to label %bb.e unwind label %.split.us.i, !noalias !2571, !inline_history !34

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i
  %i.y = load ptr, ptr %i.c, align 8, !alias.scope !2565, !nonnull !10, !noundef !10 ; 2 uses
  %i.z = load i64, ptr %i.q, align 8, !alias.scope !2565, !noundef !10 ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.z ; 4 uses
  store i64 1, ptr %i.aa, align 8, !noalias !2572
  %.sroa.412.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 0, ptr %.sroa.412.0..sroa_idx.us.i, align 8, !noalias !2572
  %.sroa.513.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %.sroa.0.0.copyload1.i.i.i.us.i, ptr %.sroa.513.0..sroa_idx.us.i, align 8, !noalias !2572
  %.sroa.714.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 %.sroa.5.0.copyload3.i.i.i.us.i, ptr %.sroa.714.0..sroa_idx.us.i, align 8, !noalias !2572
  %i.ab = add i64 %i.z, 1                         ; 2 uses
  store i64 %i.ab, ptr %i.q, align 8, !alias.scope !2565
  %exitcond46.not.i = icmp eq i64 %i.t, %i.i
  br i1 %exitcond46.not.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENvMs2_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB23_7SpannedB1x_NtB23_8DiagSpanE8detachedENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i, label %.lr.ph.split.us.i

.split.us.i:                                      ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.ad = sub i64 %.val4.i, %.val.i
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.ad)
          to label %bb.c unwind label %bb.p, !noalias !2573

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.n
  %i.ae = phi i64 [ %i.af, %bb.n ], [ %.promoted.i, %.lr.ph.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2567)
  %i.af = add nuw i64 %i.ae, 1                    ; 4 uses
  %i.ag = icmp ult i64 %i.ae, %i.p
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.ae ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2576)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 15
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !2577, !noalias !2578, !noundef !10
  %.not.i.i.i.i.i.i.i = icmp slt i8 %i.aj, 0
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !2579, !noalias !2578 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.val10.i.i.i.i.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !2579, !noalias !2578 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.i
  %i.al = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i, i64 -16
  %i.am = atomicrmw add ptr %i.al, i64 1 monotonic, align 8, !noalias !2580
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.h, label %bb.j, !prof !13

bb.h:                                             ; preds = %bb.g
  store i64 %i.af, ptr %i.g, align 8, !noalias !2561
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull %.val.i.i.i.i.i.i.i) #39
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ao, %bb.i ], [ %.us-phi31.i, %bb.k ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %.body unwind label %bb.o, !noalias !2561

bb.j:                                             ; preds = %bb.g, %.lr.ph.split.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2569)
  %i.ap = load i64, ptr %i.q, align 8, !alias.scope !2565, !noundef !10
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !2565, !nonnull !10, !noundef !10 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %bb.l

.split.i:                                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.split.i, %.split.us.i
  %.us-phi.i = phi i64 [ %i.af, %.split.i ], [ %i.t, %.split.us.i ]
  %.us-phi29.i = phi i64 [ %.val10.i.i.i.i.i.i.i, %.split.i ], [ %.sroa.5.0.copyload3.i.i.i.us.i, %.split.us.i ]
  %.us-phi30.i = phi ptr [ %.val.i.i.i.i.i.i.i, %.split.i ], [ %.sroa.0.0.copyload1.i.i.i.us.i, %.split.us.i ]
  %.us-phi31.i = phi { ptr, i32 } [ %i.aq, %.split.i ], [ %i.ac, %.split.us.i ]
  store i64 %.us-phi.i, ptr %i.g, align 8, !noalias !2561
  %.sroa.714.31.extract.shift.i = lshr i64 %.us-phi29.i, 56
  %.sroa.714.31.extract.trunc.i = trunc nuw i64 %.sroa.714.31.extract.shift.i to i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs8jFhWeO2DFb_9typst_pdf(ptr %.us-phi30.i, i8 %.sroa.714.31.extract.trunc.i) #44
          to label %.body.i unwind label %bb.m, !noalias !2570, !inline_history !34

bb.l:                                             ; preds = %bb.j
  %i.ar = getelementptr i8, ptr %.val.i.i, i64 -8
  %.val.i.i.i = load i64, ptr %i.ar, align 8, !noalias !2570, !noundef !10
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %bb.l, %bb.j
  %.sroa.02.0.i.i.i = phi i64 [ %.val.i.i.i, %bb.l ], [ 0, %bb.j ]
  %i.as = icmp eq i64 %i.ap, %.sroa.02.0.i.i.i
  %i.at = zext i1 %i.as to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.at)
          to label %bb.n unwind label %.split.i, !noalias !2571, !inline_history !34

bb.m:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !2570, !inline_history !34
  unreachable

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENvMs2_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB23_7SpannedB1x_NtB23_8DiagSpanE8detachedENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.n, %bb.e, %bb.c
  %.lcssa.i = phi i64 [ %.promoted.i, %bb.c ], [ %i.i, %bb.e ], [ %i.i, %bb.n ]
  store i64 %.lcssa.i, ptr %i.g, align 8, !noalias !2561
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %bb.q unwind label %bb.b

bb.n:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %i.av = load ptr, ptr %i.c, align 8, !alias.scope !2565, !nonnull !10, !noundef !10
  %i.aw = load i64, ptr %i.q, align 8, !alias.scope !2565, !noundef !10 ; 2 uses
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.aw ; 4 uses
  store i64 1, ptr %i.ax, align 8, !noalias !2572
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 0, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !2572
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %.val.i.i.i.i.i.i.i, ptr %.sroa.513.0..sroa_idx.i, align 8, !noalias !2572
  %.sroa.714.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i64 %.val10.i.i.i.i.i.i.i, ptr %.sroa.714.0..sroa_idx.i, align 8, !noalias !2572
  %i.ay = add i64 %i.aw, 1
  store i64 %i.ay, ptr %i.q, align 8, !alias.scope !2565
  %exitcond.not.i = icmp eq i64 %i.af, %i.i
  br i1 %exitcond.not.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENvMs2_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB23_7SpannedB1x_NtB23_8DiagSpanE8detachedENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i, label %.lr.ph.split.i

bb.o:                                             ; preds = %bb.p, %.body.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !2561
  unreachable

bb.p:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.body unwind label %bb.o, !noalias !2561

bb.q:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENvMs2_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB23_7SpannedB1x_NtB23_8DiagSpanE8detachedENtNtNtB9_6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2561
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  ret void

bb.r:                                             ; preds = %.body
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.s:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs8jFhWeO2DFb_9typst_pdf(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) %1)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = extractvalue { i64, i64 } %i.a, 1
  %i.c = extractvalue { i64, i64 } %i.a, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.d, align 8
  store i64 %i.c, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 16 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.j, align 8
  ret void

bb.c:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2) #44
          to label %bb.d unwind label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic9with_hintNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs8jFhWeO2DFb_9typst_pdf(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.02.0.copyload = load ptr, ptr %2, align 8, !alias.scope !2590 ; 2 uses
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 15
  %.sroa.54.0.copyload = load i8, ptr %.sroa.54.0..sroa_idx, align 1, !alias.scope !2590 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2591)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !2591, !noundef !10
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !2591, !nonnull !10, !noundef !10 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i, label %bb.c

.body:                                            ; preds = %bb.b
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(72) %1) #44
          to label %bb.g unwind label %bb.f

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs8jFhWeO2DFb_9typst_pdf(ptr %.sroa.02.0.copyload, i8 %.sroa.54.0.copyload) #44
          to label %.body unwind label %bb.d, !noalias !2592, !inline_history !34

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.val.i, i64 -8
  %.val.i.i = load i64, ptr %i.e, align 8, !noalias !2592, !noundef !10
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.c, %bb.a
  %.sroa.02.0.i.i = phi i64 [ %.val.i.i, %bb.c ], [ 0, %bb.a ]
  %i.f = icmp eq i64 %i.c, %.sroa.02.0.i.i
  %i.g = zext i1 %i.f to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.g)
          to label %bb.e unwind label %bb.b, !noalias !2593, !inline_history !34

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !2592, !inline_history !34
  unreachable

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.a, align 8, !alias.scope !2591, !nonnull !10, !noundef !10
  %i.j = load i64, ptr %i.b, align 8, !alias.scope !2591, !noundef !10 ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.j ; 5 uses
  store i64 1, ptr %i.k, align 8, !noalias !2591
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !2591
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %.sroa.02.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2591
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.43.0..sroa_idx, i64 7, i1 false)
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 31
  store i8 %.sroa.54.0.copyload, ptr %.sroa.71.0..sroa_idx, align 1, !noalias !2591
  %i.l = add i64 %i.j, 1
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !2591
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  ret void

bb.f:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef align 8 ptr @_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtCsiSzwKAiqS6b_8smallvec8SmallVecAINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB2B_6groups5GroupEj4_ENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_EB2D_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i128 %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !10
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i128 %.0.val to i64
  %i.e = mul i64 %i.d, -1065810590584100411
  %i.f = lshr i128 %.0.val, 64
  %i.g = trunc nuw i128 %i.f to i64
  %i.h = add i64 %i.e, %i.g
  %i.i = mul i64 %i.h, -1065810590584100411       ; 2 uses
  %i.j = tail call noundef i64 @llvm.fshl.i64(i64 %i.i, i64 %i.i, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  %i.k = lshr i64 %i.j, 57
  %i.l = trunc nuw nsw i64 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !2606, !noundef !10 ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !alias.scope !2606, !nonnull !10, !noundef !10 ; 2 uses
  %i.p = insertelement <16 x i8> poison, i8 %i.l, i64 0
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ah, %bb.e ]
  %.pn.i = phi i64 [ %i.j, %bb.b ], [ %i.ai, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.n          ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i24.i = load <16 x i8>, ptr %i.r, align 1, !noalias !2607 ; 2 uses
  %i.s = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, %i.q
  %i.t = bitcast <16 x i1> %i.s to i16            ; 2 uses
  %.not.i.not30.i = icmp eq i16 %i.t, 0
  br i1 %.not.i.not30.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i = phi i16 [ %i.ag, %bb.d ], [ %i.t, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = add i64 %.sroa.01.0.i.i, %i.v
  %i.x = and i64 %i.w, %i.n
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [48 x i8], ptr %i.o, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -48
  %.val2.i.i = load i128, ptr %i.aa, align 16, !noalias !2608, !noundef !10
  %i.ab = icmp eq i128 %.0.val, %.val2.i.i
  br i1 %i.ab, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtCsiSzwKAiqS6b_8smallvec8SmallVecAINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB2D_6groups5GroupEj4_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1W_E0EB2F_.exit, label %bb.d, !prof !16

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
end_hunk_0
begin_hunk_1_@_RINvNvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB5_7Content8traverse10walk_valueNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree5build19progress_tree_start0uEB1F_:bb.a
  %i.av = icmp samesign ugt i64 %i.as, 1
  %i.aw = select i1 %i.av, i64 %i.au, i64 28
  switch i64 %i.aw, label %bb.m [
    i64 0, label %bb.n
    i64 1, label %bb.o
    i64 2, label %bb.p
    i64 3, label %bb.q
    i64 4, label %bb.r
    i64 5, label %bb.s
    i64 6, label %bb.t
    i64 7, label %bb.u
    i64 8, label %bb.v
    i64 9, label %bb.w
    i64 10, label %bb.x
    i64 11, label %bb.y
    i64 12, label %bb.af
    i64 13, label %bb.ag
    i64 14, label %bb.ah
    i64 15, label %bb.ak
    i64 16, label %bb.al
    i64 17, label %bb.am
    i64 18, label %bb.an
    i64 19, label %bb.ao
    i64 20, label %bb.ap
    i64 21, label %bb.aq
    i64 22, label %bb.ar
    i64 23, label %bb.au
    i64 24, label %bb.ax
    i64 25, label %bb.ay
    i64 26, label %bb.bf
    i64 27, label %bb.bi
    i64 28, label %bb.bj
    i64 29, label %bb.bn
  ]

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  store i64 2, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.o:                                             ; preds = %bb.l
  store i64 3, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.p:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ay = load i8, ptr %i.ax, align 8, !range !11, !alias.scope !8848, !noundef !10
  store i8 %i.ay, ptr %i.aj, align 8, !alias.scope !8847
  store i64 4, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.q:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !8848, !noundef !10
  store i64 %i.ba, ptr %i.aj, align 8, !alias.scope !8847
  store i64 5, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.r:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bc = load double, ptr %i.bb, align 8, !alias.scope !8848, !noundef !10
  store double %i.bc, ptr %i.aj, align 8, !alias.scope !8847
  store i64 6, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.s:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.be = load <2 x double>, ptr %i.bd, align 8, !alias.scope !8848
  store <2 x double> %i.be, ptr %i.aj, align 8, !alias.scope !8847
  store i64 7, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.t:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bg = load double, ptr %i.bf, align 8, !alias.scope !8848, !noundef !10
  store double %i.bg, ptr %i.aj, align 8, !alias.scope !8847
  store i64 8, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.u:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bi = load double, ptr %i.bh, align 8, !alias.scope !8848, !noundef !10
  store double %i.bi, ptr %i.aj, align 8, !alias.scope !8847
  store i64 9, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.v:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bl = load double, ptr %i.bk, align 8, !alias.scope !8848, !noundef !10
  %i.bm = load <2 x double>, ptr %i.bj, align 8, !alias.scope !8848
  store <2 x double> %i.bm, ptr %i.aj, align 8, !alias.scope !8847
  store double %i.bl, ptr %.sroa.6.0..sroa_idx62.i, align 8, !alias.scope !8847
  store i64 10, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.w:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bo = load double, ptr %i.bn, align 8, !alias.scope !8848, !noundef !10
  store double %i.bo, ptr %i.aj, align 8, !alias.scope !8847
  store i64 11, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.x:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !range !14, !alias.scope !8848, !noundef !10
  %i.br = trunc nuw i32 %i.bq to i1
  br i1 %i.br, label %bb.bo, label %bb.bp

bb.y:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val.i = load i64, ptr %i.bs, align 8, !range !29, !alias.scope !8848, !noundef !10 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.val42.i = load ptr, ptr %i.bt, align 8, !alias.scope !8848, !nonnull !10, !noundef !10 ; 2 uses
  %i.bu = atomicrmw add ptr %.val42.i, i64 1 monotonic, align 8, !noalias !8849
  %i.bv = icmp slt i64 %i.bu, 0                   ; 3 uses
  switch i64 %.val.i, label %default.unreachable [
    i64 0, label %bb.z
    i64 1, label %bb.aa
    i64 2, label %bb.ab
  ]

default.unreachable:                              ; preds = %bb.ay, %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  br i1 %i.bv, label %bb.ac, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.aa:                                            ; preds = %bb.y
  br i1 %i.bv, label %bb.ad, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.ab:                                            ; preds = %bb.y
  br i1 %i.bv, label %bb.ae, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.ac:                                            ; preds = %bb.z
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.trap()
  unreachable

_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %bb.ab, %bb.aa, %bb.z
  store i64 %.val.i, ptr %i.aj, align 8, !alias.scope !8847
  store ptr %.val42.i, ptr %i.ak, align 8, !alias.scope !8847
  store i64 13, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.af:                                            ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !8848, !nonnull !10, !noundef !10 ; 2 uses
  %i.by = atomicrmw add ptr %i.bx, i64 1 monotonic, align 8, !noalias !8849
  %i.bz = icmp slt i64 %i.by, 0
  br i1 %i.bz, label %bb.bt, label %bb.bs

bb.ag:                                            ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !range !29, !alias.scope !8848, !noundef !10 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.cd = icmp eq i64 %i.cb, 2
  br i1 %i.cd, label %bb.bu, label %.sink.split

bb.ah:                                            ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val43.i = load ptr, ptr %i.ce, align 8, !alias.scope !8848, !nonnull !10, !noundef !10 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.val44.i = load i64, ptr %i.cf, align 8, !alias.scope !8848
  %.not.i.i.i = icmp eq ptr %.val43.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cg = getelementptr inbounds i8, ptr %.val43.i, i64 -16
  %i.ch = atomicrmw add ptr %i.cg, i64 1 monotonic, align 8, !noalias !8849
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %bb.aj, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, !prof !13

bb.aj:                                            ; preds = %bb.ai
  store i64 %i.an, ptr %i.ad, align 8
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowmECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull %.val43.i) #39
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.aj
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.ai, %bb.ah
  store ptr %.val43.i, ptr %i.aj, align 8, !alias.scope !8847
  store i64 %.val44.i, ptr %i.ak, align 8, !alias.scope !8847
  store i64 16, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.ak:                                            ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ar, i64 23
  %i.cl = load i8, ptr %i.ck, align 1, !alias.scope !8848, !noundef !10
  %.not.i = icmp slt i8 %i.cl, 0
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.val53.i = load ptr, ptr %i.cj, align 8, !alias.scope !8848 ; 4 uses
  %.val54.i = load i64, ptr %i.cm, align 8, !alias.scope !8848
  %.not.i.i59.i = icmp eq ptr %.val53.i, inttoptr (i64 16 to ptr)
  %or.cond24 = select i1 %.not.i, i1 true, i1 %.not.i.i59.i
  br i1 %or.cond24, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, label %bb.bx

bb.al:                                            ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !8848, !nonnull !10, !noundef !10
  %i.cp = atomicrmw add ptr %i.co, i64 1 monotonic, align 8, !noalias !8849
  %i.cq = icmp slt i64 %i.cp, 0
  br i1 %i.cq, label %bb.bz, label %bb.by

bb.am:                                            ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !range !25, !alias.scope !8848, !noundef !10
  store i64 %i.cs, ptr %i.aj, align 8, !alias.scope !8847
  store i64 19, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.an:                                            ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.ct, i64 12, i1 false), !alias.scope !8849
  store i64 20, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.ao:                                            ; preds = %bb.l
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cu, i64 16, i1 false), !alias.scope !8849
  store i64 21, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.ap:                                            ; preds = %bb.l
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cv, i64 16, i1 false), !alias.scope !8849
  store i64 22, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.aq:                                            ; preds = %bb.l
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cw)
          to label %.noexc6 unwind label %.loopexit

.noexc6:                                          ; preds = %bb.aq
  store i64 23, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.ar:                                            ; preds = %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val45.i = load ptr, ptr %i.cx, align 8, !alias.scope !8848, !nonnull !10, !noundef !10 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.val46.i = load i64, ptr %i.cy, align 8, !alias.scope !8848 ; 2 uses
  %.not.i.i55.i = icmp eq ptr %.val45.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i55.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cz = getelementptr inbounds i8, ptr %.val45.i, i64 -16
  %i.da = atomicrmw add ptr %i.cz, i64 1 monotonic, align 8, !noalias !8849
  %i.db = icmp slt i64 %i.da, 0
  br i1 %i.db, label %bb.at, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, !prof !13

bb.at:                                            ; preds = %bb.as
  store i64 %i.an, ptr %i.ad, align 8
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull %.val45.i, i64 noundef %.val46.i) #39
          to label %.noexc7 unwind label %.loopexit.split-lp

.noexc7:                                          ; preds = %bb.at
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.as, %bb.ar
  store ptr %.val45.i, ptr %i.aj, align 8, !alias.scope !8847
  store i64 %.val46.i, ptr %i.ak, align 8, !alias.scope !8847
  store i64 24, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.au:                                            ; preds = %bb.l
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val47.i = load ptr, ptr %i.dc, align 8, !alias.scope !8848, !nonnull !10, !noundef !10 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.val48.i = load i64, ptr %i.dd, align 8, !alias.scope !8848 ; 2 uses
  %.not.i.i56.i = icmp eq ptr %.val47.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i56.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.de = getelementptr inbounds i8, ptr %.val47.i, i64 -16
  %i.df = atomicrmw add ptr %i.de, i64 1 monotonic, align 8, !noalias !8849
  %i.dg = icmp slt i64 %i.df, 0
  br i1 %i.dg, label %bb.aw, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, !prof !13

bb.aw:                                            ; preds = %bb.av
  store i64 %i.an, ptr %i.ad, align 8
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull %.val47.i, i64 noundef %.val48.i) #39
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %bb.aw
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.av, %bb.au
  store ptr %.val47.i, ptr %i.aj, align 8, !alias.scope !8847
  store i64 %.val48.i, ptr %i.ak, align 8, !alias.scope !8847
  store i64 25, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.ax:                                            ; preds = %bb.l
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !8848, !nonnull !10, !noundef !10 ; 2 uses
  %i.dj = atomicrmw add ptr %i.di, i64 1 monotonic, align 8, !noalias !8849
  %i.dk = icmp slt i64 %i.dj, 0
  br i1 %i.dk, label %bb.cb, label %bb.ca

bb.ay:                                            ; preds = %bb.l
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val49.i = load i64, ptr %i.dl, align 8, !range !46, !alias.scope !8848, !noundef !10 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.val50.i = load ptr, ptr %i.dm, align 8, !alias.scope !8848 ; 8 uses
  switch i64 %.val49.i, label %default.unreachable [
    i64 0, label %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i
    i64 1, label %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i
    i64 2, label %bb.az
    i64 3, label %bb.ba
    i64 4, label %bb.bb
  ]

bb.az:                                            ; preds = %bb.ay
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val50.i) ]
  %i.dn = atomicrmw add ptr %.val50.i, i64 1 monotonic, align 8, !noalias !8849
  %i.do = icmp slt i64 %i.dn, 0
  br i1 %i.do, label %bb.bc, label %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val50.i) ]
  %i.dp = atomicrmw add ptr %.val50.i, i64 1 monotonic, align 8, !noalias !8849
  %i.dq = icmp slt i64 %i.dp, 0
  br i1 %i.dq, label %bb.bd, label %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val50.i) ]
  %i.dr = atomicrmw add ptr %.val50.i, i64 1 monotonic, align 8, !noalias !8849
  %i.ds = icmp slt i64 %i.dr, 0
  br i1 %i.ds, label %bb.be, label %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.bc:                                            ; preds = %bb.az
  call void @llvm.trap()
  unreachable

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.trap()
  unreachable

bb.be:                                            ; preds = %bb.bb
  call void @llvm.trap()
  unreachable

_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ay
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val50.i) ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.du = load i64, ptr %i.dt, align 8, !range !25, !alias.scope !8848, !noundef !10
  store i64 %.val49.i, ptr %i.aj, align 8, !alias.scope !8847
  store ptr %.val50.i, ptr %i.ak, align 8, !alias.scope !8847
  store i64 %i.du, ptr %.sroa.6.0..sroa_idx62.i, align 8, !alias.scope !8847
  store i64 27, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.bf:                                            ; preds = %bb.l
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !range !25, !alias.scope !8848, !noundef !10
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.val51.i = load ptr, ptr %i.dx, align 8, !alias.scope !8848, !nonnull !10, !noundef !10 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.val52.i = load i64, ptr %i.dy, align 8, !alias.scope !8848 ; 2 uses
  %.not.i.i58.i = icmp eq ptr %.val51.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i58.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dz = getelementptr inbounds i8, ptr %.val51.i, i64 -16
  %i.ea = atomicrmw add ptr %i.dz, i64 1 monotonic, align 8, !noalias !8849
  %i.eb = icmp slt i64 %i.ea, 0
  br i1 %i.eb, label %bb.bh, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, !prof !13

bb.bh:                                            ; preds = %bb.bg
  store i64 %i.an, ptr %i.ad, align 8
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull %.val51.i, i64 noundef %.val52.i) #39
          to label %.noexc9 unwind label %.loopexit.split-lp

.noexc9:                                          ; preds = %bb.bh
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.bg, %bb.bf
  store i64 %i.dw, ptr %i.aj, align 8, !alias.scope !8847
  store ptr %.val51.i, ptr %i.ak, align 8, !alias.scope !8847
  store i64 %.val52.i, ptr %.sroa.6.0..sroa_idx62.i, align 8, !alias.scope !8847
  store i64 28, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.bi:                                            ; preds = %bb.l
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !8848, !nonnull !10, !align !21, !noundef !10
  store ptr %i.ed, ptr %i.aj, align 8, !alias.scope !8847
  store i64 29, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.bj:                                            ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !8850)
  %i.ee = trunc nuw i64 %i.as to i1
  br i1 %i.ee, label %bb.bk, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ar, i64 23
  %i.eh = load i8, ptr %i.eg, align 1, !alias.scope !8851, !noundef !10
  %.not.i.i = icmp slt i8 %i.eh, 0
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.val.i.i = load ptr, ptr %i.ef, align 8, !alias.scope !8851 ; 5 uses
  %.val23.i.i = load i64, ptr %i.ei, align 8, !alias.scope !8851 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not.i.i, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %bb.bl

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %bb.bk, %bb.bl, %bb.bj
  %.sroa.5.sroa.0.0.i.i = phi ptr [ undef, %bb.bj ], [ %.val.i.i, %bb.bl ], [ %.val.i.i, %bb.bk ]
  %.sroa.5.sroa.4.0.i.i = phi i64 [ undef, %bb.bj ], [ %.val23.i.i, %bb.bl ], [ %.val23.i.i, %bb.bk ]
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.bj ], [ 1, %bb.bl ], [ 1, %bb.bk ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !alias.scope !8851, !nonnull !10, !noundef !10 ; 2 uses
  %i.el = atomicrmw add ptr %i.ek, i64 1 monotonic, align 8, !noalias !8852
  %i.em = icmp slt i64 %i.el, 0
  br i1 %i.em, label %bb.bm, label %_RNvXs3_NtNtCsdaEETE4DqmE_13typst_library11foundations6moduleNtB5_6ModuleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.bl:                                            ; preds = %bb.bk
  %i.en = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.eo = atomicrmw add ptr %i.en, i64 1 monotonic, align 8, !noalias !8852
  %i.ep = icmp slt i64 %i.eo, 0
  br i1 %i.ep, label %.invoke, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i, !prof !13

.invoke:                                          ; preds = %bb.bl, %bb.bx
  %i.eq = phi ptr [ %.val53.i, %bb.bx ], [ %.val.i.i, %bb.bl ]
  store i64 %i.an, ptr %i.ad, align 8
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull %i.eq) #39
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bm:                                            ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i
  call void @llvm.trap()
  unreachable

_RNvXs3_NtNtCsdaEETE4DqmE_13typst_library11foundations6moduleNtB5_6ModuleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i
  store i64 %.sroa.0.0.i.i, ptr %i.a, align 8, !alias.scope !8847
  store ptr %.sroa.5.sroa.0.0.i.i, ptr %i.aj, align 8, !alias.scope !8847
  store i64 %.sroa.5.sroa.4.0.i.i, ptr %i.ak, align 8, !alias.scope !8847
  store ptr %i.ek, ptr %.sroa.6.0..sroa_idx62.i, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.bn:                                            ; preds = %bb.l
  %i.er = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !8848, !nonnull !10, !noundef !10
  %i.et = atomicrmw add ptr %i.es, i64 1 monotonic, align 8, !noalias !8849
  %i.eu = icmp slt i64 %i.et, 0
  br i1 %i.eu, label %bb.cd, label %bb.cc

bb.bo:                                            ; preds = %bb.x
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !8848, !nonnull !10, !noundef !10 ; 2 uses
  %i.ex = atomicrmw add ptr %i.ew, i64 1 monotonic, align 8, !noalias !8849
  %i.ey = icmp slt i64 %i.ex, 0
  br i1 %i.ey, label %bb.br, label %bb.bq

bb.bp:                                            ; preds = %bb.x
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %.sroa.039.0.copyload.i = load i32, ptr %i.ez, align 4, !alias.scope !8848
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.6.0.pre.i = load ptr, ptr %.sroa.440.0..sroa_idx.i, align 8, !alias.scope !8848
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.sroa.6.0.i = phi ptr [ %.sroa.6.0.pre.i, %bb.bp ], [ %i.ew, %bb.bo ]
  %.sroa.52.0.i = phi i32 [ %.sroa.039.0.copyload.i, %bb.bp ], [ undef, %bb.bo ]
  %.sroa.01.0.i = phi i32 [ 0, %bb.bp ], [ 1, %bb.bo ]
  %.sroa.7.0.in.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.7.0.i = load double, ptr %.sroa.7.0.in.i, align 8, !alias.scope !8848
  store i32 %.sroa.01.0.i, ptr %i.aj, align 8, !alias.scope !8847
  store i32 %.sroa.52.0.i, ptr %.sroa.52.0..sroa_idx.i, align 4, !alias.scope !8847
  store ptr %.sroa.6.0.i, ptr %i.ak, align 8, !alias.scope !8847
  store double %.sroa.7.0.i, ptr %.sroa.6.0..sroa_idx62.i, align 8, !alias.scope !8847
  store i64 12, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.br:                                            ; preds = %bb.bo
  call void @llvm.trap()
  unreachable

bb.bs:                                            ; preds = %bb.af
  store ptr %i.bx, ptr %i.aj, align 8, !alias.scope !8847
  store i64 14, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.bt:                                            ; preds = %bb.af
  call void @llvm.trap()
  unreachable

bb.bu:                                            ; preds = %bb.ag
  %i.fa = load ptr, ptr %i.cc, align 8, !alias.scope !8848, !nonnull !10, !noundef !10
  %i.fb = atomicrmw add ptr %i.fa, i64 1 monotonic, align 8, !noalias !8849
  %i.fc = icmp slt i64 %i.fb, 0
  br i1 %i.fc, label %bb.bw, label %bb.bv

.sink.split:                                      ; preds = %bb.ag
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !8848, !noundef !10
  br label %bb.bv

bb.bv:                                            ; preds = %.sink.split, %bb.bu
  %.sroa.9.0.i = phi i64 [ undef, %bb.bu ], [ %i.fe, %.sink.split ]
  %.sroa.635.0.i = load ptr, ptr %i.cc, align 8, !alias.scope !8848, !nonnull !10, !noundef !10
  store i64 %i.cb, ptr %i.aj, align 8, !alias.scope !8847
  store ptr %.sroa.635.0.i, ptr %i.ak, align 8, !alias.scope !8847
  store i64 %.sroa.9.0.i, ptr %.sroa.6.0..sroa_idx62.i, align 8, !alias.scope !8847
  store i64 15, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.trap()
  unreachable

bb.bx:                                            ; preds = %bb.ak
  %i.ff = getelementptr inbounds i8, ptr %.val53.i, i64 -16
  %i.fg = atomicrmw add ptr %i.ff, i64 1 monotonic, align 8, !noalias !8849
  %i.fh = icmp slt i64 %i.fg, 0
  br i1 %i.fh, label %.invoke, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, !prof !13

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.ak, %bb.bx
  store ptr %.val53.i, ptr %i.aj, align 8, !alias.scope !8847
  store i64 %.val54.i, ptr %i.ak, align 8, !alias.scope !8847
  store i64 17, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.by:                                            ; preds = %bb.al
  %i.fi = load <2 x ptr>, ptr %i.cn, align 8, !alias.scope !8848
  store <2 x ptr> %i.fi, ptr %i.aj, align 8, !alias.scope !8847
  store i64 18, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.bz:                                            ; preds = %bb.al
  call void @llvm.trap()
  unreachable

bb.ca:                                            ; preds = %bb.ax
  store ptr %i.di, ptr %i.aj, align 8, !alias.scope !8847
  store i64 26, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.cb:                                            ; preds = %bb.ax
  call void @llvm.trap()
  unreachable

bb.cc:                                            ; preds = %bb.bn
  %i.fj = load <2 x ptr>, ptr %i.er, align 8, !alias.scope !8848
  store <2 x ptr> %i.fj, ptr %i.aj, align 8, !alias.scope !8847
  store i64 31, ptr %i.a, align 8, !alias.scope !8847
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.cd:                                            ; preds = %bb.bn
  call void @llvm.trap()
  unreachable

bb.ce:                                            ; preds = %bb.j
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.fk, i64 32, i1 false)
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

.loopexit:                                        ; preds = %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, %bb.aq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %i.an, ptr %i.ad, align 8
  br label %bb.cf

.loopexit.split-lp:                               ; preds = %bb.aj, %.invoke, %bb.at, %bb.aw, %bb.bh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.cf:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c) #44
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit unwind label %bb.h

_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit: ; preds = %bb.cc, %bb.ca, %bb.by, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, %bb.bv, %bb.bs, %bb.bq, %_RNvXs3_NtNtCsdaEETE4DqmE_13typst_library11foundations6moduleNtB5_6ModuleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, %bb.bi, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, %.noexc6, %bb.ap, %bb.ao, %bb.an, %bb.am, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fl = invoke fastcc noundef zeroext i1 @_RINvNvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB5_7Content8traverse10walk_valueNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree5build19progress_tree_start0uEB1F_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.cg unwind label %.loopexit

bb.cg:                                            ; preds = %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  br i1 %i.fl, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i64 %i.an, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c)
          to label %bb.cj unwind label %bb.f

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fm = icmp ult i64 %i.an, %i.af
  br i1 %i.fm, label %bb.j, label %._crit_edge

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fn = load i64, ptr %0, align 8, !range !56, !noundef !10 ; 3 uses
  %i.fo = icmp ne i64 %i.fn, 30
  call void @llvm.assume(i1 %i.fo)
  %i.fp = add nsw i64 %i.fn, -2
  %i.fq = icmp samesign ugt i64 %i.fn, 1
  %i.fr = select i1 %i.fq, i64 %i.fp, i64 28
  switch i64 %i.fr, label %.sink.split85 [
    i64 21, label %bb.ck
    i64 23, label %bb.ck
  ]

.sink.split85:                                    ; preds = %bb.cj, %bb.g
  %.sroa.0.1.ph = phi i1 [ %.sroa.0.0, %bb.g ], [ true, %bb.cj ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(32) %0)
  br label %bb.ck

bb.ck:                                            ; preds = %.sink.split85, %bb.cj, %bb.cj, %bb.g, %bb.g
  %.sroa.0.1 = phi i1 [ true, %bb.cj ], [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %bb.g ], [ true, %bb.cj ], [ %.sroa.0.1.ph, %.sink.split85 ]
  ret i1 %.sroa.0.1

bb.cl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #44
          to label %bb.cm unwind label %bb.h

bb.cm:                                            ; preds = %bb.cl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 17) %3, i64 noundef range(i64 1, 137) %4) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8855)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !17, !alias.scope !8855, !noundef !10 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8855
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !8855
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 17) %3, i64 noundef range(i64 1, 161) %4), !noalias !8855
  %i.h = load i64, ptr %i.a, align 8, !range !19, !noalias !8855, !noundef !10
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !63, !noalias !8855, !noundef !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !8855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8855
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #39
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !8855, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8855
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !8855
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !8855
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs0_NtNtCsidf7BFzONoc_6krilla4text5groupINtB8_12GlyphSpannerpENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next4funcNtNtCs8jFhWeO2DFb_9typst_pdf4text8PdfGlyphEB2d_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, i24 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, i1 noundef zeroext %4, ptr noundef nonnull %5, ptr nofree noundef nonnull align 8 captures(none) %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %7, i64 noundef %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.f = load i16, ptr %i.e, align 4, !alias.scope !8885, !noundef !10
  %.sroa.430.0.insert.ext = zext i24 %2 to i64
  %.sroa.430.0.insert.shift = shl nuw nsw i64 %.sroa.430.0.insert.ext, 32
  %.sroa.029.0.insert.ext = zext i16 %i.f to i64
  %.sroa.029.0.insert.insert = or disjoint i64 %.sroa.430.0.insert.shift, %.sroa.029.0.insert.ext
  invoke fastcc void @_RNvMNtCsidf7BFzONoc_6krilla4textNtB2_13FontContainer9add_glyph(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(256) %5, i64 %.sroa.029.0.insert.insert)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsidf7BFzONoc_6krilla4text13CIDIdentifierECs8jFhWeO2DFb_9typst_pdf.exit.sink.split.i, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.04.0.copyload = load i32, ptr %i.h, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8887)
  %i.i = load ptr, ptr %i.d, align 8, !alias.scope !8887, !noundef !10 ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !8888
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.i, label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !8887, !nonnull !10, !noundef !10 ; 2 uses
  %i.n = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !8888
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.f
end_hunk_1
begin_hunk_2_@_RNCNvNtCs8jFhWeO2DFb_9typst_pdf7convert12handle_group0B5_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !10261
  call void @_RNvMs7_NtCsidf7BFzONoc_6krilla4geomNtB5_11PathBuilder6finish(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10261
  %i.m = load i64, ptr %i.d, align 8, !range !24, !noundef !10
  %.not2 = icmp eq i64 %i.m, -1
  br i1 %.not2, label %.thread, label %bb.d

.thread:                                          ; preds = %_RNCNCNvNtCs8jFhWeO2DFb_9typst_pdf7convert12handle_group00B7_.exit, %bb.a
  store i64 -1, ptr %i.g, align 8
  br label %bb.j

bb.d:                                             ; preds = %_RNCNCNvNtCs8jFhWeO2DFb_9typst_pdf7convert12handle_group00B7_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val9 = load ptr, ptr %i.n, align 8            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val10 = load i64, ptr %i.o, align 8, !alias.scope !10262, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10263
  %.not.i.i = icmp eq i64 %.val10, 0
  br i1 %.not.i.i, label %bb.e, label %bb.g, !prof !13

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223) #42
          to label %.noexc.i unwind label %bb.f, !noalias !10263

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsidf7BFzONoc_6krilla4geom4PathECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.d) #44
  br label %common.resume

bb.g:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  %i.q = getelementptr [112 x i8], ptr %.val9, i64 %.val10 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 -112
  %i.s = getelementptr i8, ptr %i.q, i64 -80
  %i.t = load <4 x double>, ptr %i.r, align 8, !noalias !10263
  %i.u = fptrunc <4 x double> %i.t to <4 x float>
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.v, ptr %i.a, align 16, !noalias !10263
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load <2 x double>, ptr %i.s, align 8, !noalias !10263
  %i.x = fdiv <2 x double> %i.w, splat (double 1.270000e+02)
  %i.y = fptrunc <2 x double> %i.x to <2 x float>
  store <2 x float> %i.y, ptr %.sroa.7.0..sroa_idx.i, align 16, !noalias !10263
  call void @_RNvMs6_NtCsidf7BFzONoc_6krilla4geomNtB5_4Path9transform(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10263
  %.pr = load i64, ptr %i.g, align 8              ; 2 uses
  %.not3 = icmp eq i64 %.pr, -1
  br i1 %.not3, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface14push_clip_path(ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @74)
          to label %bb.j unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.p, %bb.q, %bb.i
  %.pn = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.ak, %bb.q ], [ %i.ak, %bb.p ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsidf7BFzONoc_6krilla4geom4PathEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(64) %i.g) #44
  br label %common.resume

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEECs8jFhWeO2DFb_9typst_pdf.exit

bb.j:                                             ; preds = %bb.g, %bb.h, %.thread
  %.not313 = phi i1 [ true, %.thread ], [ false, %bb.h ], [ true, %bb.g ]
  %i.aa = phi i64 [ -1, %.thread ], [ %.pr, %bb.h ], [ -1, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false), !alias.scope !10264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 -1, ptr %i.e, align 8
  %i.ab = invoke fastcc { ptr, i64 } @_RNvNtCs8jFhWeO2DFb_9typst_pdf7convert12handle_frame(ptr noalias nofree noundef align 8 dereferenceable(96) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef align 8 dereferenceable(976) %3, ptr noalias nofree noundef align 8 dereferenceable(672) %1)
          to label %bb.k unwind label %bb.i       ; 3 uses

bb.k:                                             ; preds = %bb.j
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0      ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %.not313, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsidf7BFzONoc_6krilla4geom4PathEECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.o

bb.l:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !10265)
  call void @llvm.experimental.noalias.scope.decl(metadata !10266)
  call void @llvm.experimental.noalias.scope.decl(metadata !10267)
  %i.ae = icmp eq i64 %i.aa, 0
  br i1 %i.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !10268, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !10268
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.val2.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !10268 ; 2 uses
  %i.ah = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsidf7BFzONoc_6krilla4geom4PathEECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.val3.i.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !10268, !nonnull !10, !noundef !10
  %i.aj = shl nuw i64 %.val2.i.i.i, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 4) #41, !noalias !10268
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsidf7BFzONoc_6krilla4geom4PathEECs8jFhWeO2DFb_9typst_pdf.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsidf7BFzONoc_6krilla4geom4PathEECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret { ptr, i64 } %i.ab

bb.o:                                             ; preds = %bb.k
  invoke void @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface3pop(ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %3)
          to label %bb.l unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = icmp eq ptr %i.ac, null
  br i1 %i.al, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs8jFhWeO2DFb_9typst_pdf(ptr nonnull %i.ac, i64 %i.ad)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEECs8jFhWeO2DFb_9typst_pdf.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNCNvXsa_NtCsdaEETE4DqmE_13typst_library4diagINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupNtB7_12HintedStringEINtB7_2AtB1j_E2at0B1p_(i64 %.0.val, ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 11 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %.not.i.i.i = icmp eq ptr %0, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -16
  %i.f = load atomic i64, ptr %i.e acquire, align 8, !noalias !10274
  %i.g = icmp eq i64 %i.f, 1
  %i.h = zext i1 %i.g to i8
  br label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8jFhWeO2DFb_9typst_pdf.exit

_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i.i.i = phi i8 [ %i.h, %bb.b ], [ 1, %bb.a ] ; 2 uses
  store ptr %0, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 %.sroa.02.0.i.i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %1, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.not8 = icmp eq i64 %1, 0
  br i1 %.not8, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8jFhWeO2DFb_9typst_pdf.exit
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #39
          to label %bb.e unwind label %.body.thread5

bb.d:                                             ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8jFhWeO2DFb_9typst_pdf.exit
  store i64 1, ptr %i.k, align 8
  %i.m = trunc nuw i8 %.sroa.02.0.i.i.i to i1
  br i1 %i.m, label %bb.g, label %bb.f

.body.thread5:                                    ; preds = %bb.j, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.o = load i8, ptr %i.n, align 1, !noundef !10
  %.not = icmp sgt i8 %i.o, -1
  %i.p = getelementptr i8, ptr %0, i64 8          ; 2 uses
  br i1 %.not, label %bb.h, label %bb.k

bb.g:                                             ; preds = %bb.d
  %.sroa.013.0.copyload = load ptr, ptr %0, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.515.0.copyload = load i64, ptr %.sroa.515.0..sroa_idx, align 8
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %.val = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 5 uses
  %.val27 = load i64, ptr %i.p, align 8           ; 2 uses
  %.not.i.i = icmp eq ptr %.val, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds i8, ptr %.val, i64 -16
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.j, label %bb.l, !prof !13

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull %.val) #39
          to label %.noexc unwind label %.body.thread5

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.f
  %.sroa.019.0.copyload = load ptr, ptr %0, align 1
  %.sroa.420.0.copyload = load i64, ptr %i.p, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.k, %bb.g
  %.sroa.515.0 = phi i64 [ %.sroa.515.0.copyload, %bb.g ], [ %.sroa.420.0.copyload, %bb.k ], [ %.val27, %bb.i ], [ %.val27, %bb.h ]
  %.sroa.013.0 = phi ptr [ %.sroa.013.0.copyload, %bb.g ], [ %.sroa.019.0.copyload, %bb.k ], [ %.val, %bb.i ], [ %.val, %bb.h ]
  store ptr %.sroa.013.0, ptr %i.d, align 8
  %.sroa.3.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.515.0, ptr %.sroa.3.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10276)
  %i.t = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) %.0.val)
          to label %bb.o unwind label %bb.n, !noalias !10277 ; 2 uses

bb.m:                                             ; preds = %bb.n
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !10277
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.d) #44
          to label %.body.thread unwind label %bb.m, !noalias !10275

bb.o:                                             ; preds = %bb.l
  %i.w = extractvalue { i64, i64 } %i.t, 1
  %i.x = extractvalue { i64, i64 } %i.t, 0
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i8 0, ptr %i.y, align 8, !alias.scope !10275
  store i64 %i.x, ptr %i.c, align 8, !alias.scope !10275
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.w, ptr %i.z, align 8, !alias.scope !10275
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.d, i64 16, i1 false), !alias.scope !10277
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %i.ab, align 8, !alias.scope !10275
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.ac, align 8, !alias.scope !10275
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr inttoptr (i64 16 to ptr), ptr %i.ad, align 8, !alias.scope !10275
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.ae, align 8, !alias.scope !10275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic10with_hintsINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB1k_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.af = call fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret { ptr, i64 } %i.af

bb.p:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body4

.body.thread:                                     ; preds = %bb.n, %.body.thread5
  %eh.lpad-body4 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread5 ], [ %i.v, %bb.n ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b) #44
          to label %bb.p unwind label %bb.q

bb.q:                                             ; preds = %.body.thread
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNCNvXsa_NtCsdaEETE4DqmE_13typst_library4diagINtNtCs3oUPovFnLWP_4core6result6ResultuNtB7_12HintedStringEINtB7_2AtuE2at0Cs8jFhWeO2DFb_9typst_pdf(i64 %.0.val, ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 11 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %.not.i.i.i = icmp eq ptr %0, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -16
  %i.f = load atomic i64, ptr %i.e acquire, align 8, !noalias !10283
  %i.g = icmp eq i64 %i.f, 1
  %i.h = zext i1 %i.g to i8
  br label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8jFhWeO2DFb_9typst_pdf.exit

_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i.i.i = phi i8 [ %i.h, %bb.b ], [ 1, %bb.a ] ; 2 uses
  store ptr %0, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 %.sroa.02.0.i.i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %1, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.not8 = icmp eq i64 %1, 0
  br i1 %.not8, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8jFhWeO2DFb_9typst_pdf.exit
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #39
          to label %bb.e unwind label %.body.thread5

bb.d:                                             ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8jFhWeO2DFb_9typst_pdf.exit
  store i64 1, ptr %i.k, align 8
  %i.m = trunc nuw i8 %.sroa.02.0.i.i.i to i1
  br i1 %i.m, label %bb.g, label %bb.f

.body.thread5:                                    ; preds = %bb.j, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.o = load i8, ptr %i.n, align 1, !noundef !10
  %.not = icmp sgt i8 %i.o, -1
  %i.p = getelementptr i8, ptr %0, i64 8          ; 2 uses
  br i1 %.not, label %bb.h, label %bb.k

bb.g:                                             ; preds = %bb.d
  %.sroa.013.0.copyload = load ptr, ptr %0, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.515.0.copyload = load i64, ptr %.sroa.515.0..sroa_idx, align 8
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %.val = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 5 uses
  %.val27 = load i64, ptr %i.p, align 8           ; 2 uses
  %.not.i.i = icmp eq ptr %.val, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds i8, ptr %.val, i64 -16
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.j, label %bb.l, !prof !13

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull %.val) #39
          to label %.noexc unwind label %.body.thread5

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.f
  %.sroa.019.0.copyload = load ptr, ptr %0, align 1
  %.sroa.420.0.copyload = load i64, ptr %i.p, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.k, %bb.g
  %.sroa.515.0 = phi i64 [ %.sroa.515.0.copyload, %bb.g ], [ %.sroa.420.0.copyload, %bb.k ], [ %.val27, %bb.i ], [ %.val27, %bb.h ]
  %.sroa.013.0 = phi ptr [ %.sroa.013.0.copyload, %bb.g ], [ %.sroa.019.0.copyload, %bb.k ], [ %.val, %bb.i ], [ %.val, %bb.h ]
  store ptr %.sroa.013.0, ptr %i.d, align 8
  %.sroa.3.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.515.0, ptr %.sroa.3.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10285)
  %i.t = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) %.0.val)
          to label %bb.o unwind label %bb.n, !noalias !10286 ; 2 uses

bb.m:                                             ; preds = %bb.n
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !10286
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.d) #44
          to label %.body.thread unwind label %bb.m, !noalias !10284

bb.o:                                             ; preds = %bb.l
  %i.w = extractvalue { i64, i64 } %i.t, 1
  %i.x = extractvalue { i64, i64 } %i.t, 0
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i8 0, ptr %i.y, align 8, !alias.scope !10284
  store i64 %i.x, ptr %i.c, align 8, !alias.scope !10284
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.w, ptr %i.z, align 8, !alias.scope !10284
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.d, i64 16, i1 false), !alias.scope !10286
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %i.ab, align 8, !alias.scope !10284
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.ac, align 8, !alias.scope !10284
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr inttoptr (i64 16 to ptr), ptr %i.ad, align 8, !alias.scope !10284
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.ae, align 8, !alias.scope !10284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic10with_hintsINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB1k_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.af = call fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret { ptr, i64 } %i.af

bb.p:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body4

.body.thread:                                     ; preds = %bb.n, %.body.thread5
  %eh.lpad-body4 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread5 ], [ %i.v, %bb.n ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b) #44
          to label %bb.p unwind label %bb.q

bb.q:                                             ; preds = %.body.thread
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_RNSNvXs0_NtCsidf7BFzONoc_6krilla4textNtNtB7_3cid7CIDFontNtB7_7PdfFont14get_codepoints5reify(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %0, i32 %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXs0_NtCsidf7BFzONoc_6krilla4textNtNtB5_3cid7CIDFontNtB5_7PdfFont14get_codepoints(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %0, i32 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148)
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvXs0_NtCsidf7BFzONoc_6krilla4textNtNtB7_3cid7CIDFontNtB7_7PdfFont14set_codepoints5reify(ptr noalias nofree noundef align 8 dereferenceable(136) %0, i32 %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  tail call void @_RNvXs0_NtCsidf7BFzONoc_6krilla4textNtNtB5_3cid7CIDFontNtB5_7PdfFont14set_codepoints(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0, i32 %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_RNSNvXs_NtCsidf7BFzONoc_6krilla4textNtNtB6_5type39Type3FontNtB6_7PdfFont14get_codepoints5reify(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, i32 %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXs_NtCsidf7BFzONoc_6krilla4textNtNtB4_5type39Type3FontNtB4_7PdfFont14get_codepoints(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, i32 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150)
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvXs_NtCsidf7BFzONoc_6krilla4textNtNtB6_5type39Type3FontNtB6_7PdfFont14set_codepoints5reify(ptr noalias nofree noundef align 8 dereferenceable(144) %0, i32 %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  tail call void @_RNvXs_NtCsidf7BFzONoc_6krilla4textNtNtB4_5type39Type3FontNtB4_7PdfFont14set_codepoints(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0, i32 %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEE10initializeNCINvB1f_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB3V_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13color_channel0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB3X_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !10, !align !21, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !10289
  call void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEE10initializeNCINvB1a_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB3Q_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13color_channel0E0zE0E0B3S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEE10initializeNCINvB1f_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB3E_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel0E0zE0E0INtNtNtB1Q_3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB3G_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !10, !align !21, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !10292
  call void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEE10initializeNCINvB1a_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB3z_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel0E0zE0E0B3B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE10initializeNCINvB1f_11get_or_initFEB1L_E0zE0E0INtNtNtB1Q_3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs8jFhWeO2DFb_9typst_pdf(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !10, !align !21, !noundef !10 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10298)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.b, align 8, !alias.scope !10298, !noalias !10299 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !10298, !noalias !10299 ; 2 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !10298, !noalias !10299
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.b, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE10initializeNCINvB1d_11get_or_initFEB1J_E0zE0E0INtNtNtB1O_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs8jFhWeO2DFb_9typst_pdf.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #42, !noalias !10300
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE10initializeNCINvB1d_11get_or_initFEB1J_E0zE0E0INtNtNtB1O_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10300
  call void %.sroa.0.0.copyload.i.i(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a), !noalias !10300, !inline_history !10297
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !10300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10300
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintEE10initializeNCINvB1f_11get_or_initFEB1L_E0zE0E0INtNtNtB1Q_3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs8jFhWeO2DFb_9typst_pdf(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !10, !align !21, !noundef !10 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10306)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.b, align 8, !alias.scope !10306, !noalias !10307 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !10306, !noalias !10307 ; 2 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !10306, !noalias !10307
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.b, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintEE10initializeNCINvB1d_11get_or_initFEB1J_E0zE0E0INtNtNtB1O_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs8jFhWeO2DFb_9typst_pdf.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #42, !noalias !10308
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintEE10initializeNCINvB1d_11get_or_initFEB1J_E0zE0E0INtNtNtB1O_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10308
  call void %.sroa.0.0.copyload.i.i(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a), !noalias !10308, !inline_history !10305
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !10308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10308
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCsidf7BFzONoc_6krilla8graphics5image4ReprNtNtCs1xwejQucwHj_5alloc6string6StringEE10initializeNCINvB1f_11get_or_initNCINvMs7_B2p_NtB2p_5Image11from_customNtNtCs8jFhWeO2DFb_9typst_pdf5image14PdfRasterImageEs_0E0zE0E0INtNtNtB1Q_3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB50_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !10, !align !21, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !10311
  call void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCsidf7BFzONoc_6krilla8graphics5image4ReprNtNtCs1xwejQucwHj_5alloc6string6StringEE10initializeNCINvB1a_11get_or_initNCINvMs7_B2k_NtB2k_5Image11from_customNtNtCs8jFhWeO2DFb_9typst_pdf5image14PdfRasterImageEs_0E0zE0E0B4V_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtB1S_9visualize6stroke6StrokeEE10initializeNCINvB1f_11get_or_initFEB1L_E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs8jFhWeO2DFb_9typst_pdf(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !10, !align !21, !noundef !10 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10317)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.b, align 8, !alias.scope !10317, !noalias !10318 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !10317, !noalias !10318 ; 2 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !10317, !noalias !10318
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.b, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtB1Q_9visualize6stroke6StrokeEE10initializeNCINvB1d_11get_or_initFEB1J_E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs8jFhWeO2DFb_9typst_pdf.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #42, !noalias !10319
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtB1Q_9visualize6stroke6StrokeEE10initializeNCINvB1d_11get_or_initFEB1J_E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10319
  call void %.sroa.0.0.copyload.i.i(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a), !noalias !10319, !inline_history !10316
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !10319
end_hunk_2
begin_hunk_3_@_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext20push_link_annotation:bb.a
  resume { ptr, i32 } %eh.lpad-body13

bb.aa:                                            ; preds = %bb.f, %bb.t, %bb.p
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %i.dm, %bb.t ], [ %i.dh, %bb.p ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %2) #44
          to label %.body unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext5state(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10
  %i.e = getelementptr [112 x i8], ptr %i.d, i64 %i.b
  %i.f = getelementptr i8, ptr %i.e, i64 -112
  ret ptr %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !10
  %.val = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %.not.i = icmp eq ptr %.val, inttoptr (i64 16 to ptr)
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.c

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load ptr, ptr %i.d, align 8, !alias.scope !45
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 31
  %.val2 = load i8, ptr %i.e, align 1, !alias.scope !45, !noundef !10
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs8jFhWeO2DFb_9typst_pdf(ptr %.val1, i8 %.val2) #44
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 -8
  %.val.i = load i64, ptr %i.f, align 8, !noundef !10
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.c, %bb.a
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.c ], [ 0, %bb.a ]
  %i.g = icmp eq i64 %i.b, %.sroa.02.0.i
  %i.h = zext i1 %i.g to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.h)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit
  %i.i = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.j = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.l = add i64 %i.j, 1
  store i64 %i.l, ptr %i.a, align 8
  ret void

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  %.val10 = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %.not.i = icmp eq ptr %.val10, inttoptr (i64 16 to ptr) ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.val10, i64 -16
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val10, i64 -8
  %.val.i = load i64, ptr %i.d, align 8, !noundef !10
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !10 ; 3 uses
  %i.g = sub i64 %.sroa.02.0.i, %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit
  %i.i = add i64 %i.f, %1                         ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.f
  br i1 %i.j, label %bb.f, label %bb.e, !prof !13

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %..i20, %bb.e ], [ %.sroa.02.0.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit ] ; 4 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.d
  %i.k = load atomic i64, ptr %i.c acquire, align 8
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = shl i64 %.sroa.02.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.i)
  %..i20 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 4)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
  unreachable

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 16 to ptr), ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 0, ptr %i.n, align 8
  %.not.i21 = icmp eq i64 %.sroa.0.0, 0
  br i1 %.not.i21, label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4growCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a, i64 noundef %.sroa.0.0)
          to label %._crit_edge.i unwind label %bb.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.a, align 8
  %.pre4.i = load i64, ptr %i.n, align 8
  br label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCs8jFhWeO2DFb_9typst_pdf.exit

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.val.i22 = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %.val3.i = load i64, ptr %i.n, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECs8jFhWeO2DFb_9typst_pdf(ptr nonnull %.val.i22, i64 %.val3.i) #44
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

common.resume:                                    ; preds = %.thread, %bb.r, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.i ], [ %eh.lpad-body, %.thread ], [ %i.ar, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.g, %._crit_edge.i
  %i.q = phi i64 [ %.pre4.i, %._crit_edge.i ], [ 0, %bb.g ]
  %i.r = phi ptr [ %.pre.i, %._crit_edge.i ], [ inttoptr (i64 16 to ptr), %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.r, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  store i64 %i.q, ptr %i.s, align 8
  %i.t = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.u = load i64, ptr %i.e, align 8, !noundef !10 ; 4 uses
  %.idx = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  %.not.i24 = icmp eq i64 %i.u, 0
  br i1 %.not.i24, label %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs8jFhWeO2DFb_9typst_pdf.exit_crit_edge, label %bb.k

.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs8jFhWeO2DFb_9typst_pdf.exit_crit_edge: ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCs8jFhWeO2DFb_9typst_pdf.exit
  %.pre = load ptr, ptr %i.b, align 8
  %.pre62 = load i64, ptr %i.s, align 8
  br label %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs8jFhWeO2DFb_9typst_pdf.exit

bb.k:                                             ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCs8jFhWeO2DFb_9typst_pdf.exit
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.u)
          to label %.lr.ph unwind label %bb.s, !inline_history !11879

.lr.ph:                                           ; preds = %bb.k, %.noexc26
  %.sroa.033.056 = phi ptr [ %i.w, %.noexc26 ], [ %i.t, %bb.k ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11896)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11899)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 31
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !11900, !noalias !11901, !noundef !10
  %.not.i.i.i.i = icmp slt i8 %i.z, 0
  %.val.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !11902, !noalias !11901 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 24
  %.val10.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !11902, !noalias !11901 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, inttoptr (i64 16 to ptr)
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 -16
  %i.ac = atomicrmw add ptr %i.ab, i64 1 monotonic, align 8, !noalias !11903
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull %.val.i.i.i.i) #39
          to label %.noexc30 unwind label %bb.s

.noexc30:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l, %.lr.ph
  %i.ae = load <2 x i64>, ptr %.sroa.033.056, align 8, !alias.scope !11896, !noalias !11901
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11904)
  %i.af = load i64, ptr %i.s, align 8, !alias.scope !11904, !noundef !10
  %.val.i27 = load ptr, ptr %i.b, align 8, !alias.scope !11904, !nonnull !10, !noundef !10 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i27, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i, label %bb.p

bb.o:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %.sroa.739.31.extract.shift = lshr i64 %.val10.i.i.i.i, 56
  %.sroa.739.31.extract.trunc = trunc nuw i64 %.sroa.739.31.extract.shift to i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs8jFhWeO2DFb_9typst_pdf(ptr %.val.i.i.i.i, i8 %.sroa.739.31.extract.trunc) #44
          to label %.thread unwind label %bb.q, !noalias !11905, !inline_history !11895

bb.p:                                             ; preds = %bb.n
  %i.ah = getelementptr i8, ptr %.val.i27, i64 -8
  %.val.i.i = load i64, ptr %i.ah, align 8, !noalias !11906, !noundef !10
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.p, %bb.n
  %.sroa.02.0.i.i = phi i64 [ %.val.i.i, %bb.p ], [ 0, %bb.n ]
  %i.ai = icmp eq i64 %i.af, %.sroa.02.0.i.i
  %i.aj = zext i1 %i.ai to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.aj)
          to label %.noexc26 unwind label %bb.o, !noalias !11905, !inline_history !11895

bb.q:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !11905, !inline_history !11895
  unreachable

.noexc26:                                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  %i.al = load ptr, ptr %i.b, align 8, !alias.scope !11904, !nonnull !10, !noundef !10 ; 2 uses
  %i.am = load i64, ptr %i.s, align 8, !alias.scope !11904, !noundef !10 ; 2 uses
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.am ; 3 uses
  store <2 x i64> %i.ae, ptr %i.an, align 8, !noalias !11905
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %.val.i.i.i.i, ptr %.sroa.542.0..sroa_idx, align 8, !noalias !11905
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %.val10.i.i.i.i, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !11905
  %i.ao = add i64 %i.am, 1                        ; 2 uses
  store i64 %i.ao, ptr %i.s, align 8, !alias.scope !11904
  %i.ap = icmp eq ptr %i.w, %i.v
  br i1 %i.ap, label %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs8jFhWeO2DFb_9typst_pdf.exit, label %.lr.ph

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit.thread: ; preds = %bb.d, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit
  %i.aq = icmp ugt i64 %.sroa.0.0, %.sroa.02.0.i
  br i1 %i.aq, label %bb.w, label %bb.u

bb.r:                                             ; preds = %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs8jFhWeO2DFb_9typst_pdf.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  store ptr %i.au, ptr %0, align 8
  store i64 %i.at, ptr %i.e, align 8
  br label %common.resume

bb.s:                                             ; preds = %bb.m, %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %.noexc26, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs8jFhWeO2DFb_9typst_pdf.exit_crit_edge
  %i.at = phi i64 [ %.pre62, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs8jFhWeO2DFb_9typst_pdf.exit_crit_edge ], [ %i.ao, %.noexc26 ] ; 2 uses
  %i.au = phi ptr [ %.pre, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs8jFhWeO2DFb_9typst_pdf.exit_crit_edge ], [ %i.al, %.noexc26 ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECs8jFhWeO2DFb_9typst_pdf(ptr nonnull %i.t, i64 %i.u)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs8jFhWeO2DFb_9typst_pdf.exit
  store ptr %i.au, ptr %0, align 8
  store i64 %i.at, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit.thread, %bb.t
  ret void

.thread:                                          ; preds = %bb.o, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.s ], [ %i.ag, %bb.o ]
  %.val11 = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10
  %.val12 = load i64, ptr %i.s, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECs8jFhWeO2DFb_9typst_pdf(ptr nonnull %.val11, i64 %.val12) #44
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %.thread
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.w:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit.thread
  tail call fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4growCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %.sroa.0.0)
  br label %bb.u
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtB6_6string9EcoStringE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 10 uses
  %.val10 = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %.not.i = icmp eq ptr %.val10, inttoptr (i64 16 to ptr) ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.val10, i64 -16
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val10, i64 -8
  %.val.i = load i64, ptr %i.f, align 8, !noundef !10
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !10 ; 3 uses
  %i.i = sub i64 %.sroa.02.0.i, %i.h
  %i.j = icmp ugt i64 %1, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit
  %i.k = add i64 %i.h, %1                         ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.h
  br i1 %i.l, label %bb.f, label %bb.e, !prof !13

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %..i20, %bb.e ], [ %.sroa.02.0.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit ] ; 4 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.d
  %i.m = load atomic i64, ptr %i.e acquire, align 8
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.o = shl i64 %.sroa.02.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %i.k)
  %..i20 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 4)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
  unreachable

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr inttoptr (i64 16 to ptr), ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store i64 0, ptr %i.p, align 8
  %.not.i21 = icmp eq i64 %.sroa.0.0, 0
  br i1 %.not.i21, label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtB4_6string9EcoStringE13with_capacityCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4growCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c, i64 noundef %.sroa.0.0)
          to label %._crit_edge.i unwind label %bb.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.c, align 8
  %.pre4.i = load i64, ptr %i.p, align 8
  br label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtB4_6string9EcoStringE13with_capacityCs8jFhWeO2DFb_9typst_pdf.exit

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %.val.i22 = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10
  %.val3.i = load i64, ptr %i.p, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf(ptr nonnull %.val.i22, i64 %.val3.i) #44
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

common.resume:                                    ; preds = %.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs8jFhWeO2DFb_9typst_pdf.exit.i.i, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.i ], [ %eh.lpad-body32, %.thread ], [ %eh.lpad-body, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs8jFhWeO2DFb_9typst_pdf.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtB4_6string9EcoStringE13with_capacityCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.g, %._crit_edge.i
  %i.s = phi i64 [ %.pre4.i, %._crit_edge.i ], [ 0, %bb.g ]
  %i.t = phi ptr [ %.pre.i, %._crit_edge.i ], [ inttoptr (i64 16 to ptr), %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.t, ptr %i.d, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 6 uses
  store i64 %i.s, ptr %i.u, align 8
  %i.v = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 6 uses
  %i.w = load i64, ptr %i.g, align 8, !noundef !10 ; 4 uses
  %.idx = shl nuw nsw i64 %i.w, 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx
  %.not.i24 = icmp eq i64 %i.w, 0
  br i1 %.not.i24, label %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtB8_6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB1e_8adapters6cloned6ClonedINtNtNtB1g_5slice4iter4IterBI_EEECs8jFhWeO2DFb_9typst_pdf.exit_crit_edge, label %bb.k

.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtB8_6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB1e_8adapters6cloned6ClonedINtNtNtB1g_5slice4iter4IterBI_EEECs8jFhWeO2DFb_9typst_pdf.exit_crit_edge: ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtB4_6string9EcoStringE13with_capacityCs8jFhWeO2DFb_9typst_pdf.exit
  %.pre = load ptr, ptr %i.d, align 8
  %.pre61 = load i64, ptr %i.u, align 8
  br label %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtB8_6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB1e_8adapters6cloned6ClonedINtNtNtB1g_5slice4iter4IterBI_EEECs8jFhWeO2DFb_9typst_pdf.exit

.lr.ph:                                           ; preds = %bb.k
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.l

bb.k:                                             ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtB4_6string9EcoStringE13with_capacityCs8jFhWeO2DFb_9typst_pdf.exit
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtB6_6string9EcoStringE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %i.w)
          to label %.lr.ph unwind label %bb.s, !inline_history !11907

bb.l:                                             ; preds = %.lr.ph, %.noexc26
  %.sroa.038.056 = phi ptr [ %i.v, %.lr.ph ], [ %i.y, %.noexc26 ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.038.056, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11923)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.038.056, i64 15
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !11924, !noalias !11925, !noundef !10
  %.not.i.i.i33 = icmp slt i8 %i.aa, 0
  %.val.i.i.i34 = load ptr, ptr %.sroa.038.056, align 8, !alias.scope !11926, !noalias !11925 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.038.056, i64 8
  %.val10.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !11926, !noalias !11925
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i34, inttoptr (i64 16 to ptr)
  %or.cond.i.i = select i1 %.not.i.i.i33, i1 true, i1 %.not.i.i.i.i.i
  br i1 %or.cond.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds i8, ptr %.val.i.i.i34, i64 -16
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !noalias !11927
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull %.val.i.i.i34) #39
          to label %.noexc35 unwind label %bb.s

.noexc35:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.l
  store ptr %.val.i.i.i34, ptr %i.a, align 8
  store i64 %.val10.i.i.i, ptr %.sroa.7.8..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11928)
  %i.af = load i64, ptr %i.u, align 8, !alias.scope !11928, !noundef !10
  %.val.i29 = load ptr, ptr %i.d, align 8, !alias.scope !11928, !nonnull !10, !noundef !10 ; 2 uses
  %.not.i.i30 = icmp eq ptr %.val.i29, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i30, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i, label %bb.q

bb.p:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #44
          to label %.thread unwind label %bb.r, !inline_history !11919

bb.q:                                             ; preds = %bb.o
  %i.ah = getelementptr i8, ptr %.val.i29, i64 -8
  %.val.i.i = load i64, ptr %i.ah, align 8, !noalias !11929, !noundef !10
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.q, %bb.o
  %.sroa.02.0.i.i = phi i64 [ %.val.i.i, %bb.q ], [ 0, %bb.o ]
  %i.ai = icmp eq i64 %i.af, %.sroa.02.0.i.i
  %i.aj = zext i1 %i.ai to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtB6_6string9EcoStringE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %i.aj)
          to label %.noexc26 unwind label %bb.p, !noalias !11930, !inline_history !11919

bb.r:                                             ; preds = %bb.p
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !11930, !inline_history !11919
  unreachable

.noexc26:                                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  %i.al = load ptr, ptr %i.d, align 8, !alias.scope !11928, !nonnull !10, !noundef !10 ; 2 uses
  %i.am = load i64, ptr %i.u, align 8, !alias.scope !11928, !noundef !10 ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.ao = add i64 %i.am, 1                        ; 2 uses
  store i64 %i.ao, ptr %i.u, align 8, !alias.scope !11928
  %i.ap = icmp eq ptr %i.y, %i.x
  br i1 %i.ap, label %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtB8_6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB1e_8adapters6cloned6ClonedINtNtNtB1g_5slice4iter4IterBI_EEECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.l

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit.thread: ; preds = %bb.d, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit
  %i.aq = icmp ugt i64 %.sroa.0.0, %.sroa.02.0.i
  br i1 %i.aq, label %bb.aa, label %bb.y

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %bb.u, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %i.bf, %bb.x ], [ %i.bd, %bb.u ]
  store ptr %i.at, ptr %0, align 8
  store i64 %i.as, ptr %i.g, align 8
  br label %common.resume

bb.s:                                             ; preds = %bb.n, %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtB8_6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB1e_8adapters6cloned6ClonedINtNtNtB1g_5slice4iter4IterBI_EEECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %.noexc26, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtB8_6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB1e_8adapters6cloned6ClonedINtNtNtB1g_5slice4iter4IterBI_EEECs8jFhWeO2DFb_9typst_pdf.exit_crit_edge
  %i.as = phi i64 [ %.pre61, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtB8_6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB1e_8adapters6cloned6ClonedINtNtNtB1g_5slice4iter4IterBI_EEECs8jFhWeO2DFb_9typst_pdf.exit_crit_edge ], [ %i.ao, %.noexc26 ] ; 2 uses
  %i.at = phi ptr [ %.pre, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtB8_6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB1e_8adapters6cloned6ClonedINtNtNtB1g_5slice4iter4IterBI_EEECs8jFhWeO2DFb_9typst_pdf.exit_crit_edge ], [ %i.al, %.noexc26 ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, inttoptr (i64 16 to ptr)
  %i.au = getelementptr inbounds i8, ptr %i.v, i64 -16 ; 2 uses
  br i1 %.not.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtB8_6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB1e_8adapters6cloned6ClonedINtNtNtB1g_5slice4iter4IterBI_EEECs8jFhWeO2DFb_9typst_pdf.exit
  %i.av = atomicrmw add ptr %i.au, i64 -1 release, align 8
  %.not.i.i = icmp eq i64 %i.av, 1
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aw = getelementptr i8, ptr %i.v, i64 -8
  %.val.i.i.i = load i64, ptr %i.aw, align 8, !noundef !10 ; 2 uses
  %i.ax = icmp ult i64 %.val.i.i.i, 1152921504606846976
  %i.ay = shl i64 %.val.i.i.i, 4                  ; 2 uses
  %i.az = icmp ult i64 %i.ay, 9223372036854775784
  %narrow.i.i.i.i = and i1 %i.ax, %i.az
  br i1 %narrow.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %bb.t, !prof !16

bb.t:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
          to label %.noexc27 unwind label %bb.x

.noexc27:                                         ; preds = %bb.t
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %i.ba = add nuw nsw i64 %i.ay, 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.au, ptr %i.bb, align 8
  store i64 8, ptr %i.b, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ba, ptr %i.bc, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 %i.v, i64 noundef %i.w)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs8jFhWeO2DFb_9typst_pdf.exit.i.i unwind label %bb.w

bb.v:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc28 unwind label %bb.x

.noexc28:                                         ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit

bb.w:                                             ; preds = %bb.u
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.x:                                             ; preds = %bb.v, %bb.t
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs8jFhWeO2DFb_9typst_pdf.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %.noexc28, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i, %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtB8_6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB1e_8adapters6cloned6ClonedINtNtNtB1g_5slice4iter4IterBI_EEECs8jFhWeO2DFb_9typst_pdf.exit
  store ptr %i.at, ptr %0, align 8
  store i64 %i.as, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit
  ret void

.thread:                                          ; preds = %bb.p, %bb.s
  %eh.lpad-body32 = phi { ptr, i32 } [ %i.ar, %bb.s ], [ %i.ag, %bb.p ]
  %.val11 = load ptr, ptr %i.d, align 8, !nonnull !10, !noundef !10
  %.val12 = load i64, ptr %i.u, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf(ptr nonnull %.val11, i64 %.val12) #44
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %.thread
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.aa:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit.thread
  tail call fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4growCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %.sroa.0.0)
  br label %bb.y
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4pushCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !10
  %.val = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %.not.i = icmp eq ptr %.val, inttoptr (i64 16 to ptr)
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.c

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(72) %1) #44
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val, i64 -8
  %.val.i = load i64, ptr %i.d, align 8, !noundef !10
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.c, %bb.a
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.c ], [ 0, %bb.a ]
  %i.e = icmp eq i64 %i.b, %.sroa.02.0.i
  %i.f = zext i1 %i.e to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.f)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit
  %i.g = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.h = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.i = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.j = add i64 %i.h, 1
  store i64 %i.j, ptr %i.a, align 8
  ret void

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 16               ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 10 uses
  %.val10 = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %.not.i = icmp eq ptr %.val10, inttoptr (i64 16 to ptr) ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.val10, i64 -16
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val10, i64 -8
  %.val.i = load i64, ptr %i.f, align 8, !noundef !10
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !10 ; 3 uses
  %i.i = sub i64 %.sroa.02.0.i, %i.h
  %i.j = icmp ugt i64 %1, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit
  %i.k = add i64 %i.h, %1                         ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.h
  br i1 %i.l, label %bb.f, label %bb.e, !prof !13

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %..i20, %bb.e ], [ %.sroa.02.0.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit ] ; 4 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.d
  %i.m = load atomic i64, ptr %i.e acquire, align 8
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.o = shl i64 %.sroa.02.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %i.k)
  %..i20 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 1)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
  unreachable

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr inttoptr (i64 16 to ptr), ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store i64 0, ptr %i.p, align 8
  %.not.i21 = icmp eq i64 %.sroa.0.0, 0
  br i1 %.not.i21, label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4growCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c, i64 noundef %.sroa.0.0)
          to label %._crit_edge.i unwind label %bb.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.c, align 8
  %.pre4.i = load i64, ptr %i.p, align 8
  br label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCs8jFhWeO2DFb_9typst_pdf.exit

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %.val.i22 = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10
  %.val3.i = load i64, ptr %i.p, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs8jFhWeO2DFb_9typst_pdf(ptr nonnull %.val.i22, i64 %.val3.i) #44
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

common.resume:                                    ; preds = %.thread, %bb.ab, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.i ], [ %eh.lpad-body, %.thread ], [ %i.bi, %bb.ab ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.g, %._crit_edge.i
  %i.s = phi i64 [ %.pre4.i, %._crit_edge.i ], [ 0, %bb.g ]
  %i.t = phi ptr [ %.pre.i, %._crit_edge.i ], [ inttoptr (i64 16 to ptr), %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.t, ptr %i.d, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 6 uses
  store i64 %i.s, ptr %i.u, align 8
  %i.v = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.w = load i64, ptr %i.g, align 8, !noundef !10 ; 4 uses
  %.idx = mul nuw nsw i64 %i.w, 72
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx
  %.not.i24 = icmp eq i64 %i.w, 0
  br i1 %.not.i24, label %.noexc.._crit_edge_crit_edge, label %bb.k

.noexc.._crit_edge_crit_edge:                     ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCs8jFhWeO2DFb_9typst_pdf.exit
  %.pre = load ptr, ptr %i.d, align 8
  %.pre69 = load i64, ptr %i.u, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %.sroa.58.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  br label %bb.l

bb.k:                                             ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCs8jFhWeO2DFb_9typst_pdf.exit
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %i.w)
          to label %.lr.ph unwind label %bb.ac, !inline_history !11931

bb.l:                                             ; preds = %.lr.ph, %.noexc26
  %.sroa.034.058 = phi ptr [ %i.v, %.lr.ph ], [ %i.y, %.noexc26 ] ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.034.058, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11942)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.034.058, i64 64
  %i.aa = load i8, ptr %i.z, align 8, !range !11, !alias.scope !11942, !noalias !11943, !noundef !10
  %i.ab = load <2 x i64>, ptr %.sroa.034.058, align 8, !alias.scope !11942, !noalias !11943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11944
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.034.058, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.034.058, i64 63
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !11942, !noalias !11943, !noundef !10
  %.not.i.i28 = icmp slt i8 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.034.058, i64 56
  %.val22.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !11942, !noalias !11943 ; 4 uses
  %.val23.i.i = load i64, ptr %i.af, align 8, !alias.scope !11942, !noalias !11943
  %.not.i.i.i.i = icmp eq ptr %.val22.i.i, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not.i.i28, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds i8, ptr %.val22.i.i, i64 -16
  %i.ah = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8, !noalias !11944
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.n, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i, !prof !13

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull %.val22.i.i) #39
          to label %.noexc29 unwind label %bb.ac

.noexc29:                                         ; preds = %bb.n
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %bb.l, %bb.m
  store ptr %.val22.i.i, ptr %i.a, align 8, !noalias !11944
  store i64 %.val23.i.i, ptr %.sroa.58.0..sroa_idx9.i.i, align 8, !noalias !11944
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.034.058, i64 16
  %.val24.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !11942, !noalias !11943, !nonnull !10, !noundef !10 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.034.058, i64 24
  %.val25.i.i = load i64, ptr %i.ak, align 8, !alias.scope !11942, !noalias !11943 ; 3 uses
  %.not.i.i28.i.i = icmp eq ptr %.val24.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i28.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %i.al = getelementptr inbounds i8, ptr %.val24.i.i, i64 -16
  %i.am = atomicrmw add ptr %i.al, i64 1 monotonic, align 8, !noalias !11944
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.p, label %bb.s, !prof !13

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull %.val24.i.i, i64 noundef %.val25.i.i) #39
          to label %.noexc.i.i unwind label %bb.r, !noalias !11944

.noexc.i.i:                                       ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.v, %bb.r
  %.pn.i.i = phi { ptr, i32 } [ %i.au, %bb.v ], [ %i.ao, %bb.r ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #44
          to label %.thread unwind label %bb.w, !noalias !11944

bb.r:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.o, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.034.058, i64 32
  %.val26.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !11942, !noalias !11943, !nonnull !10, !noundef !10 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.034.058, i64 40
  %.val27.i.i = load i64, ptr %i.aq, align 8, !alias.scope !11942, !noalias !11943 ; 2 uses
  %.not.i.i29.i.i = icmp eq ptr %.val26.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i29.i.i, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds i8, ptr %.val26.i.i, i64 -16
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8, !noalias !11944
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.u, label %bb.x, !prof !13

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBO_8DiagSpanEECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull %.val26.i.i, i64 noundef %.val27.i.i) #39
          to label %.noexc30.i.i unwind label %bb.v, !noalias !11944

.noexc30.i.i:                                     ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEEECs8jFhWeO2DFb_9typst_pdf(ptr nonnull %.val24.i.i, i64 %.val25.i.i) #44
          to label %bb.q unwind label %bb.w, !noalias !11944

bb.w:                                             ; preds = %bb.v, %bb.q
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !11944
  unreachable

bb.x:                                             ; preds = %bb.t, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11944
  store <2 x i64> %i.ab, ptr %i.b, align 16
  store ptr %.val24.i.i, ptr %.sroa.6.0..sroa_idx, align 16
  store i64 %.val25.i.i, ptr %.sroa.7.0..sroa_idx, align 8
  store ptr %.val26.i.i, ptr %.sroa.8.0..sroa_idx, align 16
  store i64 %.val27.i.i, ptr %.sroa.9.0..sroa_idx, align 8
  store i8 %i.aa, ptr %.sroa.11.0..sroa_idx, align 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11945)
  %i.aw = load i64, ptr %i.u, align 8, !alias.scope !11945, !noundef !10
  %.val.i27 = load ptr, ptr %i.d, align 8, !alias.scope !11945, !nonnull !10, !noundef !10 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i27, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i, label %bb.z

bb.y:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b) #44
          to label %.thread unwind label %bb.aa, !inline_history !11940

bb.z:                                             ; preds = %bb.x
  %i.ay = getelementptr i8, ptr %.val.i27, i64 -8
  %.val.i.i = load i64, ptr %i.ay, align 8, !noalias !11946, !noundef !10
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.z, %bb.x
  %.sroa.02.0.i.i = phi i64 [ %.val.i.i, %bb.z ], [ 0, %bb.x ]
  %i.az = icmp eq i64 %i.aw, %.sroa.02.0.i.i
  %i.ba = zext i1 %i.az to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %i.ba)
          to label %.noexc26 unwind label %bb.y, !noalias !11947, !inline_history !11940

bb.aa:                                            ; preds = %bb.y
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !11947, !inline_history !11940
  unreachable

.noexc26:                                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  %i.bc = load ptr, ptr %i.d, align 8, !alias.scope !11945, !nonnull !10, !noundef !10 ; 2 uses
  %i.bd = load i64, ptr %i.u, align 8, !alias.scope !11945, !noundef !10 ; 2 uses
  %i.be = getelementptr inbounds nuw [72 x i8], ptr %i.bc, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.be, ptr noundef nonnull align 16 dereferenceable(72) %i.b, i64 72, i1 false)
  %i.bf = add i64 %i.bd, 1                        ; 2 uses
  store i64 %i.bf, ptr %i.u, align 8, !alias.scope !11945
  %i.bg = icmp eq ptr %i.y, %i.x
  br i1 %i.bg, label %._crit_edge, label %bb.l

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit.thread: ; preds = %bb.d, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit
  %i.bh = icmp ugt i64 %.sroa.0.0, %.sroa.02.0.i
  br i1 %i.bh, label %bb.ag, label %bb.ae

bb.ab:                                            ; preds = %._crit_edge
  %i.bi = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bl, ptr %0, align 8
  store i64 %i.bk, ptr %i.g, align 8
  br label %common.resume

bb.ac:                                            ; preds = %bb.n, %bb.k
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.thread

._crit_edge:                                      ; preds = %.noexc26, %.noexc.._crit_edge_crit_edge
  %i.bk = phi i64 [ %.pre69, %.noexc.._crit_edge_crit_edge ], [ %i.bf, %.noexc26 ] ; 2 uses
  %i.bl = phi ptr [ %.pre, %.noexc.._crit_edge_crit_edge ], [ %i.bc, %.noexc26 ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs8jFhWeO2DFb_9typst_pdf(ptr nonnull %i.v, i64 %i.w)
          to label %bb.ad unwind label %bb.ab

bb.ad:                                            ; preds = %._crit_edge
  store ptr %i.bl, ptr %0, align 8
  store i64 %i.bk, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit.thread, %bb.ad
  ret void

.thread:                                          ; preds = %bb.ac, %bb.q, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.ax, %bb.y ], [ %i.bj, %bb.ac ], [ %.pn.i.i, %bb.q ]
  %.val11 = load ptr, ptr %i.d, align 8, !nonnull !10, !noundef !10
  %.val12 = load i64, ptr %i.u, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs8jFhWeO2DFb_9typst_pdf(ptr nonnull %.val11, i64 %.val12) #44
          to label %common.resume unwind label %bb.af

bb.af:                                            ; preds = %.thread
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.ag:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit.thread
  tail call fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4growCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %.sroa.0.0)
  br label %bb.ae
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 9 uses
  %.val10 = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %.not.i = icmp eq ptr %.val10, inttoptr (i64 16 to ptr) ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.val10, i64 -16
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.val10, i64 -8
  %.val.i = load i64, ptr %i.e, align 8, !noundef !10
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !10 ; 3 uses
  %i.h = sub i64 %.sroa.02.0.i, %i.g
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit
  %i.j = add i64 %i.g, %1                         ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.g
  br i1 %i.k, label %bb.f, label %bb.e, !prof !13

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %..i18, %bb.e ], [ %.sroa.02.0.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit ] ; 4 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.d
  %i.l = load atomic i64, ptr %i.d acquire, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECs8jFhWeO2DFb_9typst_pdf.exit.thread, label %bb.g

end_hunk_3
begin_hunk_4_@_RNvNtCs8jFhWeO2DFb_9typst_pdf7convert12handle_frame:bb.a

bb.rj:                                            ; preds = %.noexc135
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsakL8LGkl72C_4ecow6string9EcoStringBX_EECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ei)
          to label %.noexc137 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.rk:                                            ; preds = %bb.rf
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model4link12ResolvedLinkECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ej)
          to label %.noexc137 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCsidf7BFzONoc_6krilla11interactive11destination16NamedDestinationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %.lr.ph.i.i.i
  %i.chz = getelementptr inbounds i8, ptr %i.chm, i64 -16
  %.val.i127 = load ptr, ptr %i.chz, align 8, !noalias !16273, !nonnull !10, !noundef !10 ; 2 uses
  %i.cia = getelementptr i8, ptr %i.chm, i64 -8
  %.val154.i = load ptr, ptr %i.cia, align 8, !noalias !16273 ; 3 uses
  %i.cib = atomicrmw add ptr %.val.i127, i64 1 monotonic, align 8, !noalias !16273
  %i.cic = icmp slt i64 %i.cib, 0
  br i1 %i.cic, label %bb.rm, label %bb.rl

bb.rl:                                            ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCsidf7BFzONoc_6krilla11interactive11destination16NamedDestinationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs8jFhWeO2DFb_9typst_pdf.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val154.i) ]
  %i.cid = atomicrmw add ptr %.val154.i, i64 1 monotonic, align 8, !noalias !16273
  %i.cie = icmp slt i64 %i.cid, 0
  br i1 %i.cie, label %bb.rn, label %_RNvXs7_NtNtCsidf7BFzONoc_6krilla11interactive11destinationNtB5_16NamedDestinationNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.rm:                                            ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCsidf7BFzONoc_6krilla11interactive11destination16NamedDestinationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs8jFhWeO2DFb_9typst_pdf.exit.i
  call void @llvm.trap()
  unreachable

bb.rn:                                            ; preds = %bb.rl
  call void @llvm.trap()
  unreachable

_RNvXs7_NtNtCsidf7BFzONoc_6krilla11interactive11destinationNtB5_16NamedDestinationNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %bb.rl
  store ptr %.val.i127, ptr %i.jq, align 8, !noalias !16265
  store ptr %.val154.i, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !16265
  store i64 -2, ptr %i.ek, align 8, !noalias !16265
  br label %.noexc136

select.unfold.i:                                  ; preds = %._crit_edge.i.i.i, %.noexc137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg), !noalias !16265
  %i.cif = load ptr, ptr %i.jr, align 8, !alias.scope !16263, !nonnull !10, !align !21, !noundef !10
  %i.cig = getelementptr inbounds nuw i8, ptr %i.cif, i64 136
  %i.cih = load ptr, ptr %i.cig, align 8, !noalias !16273, !nonnull !10, !noundef !10
  %i.cii = getelementptr inbounds nuw i8, ptr %i.cih, i64 16
  invoke void @_RNvMNtCs7tN9tvpkfrg_12typst_layout10introspectNtB2_17PagedIntrospector8position(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.eg, ptr noundef nonnull align 8 %i.cii, i128 noundef %.val171.pre.i)
          to label %.noexc139 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc139:                                        ; preds = %select.unfold.i
  %i.cij = load i64, ptr %i.eg, align 8, !noalias !16265, !noundef !10
  %.not136.i = icmp eq i64 %i.cij, 0
  br i1 %.not136.i, label %bb.rp, label %bb.ro

bb.ro:                                            ; preds = %.noexc139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i64 24, i1 false), !noalias !16265
  br label %bb.rq

bb.rp:                                            ; preds = %.noexc139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) @250, i64 24, i1 false), !noalias !16265
  br label %bb.rq

bb.rq:                                            ; preds = %bb.rp, %bb.ro
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !noalias !16265
  %i.cik = invoke fastcc noundef ptr @_RNvNtCs8jFhWeO2DFb_9typst_pdf4link10pos_to_xyz(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.js, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.eh)
          to label %.noexc140 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc140:                                        ; preds = %bb.rq
  %.not137.i = icmp eq ptr %i.cik, null
  br i1 %.not137.i, label %.thread441, label %bb.rr

bb.rr:                                            ; preds = %.noexc140
  store ptr null, ptr %i.jq, align 8, !noalias !16265
  store ptr %i.cik, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !16265
  store i64 -2, ptr %i.ek, align 8, !noalias !16265
  br label %.noexc136

bb.rs:                                            ; preds = %.noexc178.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ef, ptr noundef nonnull align 4 dereferenceable(16) %i.jv, i64 16, i1 false), !noalias !16265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !16272
  %i.cil = load ptr, ptr %i.im, align 8, !alias.scope !16263, !nonnull !10, !align !21, !noundef !10 ; 3 uses
  %i.cim = getelementptr inbounds nuw i8, ptr %i.cil, i64 91
  %i.cin = load i8, ptr %i.cim, align 1, !range !11, !noalias !16273, !noundef !10
  %i.cio = trunc nuw i8 %i.cin to i1
  %.not.i122 = xor i1 %i.cio, true
  %i.cip = load i8, ptr %i.in, align 8, !range !11, !alias.scope !16263
  %i.ciq = trunc nuw i8 %i.cip to i1              ; 2 uses
  %or.cond4.i = select i1 %.not.i122, i1 true, i1 %i.ciq
  br i1 %or.cond4.i, label %bb.rt, label %bb.ru

bb.rt:                                            ; preds = %bb.rs
  br i1 %i.ciq, label %bb.um, label %bb.uk

bb.ru:                                            ; preds = %bb.rs
  call void @llvm.experimental.noalias.scope.decl(metadata !16307)
  %i.cir = load i64, ptr %i.io, align 8, !alias.scope !16308, !noundef !10 ; 3 uses
  %i.cis = load i64, ptr %i.ip, align 8, !alias.scope !16308, !noundef !10 ; 2 uses
  %i.cit = icmp ult i64 %i.cir, %i.cis
  br i1 %i.cit, label %bb.rv, label %.invoke433.i

bb.rv:                                            ; preds = %bb.ru
  %i.ciu = load ptr, ptr %i.iq, align 8, !alias.scope !16308, !nonnull !10, !noundef !10
  %i.civ = getelementptr inbounds nuw [4 x i8], ptr %i.ciu, i64 %i.cir
  %.sroa.02.016.i.i = load i32, ptr %i.civ, align 4, !noalias !16309, !noundef !10 ; 2 uses
  %.not17.i.i = icmp eq i32 %.sroa.02.016.i.i, -1
  br i1 %.not17.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.rv
  %i.ciw = load i64, ptr %i.ix, align 8, !alias.scope !16308, !noundef !10 ; 2 uses
  %i.cix = load ptr, ptr %i.iw, align 8, !alias.scope !16308, !nonnull !10
  br label %bb.rw

bb.rw:                                            ; preds = %bb.ry, %.lr.ph.i.i
  %.sroa.02.018.i.i = phi i32 [ %.sroa.02.016.i.i, %.lr.ph.i.i ], [ %.sroa.02.0.i.i, %bb.ry ] ; 5 uses
  %i.ciy = zext i32 %.sroa.02.018.i.i to i64      ; 7 uses
  %i.ciz = icmp ugt i64 %i.ciw, %i.ciy
  br i1 %i.ciz, label %bb.rx, label %.invoke433.i

bb.rx:                                            ; preds = %bb.rw
  %i.cja = getelementptr inbounds nuw [80 x i8], ptr %i.cix, i64 %i.ciy ; 6 uses
  %i.cjb = getelementptr inbounds nuw i8, ptr %i.cja, i64 24
  %i.cjc = load i8, ptr %i.cjb, align 8, !range !53, !noalias !16309, !noundef !10
  %i.cjd = icmp eq i8 %i.cjc, 21
  br i1 %i.cjd, label %bb.sp, label %bb.ry

.invoke433.i:                                     ; preds = %bb.ru, %bb.rw
  %i.cje = phi i64 [ %i.ciy, %bb.rw ], [ %i.cir, %bb.ru ]
  %i.cjf = phi i64 [ %i.ciw, %bb.rw ], [ %i.cis, %bb.ru ]
  %i.cjg = phi ptr [ @60, %bb.rw ], [ @168, %bb.ru ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.cje, i64 noundef %i.cjf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cjg) #42
          to label %.cont434.i unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit265.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16273

.cont434.i:                                       ; preds = %.invoke433.i
  unreachable

bb.ry:                                            ; preds = %bb.rx
  %i.cjh = getelementptr inbounds nuw i8, ptr %i.cja, i64 72
  %.sroa.02.0.i.i = load i32, ptr %i.cjh, align 8, !noalias !16309, !noundef !10 ; 2 uses
  %.not.i181.i = icmp eq i32 %.sroa.02.0.i.i, -1
  br i1 %.not.i181.i, label %.loopexit.i, label %bb.rw

.loopexit.i:                                      ; preds = %bb.ry, %bb.rv
  %i.cji = invoke { ptr, i64 } @_RNvNtCsdaEETE4DqmE_13typst_library4diag14internal_error(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @251, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @252)
          to label %bb.rz unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit265.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16273 ; 2 uses

bb.rz:                                            ; preds = %.loopexit.i
  %i.cjj = extractvalue { ptr, i64 } %i.cji, 0    ; 10 uses
  %i.cjk = extractvalue { ptr, i64 } %i.cji, 1    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cjj) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !16265
  %.not.i.i.i.i.i = icmp eq ptr %i.cjj, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i, label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %bb.sa

bb.sa:                                            ; preds = %bb.rz
  %i.cjl = getelementptr inbounds i8, ptr %i.cjj, i64 -16
  %i.cjm = load atomic i64, ptr %i.cjl acquire, align 8, !noalias !16310
  %i.cjn = icmp eq i64 %i.cjm, 1
  %i.cjo = zext i1 %i.cjn to i8
  br label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8jFhWeO2DFb_9typst_pdf.exit.i.i

_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %bb.sa, %bb.rz
  %.sroa.02.0.i.i.i.i.i = phi i8 [ %i.cjo, %bb.sa ], [ 1, %bb.rz ] ; 2 uses
  store ptr %i.cjj, ptr %i.de, align 8, !noalias !16265
  store i64 %i.cjk, ptr %i.ku, align 8, !noalias !16265
  store i8 %.sroa.02.0.i.i.i.i.i, ptr %i.kv, align 8, !noalias !16265
  store i64 0, ptr %i.kw, align 8, !noalias !16265
  store i64 %i.cjk, ptr %i.kx, align 8, !noalias !16265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !16265
  %.not8.i.i = icmp eq i64 %i.cjk, 0
  br i1 %.not8.i.i, label %bb.sb, label %bb.sc, !prof !13

bb.sb:                                            ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8jFhWeO2DFb_9typst_pdf.exit.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #39
          to label %bb.sd unwind label %.body.thread5.i.i, !noalias !16273

bb.sc:                                            ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8jFhWeO2DFb_9typst_pdf.exit.i.i
  store i64 1, ptr %i.kw, align 8, !noalias !16265
  %i.cjp = trunc nuw i8 %.sroa.02.0.i.i.i.i.i to i1
  br i1 %i.cjp, label %bb.sf, label %bb.se

.body.thread5.i.i:                                ; preds = %bb.si, %bb.sb
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.sd:                                            ; preds = %bb.sb
  unreachable

bb.se:                                            ; preds = %bb.sc
  %i.cjq = getelementptr inbounds nuw i8, ptr %i.cjj, i64 15
  %i.cjr = load i8, ptr %i.cjq, align 1, !noalias !16273, !noundef !10
  %.not.i184.i = icmp sgt i8 %i.cjr, -1
  %i.cjs = getelementptr i8, ptr %i.cjj, i64 8    ; 2 uses
  br i1 %.not.i184.i, label %bb.sg, label %bb.sj

bb.sf:                                            ; preds = %bb.sc
  %.sroa.013.0.copyload.i.i = load ptr, ptr %i.cjj, align 8, !noalias !16273
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cjj, i64 8
  %.sroa.515.0.copyload.i.i = load i64, ptr %.sroa.515.0..sroa_idx.i.i, align 8, !noalias !16273
  br label %bb.sk

bb.sg:                                            ; preds = %bb.se
  %.val.i.i = load ptr, ptr %i.cjj, align 8, !noalias !16273, !nonnull !10, !noundef !10 ; 5 uses
  %.val27.i.i = load i64, ptr %i.cjs, align 8, !noalias !16273 ; 2 uses
  %.not.i.i.i185.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i185.i, label %bb.sk, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.cjt = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.cju = atomicrmw add ptr %i.cjt, i64 1 monotonic, align 8, !noalias !16273
  %i.cjv = icmp slt i64 %i.cju, 0
  br i1 %i.cjv, label %bb.si, label %bb.sk, !prof !13

bb.si:                                            ; preds = %bb.sh
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull %.val.i.i) #39
          to label %.noexc.i186.i unwind label %.body.thread5.i.i

.noexc.i186.i:                                    ; preds = %bb.si
  unreachable

bb.sj:                                            ; preds = %bb.se
  %.sroa.019.0.copyload.i.i = load ptr, ptr %i.cjj, align 1, !noalias !16273
  %.sroa.420.0.copyload.i.i = load i64, ptr %i.cjs, align 1, !noalias !16273
  br label %bb.sk

bb.sk:                                            ; preds = %bb.sj, %bb.sh, %bb.sg, %bb.sf
  %.sroa.515.0.i.i = phi i64 [ %.sroa.515.0.copyload.i.i, %bb.sf ], [ %.sroa.420.0.copyload.i.i, %bb.sj ], [ %.val27.i.i, %bb.sh ], [ %.val27.i.i, %bb.sg ]
  %.sroa.013.0.i.i = phi ptr [ %.sroa.013.0.copyload.i.i, %bb.sf ], [ %.sroa.019.0.copyload.i.i, %bb.sj ], [ %.val.i.i, %bb.sh ], [ %.val.i.i, %bb.sg ]
  store ptr %.sroa.013.0.i.i, ptr %i.dg, align 8, !noalias !16265
  store i64 %.sroa.515.0.i.i, ptr %.sroa.3.sroa.4.0..sroa_idx.i.i, align 8, !noalias !16265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !16265
  call void @llvm.experimental.noalias.scope.decl(metadata !16311)
  call void @llvm.experimental.noalias.scope.decl(metadata !16312)
  %i.cjw = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) 1)
          to label %bb.sn unwind label %bb.sm, !noalias !16313 ; 2 uses

bb.sl:                                            ; preds = %bb.sm
  %i.cjx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !16313
  unreachable

bb.sm:                                            ; preds = %bb.sk
  %i.cjy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.dg) #44
          to label %.body.thread.i.i unwind label %bb.sl, !noalias !16314

bb.sn:                                            ; preds = %bb.sk
  %i.cjz = extractvalue { i64, i64 } %i.cjw, 1
  %i.cka = extractvalue { i64, i64 } %i.cjw, 0
  store i8 0, ptr %i.ky, align 8, !alias.scope !16311, !noalias !16265
  store i64 %i.cka, ptr %i.df, align 8, !alias.scope !16311, !noalias !16265
  store i64 %i.cjz, ptr %i.kz, align 8, !alias.scope !16311, !noalias !16265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.la, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.dg, i64 16, i1 false), !alias.scope !16315, !noalias !16265
  store ptr inttoptr (i64 16 to ptr), ptr %i.lb, align 8, !alias.scope !16311, !noalias !16265
  store i64 0, ptr %i.lc, align 8, !alias.scope !16311, !noalias !16265
  store ptr inttoptr (i64 16 to ptr), ptr %i.ld, align 8, !alias.scope !16311, !noalias !16265
  store i64 0, ptr %i.le, align 8, !alias.scope !16311, !noalias !16265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !16265
  invoke fastcc void @_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic10with_hintsINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB1k_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.dd, ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.df, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.de)
          to label %.noexc187.i unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit265.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16273

.noexc187.i:                                      ; preds = %bb.sn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !16265
  %i.ckb = invoke fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.dd)
          to label %bb.uj unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit265.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16273

.body.thread.i.i:                                 ; preds = %bb.sm, %.body.thread5.i.i
  %eh.lpad-body4.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.body.thread5.i.i ], [ %i.cjy, %bb.sm ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(40) %i.de) #44
          to label %.thread.i unwind label %bb.so, !noalias !16273

bb.so:                                            ; preds = %.body.thread.i.i
  %i.ckc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !16273
  unreachable

bb.sp:                                            ; preds = %bb.rx
  %i.ckd = getelementptr inbounds nuw i8, ptr %i.cja, i64 32
  %i.cke = load ptr, ptr %i.ckd, align 8, !noalias !16273, !nonnull !10, !noundef !10 ; 4 uses
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.cke, i64 96
  %i.ckg = load i64, ptr %i.ckf, align 16, !range !19, !noalias !16273, !noundef !10
  %i.ckh = trunc nuw i64 %i.ckg to i1
  br i1 %i.ckh, label %bb.sq, label %_RNvXsv_NtCsakL8LGkl72C_4ecow6stringNtNtCs1xwejQucwHj_5alloc6string6StringINtNtCs3oUPovFnLWP_4core7convert4FromRNtB5_9EcoStringE4from.exit.i

bb.sq:                                            ; preds = %bb.sp
  %i.cki = getelementptr inbounds nuw i8, ptr %i.cke, i64 104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16316)
  %i.ckj = getelementptr inbounds nuw i8, ptr %i.cke, i64 119
  %i.ckk = load i8, ptr %i.ckj, align 1, !alias.scope !16317, !noalias !16273, !noundef !10 ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.ckk, -1            ; 2 uses
  %i.ckl = and i8 %i.ckk, 127
  %i.ckm = zext nneg i8 %i.ckl to i64
  %i.ckn = load ptr, ptr %i.cki, align 8, !alias.scope !16317, !noalias !16273, !nonnull !10
  %i.cko = getelementptr inbounds nuw i8, ptr %i.cke, i64 112
  %i.ckp = load i64, ptr %i.cko, align 16, !alias.scope !16317, !noalias !16273
  %.sroa.3.0.i.i.i = select i1 %.not.i.i.i, i64 %i.ckp, i64 %i.ckm ; 7 uses
  %.sroa.0.0.i.i.i = select i1 %.not.i.i.i, ptr %i.ckn, ptr %i.cki
  %.not.i1.i.i = icmp slt i64 %.sroa.3.0.i.i.i, 0
  br i1 %.not.i1.i.i, label %bb.ss, label %bb.sr, !prof !36

bb.sr:                                            ; preds = %bb.sq
  %i.ckq = icmp eq i64 %.sroa.3.0.i.i.i, 0
  br i1 %i.ckq, label %_RNvXsv_NtCsakL8LGkl72C_4ecow6stringNtNtCs1xwejQucwHj_5alloc6string6StringINtNtCs3oUPovFnLWP_4core7convert4FromRNtB5_9EcoStringE4from.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.sr
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16318
  %i.ckr = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %.sroa.3.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16318 ; 3 uses
  %i.cks = icmp eq ptr %i.ckr, null
  br i1 %i.cks, label %bb.ss, label %bb.st

bb.ss:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.sq
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.sq ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.3.0.i.i.i) #39
          to label %.noexc190.i unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit265.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16273

.noexc190.i:                                      ; preds = %bb.ss
  unreachable

bb.st:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ckr, ptr nonnull align 1 %.sroa.0.0.i.i.i, i64 %.sroa.3.0.i.i.i, i1 false), !noalias !16319
  br label %_RNvXsv_NtCsakL8LGkl72C_4ecow6stringNtNtCs1xwejQucwHj_5alloc6string6StringINtNtCs3oUPovFnLWP_4core7convert4FromRNtB5_9EcoStringE4from.exit.i

_RNvXsv_NtCsakL8LGkl72C_4ecow6stringNtNtCs1xwejQucwHj_5alloc6string6StringINtNtCs3oUPovFnLWP_4core7convert4FromRNtB5_9EcoStringE4from.exit.i: ; preds = %bb.st, %bb.sr, %bb.sp
  %.sroa.15.0.i = phi i64 [ undef, %bb.sp ], [ %.sroa.3.0.i.i.i, %bb.st ], [ 0, %bb.sr ] ; 2 uses
  %.sroa.12.0.i = phi ptr [ undef, %bb.sp ], [ %i.ckr, %bb.st ], [ inttoptr (i64 1 to ptr), %bb.sr ] ; 12 uses
  %.sroa.0271.0.i = phi i64 [ -1, %bb.sp ], [ %.sroa.3.0.i.i.i, %bb.st ], [ 0, %bb.sr ] ; 12 uses
  %.val168.i = load i64, ptr %i.iu, align 8, !alias.scope !16320, !noundef !10 ; 2 uses
  %.not.i.i191.i = icmp eq i64 %.val168.i, 0
  br i1 %.not.i.i191.i, label %bb.su, label %_RNvXs0_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i.i, !prof !13

bb.su:                                            ; preds = %_RNvXsv_NtCsakL8LGkl72C_4ecow6stringNtNtCs1xwejQucwHj_5alloc6string6StringINtNtCs3oUPovFnLWP_4core7convert4FromRNtB5_9EcoStringE4from.exit.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @529) #42
          to label %.noexc194.i unwind label %.thread355.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16273

.noexc194.i:                                      ; preds = %bb.su
  unreachable

_RNvXs0_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i.i: ; preds = %_RNvXsv_NtCsakL8LGkl72C_4ecow6stringNtNtCs1xwejQucwHj_5alloc6string6StringINtNtCs3oUPovFnLWP_4core7convert4FromRNtB5_9EcoStringE4from.exit.i
  %.val167.i = load ptr, ptr %i.iv, align 8, !alias.scope !16263, !nonnull !10, !noundef !10
  %i.ckt = getelementptr [160 x i8], ptr %.val167.i, i64 %.val168.i
  %.sroa.53.0..sroa_idx.i.i = getelementptr i8, ptr %i.ckt, i64 -36
  %.sroa.53.0.copyload.i.i = load i32, ptr %.sroa.53.0..sroa_idx.i.i, align 4, !noalias !16321
  %.not.i192.i = icmp eq i32 %.sroa.53.0.copyload.i.i, 2
  %i.cku = getelementptr inbounds nuw i8, ptr %i.cil, i64 88
  %i.ckv = load i8, ptr %i.cku, align 8, !range !11, !noalias !16273, !noundef !10 ; 2 uses
  br i1 %.not.i192.i, label %bb.sv, label %bb.ta

.thread355.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ua, %bb.td, %bb.tb, %bb.su, %.invoke.i
  %lpad.loopexit.split-lp4784 = landingpad { ptr, i32 }
          cleanup
  br label %.thread351.i

bb.sv:                                            ; preds = %_RNvXs0_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16322)
  call void @llvm.experimental.noalias.scope.decl(metadata !16323)
  call void @llvm.experimental.noalias.scope.decl(metadata !16324)
  %i.ckw = load i64, ptr %i.ki, align 8, !alias.scope !16325, !noundef !10 ; 4 uses
  switch i64 %i.ckw, label %bb.sw [
    i64 0, label %_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext19get_link_annotation.exit.thread.i
    i64 1, label %_RINvMs3_NtCsjFU9swAW47b_8indexmap3mapINtB6_8IndexMapINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBV_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtBX_4link14LinkAnnotationj1_ENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE12get_index_ofBO_EBX_.exit.i.i.i
  ]

bb.sw:                                            ; preds = %bb.sv
  %i.ckx = mul i64 %i.ciy, -1065810590584100411   ; 2 uses
  %i.cky = call noundef i64 @llvm.fshl.i64(i64 %i.ckx, i64 %i.ckx, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16326)
  %i.ckz = load ptr, ptr %i.kj, align 8, !alias.scope !16327, !nonnull !10, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16328)
  call void @llvm.experimental.noalias.scope.decl(metadata !16329)
  %i.cla = lshr i64 %i.cky, 57
  %i.clb = trunc nuw nsw i64 %i.cla to i8
  %i.clc = load i64, ptr %i.kl, align 8, !alias.scope !16330, !noundef !10 ; 2 uses
  %i.cld = load ptr, ptr %i.kk, align 8, !alias.scope !16330, !nonnull !10, !noundef !10 ; 2 uses
  %i.cle = insertelement <16 x i8> poison, i8 %i.clb, i64 0
  %i.clf = shufflevector <16 x i8> %i.cle, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.sx

bb.sx:                                            ; preds = %bb.sz, %bb.sw
  %.sroa.011.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.sw ], [ %i.cmb, %bb.sz ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.cky, %bb.sw ], [ %i.cmc, %bb.sz ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.clc ; 3 uses
  %i.clg = getelementptr inbounds nuw i8, ptr %i.cld, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i = load <16 x i8>, ptr %i.clg, align 1, !noalias !16331 ; 2 uses
  %i.clh = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, %i.clf
  %i.cli = bitcast <16 x i1> %i.clh to i16        ; 2 uses
  %.not.i.not36.i.i.i.i.i.i = icmp eq i16 %i.cli, 0
  br i1 %.not.i.not36.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.sx, %bb.sy
  %.sroa.05.0.i37.i.i.i.i.i.i = phi i16 [ %i.cma, %bb.sy ], [ %i.cli, %bb.sx ] ; 3 uses
  %i.clj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i.i.i.i, i1 true)
  %i.clk = zext nneg i16 %i.clj to i64
  %i.cll = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.clk
  %i.clm = and i64 %i.cll, %i.clc
  %i.cln = sub nsw i64 0, %i.clm
  %i.clo = getelementptr inbounds [8 x i8], ptr %i.cld, i64 %i.cln
  %i.clp = getelementptr inbounds i8, ptr %i.clo, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.clp, align 8, !noalias !16332, !noundef !10 ; 4 uses
  %i.clq = icmp ult i64 %.val.i.i.i.i.i.i.i, %i.ckw
  br i1 %i.clq, label %_RNCINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtNtCsjFU9swAW47b_8indexmap3map4core10equivalentINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB1W_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB1Y_4link14LinkAnnotationj1_EB1P_E0E0B1Y_.exit.i.i.i.i.i.i, label %.invoke.i

.invoke.i:                                        ; preds = %_RINvMs3_NtCsjFU9swAW47b_8indexmap3mapINtB6_8IndexMapINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBV_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtBX_4link14LinkAnnotationj1_ENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE12get_index_ofBO_EBX_.exit.thread3.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.clr = phi i64 [ %.val.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.5.0.i6.i.i.i, %_RINvMs3_NtCsjFU9swAW47b_8indexmap3mapINtB6_8IndexMapINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBV_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtBX_4link14LinkAnnotationj1_ENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE12get_index_ofBO_EBX_.exit.thread3.i.i.i ]
  %i.cls = phi ptr [ @94, %.lr.ph.i.i.i.i.i.i ], [ @39, %_RINvMs3_NtCsjFU9swAW47b_8indexmap3mapINtB6_8IndexMapINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBV_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtBX_4link14LinkAnnotationj1_ENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE12get_index_ofBO_EBX_.exit.thread3.i.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.clr, i64 noundef %i.ckw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cls) #42
          to label %.cont.i unwind label %.thread355.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16273

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNCINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtNtCsjFU9swAW47b_8indexmap3map4core10equivalentINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB1W_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB1Y_4link14LinkAnnotationj1_EB1P_E0E0B1Y_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.clt = getelementptr inbounds nuw [112 x i8], ptr %i.ckz, i64 %.val.i.i.i.i.i.i.i
  %i.clu = getelementptr inbounds nuw i8, ptr %i.clt, i64 104
  %.val2.i.i.i.i.i.i.i.i = load i32, ptr %i.clu, align 4, !noalias !16333, !noundef !10
  %i.clv = icmp eq i32 %.sroa.02.018.i.i, %.val2.i.i.i.i.i.i.i.i
  br i1 %i.clv, label %_RINvMs3_NtCsjFU9swAW47b_8indexmap3mapINtB6_8IndexMapINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBV_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtBX_4link14LinkAnnotationj1_ENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE12get_index_ofBO_EBX_.exit.thread3.i.i.i, label %bb.sy, !prof !16

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.sy, %bb.sx
  %i.clw = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, splat (i8 -1)
  %i.clx = bitcast <16 x i1> %i.clw to i16
  %i.cly = icmp eq i16 %i.clx, 0
  br i1 %i.cly, label %bb.sz, label %_RNvMs_NtCs8jFhWeO2DFb_9typst_pdf7convertNtB4_12FrameContext19get_link_annotation.exit.thread.i, !prof !13

bb.sy:                                            ; preds = %_RNCINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtNtCsjFU9swAW47b_8indexmap3map4core10equivalentINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB1W_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB1Y_4link14LinkAnnotationj1_EB1P_E0E0B1Y_.exit.i.i.i.i.i.i
  %i.clz = add i16 %.sroa.05.0.i37.i.i.i.i.i.i, -1
end_hunk_4
begin_hunk_5_@_RNvNtCs8jFhWeO2DFb_9typst_pdf7convert7convert:bb.a
  %i.acb = getelementptr inbounds nuw i8, ptr %i.ew, i64 56 ; 5 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.ew, i64 64 ; 10 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  %i.ace = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.acf = getelementptr inbounds nuw i8, ptr %i.fd, i64 64
  %i.acg = getelementptr inbounds nuw i8, ptr %i.fd, i64 72 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.fd, i64 224 ; 3 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.fd, i64 232
  %i.acj = getelementptr inbounds nuw i8, ptr %i.fd, i64 136 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 5 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.acl = getelementptr inbounds nuw i8, ptr %i.fc, i64 48 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.fb, i64 96
  %i.acn = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.aco = getelementptr inbounds nuw i8, ptr %i.fb, i64 48
  %i.acp = getelementptr inbounds nuw i8, ptr %i.fc, i64 24 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.ey, i64 112
  %i.acr = getelementptr inbounds nuw i8, ptr %i.ey, i64 136
  %i.acs = getelementptr inbounds nuw i8, ptr %i.ey, i64 144
  %i.act = getelementptr inbounds nuw i8, ptr %i.fc, i64 80
  %i.acu = getelementptr inbounds nuw i8, ptr %i.fc, i64 72
  %i.acv = getelementptr inbounds nuw i8, ptr %i.fc, i64 76
  %i.acw = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.acx = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.acy = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.acz = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  %i.ada = getelementptr inbounds nuw i8, ptr %i.ev, i64 56 ; 2 uses
  br i1 %i.me, label %.thread399, label %.lr.ph.split.i

.lr.ph.splitthread-pre-split.i:                   ; preds = %.backedge.i
  %.pr759.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !18016
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i103, %.lr.ph.splitthread-pre-split.i
  %i.adb = phi i64 [ %.pr759.i, %.lr.ph.splitthread-pre-split.i ], [ 1, %.lr.ph.i103 ]
  %.sroa.0.0256601.i = phi ptr [ %i.adc, %.lr.ph.splitthread-pre-split.i ], [ %i.abd, %.lr.ph.i103 ] ; 13 uses
  %.sroa.8.0600.i = phi i64 [ %i.add, %.lr.ph.splitthread-pre-split.i ], [ 0, %.lr.ph.i103 ] ; 5 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %.sroa.0.0256601.i, i64 176 ; 2 uses
  %i.add = add nuw nsw i64 %.sroa.8.0600.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18017)
  call void @llvm.experimental.noalias.scope.decl(metadata !18018)
  %i.ade = icmp eq i64 %i.adb, 0
  br i1 %i.ade, label %.backedge.i, label %bb.er

bb.er:                                            ; preds = %.lr.ph.split.i
  %i.adf = mul i64 %.sroa.8.0600.i, -1065810590584100411 ; 2 uses
  %i.adg = call noundef i64 @llvm.fshl.i64(i64 %i.adf, i64 %i.adf, i64 26) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18019)
  call void @llvm.experimental.noalias.scope.decl(metadata !18020)
  %i.adh = lshr i64 %i.adg, 57
  %i.adi = trunc nuw nsw i64 %i.adh to i8
  %i.adj = load i64, ptr %.sroa.4330.0..sroa_idx, align 8, !alias.scope !18021, !noundef !10 ; 2 uses
  %i.adk = load ptr, ptr %i.abm, align 8, !alias.scope !18021, !nonnull !10, !noundef !10 ; 2 uses
  %i.adl = insertelement <16 x i8> poison, i8 %i.adi, i64 0
  %i.adm = shufflevector <16 x i8> %i.adl, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %bb.es

bb.es:                                            ; preds = %bb.eu, %bb.er
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.er ], [ %i.aed, %bb.eu ]
  %.pn.i.i.i.i106 = phi i64 [ %i.adg, %bb.er ], [ %i.aee, %bb.eu ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i106, %i.adj ; 3 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adk, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.adn, align 1, !noalias !18022 ; 2 uses
  %i.ado = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.adm
  %i.adp = bitcast <16 x i1> %i.ado to i16        ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.adp, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i109, label %.lr.ph.i.i.i.i107

.lr.ph.i.i.i.i107:                                ; preds = %bb.es, %bb.et
  %.sroa.06.0.i31.i.i.i.i = phi i16 [ %i.aec, %bb.et ], [ %i.adp, %bb.es ] ; 3 uses
  %i.adq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i, i1 true)
  %i.adr = zext nneg i16 %i.adq to i64
  %i.ads = add i64 %.sroa.01.0.i.i.i.i.i, %i.adr
  %i.adt = and i64 %i.ads, %i.adj
  %i.adu = sub nsw i64 0, %i.adt
  %i.adv = getelementptr inbounds [16 x i8], ptr %i.adk, i64 %i.adu
  %i.adw = getelementptr inbounds i8, ptr %i.adv, i64 -16
  %.val2.i.i.i.i.i108 = load i64, ptr %i.adw, align 8, !noalias !18023, !noundef !10
  %i.adx = icmp eq i64 %.sroa.8.0600.i, %.val2.i.i.i.i.i108
  br i1 %i.adx, label %bb.ev, label %bb.et, !prof !16

._crit_edge.i.i.i.i109:                           ; preds = %bb.et, %bb.es
  %i.ady = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.adz = bitcast <16 x i1> %i.ady to i16
  %i.aea = icmp eq i16 %i.adz, 0
  br i1 %i.aea, label %bb.eu, label %.backedge.i, !prof !13

bb.et:                                            ; preds = %.lr.ph.i.i.i.i107
  %i.aeb = add i16 %.sroa.06.0.i31.i.i.i.i, -1
  %i.aec = and i16 %i.aeb, %.sroa.06.0.i31.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.aec, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i109, label %.lr.ph.i.i.i.i107

bb.eu:                                            ; preds = %._crit_edge.i.i.i.i109
  %i.aed = add i64 %.sroa.9.0.i.i.i.i.i, 16       ; 2 uses
  %i.aee = add i64 %.sroa.01.0.i.i.i.i.i, %i.aed
  br label %bb.es

bb.ev:                                            ; preds = %.lr.ph.i.i.i.i107
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ge), !noalias !18006
  %i.aef = getelementptr inbounds nuw i8, ptr %.sroa.0.0256601.i, i64 24 ; 3 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %.sroa.0.0256601.i, i64 136 ; 6 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %.sroa.0.0256601.i, i64 152 ; 3 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %.sroa.0.0256601.i, i64 144
  %i.aej = getelementptr inbounds nuw i8, ptr %.sroa.0.0256601.i, i64 160
  %i.aek = load <2 x double>, ptr %i.aef, align 8
  %i.ael = load <2 x double>, ptr %i.aeg, align 8
  %i.aem = fadd <2 x double> %i.aek, %i.ael       ; 2 uses
  %i.aen = fcmp ord <2 x double> %i.aem, zeroinitializer
  %i.aeo = select <2 x i1> %i.aen, <2 x double> %i.aem, <2 x double> zeroinitializer
  %i.aep = load <2 x double>, ptr %i.aeh, align 8
  %i.aeq = fadd <2 x double> %i.aep, %i.aeo       ; 2 uses
  %i.aer = fdiv <2 x double> %i.aeq, splat (double 1.270000e+02)
  %i.aes = fcmp ord <2 x double> %i.aeq, zeroinitializer
  %i.aet = select <2 x i1> %i.aes, <2 x double> %i.aer, <2 x double> zeroinitializer
  %i.aeu = fptrunc <2 x double> %i.aet to <2 x float>
  %i.aev = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.aeu, <2 x float> splat (float 3.000000e+00)) ; 2 uses
  %i.aew = extractelement <2 x float> %i.aev, i64 0
  %i.aex = extractelement <2 x float> %i.aev, i64 1
  invoke void @_RNvMNtCsidf7BFzONoc_6krilla4pageNtB2_12PageSettings7from_wh(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.ge, float noundef %i.aew, float noundef %i.aex)
          to label %.noexc131 unwind label %.body224.thread421.thread444.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc131:                                        ; preds = %bb.ev
  %i.aey = load i64, ptr %i.ge, align 8, !range !38, !noalias !18006, !noundef !10 ; 7 uses
  %.not100.i = icmp eq i64 %i.aey, -2
  br i1 %.not100.i, label %bb.ew, label %bb.fl

.backedge.i:                                      ; preds = %._crit_edge.i.i.i.i109, %.noexc139, %.lr.ph.split.i
  %i.aez = icmp eq ptr %i.adc, %i.abn
  br i1 %i.aez, label %.thread399, label %.lr.ph.splitthread-pre-split.i, !llvm.loop !17157

bb.ew:                                            ; preds = %.noexc131
  %i.afa = invoke { ptr, i64 } @_RNvNtCsdaEETE4DqmE_13typst_library4diag14internal_error(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @400, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @401)
          to label %.noexc132 unwind label %.body224.thread421.thread444.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc132:                                        ; preds = %bb.ew
  %i.afb = extractvalue { ptr, i64 } %i.afa, 0    ; 10 uses
  %i.afc = extractvalue { ptr, i64 } %i.afa, 1    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge), !noalias !18006
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.afb) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr), !noalias !18006
  %.not.i.i.i.i.i127 = icmp eq ptr %i.afb, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i127, label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %bb.ex

bb.ex:                                            ; preds = %.noexc132
  %i.afd = getelementptr inbounds i8, ptr %i.afb, i64 -16
  %i.afe = load atomic i64, ptr %i.afd acquire, align 8, !noalias !18025
  %i.aff = icmp eq i64 %i.afe, 1
  %i.afg = zext i1 %i.aff to i8
  br label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8jFhWeO2DFb_9typst_pdf.exit.i.i

_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %bb.ex, %.noexc132
  %.sroa.02.0.i.i.i.i.i = phi i8 [ %i.afg, %bb.ex ], [ 1, %.noexc132 ] ; 2 uses
  store ptr %i.afb, ptr %i.fr, align 8, !noalias !18006
  %i.afh = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i64 %i.afc, ptr %i.afh, align 8, !noalias !18006
  %i.afi = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  store i8 %.sroa.02.0.i.i.i.i.i, ptr %i.afi, align 8, !noalias !18006
  %i.afj = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  store i64 0, ptr %i.afj, align 8, !noalias !18006
  %i.afk = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  store i64 %i.afc, ptr %i.afk, align 8, !noalias !18006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft), !noalias !18006
  %.not8.i.i = icmp eq i64 %i.afc, 0
  br i1 %.not8.i.i, label %bb.ey, label %bb.ez, !prof !13

bb.ey:                                            ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8jFhWeO2DFb_9typst_pdf.exit.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #39
          to label %bb.fa unwind label %.body.thread5.i.i

bb.ez:                                            ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8jFhWeO2DFb_9typst_pdf.exit.i.i
  store i64 1, ptr %i.afj, align 8, !noalias !18006
  %i.afl = trunc nuw i8 %.sroa.02.0.i.i.i.i.i to i1
  br i1 %i.afl, label %bb.fc, label %bb.fb

.body.thread5.i.i:                                ; preds = %bb.ff, %bb.ey
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.fa:                                            ; preds = %bb.ey
  unreachable

bb.fb:                                            ; preds = %bb.ez
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afb, i64 15
  %i.afn = load i8, ptr %i.afm, align 1, !noundef !10
  %.not.i.i = icmp sgt i8 %i.afn, -1
  %i.afo = getelementptr i8, ptr %i.afb, i64 8    ; 2 uses
  br i1 %.not.i.i, label %bb.fd, label %bb.fg

bb.fc:                                            ; preds = %bb.ez
  %.sroa.013.0.copyload.i.i = load ptr, ptr %i.afb, align 8
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  %.sroa.515.0.copyload.i.i = load i64, ptr %.sroa.515.0..sroa_idx.i.i, align 8
  br label %bb.fh

bb.fd:                                            ; preds = %bb.fb
  %.val.i.i128 = load ptr, ptr %i.afb, align 8, !nonnull !10, !noundef !10 ; 5 uses
  %.val27.i.i = load i64, ptr %i.afo, align 8     ; 2 uses
  %.not.i.i.i.i129 = icmp eq ptr %.val.i.i128, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i129, label %bb.fh, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.afp = getelementptr inbounds i8, ptr %.val.i.i128, i64 -16
  %i.afq = atomicrmw add ptr %i.afp, i64 1 monotonic, align 8
  %i.afr = icmp slt i64 %i.afq, 0
  br i1 %i.afr, label %bb.ff, label %bb.fh, !prof !13

bb.ff:                                            ; preds = %bb.fe
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull %.val.i.i128) #39
          to label %.noexc.i.i130 unwind label %.body.thread5.i.i

.noexc.i.i130:                                    ; preds = %bb.ff
  unreachable

bb.fg:                                            ; preds = %bb.fb
  %.sroa.019.0.copyload.i.i = load ptr, ptr %i.afb, align 1
  %.sroa.420.0.copyload.i.i = load i64, ptr %i.afo, align 1
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.fe, %bb.fd, %bb.fc
  %.sroa.515.0.i.i = phi i64 [ %.sroa.515.0.copyload.i.i, %bb.fc ], [ %.sroa.420.0.copyload.i.i, %bb.fg ], [ %.val27.i.i, %bb.fe ], [ %.val27.i.i, %bb.fd ]
  %.sroa.013.0.i.i = phi ptr [ %.sroa.013.0.copyload.i.i, %bb.fc ], [ %.sroa.019.0.copyload.i.i, %bb.fg ], [ %.val.i.i128, %bb.fe ], [ %.val.i.i128, %bb.fd ]
  store ptr %.sroa.013.0.i.i, ptr %i.ft, align 8, !noalias !18006
  %.sroa.3.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i64 %.sroa.515.0.i.i, ptr %.sroa.3.sroa.4.0..sroa_idx.i.i, align 8, !noalias !18006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs), !noalias !18006
  call void @llvm.experimental.noalias.scope.decl(metadata !18026)
  call void @llvm.experimental.noalias.scope.decl(metadata !18027)
  %i.afs = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) 1)
          to label %_RNCNvXsa_NtCsdaEETE4DqmE_13typst_library4diagINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsidf7BFzONoc_6krilla4page12PageSettingsNtB7_12HintedStringEINtB7_2AtB1j_E2at0Cs8jFhWeO2DFb_9typst_pdf.exit.i unwind label %bb.fj, !noalias !18028 ; 2 uses

bb.fi:                                            ; preds = %bb.fj
  %i.aft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18028
  unreachable

bb.fj:                                            ; preds = %bb.fh
  %i.afu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.ft) #44
          to label %.body.thread.i.i unwind label %bb.fi, !noalias !18026

.body.thread.i.i:                                 ; preds = %bb.fj, %.body.thread5.i.i
  %eh.lpad-body4.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.body.thread5.i.i ], [ %i.afu, %bb.fj ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(40) %i.fr) #44
          to label %.thread391 unwind label %bb.fk

bb.fk:                                            ; preds = %.body.thread.i.i
  %i.afv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RNCNvXsa_NtCsdaEETE4DqmE_13typst_library4diagINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsidf7BFzONoc_6krilla4page12PageSettingsNtB7_12HintedStringEINtB7_2AtB1j_E2at0Cs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.fh
  %i.afw = extractvalue { i64, i64 } %i.afs, 1
  %i.afx = extractvalue { i64, i64 } %i.afs, 0
  %i.afy = getelementptr inbounds nuw i8, ptr %i.fs, i64 64
  store i8 0, ptr %i.afy, align 8, !alias.scope !18026, !noalias !18006
  store i64 %i.afx, ptr %i.fs, align 8, !alias.scope !18026, !noalias !18006
  %i.afz = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i64 %i.afw, ptr %i.afz, align 8, !alias.scope !18026, !noalias !18006
  %i.aga = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aga, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ft, i64 16, i1 false), !alias.scope !18028, !noalias !18006
  %i.agb = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %i.agb, align 8, !alias.scope !18026, !noalias !18006
  %i.agc = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  store i64 0, ptr %i.agc, align 8, !alias.scope !18026, !noalias !18006
  %i.agd = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  store ptr inttoptr (i64 16 to ptr), ptr %i.agd, align 8, !alias.scope !18026, !noalias !18006
  %i.age = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  store i64 0, ptr %i.age, align 8, !alias.scope !18026, !noalias !18006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq), !noalias !18006
  invoke fastcc void @_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic10with_hintsINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB1k_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.fq, ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.fr)
          to label %.noexc135 unwind label %.body224.thread421.thread444.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc135:                                        ; preds = %_RNCNvXsa_NtCsdaEETE4DqmE_13typst_library4diagINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsidf7BFzONoc_6krilla4page12PageSettingsNtB7_12HintedStringEINtB7_2AtB1j_E2at0Cs8jFhWeO2DFb_9typst_pdf.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs), !noalias !18006
  %i.agf = invoke fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.fq)
          to label %bb.ki unwind label %.body224.thread421.thread444.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.fl:                                            ; preds = %.noexc131
  %.sroa.463.0.copyload.i = load ptr, ptr %.sroa.463.0..sroa_idx.i, align 8, !noalias !18006 ; 6 uses
  %.sroa.564.0.copyload.i = load i64, ptr %.sroa.564.0..sroa_idx.i, align 8, !noalias !18006 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.13.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.665.0..sroa_idx.i, i64 120, i1 false), !noalias !18006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge), !noalias !18006
  call void @llvm.experimental.noalias.scope.decl(metadata !18029)
  %i.agg = load double, ptr %i.aeg, align 8, !alias.scope !18029, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp), !noalias !18030
  store double %i.agg, ptr %i.fp, align 8, !noalias !18030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo), !noalias !18030
  store double 0.000000e+00, ptr %i.fo, align 8, !noalias !18030
  %i.agh = invoke noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fo)
          to label %.noexc.i113 unwind label %bb.kg

.noexc.i113:                                      ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo), !noalias !18030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp), !noalias !18030
  br i1 %i.agh, label %bb.fm, label %_RNvMs2_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesNtNtB7_3abs3AbsE7is_zeroCs8jFhWeO2DFb_9typst_pdf.exit.thread.i

bb.fm:                                            ; preds = %.noexc.i113
  %i.agi = load double, ptr %i.aei, align 8, !alias.scope !18029, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn), !noalias !18030
  store double %i.agi, ptr %i.fn, align 8, !noalias !18030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm), !noalias !18030
  store double 0.000000e+00, ptr %i.fm, align 8, !noalias !18030
  %i.agj = invoke noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fm)
          to label %.noexc129.i unwind label %bb.kg

.noexc129.i:                                      ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm), !noalias !18030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn), !noalias !18030
  br i1 %i.agj, label %bb.fn, label %_RNvMs2_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesNtNtB7_3abs3AbsE7is_zeroCs8jFhWeO2DFb_9typst_pdf.exit.thread.i

bb.fn:                                            ; preds = %.noexc129.i
  %i.agk = load double, ptr %i.aeh, align 8, !alias.scope !18029, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl), !noalias !18030
  store double %i.agk, ptr %i.fl, align 8, !noalias !18030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk), !noalias !18030
  store double 0.000000e+00, ptr %i.fk, align 8, !noalias !18030
  %i.agl = invoke noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fk)
          to label %.noexc130.i unwind label %bb.kg

.noexc130.i:                                      ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk), !noalias !18030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl), !noalias !18030
  br i1 %i.agl, label %bb.fo, label %_RNvMs2_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesNtNtB7_3abs3AbsE7is_zeroCs8jFhWeO2DFb_9typst_pdf.exit.thread.i

bb.fo:                                            ; preds = %.noexc130.i
  %i.agm = load double, ptr %i.aej, align 8, !alias.scope !18029, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj), !noalias !18030
  store double %i.agm, ptr %i.fj, align 8, !noalias !18030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi), !noalias !18030
  store double 0.000000e+00, ptr %i.fi, align 8, !noalias !18030
  %i.agn = invoke noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fi)
          to label %_RNvMs2_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesNtNtB7_3abs3AbsE7is_zeroCs8jFhWeO2DFb_9typst_pdf.exit.i unwind label %bb.kg

_RNvMs2_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesNtNtB7_3abs3AbsE7is_zeroCs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi), !noalias !18030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj), !noalias !18030
  br i1 %i.agn, label %bb.fs, label %_RNvMs2_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesNtNtB7_3abs3AbsE7is_zeroCs8jFhWeO2DFb_9typst_pdf.exit.thread.i

bb.fp:                                            ; preds = %_RNvMs2_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesNtNtB7_3abs3AbsE7is_zeroCs8jFhWeO2DFb_9typst_pdf.exit.thread.i
  %i.ago = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agp = icmp sgt i64 %i.aey, 0
  br i1 %i.agp, label %bb.fq, label %.thread391

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.463.0.copyload.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.463.0.copyload.i, i64 noundef %i.aey, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18031
  br label %.thread391

_RNvMs2_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesNtNtB7_3abs3AbsE7is_zeroCs8jFhWeO2DFb_9typst_pdf.exit.thread.i: ; preds = %_RNvMs2_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesNtNtB7_3abs3AbsE7is_zeroCs8jFhWeO2DFb_9typst_pdf.exit.i, %.noexc130.i, %.noexc129.i, %.noexc.i113
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10219.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.10219.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.13.i, i64 120, i1 false), !noalias !18006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gd), !noalias !18006
  %i.agq = load <2 x double>, ptr %i.aeg, align 8 ; 2 uses
  %i.agr = fdiv <2 x double> %i.agq, splat (double 1.270000e+02)
  %i.ags = fptrunc <2 x double> %i.agr to <2 x float> ; 2 uses
  %i.agt = load <2 x double>, ptr %i.aef, align 8
  %i.agu = fadd <2 x double> %i.agq, %i.agt       ; 2 uses
  %i.agv = fdiv <2 x double> %i.agu, splat (double 1.270000e+02)
  %i.agw = fcmp ord <2 x double> %i.agu, zeroinitializer
  %i.agx = select <2 x i1> %i.agw, <2 x double> %i.agv, <2 x double> zeroinitializer
  %i.agy = fptrunc <2 x double> %i.agx to <2 x float> ; 2 uses
  %i.agz = extractelement <2 x float> %i.ags, i64 0
  %i.aha = extractelement <2 x float> %i.ags, i64 1
  %i.ahb = extractelement <2 x float> %i.agy, i64 0
  %i.ahc = extractelement <2 x float> %i.agy, i64 1
  invoke void @_RNvMs2_NtCsidf7BFzONoc_6krilla4geomNtB5_4Rect9from_ltrb(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.gd, float noundef %i.agz, float noundef %i.aha, float noundef %i.ahb, float noundef %i.ahc)
          to label %bb.fr unwind label %bb.fp

bb.fr:                                            ; preds = %_RNvMs2_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesNtNtB7_3abs3AbsE7is_zeroCs8jFhWeO2DFb_9typst_pdf.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10219.100..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %i.gd, i64 20, i1 false), !noalias !18006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.13.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.10219.i, i64 120, i1 false), !noalias !18006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd), !noalias !18006
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10219.i)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %_RNvMs2_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesNtNtB7_3abs3AbsE7is_zeroCs8jFhWeO2DFb_9typst_pdf.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc), !noalias !18006
  %i.ahd = getelementptr inbounds nuw i8, ptr %.sroa.0.0256601.i, i64 104
  %i.ahe = load i8, ptr %i.ahd, align 8, !range !70, !noundef !10
  %.not103.i = icmp eq i8 %i.ahe, -1
  br i1 %.not103.i, label %_RNCNvNtCs8jFhWeO2DFb_9typst_pdf7convert13convert_pages0B5_.exit.thread.i, label %bb.fu

bb.ft:                                            ; preds = %bb.kf, %bb.ke, %.loopexit.split-lp.i
  %i.ahf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.fu:                                            ; preds = %bb.fs
  %i.ahg = getelementptr inbounds nuw i8, ptr %.sroa.0.0256601.i, i64 72
  %i.ahh = getelementptr i8, ptr %.sroa.0.0256601.i, i64 168
  %.val118.i = load i64, ptr %i.ahh, align 8, !noundef !10
  invoke void @_RNvXNtCs8jFhWeO2DFb_9typst_pdf4pageNtNtCsidf7BFzONoc_6krilla4page9PageLabelNtB2_12PageLabelExt8generate(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.gc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ahg, i64 noundef %.val118.i)
          to label %_RNCNvNtCs8jFhWeO2DFb_9typst_pdf7convert13convert_pages0B5_.exit.i unwind label %bb.kg

_RNCNvNtCs8jFhWeO2DFb_9typst_pdf7convert13convert_pages0B5_.exit.i: ; preds = %bb.fu
  %.pr.i = load i64, ptr %i.gc, align 8, !alias.scope !18032, !noalias !18006 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18033)
  %.not.i133.i = icmp eq i64 %.pr.i, -2
  br i1 %.not.i133.i, label %_RNCNvNtCs8jFhWeO2DFb_9typst_pdf7convert13convert_pages0B5_.exit.thread.i, label %bb.fv

bb.fv:                                            ; preds = %_RNCNvNtCs8jFhWeO2DFb_9typst_pdf7convert13convert_pages0B5_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx222.i, i64 16, i1 false), !alias.scope !18034, !noalias !18006
  %.sroa.7223.0.copyload225.i = load i32, ptr %.sroa.7223.0..sroa_idx224.i, align 8, !alias.scope !18034, !noalias !18006
  %.sroa.8226.0.copyload228.i = load i8, ptr %.sroa.8226.0..sroa_idx227.i, align 4, !alias.scope !18034, !noalias !18006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9.0..sroa_idx229.i, i64 3, i1 false), !alias.scope !18034, !noalias !18006
  br label %bb.fx

_RNCNvNtCs8jFhWeO2DFb_9typst_pdf7convert13convert_pages0B5_.exit.thread.i: ; preds = %_RNCNvNtCs8jFhWeO2DFb_9typst_pdf7convert13convert_pages0B5_.exit.i, %bb.fs
  %.val119290.i = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !18015
  %.not.i.i.i126 = icmp eq i64 %.val119290.i, 0
  br i1 %.not.i.i.i126, label %bb.fy, label %bb.fw

bb.fw:                                            ; preds = %_RNCNvNtCs8jFhWeO2DFb_9typst_pdf7convert13convert_pages0B5_.exit.thread.i
  %i.ahi = icmp samesign ugt i64 %.sroa.8.0600.i, 4294967294
end_hunk_5
begin_hunk_6_@_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13table_cell_id:bb.a
  %lpad.loopexit.split-lp61 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = icmp eq i64 %.fr.i.i, 0
  %brmerge.i = select i1 %i.cp, i1 true, i1 %i.bx
  br i1 %brmerge.i, label %.body.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i.i.i: ; preds = %.split102.i.loopexit.split-lp.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21393
  br label %.body.i

_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.i.i: ; preds = %.split.i.i
  %i.cq = load i64, ptr %i.ak, align 8, !alias.scope !21391, !noalias !21382, !noundef !10 ; 2 uses
  %i.cr = icmp ugt i64 %i.cq, 16                  ; 2 uses
  %i.cs = load ptr, ptr %i.c, align 8, !alias.scope !21391, !noalias !21382, !nonnull !10
  %.sink10.i.i.i.i = select i1 %i.cr, ptr %i.cs, ptr %i.c
  %.sink9.i.i.i.i = select i1 %i.cr, ptr %i.am, ptr %i.ak ; 2 uses
  %.sink.i.i31.i.i = call i64 @llvm.umax.i64(i64 %i.cq, i64 16)
  %i.ct = load i64, ptr %.sink9.i.i.i.i, align 8, !alias.scope !21392, !noalias !21382, !noundef !10 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, %.sink.i.i31.i.i
  br i1 %i.cu, label %bb.w, label %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.i.i, !prof !13

bb.w:                                             ; preds = %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.i.i
  invoke fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E21reserve_one_uncheckedCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc33.i.i unwind label %.split102.i.loopexit.split-lp.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !21385

.noexc33.i.i:                                     ; preds = %bb.w
  %i.cv = load ptr, ptr %i.c, align 8, !alias.scope !21392, !noalias !21382, !nonnull !10, !noundef !10
  %.pre.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !21392, !noalias !21382
  br label %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.i.i

_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %.noexc33.i.i, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.i.i
  %i.cw = phi i64 [ %.pre.i.i.i, %.noexc33.i.i ], [ %i.ct, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.i.i ]
  %.sroa.01.0.i.i.i = phi ptr [ %i.am, %.noexc33.i.i ], [ %.sink9.i.i.i.i, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.i.i ] ; 2 uses
  %.sroa.0.0.i32.i.i = phi ptr [ %i.cv, %.noexc33.i.i ], [ %.sink10.i.i.i.i, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.i.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.i.i, i64 %i.cw
  store i8 %i.bo, ptr %i.cx, align 1, !noalias !21385
  %i.cy = load i64, ptr %.sroa.01.0.i.i.i, align 8, !alias.scope !21392, !noalias !21382, !noundef !10
  %i.cz = add i64 %i.cy, 1
  store i64 %i.cz, ptr %.sroa.01.0.i.i.i, align 8, !alias.scope !21392, !noalias !21382
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i21.us.i.i, %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.i.i, %.split.i.i, %.split.i.i
  %i.da = icmp eq i64 %.fr.i.i, 0
  %brmerge13.i = select i1 %i.da, i1 true, i1 %i.bx
  br i1 %brmerge13.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtBI_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EEECs8jFhWeO2DFb_9typst_pdf.exit41.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i39.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i39.i.i: ; preds = %.critedge.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21394
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtBI_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EEECs8jFhWeO2DFb_9typst_pdf.exit41.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtBI_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EEECs8jFhWeO2DFb_9typst_pdf.exit41.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i39.i.i, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21381
  br label %bb.x

.critedge79.i.i:                                  ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i.us.i.i
  store i64 %storemerge81.us.i.i, ptr %i.ay, align 8, !alias.scope !21384, !noalias !21382
  br i1 %i.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i47.i.i, label %bb.x

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i47.i.i: ; preds = %.critedge79.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %.sroa.625.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21395
  br label %bb.x

_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterAhj20_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i53.i.i: ; preds = %.thread70.i.i, %bb.s, %bb.q
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i55.i.i, label %.body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i55.i.i: ; preds = %_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterAhj20_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i53.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %.sroa.625.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21396
  br label %.body.i

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i55.i.i, %_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterAhj20_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i53.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i.i.i, %.split102.i.loopexit.split-lp.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.db, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i55.i.i ], [ %lpad.loopexit.split-lp61, %.split102.i.loopexit.split-lp.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp61, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i.i.i ], [ %i.db, %_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterAhj20_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i53.i.i ] ; 2 uses
  %.val3.i = load i64, ptr %i.ak, align 8, !alias.scope !21397, !noalias !21382, !noundef !10 ; 2 uses
  %i.dc = icmp ugt i64 %.val3.i, 16
  br i1 %i.dc, label %.body.sink.split, label %.body

bb.x:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i47.i.i, %.critedge79.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtBI_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EEECs8jFhWeO2DFb_9typst_pdf.exit41.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

.body.sink.split:                                 ; preds = %.body.i, %bb.y
  %.sink = phi ptr [ %i.i, %bb.y ], [ %i.c, %.body.i ]
  %.val15.sink = phi i64 [ %.val15, %bb.y ], [ %.val3.i, %.body.i ]
  %eh.lpad-body34.ph = phi { ptr, i32 } [ %eh.lpad-body.ph, %bb.y ], [ %eh.lpad-body.i, %.body.i ]
  %.val14 = load ptr, ptr %.sink, align 8, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14, i64 noundef %.val15.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !10
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.y, %.body.i
  %eh.lpad-body34 = phi { ptr, i32 } [ %eh.lpad-body.ph, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body34.ph, %.body.sink.split ]
  resume { ptr, i32 } %eh.lpad-body34

bb.y:                                             ; preds = %bb.b, %bb.l
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.r, %bb.b ] ; 2 uses
  %.val15 = load i64, ptr %i.l, align 8, !alias.scope !21398, !noundef !10 ; 2 uses
  %i.dd = icmp ugt i64 %.val15, 32
  br i1 %i.dd, label %.body.sink.split, label %.body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCs8jFhWeO2DFb_9typst_pdf4pageNtNtCsidf7BFzONoc_6krilla4page9PageLabelNtB2_12PageLabelExt8generate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !range !64, !noundef !10
  %i.h = icmp eq i8 %i.g, 2
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !10
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 -2, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.m = load i8, ptr %i.l, align 1, !noundef !10 ; 2 uses
  %i.n = and i8 %i.m, 127
  %i.o = zext nneg i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %.not2469 = icmp slt i8 %i.m, 0
  %.sroa.016.0 = select i1 %.not2469, i64 %i.o, i64 %i.q
  %i.r = icmp eq i64 %.sroa.016.0, 0
  br i1 %i.r, label %bb.g, label %bb.m

bb.f:                                             ; preds = %bb.u, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !60, !noundef !10 ; 2 uses
  switch i8 %i.t, label %bb.m [
    i8 0, label %bb.l
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
    i8 6, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = icmp ult i64 %2, 27
  br i1 %i.u, label %bb.l, label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.v = icmp ult i64 %2, 27
  br i1 %i.v, label %bb.l, label %bb.m

bb.j:                                             ; preds = %bb.g
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.h, %bb.j, %bb.k, %bb.g
  %.sroa.02.0 = phi i8 [ 2, %bb.k ], [ %i.t, %bb.g ], [ 3, %bb.h ], [ 1, %bb.j ], [ 4, %bb.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 15
  %i.x = load i8, ptr %i.w, align 1, !noundef !10 ; 2 uses
  %.not25 = icmp sgt i8 %i.x, -1
  br i1 %.not25, label %bb.n, label %.thread

bb.m:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %2, ptr %i.d, align 8
  call void @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library5model10numbering_NtB5_16NumberingPattern5apply(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef align 8 dereferenceable_or_null(200) null, i64 undef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef 1)
  %i.y = load i64, ptr %i.e, align 8, !range !19, !noundef !10
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %.split, label %.split.thread

bb.n:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !10 ; 3 uses
  %.not26 = icmp eq i64 %i.ab, 0
  br i1 %.not26, label %bb.s, label %bb.o

.thread:                                          ; preds = %bb.l
  %i.ac = and i8 %i.x, 127
  %.not2634 = icmp eq i8 %i.ac, 0
  br i1 %.not2634, label %bb.s, label %bb.r

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21402)
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !21402, !nonnull !10, !noundef !10 ; 5 uses
  %.not.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %.thread50, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds i8, ptr %.val.i, i64 -16
  %i.ae = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8, !noalias !21403
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.q, label %.thread50, !prof !13

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull %.val.i) #39
  unreachable

bb.r:                                             ; preds = %.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.013.0.copyload.i = load ptr, ptr %i.i, align 8, !alias.scope !21402
  %.sroa.414.0.copyload.i = load i64, ptr %i.ag, align 8, !alias.scope !21402
  br label %.thread50

.split:                                           ; preds = %bb.m
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsakL8LGkl72C_4ecow6string9EcoStringBX_EECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.u

.thread50:                                        ; preds = %bb.r, %bb.p, %bb.o
  %.sroa.5.sroa.3.0.ph.ph = phi i64 [ %.sroa.414.0.copyload.i, %bb.r ], [ %i.ab, %bb.o ], [ %i.ab, %bb.p ]
  %.sroa.5.sroa.0.0.ph.ph = phi ptr [ %.sroa.013.0.copyload.i, %bb.r ], [ %.val.i, %bb.o ], [ %.val.i, %bb.p ]
  %i.ah = icmp ugt i64 %2, 4294967295
  %i.ai = trunc nuw i64 %2 to i32
  %.sroa.06.04054 = select i1 %i.ah, i32 0, i32 %i.ai
  br label %bb.t

bb.s:                                             ; preds = %.thread, %bb.n
  %i.aj = icmp ugt i64 %2, 4294967295
  %i.ak = trunc nuw i64 %2 to i32
  %.sroa.06.040 = select i1 %i.aj, i32 0, i32 %i.ak
  br label %bb.u

.split.thread:                                    ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.031.0.copyload = load ptr, ptr %i.al, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.432.0.copyload = load i64, ptr %.sroa.432.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.t

bb.t:                                             ; preds = %.split.thread, %.thread50
  %i.am = phi i32 [ 0, %.split.thread ], [ %.sroa.06.04054, %.thread50 ]
  %.sroa.5.sroa.3.04249 = phi i64 [ %.sroa.432.0.copyload, %.split.thread ], [ %.sroa.5.sroa.3.0.ph.ph, %.thread50 ]
  %.sroa.5.sroa.0.04348 = phi ptr [ %.sroa.031.0.copyload, %.split.thread ], [ %.sroa.5.sroa.0.0.ph.ph, %.thread50 ]
  %.sroa.02.24547 = phi i8 [ -1, %.split.thread ], [ %.sroa.02.0, %.thread50 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.5.sroa.0.04348, ptr %i.b, align 8
  %.sroa.5.sroa.3.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.sroa.3.04249, ptr %.sroa.5.sroa.3.0..sroa_idx29, align 8
  call fastcc void @_RNvXsu_NtCsakL8LGkl72C_4ecow6stringNtNtCs1xwejQucwHj_5alloc6string6StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9EcoStringE4from(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.b) #40
  %.sroa.013.0.copyload = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.u:                                             ; preds = %.split, %bb.s, %bb.t
  %i.an = phi i32 [ %i.am, %bb.t ], [ %.sroa.06.040, %bb.s ], [ 0, %.split ]
  %.sroa.02.24546 = phi i8 [ %.sroa.02.24547, %bb.t ], [ %.sroa.02.0, %bb.s ], [ -1, %.split ]
  %.sroa.013.0 = phi i64 [ %.sroa.013.0.copyload, %bb.t ], [ -1, %bb.s ], [ -1, %.split ]
  store i64 %.sroa.013.0, ptr %0, align 8
  %.sroa.010.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.an, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %.sroa.02.24546, ptr %.sroa.512.0..sroa_idx, align 4
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCs8jFhWeO2DFb_9typst_pdf4tagsNtB2_9TagHandleNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !11, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !10, !align !21, !noundef !10
  tail call void @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface10end_tagged(ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %i.d)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util4propINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBU_4text3raw7RawElemKh1_EINtB2_17PropertyValCopiedB1X_bKB2o_E3valB8_(i8 %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr inttoptr (i64 16 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.not.i = icmp eq i8 %.0.val, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i8 %.0.val to i1
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4text3raw7RawElemKh1_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4text3raw1__NtB9_7RawElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 1) ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4text3raw7RawElemKh1_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21417)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !21417, !noalias !21418, !nonnull !10, !noundef !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !21417, !noalias !21418, !nonnull !10, !align !21, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !10, !noalias !21419, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21420
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !10, !noalias !21419, !nonnull !10
  call void %i.l(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.f) #40, !noalias !21419, !inline_history !21414
  %i.m = load i128, ptr %i.a, align 16, !noalias !21420, !noundef !10
  %i.n = icmp eq i128 %i.m, 74484837202795168974482589160156483361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21420
  br i1 %i.n, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4text3raw1__NtB9_7RawElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef range(i8 0, 12) 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e) #39, !noalias !21418
  unreachable

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %bb.d
  %i.o = load i8, ptr %i.f, align 1, !range !11, !alias.scope !21421, !noalias !21422, !noundef !10
  %i.p = trunc nuw i8 %i.o to i1
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4text3raw7RawElemKh1_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit

_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_4text3raw7RawElemKh1_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.b, %bb.c, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.p, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util4propINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBU_5model5quote9QuoteElemKh0_EINtB2_17PropertyValCopiedB1X_bKB2t_E3valB8_(i8 %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr inttoptr (i64 16 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.not.i = icmp eq i8 %.0.val, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i8 %.0.val to i1
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model5quote9QuoteElemKh0_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model5quote1__NtB9_9QuoteElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 0) ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model5quote9QuoteElemKh0_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21436)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !21436, !noalias !21437, !nonnull !10, !noundef !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !21436, !noalias !21437, !nonnull !10, !align !21, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !10, !noalias !21438, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21439
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !10, !noalias !21438, !nonnull !10
  call void %i.l(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.f) #40, !noalias !21438, !inline_history !21433
  %i.m = load i128, ptr %i.a, align 16, !noalias !21439, !noundef !10
  %i.n = icmp eq i128 %i.m, 74484837202795168974482589160156483361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21439
  br i1 %i.n, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model5quote1__NtB9_9QuoteElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef range(i8 0, 12) 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e) #39, !noalias !21437
  unreachable

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %bb.d
  %i.o = load i8, ptr %i.f, align 1, !range !11, !alias.scope !21440, !noalias !21441, !noundef !10
  %i.p = trunc nuw i8 %i.o to i1
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model5quote9QuoteElemKh0_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit

_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model5quote9QuoteElemKh0_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.b, %bb.c, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.p, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedbECs8jFhWeO2DFb_9typst_pdf.exit.i.i ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util4propINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBU_5model5table9TableCellKhb_EINtB2_17PropertyValCopiedB1X_bKB2t_E3valB8_(i8 %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr inttoptr (i64 16 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.not.i = icmp eq i8 %.0.val, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i8 %.0.val to i1
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model5table9TableCellKhb_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model5tables3_1__NtB9_9TableCellNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 11) ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_5model5table9TableCellKhb_E10get_clonedCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21455)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !21455, !noalias !21456, !nonnull !10, !noundef !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !21455, !noalias !21456, !nonnull !10, !align !21, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !10, !noalias !21457, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21458
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !10, !noalias !21457, !nonnull !10
end_hunk_6
