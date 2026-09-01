Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7942
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_RINvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB3_5Color8mix_iterINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtB3_13WeightedColorKj2_EAB1U_B2f_ECs8jFhWeO2DFb_9typst_pdf:bb.a
  br i1 %i.fn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit91.i, label %bb.be

bb.be:                                            ; preds = %_RNvXsU_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12SpotColorantNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1975)
  %.val.i.i.i.i79.i = load ptr, ptr %i.cb, align 8, !alias.scope !1978, !noalias !1754 ; 4 uses
  %.val1.i.i.i.i80.i = load i8, ptr %i.bz, align 1, !alias.scope !1978, !noalias !1754, !noundef !21
  %.not.i.i.i.i.i.i81.i = icmp sgt i8 %.val1.i.i.i.i80.i, -1
  br i1 %.not.i.i.i.i.i.i81.i, label %bb.bf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit91.i

bb.bf:                                            ; preds = %bb.be
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i79.i) ]
  %.not.i.i.i.i.i.i.i.i82.i = icmp eq ptr %.val.i.i.i.i79.i, inttoptr (i64 16 to ptr)
  %i.fo = getelementptr inbounds i8, ptr %.val.i.i.i.i79.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i82.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit91.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i83.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i83.i: ; preds = %bb.bf
  %i.fp = atomicrmw sub ptr %i.fo, i64 1 release, align 8, !noalias !1979
  %.not.i.i.i.i.i.i.i84.i = icmp eq i64 %i.fp, 1
  br i1 %.not.i.i.i.i.i.i.i84.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i85.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit91.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i85.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i83.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1979
  %i.fq = getelementptr i8, ptr %.val.i.i.i.i79.i, i64 -8
  %.val.i.i.i.i.i.i.i.i86.i = load i64, ptr %i.fq, align 8, !noalias !1979, !noundef !21 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i87.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i86.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i87.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i88.i, label %bb.bg, !prof !85

bb.bg:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i85.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
          to label %.noexc89.i unwind label %.loopexit.split-lp124.i, !noalias !1754

.noexc89.i:                                       ; preds = %bb.bg
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i88.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i85.i
  %i.fr = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i86.i, 16
  store ptr %i.fo, ptr %i.ch, align 8, !noalias !1979
  store i64 8, ptr %i.c, align 8, !noalias !1979
  store i64 %i.fr, ptr %i.ci, align 8, !noalias !1979
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc90.i unwind label %.loopexit123.i, !noalias !1754

.noexc90.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i88.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1979
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit91.i

bb.bh:                                            ; preds = %bb.az
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #44
          to label %bb.ae unwind label %bb.bi, !noalias !1754

bb.bi:                                            ; preds = %bb.bp, %bb.bo, %bb.bh, %bb.ag, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit53.i
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !1754
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit104.i: ; preds = %.noexc103.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i96.i, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit91.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1754
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.sroa.7.i)
  br label %bb.ak

bb.bj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit91.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1980)
  call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  %i.ft = icmp eq i64 %i.fk, 2
  br i1 %i.ft, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit104.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  %i.fu = icmp eq i64 %i.fk, 0
  br i1 %i.fu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit104.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !1989)
  %.val.i.i.i.i92.i = load ptr, ptr %i.cc, align 8, !alias.scope !1992, !noalias !1754 ; 4 uses
  %.val1.i.i.i.i93.i = load i8, ptr %i.bx, align 1, !alias.scope !1992, !noalias !1754, !noundef !21
  %.not.i.i.i.i.i.i94.i = icmp sgt i8 %.val1.i.i.i.i93.i, -1
  br i1 %.not.i.i.i.i.i.i94.i, label %bb.bm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit104.i

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i92.i) ]
  %.not.i.i.i.i.i.i.i.i95.i = icmp eq ptr %.val.i.i.i.i92.i, inttoptr (i64 16 to ptr)
  %i.fv = getelementptr inbounds i8, ptr %.val.i.i.i.i92.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i95.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit104.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i96.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i96.i: ; preds = %bb.bm
  %i.fw = atomicrmw sub ptr %i.fv, i64 1 release, align 8, !noalias !1993
  %.not.i.i.i.i.i.i.i97.i = icmp eq i64 %i.fw, 1
  br i1 %.not.i.i.i.i.i.i.i97.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i98.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit104.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i98.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i96.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1993
  %i.fx = getelementptr i8, ptr %.val.i.i.i.i92.i, i64 -8
  %.val.i.i.i.i.i.i.i.i99.i = load i64, ptr %i.fx, align 8, !noalias !1993, !noundef !21 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i100.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i99.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i100.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i101.i, label %bb.bn, !prof !85

