Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7942
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 53
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
          to label %bb.d unwind label %.thread44.i.i, !noalias !9845 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.e [
    i64 -1, label %..thread50_crit_edge.i.i
    i64 0, label %.thread47.i.i
  ], !prof !69

..thread50_crit_edge.i.i:                         ; preds = %bb.d
  %.pre.i.i = load i64, ptr %i.c, align 8, !alias.scope !9846, !noalias !9847 ; 2 uses
  %.pre69.i.i = tail call i64 @llvm.umax.i64(i64 %.pre.i.i, i64 1)
  br label %.thread50.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = extractvalue { i64, i64 } %i.l, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #39
          to label %.noexc10.i.i unwind label %.thread44.i.i, !noalias !9842

.noexc10.i.i:                                     ; preds = %bb.e
  unreachable

.thread47.i.i:                                    ; preds = %bb.d, %bb.b
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #42
          to label %.noexc11.i.i unwind label %.thread44.i.i, !noalias !9842

.noexc11.i.i:                                     ; preds = %.thread47.i.i
  unreachable

.thread50.i.i:                                    ; preds = %..thread50_crit_edge.i.i, %bb.a
  %.sink.i.pre-phi.i.i = phi i64 [ %.pre69.i.i, %..thread50_crit_edge.i.i ], [ 1, %bb.a ]
  %i.o = phi i64 [ %.pre.i.i, %..thread50_crit_edge.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.p = icmp ugt i64 %i.o, 1                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !9846, !noalias !9847, !nonnull !10
  %.sink10.i.i.i = select i1 %i.p, ptr %i.r, ptr %i.q
  %.sink9.idx.i.i.sroa.sel.i = select i1 %i.p, ptr %.sroa.gep.i, ptr %i.c ; 3 uses
  %i.s = load i64, ptr %.sink9.idx.i.i.sroa.sel.i, align 8, !alias.scope !9844, !noalias !9845, !noundef !10 ; 3 uses
  %i.t = icmp ult i64 %i.s, %.sink.i.pre-phi.i.i
  br i1 %i.t, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.thread50.i.i
  %i.u = load i64, ptr %i.b, align 8, !noalias !9842
  %i.v = icmp ugt i64 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !9842, !nonnull !10
  %.sink11.i.i.i.i = select i1 %i.v, ptr %i.x, ptr %i.w
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.7.062.i.i = phi i64 [ %i.s, %.lr.ph.i.i ], [ %i.bc, %bb.l ] ; 3 uses
  %i.y = phi i64 [ %.val8.i.i, %.lr.ph.i.i ], [ %i.az, %bb.l ] ; 3 uses
  %i.z = icmp eq i64 %i.y, %.val9.i.i
  br i1 %i.z, label %bb.m, label %bb.l

._crit_edge.i.i:                                  ; preds = %bb.l, %.thread50.i.i
  %.sroa.7.0.lcssa.i.i = phi i64 [ %i.s, %.thread50.i.i ], [ %i.bc, %bb.l ]
  store i64 %.sroa.7.0.lcssa.i.i, ptr %.sink9.idx.i.i.sroa.sel.i, align 8, !alias.scope !9844, !noalias !9845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !9842
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !9848, !noalias !9849, !noundef !10 ; 2 uses
  %.promoted63.i.i = load i64, ptr %i.aa, align 8, !alias.scope !9848, !noalias !9849 ; 2 uses
  %i.ad = icmp eq i64 %.promoted63.i.i, %i.ac
  br i1 %i.ad, label %_RNvXsI_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit15.i.i, label %.lr.ph65.i.i

.lr.ph65.i.i:                                     ; preds = %._crit_edge.i.i
  %i.ae = load i64, ptr %i.a, align 8, !alias.scope !9850, !noalias !9851, !noundef !10
  %i.af = icmp ugt i64 %i.ae, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !9850, !noalias !9851, !nonnull !10
  %.sink11.i.i13.i.i = select i1 %i.af, ptr %i.ah, ptr %i.ag
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph65.i.i
  %i.ai = phi i64 [ %.promoted63.i.i, %.lr.ph65.i.i ], [ %i.aj, %bb.k ] ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  store i64 %i.aj, ptr %i.aa, align 8, !alias.scope !9848, !noalias !9849
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %.sink11.i.i13.i.i, i64 %i.ai ; 3 uses
  %.sroa.530.sroa.0.0.copyload.i.i = load ptr, ptr %i.ak, align 8, !noalias !9842 ; 3 uses
  %.sroa.530.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.530.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.530.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.530.sroa.6.0..sroa_idx.i.i, align 8, !noalias !9842 ; 2 uses
  %i.al = load <2 x i64>, ptr %.sroa.530.sroa.5.0..sroa_idx.i.i, align 8, !noalias !9842
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9852)
  %i.am = load i64, ptr %i.c, align 8, !alias.scope !9853, !noalias !9854, !noundef !10 ; 2 uses
  %i.an = icmp ugt i64 %i.am, 1                   ; 2 uses
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !9853, !noalias !9854, !nonnull !10
  %.sink10.i.i.i.i = select i1 %i.an, ptr %i.ao, ptr %i.q
  %.sink9.idx.i.i16.i.sroa.sel.i = select i1 %i.an, ptr %.sroa.gep.i, ptr %i.c ; 2 uses
  %.sink.i.i18.i.i = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.ap = load i64, ptr %.sink9.idx.i.i16.i.sroa.sel.i, align 8, !alias.scope !9855, !noalias !9856, !noundef !10 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, %.sink.i.i18.i.i
  br i1 %i.aq, label %bb.i, label %bb.k, !prof !13

bb.h:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = icmp ugt i64 %.sroa.530.sroa.6.0.copyload.i.i, 16
  br i1 %i.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, label %.thread41.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i: ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.530.sroa.0.0.copyload.i.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.530.sroa.0.0.copyload.i.i, i64 noundef %.sroa.530.sroa.6.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !9857
  br label %.thread41.i.i

bb.i:                                             ; preds = %bb.g
  invoke fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_E21reserve_one_uncheckedCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.j unwind label %bb.h, !noalias !9856

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.q, align 8, !alias.scope !9855, !noalias !9856, !nonnull !10, !noundef !10
  %.pre.i.i.i = load i64, ptr %.sroa.gep.i, align 8, !alias.scope !9855, !noalias !9856
  br label %bb.k

_RNvXsI_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit15.i.i: ; preds = %bb.k, %._crit_edge.i.i
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_EECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a), !noalias !9842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9842
  br label %_RINvXst_CsiSzwKAiqS6b_8smallvecINtB6_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_EINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtB6_8IntoIterBI_EECs8jFhWeO2DFb_9typst_pdf.exit

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.au = phi i64 [ %.pre.i.i.i, %bb.j ], [ %i.ap, %bb.g ]
  %.sroa.01.0.i.i.i = phi ptr [ %.sroa.gep.i, %bb.j ], [ %.sink9.idx.i.i16.i.sroa.sel.i, %bb.g ] ; 2 uses
  %.sroa.0.0.i19.i.i = phi ptr [ %i.at, %bb.j ], [ %.sink10.i.i.i.i, %bb.g ]
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.i19.i.i, i64 %i.au ; 2 uses
  store ptr %.sroa.530.sroa.0.0.copyload.i.i, ptr %i.av, align 8, !noalias !9845
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store <2 x i64> %i.al, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !noalias !9845
  %i.aw = load i64, ptr %.sroa.01.0.i.i.i, align 8, !alias.scope !9855, !noalias !9856, !noundef !10
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %.sroa.01.0.i.i.i, align 8, !alias.scope !9855, !noalias !9856
  %i.ay = icmp eq i64 %i.aj, %i.ac
  br i1 %i.ay, label %_RNvXsI_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit15.i.i, label %bb.g

