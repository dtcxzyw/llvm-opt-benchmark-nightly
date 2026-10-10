Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext21layout_into_fragments:bb.a
  %.not35.i = icmp eq ptr %i.fw, null
  br i1 %.not35.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fx = extractvalue { ptr, i64 } %i.fu, 1
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(128) %i.h), !noalias !20505, !inline_history !20421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20509
  br label %bb.aq

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20509
  %i.fy = load i64, ptr %i.ax, align 8, !alias.scope !20503, !noalias !20538, !noundef !41 ; 3 uses
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ga = add nsw i64 %i.fy, -1                   ; 3 uses
  store i64 %i.ga, ptr %i.ax, align 8, !alias.scope !20503, !noalias !20538
  %i.gb = load i64, ptr %1, align 8, !range !45, !alias.scope !20503, !noalias !20538, !noundef !41
  %i.gc = icmp samesign ult i64 %i.ga, %i.gb
  call void @llvm.assume(i1 %i.gc)
  %i.gd = load ptr, ptr %i.ay, align 8, !alias.scope !20503, !noalias !20538, !nonnull !41, !noundef !41
  %i.ge = icmp ult i64 %i.fy, 1152921504606846977
  call void @llvm.assume(i1 %i.ge)
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.ga
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !20505, !nonnull !41, !noundef !41 ; 2 uses
  store ptr %i.gg, ptr %i.f, align 8, !noalias !20509
  %i.gh = atomicrmw sub ptr %i.gg, i64 1 release, align 8, !noalias !20547
  %i.gi = icmp eq i64 %i.gh, 1
  br i1 %i.gi, label %bb.ao, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceEECs7tN9tvpkfrg_12typst_layout.exit

bb.ao:                                            ; preds = %bb.an
  fence acquire, !noalias !20505
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.aj

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.am, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20509
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(128) %i.h), !noalias !20505, !inline_history !20421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20509
  br label %bb.w

bb.ap:                                            ; preds = %bb.aj
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !20505, !inline_history !20421
  unreachable

bb.aq:                                            ; preds = %bb.al, %bb.z, %bb.v
  %.sroa.5.0.i = phi i64 [ %i.em, %bb.z ], [ %i.fx, %bb.al ], [ %i.eh, %bb.v ]
  %.sroa.0.0.i = phi ptr [ %i.el, %bb.z ], [ %i.fw, %bb.al ], [ %i.bs, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !20509
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.i, ptr %i.gl, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aw

._crit_edge:                                      ; preds = %bb.w, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh0_ECs7tN9tvpkfrg_12typst_layout.exit11
  call void @llvm.experimental.noalias.scope.decl(metadata !20548)
  %i.gm = load i64, ptr %i.n, align 8, !alias.scope !20548, !noalias !20549, !noundef !41 ; 6 uses
  %i.gn = icmp ult i64 %i.gm, 30340039594917026
  call void @llvm.assume(i1 %i.gn)
  %i.go = icmp samesign ugt i64 %i.o, %i.gm
  br i1 %i.go, label %bb.ar, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEBL_.exit, !prof !44

bb.ar:                                            ; preds = %._crit_edge
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef range(i64 0, 30340039594917026) %i.o, i64 noundef range(i64 0, 1152921504606846976) %i.gm, i64 noundef range(i64 0, 1152921504606846976) %i.gm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #53, !noalias !20550
  unreachable

_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEBL_.exit: ; preds = %._crit_edge
  store i64 %i.o, ptr %i.n, align 8, !alias.scope !20548, !noalias !20549
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !alias.scope !20548, !noalias !20549, !nonnull !41, !noundef !41 ; 2 uses
  %.idx27 = mul nuw nsw i64 %i.o, 304             ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.idx27 ; 2 uses
  %.idx = mul nuw nsw i64 %i.gm, 304              ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.idx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20551
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = ptrtoint ptr %i.gr to i64
  %gepdiff = sub nuw nsw i64 %.idx, %.idx27       ; 3 uses
  %i.gv = udiv exact i64 %gepdiff, 304            ; 2 uses
  %i.gw = icmp eq i64 %i.gm, %i.o
  br i1 %i.gw, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE7reserveBK_.exit.i.i.i.thread, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE7reserveBK_.exit.i.i.i.thread: ; preds = %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEBL_.exit
  store i64 0, ptr %i.d, align 8, !noalias !20551
  %i.gx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %i.gx, align 8, !noalias !20551
  %i.gy = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_.exit.thread.thread.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEBL_.exit
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !20552
  %i.gz = call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %gepdiff, i64 noundef range(i64 1, 17) 16) #56, !noalias !20552 ; 3 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %bb.as, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_.exit.i.i.i.i.i.preheader

