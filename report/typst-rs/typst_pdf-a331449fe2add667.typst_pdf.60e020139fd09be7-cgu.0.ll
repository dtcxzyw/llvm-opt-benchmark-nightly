Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7940
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvNtCs8jFhWeO2DFb_9typst_pdf5paint13convert_paint:bb.a
          to label %bb.br unwind label %.loopexit.split-lp360.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14117

bb.br:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit144.i.i
  %i.la = load i64, ptr %i.bj, align 8, !range !30, !noalias !14116, !noundef !10 ; 3 uses
  %i.lb = icmp eq i64 %i.la, -1                   ; 2 uses
  %i.lc = load i8, ptr %i.hb, align 8, !range !33, !noalias !14116
  %i.ld = icmp eq i8 %i.lc, 0
  %or.cond.i.i = select i1 %i.lb, i1 %i.ld, i1 false
  br i1 %or.cond.i.i, label %bb.ce, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.experimental.noalias.scope.decl(metadata !14145)
  br i1 %i.lb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit157.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.experimental.noalias.scope.decl(metadata !14146)
  call void @llvm.experimental.noalias.scope.decl(metadata !14147)
  %i.le = icmp eq i64 %i.la, 2
  br i1 %i.le, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit157.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.experimental.noalias.scope.decl(metadata !14148)
  %i.lf = icmp eq i64 %i.la, 0
  br i1 %i.lf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit157.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.experimental.noalias.scope.decl(metadata !14149)
  %.val.i.i.i.i.i145.i.i = load ptr, ptr %i.hb, align 8, !alias.scope !14150, !noalias !14116 ; 4 uses
  %.val1.i.i.i.i.i146.i.i = load i8, ptr %i.hc, align 1, !alias.scope !14150, !noalias !14116, !noundef !10
  %.not.i.i.i.i.i.i.i147.i.i = icmp sgt i8 %.val1.i.i.i.i.i146.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i147.i.i, label %bb.bw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit157.i.i

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i145.i.i) ]
  %.not.i.i.i.i.i.i.i.i.i148.i.i = icmp eq ptr %.val.i.i.i.i.i145.i.i, inttoptr (i64 16 to ptr)
  %i.lg = getelementptr inbounds i8, ptr %.val.i.i.i.i.i145.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i148.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit157.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i149.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i149.i.i: ; preds = %bb.bw
  %i.lh = atomicrmw add ptr %i.lg, i64 -1 release, align 8, !noalias !14151
  %.not.i.i.i.i.i.i.i.i150.i.i = icmp eq i64 %i.lh, 1
  br i1 %.not.i.i.i.i.i.i.i.i150.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i151.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit157.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i151.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i149.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !14152
  %i.li = getelementptr i8, ptr %.val.i.i.i.i.i145.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i.i152.i.i = load i64, ptr %i.li, align 8, !noalias !14151, !noundef !10 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i.i153.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i152.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i.i153.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i154.i.i, label %.invoke.i.i, !prof !16

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i154.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i151.i.i
  %i.lj = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i.i152.i.i, 16
  store ptr %i.lg, ptr %i.hd, align 8, !noalias !14152
  store i64 8, ptr %i.aw, align 8, !noalias !14152
  store i64 %i.lj, ptr %i.he, align 8, !noalias !14152
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %.noexc156.i.i unwind label %.loopexit.split-lp360.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14117

.noexc156.i.i:                                    ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i154.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !14152
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit157.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit157.i.i: ; preds = %.noexc156.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i149.i.i, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !14116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !14116
  invoke void @_RNvMsc_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8Gradient5space(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eh)
          to label %bb.bx unwind label %.loopexit.split-lp360.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14117