bb.l:                                             ; preds = %bb.f
  %i.az = add i64 %i.y, 1                         ; 2 uses
  store i64 %i.az, ptr %i.d, align 8, !alias.scope !9858, !noalias !9859
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %.sink11.i.i.i.i, i64 %i.y
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %.sink10.i.i.i, i64 %.sroa.7.062.i.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !noalias !9845
  %i.bc = add nuw i64 %.sroa.7.062.i.i, 1         ; 3 uses
  %i.bd = icmp ugt i64 %i.o, %i.bc
  br i1 %i.bd, label %bb.f, label %._crit_edge.i.i

bb.m:                                             ; preds = %bb.f
  store i64 %.sroa.7.062.i.i, ptr %.sink9.idx.i.i.sroa.sel.i, align 8, !alias.scope !9844, !noalias !9845
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_EECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b), !noalias !9842
  br label %_RINvXst_CsiSzwKAiqS6b_8smallvecINtB6_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_EINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtB6_8IntoIterBI_EECs8jFhWeO2DFb_9typst_pdf.exit

.thread41.i.i:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, %bb.h, %.thread44.i.i
  %.sink.i.i = phi ptr [ %i.b, %.thread44.i.i ], [ %i.a, %bb.h ], [ %i.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i ]
  %.pn39.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.thread44.i.i ], [ %i.ar, %bb.h ], [ %i.ar, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_EECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(48) %.sink.i.i) #44, !noalias !9842
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_EECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #44, !noalias !9841
  resume { ptr, i32 } %.pn39.i.i

_RINvXst_CsiSzwKAiqS6b_8smallvecINtB6_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_EINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtB6_8IntoIterBI_EECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RNvXsI_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit15.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !9860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9841
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10001)
  %.val.i = load ptr, ptr %0, align 8, !noalias !10001, !align !21, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10002)
  %.not = icmp eq ptr %.val.i, null
  br i1 %.not, label %_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRINtNtBa_6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1H_6layout3abs3AbsEEENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10003)
  %.val.i.i.i = load ptr, ptr %.val.i, align 8, !noalias !10004, !nonnull !10, !noundef !10 ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10005)
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10007)
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 80
  %i.h = load i32, ptr %i.g, align 8, !range !48, !alias.scope !10006, !noalias !10008, !noundef !10 ; 4 uses
  %.not12 = icmp eq i32 %i.h, -1
  br i1 %.not12, label %_RINvXs8_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB6_5PaintNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10010)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10012)
  %i.m = add i64 %2, %i.j
  %i.n = mul i64 %i.m, -1065810590584100411       ; 2 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !10013, !noalias !10014
  %i.o = trunc nuw i32 %i.h to i1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !10014, !noalias !10015, !nonnull !10, !noundef !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call fastcc void @_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #40, !noalias !10014
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 96
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !10014, !noalias !10015, !noundef !10
  %i.u = load i64, ptr %i.e, align 8, !alias.scope !10016, !noalias !10014, !noundef !10
  %i.v = add i64 %i.u, %i.t
  br label %_RINvXsy_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_5ColorNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 84 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10017)
  %i.x = load i32, ptr %i.w, align 4, !range !65, !alias.scope !10018, !noalias !10019, !noundef !10
  %i.y = zext nneg i32 %i.x to i64
  %i.z = add i64 %i.n, %i.y
  %i.aa = mul i64 %i.z, -1065810590584100411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10020
  call void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor7to_vec4(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.w), !noalias !10019
  %i.ab = load i32, ptr %i.d, align 4, !noalias !10020, !noundef !10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !noalias !10020, !noundef !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !noalias !10020, !noundef !10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !noalias !10020, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10020
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
  %.val.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !range !29, !alias.scope !10021, !noalias !10022, !noundef !10 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 96
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !10021, !noalias !10022, !nonnull !10, !noundef !10 ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10023)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10025)
  %i.ba = load ptr, ptr %i.ay, align 8, !alias.scope !10024, !noalias !10026, !nonnull !10, !noundef !10 ; 2 uses
  %i.bb = load i64, ptr %i.az, align 8, !alias.scope !10024, !noalias !10026, !noundef !10 ; 3 uses
  %i.bc = add i64 %i.bb, %i.aw
  %i.bd = mul i64 %i.bc, -1065810590584100411     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10028)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10030)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10032)
  %i.bl = load i32, ptr %.sroa.0.03.i.i.i.i.i.i.i.i.i, align 8, !range !14, !alias.scope !10033, !noalias !10034, !noundef !10 ; 2 uses
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = add i64 %i.bj, %i.bm
  %i.bo = mul i64 %i.bn, -1065810590584100411     ; 2 uses
  store i64 %i.bo, ptr %i.e, align 8, !alias.scope !10035, !noalias !10036
  %i.bp = trunc nuw i32 %i.bl to i1
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i.i.i.i, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !10033, !noalias !10034, !nonnull !10, !noundef !10
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  call fastcc void @_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bs, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #40, !noalias !10036
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i.i.i.i, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !10033, !noalias !10034, !noundef !10
  %i.bv = load i64, ptr %i.e, align 8, !alias.scope !10037, !noalias !10036, !noundef !10
  %i.bw = add i64 %i.bv, %i.bu
  br label %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10038)
  %i.by = load i32, ptr %i.bx, align 4, !range !65, !alias.scope !10039, !noalias !10040, !noundef !10
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = add i64 %i.bo, %i.bz
  %i.cb = mul i64 %i.ca, -1065810590584100411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10041
  call void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor7to_vec4(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.bx), !noalias !10040
  %i.cc = load i32, ptr %i.c, align 4, !noalias !10041, !noundef !10
  %i.cd = load i32, ptr %i.bg, align 4, !noalias !10041, !noundef !10
  %i.ce = load i32, ptr %i.bh, align 4, !noalias !10041, !noundef !10
  %i.cf = load i32, ptr %i.bi, align 4, !noalias !10041, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10041
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
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cr, align 8, !alias.scope !10042, !noalias !10043, !noundef !10
  %i.cs = add i64 %.val.i.i.i.i.i.i.i.i.i.i, %storemerge.i.i.i.i.i.i.i.i.i.i.i
  %i.ct = mul i64 %i.cs, -1065810590584100411     ; 3 uses
  store i64 %i.ct, ptr %i.e, align 8, !alias.scope !10044, !noalias !10045
  %i.cu = icmp eq ptr %i.bk, %i.be
  br i1 %i.cu, label %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i, label %bb.j

