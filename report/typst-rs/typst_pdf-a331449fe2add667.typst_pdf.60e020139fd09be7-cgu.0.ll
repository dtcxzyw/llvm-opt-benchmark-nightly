Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7940
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E8try_growCs8jFhWeO2DFb_9typst_pdf:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i, ptr %i.q, align 8, !noalias !12437
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #42, !noalias !12437
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10deallocatehECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.k
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %.sink.i, i64 noundef 1) #41
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayhECs8jFhWeO2DFb_9typst_pdf.exit46, %bb.h, %_RINvCsiSzwKAiqS6b_8smallvec10deallocatehECs8jFhWeO2DFb_9typst_pdf.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsiSzwKAiqS6b_8smallvec10deallocatehECs8jFhWeO2DFb_9typst_pdf.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %1, %bb.h ], [ undef, %bb.e ], [ %1, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayhECs8jFhWeO2DFb_9typst_pdf.exit46 ], [ %1, %bb.f ], [ %.sink.i, %bb.g ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsiSzwKAiqS6b_8smallvec10deallocatehECs8jFhWeO2DFb_9typst_pdf.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 1, %bb.h ], [ -1, %bb.e ], [ 1, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayhECs8jFhWeO2DFb_9typst_pdf.exit46 ], [ 0, %bb.f ], [ 0, %bb.g ]
  %i.r = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.s = insertvalue { i64, i64 } %i.r, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.s
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8jFhWeO2DFb_9typst_pdf5image19PdfRasterImageInnerE9drop_slowBK_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf5image19PdfRasterImageInnerEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8jFhWeO2DFb_9typst_pdf5image19PdfRasterImageInnerRNtNtBG_5alloc6GlobalEEB1e_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8jFhWeO2DFb_9typst_pdf5image19PdfRasterImageInnerRNtNtBG_5alloc6GlobalEEB1e_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #41
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8jFhWeO2DFb_9typst_pdf5image19PdfRasterImageInnerRNtNtBG_5alloc6GlobalEEB1e_.exit

