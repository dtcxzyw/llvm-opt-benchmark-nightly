Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7942
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RINvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator7collectINtB6_8SmallVecBC_EECs8jFhWeO2DFb_9typst_pdf:bb.a
  br label %.thread41.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.f, -1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true) ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.thread47.i.i, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i64 -1, %i.h
  %i.k = add nuw i64 %i.j, 1
  %i.l = invoke fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_E8try_growCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.k)
          to label %bb.d unwind label %.thread44.i.i, !noalias !9637 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.e [
    i64 -1, label %..thread50_crit_edge.i.i
    i64 0, label %.thread47.i.i
  ], !prof !69

..thread50_crit_edge.i.i:                         ; preds = %bb.d
  %.pre.i.i = load i64, ptr %i.c, align 8, !alias.scope !9638, !noalias !9633 ; 2 uses
  %.pre69.i.i = tail call i64 @llvm.umax.i64(i64 %.pre.i.i, i64 1)
  br label %.thread50.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = extractvalue { i64, i64 } %i.l, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #39
          to label %.noexc10.i.i unwind label %.thread44.i.i, !noalias !9634

.noexc10.i.i:                                     ; preds = %bb.e
  unreachable

.thread47.i.i:                                    ; preds = %bb.d, %bb.b
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #42
          to label %.noexc11.i.i unwind label %.thread44.i.i, !noalias !9634

.noexc11.i.i:                                     ; preds = %.thread47.i.i
  unreachable

.thread50.i.i:                                    ; preds = %..thread50_crit_edge.i.i, %bb.a
  %.sink.i.pre-phi.i.i = phi i64 [ %.pre69.i.i, %..thread50_crit_edge.i.i ], [ 1, %bb.a ]
  %i.o = phi i64 [ %.pre.i.i, %..thread50_crit_edge.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.p = icmp ugt i64 %i.o, 1                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !9638, !noalias !9633, !nonnull !10
  %.sink10.i.i.i = select i1 %i.p, ptr %i.r, ptr %i.q
  %.sink9.idx.i.i.sroa.sel.i = select i1 %i.p, ptr %.sroa.gep.i, ptr %i.c ; 3 uses
  %i.s = load i64, ptr %.sink9.idx.i.i.sroa.sel.i, align 8, !alias.scope !9636, !noalias !9633, !noundef !10 ; 3 uses
  %i.t = icmp ult i64 %i.s, %.sink.i.pre-phi.i.i
  br i1 %i.t, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.thread50.i.i
  %i.u = load i64, ptr %i.b, align 8, !noalias !9634
  %i.v = icmp ugt i64 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !9634, !nonnull !10
  %.sink11.i.i.i.i = select i1 %i.v, ptr %i.x, ptr %i.w
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.7.062.i.i = phi i64 [ %i.s, %.lr.ph.i.i ], [ %i.bc, %bb.l ] ; 3 uses
  %i.y = phi i64 [ %.val8.i.i, %.lr.ph.i.i ], [ %i.az, %bb.l ] ; 3 uses
  %i.z = icmp eq i64 %i.y, %.val9.i.i
  br i1 %i.z, label %bb.m, label %bb.l

._crit_edge.i.i:                                  ; preds = %bb.l, %.thread50.i.i
  %.sroa.7.0.lcssa.i.i = phi i64 [ %i.s, %.thread50.i.i ], [ %i.bc, %bb.l ]
  store i64 %.sroa.7.0.lcssa.i.i, ptr %.sink9.idx.i.i.sroa.sel.i, align 8, !alias.scope !9636, !noalias !9633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !9634
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !9639, !noalias !9634, !noundef !10 ; 2 uses
  %.promoted63.i.i = load i64, ptr %i.aa, align 8, !alias.scope !9639, !noalias !9634 ; 2 uses
  %i.ad = icmp eq i64 %.promoted63.i.i, %i.ac
  br i1 %i.ad, label %_RNvXsI_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit15.i.i, label %.lr.ph65.i.i

.lr.ph65.i.i:                                     ; preds = %._crit_edge.i.i
  %i.ae = load i64, ptr %i.a, align 8, !alias.scope !9640, !noalias !9634, !noundef !10
  %i.af = icmp ugt i64 %i.ae, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !9640, !noalias !9634, !nonnull !10
  %.sink11.i.i13.i.i = select i1 %i.af, ptr %i.ah, ptr %i.ag
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph65.i.i
  %i.ai = phi i64 [ %.promoted63.i.i, %.lr.ph65.i.i ], [ %i.aj, %bb.k ] ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  store i64 %i.aj, ptr %i.aa, align 8, !alias.scope !9639, !noalias !9634
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %.sink11.i.i13.i.i, i64 %i.ai ; 3 uses
  %.sroa.530.sroa.0.0.copyload.i.i = load ptr, ptr %i.ak, align 8, !noalias !9634 ; 3 uses
  %.sroa.530.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.530.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.530.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.530.sroa.6.0..sroa_idx.i.i, align 8, !noalias !9634 ; 2 uses
  %i.al = load <2 x i64>, ptr %.sroa.530.sroa.5.0..sroa_idx.i.i, align 8, !noalias !9634
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9641)
  %i.am = load i64, ptr %i.c, align 8, !alias.scope !9642, !noalias !9633, !noundef !10 ; 2 uses
  %i.an = icmp ugt i64 %i.am, 1                   ; 2 uses
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !9642, !noalias !9633, !nonnull !10
  %.sink10.i.i.i.i = select i1 %i.an, ptr %i.ao, ptr %i.q
  %.sink9.idx.i.i16.i.sroa.sel.i = select i1 %i.an, ptr %.sroa.gep.i, ptr %i.c ; 2 uses
  %.sink.i.i18.i.i = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.ap = load i64, ptr %.sink9.idx.i.i16.i.sroa.sel.i, align 8, !alias.scope !9643, !noalias !9633, !noundef !10 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, %.sink.i.i18.i.i
  br i1 %i.aq, label %bb.i, label %bb.k, !prof !13

bb.h:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = icmp ugt i64 %.sroa.530.sroa.6.0.copyload.i.i, 16
  br i1 %i.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, label %.thread41.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i: ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.530.sroa.0.0.copyload.i.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.530.sroa.0.0.copyload.i.i, i64 noundef %.sroa.530.sroa.6.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !9644
  br label %.thread41.i.i

bb.i:                                             ; preds = %bb.g
  invoke fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_E21reserve_one_uncheckedCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.j unwind label %bb.h, !noalias !9645

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.q, align 8, !alias.scope !9643, !noalias !9633, !nonnull !10, !noundef !10
  %.pre.i.i.i = load i64, ptr %.sroa.gep.i, align 8, !alias.scope !9643, !noalias !9633
  br label %bb.k

_RNvXsI_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit15.i.i: ; preds = %bb.k, %._crit_edge.i.i
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_EECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a), !noalias !9634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9634
  br label %_RINvXst_CsiSzwKAiqS6b_8smallvecINtB6_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_EINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtB6_8IntoIterBI_EECs8jFhWeO2DFb_9typst_pdf.exit

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.au = phi i64 [ %.pre.i.i.i, %bb.j ], [ %i.ap, %bb.g ]
  %.sroa.01.0.i.i.i = phi ptr [ %.sroa.gep.i, %bb.j ], [ %.sink9.idx.i.i16.i.sroa.sel.i, %bb.g ] ; 2 uses
  %.sroa.0.0.i19.i.i = phi ptr [ %i.at, %bb.j ], [ %.sink10.i.i.i.i, %bb.g ]
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.i19.i.i, i64 %i.au ; 2 uses
  store ptr %.sroa.530.sroa.0.0.copyload.i.i, ptr %i.av, align 8, !noalias !9637
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store <2 x i64> %i.al, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !noalias !9637
  %i.aw = load i64, ptr %.sroa.01.0.i.i.i, align 8, !alias.scope !9643, !noalias !9633, !noundef !10
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %.sroa.01.0.i.i.i, align 8, !alias.scope !9643, !noalias !9633
  %i.ay = icmp eq i64 %i.aj, %i.ac
  br i1 %i.ay, label %_RNvXsI_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit15.i.i, label %bb.g

bb.l:                                             ; preds = %bb.f
  %i.az = add i64 %i.y, 1                         ; 2 uses
  store i64 %i.az, ptr %i.d, align 8, !alias.scope !9646, !noalias !9634
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %.sink11.i.i.i.i, i64 %i.y
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %.sink10.i.i.i, i64 %.sroa.7.062.i.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !noalias !9637
  %i.bc = add nuw i64 %.sroa.7.062.i.i, 1         ; 3 uses
  %i.bd = icmp ugt i64 %i.o, %i.bc
  br i1 %i.bd, label %bb.f, label %._crit_edge.i.i

bb.m:                                             ; preds = %bb.f
  store i64 %.sroa.7.062.i.i, ptr %.sink9.idx.i.i.sroa.sel.i, align 8, !alias.scope !9636, !noalias !9633
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_EECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b), !noalias !9634
  br label %_RINvXst_CsiSzwKAiqS6b_8smallvecINtB6_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_EINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtB6_8IntoIterBI_EECs8jFhWeO2DFb_9typst_pdf.exit

.thread41.i.i:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, %bb.h, %.thread44.i.i
  %.sink.i.i = phi ptr [ %i.b, %.thread44.i.i ], [ %i.a, %bb.h ], [ %i.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i ]
  %.pn39.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.thread44.i.i ], [ %i.ar, %bb.h ], [ %i.ar, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_EECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(48) %.sink.i.i) #44, !noalias !9634
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_EECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #44, !noalias !9633
  resume { ptr, i32 } %.pn39.i.i

_RINvXst_CsiSzwKAiqS6b_8smallvecINtB6_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_EINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtB6_8IntoIterBI_EECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RNvXsI_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit15.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !9647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9633
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RINvYNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtNtBO_6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2B_6layout3abs3AbsEEEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 7 uses
  %i.b = alloca [16 x i8], align 4                ; 7 uses
  %i.c = alloca [16 x i8], align 4                ; 7 uses
  %i.d = alloca [16 x i8], align 4                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9787)
  %.val.i = load ptr, ptr %0, align 8, !noalias !9787, !align !21, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9788)
  %.not = icmp eq ptr %.val.i, null
  br i1 %.not, label %_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRINtNtBa_6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1H_6layout3abs3AbsEEENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9789)
  %.val.i.i.i = load ptr, ptr %.val.i, align 8, !noalias !9790, !nonnull !10, !noundef !10 ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9791)
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9793)
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 80
  %i.h = load i32, ptr %i.g, align 8, !range !48, !alias.scope !9792, !noalias !9794, !noundef !10 ; 4 uses
  %.not12 = icmp eq i32 %i.h, -1
  br i1 %.not12, label %_RINvXs8_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB6_5PaintNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9796)
  %i.i = icmp samesign ugt i32 %i.h, 1
  %i.j = zext nneg i32 %i.h to i64                ; 2 uses
  %i.k = add nsw i64 %i.j, -1
  %i.l = select i1 %i.i, i64 %i.k, i64 0          ; 2 uses
  %1 = mul i64 %i.l, -1065810590584100411
  %2 = add i64 %1, 7745086105557359958            ; 3 uses
  switch i64 %i.l, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.h
    i64 2, label %bb.aa
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9798)
  %i.m = add i64 %2, %i.j
  %i.n = mul i64 %i.m, -1065810590584100411       ; 2 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !9799
  %i.o = trunc nuw i32 %i.h to i1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !9800, !noalias !9794, !nonnull !10, !noundef !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call fastcc void @_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #40, !noalias !9800
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 96
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !9800, !noalias !9794, !noundef !10
  %i.u = load i64, ptr %i.e, align 8, !alias.scope !9801, !noundef !10
  %i.v = add i64 %i.u, %i.t
  br label %_RINvXsy_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_5ColorNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 84 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9802)
  %i.x = load i32, ptr %i.w, align 4, !range !65, !alias.scope !9803, !noalias !9794, !noundef !10
  %i.y = zext nneg i32 %i.x to i64
  %i.z = add i64 %i.n, %i.y
  %i.aa = mul i64 %i.z, -1065810590584100411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9804
  call void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor7to_vec4(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.w), !noalias !9805
  %i.ab = load i32, ptr %i.d, align 4, !noalias !9804, !noundef !10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !noalias !9804, !noundef !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !noalias !9804, !noundef !10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !noalias !9804, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9804
  %i.ai = zext i32 %i.ab to i64
  %i.aj = add i64 %i.aa, %i.ai
  %i.ak = mul i64 %i.aj, -1065810590584100411
  %i.al = zext i32 %i.ad to i64
  %i.am = add i64 %i.ak, %i.al
  %i.an = mul i64 %i.am, -1065810590584100411
  %i.ao = zext i32 %i.af to i64
  %i.ap = add i64 %i.an, %i.ao
  %i.aq = mul i64 %i.ap, -1065810590584100411
  %i.ar = zext i32 %i.ah to i64
  %i.as = add i64 %i.aq, %i.ar
  br label %_RINvXsy_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_5ColorNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