_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i, %bb.i
  %i.cv = phi i64 [ %i.bd, %bb.i ], [ %i.ct, %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 88
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !10024, !noalias !10026, !noundef !10
  %i.cy = add i64 %i.cx, %i.cv
  %i.cz = mul i64 %i.cy, -1065810590584100411
  %i.da = load i64, ptr %i.ax, align 8, !range !30, !alias.scope !10024, !noalias !10026, !noundef !10
  %i.db = icmp ne i64 %i.da, -1                   ; 2 uses
  %i.dc = zext i1 %i.db to i64
  %i.dd = add i64 %i.cz, %i.dc
  %i.de = mul i64 %i.dd, -1065810590584100411     ; 2 uses
  store i64 %i.de, ptr %i.e, align 8, !alias.scope !10046, !noalias !10047
  br i1 %i.db, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i
  call fastcc void @_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #40, !noalias !10021
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !10048, !noalias !10047
  br label %_RINvXsb_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB6_8GradientNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 24
  %i.dg = load i8, ptr %i.df, align 8, !range !33, !alias.scope !10024, !noalias !10026, !noundef !10
  %i.dh = zext nneg i8 %i.dg to i64
  %i.di = add i64 %i.de, %i.dh
  %i.dj = mul i64 %i.di, -1065810590584100411
  br label %_RINvXsb_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB6_8GradientNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10050)
  %i.dk = load ptr, ptr %i.ay, align 8, !alias.scope !10049, !noalias !10051, !nonnull !10, !noundef !10 ; 2 uses
  %i.dl = load i64, ptr %i.az, align 8, !alias.scope !10049, !noalias !10051, !noundef !10 ; 3 uses
  %i.dm = add i64 %i.dl, %i.aw
  %i.dn = mul i64 %i.dm, -1065810590584100411     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10053)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10057)
  %i.dv = load i32, ptr %.sroa.0.03.i.i3.i.i.i.i.i.i.i, align 8, !range !14, !alias.scope !10058, !noalias !10059, !noundef !10 ; 2 uses
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = add i64 %i.dt, %i.dw
  %i.dy = mul i64 %i.dx, -1065810590584100411     ; 2 uses
  store i64 %i.dy, ptr %i.e, align 8, !alias.scope !10060, !noalias !10061
  %i.dz = trunc nuw i32 %i.dv to i1
  br i1 %i.dz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i3.i.i.i.i.i.i.i, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !10058, !noalias !10059, !nonnull !10, !noundef !10
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  call fastcc void @_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ec, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #40, !noalias !10061
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i3.i.i.i.i.i.i.i, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !10058, !noalias !10059, !noundef !10
  %i.ef = load i64, ptr %i.e, align 8, !alias.scope !10062, !noalias !10061, !noundef !10
  %i.eg = add i64 %i.ef, %i.ee
  br label %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i3.i.i.i.i.i.i.i, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10063)
  %i.ei = load i32, ptr %i.eh, align 4, !range !65, !alias.scope !10064, !noalias !10065, !noundef !10
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = add i64 %i.dy, %i.ej
  %i.el = mul i64 %i.ek, -1065810590584100411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10066
  call void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor7to_vec4(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.eh), !noalias !10065
  %i.em = load i32, ptr %i.b, align 4, !noalias !10066, !noundef !10
  %i.en = load i32, ptr %i.dq, align 4, !noalias !10066, !noundef !10
  %i.eo = load i32, ptr %i.dr, align 4, !noalias !10066, !noundef !10
  %i.ep = load i32, ptr %i.ds, align 4, !noalias !10066, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10066
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
  %i.ft = load i64, ptr %i.fs, align 8, !alias.scope !10049, !noalias !10051, !noundef !10
  %i.fu = add i64 %i.fr, %i.ft
  %i.fv = mul i64 %i.fu, -1065810590584100411
  %i.fw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 120
  %i.fx = load i64, ptr %i.fw, align 8, !alias.scope !10049, !noalias !10051, !noundef !10
  %i.fy = add i64 %i.fv, %i.fx
  %i.fz = mul i64 %i.fy, -1065810590584100411
  %i.ga = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 128
  %i.gb = load i64, ptr %i.ga, align 8, !alias.scope !10049, !noalias !10051, !noundef !10
  %i.gc = add i64 %i.fz, %i.gb
  %i.gd = mul i64 %i.gc, -1065810590584100411
  %i.ge = load i64, ptr %i.ax, align 8, !range !30, !alias.scope !10049, !noalias !10051, !noundef !10
  %i.gf = icmp ne i64 %i.ge, -1                   ; 2 uses
  %i.gg = zext i1 %i.gf to i64
  %i.gh = add i64 %i.gd, %i.gg
  %i.gi = mul i64 %i.gh, -1065810590584100411     ; 2 uses
  store i64 %i.gi, ptr %i.e, align 8, !alias.scope !10071, !noalias !10072
  br i1 %i.gf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i8.i.i.i.i.i.i.i
  call fastcc void @_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #40, !noalias !10021
  %.pre.i10.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !10073, !noalias !10072
  br label %_RINvXsb_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB6_8GradientNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i8.i.i.i.i.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 24
  %i.gk = load i8, ptr %i.gj, align 8, !range !33, !alias.scope !10049, !noalias !10051, !noundef !10
  %i.gl = zext nneg i8 %i.gk to i64
  %i.gm = add i64 %i.gi, %i.gl
  %i.gn = mul i64 %i.gm, -1065810590584100411
  br label %_RINvXsb_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB6_8GradientNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10075)
  %i.go = load ptr, ptr %i.ay, align 8, !alias.scope !10074, !noalias !10076, !nonnull !10, !noundef !10 ; 2 uses
  %i.gp = load i64, ptr %i.az, align 8, !alias.scope !10074, !noalias !10076, !noundef !10 ; 3 uses
  %i.gq = add i64 %i.gp, %i.aw
  %i.gr = mul i64 %i.gq, -1065810590584100411     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10078)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10082)
  %i.gz = load i32, ptr %.sroa.0.03.i.i13.i.i.i.i.i.i.i, align 8, !range !14, !alias.scope !10083, !noalias !10084, !noundef !10 ; 2 uses
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = add i64 %i.gx, %i.ha
  %i.hc = mul i64 %i.hb, -1065810590584100411     ; 2 uses
  store i64 %i.hc, ptr %i.e, align 8, !alias.scope !10085, !noalias !10086
  %i.hd = trunc nuw i32 %i.gz to i1
  br i1 %i.hd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i13.i.i.i.i.i.i.i, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !10083, !noalias !10084, !nonnull !10, !noundef !10
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  call fastcc void @_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hg, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #40, !noalias !10086
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i13.i.i.i.i.i.i.i, i64 16
  %i.hi = load i64, ptr %i.hh, align 8, !alias.scope !10083, !noalias !10084, !noundef !10
  %i.hj = load i64, ptr %i.e, align 8, !alias.scope !10087, !noalias !10086, !noundef !10
  %i.hk = add i64 %i.hj, %i.hi
  br label %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i14.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i13.i.i.i.i.i.i.i, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10088)
  %i.hm = load i32, ptr %i.hl, align 4, !range !65, !alias.scope !10089, !noalias !10090, !noundef !10
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = add i64 %i.hc, %i.hn
  %i.hp = mul i64 %i.ho, -1065810590584100411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10091
  call void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor7to_vec4(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.hl), !noalias !10090
  %i.hq = load i32, ptr %i.a, align 4, !noalias !10091, !noundef !10
  %i.hr = load i32, ptr %i.gu, align 4, !noalias !10091, !noundef !10
  %i.hs = load i32, ptr %i.gv, align 4, !noalias !10091, !noundef !10
  %i.ht = load i32, ptr %i.gw, align 4, !noalias !10091, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10091
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
  %.val.i.i.i17.i.i.i.i.i.i.i = load i64, ptr %i.if, align 8, !alias.scope !10092, !noalias !10093, !noundef !10
  %i.ig = add i64 %.val.i.i.i17.i.i.i.i.i.i.i, %storemerge.i.i.i.i16.i.i.i.i.i.i.i
  %i.ih = mul i64 %i.ig, -1065810590584100411     ; 3 uses
  store i64 %i.ih, ptr %i.e, align 8, !alias.scope !10094, !noalias !10095
  %i.ii = icmp eq ptr %i.gy, %i.gs
  br i1 %i.ii, label %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i18.i.i.i.i.i.i.i, label %bb.v