bb.as:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 16, i64 %gepdiff) #57
          to label %.noexc.i unwind label %bb.av, !noalias !20551

.noexc.i:                                         ; preds = %bb.as
  unreachable

_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_.exit.i.i.i.i.i.preheader: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  store i64 %i.gv, ptr %i.d, align 8, !noalias !20551
  %i.hb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.gz, ptr %i.hb, align 8, !noalias !20551
  %i.hc = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20553)
  call void @llvm.experimental.noalias.scope.decl(metadata !20554)
  br label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_.exit.i.i.i.i.i

_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_.exit.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_.exit.i.i.i.i.i.preheader, %bb.at
  %i.hd = phi i64 [ %i.hh, %bb.at ], [ 0, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_.exit.i.i.i.i.i.preheader ] ; 3 uses
  %i.he = phi ptr [ %i.hf, %bb.at ], [ %i.gr, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_.exit.i.i.i.i.i.preheader ] ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 304 ; 4 uses
  %.sroa.0.0.copyload6.i.i.i.i.i = load i64, ptr %i.he, align 16, !noalias !20555 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload6.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_.exit.thread.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_.exit.i.i.i.i.i
  %.sroa.7.0..sroa_idx7.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = getelementptr inbounds nuw [304 x i8], ptr %i.gz, i64 %i.hd ; 2 uses
  store i64 %.sroa.0.0.copyload6.i.i.i.i.i, ptr %i.hg, align 16, !noalias !20556
  %.sroa.410.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.sroa.410.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.7.0..sroa_idx7.i.i.i.i.i, i64 296, i1 false)
  %i.hh = add nuw nsw i64 %i.hd, 1                ; 2 uses
  %i.hi = icmp eq ptr %i.hf, %i.gs
  br i1 %i.hi, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_.exit.thread.thread.i.i.i.i.i, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_.exit.i.i.i.i.i

_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_.exit.thread.thread.i.i.i.i.i: ; preds = %bb.at, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE7reserveBK_.exit.i.i.i.thread
  %i.hj = phi ptr [ %i.gy, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE7reserveBK_.exit.i.i.i.thread ], [ %i.hc, %bb.at ]
  %.val5.ph.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE7reserveBK_.exit.i.i.i.thread ], [ %i.hh, %bb.at ]
  store i64 %.val5.ph.i.i.i.i.i, ptr %i.hj, align 8, !alias.scope !20557, !noalias !20558
  br label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtB4_18SpecFromIterNestedB13_INtNtB6_5drain5DrainB13_EE9from_iterB19_.exit

_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_.exit.thread.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_.exit.i.i.i.i.i
  store i64 %i.hd, ptr %i.hc, align 8, !alias.scope !20557, !noalias !20558
  %i.hk = icmp eq ptr %i.gs, %i.hf
  br i1 %i.hk, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtB4_18SpecFromIterNestedB13_INtNtB6_5drain5DrainB13_EE9from_iterB19_.exit, label %bb.au

bb.au:                                            ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_.exit.thread.i.i.i.i.i
  %i.hl = ptrtoint ptr %i.hf to i64               ; 2 uses
  %i.hm = sub nuw i64 %i.gt, %i.hl
  %i.hn = udiv exact i64 %i.hm, 304
  %i.ho = load ptr, ptr %i.gp, align 8, !noalias !20559, !nonnull !41, !noundef !41 ; 2 uses
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = sub nuw i64 %i.hl, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hq
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBI_(ptr noalias nofree noundef nonnull align 16 %i.hr, i64 noundef %i.hn)
          to label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtB4_18SpecFromIterNestedB13_INtNtB6_5drain5DrainB13_EE9from_iterB19_.exit unwind label %.body.i, !noalias !20559