_RINvXsy_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_5ColorNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %storemerge.in.i.i.i.i.i.i.i = phi i64 [ %i.as, %bb.g ], [ %i.v, %bb.f ]
  %storemerge.i.i.i.i.i.i.i = mul i64 %storemerge.in.i.i.i.i.i.i.i, -1065810590584100411
  br label %_RINvXs8_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB6_5PaintNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 88
  %.val.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !range !29, !alias.scope !9806, !noalias !9794, !noundef !10 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 96
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !9806, !noalias !9794, !nonnull !10, !noundef !10 ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9807)
  %i.av = add i64 %.val.i.i.i.i.i.i, %2
  %i.aw = mul i64 %i.av, -1065810590584100411     ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 16 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 72 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 80 ; 3 uses
  switch i64 %.val.i.i.i.i.i.i, label %default.unreachable [
    i64 0, label %bb.i
    i64 1, label %bb.o
    i64 2, label %bb.u
  ]

default.unreachable:                              ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9809)
  %i.ba = load ptr, ptr %i.ay, align 8, !alias.scope !9808, !noalias !9810, !nonnull !10, !noundef !10 ; 2 uses
  %i.bb = load i64, ptr %i.az, align 8, !alias.scope !9808, !noalias !9810, !noundef !10 ; 3 uses
  %i.bc = add i64 %i.bb, %i.aw
  %i.bd = mul i64 %i.bc, -1065810590584100411     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9812)
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bb, 5
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.i
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  br label %bb.j

bb.j:                                             ; preds = %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bj = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ct, %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.03.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bk, %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9816)
  %i.bl = load i32, ptr %.sroa.0.03.i.i.i.i.i.i.i.i.i, align 8, !range !14, !alias.scope !9817, !noalias !9818, !noundef !10 ; 2 uses
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = add i64 %i.bj, %i.bm
  %i.bo = mul i64 %i.bn, -1065810590584100411     ; 2 uses
  store i64 %i.bo, ptr %i.e, align 8, !alias.scope !9819
  %i.bp = trunc nuw i32 %i.bl to i1
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i.i.i.i, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !9817, !noalias !9818, !nonnull !10, !noundef !10
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  call fastcc void @_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bs, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #40, !noalias !9820
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i.i.i.i, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !9817, !noalias !9818, !noundef !10
  %i.bv = load i64, ptr %i.e, align 8, !alias.scope !9821, !noundef !10
  %i.bw = add i64 %i.bv, %i.bu
  br label %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9822)
  %i.by = load i32, ptr %i.bx, align 4, !range !65, !alias.scope !9823, !noalias !9818, !noundef !10
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = add i64 %i.bo, %i.bz
  %i.cb = mul i64 %i.ca, -1065810590584100411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9824
  call void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor7to_vec4(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.bx), !noalias !9825
  %i.cc = load i32, ptr %i.c, align 4, !noalias !9824, !noundef !10
  %i.cd = load i32, ptr %i.bg, align 4, !noalias !9824, !noundef !10
  %i.ce = load i32, ptr %i.bh, align 4, !noalias !9824, !noundef !10
  %i.cf = load i32, ptr %i.bi, align 4, !noalias !9824, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9824
  %i.cg = zext i32 %i.cc to i64
  %i.ch = add i64 %i.cb, %i.cg
  %i.ci = mul i64 %i.ch, -1065810590584100411
  %i.cj = zext i32 %i.cd to i64
  %i.ck = add i64 %i.ci, %i.cj
  %i.cl = mul i64 %i.ck, -1065810590584100411
  %i.cm = zext i32 %i.ce to i64
  %i.cn = add i64 %i.cl, %i.cm
  %i.co = mul i64 %i.cn, -1065810590584100411
  %i.cp = zext i32 %i.cf to i64
  %i.cq = add i64 %i.co, %i.cp
  br label %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i

_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %storemerge.in.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cq, %bb.l ], [ %i.bw, %bb.k ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i.i.i.i, i64 24
  %storemerge.i.i.i.i.i.i.i.i.i.i.i = mul i64 %storemerge.in.i.i.i.i.i.i.i.i.i.i.i, -1065810590584100411
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cr, align 8, !alias.scope !9826, !noalias !9818, !noundef !10
  %i.cs = add i64 %.val.i.i.i.i.i.i.i.i.i.i, %storemerge.i.i.i.i.i.i.i.i.i.i.i
  %i.ct = mul i64 %i.cs, -1065810590584100411     ; 3 uses
  store i64 %i.ct, ptr %i.e, align 8, !alias.scope !9827
  %i.cu = icmp eq ptr %i.bk, %i.be
  br i1 %i.cu, label %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i, label %bb.j

_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i, %bb.i
  %i.cv = phi i64 [ %i.bd, %bb.i ], [ %i.ct, %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 88
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !9808, !noalias !9810, !noundef !10
  %i.cy = add i64 %i.cx, %i.cv
  %i.cz = mul i64 %i.cy, -1065810590584100411
  %i.da = load i64, ptr %i.ax, align 8, !range !30, !alias.scope !9808, !noalias !9810, !noundef !10
  %i.db = icmp ne i64 %i.da, -1                   ; 2 uses
  %i.dc = zext i1 %i.db to i64
  %i.dd = add i64 %i.cz, %i.dc
  %i.de = mul i64 %i.dd, -1065810590584100411     ; 2 uses
  store i64 %i.de, ptr %i.e, align 8, !alias.scope !9828
  br i1 %i.db, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i
  call fastcc void @_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #40, !noalias !9806
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !9829
  br label %_RINvXsb_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB6_8GradientNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 24
  %i.dg = load i8, ptr %i.df, align 8, !range !33, !alias.scope !9808, !noalias !9810, !noundef !10
  %i.dh = zext nneg i8 %i.dg to i64
  %i.di = add i64 %i.de, %i.dh
  %i.dj = mul i64 %i.di, -1065810590584100411
  br label %_RINvXsb_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB6_8GradientNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9831)
  %i.dk = load ptr, ptr %i.ay, align 8, !alias.scope !9830, !noalias !9810, !nonnull !10, !noundef !10 ; 2 uses
  %i.dl = load i64, ptr %i.az, align 8, !alias.scope !9830, !noalias !9810, !noundef !10 ; 3 uses
  %i.dm = add i64 %i.dl, %i.aw
  %i.dn = mul i64 %i.dm, -1065810590584100411     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9833)
  %.idx.i.i1.i.i.i.i.i.i.i = shl nuw nsw i64 %i.dl, 5
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.idx.i.i1.i.i.i.i.i.i.i
  %i.dp = icmp eq i64 %i.dl, 0
  br i1 %i.dp, label %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i8.i.i.i.i.i.i.i, label %.lr.ph.i.i2.i.i.i.i.i.i.i

.lr.ph.i.i2.i.i.i.i.i.i.i:                        ; preds = %bb.o
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  br label %bb.p

bb.p:                                             ; preds = %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i.i.i.i.i, %.lr.ph.i.i2.i.i.i.i.i.i.i
  %i.dt = phi i64 [ %i.dn, %.lr.ph.i.i2.i.i.i.i.i.i.i ], [ %i.fd, %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i.i.i.i.i ]
  %.sroa.0.03.i.i3.i.i.i.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i2.i.i.i.i.i.i.i ], [ %i.du, %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i.i.i.i.i ] ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i3.i.i.i.i.i.i.i, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9837)
  %i.dv = load i32, ptr %.sroa.0.03.i.i3.i.i.i.i.i.i.i, align 8, !range !14, !alias.scope !9838, !noalias !9839, !noundef !10 ; 2 uses
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = add i64 %i.dt, %i.dw
  %i.dy = mul i64 %i.dx, -1065810590584100411     ; 2 uses
  store i64 %i.dy, ptr %i.e, align 8, !alias.scope !9840
  %i.dz = trunc nuw i32 %i.dv to i1
  br i1 %i.dz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i3.i.i.i.i.i.i.i, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !9838, !noalias !9839, !nonnull !10, !noundef !10
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  call fastcc void @_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ec, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #40, !noalias !9841
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i3.i.i.i.i.i.i.i, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !9838, !noalias !9839, !noundef !10
  %i.ef = load i64, ptr %i.e, align 8, !alias.scope !9842, !noundef !10
  %i.eg = add i64 %i.ef, %i.ee
  br label %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i3.i.i.i.i.i.i.i, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9843)
  %i.ei = load i32, ptr %i.eh, align 4, !range !65, !alias.scope !9844, !noalias !9839, !noundef !10
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = add i64 %i.dy, %i.ej
  %i.el = mul i64 %i.ek, -1065810590584100411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9845
  call void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor7to_vec4(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.eh), !noalias !9846
  %i.em = load i32, ptr %i.b, align 4, !noalias !9845, !noundef !10
  %i.en = load i32, ptr %i.dq, align 4, !noalias !9845, !noundef !10
  %i.eo = load i32, ptr %i.dr, align 4, !noalias !9845, !noundef !10
  %i.ep = load i32, ptr %i.ds, align 4, !noalias !9845, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9845
  %i.eq = zext i32 %i.em to i64
  %i.er = add i64 %i.el, %i.eq
  %i.es = mul i64 %i.er, -1065810590584100411
  %i.et = zext i32 %i.en to i64
  %i.eu = add i64 %i.es, %i.et
  %i.ev = mul i64 %i.eu, -1065810590584100411
  %i.ew = zext i32 %i.eo to i64
  %i.ex = add i64 %i.ev, %i.ew
  %i.ey = mul i64 %i.ex, -1065810590584100411
  %i.ez = zext i32 %i.ep to i64
  %i.fa = add i64 %i.ey, %i.ez
  br label %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i.i.i.i.i

_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
end_hunk_0
begin_hunk_1_@_RINvYNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtNtBO_6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2B_6layout3abs3AbsEEEECs8jFhWeO2DFb_9typst_pdf:bb.a
  %i.fs = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 112
  %i.ft = load i64, ptr %i.fs, align 8, !alias.scope !9830, !noalias !9810, !noundef !10
  %i.fu = add i64 %i.fr, %i.ft
  %i.fv = mul i64 %i.fu, -1065810590584100411
  %i.fw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 120
  %i.fx = load i64, ptr %i.fw, align 8, !alias.scope !9830, !noalias !9810, !noundef !10
  %i.fy = add i64 %i.fv, %i.fx
  %i.fz = mul i64 %i.fy, -1065810590584100411
  %i.ga = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 128
  %i.gb = load i64, ptr %i.ga, align 8, !alias.scope !9830, !noalias !9810, !noundef !10
  %i.gc = add i64 %i.fz, %i.gb
  %i.gd = mul i64 %i.gc, -1065810590584100411
  %i.ge = load i64, ptr %i.ax, align 8, !range !30, !alias.scope !9830, !noalias !9810, !noundef !10
  %i.gf = icmp ne i64 %i.ge, -1                   ; 2 uses
  %i.gg = zext i1 %i.gf to i64
  %i.gh = add i64 %i.gd, %i.gg
  %i.gi = mul i64 %i.gh, -1065810590584100411     ; 2 uses
  store i64 %i.gi, ptr %i.e, align 8, !alias.scope !9849
  br i1 %i.gf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i8.i.i.i.i.i.i.i
  call fastcc void @_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #40, !noalias !9806
  %.pre.i10.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !9850
  br label %_RINvXsb_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB6_8GradientNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i8.i.i.i.i.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 24
  %i.gk = load i8, ptr %i.gj, align 8, !range !33, !alias.scope !9830, !noalias !9810, !noundef !10
  %i.gl = zext nneg i8 %i.gk to i64
  %i.gm = add i64 %i.gi, %i.gl
  %i.gn = mul i64 %i.gm, -1065810590584100411
  br label %_RINvXsb_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB6_8GradientNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9852)
  %i.go = load ptr, ptr %i.ay, align 8, !alias.scope !9851, !noalias !9810, !nonnull !10, !noundef !10 ; 2 uses
  %i.gp = load i64, ptr %i.az, align 8, !alias.scope !9851, !noalias !9810, !noundef !10 ; 3 uses
  %i.gq = add i64 %i.gp, %i.aw
  %i.gr = mul i64 %i.gq, -1065810590584100411     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9854)
  %.idx.i.i11.i.i.i.i.i.i.i = shl nuw nsw i64 %i.gp, 5
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 %.idx.i.i11.i.i.i.i.i.i.i
  %i.gt = icmp eq i64 %i.gp, 0
  br i1 %i.gt, label %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i18.i.i.i.i.i.i.i, label %.lr.ph.i.i12.i.i.i.i.i.i.i

.lr.ph.i.i12.i.i.i.i.i.i.i:                       ; preds = %bb.u
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.v