_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i18.i.i.i.i.i.i.i: ; preds = %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i14.i.i.i.i.i.i.i, %bb.u
  %i.ij = phi i64 [ %i.gr, %bb.u ], [ %i.ih, %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBL_6layout5ratio5RatioENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i14.i.i.i.i.i.i.i ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 88
  %i.il = load i64, ptr %i.ik, align 8, !alias.scope !10074, !noalias !10076, !noundef !10
  %i.im = add i64 %i.il, %i.ij
  %i.in = mul i64 %i.im, -1065810590584100411
  %i.io = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 96
  %i.ip = load i64, ptr %i.io, align 8, !alias.scope !10074, !noalias !10076, !noundef !10
  %i.iq = add i64 %i.in, %i.ip
  %i.ir = mul i64 %i.iq, -1065810590584100411
  %i.is = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 104
  %i.it = load i64, ptr %i.is, align 8, !alias.scope !10074, !noalias !10076, !noundef !10
  %i.iu = add i64 %i.ir, %i.it
  %i.iv = mul i64 %i.iu, -1065810590584100411
  %i.iw = load i64, ptr %i.ax, align 8, !range !30, !alias.scope !10074, !noalias !10076, !noundef !10
  %i.ix = icmp ne i64 %i.iw, -1                   ; 2 uses
  %i.iy = zext i1 %i.ix to i64
  %i.iz = add i64 %i.iv, %i.iy
  %i.ja = mul i64 %i.iz, -1065810590584100411     ; 2 uses
  store i64 %i.ja, ptr %i.e, align 8, !alias.scope !10096, !noalias !10097
  br i1 %i.ix, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i18.i.i.i.i.i.i.i
  call fastcc void @_RINvXsV_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_12SpotColorantNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #40, !noalias !10021
  %.pre.i20.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !10098, !noalias !10097
  br label %_RINvXsb_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB6_8GradientNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %_RINvYTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBa_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i18.i.i.i.i.i.i.i
  %i.jb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 24
  %i.jc = load i8, ptr %i.jb, align 8, !range !33, !alias.scope !10074, !noalias !10076, !noundef !10
  %i.jd = zext nneg i8 %i.jc to i64
  %i.je = add i64 %i.ja, %i.jd
  %i.jf = mul i64 %i.je, -1065810590584100411
  br label %_RINvXsb_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB6_8GradientNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

_RINvXsb_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB6_8GradientNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i: ; preds = %bb.z, %bb.y, %bb.t, %bb.s, %bb.n, %bb.m
  %.sink23.i.i.i.i.i.i.i = phi i64 [ 137, %bb.t ], [ 97, %bb.n ], [ 97, %bb.m ], [ 137, %bb.s ], [ 113, %bb.y ], [ 113, %bb.z ]
  %.sink19.i.i.i.i.i.i.i = phi i64 [ %i.gn, %bb.t ], [ %i.dj, %bb.n ], [ %.pre.i.i.i.i.i.i.i.i, %bb.m ], [ %.pre.i10.i.i.i.i.i.i.i, %bb.s ], [ %.pre.i20.i.i.i.i.i.i.i, %bb.y ], [ %i.jf, %bb.z ]
  %.sink11.i.i.i.i.i.i.i = phi i64 [ 136, %bb.t ], [ 96, %bb.n ], [ 96, %bb.m ], [ 136, %bb.s ], [ 112, %bb.y ], [ 112, %bb.z ]
  %i.jg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %.sink23.i.i.i.i.i.i.i
  %i.jh = load i8, ptr %i.jg, align 1, !range !64, !noalias !10099, !noundef !10 ; 2 uses
  %i.ji = icmp ne i8 %i.jh, 2                     ; 2 uses
  %i.jj = zext i1 %i.ji to i64
  %i.jk = add i64 %.sink19.i.i.i.i.i.i.i, %i.jj
  %i.jl = mul i64 %i.jk, -1065810590584100411     ; 2 uses
  %i.jm = zext nneg i8 %i.jh to i64
  %i.jn = add i64 %i.jl, %i.jm
  %i.jo = mul i64 %i.jn, -1065810590584100411
  %storemerge.i19.i.i.i.i.i.i.i = select i1 %i.ji, i64 %i.jo, i64 %i.jl
  %i.jp = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %.sink11.i.i.i.i.i.i.i
  %i.jq = load i8, ptr %i.jp, align 8, !range !11, !noalias !10099, !noundef !10
  %i.jr = zext nneg i8 %i.jq to i64
  %i.js = add i64 %storemerge.i19.i.i.i.i.i.i.i, %i.jr
  %i.jt = mul i64 %i.js, -1065810590584100411
  br label %_RINvXs8_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB6_5PaintNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i

bb.aa:                                            ; preds = %bb.c
  %i.ju = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10100)
  %i.jv = load ptr, ptr %i.ju, align 8, !alias.scope !10101, !noalias !10102, !nonnull !10, !noundef !10 ; 9 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16 ; 2 uses
  %i.jx = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !noalias !10103, !nonnull !10, !noundef !10
  %i.jy = tail call noundef i128 %i.jx(ptr noundef nonnull align 16 %i.jw), !noalias !10103, !inline_history !9993 ; 3 uses
  %i.jz = icmp eq i128 %i.jy, 0
  %extract.t1.i.i.i.i.i.i.i.i = trunc i128 %i.jy to i64
  %extract3.i.i.i.i.i.i.i.i = lshr i128 %i.jy, 64
  %extract.t4.i.i.i.i.i.i.i.i = trunc nuw i128 %extract3.i.i.i.i.i.i.i.i to i64
  br i1 %i.jz, label %bb.ab, label %_RINvXs6_NtNtCsdaEETE4DqmE_13typst_library9visualize6tilingNtB6_6TilingNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  %i.kb = tail call fastcc noundef i128 @_RINvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ka), !noalias !10103, !inline_history !5 ; 3 uses
  %i.kc = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6412atomic_store4FUNC monotonic, align 8, !noalias !10103, !nonnull !10, !noundef !10
  tail call void %i.kc(ptr noundef nonnull align 16 %i.jw, i128 noundef %i.kb), !noalias !10103, !inline_history !9994
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
  %i.ki = load i64, ptr %i.kh, align 16, !noalias !10103, !noundef !10
  %i.kj = add i64 %i.kg, %i.ki
  %i.kk = mul i64 %i.kj, -1065810590584100411
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jv, i64 88
  %i.km = load i64, ptr %i.kl, align 8, !noalias !10103, !noundef !10
  %i.kn = add i64 %i.kk, %i.km
  %i.ko = mul i64 %i.kn, -1065810590584100411
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jv, i64 96
  %i.kq = load i64, ptr %i.kp, align 16, !noalias !10103, !noundef !10
  %i.kr = add i64 %i.ko, %i.kq
  %i.ks = mul i64 %i.kr, -1065810590584100411
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jv, i64 104
  %i.ku = load i64, ptr %i.kt, align 8, !noalias !10103, !noundef !10
  %i.kv = add i64 %i.ks, %i.ku
  %i.kw = mul i64 %i.kv, -1065810590584100411
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jv, i64 112
  %i.ky = load i64, ptr %i.kx, align 16, !noalias !10103, !noundef !10
  %i.kz = add i64 %i.kw, %i.ky
  %i.la = mul i64 %i.kz, -1065810590584100411
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jv, i64 120
  %i.lc = load i64, ptr %i.lb, align 8, !noalias !10103, !noundef !10
  %i.ld = add i64 %i.la, %i.lc
  %i.le = mul i64 %i.ld, -1065810590584100411
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jv, i64 128
  %i.lg = load i8, ptr %i.lf, align 16, !range !64, !noalias !10103, !noundef !10 ; 2 uses
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
  %i.lp = load i64, ptr %i.f, align 8, !range !19, !alias.scope !10006, !noalias !10008, !noundef !10 ; 2 uses
  %i.lq = add i64 %i.lp, %i.lo
  %i.lr = mul i64 %i.lq, -1065810590584100411     ; 2 uses
  %i.ls = trunc nuw i64 %i.lp to i1
  %i.lt = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %.val.i.i.i.i.i = load i64, ptr %i.lt, align 8, !alias.scope !10006, !noalias !10008
  %i.lu = add i64 %i.lr, %.val.i.i.i.i.i
  %i.lv = mul i64 %i.lu, -1065810590584100411
  %i.lw = select i1 %i.ls, i64 %i.lv, i64 %i.lr
  %i.lx = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 104
  %i.ly = load i8, ptr %i.lx, align 8, !range !70, !alias.scope !10006, !noalias !10008, !noundef !10 ; 2 uses
  %i.lz = icmp ne i8 %i.ly, -1                    ; 2 uses
  %i.ma = zext i1 %i.lz to i64
  %i.mb = add i64 %i.lw, %i.ma
  %i.mc = mul i64 %i.mb, -1065810590584100411     ; 2 uses
  %i.md = zext nneg i8 %i.ly to i64
  %i.me = add i64 %i.mc, %i.md
  %i.mf = mul i64 %i.me, -1065810590584100411
  %storemerge.i.i.i.i.i = select i1 %i.lz, i64 %i.mf, i64 %i.mc
  %i.mg = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 105
  %i.mh = load i8, ptr %i.mg, align 1, !range !70, !alias.scope !10006, !noalias !10008, !noundef !10 ; 2 uses
  %i.mi = icmp ne i8 %i.mh, -1                    ; 2 uses
  %i.mj = zext i1 %i.mi to i64
  %i.mk = add i64 %storemerge.i.i.i.i.i, %i.mj
  %i.ml = mul i64 %i.mk, -1065810590584100411     ; 2 uses
  %i.mm = zext nneg i8 %i.mh to i64
  %i.mn = add i64 %i.ml, %i.mm
  %i.mo = mul i64 %i.mn, -1065810590584100411
  %storemerge7.i.i.i.i.i = select i1 %i.mi, i64 %i.mo, i64 %i.ml
  %i.mp = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 48
  %i.mq = load i64, ptr %i.mp, align 8, !range !38, !alias.scope !10006, !noalias !10008, !noundef !10 ; 2 uses
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
  %i.nb = load i64, ptr %i.na, align 8, !range !19, !alias.scope !10006, !noalias !10008, !noundef !10 ; 2 uses
  %i.nc = add i64 %i.nb, %i.mz
  %i.nd = mul i64 %i.nc, -1065810590584100411     ; 2 uses
  %i.ne = trunc nuw i64 %i.nb to i1
  br i1 %i.ne, label %bb.af, label %_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRINtNtBa_6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1H_6layout3abs3AbsEEENtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit

bb.ae:                                            ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10104)
  %i.nf = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 56
  %i.ng = load ptr, ptr %i.nf, align 8, !alias.scope !10105, !noalias !10106, !nonnull !10, !noundef !10 ; 5 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 64
  %i.ni = load i64, ptr %i.nh, align 8, !alias.scope !10105, !noalias !10106, !noundef !10 ; 3 uses
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
  %.sroa.0.0.val.i.i.i.i.i.i.i.prol = load i64, ptr %i.ng, align 8, !range !19, !alias.scope !10107, !noalias !10108, !noundef !10 ; 2 uses
  %i.nq = getelementptr i8, ptr %i.ng, i64 8
  %.sroa.0.0.val3.i.i.i.i.i.i.i.prol = load i64, ptr %i.nq, align 8, !alias.scope !10107, !noalias !10108
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
  %.sroa.0.0.val.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i.i.i.i, align 8, !range !19, !alias.scope !10107, !noalias !10108, !noundef !10 ; 2 uses
  %i.ny = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i.i, i64 8
  %.sroa.0.0.val3.i.i.i.i.i.i.i = load i64, ptr %i.ny, align 8, !alias.scope !10107, !noalias !10108
  %i.nz = add i64 %.sroa.0.0.val.i.i.i.i.i.i.i, %storemerge.i45.i.i.i.i.i.i.i
  %i.oa = mul i64 %i.nz, -1065810590584100411     ; 2 uses
  %i.ob = trunc nuw i64 %.sroa.0.0.val.i.i.i.i.i.i.i to i1
  %i.oc = add i64 %i.oa, %.sroa.0.0.val3.i.i.i.i.i.i.i
  %i.od = mul i64 %i.oc, -1065810590584100411
  %storemerge.i.i.i5.i.i.i.i.i = select i1 %i.ob, i64 %i.od, i64 %i.oa
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.sroa.0.0.val.i.i.i.i.i.i.i.1 = load i64, ptr %i.nx, align 8, !range !19, !alias.scope !10107, !noalias !10108, !noundef !10 ; 2 uses
  %i.of = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i.i, i64 24
  %.sroa.0.0.val3.i.i.i.i.i.i.i.1 = load i64, ptr %i.of, align 8, !alias.scope !10107, !noalias !10108
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
  %.val.i6.i.i.i.i.i = load i64, ptr %i.on, align 8, !alias.scope !10105, !noalias !10106, !noundef !10
  %i.oo = add i64 %.val.i6.i.i.i.i.i, %i.om
  %i.op = mul i64 %i.oo, -1065810590584100411
  br label %bb.ad