bb.bn:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i98.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
          to label %.noexc102.i unwind label %.loopexit.split-lp.i, !noalias !1754

.noexc102.i:                                      ; preds = %bb.bn
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i101.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i98.i
  %i.fy = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i99.i, 16
  store ptr %i.fv, ptr %i.cj, align 8, !noalias !1993
  store i64 8, ptr %i.b, align 8, !noalias !1993
  store i64 %i.fy, ptr %i.ck, align 8, !noalias !1993
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc103.i unwind label %.loopexit.i, !noalias !1754

.noexc103.i:                                      ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1993
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit104.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit59.i: ; preds = %bb.am, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1754
  %i.fz = load i64, ptr %i.bs, align 8, !alias.scope !1816, !noalias !1994, !noundef !21 ; 2 uses
  %i.ga = load i64, ptr %i.h, align 8, !alias.scope !1816, !noalias !1994, !noundef !21 ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.fz, %i.ga
  br i1 %.not.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENCINvMB1F_NtB1F_5Color8mix_iterB19_AB1D_B2I_E0EECs8jFhWeO2DFb_9typst_pdf.exit51.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i.i

.thread.i:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i.i49.i, %bb.an, %bb.v
  %.pn42.pn114.i = phi { ptr, i32 } [ %.pn42.i, %bb.an ], [ %i.dh, %bb.v ], [ %i.dh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i.i49.i ] ; 3 uses
  %i.gb = load i64, ptr %i.i, align 8, !range !1841, !noalias !1754, !noundef !21
  switch i64 %i.gb, label %.loopexit438 [
    i64 1, label %bb.bo
    i64 2, label %bb.bp
  ]

bb.bo:                                            ; preds = %.thread.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bw) #44
          to label %.loopexit438 unwind label %bb.bi, !noalias !1754

bb.bp:                                            ; preds = %.thread.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bw) #44
          to label %.loopexit438 unwind label %bb.bi, !noalias !1754

.body286:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i335, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i294, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i313, %bb.gb, %bb.eb, %bb.ff, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit322, %bb.fb, %bb.dt, %.thread, %.body
  %.sroa.0129.0 = phi i1 [ %.sroa.0129.2, %.body ], [ %.sroa.0129.2395, %.thread ], [ %.not230, %bb.fb ], [ true, %bb.dt ], [ true, %bb.gb ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i335 ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i294 ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit322 ], [ true, %bb.ff ], [ true, %bb.eb ], [ %.not230, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i313 ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i ]
  %.pn237 = phi { ptr, i32 } [ %.pn235, %.body ], [ %.pn235396, %.thread ], [ %i.px, %bb.fb ], [ %i.ma, %bb.dt ], [ %i.ta, %bb.gb ], [ %i.ta, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i335 ], [ %i.nn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i294 ], [ %.pn226, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit322 ], [ %i.qj, %bb.ff ], [ %i.nn, %bb.eb ], [ %i.px, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i313 ], [ %i.ma, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i ] ; 2 uses
  %i.gc = load i64, ptr %i.ad, align 8, !range !1922, !noundef !21
  %i.gd = icmp ne i64 %i.gc, -1
  %or.cond = and i1 %.sroa.0129.0, %i.gd
  br i1 %or.cond, label %bb.gj, label %.thread427

.loopexit439:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i, %bb.l, %bb.m, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %.sroa.56.0..sroa_idx.i253 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.56.0..sroa_idx.i253, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  store i64 0, ptr %i.ab, align 8, !alias.scope !1998, !noalias !2001
  %.sroa.45.0..sroa_idx.i252 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  store i64 2, ptr %.sroa.45.0..sroa_idx.i252, align 8, !alias.scope !1998, !noalias !2001
  %.val244 = load i64, ptr %i.ad, align 8, !range !1922, !noundef !21
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %.not.i254 = icmp eq i64 %.val244, -1
  br i1 %.not.i254, label %.thread407, label %bb.br