bb.bx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit157.i.i
  %i.lk = load i64, ptr %i.bi, align 8, !range !30, !noalias !14116, !noundef !10 ; 3 uses
  %i.ll = icmp eq i64 %i.lk, -1                   ; 2 uses
  %i.lm = load i8, ptr %i.hf, align 8, !range !33, !noalias !14116
  %i.ln = icmp eq i8 %i.lm, 0
  %or.cond87.i.i = select i1 %i.ll, i1 %i.ln, i1 false
  br i1 %or.cond87.i.i, label %bb.cd, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !14153)
  br i1 %i.ll, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit183.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.experimental.noalias.scope.decl(metadata !14154)
  call void @llvm.experimental.noalias.scope.decl(metadata !14155)
  %i.lo = icmp eq i64 %i.lk, 2
  br i1 %i.lo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit183.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.experimental.noalias.scope.decl(metadata !14156)
  %i.lp = icmp eq i64 %i.lk, 0
  br i1 %i.lp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit183.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !14157)
  %.val.i.i.i.i.i171.i.i = load ptr, ptr %i.hf, align 8, !alias.scope !14158, !noalias !14116 ; 4 uses
  %.val1.i.i.i.i.i172.i.i = load i8, ptr %i.hg, align 1, !alias.scope !14158, !noalias !14116, !noundef !10
  %.not.i.i.i.i.i.i.i173.i.i = icmp sgt i8 %.val1.i.i.i.i.i172.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i173.i.i, label %bb.cc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit183.i.i

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i171.i.i) ]
  %.not.i.i.i.i.i.i.i.i.i174.i.i = icmp eq ptr %.val.i.i.i.i.i171.i.i, inttoptr (i64 16 to ptr)
  %i.lq = getelementptr inbounds i8, ptr %.val.i.i.i.i.i171.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i174.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit183.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i175.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i175.i.i: ; preds = %bb.cc
  %i.lr = atomicrmw add ptr %i.lq, i64 -1 release, align 8, !noalias !14159
  %.not.i.i.i.i.i.i.i.i176.i.i = icmp eq i64 %i.lr, 1
  br i1 %.not.i.i.i.i.i.i.i.i176.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i177.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit183.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i177.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i175.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !14160
  %i.ls = getelementptr i8, ptr %.val.i.i.i.i.i171.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i.i178.i.i = load i64, ptr %i.ls, align 8, !noalias !14159, !noundef !10 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i.i179.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i178.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i.i179.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i180.i.i, label %.invoke.i.i, !prof !16

.invoke.i.i:                                      ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i177.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i151.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i138.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
          to label %.cont.i.i unwind label %.loopexit.split-lp360.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14117

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i180.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i177.i.i
  %i.lt = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i.i178.i.i, 16
  store ptr %i.lq, ptr %i.hh, align 8, !noalias !14160
  store i64 8, ptr %i.av, align 8, !noalias !14160
  store i64 %i.lt, ptr %i.hi, align 8, !noalias !14160
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %.noexc182.i.i unwind label %.loopexit.split-lp360.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14117

.noexc182.i.i:                                    ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i180.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !14160
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit183.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit183.i.i: ; preds = %.noexc182.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i175.i.i, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !14116
  br label %bb.bi

bb.cd:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !14116
  br label %bb.bm

bb.ce:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !14116
  br label %bb.bm

bb.cf:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !14161)
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ft, %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !14162)
  call void @llvm.experimental.noalias.scope.decl(metadata !14163)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !14164
  store i32 2, ptr %i.at, align 8, !noalias !14164
  br label %bb.cl

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i: ; preds = %bb.en, %bb.ei, %bb.cu, %bb.ct, %.body.i.i.i.i.i, %bb.ck
  %.pn7.i.i.ph.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i, %bb.ct ], [ %.pn.i.i.i.i.i, %.body.i.i.i.i.i ], [ %.pn.i.i.i.i.i, %bb.cu ], [ %i.qo, %bb.ei ], [ %i.ma, %bb.ck ], [ %i.rk, %bb.en ] ; 2 uses
  %.pr.i.i.i = load i32, ptr %i.at, align 8, !alias.scope !14165, !noalias !14166 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14165)
  %i.lu = icmp eq i32 %.pr.i.i.i, 2
  br i1 %i.lu, label %.body.i197.i.i, label %bb.ch