bb.v:                                             ; preds = %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i14.i.i.i.i.i.i.i, %.lr.ph.i.i12.i.i.i.i.i.i.i
  %i.gx = phi i64 [ %i.gr, %.lr.ph.i.i12.i.i.i.i.i.i.i ], [ %i.ih, %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i14.i.i.i.i.i.i.i ]
  %.sroa.0.03.i.i13.i.i.i.i.i.i.i = phi ptr [ %i.go, %.lr.ph.i.i12.i.i.i.i.i.i.i ], [ %i.gy, %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i14.i.i.i.i.i.i.i ] ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i13.i.i.i.i.i.i.i, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9858)
  %i.gz = load i32, ptr %.sroa.0.03.i.i13.i.i.i.i.i.i.i, align 8, !range !14, !alias.scope !9859, !noalias !9860, !noundef !10 ; 2 uses
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = add i64 %i.gx, %i.ha
  %i.hc = mul i64 %i.hb, -1065810590584100411     ; 2 uses
  store i64 %i.hc, ptr %i.e, align 8, !alias.scope !9861
  %i.hd = trunc nuw i32 %i.gz to i1
  br i1 %i.hd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i13.i.i.i.i.i.i.i, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !9859, !noalias !9860, !nonnull !10, !noundef !10
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  call fastcc void @_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hg, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #40, !noalias !9862
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i13.i.i.i.i.i.i.i, i64 16
  %i.hi = load i64, ptr %i.hh, align 8, !alias.scope !9859, !noalias !9860, !noundef !10
  %i.hj = load i64, ptr %i.e, align 8, !alias.scope !9863, !noundef !10
  %i.hk = add i64 %i.hj, %i.hi
  br label %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i14.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i13.i.i.i.i.i.i.i, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9864)
  %i.hm = load i32, ptr %i.hl, align 4, !range !65, !alias.scope !9865, !noalias !9860, !noundef !10
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = add i64 %i.hc, %i.hn
  %i.hp = mul i64 %i.ho, -1065810590584100411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9866
  call void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor7to_vec4(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.hl), !noalias !9867
  %i.hq = load i32, ptr %i.a, align 4, !noalias !9866, !noundef !10
  %i.hr = load i32, ptr %i.gu, align 4, !noalias !9866, !noundef !10
  %i.hs = load i32, ptr %i.gv, align 4, !noalias !9866, !noundef !10
  %i.ht = load i32, ptr %i.gw, align 4, !noalias !9866, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9866
  %i.hu = zext i32 %i.hq to i64
  %i.hv = add i64 %i.hp, %i.hu
  %i.hw = mul i64 %i.hv, -1065810590584100411
  %i.hx = zext i32 %i.hr to i64
  %i.hy = add i64 %i.hw, %i.hx
  %i.hz = mul i64 %i.hy, -1065810590584100411
  %i.ia = zext i32 %i.hs to i64
  %i.ib = add i64 %i.hz, %i.ia
  %i.ic = mul i64 %i.ib, -1065810590584100411
  %i.id = zext i32 %i.ht to i64
  %i.ie = add i64 %i.ic, %i.id
  br label %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i14.i.i.i.i.i.i.i

_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i14.i.i.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %storemerge.in.i.i.i.i15.i.i.i.i.i.i.i = phi i64 [ %i.ie, %bb.x ], [ %i.hk, %bb.w ]
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i13.i.i.i.i.i.i.i, i64 24
  %storemerge.i.i.i.i16.i.i.i.i.i.i.i = mul i64 %storemerge.in.i.i.i.i15.i.i.i.i.i.i.i, -1065810590584100411
  %.val.i.i.i17.i.i.i.i.i.i.i = load i64, ptr %i.if, align 8, !alias.scope !9868, !noalias !9860, !noundef !10
  %i.ig = add i64 %.val.i.i.i17.i.i.i.i.i.i.i, %storemerge.i.i.i.i16.i.i.i.i.i.i.i
  %i.ih = mul i64 %i.ig, -1065810590584100411     ; 3 uses
  store i64 %i.ih, ptr %i.e, align 8, !alias.scope !9869
  %i.ii = icmp eq ptr %i.gy, %i.gs
  br i1 %i.ii, label %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i18.i.i.i.i.i.i.i, label %bb.v

_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i18.i.i.i.i.i.i.i: ; preds = %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i14.i.i.i.i.i.i.i, %bb.u
  %i.ij = phi i64 [ %i.gr, %bb.u ], [ %i.ih, %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i14.i.i.i.i.i.i.i ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 88
  %i.il = load i64, ptr %i.ik, align 8, !alias.scope !9851, !noalias !9810, !noundef !10
  %i.im = add i64 %i.il, %i.ij
  %i.in = mul i64 %i.im, -1065810590584100411
  %i.io = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 96
  %i.ip = load i64, ptr %i.io, align 8, !alias.scope !9851, !noalias !9810, !noundef !10
  %i.iq = add i64 %i.in, %i.ip
  %i.ir = mul i64 %i.iq, -1065810590584100411
  %i.is = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 104
  %i.it = load i64, ptr %i.is, align 8, !alias.scope !9851, !noalias !9810, !noundef !10
  %i.iu = add i64 %i.ir, %i.it
  %i.iv = mul i64 %i.iu, -1065810590584100411
  %i.iw = load i64, ptr %i.ax, align 8, !range !30, !alias.scope !9851, !noalias !9810, !noundef !10
  %i.ix = icmp ne i64 %i.iw, -1                   ; 2 uses
  %i.iy = zext i1 %i.ix to i64
  %i.iz = add i64 %i.iv, %i.iy
  %i.ja = mul i64 %i.iz, -1065810590584100411     ; 2 uses
  store i64 %i.ja, ptr %i.e, align 8, !alias.scope !9870
  br i1 %i.ix, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i18.i.i.i.i.i.i.i
  call fastcc void @_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #40, !noalias !9806
  %.pre.i20.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !9871
  br label %_RINvXsb_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB6_8GradientNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i18.i.i.i.i.i.i.i
  %i.jb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 24
  %i.jc = load i8, ptr %i.jb, align 8, !range !33, !alias.scope !9851, !noalias !9810, !noundef !10
  %i.jd = zext nneg i8 %i.jc to i64
  %i.je = add i64 %i.ja, %i.jd
  %i.jf = mul i64 %i.je, -1065810590584100411
  br label %_RINvXsb_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB6_8GradientNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

_RINvXsb_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB6_8GradientNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i: ; preds = %bb.z, %bb.y, %bb.t, %bb.s, %bb.n, %bb.m
  %.sink23.i.i.i.i.i.i.i = phi i64 [ 137, %bb.t ], [ 97, %bb.n ], [ 97, %bb.m ], [ 137, %bb.s ], [ 113, %bb.y ], [ 113, %bb.z ]
  %.sink19.i.i.i.i.i.i.i = phi i64 [ %i.gn, %bb.t ], [ %i.dj, %bb.n ], [ %.pre.i.i.i.i.i.i.i.i, %bb.m ], [ %.pre.i10.i.i.i.i.i.i.i, %bb.s ], [ %.pre.i20.i.i.i.i.i.i.i, %bb.y ], [ %i.jf, %bb.z ]
  %.sink11.i.i.i.i.i.i.i = phi i64 [ 136, %bb.t ], [ 96, %bb.n ], [ 96, %bb.m ], [ 136, %bb.s ], [ 112, %bb.y ], [ 112, %bb.z ]
  %i.jg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %.sink23.i.i.i.i.i.i.i
  %i.jh = load i8, ptr %i.jg, align 1, !range !64, !noalias !9810, !noundef !10 ; 2 uses
  %i.ji = icmp ne i8 %i.jh, 2                     ; 2 uses
  %i.jj = zext i1 %i.ji to i64
  %i.jk = add i64 %.sink19.i.i.i.i.i.i.i, %i.jj
  %i.jl = mul i64 %i.jk, -1065810590584100411     ; 2 uses
  %i.jm = zext nneg i8 %i.jh to i64
  %i.jn = add i64 %i.jl, %i.jm
  %i.jo = mul i64 %i.jn, -1065810590584100411
  %storemerge.i19.i.i.i.i.i.i.i = select i1 %i.ji, i64 %i.jo, i64 %i.jl
  %i.jp = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %.sink11.i.i.i.i.i.i.i
  %i.jq = load i8, ptr %i.jp, align 8, !range !11, !noalias !9810, !noundef !10
  %i.jr = zext nneg i8 %i.jq to i64
  %i.js = add i64 %storemerge.i19.i.i.i.i.i.i.i, %i.jr
  %i.jt = mul i64 %i.js, -1065810590584100411
  br label %_RINvXs8_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB6_5PaintNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i

bb.aa:                                            ; preds = %bb.c
  %i.ju = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9872)
  %i.jv = load ptr, ptr %i.ju, align 8, !alias.scope !9873, !noalias !9794, !nonnull !10, !noundef !10 ; 9 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16 ; 2 uses
  %i.jx = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !noalias !9874, !nonnull !10, !noundef !10
  %i.jy = tail call noundef i128 %i.jx(ptr noundef nonnull align 16 %i.jw), !noalias !9874, !inline_history !9780 ; 3 uses
  %i.jz = icmp eq i128 %i.jy, 0
  %extract.t1.i.i.i.i.i.i.i.i = trunc i128 %i.jy to i64
  %extract3.i.i.i.i.i.i.i.i = lshr i128 %i.jy, 64
  %extract.t4.i.i.i.i.i.i.i.i = trunc nuw i128 %extract3.i.i.i.i.i.i.i.i to i64
  br i1 %i.jz, label %bb.ab, label %_RINvXs6_NtNtCsdaEETE4DqmE_13typst_library9visualize6tilingNtB6_6TilingNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  %i.kb = tail call fastcc noundef i128 @_RINvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ka), !noalias !9874, !inline_history !5 ; 3 uses
  %i.kc = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6412atomic_store4FUNC monotonic, align 8, !noalias !9874, !nonnull !10, !noundef !10
  tail call void %i.kc(ptr noundef nonnull align 16 %i.jw, i128 noundef %i.kb), !noalias !9874, !inline_history !9781
  %extract.t.i.i.i.i.i.i.i.i = trunc i128 %i.kb to i64
  %extract.i.i.i.i.i.i.i.i = lshr i128 %i.kb, 64
  %extract.t2.i.i.i.i.i.i.i.i = trunc nuw i128 %extract.i.i.i.i.i.i.i.i to i64
  br label %_RINvXs6_NtNtCsdaEETE4DqmE_13typst_library9visualize6tilingNtB6_6TilingNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

_RINvXs6_NtNtCsdaEETE4DqmE_13typst_library9visualize6tilingNtB6_6TilingNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.sroa.0.0.i.off0.i.i.i.i.i.i.i.i = phi i64 [ %extract.t.i.i.i.i.i.i.i.i, %bb.ab ], [ %extract.t1.i.i.i.i.i.i.i.i, %bb.aa ]
  %.sroa.0.0.i.off64.i.i.i.i.i.i.i.i = phi i64 [ %extract.t2.i.i.i.i.i.i.i.i, %bb.ab ], [ %extract.t4.i.i.i.i.i.i.i.i, %bb.aa ]
  %i.kd = add i64 %.sroa.0.0.i.off0.i.i.i.i.i.i.i.i, %2
  %i.ke = mul i64 %i.kd, -1065810590584100411
  %i.kf = add i64 %i.ke, %.sroa.0.0.i.off64.i.i.i.i.i.i.i.i
  %i.kg = mul i64 %i.kf, -1065810590584100411
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jv, i64 80
  %i.ki = load i64, ptr %i.kh, align 16, !noalias !9874, !noundef !10
  %i.kj = add i64 %i.kg, %i.ki
  %i.kk = mul i64 %i.kj, -1065810590584100411
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jv, i64 88
  %i.km = load i64, ptr %i.kl, align 8, !noalias !9874, !noundef !10
  %i.kn = add i64 %i.kk, %i.km
  %i.ko = mul i64 %i.kn, -1065810590584100411
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jv, i64 96
  %i.kq = load i64, ptr %i.kp, align 16, !noalias !9874, !noundef !10
  %i.kr = add i64 %i.ko, %i.kq
  %i.ks = mul i64 %i.kr, -1065810590584100411
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jv, i64 104
  %i.ku = load i64, ptr %i.kt, align 8, !noalias !9874, !noundef !10
  %i.kv = add i64 %i.ks, %i.ku
  %i.kw = mul i64 %i.kv, -1065810590584100411
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jv, i64 112
  %i.ky = load i64, ptr %i.kx, align 16, !noalias !9874, !noundef !10
  %i.kz = add i64 %i.kw, %i.ky
  %i.la = mul i64 %i.kz, -1065810590584100411
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jv, i64 120
  %i.lc = load i64, ptr %i.lb, align 8, !noalias !9874, !noundef !10
  %i.ld = add i64 %i.la, %i.lc
  %i.le = mul i64 %i.ld, -1065810590584100411
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jv, i64 128
  %i.lg = load i8, ptr %i.lf, align 16, !range !64, !noalias !9874, !noundef !10 ; 2 uses
  %i.lh = icmp ne i8 %i.lg, 2                     ; 2 uses
  %i.li = zext i1 %i.lh to i64
  %i.lj = add i64 %i.le, %i.li
  %i.lk = mul i64 %i.lj, -1065810590584100411     ; 2 uses
  %i.ll = zext nneg i8 %i.lg to i64
  %i.lm = add i64 %i.lk, %i.ll
  %i.ln = mul i64 %i.lm, -1065810590584100411
  %storemerge.i.i.i.i.i.i.i.i = select i1 %i.lh, i64 %i.ln, i64 %i.lk
  br label %_RINvXs8_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB6_5PaintNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i