.body:                                            ; preds = %bb.ej, %bb.bq
  %.sroa.0125.0 = phi i8 [ %.sroa.0125.2, %bb.ej ], [ %.sroa.0125.1, %bb.bq ]
  %.sroa.0129.2 = phi i1 [ false, %bb.ej ], [ true, %bb.bq ] ; 2 uses
  %.pn235 = phi { ptr, i32 } [ %i.om, %bb.ej ], [ %i.gg, %bb.bq ] ; 2 uses
  %i.gf = trunc nuw i8 %.sroa.0125.0 to i1
  br i1 %i.gf, label %.thread, label %.body286

bb.bq:                                            ; preds = %bb.fg, %bb.dn, %bb.dd, %bb.bt
  %.sroa.0125.1 = phi i8 [ 1, %bb.bt ], [ 1, %bb.dn ], [ 0, %bb.fg ], [ 1, %bb.dd ]
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread407:                                       ; preds = %.loopexit439
  %.val245 = load i8, ptr %i.ge, align 8
  switch i8 %.val245, label %bb.br [
    i8 1, label %bb.bs
    i8 5, label %bb.bs
    i8 6, label %bb.bs
  ]

bb.br:                                            ; preds = %.loopexit439, %.thread407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %i.ab, i64 80, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !2003, !noalias !2008, !noundef !21 ; 2 uses
  %i.gj = load i64, ptr %i.q, align 8, !alias.scope !2003, !noalias !2008, !noundef !21 ; 3 uses
  %.not.i.i288508 = icmp eq i64 %i.gi, %i.gj
  br i1 %.not.i.i288508, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit299, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289.lr.ph

bb.bs:                                            ; preds = %.thread407, %.thread407, %.thread407
  store i32 0, ptr %.sroa.0, align 4
  store i32 0, ptr %.sroa.22, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2011)
  call void @llvm.experimental.noalias.scope.decl(metadata !2014)
  store i64 1, ptr %i.ab, align 8, !alias.scope !2017, !noalias !2020
  %.sroa.0356.0.copyload = load i32, ptr %.sroa.56.0..sroa_idx.i253, align 8, !alias.scope !2021 ; 2 uses
  %.sroa.6360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %3 = load <2 x double>, ptr %.sroa.6360.0..sroa_idx, align 8
  %.not228 = icmp eq i32 %.sroa.0356.0.copyload, 2
  br i1 %.not228, label %bb.bt, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit262, !prof !24

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #39
          to label %bb.bu unwind label %bb.bq

bb.bu:                                            ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit262.thread, %bb.bt
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit264: ; preds = %bb.bz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266, %bb.ca, %bb.bx
  %.pn233 = phi { ptr, i32 } [ %i.gq, %bb.bx ], [ %.pn231, %bb.ca ], [ %.pn231, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266 ], [ %.pn231, %bb.bz ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2022)
  %i.gk = load i32, ptr %i.aa, align 8, !range !47, !alias.scope !2022, !noundef !21
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %.thread, label %bb.bv

bb.bv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit264
  %i.gm = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  call void @llvm.experimental.noalias.scope.decl(metadata !2028)
  call void @llvm.experimental.noalias.scope.decl(metadata !2031)
  %i.gn = load ptr, ptr %i.gm, align 8, !alias.scope !2034, !nonnull !21, !noundef !21
  %i.go = atomicrmw sub ptr %i.gn, i64 1 release, align 8, !noalias !2034
  %i.gp = icmp eq i64 %i.go, 1
  br i1 %i.gp, label %bb.bw, label %.thread

bb.bw:                                            ; preds = %bb.bv
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gm) #38
          to label %.thread unwind label %bb.di

bb.bx:                                            ; preds = %bb.dl, %bb.db, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit262.thread
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit264

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit262: ; preds = %bb.bs
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.4389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4389.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %i.gr, i64 20, i1 false)
  store i32 %.sroa.0356.0.copyload, ptr %i.aa, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2035)
  call void @llvm.experimental.noalias.scope.decl(metadata !2038)
  store i64 2, ptr %i.ab, align 8, !alias.scope !2041, !noalias !2044
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %.sroa.0361.0.copyload = load i32, ptr %i.gs, align 8, !alias.scope !2045 ; 2 uses
  %.sroa.6365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %.sroa.6365.0.copyload = load double, ptr %.sroa.6365.0..sroa_idx, align 8, !alias.scope !2045
  %.not229 = icmp eq i32 %.sroa.0361.0.copyload, 2
  br i1 %.not229, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit262.thread, label %bb.by, !prof !2046