.body.i:                                          ; preds = %bb.au
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #54
          to label %common.resume unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtBO_5alloc6GlobalEEB2f_.exit, !noalias !20551

bb.av:                                            ; preds = %bb.as
  %i.ht = landingpad { ptr, i32 }
          cleanup
  %i.hu = load ptr, ptr %i.gp, align 8, !noalias !20560, !nonnull !41, !noundef !41 ; 2 uses
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = sub nuw i64 %i.gu, %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hw
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBI_(ptr noalias nofree noundef nonnull align 16 %i.hx, i64 noundef %i.gv)
          to label %common.resume unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtBO_5alloc6GlobalEEB2f_.exit, !noalias !20560

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtBO_5alloc6GlobalEEB2f_.exit: ; preds = %.body.i, %bb.av
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !20551
  unreachable

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtB4_18SpecFromIterNestedB13_INtNtB6_5drain5DrainB13_EE9from_iterB19_.exit: ; preds = %bb.au, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_.exit.thread.thread.i.i.i.i.i, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_.exit.thread.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20551
  br label %bb.aw

bb.aw:                                            ; preds = %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtB4_18SpecFromIterNestedB13_INtNtB6_5drain5DrainB13_EE9from_iterB19_.exit, %bb.aq
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout6shapesNtB2_12CurveBuilder5cubic(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 16               ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 153 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !range !54, !noundef !41
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  tail call void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library9visualize5curveNtB4_5Curve5cubic(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %7 = load <2 x double>, ptr %i.f, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store <2 x double> %7, ptr %i.b, align 16, !alias.scope !20570
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store double %1, ptr %i.g, align 16, !alias.scope !20570
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store double %2, ptr %i.h, align 8, !alias.scope !20570
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store double %3, ptr %i.i, align 16, !alias.scope !20570
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store double %4, ptr %i.j, align 8, !alias.scope !20570
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store double %5, ptr %i.k, align 16, !alias.scope !20570
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store double %6, ptr %i.l, align 8, !alias.scope !20570
  %8 = insertelement <2 x double> poison, double %5, i64 0 ; 2 uses
  %9 = insertelement <2 x double> %8, double %6, i64 1 ; 3 uses
  %10 = tail call nsz <2 x double> @llvm.maximumnum.v2f64(<2 x double> %7, <2 x double> %9) ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20571
  call void @_RNvXs7_NtCsdqxqgV7ixUt_5kurbo8cubicbezNtB5_8CubicBezNtNtB7_11param_curve17ParamCurveExtrema7extrema(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %.sroa.4.0..sroa_idx.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b), !noalias !20572
  %i.m = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !20571, !noundef !41 ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp eq i32 %i.m, 0
  br i1 %i.o, label %_RNvYNtNtCsdqxqgV7ixUt_5kurbo8cubicbez8CubicBezNtNtB6_11param_curve17ParamCurveExtrema12bounding_boxCs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %min.iters.check = icmp eq i32 %i.m, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.n, 4294967294               ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat23 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert24 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat25 = shufflevector <2 x double> %broadcast.splatinsert24, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert26 = insertelement <2 x double> poison, double %2, i64 0
  %broadcast.splat27 = shufflevector <2 x double> %broadcast.splatinsert26, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert28 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat29 = shufflevector <2 x double> %broadcast.splatinsert28, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert30 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat31 = shufflevector <2 x double> %broadcast.splatinsert30, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat33 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert34 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat35 = shufflevector <2 x double> %broadcast.splatinsert34, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat37 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat39 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x double> [ %broadcast.splat37, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi40 = phi <2 x double> [ %broadcast.splat39, %vector.ph ], [ %i.ap, %vector.body ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index
  %wide.load = load <2 x double>, ptr %i.q, align 8, !noalias !20571 ; 7 uses
  %i.r = fsub <2 x double> splat (double 1.000000e+00), %wide.load ; 4 uses
  %i.s = fmul <2 x double> %i.r, %i.r             ; 2 uses
  %i.t = fmul <2 x double> %i.r, %i.s             ; 2 uses
  %i.u = fmul <2 x double> %broadcast.splat, %i.t
  %i.v = fmul <2 x double> %broadcast.splat23, %i.t
  %i.w = fmul <2 x double> %i.s, splat (double 3.000000e+00) ; 2 uses
  %i.x = fmul <2 x double> %broadcast.splat25, %i.w
  %i.y = fmul <2 x double> %broadcast.splat27, %i.w
  %i.z = fmul <2 x double> %i.r, splat (double 3.000000e+00) ; 2 uses
  %i.aa = fmul <2 x double> %broadcast.splat29, %i.z
  %i.ab = fmul <2 x double> %broadcast.splat31, %i.z
  %i.ac = fmul <2 x double> %broadcast.splat33, %wide.load
  %i.ad = fmul <2 x double> %broadcast.splat35, %wide.load
  %i.ae = fadd <2 x double> %i.ac, %i.aa
  %i.af = fadd <2 x double> %i.ad, %i.ab
  %i.ag = fmul <2 x double> %wide.load, %i.ae
  %i.ah = fmul <2 x double> %wide.load, %i.af
  %i.ai = fadd <2 x double> %i.x, %i.ag
  %i.aj = fadd <2 x double> %i.y, %i.ah
  %i.ak = fmul <2 x double> %wide.load, %i.ai
  %i.al = fmul <2 x double> %wide.load, %i.aj
  %i.am = fadd <2 x double> %i.u, %i.ak
  %i.an = fadd <2 x double> %i.v, %i.al
  %i.ao = call nsz <2 x double> @llvm.maximumnum.v2f64(<2 x double> %vec.phi, <2 x double> %i.am) ; 2 uses
  %i.ap = call nsz <2 x double> @llvm.maximumnum.v2f64(<2 x double> %vec.phi40, <2 x double> %i.an) ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !20566

middle.block:                                     ; preds = %vector.body
  %i.ar = call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %i.ao)
  %i.as = call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %i.ap)
  %cmp.n = icmp eq i64 %n.vec, %i.n
  %11 = insertelement <2 x double> poison, double %i.ar, i64 0
  %12 = insertelement <2 x double> %11, double %i.as, i64 1 ; 2 uses
  br i1 %cmp.n, label %_RNvYNtNtCsdqxqgV7ixUt_5kurbo8cubicbez8CubicBezNtNtB6_11param_curve17ParamCurveExtrema12bounding_boxCs7tN9tvpkfrg_12typst_layout.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.ph42 = phi <2 x double> [ %10, %.lr.ph.i ], [ %12, %middle.block ]
  %13 = insertelement <2 x double> poison, double %1, i64 0
  %14 = insertelement <2 x double> %13, double %2, i64 1
  %15 = insertelement <2 x double> poison, double %3, i64 0
  %16 = insertelement <2 x double> %15, double %4, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.at = phi i64 [ %i.au, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %17 = phi <2 x double> [ %35, %scalar.ph ], [ %.ph42, %scalar.ph.preheader ]
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.at
  %i.aw = load double, ptr %i.av, align 8, !noalias !20571, !noundef !41 ; 2 uses
  %i.ax = fsub double 1.000000e+00, %i.aw         ; 4 uses
  %i.ay = fmul double %i.ax, %i.ax                ; 2 uses
  %i.az = fmul double %i.ax, %i.ay
  %18 = insertelement <2 x double> poison, double %i.az, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %20 = fmul <2 x double> %7, %19
  %i.ba = fmul double %i.ay, 3.000000e+00
  %21 = insertelement <2 x double> poison, double %i.ba, i64 0
  %22 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %23 = fmul <2 x double> %14, %22
  %i.bb = fmul double %i.ax, 3.000000e+00
  %24 = insertelement <2 x double> poison, double %i.bb, i64 0
  %25 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> zeroinitializer
  %26 = fmul <2 x double> %16, %25
  %27 = insertelement <2 x double> poison, double %i.aw, i64 0
  %28 = shufflevector <2 x double> %27, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %29 = fmul <2 x double> %9, %28
  %30 = fadd <2 x double> %29, %26
  %31 = fmul <2 x double> %28, %30
  %32 = fadd <2 x double> %23, %31
  %33 = fmul <2 x double> %28, %32
  %34 = fadd <2 x double> %20, %33
  %35 = call nsz <2 x double> @llvm.maximumnum.v2f64(<2 x double> %17, <2 x double> %34) ; 2 uses
  %i.bc = icmp eq i64 %i.au, %i.n
  br i1 %i.bc, label %_RNvYNtNtCsdqxqgV7ixUt_5kurbo8cubicbez8CubicBezNtNtB6_11param_curve17ParamCurveExtrema12bounding_boxCs7tN9tvpkfrg_12typst_layout.exit, label %scalar.ph, !llvm.loop !20567

_RNvYNtNtCsdqxqgV7ixUt_5kurbo8cubicbez8CubicBezNtNtB6_11param_curve17ParamCurveExtrema12bounding_boxCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %scalar.ph, %middle.block, %bb.b
  %36 = phi <2 x double> [ %10, %bb.b ], [ %12, %middle.block ], [ %35, %scalar.ph ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  %37 = fcmp ord <2 x double> %36, zeroinitializer
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %39 = select <2 x i1> %37, <2 x double> %36, <2 x double> zeroinitializer ; 2 uses
  %40 = extractelement <2 x double> %39, i64 0
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs7set_max(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.be, double noundef %40)
  %41 = extractelement <2 x double> %39, i64 1
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs7set_max(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %38, double noundef %41)
  store double %5, ptr %i.f, align 8
  store double %6, ptr %i.bd, align 8
  %i.bf = fmul <2 x double> %9, splat (double 2.000000e+00) ; 2 uses
  %i.bg = insertelement <2 x double> poison, double %3, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %4, i64 1 ; 2 uses
  %i.bi = fneg <2 x double> %i.bh
  %i.bj = fcmp uno <2 x double> %i.bh, zeroinitializer
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bl = fcmp ord <2 x double> %i.bf, zeroinitializer
  %i.bm = select <2 x i1> %i.bl, <2 x double> %i.bf, <2 x double> zeroinitializer
  %i.bn = select <2 x i1> %i.bj, <2 x double> zeroinitializer, <2 x double> %i.bi
  %i.bo = fadd <2 x double> %i.bn, %i.bm          ; 2 uses
  %i.bp = fcmp ord <2 x double> %i.bo, zeroinitializer
  %i.bq = select <2 x i1> %i.bp, <2 x double> %i.bo, <2 x double> zeroinitializer
  store <2 x double> %i.bq, ptr %i.bk, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !alias.scope !20573, !noundef !41
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bu = load double, ptr %i.bt, align 8, !alias.scope !20573, !noundef !41
  tail call void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library9visualize5curveNtB4_5Curve5move_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0, double noundef %i.bs, double noundef %i.bu)
  store i8 0, ptr %i.c, align 1, !alias.scope !20573
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 1, ptr %i.bv, align 8, !alias.scope !20573
  %i.bw = insertelement <2 x double> poison, double %1, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %2, i64 1 ; 2 uses
  %i.by = fneg <2 x double> %i.bx
  %i.bz = fcmp uno <2 x double> %i.bx, zeroinitializer
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cb = load <2 x double>, ptr %i.br, align 8
  %i.cc = fmul <2 x double> %i.cb, splat (double 2.000000e+00) ; 2 uses
  %i.cd = fcmp ord <2 x double> %i.cc, zeroinitializer
  %i.ce = select <2 x i1> %i.cd, <2 x double> %i.cc, <2 x double> zeroinitializer
  %i.cf = select <2 x i1> %i.bz, <2 x double> zeroinitializer, <2 x double> %i.by
  %i.cg = fadd <2 x double> %i.cf, %i.ce          ; 2 uses
  %i.ch = fcmp ord <2 x double> %i.cg, zeroinitializer
  %i.ci = select <2 x i1> %i.ch, <2 x double> %i.cg, <2 x double> zeroinitializer
  store <2 x double> %i.ci, ptr %i.ca, align 8
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs7tN9tvpkfrg_12typst_layout8documentNtB2_13PagedDocument3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(120) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [272 x i8], align 8               ; 6 uses
  %i.b = alloca [256 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCs7tN9tvpkfrg_12typst_layout10introspectNtB2_17PagedIntrospector3new(ptr noalias nofree noundef nonnull sret([256 x i8]) align 8 captures(address) dereferenceable(256) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.d, ptr noundef nonnull align 8 dereferenceable(256) %i.b, i64 256, i1 false)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !20576
  %i.e = tail call noundef align 8 dereferenceable_or_null(272) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 272, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !20576 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.f, !prof !44

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 272) #57
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs7tN9tvpkfrg_12typst_layout10introspect17PagedIntrospectorEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(256) %i.d)
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

.body:                                            ; preds = %bb.d
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model8document12DocumentInfoECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(120) %3) #54
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.e, ptr noundef nonnull align 8 dereferenceable(272) %i.a, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %2, ptr %i.j, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %3, i64 120, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.e, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.h, %bb.j, %bb.i, %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

bb.h:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEB1e_(ptr nonnull %1, i64 %2) #54
          to label %.critedge unwind label %bb.g

bb.i:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model8document12DocumentInfoECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(120) %3) #54
          to label %bb.j unwind label %bb.g