_RINvXs8_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB6_5PaintNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i: ; preds = %_RINvXs6_NtNtCsdaEETE4DqmE_13typst_library9visualize6tilingNtB6_6TilingNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, %_RINvXsb_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB6_8GradientNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, %_RINvXsy_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_5ColorNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, %bb.b
  %i.lo = phi i64 [ 1452335207727870361, %bb.b ], [ %storemerge.i.i.i.i.i.i.i.i, %_RINvXs6_NtNtCsdaEETE4DqmE_13typst_library9visualize6tilingNtB6_6TilingNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i ], [ %i.jt, %_RINvXsb_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB6_8GradientNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i ], [ %storemerge.i.i.i.i.i.i.i, %_RINvXsy_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_5ColorNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i ]
  %i.lp = load i64, ptr %i.f, align 8, !range !19, !alias.scope !9792, !noalias !9794, !noundef !10 ; 2 uses
  %i.lq = add i64 %i.lp, %i.lo
  %i.lr = mul i64 %i.lq, -1065810590584100411     ; 2 uses
  %i.ls = trunc nuw i64 %i.lp to i1
  %i.lt = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %.val.i.i.i.i.i = load i64, ptr %i.lt, align 8, !alias.scope !9792, !noalias !9794
  %i.lu = add i64 %i.lr, %.val.i.i.i.i.i
  %i.lv = mul i64 %i.lu, -1065810590584100411
  %i.lw = select i1 %i.ls, i64 %i.lv, i64 %i.lr
  %i.lx = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 104
  %i.ly = load i8, ptr %i.lx, align 8, !range !70, !alias.scope !9792, !noalias !9794, !noundef !10 ; 2 uses
  %i.lz = icmp ne i8 %i.ly, -1                    ; 2 uses
  %i.ma = zext i1 %i.lz to i64
  %i.mb = add i64 %i.lw, %i.ma
  %i.mc = mul i64 %i.mb, -1065810590584100411     ; 2 uses
  %i.md = zext nneg i8 %i.ly to i64
  %i.me = add i64 %i.mc, %i.md
  %i.mf = mul i64 %i.me, -1065810590584100411
  %storemerge.i.i.i.i.i = select i1 %i.lz, i64 %i.mf, i64 %i.mc
  %i.mg = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 105
  %i.mh = load i8, ptr %i.mg, align 1, !range !70, !alias.scope !9792, !noalias !9794, !noundef !10 ; 2 uses
  %i.mi = icmp ne i8 %i.mh, -1                    ; 2 uses
  %i.mj = zext i1 %i.mi to i64
  %i.mk = add i64 %storemerge.i.i.i.i.i, %i.mj
  %i.ml = mul i64 %i.mk, -1065810590584100411     ; 2 uses
  %i.mm = zext nneg i8 %i.mh to i64
  %i.mn = add i64 %i.ml, %i.mm
  %i.mo = mul i64 %i.mn, -1065810590584100411
  %storemerge7.i.i.i.i.i = select i1 %i.mi, i64 %i.mo, i64 %i.ml
  %i.mp = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 48
  %i.mq = load i64, ptr %i.mp, align 8, !range !38, !alias.scope !9792, !noalias !9794, !noundef !10 ; 2 uses
  %i.mr = icmp ne i64 %i.mq, -2                   ; 2 uses
  %i.ms = zext i1 %i.mr to i64
  %i.mt = add i64 %storemerge7.i.i.i.i.i, %i.ms
  %i.mu = mul i64 %i.mt, -1065810590584100411     ; 2 uses
  br i1 %i.mr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_RINvXs8_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB6_5PaintNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i
  %i.mv = icmp ne i64 %i.mq, -1                   ; 2 uses
  %i.mw = zext i1 %i.mv to i64
  %i.mx = add i64 %i.mu, %i.mw
  %i.my = mul i64 %i.mx, -1065810590584100411     ; 2 uses
  br i1 %i.mv, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_RINvXsu_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB6_11DashPatternNtNtNtBa_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i, %bb.ac, %_RINvXs8_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB6_5PaintNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i
  %i.mz = phi i64 [ %i.my, %bb.ac ], [ %i.op, %_RINvXsu_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB6_11DashPatternNtNtNtBa_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i ], [ %i.mu, %_RINvXs8_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB6_5PaintNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i ]
  %i.na = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 32
  %i.nb = load i64, ptr %i.na, align 8, !range !19, !alias.scope !9792, !noalias !9794, !noundef !10 ; 2 uses
  %i.nc = add i64 %i.nb, %i.mz
  %i.nd = mul i64 %i.nc, -1065810590584100411     ; 2 uses
  %i.ne = trunc nuw i64 %i.nb to i1
  br i1 %i.ne, label %bb.af, label %_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRINtNtBa_6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1H_6layout3abs3AbsEEENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit

bb.ae:                                            ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9875)
  %i.nf = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 56
  %i.ng = load ptr, ptr %i.nf, align 8, !alias.scope !9876, !noalias !9794, !nonnull !10, !noundef !10 ; 5 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 64
  %i.ni = load i64, ptr %i.nh, align 8, !alias.scope !9876, !noalias !9794, !noundef !10 ; 3 uses
  %i.nj = add i64 %i.ni, %i.my
  %i.nk = mul i64 %i.nj, -1065810590584100411     ; 3 uses
  %.idx.i.i.i.i.i.i.i = shl i64 %i.ni, 4          ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ng, i64 %.idx.i.i.i.i.i.i.i
  %i.nm = icmp eq i64 %i.ni, 0
  br i1 %i.nm, label %_RINvXsu_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB6_11DashPatternNtNtNtBa_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.ae
  %i.nn = add i64 %.idx.i.i.i.i.i.i.i, -16        ; 2 uses
  %i.no = and i64 %i.nn, 16
  %lcmp.mod.not.not = icmp eq i64 %i.no, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.np = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %.sroa.0.0.val.i.i.i.i.i.i.i.prol = load i64, ptr %i.ng, align 8, !range !19, !alias.scope !9877, !noalias !9878, !noundef !10 ; 2 uses
  %i.nq = getelementptr i8, ptr %i.ng, i64 8
  %.sroa.0.0.val3.i.i.i.i.i.i.i.prol = load i64, ptr %i.nq, align 8, !alias.scope !9877, !noalias !9878
  %i.nr = add i64 %.sroa.0.0.val.i.i.i.i.i.i.i.prol, %i.nk
  %i.ns = mul i64 %i.nr, -1065810590584100411     ; 2 uses
  %i.nt = trunc nuw i64 %.sroa.0.0.val.i.i.i.i.i.i.i.prol to i1
  %i.nu = add i64 %i.ns, %.sroa.0.0.val3.i.i.i.i.i.i.i.prol
  %i.nv = mul i64 %i.nu, -1065810590584100411
  %storemerge.i.i.i5.i.i.i.i.i.prol = select i1 %i.nt, i64 %i.nv, i64 %i.ns ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %storemerge.i.i.i5.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %storemerge.i.i.i5.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.i.i.i.unr = phi ptr [ %i.ng, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.np, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %storemerge.i45.i.i.i.i.i.i.i.unr = phi i64 [ %i.nk, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %storemerge.i.i.i5.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.nw = icmp eq i64 %i.nn, 0
  br i1 %i.nw, label %_RINvXsu_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB6_11DashPatternNtNtNtBa_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i = phi ptr [ %i.oe, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %storemerge.i45.i.i.i.i.i.i.i = phi i64 [ %storemerge.i.i.i5.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %storemerge.i45.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i.i.i, i64 16
  %.sroa.0.0.val.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i.i.i.i, align 8, !range !19, !alias.scope !9877, !noalias !9878, !noundef !10 ; 2 uses
  %i.ny = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i.i, i64 8
  %.sroa.0.0.val3.i.i.i.i.i.i.i = load i64, ptr %i.ny, align 8, !alias.scope !9877, !noalias !9878
  %i.nz = add i64 %.sroa.0.0.val.i.i.i.i.i.i.i, %storemerge.i45.i.i.i.i.i.i.i
  %i.oa = mul i64 %i.nz, -1065810590584100411     ; 2 uses
  %i.ob = trunc nuw i64 %.sroa.0.0.val.i.i.i.i.i.i.i to i1
  %i.oc = add i64 %i.oa, %.sroa.0.0.val3.i.i.i.i.i.i.i
  %i.od = mul i64 %i.oc, -1065810590584100411
  %storemerge.i.i.i5.i.i.i.i.i = select i1 %i.ob, i64 %i.od, i64 %i.oa
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.sroa.0.0.val.i.i.i.i.i.i.i.1 = load i64, ptr %i.nx, align 8, !range !19, !alias.scope !9877, !noalias !9878, !noundef !10 ; 2 uses
  %i.of = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i.i, i64 24
  %.sroa.0.0.val3.i.i.i.i.i.i.i.1 = load i64, ptr %i.of, align 8, !alias.scope !9877, !noalias !9878
  %i.og = add i64 %.sroa.0.0.val.i.i.i.i.i.i.i.1, %storemerge.i.i.i5.i.i.i.i.i
  %i.oh = mul i64 %i.og, -1065810590584100411     ; 2 uses
  %i.oi = trunc nuw i64 %.sroa.0.0.val.i.i.i.i.i.i.i.1 to i1
  %i.oj = add i64 %i.oh, %.sroa.0.0.val3.i.i.i.i.i.i.i.1
  %i.ok = mul i64 %i.oj, -1065810590584100411
  %storemerge.i.i.i5.i.i.i.i.i.1 = select i1 %i.oi, i64 %i.ok, i64 %i.oh ; 2 uses
  %i.ol = icmp eq ptr %i.oe, %i.nl
  br i1 %i.ol, label %_RINvXsu_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB6_11DashPatternNtNtNtBa_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RINvXsu_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB6_11DashPatternNtNtNtBa_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.ae
  %i.om = phi i64 [ %i.nk, %bb.ae ], [ %storemerge.i.i.i5.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %storemerge.i.i.i5.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.on = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 72
  %.val.i6.i.i.i.i.i = load i64, ptr %i.on, align 8, !alias.scope !9876, !noalias !9794, !noundef !10
  %i.oo = add i64 %.val.i6.i.i.i.i.i, %i.om
  %i.op = mul i64 %i.oo, -1065810590584100411
  br label %bb.ad

bb.af:                                            ; preds = %bb.ad
  %i.oq = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 40
  %i.or = load i64, ptr %i.oq, align 8, !alias.scope !9792, !noalias !9794, !noundef !10
  %i.os = add i64 %i.or, %i.nd
  %i.ot = mul i64 %i.os, -1065810590584100411
  br label %_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRINtNtBa_6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1H_6layout3abs3AbsEEENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit

_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRINtNtBa_6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1H_6layout3abs3AbsEEENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.a, %bb.ad, %bb.af
  %.val1 = phi i64 [ 0, %bb.a ], [ %i.nd, %bb.ad ], [ %i.ot, %bb.af ] ; 2 uses
  %i.ou = tail call noundef i64 @llvm.fshl.i64(i64 %.val1, i64 %.val1, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i64 %i.ou
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RINvYNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9906)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !9906, !noalias !9907, !nonnull !10, !noundef !10 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9908)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !9908, !noalias !9909, !nonnull !10, !noundef !10 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2880
  %i.f = load ptr, ptr %i.e, align 8, !noalias !9910, !nonnull !10, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 2888
  %i.h = load ptr, ptr %i.g, align 8, !noalias !9910, !nonnull !10, !align !21, !noundef !10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !invariant.load !10, !noalias !9910 ; 2 uses
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.j, i64 16)
  %i.l = add nsw i64 %i.k, -1
  %i.m = and i64 %i.l, -16
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9911)
  %i.p = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !noalias !9912, !nonnull !10, !noundef !10
  %i.q = tail call noundef i128 %i.p(ptr noundef nonnull align 16 %i.o), !noalias !9912, !inline_history !9890 ; 3 uses
  %i.r = icmp eq i128 %i.q, 0
  %extract.t1.i.i.i = trunc i128 %i.q to i64
  %extract3.i.i.i = lshr i128 %i.q, 64
  %extract.t4.i.i.i = trunc nuw i128 %extract3.i.i.i to i64
  br i1 %i.r, label %bb.b, label %_RINvXs0_NtNtCsdaEETE4DqmE_13typst_library4text4fontNtB6_4FontNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.val4.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !9911, !noalias !9910
  %i.t = add nsw i64 %i.j, -1
  %i.u = and i64 %i.t, -16
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9912
  store i64 8317987319222330741, ptr %i.a, align 8, !noalias !9912
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 7816392313619706465, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !9912
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 7237128888997146499, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !9912
  %.sroa.613.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 8387220255154660723, ptr %.sroa.613.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !9912
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i.i.i.i, i8 0, i64 40, i1 false), !noalias !9912
  %i.x = tail call { ptr, i64 } %.val4.i.i.i.i(ptr noundef nonnull %i.w) #40, !noalias !9913, !inline_history !9893 ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.x, 0
  %i.z = extractvalue { ptr, i64 } %i.x, 1        ; 2 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef %i.z), !noalias !9912
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.z), !noalias !9912
  %i.aa = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Cs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.a) #40, !noalias !9912 ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0      ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.aa, 1      ; 2 uses
  %i.ad = zext i64 %i.ab to i128
  %i.ae = zext i64 %i.ac to i128
  %i.af = shl nuw i128 %i.ae, 64
  %i.ag = or disjoint i128 %i.af, %i.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9912
  %i.ah = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6412atomic_store4FUNC monotonic, align 8, !noalias !9912, !nonnull !10, !noundef !10