bb.e:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8jFhWeO2DFb_9typst_pdf5image19PdfRasterImageInnerRNtNtBG_5alloc6GlobalEEB1e_.exit2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8jFhWeO2DFb_9typst_pdf5image19PdfRasterImageInnerRNtNtBG_5alloc6GlobalEEB1e_.exit2

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #41
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8jFhWeO2DFb_9typst_pdf5image19PdfRasterImageInnerRNtNtBG_5alloc6GlobalEEB1e_.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8jFhWeO2DFb_9typst_pdf5image19PdfRasterImageInnerRNtNtBG_5alloc6GlobalEEB1e_.exit2: ; preds = %bb.e, %bb.f, %bb.g
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8jFhWeO2DFb_9typst_pdf5image19PdfRasterImageInnerRNtNtBG_5alloc6GlobalEEB1e_.exit: ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB7_7set_val9SetValZSTE10dying_nextCs8jFhWeO2DFb_9typst_pdf(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12472)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !12473
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !12473 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !12473 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !12473 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !12473
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter51 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !noalias !12474, !nonnull !10, !noundef !10 ; 3 uses
  %i.h = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !12443

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !12474, !nonnull !10, !noundef !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !noalias !12474, !nonnull !10, !noundef !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !noalias !12474, !nonnull !10, !noundef !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !noalias !12474, !nonnull !10, !noundef !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !noalias !12474, !nonnull !10, !noundef !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !noalias !12474, !nonnull !10, !noundef !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !noalias !12474, !nonnull !10, !noundef !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !noalias !12474, !nonnull !10, !noundef !10 ; 2 uses
  %i.z = add i64 %.sroa.020.024.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = load ptr, ptr %.sroa.0.0.ph.i, align 8, !noalias !12475, !noundef !10 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i4.i.i, label %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit.i, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.loopexit.i, %.lr.ph.i2.i
  %i.ad = phi ptr [ %i.af, %.lr.ph.i2.i ], [ %i.ac, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ad, %.lr.ph.i2.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.3.05.i.i = phi i64 [ %i.ae, %.lr.ph.i2.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.ae = add i64 %.sroa.3.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.3.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 40, i64 136
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #41, !noalias !12476
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !12475, !noundef !10 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit.i, label %.lr.ph.i2.i

_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %.lr.ph.i2.i, %.loopexit.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.ae, %.lr.ph.i2.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ad, %.lr.ph.i2.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 40, i64 136
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #41, !noalias !12476
  br label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.b, %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit.i
  store ptr null, ptr %0, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.ag = add i64 %i.b, -1
  store i64 %i.ag, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12478)
  %i.ah = load i64, ptr %1, align 8, !range !19, !alias.scope !12479, !noundef !10
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !12479, !noundef !10 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB7_7set_val9SetValZSTE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit_crit_edge.i

._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB7_7set_val9SetValZSTE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit_crit_edge.i: ; preds = %bb.f
  %.sroa.48.0.copyload.i.pre.i = load i64, ptr %i.al, align 8, !alias.scope !12480
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.59.0.copyload.i.pre.i = load i64, ptr %.sroa.59.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !12480
  br label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB7_7set_val9SetValZSTE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !12479, !noundef !10 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.al, align 8, !alias.scope !12479, !nonnull !10, !noundef !10 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB7_7set_val9SetValZSTE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i2.prol ], [ %i.an, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 40
  %i.aq = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ap, align 8, !noalias !12481, !nonnull !10, !noundef !10 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !12455

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.an, %.lr.ph.i.i2.preheader ], [ %i.aq, %.lr.ph.i.i2.prol ]
  %i.ar = icmp ult i64 %i.an, 8
  br i1 %i.ar, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB7_7set_val9SetValZSTE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i, label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.ba, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 40
  %.sroa.013.0.i.i = load ptr, ptr %i.as, align 8, !noalias !12481, !nonnull !10, !noundef !10
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 40
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.at, align 8, !noalias !12481, !nonnull !10, !noundef !10
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 40
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.au, align 8, !noalias !12481, !nonnull !10, !noundef !10
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 40
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.av, align 8, !noalias !12481, !nonnull !10, !noundef !10
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 40
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.aw, align 8, !noalias !12481, !nonnull !10, !noundef !10
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 40
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.ax, align 8, !noalias !12481, !nonnull !10, !noundef !10
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 40
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ay, align 8, !noalias !12481, !nonnull !10, !noundef !10
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 40
  %i.ba = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.az, align 8, !noalias !12481, !nonnull !10, !noundef !10 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB7_7set_val9SetValZSTE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB7_7set_val9SetValZSTE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB7_7set_val9SetValZSTE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit_crit_edge.i
  %.sroa.59.0.copyload.i.i = phi i64 [ %.sroa.59.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB7_7set_val9SetValZSTE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit_crit_edge.i ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i = phi i64 [ %.sroa.48.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB7_7set_val9SetValZSTE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit_crit_edge.i ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i = phi ptr [ %i.ak, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB7_7set_val9SetValZSTE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit_crit_edge.i ], [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12482)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 10
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !12483, !noundef !10
  %i.be = zext i16 %i.bd to i64
  %i.bf = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.be
  br i1 %i.bf, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB7_7set_val9SetValZSTE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i, %bb.j
  %.sroa.0.039.i.i.i.i = phi ptr [ %i.bg, %bb.j ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB7_7set_val9SetValZSTE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i ] ; 4 uses
  %.sroa.5.038.i.i.i.i = phi i64 [ %i.by, %bb.j ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB7_7set_val9SetValZSTE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i ] ; 3 uses
  %i.bg = load ptr, ptr %.sroa.0.039.i.i.i.i, align 8, !noalias !12484, !noundef !10 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.j
  %i.bh = zext i16 %i.ca to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB7_7set_val9SetValZSTE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i
  %.sroa.8.0.lcssa.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB7_7set_val9SetValZSTE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %i.bh, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB7_7set_val9SetValZSTE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %i.by, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB7_7set_val9SetValZSTE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %i.bg, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bi = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bj = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i, 1
  br label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = icmp samesign ult i64 %.sroa.8.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 48
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %.sroa.8.0.lcssa.i.i.i.i ; 2 uses
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.bn, %.prol.preheader ], [ %i.bm, %bb.i ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.i ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !12485, !nonnull !10, !noundef !10 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 40 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !12470

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.bm, %bb.i ], [ %i.bn, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bo = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bo, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.bx, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !12485, !nonnull !10, !noundef !10
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 40
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.bp, align 8, !noalias !12485, !nonnull !10, !noundef !10
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 40
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.bq, align 8, !noalias !12485, !nonnull !10, !noundef !10
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 40
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.br, align 8, !noalias !12485, !nonnull !10, !noundef !10
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 40
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.bs, align 8, !noalias !12485, !nonnull !10, !noundef !10
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 40
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.bt, align 8, !noalias !12485, !nonnull !10, !noundef !10
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 40
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.bu, align 8, !noalias !12485, !nonnull !10, !noundef !10
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 40
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.bv, align 8, !noalias !12485, !nonnull !10, !noundef !10 ; 2 uses
  %i.bw = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 40
  br i1 %i.bw, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit, label %.new

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = add i64 %.sroa.5.038.i.i.i.i, 1         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i, i64 8
  %i.ca = load i16, ptr %i.bz, align 8, !noalias !12484 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 40, i64 136
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #41, !noalias !12486
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !12483, !noundef !10
  %i.cd = icmp ult i16 %i.ca, %i.cc
  br i1 %i.cd, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i33.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i34.i.i.i.i = select i1 %.not.i33.i.i.i.i, i64 40, i64 136
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i34.i.i.i.i, i64 noundef 8) #41, !noalias !12486
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #42
          to label %.noexc.i.i unwind label %bb.l, !noalias !12487

.noexc.i.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #42, !noalias !12488
  unreachable

_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bj, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ]
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !12480
  store i64 0, ptr %i.al, align 8, !alias.scope !12480
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !12480
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit, %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerotENtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE10dying_nextCs8jFhWeO2DFb_9typst_pdf(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12523)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !12524
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !12524 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !12524 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !12524 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !12524
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE16deallocating_endNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter51 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 320
  %i.g = load ptr, ptr %i.f, align 8, !noalias !12525, !nonnull !10, !noundef !10 ; 3 uses
  %i.h = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !12494

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 320
  %i.k = load ptr, ptr %i.j, align 8, !noalias !12525, !nonnull !10, !noundef !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 320
  %i.m = load ptr, ptr %i.l, align 8, !noalias !12525, !nonnull !10, !noundef !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 320
  %i.o = load ptr, ptr %i.n, align 8, !noalias !12525, !nonnull !10, !noundef !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  %i.q = load ptr, ptr %i.p, align 8, !noalias !12525, !nonnull !10, !noundef !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 320
  %i.s = load ptr, ptr %i.r, align 8, !noalias !12525, !nonnull !10, !noundef !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 320
  %i.u = load ptr, ptr %i.t, align 8, !noalias !12525, !nonnull !10, !noundef !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 320
  %i.w = load ptr, ptr %i.v, align 8, !noalias !12525, !nonnull !10, !noundef !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 320
  %i.y = load ptr, ptr %i.x, align 8, !noalias !12525, !nonnull !10, !noundef !10 ; 2 uses
  %i.z = add i64 %.sroa.020.024.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = load ptr, ptr %.sroa.0.0.ph.i, align 8, !noalias !12526, !noundef !10 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i4.i.i, label %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit.i, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.loopexit.i, %.lr.ph.i2.i
  %i.ad = phi ptr [ %i.af, %.lr.ph.i2.i ], [ %i.ac, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ad, %.lr.ph.i2.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.3.05.i.i = phi i64 [ %i.ae, %.lr.ph.i2.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.ae = add i64 %.sroa.3.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.3.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 320, i64 416
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #41, !noalias !12527
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !12526, !noundef !10 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit.i, label %.lr.ph.i2.i

_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %.lr.ph.i2.i, %.loopexit.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.ae, %.lr.ph.i2.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ad, %.lr.ph.i2.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 320, i64 416
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #41, !noalias !12527
  br label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE16deallocating_endNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE16deallocating_endNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.b, %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit.i
  store ptr null, ptr %0, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.ag = add i64 %i.b, -1
  store i64 %i.ag, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12529)
  %i.ah = load i64, ptr %1, align 8, !range !19, !alias.scope !12530, !noundef !10
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !12530, !noundef !10 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit_crit_edge.i

._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit_crit_edge.i: ; preds = %bb.f
  %.sroa.48.0.copyload.i.pre.i = load i64, ptr %i.al, align 8, !alias.scope !12531
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.59.0.copyload.i.pre.i = load i64, ptr %.sroa.59.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !12531
  br label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !12530, !noundef !10 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.al, align 8, !alias.scope !12530, !nonnull !10, !noundef !10 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i2.prol ], [ %i.an, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 320
  %i.aq = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ap, align 8, !noalias !12532, !nonnull !10, !noundef !10 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !12506

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.an, %.lr.ph.i.i2.preheader ], [ %i.aq, %.lr.ph.i.i2.prol ]
  %i.ar = icmp ult i64 %i.an, 8
  br i1 %i.ar, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i, label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.ba, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 320
  %.sroa.013.0.i.i = load ptr, ptr %i.as, align 8, !noalias !12532, !nonnull !10, !noundef !10
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 320
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.at, align 8, !noalias !12532, !nonnull !10, !noundef !10
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 320
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.au, align 8, !noalias !12532, !nonnull !10, !noundef !10
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 320
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.av, align 8, !noalias !12532, !nonnull !10, !noundef !10
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 320
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.aw, align 8, !noalias !12532, !nonnull !10, !noundef !10
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 320
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.ax, align 8, !noalias !12532, !nonnull !10, !noundef !10
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 320
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ay, align 8, !noalias !12532, !nonnull !10, !noundef !10
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 320
  %i.ba = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.az, align 8, !noalias !12532, !nonnull !10, !noundef !10 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit_crit_edge.i
  %.sroa.59.0.copyload.i.i = phi i64 [ %.sroa.59.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit_crit_edge.i ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i = phi i64 [ %.sroa.48.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit_crit_edge.i ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i = phi ptr [ %i.ak, %._RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit_crit_edge.i ], [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12533)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 318
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !12534, !noundef !10
  %i.be = zext i16 %i.bd to i64
  %i.bf = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.be
  br i1 %i.bf, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i, %bb.j
  %.sroa.0.039.i.i.i.i = phi ptr [ %i.bg, %bb.j ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i ] ; 4 uses
  %.sroa.5.038.i.i.i.i = phi i64 [ %i.by, %bb.j ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i ] ; 3 uses
  %i.bg = load ptr, ptr %.sroa.0.039.i.i.i.i, align 8, !noalias !12535, !noundef !10 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.j
  %i.bh = zext i16 %i.ca to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i
  %.sroa.8.0.lcssa.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %i.bh, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %i.by, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE10init_frontCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %i.bg, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bi = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bj = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i, 1
  br label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = icmp samesign ult i64 %.sroa.8.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 328
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %.sroa.8.0.lcssa.i.i.i.i ; 2 uses
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.bn, %.prol.preheader ], [ %i.bm, %bb.i ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.i ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !12536, !nonnull !10, !noundef !10 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 320 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !12521

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.bm, %bb.i ], [ %i.bn, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bo = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bo, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.bx, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !12536, !nonnull !10, !noundef !10
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 320
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.bp, align 8, !noalias !12536, !nonnull !10, !noundef !10
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 320
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.bq, align 8, !noalias !12536, !nonnull !10, !noundef !10
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 320
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.br, align 8, !noalias !12536, !nonnull !10, !noundef !10
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 320
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.bs, align 8, !noalias !12536, !nonnull !10, !noundef !10
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 320
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.bt, align 8, !noalias !12536, !nonnull !10, !noundef !10
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 320
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.bu, align 8, !noalias !12536, !nonnull !10, !noundef !10
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 320
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.bv, align 8, !noalias !12536, !nonnull !10, !noundef !10 ; 2 uses
  %i.bw = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 320
  br i1 %i.bw, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit, label %.new

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = add i64 %.sroa.5.038.i.i.i.i, 1         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i, i64 316
  %i.ca = load i16, ptr %i.bz, align 4, !noalias !12535 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 320, i64 416
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #41, !noalias !12537
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 318
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !12534, !noundef !10
  %i.cd = icmp ult i16 %i.ca, %i.cc
  br i1 %i.cd, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i33.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i34.i.i.i.i = select i1 %.not.i33.i.i.i.i, i64 320, i64 416
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i34.i.i.i.i, i64 noundef 8) #41, !noalias !12537
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #42
          to label %.noexc.i.i unwind label %bb.l, !noalias !12538

.noexc.i.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #42, !noalias !12539
  unreachable

_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bj, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ]
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !12531
  store i64 0, ptr %i.al, align 8, !alias.scope !12531
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !12531
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit, %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCsltn4C36Q1Af_10pdf_writer6object3RefE16deallocating_endNtNtBc_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 8, 49) %2) unnamed_addr #17 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12568)
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 1, !alias.scope !12567
  %.sroa.02.0.copyload.i.i = load i64, ptr %1, align 1, !alias.scope !12568
  store i64 %.sroa.02.0.copyload.i.i, ptr %0, align 1, !alias.scope !12567
  store i64 %.sroa.0.0.copyload.i.i, ptr %1, align 1, !alias.scope !12568
  %exitcond.not.i = icmp eq i64 %i.a, 1
  br i1 %exitcond.not.i, label %_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12570)
  %.sroa.0.0.copyload.i.i.1 = load i64, ptr %i.b, align 1, !alias.scope !12569
  %.sroa.02.0.copyload.i.i.1 = load i64, ptr %i.c, align 1, !alias.scope !12570
  store i64 %.sroa.02.0.copyload.i.i.1, ptr %i.b, align 1, !alias.scope !12569
  store i64 %.sroa.0.0.copyload.i.i.1, ptr %i.c, align 1, !alias.scope !12570
  %exitcond.not.i.1 = icmp eq i64 %i.a, 2
  br i1 %exitcond.not.i.1, label %_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12572)
  %.sroa.0.0.copyload.i.i.2 = load i64, ptr %i.d, align 1, !alias.scope !12571
  %.sroa.02.0.copyload.i.i.2 = load i64, ptr %i.e, align 1, !alias.scope !12572
  store i64 %.sroa.02.0.copyload.i.i.2, ptr %i.d, align 1, !alias.scope !12571
  store i64 %.sroa.0.0.copyload.i.i.2, ptr %i.e, align 1, !alias.scope !12572
  %exitcond.not.i.2 = icmp eq i64 %i.a, 3
  br i1 %exitcond.not.i.2, label %_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12574)
  %.sroa.0.0.copyload.i.i.3 = load i64, ptr %i.f, align 1, !alias.scope !12573
  %.sroa.02.0.copyload.i.i.3 = load i64, ptr %i.g, align 1, !alias.scope !12574
  store i64 %.sroa.02.0.copyload.i.i.3, ptr %i.f, align 1, !alias.scope !12573
  store i64 %.sroa.0.0.copyload.i.i.3, ptr %i.g, align 1, !alias.scope !12574
  %exitcond.not.i.3 = icmp eq i64 %i.a, 4
  br i1 %exitcond.not.i.3, label %_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12576)
  %.sroa.0.0.copyload.i.i.4 = load i64, ptr %i.h, align 1, !alias.scope !12575
  %.sroa.02.0.copyload.i.i.4 = load i64, ptr %i.i, align 1, !alias.scope !12576
  store i64 %.sroa.02.0.copyload.i.i.4, ptr %i.h, align 1, !alias.scope !12575
  store i64 %.sroa.0.0.copyload.i.i.4, ptr %i.i, align 1, !alias.scope !12576
  %exitcond.not.i.4 = icmp eq i64 %i.a, 5
  br i1 %exitcond.not.i.4, label %_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12578)
  %.sroa.0.0.copyload.i.i.5 = load i64, ptr %i.j, align 1, !alias.scope !12577
  %.sroa.02.0.copyload.i.i.5 = load i64, ptr %i.k, align 1, !alias.scope !12578
  store i64 %.sroa.02.0.copyload.i.i.5, ptr %i.j, align 1, !alias.scope !12577
  store i64 %.sroa.0.0.copyload.i.i.5, ptr %i.k, align 1, !alias.scope !12578
  br label %_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8jFhWeO2DFb_9typst_pdf.exit
end_hunk_0