bb.by:                                            ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit262
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.4391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4391.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %i.gt, i64 20, i1 false)
  store i32 %.sroa.0361.0.copyload, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color8to_space(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ad)
          to label %bb.cc unwind label %bb.cb

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit262.thread: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit262
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #39
          to label %bb.bu unwind label %bb.bx

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266: ; preds = %bb.cp, %bb.co, %bb.cq, %bb.cg, %bb.cf, %bb.ch, %bb.df, %bb.cb
  %.pn231 = phi { ptr, i32 } [ %i.ha, %bb.cb ], [ %i.kt, %bb.df ], [ %i.hj, %bb.cg ], [ %i.hj, %bb.ch ], [ %i.hj, %bb.cf ], [ %i.ic, %bb.cq ], [ %i.ic, %bb.co ], [ %i.ic, %bb.cp ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2047)
  %i.gu = load i32, ptr %i.z, align 8, !range !47, !alias.scope !2047, !noundef !21
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit264, label %bb.bz

bb.bz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266
  %i.gw = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2050)
  call void @llvm.experimental.noalias.scope.decl(metadata !2053)
  call void @llvm.experimental.noalias.scope.decl(metadata !2056)
  %i.gx = load ptr, ptr %i.gw, align 8, !alias.scope !2059, !nonnull !21, !noundef !21
  %i.gy = atomicrmw sub ptr %i.gx, i64 1 release, align 8, !noalias !2059
  %i.gz = icmp eq i64 %i.gy, 1
  br i1 %i.gz, label %bb.ca, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit264

bb.ca:                                            ; preds = %bb.bz
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gw) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit264 unwind label %bb.di

bb.cb:                                            ; preds = %bb.dg, %bb.ct, %bb.ck, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit268, %bb.by
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266

bb.cc:                                            ; preds = %bb.by
  %i.hb = load i32, ptr %i.w, align 8, !range !2060, !noundef !21 ; 2 uses
  %i.hc = icmp eq i32 %i.hb, 2
  br i1 %i.hc, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.hd = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !nonnull !21, !noundef !21
  %i.hf = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.hg = load i64, ptr %i.hf, align 8, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.he, ptr %i.hh, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hg, ptr %i.hi, align 8
  store i32 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.dj

bb.ce:                                            ; preds = %bb.cc
  %.sroa.4151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.sroa.4151.0.copyload = load i32, ptr %.sroa.4151.0..sroa_idx, align 4
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.5152.0.copyload = load ptr, ptr %.sroa.5152.0..sroa_idx, align 8
  %.sroa.6153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.6153.0.copyload = load i64, ptr %.sroa.6153.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i32 %i.hb, ptr %i.x, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %.sroa.4151.0.copyload, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 5 uses
  store ptr %.sroa.5152.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.6153.0.copyload, ptr %.sroa.612.0..sroa_idx, align 8
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color7to_vec4(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x)
          to label %bb.ci unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2061)
  %i.hk = load i32, ptr %i.x, align 8, !range !47, !alias.scope !2061, !noundef !21
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !2064)
  call void @llvm.experimental.noalias.scope.decl(metadata !2067)
  call void @llvm.experimental.noalias.scope.decl(metadata !2070)
  %i.hm = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2073, !nonnull !21, !noundef !21
  %i.hn = atomicrmw sub ptr %i.hm, i64 1 release, align 8, !noalias !2073
  %i.ho = icmp eq i64 %i.hn, 1
  br i1 %i.ho, label %bb.ch, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266

bb.ch:                                            ; preds = %bb.cg
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266 unwind label %bb.di

bb.ci:                                            ; preds = %bb.ce
  call void @llvm.experimental.noalias.scope.decl(metadata !2074)
  %i.hp = load i32, ptr %i.x, align 8, !range !47, !alias.scope !2074, !noundef !21
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit268, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.experimental.noalias.scope.decl(metadata !2077)
  call void @llvm.experimental.noalias.scope.decl(metadata !2080)
  call void @llvm.experimental.noalias.scope.decl(metadata !2083)
  %i.hr = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2086, !nonnull !21, !noundef !21
  %i.hs = atomicrmw sub ptr %i.hr, i64 1 release, align 8, !noalias !2086
  %i.ht = icmp eq i64 %i.hs, 1
  br i1 %i.ht, label %bb.ck, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit268