bb.ch:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.thread.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i
  %.pn7.i.i18.i.i.i = phi { ptr, i32 } [ %i.qd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.thread.i.i.i ], [ %.pn7.i.i.ph.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i ] ; 3 uses
  %i.lv = phi i32 [ %storemerge.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.thread.i.i.i ], [ %.pr.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !14167), !noalias !14168
  call void @llvm.experimental.noalias.scope.decl(metadata !14169), !noalias !14168
  %i.lw = icmp eq i32 %i.lv, 0
  br i1 %i.lw, label %.body.i197.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.experimental.noalias.scope.decl(metadata !14170), !noalias !14168
  call void @llvm.experimental.noalias.scope.decl(metadata !14171), !noalias !14168
  call void @llvm.experimental.noalias.scope.decl(metadata !14172), !noalias !14168
  %i.lx = load ptr, ptr %i.hw, align 8, !alias.scope !14173, !noalias !14166, !nonnull !10, !noundef !10
  %i.ly = atomicrmw add ptr %i.lx, i64 -1 release, align 8, !noalias !14174
  %i.lz = icmp eq i64 %i.ly, 1
  br i1 %i.lz, label %bb.cj, label %.body.i197.i.i

bb.cj:                                            ; preds = %bb.ci
  fence acquire, !noalias !14168
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.hw) #38
          to label %.body.i197.i.i unwind label %bb.eo, !noalias !14175

bb.ck:                                            ; preds = %bb.ej, %bb.dp, %bb.cl
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i

bb.cl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit33.i.i.i.i.i, %bb.cg
  %i.mb = load double, ptr %i.hj, align 8, !alias.scope !14176, !noalias !14116, !noundef !10
  %i.mc = load double, ptr %i.hk, align 8, !alias.scope !14176, !noalias !14116, !noundef !10
  %i.md = load <2 x i64>, ptr %i.hl, align 8, !alias.scope !14176, !noalias !14116
  %i.me = uitofp <2 x i64> %i.md to <2 x double>  ; 2 uses
  %i.mf = extractelement <2 x double> %i.me, i64 0
  %i.mg = fadd nnan double %i.mf, -5.000000e-01
  %i.mh = fmul double %i.mc, %i.mg
  %i.mi = extractelement <2 x double> %i.me, i64 1
  %i.mj = fdiv double %i.mh, %i.mi
  %i.mk = fadd double %i.mb, %i.mj                ; 2 uses
  %.inv.i.i.i.i.i.i = fcmp ord double %i.mk, 0.000000e+00
  %spec.store.select.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i, double %i.mk, double 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !14164
  %i.ml = load ptr, ptr %i.hn, align 8, !alias.scope !14176, !noalias !14116, !nonnull !10, !align !21, !noundef !10
  invoke void @_RNvMsc_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8Gradient6sample(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ml, i64 noundef 0, double noundef %spec.store.select.i.i.i.i.i.i)
          to label %bb.cm unwind label %bb.ck, !noalias !14177

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !14164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !14164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !14164
  call void @llvm.experimental.noalias.scope.decl(metadata !14178)
  call void @llvm.experimental.noalias.scope.decl(metadata !14179)
  %i.mm = load i32, ptr %i.bh, align 8, !range !14, !alias.scope !14180, !noalias !14181, !noundef !10
  %i.mn = trunc nuw i32 %i.mm to i1
  br i1 %i.mn, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.mo = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !14180, !noalias !14181, !nonnull !10, !noundef !10 ; 2 uses
  %i.mp = atomicrmw add ptr %i.mo, i64 1 monotonic, align 8, !noalias !14182
  %i.mq = icmp slt i64 %i.mp, 0
  br i1 %i.mq, label %bb.cp, label %bb.cq

bb.co:                                            ; preds = %bb.cm
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.hp, align 4, !alias.scope !14180, !noalias !14181
  %.sroa.6.0.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !14180, !noalias !14181
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cs, %bb.cn
  call void @llvm.trap()
  unreachable