bb.af:                                            ; preds = %bb.ad
  %i.oq = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 40
  %i.or = load i64, ptr %i.oq, align 8, !alias.scope !10006, !noalias !10008, !noundef !10
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10139)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !10139, !noalias !10140, !nonnull !10, !noundef !10 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10141)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !10141, !noalias !10142, !nonnull !10, !noundef !10 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2880
  %i.f = load ptr, ptr %i.e, align 8, !noalias !10143, !nonnull !10, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 2888
  %i.h = load ptr, ptr %i.g, align 8, !noalias !10143, !nonnull !10, !align !21, !noundef !10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !invariant.load !10, !noalias !10143 ; 2 uses
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.j, i64 16)
  %i.l = add nsw i64 %i.k, -1
  %i.m = and i64 %i.l, -16
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10144)
  %i.p = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !noalias !10145, !nonnull !10, !noundef !10
  %i.q = tail call noundef i128 %i.p(ptr noundef nonnull align 16 %i.o), !noalias !10145, !inline_history !10120 ; 3 uses
  %i.r = icmp eq i128 %i.q, 0
  %extract.t1.i.i.i = trunc i128 %i.q to i64
  %extract3.i.i.i = lshr i128 %i.q, 64
  %extract.t4.i.i.i = trunc nuw i128 %extract3.i.i.i to i64
  br i1 %i.r, label %bb.b, label %_RINvXs0_NtNtCsdaEETE4DqmE_13typst_library4text4fontNtB6_4FontNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherECs8jFhWeO2DFb_9typst_pdf.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.val4.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !10144, !noalias !10143
  %i.t = add nsw i64 %i.j, -1
  %i.u = and i64 %i.t, -16
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10145
  store i64 8317987319222330741, ptr %i.a, align 8, !noalias !10145
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 7816392313619706465, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !10145
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 7237128888997146499, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !10145
  %.sroa.613.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 8387220255154660723, ptr %.sroa.613.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !10145
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i.i.i.i, i8 0, i64 40, i1 false), !noalias !10145
  %i.x = tail call { ptr, i64 } %.val4.i.i.i.i(ptr noundef nonnull %i.w) #40, !noalias !10146, !inline_history !10123 ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.x, 0
  %i.z = extractvalue { ptr, i64 } %i.x, 1        ; 2 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef %i.z), !noalias !10145
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.z), !noalias !10145
  %i.aa = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Cs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.a) #40, !noalias !10145 ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0      ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.aa, 1      ; 2 uses
  %i.ad = zext i64 %i.ab to i128
  %i.ae = zext i64 %i.ac to i128
  %i.af = shl nuw i128 %i.ae, 64
  %i.ag = or disjoint i128 %i.af, %i.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10145
  %i.ah = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6412atomic_store4FUNC monotonic, align 8, !noalias !10145, !nonnull !10, !noundef !10
end_hunk_1
begin_hunk_2_@_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13table_cell_id:bb.a
  store i8 1, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !22332
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 85, ptr %.sroa.11.0..sroa_idx, align 1, !noalias !22332
  call void @llvm.experimental.noalias.scope.decl(metadata !22333)
  %i.al = call i64 @llvm.uadd.sat.i64(i64 %.sink10.i.i.i, i64 1) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  %.not.i14.i.i = icmp ugt i64 %i.al, 16
  %i.an = inttoptr i64 %.sroa.022.0.copyload to ptr ; 3 uses
  br i1 %.not.i14.i.i, label %bb.p, label %.lr.ph.split.us.preheader.i.i

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8jFhWeO2DFb_9typst_pdf.exit
  %i.ao = add i64 %i.al, -1
  %i.ap = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ao, i1 true) ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.thread70.i.i, label %bb.q, !prof !13

bb.q:                                             ; preds = %bb.p
  %i.ar = lshr i64 -1, %i.ap
  %i.as = add nuw i64 %i.ar, 1
  %i.at = invoke fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E8try_growCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.as)
          to label %bb.r unwind label %_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterAhj20_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i53.i.i, !noalias !22334 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.au = extractvalue { i64, i64 } %i.at, 0      ; 2 uses
  switch i64 %i.au, label %bb.s [
    i64 -1, label %.thread.i
    i64 0, label %.thread70.i.i
  ], !prof !69

bb.s:                                             ; preds = %bb.r
  %i.av = extractvalue { i64, i64 } %i.at, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.au, i64 noundef %i.av) #39
          to label %.noexc15.i.i unwind label %_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterAhj20_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i53.i.i, !noalias !22330

.noexc15.i.i:                                     ; preds = %bb.s
  unreachable

.thread70.i.i:                                    ; preds = %bb.r, %bb.p
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #42
          to label %.noexc16.i.i unwind label %_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterAhj20_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i53.i.i, !noalias !22330

.noexc16.i.i:                                     ; preds = %.thread70.i.i
  unreachable

.thread.i:                                        ; preds = %bb.r
  %.pre.i.i = load i64, ptr %i.ak, align 8, !alias.scope !22335, !noalias !22336
  %.pre.i.fr.i = freeze i64 %.pre.i.i             ; 2 uses
  %.pre119.i.i = call i64 @llvm.umax.i64(i64 %.pre.i.fr.i, i64 16) ; 2 uses
  %i.aw = icmp ugt i64 %.pre.i.fr.i, 16           ; 2 uses
  %.pre.i = load ptr, ptr %i.c, align 8, !alias.scope !22335, !noalias !22336
  %spec.select40 = select i1 %i.aw, ptr %.pre.i, ptr %i.c
  %spec.select41 = select i1 %i.aw, ptr %i.am, ptr %i.ak ; 3 uses
  %.pre = load i64, ptr %spec.select41, align 8, !alias.scope !22333, !noalias !22334 ; 3 uses
  %i.ax = icmp ult i64 %.pre, %.pre119.i.i
  br i1 %i.ax, label %.lr.ph.split.us.preheader.i.i, label %._crit_edge.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8jFhWeO2DFb_9typst_pdf.exit, %.thread.i
  %i.ay = phi ptr [ %spec.select41, %.thread.i ], [ %i.ak, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8jFhWeO2DFb_9typst_pdf.exit ] ; 2 uses
  %.sink.i17.pre-phi.i3842.i57 = phi i64 [ %.pre119.i.i, %.thread.i ], [ 16, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8jFhWeO2DFb_9typst_pdf.exit ] ; 2 uses
  %i.az = phi ptr [ %spec.select40, %.thread.i ], [ %i.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8jFhWeO2DFb_9typst_pdf.exit ]
  %i.ba = phi i64 [ %.pre, %.thread.i ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8jFhWeO2DFb_9typst_pdf.exit ]
  %.sink11.i.i.i.i.i.i.i = select i1 %i.aj, ptr %i.an, ptr %.sroa.430.0..sroa_idx
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i, %.lr.ph.split.us.preheader.i.i
  %i.bb = phi i64 [ %i.bh, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i ], [ 0, %.lr.ph.split.us.preheader.i.i ] ; 4 uses
  %storemerge81.us.i.i = phi i64 [ %i.bk, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i ], [ %i.ba, %.lr.ph.split.us.preheader.i.i ] ; 3 uses
  %i.bc = phi i8 [ %i.bi, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i ], [ 1, %.lr.ph.split.us.preheader.i.i ] ; 2 uses
  %.not.i.i.us.i.i = icmp eq i8 %i.bc, 2
  br i1 %.not.i.i.us.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i.us.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i: ; preds = %.lr.ph.split.us.i.i
  %i.bd = trunc nuw i8 %i.bc to i1                ; 2 uses
  %spec.store.select.i.i.us.i.i = select i1 %i.bd, i8 0, i8 2
  store i8 %spec.store.select.i.i.us.i.i, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !22337, !noalias !22330
  br i1 %i.bd, label %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i.us.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i.us.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i, %.lr.ph.split.us.i.i
  %.not.i.i.i.us.i.i = icmp eq i64 %i.bb, %.sink10.i.i.i
  br i1 %.not.i.i.i.us.i.i, label %.critedge79.i.i, label %bb.t