bb.ck:                                            ; preds = %bb.cj
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit268 unwind label %bb.cb

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit268: ; preds = %bb.cj, %bb.ci, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color8to_space(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ad)
          to label %bb.cl unwind label %bb.cb

bb.cl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit268
  %i.hu = load i32, ptr %i.t, align 8, !range !2060, !noundef !21 ; 2 uses
  %i.hv = icmp eq i32 %i.hu, 2
  br i1 %i.hv, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.hw = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !nonnull !21, !noundef !21
  %i.hy = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.hz = load i64, ptr %i.hy, align 8, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hx, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hz, ptr %i.ib, align 8
  store i32 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.dh

bb.cn:                                            ; preds = %bb.cl
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.sroa.4155.0.copyload = load i32, ptr %.sroa.4155.0..sroa_idx, align 4
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5156.0.copyload = load ptr, ptr %.sroa.5156.0..sroa_idx, align 8
  %.sroa.6157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.6157.0.copyload = load i64, ptr %.sroa.6157.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i32 %i.hu, ptr %i.u, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %.sroa.4155.0.copyload, ptr %.sroa.425.0..sroa_idx, align 4
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 5 uses
  store ptr %.sroa.5156.0.copyload, ptr %.sroa.526.0..sroa_idx, align 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sroa.6157.0.copyload, ptr %.sroa.627.0..sroa_idx, align 8
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color7to_vec4(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.cr unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  %i.id = load i32, ptr %i.u, align 8, !range !47, !alias.scope !2087, !noundef !21
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.experimental.noalias.scope.decl(metadata !2090)
  call void @llvm.experimental.noalias.scope.decl(metadata !2093)
  call void @llvm.experimental.noalias.scope.decl(metadata !2096)
  %i.if = load ptr, ptr %.sroa.526.0..sroa_idx, align 8, !alias.scope !2099, !nonnull !21, !noundef !21
  %i.ig = atomicrmw sub ptr %i.if, i64 1 release, align 8, !noalias !2099
  %i.ih = icmp eq i64 %i.ig, 1
  br i1 %i.ih, label %bb.cq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266

bb.cq:                                            ; preds = %bb.cp
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.526.0..sroa_idx) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266 unwind label %bb.di

bb.cr:                                            ; preds = %bb.cn
  call void @llvm.experimental.noalias.scope.decl(metadata !2100)
  %i.ii = load i32, ptr %i.u, align 8, !range !47, !alias.scope !2100, !noundef !21
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit272, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  call void @llvm.experimental.noalias.scope.decl(metadata !2106)
  call void @llvm.experimental.noalias.scope.decl(metadata !2109)
  %i.ik = load ptr, ptr %.sroa.526.0..sroa_idx, align 8, !alias.scope !2112, !nonnull !21, !noundef !21
  %i.il = atomicrmw sub ptr %i.ik, i64 1 release, align 8, !noalias !2112
  %i.im = icmp eq i64 %i.il, 1
  br i1 %i.im, label %bb.ct, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit272

bb.ct:                                            ; preds = %bb.cs
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.526.0..sroa_idx) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit272 unwind label %bb.cb

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit272: ; preds = %bb.cs, %bb.cr, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %4 = insertelement <2 x double> %3, double %.sroa.6365.0.copyload, i64 1
  %5 = fptrunc <2 x double> %4 to <2 x float>     ; 6 uses
  %6 = extractelement <2 x float> %5, i64 0       ; 2 uses
  %7 = extractelement <2 x float> %5, i64 1       ; 2 uses
  %i.in = fadd float %6, %7                       ; 3 uses
  %i.io = fcmp ugt float %i.in, 0.000000e+00
  br i1 %i.io, label %.preheader.preheader, label %bb.cu