end_hunk_1
begin_hunk_2_@_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve12resolve_node:bb.a
  %i.z = alloca [56 x i8], align 8                ; 10 uses
  %i.aa = alloca [56 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [88 x i8], align 8               ; 3 uses
  %i.ad = alloca [32 x i8], align 8               ; 4 uses
  %i.ae = alloca [32 x i8], align 8               ; 4 uses
  %i.af = alloca [32 x i8], align 8               ; 4 uses
  %i.ag = alloca [56 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.764 = alloca [112 x i8], align 8         ; 6 uses
  %i.aj = alloca [56 x i8], align 8               ; 10 uses
  %i.ak = alloca [64 x i8], align 8               ; 11 uses
  %i.al = alloca [56 x i8], align 8               ; 22 uses
  %i.am = alloca [56 x i8], align 8               ; 19 uses
  %i.an = alloca [7 x i8], align 8                ; 8 uses
  %i.ao = alloca [64 x i8], align 8               ; 11 uses
  %i.ap = alloca [88 x i8], align 8               ; 6 uses
  %i.aq = alloca [88 x i8], align 8               ; 5 uses
  %i.ar = load i64, ptr %4, align 8, !range !40, !noundef !10 ; 2 uses
  %i.as = xor i64 %i.ar, -9223372036854775808
  %i.at = icmp slt i64 %i.ar, 0
  %i.au = select i1 %i.at, i64 %i.as, i64 3
  %.sroa.02.0.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 4 uses
  %.sroa.02.0.i.sroa.gep129 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  switch i64 %i.au, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.ce
    i64 2, label %bb.cf
    i64 3, label %bb.cj
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20010)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !20009, !nonnull !10, !align !21, !noundef !10 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  %.val53.i = load i64, ptr %i.az, align 8, !noalias !20011, !noundef !10 ; 2 uses
  %i.ba = zext i32 %i.aw to i64                   ; 3 uses
  %i.bb = icmp ugt i64 %.val53.i, %i.ba
  br i1 %i.bb, label %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ba, i64 noundef %.val53.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #42, !noalias !20011
  unreachable

_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit: ; preds = %bb.c
  %i.bc = getelementptr i8, ptr %i.ay, i64 8
  %.val52.i = load ptr, ptr %i.bc, align 8, !noalias !20011, !nonnull !10, !noundef !10
  %i.bd = getelementptr inbounds nuw [80 x i8], ptr %.val52.i, i64 %i.ba ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !20012
  call fastcc void @_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve15build_group_tag(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bd), !inline_history !19892
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !20012
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 6 uses
  %i.bf = load i8, ptr %i.be, align 8, !range !53, !alias.scope !20013, !noundef !10
  switch i8 %i.bf, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.h
    i8 2, label %bb.h
    i8 3, label %bb.h
    i8 4, label %bb.f
    i8 5, label %bb.f
    i8 6, label %bb.f
    i8 7, label %bb.f
    i8 8, label %bb.f
    i8 9, label %bb.f
    i8 10, label %bb.e
    i8 11, label %bb.f
    i8 12, label %bb.f
    i8 13, label %bb.f
    i8 14, label %bb.f
    i8 15, label %bb.f
    i8 16, label %bb.h
    i8 17, label %bb.f
    i8 18, label %bb.f
    i8 19, label %bb.f
    i8 20, label %bb.f
    i8 21, label %bb.f
    i8 22, label %bb.f
    i8 23, label %bb.f
    i8 24, label %bb.f
    i8 25, label %bb.h
    i8 26, label %bb.h
    i8 27, label %bb.f
  ]

default.unreachable:                              ; preds = %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit
  unreachable

bb.e:                                             ; preds = %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit
  %.sink66.i = phi i64 [ 1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 2, %bb.e ], [ 1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ]
  %.sink.i42 = phi i64 [ 2, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 2, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 2, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 2, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 2, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 2, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 2, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 2, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 2, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 2, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 2, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 2, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 2, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 2, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 3, %bb.e ], [ 2, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 2, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 2, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 2, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 2, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 2, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ 2, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sink66.i
  %.sroa.23.0..sroa_idx63.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sink.i42
  %.sroa.01.0.i = load i8, ptr %i.bg, align 1, !alias.scope !20013
  %.sroa.23.0.i = load i48, ptr %.sroa.23.0..sroa_idx63.i, align 1, !alias.scope !20013
  br label %bb.h

bb.g:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.h:                                             ; preds = %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit, %bb.f
  %.sroa.8.sroa.0.0.i = phi i48 [ %.sroa.23.0.i, %bb.f ], [ undef, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ undef, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ undef, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ undef, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ undef, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ undef, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ]
  %.sroa.0.0.i43 = phi i8 [ %.sroa.01.0.i, %bb.f ], [ -1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ -1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ -1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ -1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ -1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ], [ -1, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvecINtB2_5IdVecNtNtB6_6groups5GroupE3getB8_.exit ] ; 2 uses
  %.sroa.8.0.insert.ext.i = zext i48 %.sroa.8.sroa.0.0.i to i56
  %.sroa.8.0.insert.shift.i = shl nuw i56 %.sroa.8.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i44 = zext i8 %.sroa.0.0.i43 to i56
  %.val54.i = load i64, ptr %i.ao, align 8, !noalias !20012 ; 2 uses
  %.not.i41 = icmp eq i8 %.sroa.0.0.i43, -1
  %.not1.i = icmp eq i64 %.val54.i, -1            ; 2 uses
  %i.bi = select i1 %.not.i41, i1 true, i1 %.not1.i
  %.sroa.04.0.insert.ext.i = select i1 %i.bi, i56 255, i56 %.sroa.0.0.insert.ext.i44
  %.sroa.04.0.insert.insert.i = or disjoint i56 %.sroa.04.0.insert.ext.i, %.sroa.8.0.insert.shift.i
  store i56 %.sroa.04.0.insert.insert.i, ptr %i.an, align 8, !noalias !20012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !20012
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !20009, !nonnull !10, !align !21, !noundef !10 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 128
  %.val55.i = load ptr, ptr %i.bl, align 8        ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bk, i64 136
  %.val56.i = load i64, ptr %i.bm, align 8        ; 2 uses
  %i.bn = load i8, ptr %i.be, align 8, !range !53, !alias.scope !20014, !noundef !10
  %switch.tableidx = add nsw i8 %i.bn, -6         ; 3 uses
  %i.bo = icmp ult i8 %switch.tableidx, 15
  br i1 %i.bo, label %switch.hole_check, label %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB4_3Ctx4bbox.exit.thread

switch.hole_check:                                ; preds = %bb.h
  %switch.maskindex = zext nneg i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 30721, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB4_3Ctx4bbox.exit.thread

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bp = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve21resolve_artifact_node, i64 %i.bp
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 %switch.ext
  %.sroa.8.0.i = load i32, ptr %i.bq, align 4, !alias.scope !20014, !noundef !10
  %i.br = zext i32 %.sroa.8.0.i to i64            ; 3 uses
  %i.bs = icmp ugt i64 %.val56.i, %i.br
  br i1 %i.bs, label %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB4_3Ctx4bbox.exit, label %bb.i

bb.i:                                             ; preds = %switch.lookup
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.br, i64 noundef %.val56.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #42
          to label %.noexc40 unwind label %bb.g

.noexc40:                                         ; preds = %bb.i
  unreachable

_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB4_3Ctx4bbox.exit: ; preds = %switch.lookup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val55.i) ]
  %i.bt = getelementptr inbounds nuw [56 x i8], ptr %.val55.i, i64 %i.br ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i)
  %i.bu = load i64, ptr %i.bt, align 8, !range !19, !alias.scope !20015, !noundef !10
  %i.bv = trunc nuw i64 %i.bu to i1
  br i1 %i.bv, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB4_3Ctx4bbox.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !20016, !noundef !10
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.by, i64 32, i1 false), !noalias !20017
  br label %bb.l

_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB4_3Ctx4bbox.exit.thread: ; preds = %switch.hole_check, %bb.h
  store i64 2, ptr %i.am, align 8, !noalias !20012
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB4_3Ctx4bbox.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !20012
  store i64 -1, ptr %i.al, align 8, !noalias !20012
  br i1 %.not1.i, label %.thread, label %switch.lookup156

bb.l:                                             ; preds = %bb.j, %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB4_3Ctx4bbox.exit
  %.sroa.5.sroa.0.0.i36 = phi i64 [ %i.bx, %bb.j ], [ undef, %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB4_3Ctx4bbox.exit ]
  %.sroa.0.0.i37 = phi i64 [ 1, %bb.j ], [ 0, %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB4_3Ctx4bbox.exit ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.ca = load i8, ptr %i.bz, align 8, !range !11, !alias.scope !20015, !noundef !10
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.568.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.i, i64 32, i1 false), !noalias !10
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i)
  store i64 %.sroa.0.0.i37, ptr %i.am, align 8, !noalias !20012
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %.sroa.5.sroa.0.0.i36, ptr %.sroa.467.0..sroa_idx, align 8, !noalias !20012
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store i8 %i.ca, ptr %.sroa.669.0..sroa_idx, align 8, !noalias !20012
  br label %bb.k

.thread96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph154, %.lr.ph, %.noexc20, %5, %bb.w, %bb.u, %switch.lookup156
  %lpad.loopexit.split-lp160 = landingpad { ptr, i32 }
          cleanup
  br label %.thread96

switch.lookup156:                                 ; preds = %bb.k
  %switch.gep157 = getelementptr inbounds i8, ptr @switch.table._RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve12resolve_node.1707, i64 %.val54.i
  %switch.load158 = load i8, ptr %switch.gep157, align 1 ; 2 uses
  invoke fastcc void @_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator19flush_grouping_span(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %3)
          to label %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator4nest.exit unwind label %.thread96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator4nest.exit: ; preds = %switch.lookup156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20020)
  %i.cb = load i64, ptr %i.al, align 8, !range !24, !alias.scope !20021, !noundef !10
  %i.cc = icmp eq i64 %i.cb, -1
  br i1 %i.cc, label %bb.t, label %bb.m

bb.m:                                             ; preds = %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator4nest.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20022)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging4NodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.al)
          to label %bb.p unwind label %bb.n, !noalias !20019

bb.n:                                             ; preds = %bb.m
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !range !24, !alias.scope !20023, !noundef !10
  %i.cg = icmp eq i64 %i.cf, -1
  br i1 %i.cg, label %.thread91, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging4NodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ce)
          to label %.thread91 unwind label %bb.r, !noalias !20019

bb.p:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !range !24, !alias.scope !20024, !noundef !10
  %i.cj = icmp eq i64 %i.ci, -1
  br i1 %i.cj, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging4NodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ch)
          to label %bb.t unwind label %bb.s, !noalias !20019

bb.r:                                             ; preds = %bb.o
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !20025
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.thread91

.thread91:                                        ; preds = %bb.n, %bb.o, %bb.s
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cl, %bb.s ], [ %i.cd, %bb.o ], [ %i.cd, %bb.n ]
  store i64 0, ptr %i.al, align 8, !alias.scope !20026
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !20026
  store i64 0, ptr %.sroa.02.0.i.sroa.gep, align 8, !alias.scope !20026
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 -1, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !20026
  %.sroa.855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i8 %switch.load158, ptr %.sroa.855.0..sroa_idx, align 8, !alias.scope !20026
  br label %.thread96

bb.t:                                             ; preds = %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator4nest.exit, %bb.p, %bb.q
  store i64 0, ptr %i.al, align 8, !alias.scope !20026
  %.sroa.5.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx48, align 8, !alias.scope !20026
  store i64 0, ptr %.sroa.02.0.i.sroa.gep, align 8, !alias.scope !20026
  %.sroa.7.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 -1, ptr %.sroa.7.0..sroa_idx52, align 8, !alias.scope !20026
  %.sroa.855.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i8 %switch.load158, ptr %.sroa.855.0..sroa_idx56, align 8, !alias.scope !20026
  %.pre = load i64, ptr %i.ao, align 8, !range !41, !noalias !20012
  %i.cm = icmp eq i64 %.pre, -1
  br i1 %i.cm, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = invoke { ptr, i64 } @_RNvMsm_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB5_7TagKind8alt_text(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ao)
          to label %_RNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve18resolve_group_nodes_0B7_.exit unwind label %.thread96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve18resolve_group_nodes_0B7_.exit: ; preds = %bb.u
  %i.co = extractvalue { ptr, i64 } %i.cn, 0
  %i.cp = icmp ne ptr %i.co, null
  %i.cq = zext i1 %i.cp to i8
  br label %.thread