bb.cq:                                            ; preds = %bb.co, %bb.cn
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.0.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.co ], [ %i.mo, %bb.cn ]
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %bb.co ], [ undef, %bb.cn ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.co ], [ 1, %bb.cn ]
  %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i = load double, ptr %.sroa.7.0.in.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !14180, !noalias !14181
  call void @llvm.experimental.noalias.scope.decl(metadata !14183)
  call void @llvm.experimental.noalias.scope.decl(metadata !14184)
  %i.mr = load i32, ptr %i.ho, align 8, !range !14, !alias.scope !14185, !noalias !14181, !noundef !10
  %i.ms = trunc nuw i32 %i.mr to i1
  br i1 %i.ms, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.sroa.01.0.copyload.i.i.i.1.i.i.i.i.i.i.i.i = load i32, ptr %i.hq, align 4, !alias.scope !14185, !noalias !14181
  %.sroa.6.0.pre.i.i.i.1.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.1.i.i.i.i.i.i.i.i, align 8, !alias.scope !14185, !noalias !14181
  br label %bb.cw

bb.cs:                                            ; preds = %bb.cq
  %i.mt = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.1.i.i.i.i.i.i.i.i, align 8, !alias.scope !14185, !noalias !14181, !nonnull !10, !noundef !10 ; 2 uses
  %i.mu = atomicrmw add ptr %i.mt, i64 1 monotonic, align 8, !noalias !14186
  %i.mv = icmp slt i64 %i.mu, 0
  br i1 %i.mv, label %bb.cp, label %bb.cw

.body.i.i.i.i.i:                                  ; preds = %bb.dj, %bb.di, %bb.dh, %.noexc9.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, %bb.cz, %bb.cv
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.nb, %bb.cv ], [ %i.nw, %bb.dj ], [ %i.nw, %bb.di ], [ %i.nw, %bb.dh ], [ %i.nj, %bb.cz ], [ %i.nj, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i ], [ %i.nj, %.noexc9.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14187)
  %i.mw = load i32, ptr %i.as, align 8, !range !14, !alias.scope !14187, !noalias !14164, !noundef !10
  %i.mx = icmp eq i32 %i.mw, 0
  br i1 %i.mx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %.body.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !14188)
  call void @llvm.experimental.noalias.scope.decl(metadata !14189)
  call void @llvm.experimental.noalias.scope.decl(metadata !14190)
  %i.my = load ptr, ptr %i.hu, align 8, !alias.scope !14191, !noalias !14164, !nonnull !10, !noundef !10
  %i.mz = atomicrmw add ptr %i.my, i64 -1 release, align 8, !noalias !14192
  %i.na = icmp eq i64 %i.mz, 1
  br i1 %i.na, label %bb.cu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i

bb.cu:                                            ; preds = %bb.ct
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.hu) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i unwind label %bb.eo, !noalias !14177

bb.cv:                                            ; preds = %bb.dn, %bb.cw
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