.preheader.preheader:                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit272
  %i.ip = load float, ptr %i.y, align 16, !noundef !21 ; 2 uses
  %i.iq = load float, ptr %i.v, align 16, !noundef !21 ; 2 uses
  %i.ir = load <4 x float>, ptr %i.y, align 16
  %i.is = shufflevector <4 x float> %i.ir, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.it = load <4 x float>, ptr %i.v, align 16
  %i.iu = shufflevector <4 x float> %i.it, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.iv = load float, ptr %.sroa.5.0.i274.ph.sroa.gep640, align 8, !noundef !21 ; 2 uses
  %i.iw = load float, ptr %.sroa.5.0.i274.ph.sroa.gep643, align 8, !noundef !21 ; 2 uses
  %i.ix = insertelement <2 x float> poison, float %i.iv, i64 0
  %i.iy = insertelement <2 x float> %i.ix, float %i.iq, i64 1
  %i.iz = fmul <2 x float> %i.iy, %5
  %8 = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ja = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.jb = insertelement <2 x float> %i.ja, float %i.iw, i64 1
  %i.jc = fmul <2 x float> %i.jb, %5
  %i.jd = fadd <2 x float> %8, %i.jc
  %i.je = insertelement <2 x float> poison, float %i.in, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jg = fdiv <2 x float> %i.jd, %i.jf           ; 2 uses
  %bc = bitcast <2 x float> %i.jg to <2 x i32>
  %i.jh = extractelement <2 x i32> %bc, i64 0
  store i32 %i.jh, ptr %.sroa.0, align 4
  %bc941 = bitcast <2 x float> %i.jg to <2 x i32>
  %i.ji = extractelement <2 x i32> %bc941, i64 1
  store i32 %i.ji, ptr %.sroa.22, align 4
  %i.jj = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.jk = load float, ptr %i.jj, align 4, !noundef !21
  %i.jl = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.jm = load float, ptr %i.jl, align 4, !noundef !21
  %i.jn = insertelement <2 x float> %i.is, float %i.jk, i64 1
  %9 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jo = fmul <2 x float> %i.jn, %9
  %i.jp = insertelement <2 x float> %i.iu, float %i.jm, i64 1
  %10 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jq = fmul <2 x float> %i.jp, %10
  %i.jr = fadd <2 x float> %i.jo, %i.jq
  %i.js = fdiv <2 x float> %i.jr, %i.jf
  %.val = load i64, ptr %i.ad, align 8, !range !1922, !noundef !21
  %.not.i273 = icmp eq i64 %.val, -1
  br i1 %.not.i273, label %bb.cv, label %bb.cz

bb.cu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.r, i8 0, i64 15, i1 false)
  %.sroa.4163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 15
  store i8 -128, ptr %.sroa.4163.0..sroa_idx, align 1
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 31)
          to label %bb.dg unwind label %bb.df

bb.cv:                                            ; preds = %.preheader.preheader
  %.val241 = load i8, ptr %i.ge, align 8
  switch i8 %.val241, label %bb.cz [
    i8 1, label %bb.cx
    i8 5, label %bb.cw
    i8 6, label %bb.cw
  ]

bb.cw:                                            ; preds = %bb.cv, %bb.cv
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cv, %bb.cw
  %i.jt = phi float [ %i.iq, %bb.cw ], [ %i.iw, %bb.cv ] ; 4 uses
  %i.ju = phi float [ %i.ip, %bb.cw ], [ %i.iv, %bb.cv ] ; 4 uses
  %.sroa.5.0.i274.ph.sroa.phi = phi ptr [ %.sroa.0, %bb.cw ], [ %.sroa.22, %bb.cv ]
  %i.jv = fsub float %i.ju, %i.jt
  %i.jw = call float @llvm.fabs.f32(float %i.jv)
  %i.jx = fcmp ogt float %i.jw, 1.800000e+02
  br i1 %i.jx, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.jy = fcmp olt float %i.ju, %i.jt             ; 2 uses
  %i.jz = fadd float %i.ju, 3.600000e+02
  %i.ka = fadd float %i.jt, 3.600000e+02
  %.sroa.038.0 = select i1 %i.jy, float %i.jz, float %i.ju
  %.sroa.034.0 = select i1 %i.jy, float %i.jt, float %i.ka
  %i.kb = fmul float %.sroa.038.0, %6
  %i.kc = fmul float %.sroa.034.0, %7
  %i.kd = fadd float %i.kb, %i.kc
  %i.ke = fdiv float %i.kd, %i.in
  store float %i.ke, ptr %.sroa.5.0.i274.ph.sroa.phi, align 4
  br label %bb.cz