.thread:                                          ; preds = %bb.k, %_RNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve18resolve_group_nodes_0B7_.exit, %bb.t
  %.sroa.02.0.i145 = phi ptr [ %i.al, %bb.t ], [ %i.al, %_RNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve18resolve_group_nodes_0B7_.exit ], [ %3, %bb.k ] ; 3 uses
  %.sroa.02.0.i.sroa.phi144 = phi ptr [ %.sroa.02.0.i.sroa.gep, %bb.t ], [ %.sroa.02.0.i.sroa.gep, %_RNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve18resolve_group_nodes_0B7_.exit ], [ %.sroa.02.0.i.sroa.gep129, %bb.k ]
  %.sroa.03.0.i = phi i8 [ 0, %bb.t ], [ %i.cq, %_RNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve18resolve_group_nodes_0B7_.exit ], [ 0, %bb.k ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20027)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 58 ; 3 uses
  %i.cs = load i8, ptr %i.cr, align 2, !range !11, !alias.scope !20027, !noundef !10 ; 2 uses
  %i.ct = or i8 %i.cs, %.sroa.03.0.i
  store i8 %i.ct, ptr %i.cr, align 2, !alias.scope !20027
  %i.cu = load i8, ptr %i.an, align 8, !range !70, !noalias !20028, !noundef !10
  %.not.i.i = icmp eq i8 %i.cu, -1
  %.sroa.06.0.i.i = select i1 %.not.i.i, ptr %1, ptr %i.an
  %i.cv = load i64, ptr %i.am, align 8, !range !29, !noalias !20028, !noundef !10
  %.not10.i.i = icmp eq i64 %i.cv, 2
  %spec.select = select i1 %.not10.i.i, ptr %2, ptr %i.am ; 2 uses
  %.val16.i.i = load i8, ptr %i.be, align 8, !range !53, !noalias !20028, !noundef !10
  %i.cw = icmp eq i8 %.val16.i.i, 1
  %i.cx = getelementptr i8, ptr %i.bd, i64 8      ; 2 uses
  br i1 %i.cw, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.thread
  %i.cy = getelementptr i8, ptr %i.bd, i64 16     ; 2 uses
  %.val15.i.i = load i64, ptr %i.cy, align 8, !noalias !20028, !noundef !10 ; 3 uses
  %i.cz = load i64, ptr %.sroa.02.0.i.sroa.phi144, align 8, !alias.scope !20029, !noundef !10 ; 2 uses
  %i.da = load i64, ptr %.sroa.02.0.i145, align 8, !range !17, !alias.scope !20029, !noundef !10
  %i.db = sub i64 %i.da, %i.cz
  %i.dc = icmp ugt i64 %.val15.i.i, %i.db
  br i1 %i.dc, label %bb.w, label %.noexc24, !prof !13

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.sroa.02.0.i145, i64 noundef %i.cz, i64 noundef %.val15.i.i, i64 noundef 8, i64 noundef 88)
          to label %..noexc24_crit_edge unwind label %.thread96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

..noexc24_crit_edge:                              ; preds = %bb.w
  %.val13.i.i.pre = load i64, ptr %i.cy, align 8, !noalias !20028
  br label %.noexc24

.noexc24:                                         ; preds = %..noexc24_crit_edge, %bb.v
  %.val13.i.i = phi i64 [ %.val13.i.i.pre, %..noexc24_crit_edge ], [ %.val15.i.i, %bb.v ] ; 2 uses
  %.val12.i.i = load ptr, ptr %i.cx, align 8, !noalias !20028, !nonnull !10, !noundef !10 ; 2 uses
  %.idx = shl nuw nsw i64 %.val13.i.i, 6
  %i.dd = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 %.idx
  %i.de = icmp eq i64 %.val13.i.i, 0
  br i1 %i.de, label %.loopexit, label %.lr.ph

bb.x:                                             ; preds = %.thread
  %.val.i.i = load ptr, ptr %i.cx, align 8, !noalias !20028, !nonnull !10, !noundef !10 ; 2 uses
  %i.df = getelementptr i8, ptr %i.bd, i64 16
  %.val11.i.i = load i64, ptr %i.df, align 8, !noalias !20028, !noundef !10 ; 2 uses
  %.idx155 = shl nuw nsw i64 %.val11.i.i, 6
  %i.dg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx155
  %i.dh = icmp eq i64 %.val11.i.i, 0
  br i1 %i.dh, label %.loopexit, label %.lr.ph154

.noexc25:                                         ; preds = %.lr.ph
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i152, i64 64 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.dd
  br i1 %i.dj, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc24, %.noexc25
  %.sroa.03.0.i.i152 = phi ptr [ %i.di, %.noexc25 ], [ %.val12.i.i, %.noexc24 ] ; 2 uses
  invoke fastcc void @_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve12resolve_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef dereferenceable(7) %.sroa.06.0.i.i, ptr noalias nofree noundef align 8 dereferenceable(56) %spec.select, ptr noalias nofree noundef align 8 dereferenceable(56) %.sroa.02.0.i145, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.03.0.i.i152)
          to label %.noexc25 unwind label %.thread96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !19923

.noexc26:                                         ; preds = %.lr.ph154
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i153, i64 64 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.dg
  br i1 %i.dl, label %.loopexit, label %.lr.ph154

.lr.ph154:                                        ; preds = %bb.x, %.noexc26
  %.sroa.01.0.i.i153 = phi ptr [ %i.dk, %.noexc26 ], [ %.val.i.i, %bb.x ] ; 3 uses
  %.sroa.01.0.val.i.i = load i64, ptr %.sroa.01.0.i.i153, align 8, !range !40, !noalias !20028, !noundef !10
  %i.dm = getelementptr i8, ptr %.sroa.01.0.i.i153, i64 8
  %.sroa.01.0.val17.i.i = load i32, ptr %i.dm, align 8, !noalias !20028
  invoke fastcc void @_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve21resolve_artifact_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %spec.select, i64 %.sroa.01.0.val.i.i, i32 %.sroa.01.0.val17.i.i)
          to label %.noexc26 unwind label %.thread96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !19923

.loopexit:                                        ; preds = %.noexc25, %.noexc26, %.noexc24, %bb.x
  store i8 %i.cs, ptr %i.cr, align 2, !alias.scope !20027
  %.sroa.011.0.copyload.i = load i8, ptr %i.an, align 8, !noalias !20012 ; 5 uses
  %.not41.i = icmp eq i8 %.sroa.011.0.copyload.i, -1
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %.sroa.512.sroa.0.0.copyload.i = load i48, ptr %.sroa.512.0..sroa_idx.i, align 1, !noalias !20012
  %i.dn = zext i48 %.sroa.512.sroa.0.0.copyload.i to i56
  %.sroa.034.1.insert.ext.i = select i1 %.not41.i, i56 0, i56 %i.dn ; 4 uses
  %.sroa.034.1.insert.shift.i = shl nuw i56 %.sroa.034.1.insert.ext.i, 8
  %.sroa.617.0.extract.trunc.i = trunc i56 %.sroa.034.1.insert.ext.i to i16 ; 2 uses
  %.sroa.8.0.extract.shift.i = lshr i56 %.sroa.034.1.insert.ext.i, 16
  %.sroa.8.0.extract.trunc.i = trunc i56 %.sroa.8.0.extract.shift.i to i24 ; 2 uses
  %.sroa.9.0.extract.shift.i = lshr i56 %.sroa.034.1.insert.ext.i, 40
  %.sroa.9.0.extract.trunc.i = trunc nuw i56 %.sroa.9.0.extract.shift.i to i8 ; 2 uses
  switch i8 %.sroa.011.0.copyload.i, label %bb.y [
    i8 -1, label %bb.aa
    i8 2, label %bb.aa
  ]

bb.y:                                             ; preds = %.loopexit
  %.sroa.01.0.copyload.i.i.i = load i8, ptr %1, align 1, !alias.scope !20030 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %.sroa.5.sroa.0.0.copyload.i.i.i = load i16, ptr %.sroa.5.0..sroa_idx.i.i.i, align 1, !alias.scope !20030
  %.not.i.i.i = icmp eq i8 %.sroa.01.0.copyload.i.i.i, 2
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread38.i, label %.cont.cont.i

.cont.cont.i:                                     ; preds = %bb.y
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.sroa.5.sroa.4.sroa.0.0.copyload.i.i.i = load i24, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 1, !alias.scope !20030
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.sroa.5.sroa.5.0.copyload.i.i.i = load i8, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 1, !alias.scope !20030
  %i.do = icmp eq i8 %.sroa.5.sroa.5.0.copyload.i.i.i, %.sroa.9.0.extract.trunc.i
  %i.dp = icmp eq i24 %.sroa.5.sroa.4.sroa.0.0.copyload.i.i.i, %.sroa.8.0.extract.trunc.i
  %or.cond.i.i.i = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %or.cond.i.i.i, label %.cont24.i, label %bb.aa

.cont24.i:                                        ; preds = %.cont.cont.i
  %i.dq = trunc nuw i8 %.sroa.01.0.copyload.i.i.i to i1
  %i.dr = trunc i8 %.sroa.011.0.copyload.i to i1  ; 2 uses
  br i1 %i.dq, label %bb.z, label %.split.i

bb.z:                                             ; preds = %.cont24.i
  br i1 %i.dr, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.i, label %bb.aa

.split.i:                                         ; preds = %.cont24.i
  br i1 %i.dr, label %bb.aa, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread38.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.i: ; preds = %bb.z
  %i.ds = icmp eq i16 %.sroa.5.sroa.0.0.copyload.i.i.i, %.sroa.617.0.extract.trunc.i
  br i1 %i.ds, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread38.i, label %bb.aa

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread38.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.i, %.split.i, %bb.y
  store i8 %.sroa.011.0.copyload.i, ptr %1, align 1, !alias.scope !20031
  store i16 %.sroa.617.0.extract.trunc.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 1, !alias.scope !20031
  %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i24 %.sroa.8.0.extract.trunc.i, ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !20031
  %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %.sroa.9.0.extract.trunc.i, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !20031
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit, %.loopexit, %.cont.cont.i, %bb.z, %.split.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread38.i
  %.sroa.0.1.i = phi i8 [ 2, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread38.i ], [ 1, %.split.i ], [ 1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.i ], [ 2, %.loopexit ], [ %.sroa.011.0.copyload.i, %.cont.cont.i ], [ 0, %bb.z ], [ 2, %.loopexit ] ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i8 %.sroa.0.1.i to i56
  %.sroa.0.0.insert.insert.i = or disjoint i56 %.sroa.034.1.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.dt = load i64, ptr %2, align 8, !range !29, !noundef !10 ; 2 uses
  %.not42.i = icmp eq i64 %i.dt, 2
  %i.du = load i64, ptr %i.am, align 8, !range !29, !noalias !20012, !noundef !10 ; 2 uses
  %.not43.i = icmp eq i64 %i.du, 2
  %i.dv = or i1 %.not42.i, %.not43.i
  br i1 %i.dv, label %_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !20032)
  call void @llvm.experimental.noalias.scope.decl(metadata !20033)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.dx = load i8, ptr %i.dw, align 8, !range !11, !alias.scope !20033, !noundef !10
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.dz = load i8, ptr %i.dy, align 8, !range !11, !alias.scope !20032, !noundef !10
  %i.ea = or i8 %i.dz, %i.dx                      ; 2 uses
  %.not9.i = icmp eq i8 %i.ea, 0
  store i8 %i.ea, ptr %i.dy, align 8, !alias.scope !20032
  %i.eb = trunc nuw i64 %i.du to i1
  %or.cond.i18 = select i1 %.not9.i, i1 %i.eb, i1 false
  br i1 %or.cond.i18, label %bb.ac, label %_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !20033, !noundef !10 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ef = load double, ptr %i.ee, align 8, !alias.scope !20033, !noundef !10
  %i.eg = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.eh = load double, ptr %i.eg, align 8, !alias.scope !20033, !noundef !10
  %i.ei = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ej = load double, ptr %i.ei, align 8, !alias.scope !20033, !noundef !10
  %i.ek = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.el = load double, ptr %i.ek, align 8, !alias.scope !20033, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !20034)
  %i.em = trunc nuw i64 %i.dt to i1
  br i1 %i.em, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.thread.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.thread.i: ; preds = %bb.ac
  store i64 1, ptr %2, align 8, !alias.scope !20035
  %.sroa.4.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ed, ptr %.sroa.4.0..sroa_idx.i.i19, align 8, !alias.scope !20036
  %.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x double> splat (double +inf), ptr %.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx.i, align 8, !alias.scope !20036
  %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <2 x double> splat (double -inf), ptr %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx.i, align 8, !alias.scope !20036
  br label %5

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.ac
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i = load i64, ptr %i.en, align 8, !alias.scope !20032
  %i.eo = icmp eq i64 %.pre.i, %i.ed
  br i1 %i.eo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eq = load double, ptr %i.ep, align 8, !alias.scope !20032
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.es = load double, ptr %i.er, align 8, !alias.scope !20032
  br label %5

5:                                                ; preds = %bb.ad, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.thread.i
  %6 = phi double [ %i.es, %bb.ad ], [ +inf, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.thread.i ]
  %7 = phi double [ %i.eq, %bb.ad ], [ +inf, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.thread.i ]
  %8 = invoke { double, double } @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5pointNtB2_5Point3min(double noundef %7, double noundef %6, double noundef %i.ef, double noundef %i.eh)
          to label %.noexc20 unwind label %.thread96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc20:                                         ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.et = extractvalue { double, double } %8, 0
  %i.eu = extractvalue { double, double } %8, 1
  store double %i.et, ptr %10, align 8, !alias.scope !20032
  store double %i.eu, ptr %9, align 8, !alias.scope !20032
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !alias.scope !20032, !noundef !10
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ey = load double, ptr %i.ex, align 8, !alias.scope !20032, !noundef !10
  %i.ez = invoke { double, double } @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5pointNtB2_5Point3max(double noundef %i.ew, double noundef %i.ey, double noundef %i.ej, double noundef %i.el)
          to label %.noexc21 unwind label %.thread96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc21:                                         ; preds = %.noexc20
  %i.fa = extractvalue { double, double } %i.ez, 0
  %i.fb = extractvalue { double, double } %i.ez, 1
  store double %i.fa, ptr %i.ev, align 8, !alias.scope !20032
  store double %i.fb, ptr %i.ex, align 8, !alias.scope !20032
  br label %_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit

bb.ae:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  store i8 1, ptr %i.dy, align 8, !alias.scope !20032
  store i64 0, ptr %2, align 8, !alias.scope !20032
  br label %_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit

_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit: ; preds = %bb.ae, %.noexc21, %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.764)
  %.sroa.073.0.copyload = load i64, ptr %i.ao, align 8, !noalias !20012 ; 3 uses
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20037
  store i64 %.sroa.073.0.copyload, ptr %i.b, align 8, !noalias !20038
  %.sroa.575.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.575.0..sroa_idx76, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.575.0..sroa_idx, i64 56, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fc, ptr noundef nonnull align 8 dereferenceable(56) %i.al, i64 56, i1 false)
  %.not.i13 = icmp eq i64 %.sroa.073.0.copyload, -1 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !range !24, !noalias !20037
  %.not7.i = icmp eq i64 %i.fd, -1                ; 2 uses
  %or.cond.i = select i1 %.not.i13, i1 true, i1 %.not7.i
  br i1 %or.cond.i, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit
  br i1 %.not.i13, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.ah, %bb.af
  br i1 %.not7.i, label %bb.at, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag7TagKindECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(64) %i.b), !noalias !20037
  br label %bb.ag

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !20039)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging4NodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.fc)
          to label %bb.al unwind label %bb.aj, !noalias !20037

bb.aj:                                            ; preds = %bb.ai
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !range !24, !alias.scope !20040, !noalias !20037, !noundef !10
  %i.fh = icmp eq i64 %i.fg, -1
  br i1 %i.fh, label %common.resume, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging4NodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ff)
          to label %common.resume unwind label %bb.an, !noalias !20037

bb.al:                                            ; preds = %bb.ai
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !range !24, !alias.scope !20041, !noalias !20037, !noundef !10
  %i.fk = icmp eq i64 %i.fj, -1
  br i1 %i.fk, label %bb.at, label %bb.am

bb.am:                                            ; preds = %bb.al
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging4NodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.fi)
  br label %bb.at

bb.an:                                            ; preds = %bb.ak
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !20042
  unreachable

bb.ao:                                            ; preds = %_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.472)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.472, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.575.0..sroa_idx, i64 56, i1 false)
  %.sroa.472.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.472, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.472.64..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.al, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.764, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.472, i64 112, i1 false), !noalias !20043
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.472)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !20012
  store i64 %.sroa.073.0.copyload, ptr %i.ak, align 8, !noalias !20012
  %.sroa.764.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.764.0..sroa_idx65, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.764, i64 56, i1 false), !noalias !20012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !20012
  %.sroa.764.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.764, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.764.64..sroa_idx, i64 56, i1 false), !noalias !20012
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.764)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !20012
  call void @llvm.experimental.noalias.scope.decl(metadata !20044)
  call void @llvm.experimental.noalias.scope.decl(metadata !20045)
  invoke fastcc void @_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator19flush_grouping_span(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.aj)
          to label %bb.aq unwind label %bb.ap, !noalias !20044

bb.ap:                                            ; preds = %bb.ao
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulator11AccumulatorEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.aj) #44
          to label %bb.cb unwind label %bb.as, !noalias !20044

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(56) %i.aj, i64 24, i1 false), !alias.scope !20046
  %i.fn = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !range !24, !alias.scope !20047, !noundef !10
  %i.fp = icmp eq i64 %i.fo, -1
  br i1 %i.fp, label %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator6finish.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging4NodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.fn)
          to label %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator6finish.exit unwind label %bb.au

bb.as:                                            ; preds = %bb.ap
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !20046
  unreachable

bb.at:                                            ; preds = %bb.am, %bb.ag, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20037
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.764)
  br label %bb.ca

bb.au:                                            ; preds = %bb.ar, %bb.ax
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator6finish.exit: ; preds = %bb.aq, %bb.ar
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bd, i64 76
  %i.ft = load i8, ptr %i.fs, align 4, !range !11, !noundef !10
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.aw, %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator6finish.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !20012
  %.not46.i = icmp eq i8 %.sroa.0.1.i, 2
  br i1 %.not46.i, label %bb.bg, label %bb.ay

bb.aw:                                            ; preds = %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator6finish.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !noalias !20012, !noundef !10 ; 2 uses
  %i.fx = icmp ult i64 %i.fw, 104811045873349726
  call void @llvm.assume(i1 %i.fx)
  %i.fy = icmp eq i64 %i.fw, 0
  br i1 %i.fy, label %bb.ax, label %bb.av

bb.ax:                                            ; preds = %bb.aw
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging4NodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj)
          to label %bb.bz unwind label %bb.au

bb.ay:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20048
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library4text4langNtB4_6Locale8rfc_3066(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, i56 %.sroa.0.0.insert.insert.i)
          to label %.noexc unwind label %.body.thread114

.noexc:                                           ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !20049)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20050
  store i64 0, ptr %i.e, align 8, !noalias !20050
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !20050
  %.sroa.5.0..sroa_idx.i.i7 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i7, align 8, !noalias !20050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20050
  %i.fz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1610612768, ptr %i.fz, align 8, !noalias !20050
  store ptr %i.e, ptr %i.d, align 8, !noalias !20050
  %i.ga = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @586, ptr %i.ga, align 8, !noalias !20050
  %i.gb = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.gc = load i8, ptr %i.gb, align 1, !alias.scope !20051, !noalias !20048, !noundef !10 ; 2 uses
  %.not.i.i.i.i = icmp sgt i8 %i.gc, -1           ; 3 uses
  %i.gd = and i8 %i.gc, 127
  %i.ge = zext nneg i8 %i.gd to i64
  %i.gf = load ptr, ptr %i.f, align 8, !alias.scope !20051, !noalias !20048 ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.gh = load i64, ptr %i.gg, align 8, !alias.scope !20051, !noalias !20048
  %.sroa.3.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 %i.gh, i64 %i.ge
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.gf, ptr %i.f
  %i.gi = invoke noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i, i64 noundef %.sroa.3.0.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit.i.i unwind label %bb.az, !noalias !20052

bb.az:                                            ; preds = %bb.bb, %.noexc
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !20053)
  %.val.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !20053, !noalias !20050 ; 2 uses
  %i.gk = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.gk, label %.body.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.val1.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !20053, !noalias !20050, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !20054
end_hunk_2
begin_hunk_3_@_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve17validate_children:bb.a
  %.val.i.i238.i593 = load i64, ptr %i.aoq, align 8, !noalias !20745, !noundef !10
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i239.i594

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i239.i594: ; preds = %bb.ng, %bb.ne
  %.sroa.02.0.i.i240.i595 = phi i64 [ %.val.i.i238.i593, %bb.ng ], [ 0, %bb.ne ]
  %i.aor = icmp eq i64 %i.aon, %.sroa.02.0.i.i240.i595
  %i.aos = zext i1 %i.aor to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aoe, i64 noundef %i.aos)
          to label %bb.ni unwind label %bb.nf, !noalias !20746, !inline_history !34

bb.nh:                                            ; preds = %bb.nf
  %i.aot = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !20745, !inline_history !34
  unreachable

bb.ni:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i239.i594
  %i.aou = load ptr, ptr %i.aoe, align 8, !alias.scope !20744, !noalias !20717, !nonnull !10, !noundef !10
  %i.aov = load i64, ptr %i.aof, align 8, !alias.scope !20744, !noalias !20717, !noundef !10 ; 2 uses
  %i.aow = getelementptr inbounds nuw [32 x i8], ptr %i.aou, i64 %i.aov ; 5 uses
  store i64 1, ptr %i.aow, align 8, !noalias !20747
  %.sroa.4299.0..sroa_idx.i596 = getelementptr inbounds nuw i8, ptr %i.aow, i64 8
  store i64 0, ptr %.sroa.4299.0..sroa_idx.i596, align 8, !noalias !20747
  %.sroa.5300.0..sroa_idx.i597 = getelementptr inbounds nuw i8, ptr %i.aow, i64 16
  store ptr %.sroa.0303.0.copyload.i589, ptr %.sroa.5300.0..sroa_idx.i597, align 8, !noalias !20747
  %.sroa.7301.0..sroa_idx.i598 = getelementptr inbounds nuw i8, ptr %i.aow, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7301.0..sroa_idx.i598, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7301.i540, i64 7, i1 false), !noalias !20747
  %.sroa.7302.0..sroa_idx.i599 = getelementptr inbounds nuw i8, ptr %i.aow, i64 31
  store i8 %.sroa.5305.0.copyload.i591, ptr %.sroa.7302.0..sroa_idx.i599, align 1, !noalias !20747
  %i.aox = add i64 %i.aov, 1
  store i64 %i.aox, ptr %i.aof, align 8, !alias.scope !20744, !noalias !20717
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7301.i540)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false), !noalias !20717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20717
  call void @llvm.experimental.noalias.scope.decl(metadata !20748)
  %i.aoy = load i64, ptr %i.alq, align 8, !alias.scope !20749, !noundef !10
  %.val.i246.i600 = load ptr, ptr %i.alg, align 8, !alias.scope !20749, !nonnull !10, !noundef !10 ; 2 uses
  %.not.i.i247.i601 = icmp eq ptr %.val.i246.i600, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i247.i601, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i249.i603, label %bb.nk

bb.nj:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i249.i603
  %i.aoz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.i) #44
          to label %common.resume unwind label %bb.nl, !noalias !20749, !inline_history !84

bb.nk:                                            ; preds = %bb.ni
  %i.apa = getelementptr i8, ptr %.val.i246.i600, i64 -8
  %.val.i.i248.i602 = load i64, ptr %i.apa, align 8, !noalias !20750, !noundef !10
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i249.i603

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i249.i603: ; preds = %bb.nk, %bb.ni
  %.sroa.02.0.i.i250.i604 = phi i64 [ %.val.i.i248.i602, %bb.nk ], [ 0, %bb.ni ]
  %i.apb = icmp eq i64 %i.aoy, %.sroa.02.0.i.i250.i604
  %i.apc = zext i1 %i.apb to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.alg, i64 noundef %i.apc)
          to label %bb.nm unwind label %bb.nj, !noalias !20751, !inline_history !84

bb.nl:                                            ; preds = %bb.nj
  %i.apd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !20750, !inline_history !84
  unreachable

bb.nm:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i249.i603
  %i.ape = load ptr, ptr %i.alg, align 8, !alias.scope !20749, !nonnull !10, !noundef !10
  %i.apf = load i64, ptr %i.alq, align 8, !alias.scope !20749, !noundef !10 ; 2 uses
  %i.apg = getelementptr inbounds nuw [72 x i8], ptr %i.ape, i64 %i.apf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.apg, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !20749
  %i.aph = add i64 %i.apf, 1
  store i64 %i.aph, ptr %i.alq, align 8, !alias.scope !20749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !20717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !20717
  br label %_RINvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve24validate_children_groupsNCNvB2_17validate_children0EB6_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve21resolve_artifact_node(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %1, i64 %.0.val, i32 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.512.sroa.4 = alloca [32 x i8], align 8   ; 2 uses
  %i.a = alloca [56 x i8], align 8                ; 15 uses
  %i.b = icmp eq i64 %.0.val, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !10, !align !21, !noundef !10 ; 2 uses
  %i.e = zext i32 %.8.val to i64                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !10 ; 2 uses
  %i.h = icmp ugt i64 %i.g, %i.e
  br i1 %i.h, label %bb.d, label %bb.f

bb.c:                                             ; preds = %bb.a, %_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !10, !noundef !10
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %i.e ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !10, !align !21, !noundef !10 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 128
  %.val = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.p = getelementptr i8, ptr %i.m, i64 136
  %.val19 = load i64, ptr %i.p, align 8           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20762)
  %i.q = load i8, ptr %i.n, align 8, !range !53, !alias.scope !20762, !noundef !10
  %switch.tableidx = add nsw i8 %i.q, -6          ; 3 uses
  %i.r = icmp ult i8 %switch.tableidx, 15
  br i1 %i.r, label %switch.hole_check, label %bb.h

switch.hole_check:                                ; preds = %bb.d
  %switch.maskindex = zext nneg i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 30721, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %switch.hole_check
  %i.s = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve21resolve_artifact_node, i64 %i.s
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %switch.ext
  %.sroa.8.0.i = load i32, ptr %i.t, align 4, !alias.scope !20762, !noundef !10
  %i.u = zext i32 %.sroa.8.0.i to i64             ; 3 uses
  %i.v = icmp ugt i64 %.val19, %i.u
  br i1 %i.v, label %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB4_3Ctx4bbox.exit, label %bb.e

bb.e:                                             ; preds = %switch.lookup
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.u, i64 noundef %.val19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #42, !noalias !20762
  unreachable

_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB4_3Ctx4bbox.exit: ; preds = %switch.lookup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %.val, i64 %i.u ; 4 uses
  %i.x = load i64, ptr %i.w, align 8, !range !19, !noundef !10
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.j, label %bb.g

bb.f:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #42
  unreachable