bb.cw:                                            ; preds = %bb.cs, %bb.cr
  %.sroa.6.0.i.i.i.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.0.pre.i.i.i.1.i.i.i.i.i.i.i.i, %bb.cr ], [ %i.mt, %bb.cs ]
  %.sroa.5.0.i.i.i.1.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.01.0.copyload.i.i.i.1.i.i.i.i.i.i.i.i, %bb.cr ], [ undef, %bb.cs ]
  %.sroa.0.0.i.i.i.1.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.cr ], [ 1, %bb.cs ]
  %.sroa.7.0.i.i.i.1.i.i.i.i.i.i.i.i = load double, ptr %.sroa.7.0.in.i.i.i.1.i.i.i.i.i.i.i.i, align 8, !alias.scope !14185, !noalias !14181
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ap, align 8, !noalias !14164
  store i32 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.474.0..sroa_idx.i.i.i.i.i, align 4, !noalias !14164
  store ptr %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.575.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14164
  store double %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.676.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14164
  store double 5.000000e-01, ptr %.sroa.777.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14164
  store i32 %.sroa.0.0.i.i.i.1.i.i.i.i.i.i.i.i, ptr %.sroa.878.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14164
  store i32 %.sroa.5.0.i.i.i.1.i.i.i.i.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 4, !noalias !14164
  store ptr %.sroa.6.0.i.i.i.1.i.i.i.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14164
  store double %.sroa.7.0.i.i.i.1.i.i.i.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14164
  store double 5.000000e-01, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !14164
  store i64 -1, ptr %i.ao, align 8, !noalias !14164
  store i8 2, ptr %.sroa.436.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14164
  invoke fastcc void @_RINvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB3_5Color8mix_iterINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtB3_13WeightedColorKj2_EAB1U_B2f_ECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.aq, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.ap, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.ao)
          to label %bb.cx unwind label %bb.cv, !noalias !14177

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !14164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !14164
  call void @llvm.experimental.noalias.scope.decl(metadata !14193)
  call void @llvm.experimental.noalias.scope.decl(metadata !14194)
  %i.nc = load i32, ptr %i.aq, align 8, !range !32, !alias.scope !14194, !noalias !14164, !noundef !10
  %i.nd = icmp eq i32 %i.nc, 2
  br i1 %i.nd, label %bb.cy, label %bb.dg, !prof !13

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !14195
  %i.ne = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !alias.scope !14194, !noalias !14164, !nonnull !10, !noundef !10
  %i.ng = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !alias.scope !14194, !noalias !14164, !noundef !10
  store ptr %i.nf, ptr %i.ak, align 8, !noalias !14195
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store i64 %i.nh, ptr %i.ni, align 8, !noalias !14195
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @162, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #39
          to label %bb.de unwind label %bb.cz, !noalias !14196

bb.cz:                                            ; preds = %bb.cy
  %i.nj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14197)
  %.val.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !14197, !noalias !14198, !nonnull !10, !noundef !10 ; 4 uses
  %.val1.i.i.i.i = load i64, ptr %i.ni, align 8, !alias.scope !14197, !noalias !14198
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, inttoptr (i64 16 to ptr)
  %i.nk = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.body.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i: ; preds = %bb.cz
  %i.nl = atomicrmw add ptr %i.nk, i64 -1 release, align 8, !noalias !14199
  %.not.i.i.i.i.i.i = icmp eq i64 %i.nl, 1
  br i1 %.not.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, label %.body.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i
  fence acquire, !noalias !14200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !14201
  %i.nm = getelementptr i8, ptr %.val.i.i.i.i, i64 -8
  %.val.i.i.i.i.i198.i.i = load i64, ptr %i.nm, align 8, !noalias !14199, !noundef !10 ; 2 uses
  %i.nn = icmp ult i64 %.val.i.i.i.i.i198.i.i, 1152921504606846976
  %i.no = shl i64 %.val.i.i.i.i.i198.i.i, 4       ; 2 uses
  %i.np = icmp ult i64 %i.no, 9223372036854775784
  %narrow.i.i.i.i.i.i.i.i = and i1 %i.nn, %i.np
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, label %bb.da, !prof !16

bb.da:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
          to label %.noexc8.i.i.i unwind label %bb.df, !noalias !14175

.noexc8.i.i.i:                                    ; preds = %bb.da
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i
  %i.nq = add nuw nsw i64 %i.no, 16
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.nk, ptr %i.nr, align 8, !noalias !14201
  store i64 8, ptr %i.ah, align 8, !noalias !14201
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.nq, ptr %i.ns, align 8, !noalias !14201
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i)
          to label %bb.dc unwind label %bb.db, !noalias !14199

bb.db:                                            ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i
  %i.nt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body10.i.i.i unwind label %bb.dd, !noalias !14199

bb.dc:                                            ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.noexc9.i.i.i unwind label %bb.df, !noalias !14175

.noexc9.i.i.i:                                    ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !14201
  br label %.body.i.i.i.i.i

bb.dd:                                            ; preds = %bb.db
  %i.nu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !14199
  unreachable

bb.de:                                            ; preds = %bb.cy
  unreachable

bb.df:                                            ; preds = %bb.dc, %bb.da
  %i.nv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body10.i.i.i

.body10.i.i.i:                                    ; preds = %bb.df, %bb.db
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !14196
  unreachable
end_hunk_0