.critedge:                                        ; preds = %bb.h, %bb.j
  %.pn15 = phi { ptr, i32 } [ %i.m, %bb.j ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %.pn15

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEB1e_(ptr nonnull %1, i64 %2) #54
          to label %.critedge unwind label %bb.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout9modifiersNtB2_14FrameModifiers6get_in(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20610)
  %i.d = tail call noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model4link1__NtB9_8LinkElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 2), !noalias !20610 ; 4 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20611)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !20611, !noalias !20612, !nonnull !41, !noundef !41 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !20611, !noalias !20612, !nonnull !41, !align !46, !noundef !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !41, !noalias !20613, !nonnull !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20613
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !41, !noalias !20613, !nonnull !41
  call void %i.k(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %i.e) #59, !noalias !20613, !inline_history !20584
  %i.l = load i128, ptr %i.b, align 16, !noalias !20613, !noundef !41
  %i.m = icmp eq i128 %i.l, -135615534874972098550486535287176495434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20613
  br i1 %i.m, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtBa_5model4link11DestinationEECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.c, !prof !43

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model4link1__NtB9_8LinkElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d) #57, !noalias !20612
  unreachable

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtBa_5model4link11DestinationEECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !20614)
  %i.n = load i64, ptr %i.e, align 16, !range !58, !alias.scope !20614, !noalias !20615, !noundef !41 ; 2 uses
  %.not.i4.i = icmp eq i64 %i.n, -1
  br i1 %.not.i4.i, label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library5model4link11DestinationENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.d

bb.d:                                             ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtBa_5model4link11DestinationEECs7tN9tvpkfrg_12typst_layout.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !20616)
  call void @llvm.experimental.noalias.scope.decl(metadata !20617)
  switch i64 %i.n, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.m, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 23
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !20618, !noalias !20619, !noundef !41
  %.not.i.i.i = icmp sgt i8 %i.q, -1
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !20618, !noalias !20619 ; 5 uses
  %.val23.i.i.i = load i64, ptr %i.r, align 16, !alias.scope !20618, !noalias !20619
  br i1 %.not.i.i.i, label %bb.h, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.8.copyload.i.i = load ptr, ptr %i.s, align 8, !alias.scope !20620, !noalias !20615
  %.sroa.8.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.8.8.copyload.i.i = load i128, ptr %.sroa.8.8..sroa_idx.i.i, align 16, !alias.scope !20620, !noalias !20615
  br label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library5model4link11DestinationENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i

bb.g:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.u = load i128, ptr %i.t, align 16, !alias.scope !20618, !noalias !20619, !noundef !41
  br label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library5model4link11DestinationENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i

bb.h:                                             ; preds = %bb.e
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16
end_hunk_0