bb.cz:                                            ; preds = %.preheader.preheader, %bb.cv, %bb.cx, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.experimental.noalias.scope.decl(metadata !2113)
  %i.kf = load i32, ptr %i.z, align 8, !range !47, !alias.scope !2113, !noundef !21
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit278, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.kh = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2116)
  call void @llvm.experimental.noalias.scope.decl(metadata !2119)
  call void @llvm.experimental.noalias.scope.decl(metadata !2122)
  %i.ki = load ptr, ptr %i.kh, align 8, !alias.scope !2125, !nonnull !21, !noundef !21
  %i.kj = atomicrmw sub ptr %i.ki, i64 1 release, align 8, !noalias !2125
  %i.kk = icmp eq i64 %i.kj, 1
  br i1 %i.kk, label %bb.db, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit278

bb.db:                                            ; preds = %bb.da
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.kh) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit278 unwind label %bb.bx

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit278: ; preds = %bb.da, %bb.cz, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.experimental.noalias.scope.decl(metadata !2126)
  %i.kl = load i32, ptr %i.aa, align 8, !range !47, !alias.scope !2126, !noundef !21
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit280, label %bb.dc

bb.dc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit278
  %i.kn = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2129)
  call void @llvm.experimental.noalias.scope.decl(metadata !2132)
  call void @llvm.experimental.noalias.scope.decl(metadata !2135)
  %i.ko = load ptr, ptr %i.kn, align 8, !alias.scope !2138, !nonnull !21, !noundef !21
  %i.kp = atomicrmw sub ptr %i.ko, i64 1 release, align 8, !noalias !2138
  %i.kq = icmp eq i64 %i.kp, 1
  br i1 %i.kq, label %bb.dd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit280

bb.dd:                                            ; preds = %bb.dc
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.kn) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit280 unwind label %bb.bq

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit280: ; preds = %bb.dc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit278, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.de

bb.de:                                            ; preds = %bb.eg, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit280
  %.sroa.0125.2 = phi i8 [ 0, %bb.eg ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit280 ] ; 2 uses
  %i.kr = phi <2 x float> [ %i.of, %bb.eg ], [ %i.js, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit280 ] ; 15 uses
  %i.ks = load i64, ptr %i.ad, align 8, !range !1922, !noundef !21
  %.not230 = icmp eq i64 %i.ks, -1                ; 3 uses
  br i1 %.not230, label %bb.el, label %bb.eh

bb.df:                                            ; preds = %bb.cu
  %i.kt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r) #44
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266 unwind label %bb.di

bb.dg:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ku = invoke { ptr, i64 } @_RNvMs8_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedString3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.s)
          to label %_RNvXs9_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedStringINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCsakL8LGkl72C_4ecow6string9EcoStringE4fromCs8jFhWeO2DFb_9typst_pdf.exit unwind label %bb.cb ; 2 uses

_RNvXs9_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedStringINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCsakL8LGkl72C_4ecow6string9EcoStringE4fromCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.dg
  %i.kv = extractvalue { ptr, i64 } %i.ku, 0
  %i.kw = extractvalue { ptr, i64 } %i.ku, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kv, ptr %i.kx, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.kw, ptr %i.ky, align 8
  store i32 2, ptr %0, align 8
  br label %bb.dh

bb.dh:                                            ; preds = %_RNvXs9_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedStringINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCsakL8LGkl72C_4ecow6string9EcoStringE4fromCs8jFhWeO2DFb_9typst_pdf.exit, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.dj

bb.di:                                            ; preds = %bb.fr, %bb.fi, %bb.cq, %bb.ch, %bb.ca, %bb.bw, %.loopexit438, %bb.gj, %.thread, %bb.ff, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit322, %bb.df
  %i.kz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.dj:                                            ; preds = %bb.dh, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.experimental.noalias.scope.decl(metadata !2139)
  %i.la = load i32, ptr %i.z, align 8, !range !47, !alias.scope !2139, !noundef !21
  %i.lb = icmp eq i32 %i.la, 0
  br i1 %i.lb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit283, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.lc = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2142)
  call void @llvm.experimental.noalias.scope.decl(metadata !2145)
  call void @llvm.experimental.noalias.scope.decl(metadata !2148)
  %i.ld = load ptr, ptr %i.lc, align 8, !alias.scope !2151, !nonnull !21, !noundef !21
  %i.le = atomicrmw sub ptr %i.ld, i64 1 release, align 8, !noalias !2151
  %i.lf = icmp eq i64 %i.le, 1
  br i1 %i.lf, label %bb.dl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit283