bb.g:                                             ; preds = %bb.j, %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB4_3Ctx4bbox.exit
  %.sroa.512.sroa.0.0 = phi i64 [ %i.ak, %bb.j ], [ undef, %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB4_3Ctx4bbox.exit ]
  %.sroa.011.0 = phi i64 [ 1, %bb.j ], [ 0, %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB4_3Ctx4bbox.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.aa = load i8, ptr %i.z, align 8, !range !11, !noundef !10
  store i64 %.sroa.011.0, ptr %i.a, align 8
  %.sroa.010.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.512.sroa.0.0, ptr %.sroa.010.sroa.4.0..sroa_idx, align 8
  %.sroa.010.sroa.4.sroa.4.0..sroa.010.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.010.sroa.4.sroa.4.0..sroa.010.sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.512.sroa.4, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 %i.aa, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %switch.hole_check, %bb.d
  store i64 2, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ab = phi i64 [ 2, %bb.h ], [ %.sroa.011.0, %bb.g ]
  %i.ac = phi ptr [ %1, %bb.h ], [ %i.a, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !10 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ag, 6
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB4_3Ctx4bbox.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !20763, !noundef !10
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.512.sroa.4, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false)
  br label %bb.g

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.sroa.03.03 = phi ptr [ %i.am, %.lr.ph ], [ %i.ae, %bb.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.03.03, i64 64 ; 2 uses
  %.sroa.03.0.val = load i64, ptr %.sroa.03.03, align 8, !range !40, !noundef !10
  %i.an = getelementptr i8, ptr %.sroa.03.03, i64 8
  %.sroa.03.0.val21 = load i32, ptr %i.an, align 8
  call fastcc void @_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve21resolve_artifact_node(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %i.ac, i64 %.sroa.03.0.val, i32 %.sroa.03.0.val21)
  %i.ao = icmp eq ptr %i.am, %i.ah
  br i1 %i.ao, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i64, ptr %i.a, align 8, !range !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %i.ap = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.ab, %bb.i ] ; 2 uses
  %i.aq = load i64, ptr %1, align 8, !range !29, !noundef !10 ; 2 uses
  %.not15 = icmp eq i64 %i.aq, 2
  %.not16 = icmp eq i64 %i.ap, 2
  %i.ar = or i1 %.not15, %.not16
  br i1 %i.ar, label %_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20765)
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.at = load i8, ptr %i.as, align 8, !range !11, !alias.scope !20765, !noundef !10
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.av = load i8, ptr %i.au, align 8, !range !11, !alias.scope !20764, !noundef !10
  %i.aw = or i8 %i.av, %i.at                      ; 2 uses
  %.not9.i = icmp eq i8 %i.aw, 0
  store i8 %i.aw, ptr %i.au, align 8, !alias.scope !20764
  %i.ax = trunc nuw i64 %i.ap to i1
  %or.cond.i = select i1 %.not9.i, i1 %i.ax, i1 false
  br i1 %or.cond.i, label %bb.l, label %_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !20765, !noundef !10 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bb = load double, ptr %i.ba, align 8, !alias.scope !20765, !noundef !10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bd = load double, ptr %i.bc, align 8, !alias.scope !20765, !noundef !10
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bf = load double, ptr %i.be, align 8, !alias.scope !20765, !noundef !10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bh = load double, ptr %i.bg, align 8, !alias.scope !20765, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20766)
  %i.bi = trunc nuw i64 %i.aq to i1
  br i1 %i.bi, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.thread.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.thread.i: ; preds = %bb.l
  store i64 1, ptr %1, align 8, !alias.scope !20767
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.az, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !20768
  %.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x double> splat (double +inf), ptr %.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx.i, align 8, !alias.scope !20768
  %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <2 x double> splat (double -inf), ptr %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx.i, align 8, !alias.scope !20768
  br label %bb.m

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load i64, ptr %i.bj, align 8, !alias.scope !20764
  %i.bk = icmp eq i64 %.pre.i, %i.az
  br i1 %i.bk, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i._crit_edge, label %bb.n

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i._crit_edge: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre4 = load double, ptr %.phi.trans.insert, align 8, !alias.scope !20764
  %.phi.trans.insert5 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre6 = load double, ptr %.phi.trans.insert5, align 8, !alias.scope !20764
  %.phi.trans.insert7 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre8 = load double, ptr %.phi.trans.insert7, align 8, !alias.scope !20764
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre10 = load double, ptr %.phi.trans.insert9, align 8, !alias.scope !20764
  br label %bb.m

bb.m:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i._crit_edge, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.thread.i
  %2 = phi double [ %.pre10, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i._crit_edge ], [ -inf, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.thread.i ]
  %3 = phi double [ %.pre8, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i._crit_edge ], [ -inf, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.thread.i ]
  %4 = phi double [ %.pre6, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i._crit_edge ], [ +inf, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.thread.i ]
  %5 = phi double [ %.pre4, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i._crit_edge ], [ +inf, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.thread.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = tail call { double, double } @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5pointNtB2_5Point3min(double noundef %5, double noundef %4, double noundef %i.bb, double noundef %i.bd), !noalias !20769 ; 2 uses
  %i.bn = extractvalue { double, double } %i.bm, 0
  %i.bo = extractvalue { double, double } %i.bm, 1
  store double %i.bn, ptr %i.bl, align 8, !alias.scope !20764
  store double %i.bo, ptr %6, align 8, !alias.scope !20764
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.br = tail call { double, double } @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5pointNtB2_5Point3max(double noundef %3, double noundef %2, double noundef %i.bf, double noundef %i.bh), !noalias !20769 ; 2 uses
  %i.bs = extractvalue { double, double } %i.br, 0
  %i.bt = extractvalue { double, double } %i.br, 1
  store double %i.bs, ptr %i.bp, align 8, !alias.scope !20764
  store double %i.bt, ptr %i.bq, align 8, !alias.scope !20764
  br label %_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit

bb.n:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  store i8 1, ptr %i.au, align 8, !alias.scope !20764
  store i64 0, ptr %1, align 8, !alias.scope !20764
  br label %_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit

_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit: ; preds = %bb.n, %bb.m, %bb.k, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text12compute_deco(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1, i8 %.88.val, double %.136.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, i8 noundef range(i8 0, 3) %3, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(112) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 4                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !range !32, !noundef !10
  %.not = icmp eq i32 %i.h, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !64, !noundef !10
  %.not69 = icmp eq i8 %i.j, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i8, ptr %i.k, align 4, !range !64
  %.not70 = icmp ne i8 %i.l, %3
  %or.cond.not26 = select i1 %.not69, i1 %.not70, i1 false
  %i.m = trunc nuw i8 %.88.val to i1
  %or.cond75 = select i1 %or.cond.not26, i1 %i.m, i1 false
  br i1 %or.cond75, label %bb.p, label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.n = load i64, ptr %4, align 8, !range !29, !noundef !10 ; 3 uses
  %.not66 = icmp eq i64 %i.n, 2
  br i1 %.not66, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !range !48, !noundef !10 ; 2 uses
  %.not67 = icmp eq i32 %i.p, -1
  br i1 %.not67, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp samesign ult i32 %i.p, 2
  br i1 %i.q, label %bb.f, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14paint_to_color.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20781
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color6to_rgb(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %.noexc76 unwind label %bb.h

.noexc76:                                         ; preds = %bb.f
  %i.r = load float, ptr %i.b, align 4, !noalias !20781, !noundef !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.t = load float, ptr %i.s, align 4, !noalias !20781, !noundef !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load float, ptr %i.u, align 4, !noalias !20781, !noundef !10
  %i.w = invoke i24 @_RNvMsa_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB5_13NaiveRgbColor7new_f32(float noundef %i.r, float noundef %i.t, float noundef %i.v)
          to label %.noexc77 unwind label %bb.h

.noexc77:                                         ; preds = %.noexc76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20781
  %i.x = zext i24 %i.w to i32
  %i.y = shl nuw i32 %i.x, 8
  %i.z = or disjoint i32 %i.y, 1
  %.pr.pre.pre = load i64, ptr %4, align 8
  br label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14paint_to_color.exit

bb.g:                                             ; preds = %bb.d, %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14paint_to_color.exit
  %.pr = phi i64 [ %i.n, %bb.d ], [ %.pr.pre, %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14paint_to_color.exit ]
  %.sroa.3.sroa.0.0.ph = phi i24 [ undef, %bb.d ], [ %.sroa.465.0.extract.trunc, %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14paint_to_color.exit ] ; 2 uses
  %.sroa.03.0.ph = phi i8 [ 0, %bb.d ], [ %.sroa.064.0.extract.trunc, %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14paint_to_color.exit ] ; 2 uses
  %i.aa = icmp eq i64 %.pr, 1
  br i1 %i.aa, label %bb.i, label %.thread

.body:                                            ; preds = %bb.u, %bb.h, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.u ], [ %i.bc, %bb.q ], [ %i.ab, %bb.h ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize6stroke6StrokeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(112) %4) #44
          to label %common.resume unwind label %bb.w

bb.h:                                             ; preds = %.noexc76, %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14paint_to_color.exit: ; preds = %.noexc77, %bb.e
  %.pr.pre = phi i64 [ %.pr.pre.pre, %.noexc77 ], [ %i.n, %bb.e ]
  %.sroa.4.sroa.0.0.i = phi i32 [ %i.z, %.noexc77 ], [ 0, %bb.e ] ; 2 uses
  %.sroa.064.0.extract.trunc = trunc i32 %.sroa.4.sroa.0.0.i to i8
  %.sroa.465.0.extract.shift = lshr i32 %.sroa.4.sroa.0.0.i, 8
  %.sroa.465.0.extract.trunc = trunc nuw i32 %.sroa.465.0.extract.shift to i24
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  %.sroa.654.0..sroa.013.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.654.0.copyload = load double, ptr %.sroa.654.0..sroa.013.0..sroa_idx, align 8
  %.sroa.553.0..sroa.013.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.553.0.copyload = load double, ptr %.sroa.553.0..sroa.013.0..sroa_idx, align 8
  %i.ac = fmul double %.136.val, %.sroa.654.0.copyload ; 2 uses
  %i.ad = call double @llvm.fabs.f64(double %i.ac)
  %i.ae = fcmp one double %i.ad, +inf
  %spec.store.select2 = select i1 %i.ae, double %i.ac, double 0.000000e+00
  %i.af = fadd double %.sroa.553.0.copyload, %spec.store.select2 ; 2 uses
  %.inv = fcmp ord double %i.af, 0.000000e+00
  %i.ag = fdiv double %i.af, 1.270000e+02
  %i.ah = select i1 %.inv, double %i.ag, double 0.000000e+00
  %i.ai = fptrunc double %i.ah to float
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.g, %bb.i
  %.sroa.03.025 = phi i8 [ %.sroa.03.0.ph, %bb.i ], [ %.sroa.03.0.ph, %bb.g ], [ 0, %bb.c ]
  %.sroa.3.sroa.0.024 = phi i24 [ %.sroa.3.sroa.0.0.ph, %bb.i ], [ %.sroa.3.sroa.0.0.ph, %bb.g ], [ undef, %bb.c ]
  %.sroa.310.0 = phi float [ %i.ai, %bb.i ], [ undef, %bb.g ], [ undef, %bb.c ]
  %.sroa.09.0 = phi i32 [ 1, %bb.i ], [ 0, %bb.g ], [ 0, %bb.c ]
  store ptr %2, ptr %0, align 8
  store i32 %.sroa.09.0, ptr %i.g, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %.sroa.310.0, ptr %.sroa.525.0..sroa_idx, align 4
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.03.025, ptr %.sroa.626.0..sroa_idx, align 8
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i24 %.sroa.3.sroa.0.024, ptr %.sroa.727.0..sroa_idx, align 1
  %.sroa.828.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %3, ptr %.sroa.828.0..sroa_idx, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.v, %.thread
  %i.aj = load i64, ptr %4, align 8, !range !29, !alias.scope !20782, !noundef !10
  %i.ak = icmp eq i64 %i.aj, 2
  br i1 %i.ak, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize6stroke6StrokeEECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !range !48, !alias.scope !20783, !noundef !10
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs8jFhWeO2DFb_9typst_pdf.exit.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.val2.i.i = load i64, ptr %i.ap, align 8, !range !38, !alias.scope !20784, !noundef !10 ; 2 uses
  %i.aq = icmp sgt i64 %.val2.i.i, 0
  br i1 %i.aq, label %bb.n, label %common.resume

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.val3.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !20784, !nonnull !10, !noundef !10
  %i.as = mul nuw i64 %.val2.i.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %bb.l, %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.val.i.i = load i64, ptr %i.at, align 8, !range !38, !alias.scope !20784, !noundef !10 ; 2 uses
  %i.au = icmp sgt i64 %.val.i.i, 0
  br i1 %i.au, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize6stroke6StrokeEECs8jFhWeO2DFb_9typst_pdf.exit

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.val1.i.i = load ptr, ptr %i.av, align 8, !alias.scope !20784, !nonnull !10, !noundef !10
  %i.aw = mul nuw i64 %.val.i.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize6stroke6StrokeEECs8jFhWeO2DFb_9typst_pdf.exit

common.resume:                                    ; preds = %.body, %bb.m, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.ao, %bb.m ], [ %i.ao, %bb.n ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize6stroke6StrokeEECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs8jFhWeO2DFb_9typst_pdf.exit.i.i, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @145, ptr %i.f, align 8, !captures !20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 8, ptr %i.ax, align 8
  %i.ay = load ptr, ptr %0, align 8, !nonnull !10, !align !21, !noundef !10
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !25, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.d, i8 0, i64 15, i1 false)
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  store i8 -128, ptr %.sroa.435.0..sroa_idx, align 1
end_hunk_3