bb.t:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i.us.i.i
  %i.be = add i64 %i.bb, 1                        ; 2 uses
  store i64 %i.be, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !22338, !noalias !22330
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink11.i.i.i.i.i.i.i, i64 %i.bb
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !22330, !noundef !10
  br label %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i

_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i: ; preds = %bb.t, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i
  %i.bh = phi i64 [ %i.bb, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i ], [ %i.be, %bb.t ]
  %i.bi = phi i8 [ 0, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i ], [ 2, %bb.t ]
  %.pn2.i.i.us.i.i = phi i8 [ 85, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i ], [ %i.bg, %bb.t ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 %storemerge81.us.i.i
  store i8 %.pn2.i.i.us.i.i, ptr %i.bj, align 1, !noalias !22334
  %i.bk = add i64 %storemerge81.us.i.i, 1         ; 2 uses
  %exitcond118.not.i.i = icmp eq i64 %i.bk, %.sink.i17.pre-phi.i3842.i57
  br i1 %exitcond118.not.i.i, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i

._crit_edge.i.i:                                  ; preds = %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i, %.thread.i
  %i.bl = phi ptr [ %spec.select41, %.thread.i ], [ %i.ay, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i ]
  %storemerge.lcssa.i.i = phi i64 [ %.pre, %.thread.i ], [ %.sink.i17.pre-phi.i3842.i57, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i ]
  store i64 %storemerge.lcssa.i.i, ptr %i.bl, align 8, !alias.scope !22333, !noalias !22334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !22330
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %.promoted96.i.i = load i8, ptr %i.bm, align 8, !alias.scope !22339, !noalias !22330 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 65
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !22330 ; 2 uses
  %i.bp = load i64, ptr %i.a, align 8, !range !19, !noalias !22330
  %.fr.i.i = freeze i64 %i.bp                     ; 3 uses
  %i.bq = trunc i64 %.fr.i.i to i1
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !22330
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !22330 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 33                  ; 3 uses
  %i.by = load ptr, ptr %i.bu, align 8, !noalias !22330, !nonnull !10 ; 3 uses
  %.sink11.i.i.i.i.i29.i.i = select i1 %i.bx, ptr %i.bu, ptr %i.by
  br i1 %i.bq, label %.split.us.preheader.i.i, label %.split.i.i

.split.us.preheader.i.i:                          ; preds = %._crit_edge.i.i
  %.promoted100.i.i = load i64, ptr %i.br, align 8, !noalias !22330
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.us.i.i, %.split.us.preheader.i.i
  %i.bz = phi i64 [ %i.ce, %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.us.i.i ], [ %.promoted100.i.i, %.split.us.preheader.i.i ] ; 4 uses
  %spec.store.select.i.i2099.us.i.i = phi i8 [ %spec.store.select.i.i2097.us.i.i, %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.us.i.i ], [ %.promoted96.i.i, %.split.us.preheader.i.i ] ; 2 uses
  %.not.i.i18.us.i.i = icmp eq i8 %spec.store.select.i.i2099.us.i.i, 2
  br i1 %.not.i.i18.us.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i21.us.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i19.us.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i19.us.i.i: ; preds = %.split.us.i.i
  %i.ca = trunc nuw i8 %spec.store.select.i.i2099.us.i.i to i1 ; 2 uses
  %spec.store.select.i.i20.us.i.i = select i1 %i.ca, i8 0, i8 2
  store i8 %spec.store.select.i.i20.us.i.i, ptr %i.bm, align 8, !alias.scope !22339, !noalias !22330
  br i1 %i.ca, label %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i21.us.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i21.us.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i19.us.i.i, %.split.us.i.i
  %.not.i.i.i28.us.i.i = icmp eq i64 %i.bz, %i.bt
  br i1 %.not.i.i.i28.us.i.i, label %.critedge.i.i, label %bb.u

bb.u:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i21.us.i.i
  %i.cb = add i64 %i.bz, 1                        ; 2 uses
  store i64 %i.cb, ptr %i.br, align 8, !alias.scope !22340, !noalias !22330
  %i.cc = getelementptr inbounds nuw i8, ptr %.sink11.i.i.i.i.i29.i.i, i64 %i.bz
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !22330, !noundef !10
  br label %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i

_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i: ; preds = %bb.u, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i19.us.i.i
  %i.ce = phi i64 [ %i.bz, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i19.us.i.i ], [ %i.cb, %bb.u ]
  %spec.store.select.i.i2097.us.i.i = phi i8 [ 0, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i19.us.i.i ], [ 2, %bb.u ]
  %.pn2.i.i26.us.i.i = phi i8 [ %i.bo, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i19.us.i.i ], [ %i.cd, %bb.u ]
  %i.cf = load i64, ptr %i.ak, align 8, !alias.scope !22341, !noalias !22342, !noundef !10 ; 2 uses
  %i.cg = icmp ugt i64 %i.cf, 16                  ; 2 uses
  %i.ch = load ptr, ptr %i.c, align 8, !alias.scope !22341, !noalias !22342, !nonnull !10
  %.sink10.i.i.us.i.i = select i1 %i.cg, ptr %i.ch, ptr %i.c
  %.sink9.i.i.us.i.i = select i1 %i.cg, ptr %i.am, ptr %i.ak ; 2 uses
  %.sink.i.i31.us.i.i = call i64 @llvm.umax.i64(i64 %i.cf, i64 16)
  %i.ci = load i64, ptr %.sink9.i.i.us.i.i, align 8, !alias.scope !22343, !noalias !22334, !noundef !10 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, %.sink.i.i31.us.i.i
  br i1 %i.cj, label %bb.v, label %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.us.i.i, !prof !13

bb.v:                                             ; preds = %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i
  invoke fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E21reserve_one_uncheckedCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc33.us.i.i unwind label %.split102.us.i.i, !noalias !22334

.noexc33.us.i.i:                                  ; preds = %bb.v
  %i.ck = load ptr, ptr %i.c, align 8, !alias.scope !22343, !noalias !22334, !nonnull !10, !noundef !10
  %.pre.i.us.i.i = load i64, ptr %i.am, align 8, !alias.scope !22343, !noalias !22334
  br label %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.us.i.i

_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.us.i.i: ; preds = %.noexc33.us.i.i, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i
  %i.cl = phi i64 [ %.pre.i.us.i.i, %.noexc33.us.i.i ], [ %i.ci, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i ]
  %.sroa.01.0.i.us.i.i = phi ptr [ %i.am, %.noexc33.us.i.i ], [ %.sink9.i.i.us.i.i, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i ] ; 2 uses
  %.sroa.0.0.i32.us.i.i = phi ptr [ %i.ck, %.noexc33.us.i.i ], [ %.sink10.i.i.us.i.i, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.us.i.i, i64 %i.cl
  store i8 %.pn2.i.i26.us.i.i, ptr %i.cm, align 1, !noalias !22334
  %i.cn = load i64, ptr %.sroa.01.0.i.us.i.i, align 8, !alias.scope !22343, !noalias !22334, !noundef !10
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %.sroa.01.0.i.us.i.i, align 8, !alias.scope !22343, !noalias !22334
  br label %.split.us.i.i

.split102.us.i.i:                                 ; preds = %bb.v
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.split102.i.i

.split.i.i:                                       ; preds = %._crit_edge.i.i
  switch i8 %.promoted96.i.i, label %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.i.i [
    i8 2, label %.critedge.i.i
    i8 0, label %.critedge.i.i
  ]

.split102.i.split.i:                              ; preds = %bb.w
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.split102.i.i

.split102.i.i:                                    ; preds = %.split102.i.split.i, %.split102.us.i.i
  %.us-phi103.i.i = phi { ptr, i32 } [ %i.cq, %.split102.i.split.i ], [ %i.cp, %.split102.us.i.i ] ; 2 uses
  %i.cr = icmp eq i64 %.fr.i.i, 0
  %brmerge.i = select i1 %i.cr, i1 true, i1 %i.bx
  br i1 %brmerge.i, label %.body.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i.i.i: ; preds = %.split102.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !22344
  br label %.body.i

_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.i.i: ; preds = %.split.i.i
  %i.cs = load i64, ptr %i.ak, align 8, !alias.scope !22341, !noalias !22342, !noundef !10 ; 2 uses
  %i.ct = icmp ugt i64 %i.cs, 16                  ; 2 uses
  %i.cu = load ptr, ptr %i.c, align 8, !alias.scope !22341, !noalias !22342, !nonnull !10
  %.sink10.i.i.i.i = select i1 %i.ct, ptr %i.cu, ptr %i.c
  %.sink9.i.i.i.i = select i1 %i.ct, ptr %i.am, ptr %i.ak ; 2 uses
  %.sink.i.i31.i.i = call i64 @llvm.umax.i64(i64 %i.cs, i64 16)
  %i.cv = load i64, ptr %.sink9.i.i.i.i, align 8, !alias.scope !22343, !noalias !22334, !noundef !10 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, %.sink.i.i31.i.i
  br i1 %i.cw, label %bb.w, label %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.i.i, !prof !13

bb.w:                                             ; preds = %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.i.i
  invoke fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E21reserve_one_uncheckedCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc33.i.i unwind label %.split102.i.split.i, !noalias !22334

.noexc33.i.i:                                     ; preds = %bb.w
  %i.cx = load ptr, ptr %i.c, align 8, !alias.scope !22343, !noalias !22334, !nonnull !10, !noundef !10
  %.pre.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !22343, !noalias !22334
  br label %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.i.i

_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %.noexc33.i.i, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.i.i
  %i.cy = phi i64 [ %.pre.i.i.i, %.noexc33.i.i ], [ %i.cv, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.i.i ]
  %.sroa.01.0.i.i.i = phi ptr [ %i.am, %.noexc33.i.i ], [ %.sink9.i.i.i.i, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.i.i ] ; 2 uses
  %.sroa.0.0.i32.i.i = phi ptr [ %i.cx, %.noexc33.i.i ], [ %.sink10.i.i.i.i, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.i.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.i.i, i64 %i.cy
  store i8 %i.bo, ptr %i.cz, align 1, !noalias !22334
  %i.da = load i64, ptr %.sroa.01.0.i.i.i, align 8, !alias.scope !22343, !noalias !22334, !noundef !10
  %i.db = add i64 %i.da, 1
  store i64 %i.db, ptr %.sroa.01.0.i.i.i, align 8, !alias.scope !22343, !noalias !22334
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i21.us.i.i, %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.i.i, %.split.i.i, %.split.i.i
  %i.dc = icmp eq i64 %.fr.i.i, 0
  %brmerge13.i = select i1 %i.dc, i1 true, i1 %i.bx
  br i1 %brmerge13.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtBI_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EEECs8jFhWeO2DFb_9typst_pdf.exit41.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i39.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i39.i.i: ; preds = %.critedge.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !22345
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtBI_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EEECs8jFhWeO2DFb_9typst_pdf.exit41.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtBI_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EEECs8jFhWeO2DFb_9typst_pdf.exit41.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i39.i.i, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22330
  br label %bb.x

.critedge79.i.i:                                  ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i.us.i.i
  store i64 %storemerge81.us.i.i, ptr %i.ay, align 8, !alias.scope !22333, !noalias !22334
  br i1 %i.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i47.i.i, label %bb.x

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i47.i.i: ; preds = %.critedge79.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %.sroa.625.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !22346
  br label %bb.x

_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterAhj20_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i53.i.i: ; preds = %.thread70.i.i, %bb.s, %bb.q
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i55.i.i, label %.body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i55.i.i: ; preds = %_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterAhj20_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i53.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %.sroa.625.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !22347
  br label %.body.i

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i55.i.i, %_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterAhj20_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i53.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i.i.i, %.split102.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i55.i.i ], [ %.us-phi103.i.i, %.split102.i.i ], [ %.us-phi103.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i.i.i ], [ %i.dd, %_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterAhj20_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i53.i.i ] ; 2 uses
  %.val3.i = load i64, ptr %i.ak, align 8, !alias.scope !22348, !noalias !22331, !noundef !10 ; 2 uses
  %i.de = icmp ugt i64 %.val3.i, 16
  br i1 %i.de, label %.body.sink.split, label %.body

bb.x:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i47.i.i, %.critedge79.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtBI_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EEECs8jFhWeO2DFb_9typst_pdf.exit41.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22331
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
  %.val15 = load i64, ptr %i.l, align 8, !alias.scope !22349, !noundef !10 ; 2 uses
  %i.df = icmp ugt i64 %.val15, 32
  br i1 %i.df, label %.body.sink.split, label %.body
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22353)
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !22353, !noalias !22354, !nonnull !10, !noundef !10 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
end_hunk_2