bb.dl:                                            ; preds = %bb.dk
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.lc) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit283 unwind label %bb.bx

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit283: ; preds = %bb.dk, %bb.dj, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.experimental.noalias.scope.decl(metadata !2152)
  %i.lg = load i32, ptr %i.aa, align 8, !range !47, !alias.scope !2152, !noundef !21
  %i.lh = icmp eq i32 %i.lg, 0
  br i1 %i.lh, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit283
  %i.li = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2155)
  call void @llvm.experimental.noalias.scope.decl(metadata !2158)
  call void @llvm.experimental.noalias.scope.decl(metadata !2161)
  %i.lj = load ptr, ptr %i.li, align 8, !alias.scope !2164, !nonnull !21, !noundef !21
  %i.lk = atomicrmw sub ptr %i.lj, i64 1 release, align 8, !noalias !2164
  %i.ll = icmp eq i64 %i.lk, 1
  br i1 %i.ll, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.li) #38
          to label %bb.do unwind label %bb.bq

bb.do:                                            ; preds = %bb.dn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit283, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.lm = load i64, ptr %i.ab, align 8, !alias.scope !2165, !noundef !21 ; 3 uses
  %i.ln = load i64, ptr %.sroa.45.0..sroa_idx.i252, align 8, !alias.scope !2165, !noundef !21 ; 2 uses
  %i.lo = icmp eq i64 %i.ln, %i.lm
  br i1 %i.lo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.lp = sub nuw i64 %i.ln, %i.lm                ; 3 uses
  %i.lq = getelementptr inbounds nuw [32 x i8], ptr %.sroa.56.0..sroa_idx.i253, i64 %i.lm ; 2 uses
  br label %bb.dq

bb.dq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i, %bb.dp
  %.sroa.0.09.i.i.i.i.i.i.i = phi i64 [ 0, %bb.dp ], [ %i.ls, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.lr = getelementptr inbounds nuw [32 x i8], ptr %i.lq, i64 %.sroa.0.09.i.i.i.i.i.i.i ; 2 uses
  %i.ls = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i, 1 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2174)
  call void @llvm.experimental.noalias.scope.decl(metadata !2177)
  %i.lt = load i32, ptr %i.lr, align 8, !range !47, !alias.scope !2180, !noundef !21
  %i.lu = icmp eq i32 %i.lt, 0
  br i1 %i.lu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2187)
  call void @llvm.experimental.noalias.scope.decl(metadata !2190)
  call void @llvm.experimental.noalias.scope.decl(metadata !2193)
  %i.lw = load ptr, ptr %i.lv, align 8, !alias.scope !2196, !nonnull !21, !noundef !21
  %i.lx = atomicrmw sub ptr %i.lw, i64 1 release, align 8, !noalias !2197
  %i.ly = icmp eq i64 %i.lx, 1
  br i1 %i.ly, label %bb.ds, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i

bb.ds:                                            ; preds = %bb.dr
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.lv) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i unwind label %bb.dt

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i: ; preds = %bb.ds, %bb.dr, %bb.dq
  %i.lz = icmp eq i64 %i.ls, %i.lp
  br i1 %i.lz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.dq

bb.dt:                                            ; preds = %bb.ds
  %i.ma = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mb = icmp eq i64 %i.ls, %i.lp
  br i1 %i.mb, label %.body286, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.dt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i
  %.sroa.0.110.i.i.i.i.i.i.i = phi i64 [ %i.md, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i ], [ %i.ls, %bb.dt ] ; 2 uses
  %i.mc = getelementptr inbounds nuw [32 x i8], ptr %i.lq, i64 %.sroa.0.110.i.i.i.i.i.i.i ; 2 uses
  %i.md = add i64 %.sroa.0.110.i.i.i.i.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2198)
  call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  %i.me = load i32, ptr %i.mc, align 8, !range !47, !alias.scope !2204, !noundef !21
  %i.mf = icmp eq i32 %i.me, 0
  br i1 %i.mf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i, label %bb.du

bb.du:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mc, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2205)
  call void @llvm.experimental.noalias.scope.decl(metadata !2208)
  call void @llvm.experimental.noalias.scope.decl(metadata !2211)
end_hunk_0
